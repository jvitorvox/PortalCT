const { getPool, sql } = require('../config/database');

class Information {
  constructor(data) {
    this.id = data.Id || data.id;
    this.content = data.Content || data.content;
    this.priority = data.Priority || data.priority || 'Media';
    this.status = data.Status || data.status || 'Ativo';
    this.sector = data.Sector || data.sector || 'T';
    this.createdAt = data.CreatedAt || data.createdAt;
    this.updatedAt = data.UpdatedAt || data.updatedAt;
  }

  static async findAll() {
    try {
      const pool = getPool();
      if (!pool || !pool.request) {
        // Modo simulação - retorna informações mock
        return [
          new Information({
            Id: 1,
            Content: 'Bem-vindo ao Portal Casa & Terra! Sistema funcionando em modo demonstração.',
            Priority: 'Alta',
            Status: 'Ativo',
            Sector: 'T',
            CreatedAt: new Date()
          }),
          new Information({
            Id: 2,
            Content: 'Para conectar ao banco de dados, configure as variáveis de ambiente no arquivo .env',
            Priority: 'Media',
            Status: 'Ativo',
            Sector: 'TI',
            CreatedAt: new Date()
          })
        ];
      }
      
      const request = pool.request();
      
      const result = await request.query(`
        SELECT * FROM Informations 
        WHERE Status = 'Ativo'
        ORDER BY 
          CASE Priority 
            WHEN 'Critica' THEN 4
            WHEN 'Alta' THEN 3
            WHEN 'Media' THEN 2
            ELSE 1
          END DESC,
          CreatedAt DESC
      `);

      return result.recordset.map(row => new Information(row));
    } catch (error) {
      console.error('Erro ao buscar informações:', error);
      // Retorna informações mock em caso de erro
      return [
        new Information({
          Id: 1,
          Content: 'Sistema funcionando em modo simulação. Configure o banco de dados para funcionalidade completa.',
          Priority: 'Media',
          Status: 'Ativo',
          Sector: 'T',
          CreatedAt: new Date()
        })
      ];
    }
  }

  static async findById(id) {
    try {
      const pool = getPool();
      const request = pool.request();
      
      const result = await request
        .input('id', sql.Int, id)
        .query('SELECT * FROM Informations WHERE Id = @id');

      if (result.recordset.length === 0) {
        return null;
      }

      return new Information(result.recordset[0]);
    } catch (error) {
      console.error('Erro ao buscar informação por ID:', error);
      throw error;
    }
  }

  static async create(data) {
    try {
      const pool = getPool();
      const request = pool.request();
      
      const result = await request
        .input('content', sql.NVarChar, data.content)
        .input('priority', sql.NVarChar, data.priority || 'Media')
        .input('status', sql.NVarChar, data.status || 'Ativo')
        .input('sector', sql.NVarChar, data.sector || 'T')
        .query(`
          INSERT INTO Informations (Content, Priority, Status, Sector, CreatedAt)
          OUTPUT INSERTED.*
          VALUES (@content, @priority, @status, @sector, GETUTCDATE())
        `);

      return new Information(result.recordset[0]);
    } catch (error) {
      console.error('Erro ao criar informação:', error);
      throw error;
    }
  }

  async save() {
    try {
      const pool = getPool();
      const request = pool.request();
      
      if (this.id) {
        // Update
        await request
          .input('id', sql.Int, this.id)
          .input('content', sql.NVarChar, this.content)
          .input('priority', sql.NVarChar, this.priority)
          .input('status', sql.NVarChar, this.status)
          .input('sector', sql.NVarChar, this.sector)
          .query(`
            UPDATE Informations 
            SET Content = @content, 
                Priority = @priority, 
                Status = @status, 
                Sector = @sector,
                UpdatedAt = GETUTCDATE()
            WHERE Id = @id
          `);
      } else {
        // Insert
        const result = await request
          .input('content', sql.NVarChar, this.content)
          .input('priority', sql.NVarChar, this.priority)
          .input('status', sql.NVarChar, this.status)
          .input('sector', sql.NVarChar, this.sector)
          .query(`
            INSERT INTO Informations (Content, Priority, Status, Sector, CreatedAt)
            OUTPUT INSERTED.*
            VALUES (@content, @priority, @status, @sector, GETUTCDATE())
          `);
        
        this.id = result.recordset[0].Id;
        this.createdAt = result.recordset[0].CreatedAt;
      }
      
      return this;
    } catch (error) {
      console.error('Erro ao salvar informação:', error);
      throw error;
    }
  }

  async delete() {
    try {
      const pool = getPool();
      const request = pool.request();
      
      await request
        .input('id', sql.Int, this.id)
        .query('DELETE FROM Informations WHERE Id = @id');

      return true;
    } catch (error) {
      console.error('Erro ao deletar informação:', error);
      throw error;
    }
  }
}

module.exports = Information;