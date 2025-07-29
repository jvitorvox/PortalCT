const express = require('express');
const { body, validationResult } = require('express-validator');
const { authenticateToken, requirePermission } = require('../middleware/auth');
const Information = require('../models/Information');

const router = express.Router();

// Listar todas as informações
router.get('/', authenticateToken, async (req, res) => {
  try {
    const informations = await Information.findAll();
    
    res.json({
      success: true,
      data: informations
    });
  } catch (error) {
    console.error('Erro ao listar informações:', error);
    res.status(500).json({
      success: false,
      message: 'Erro interno do servidor'
    });
  }
});

// Buscar informação por ID
router.get('/:id', authenticateToken, async (req, res) => {
  try {
    const { id } = req.params;
    const information = await Information.findById(parseInt(id));
    
    if (!information) {
      return res.status(404).json({
        success: false,
        message: 'Informação não encontrada'
      });
    }

    res.json({
      success: true,
      data: information
    });
  } catch (error) {
    console.error('Erro ao buscar informação:', error);
    res.status(500).json({
      success: false,
      message: 'Erro interno do servidor'
    });
  }
});

// Criar nova informação
router.post('/', [
  authenticateToken,
  requirePermission('PAINEL TI'), // Apenas usuários com permissão podem criar
  body('content').notEmpty().withMessage('Conteúdo é obrigatório'),
  body('priority').optional().isIn(['Baixa', 'Media', 'Alta', 'Critica']).withMessage('Prioridade inválida'),
  body('sector').optional().isLength({ max: 10 }).withMessage('Setor deve ter no máximo 10 caracteres')
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

    const information = await Information.create(req.body);
    
    res.status(201).json({
      success: true,
      message: 'Informação criada com sucesso',
      data: information
    });
  } catch (error) {
    console.error('Erro ao criar informação:', error);
    res.status(500).json({
      success: false,
      message: 'Erro interno do servidor'
    });
  }
});

// Atualizar informação
router.put('/:id', [
  authenticateToken,
  requirePermission('PAINEL TI'),
  body('content').optional().notEmpty().withMessage('Conteúdo não pode estar vazio'),
  body('priority').optional().isIn(['Baixa', 'Media', 'Alta', 'Critica']).withMessage('Prioridade inválida'),
  body('status').optional().isIn(['Ativo', 'Inativo']).withMessage('Status inválido')
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

    const { id } = req.params;
    const information = await Information.findById(parseInt(id));
    
    if (!information) {
      return res.status(404).json({
        success: false,
        message: 'Informação não encontrada'
      });
    }

    // Atualizar campos
    Object.keys(req.body).forEach(key => {
      if (req.body[key] !== undefined) {
        information[key] = req.body[key];
      }
    });

    await information.save();
    
    res.json({
      success: true,
      message: 'Informação atualizada com sucesso',
      data: information
    });
  } catch (error) {
    console.error('Erro ao atualizar informação:', error);
    res.status(500).json({
      success: false,
      message: 'Erro interno do servidor'
    });
  }
});

// Deletar informação
router.delete('/:id', [
  authenticateToken,
  requirePermission('@@@@') // Apenas admin pode deletar
], async (req, res) => {
  try {
    const { id } = req.params;
    const information = await Information.findById(parseInt(id));
    
    if (!information) {
      return res.status(404).json({
        success: false,
        message: 'Informação não encontrada'
      });
    }

    await information.delete();
    
    res.json({
      success: true,
      message: 'Informação deletada com sucesso'
    });
  } catch (error) {
    console.error('Erro ao deletar informação:', error);
    res.status(500).json({
      success: false,
      message: 'Erro interno do servidor'
    });
  }
});

module.exports = router;