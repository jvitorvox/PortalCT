const express = require('express');
const { authenticateToken, requirePermission } = require('../middleware/auth');
const User = require('../models/User');

const router = express.Router();

// Listar usuários (apenas admin)
router.get('/', [
  authenticateToken,
  requirePermission('@@@@')
], async (req, res) => {
  try {
    // TODO: Implementar listagem de usuários
    res.json({
      success: true,
      message: 'Funcionalidade em desenvolvimento',
      data: []
    });
  } catch (error) {
    console.error('Erro ao listar usuários:', error);
    res.status(500).json({
      success: false,
      message: 'Erro interno do servidor'
    });
  }
});

// Buscar usuário por ID
router.get('/:id', [
  authenticateToken,
  requirePermission('@@@@')
], async (req, res) => {
  try {
    const { id } = req.params;
    const user = await User.findById(parseInt(id));
    
    if (!user) {
      return res.status(404).json({
        success: false,
        message: 'Usuário não encontrado'
      });
    }

    // Remove informações sensíveis
    delete user.password;
    
    res.json({
      success: true,
      data: user
    });
  } catch (error) {
    console.error('Erro ao buscar usuário:', error);
    res.status(500).json({
      success: false,
      message: 'Erro interno do servidor'
    });
  }
});

// Buscar permissões do usuário
router.get('/:id/permissions', authenticateToken, async (req, res) => {
  try {
    const { id } = req.params;
    
    // Usuário só pode ver suas próprias permissões, exceto admin
    if (req.user.userId !== parseInt(id) && !req.user.permissions.includes('@@@@')) {
      return res.status(403).json({
        success: false,
        message: 'Acesso negado'
      });
    }
    
    const permissions = await User.getPermissions(parseInt(id));
    
    res.json({
      success: true,
      data: permissions
    });
  } catch (error) {
    console.error('Erro ao buscar permissões:', error);
    res.status(500).json({
      success: false,
      message: 'Erro interno do servidor'
    });
  }
});

module.exports = router;