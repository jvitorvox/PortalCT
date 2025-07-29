const express = require('express');
const { authenticateToken } = require('../middleware/auth');
const { getPool, sql } = require('../config/database');

const router = express.Router();

// Listar departamentos
router.get('/', authenticateToken, async (req, res) => {
  try {
    const pool = getPool();
    if (!pool || !pool.request) {
      // Modo simulação - retorna departamentos mock
      return res.json({
        success: true,
        data: [
          { Id: 1, Name: 'Tecnologia da Informação', Code: 'TI', Description: 'Departamento de TI', IsActive: true, CreatedAt: new Date() },
          { Id: 2, Name: 'Recursos Humanos', Code: 'RH', Description: 'Departamento de RH', IsActive: true, CreatedAt: new Date() },
          { Id: 3, Name: 'Financeiro', Code: 'FIN', Description: 'Departamento Financeiro', IsActive: true, CreatedAt: new Date() },
          { Id: 4, Name: 'Comercial', Code: 'COM', Description: 'Departamento Comercial', IsActive: true, CreatedAt: new Date() }
        ]
      });
    }
    
    const request = pool.request();
    
    const result = await request.query(`
      SELECT Id, Name, Description, Code, IsActive, CreatedAt
      FROM Departments 
      WHERE IsActive = 1
      ORDER BY Name
    `);

    res.json({
      success: true,
      data: result.recordset
    });
  } catch (error) {
    console.error('Erro ao listar departamentos:', error);
    res.json({
      success: false,
      message: 'Erro interno do servidor'
    });
  }
});

// Buscar departamento por ID
router.get('/:id', authenticateToken, async (req, res) => {
  try {
    const { id } = req.params;
    const pool = getPool();
    const request = pool.request();
    
    const result = await request
      .input('id', sql.Int, parseInt(id))
      .query(`
        SELECT Id, Name, Description, Code, IsActive, CreatedAt
        FROM Departments 
        WHERE Id = @id AND IsActive = 1
      `);

    if (result.recordset.length === 0) {
      return res.status(404).json({
        success: false,
        message: 'Departamento não encontrado'
      });
    }

    res.json({
      success: true,
      data: result.recordset[0]
    });
  } catch (error) {
    console.error('Erro ao buscar departamento:', error);
    res.status(500).json({
      success: false,
      message: 'Erro interno do servidor'
    });
  }
});

module.exports = router;