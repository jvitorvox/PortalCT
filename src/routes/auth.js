const express = require('express');
const { body, validationResult } = require('express-validator');
const AuthService = require('../services/authService');
const { authenticateToken } = require('../middleware/auth');

const router = express.Router();

// Login
router.post('/login', [
  body('username').notEmpty().withMessage('Usuário é obrigatório'),
  body('password').notEmpty().withMessage('Senha é obrigatória')
], async (req, res) => {
  try {
    const errors = validationResult(req);
    if (!errors.isEmpty()) {
      return res.status(400).json({
        success: false,
        message: 'Dados inválidos',
        errors: errors.array()
      });
    }

    const { username, password } = req.body;
    const result = await AuthService.authenticate(username, password);

    if (result.success) {
      // Salva token na sessão
      req.session.token = result.token;
      req.session.user = result.user;
      
      // Remove senha da resposta se existir
      delete result.user.password;
      
      res.json(result);
    } else {
      res.status(401).json(result);
    }
  } catch (error) {
    console.error('Erro no login:', error);
    res.status(500).json({
      success: false,
      message: 'Erro interno do servidor'
    });
  }
});

// Logout
router.post('/logout', (req, res) => {
  req.session.destroy((err) => {
    if (err) {
      return res.status(500).json({
        success: false,
        message: 'Erro ao fazer logout'
      });
    }
    
    res.clearCookie('connect.sid');
    res.json({
      success: true,
      message: 'Logout realizado com sucesso'
    });
  });
});

// Verificar autenticação
router.get('/me', authenticateToken, async (req, res) => {
  try {
    const user = await AuthService.getUserByUsername(req.user.username);
    if (!user) {
      return res.status(404).json({
        success: false,
        message: 'Usuário não encontrado'
      });
    }

    res.json({
      success: true,
      user: user
    });
  } catch (error) {
    console.error('Erro ao buscar dados do usuário:', error);
    res.status(500).json({
      success: false,
      message: 'Erro interno do servidor'
    });
  }
});

// Refresh token
router.post('/refresh', authenticateToken, async (req, res) => {
  try {
    const user = await AuthService.getUserByUsername(req.user.username);
    if (!user) {
      return res.status(404).json({
        success: false,
        message: 'Usuário não encontrado'
      });
    }

    const newToken = AuthService.generateToken(user, user.permissions);
    req.session.token = newToken;

    res.json({
      success: true,
      token: newToken,
      user: user
    });
  } catch (error) {
    console.error('Erro ao renovar token:', error);
    res.status(500).json({
      success: false,
      message: 'Erro interno do servidor'
    });
  }
});

module.exports = router;