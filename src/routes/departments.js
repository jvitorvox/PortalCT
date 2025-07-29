const express = require('express');
const { authenticateToken } = require('../middleware/auth');
const { getPool, sql } = require('../config/database');

const router = express.Router();

// Listar departamentos
router.get('/', authenticateToken, async (req, res) => {
  try {
    const pool = getPool();
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
    res.status(500).json({
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