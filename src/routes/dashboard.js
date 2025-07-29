const express = require('express');
const { authenticateToken } = require('../middleware/auth');
const Information = require('../models/Information');

const router = express.Router();

// Dashboard principal
router.get('/', authenticateToken, async (req, res) => {
  try {
    // Buscar informações ativas
    const informations = await Information.findAll();
    
    // Estatísticas básicas
    const stats = {
      totalInformations: informations.length,
      criticalInformations: informations.filter(i => i.priority === 'Critica').length,
      highPriorityInformations: informations.filter(i => i.priority === 'Alta').length,
      lastLogin: req.user.lastLoginAt || new Date()
    };

    res.json({
      success: true,
      data: {
        user: {
          username: req.user.username,
          permissions: req.user.permissions || []
        },
        informations: informations,
        stats: stats
      }
    });
  } catch (error) {
    console.error('Erro ao carregar dashboard:', error);
    res.status(500).json({
      success: false,
      message: 'Erro interno do servidor'
    });
  }
});

// Estatísticas detalhadas
router.get('/stats', authenticateToken, async (req, res) => {
  try {
    const informations = await Information.findAll();
    
    const stats = {
      informations: {
        total: informations.length,
        byPriority: {
          critica: informations.filter(i => i.priority === 'Critica').length,
          alta: informations.filter(i => i.priority === 'Alta').length,
          media: informations.filter(i => i.priority === 'Media').length,
          baixa: informations.filter(i => i.priority === 'Baixa').length
        },
        bySector: {
          todos: informations.filter(i => i.sector === 'T').length,
          ti: informations.filter(i => i.sector === 'TI').length,
          rh: informations.filter(i => i.sector === 'RH').length,
          financeiro: informations.filter(i => i.sector === 'FIN').length
        }
      },
      user: {
        username: req.user.username,
        permissions: req.user.permissions || [],
        hasFullAccess: (req.user.permissions || []).includes('@@@@')
      }
    };

    res.json({
      success: true,
      data: stats
    });
  } catch (error) {
    console.error('Erro ao carregar estatísticas:', error);
    res.status(500).json({
      success: false,
      message: 'Erro interno do servidor'
    });
  }
});

module.exports = router;