const { getPool, sql } = require('../config/database');

class User {
  constructor(data) {
    this.id = data.Id || data.id;
    this.username = data.Username || data.username;
    this.email = data.Email || data.email;
    this.fullName = data.FullName || data.fullName;
    this.isActive = data.IsActive !== undefined ? data.IsActive : data.isActive;
    this.createdAt = data.CreatedAt || data.createdAt;
    this.lastLoginAt = data.LastLoginAt || data.lastLoginAt;
  }

  static async findByUsername(username) {
    try {
      const pool = getPool();
      const request = pool.request();
      
      const result = await request
        .input('username', sql.NVarChar, username)
        .query(`
          SELECT u.*, 
                 up.Permission,
                 d.Name as DepartmentName,
                 d.Code as DepartmentCode
          FROM Users u
          LEFT JOIN UserPermissions up ON u.Id = up.UserId AND up.IsActive = 1
          LEFT JOIN Departments d ON up.DepartmentId = d.Id
          WHERE u.Username = @username AND u.IsActive = 1
        `);

      if (result.recordset.length === 0) {
        return null;
      }

      const userData = result.recordset[0];
      const user = new User(userData);
      
      // Agregar permissões
      user.permissions = result.recordset
        .filter(row => row.Permission)
        .map(row => ({
          permission: row.Permission,
          department: row.DepartmentName,
          departmentCode: row.DepartmentCode
        }));

      return user;
    } catch (error) {
      console.error('Erro ao buscar usuário:', error);
      throw error;
    }
  }

  static async findById(id) {
    try {
      const pool = getPool();
      const request = pool.request();
      
      const result = await request
        .input('id', sql.Int, id)
        .query(`
          SELECT u.*, 
                 up.Permission,
                 d.Name as DepartmentName,
                 d.Code as DepartmentCode
          FROM Users u
          LEFT JOIN UserPermissions up ON u.Id = up.UserId AND up.IsActive = 1
          LEFT JOIN Departments d ON up.DepartmentId = d.Id
          WHERE u.Id = @id AND u.IsActive = 1
        `);

      if (result.recordset.length === 0) {
        return null;
      }

      const userData = result.recordset[0];
      const user = new User(userData);
      
      // Agregar permissões
      user.permissions = result.recordset
        .filter(row => row.Permission)
        .map(row => ({
          permission: row.Permission,
          department: row.DepartmentName,
          departmentCode: row.DepartmentCode
        }));

      return user;
    } catch (error) {
      console.error('Erro ao buscar usuário por ID:', error);
      throw error;
    }
  }

  static async create(userData) {
    try {
      const pool = getPool();
      const request = pool.request();
      
      const result = await request
        .input('username', sql.NVarChar, userData.username)
        .input('email', sql.NVarChar, userData.email)
        .input('fullName', sql.NVarChar, userData.fullName)
        .query(`
          INSERT INTO Users (Username, Email, FullName, IsActive, CreatedAt)
          OUTPUT INSERTED.*
          VALUES (@username, @email, @fullName, 1, GETUTCDATE())
        `);

      return new User(result.recordset[0]);
    } catch (error) {
      console.error('Erro ao criar usuário:', error);
      throw error;
    }
  }

  static async updateLastLogin(id) {
    try {
      const pool = getPool();
      const request = pool.request();
      
      await request
        .input('id', sql.Int, id)
        .query(`
          UPDATE Users 
          SET LastLoginAt = GETUTCDATE()
          WHERE Id = @id
        `);

      return true;
    } catch (error) {
      console.error('Erro ao atualizar último login:', error);
      throw error;
    }
  }

  static async getPermissions(userId) {
    try {
      const pool = getPool();
      const request = pool.request();
      
      const result = await request
        .input('userId', sql.Int, userId)
        .query(`
          SELECT up.Permission, d.Name as DepartmentName, d.Code as DepartmentCode
          FROM UserPermissions up
          INNER JOIN Departments d ON up.DepartmentId = d.Id
          WHERE up.UserId = @userId AND up.IsActive = 1
        `);

      return result.recordset.map(row => row.Permission);
    } catch (error) {
      console.error('Erro ao buscar permissões:', error);
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
          .input('username', sql.NVarChar, this.username)
          .input('email', sql.NVarChar, this.email)
          .input('fullName', sql.NVarChar, this.fullName)
          .input('isActive', sql.Bit, this.isActive)
          .query(`
            UPDATE Users 
            SET Username = @username, 
                Email = @email, 
                FullName = @fullName, 
                IsActive = @isActive
            WHERE Id = @id
          `);
      } else {
        // Insert
        const result = await request
          .input('username', sql.NVarChar, this.username)
          .input('email', sql.NVarChar, this.email)
          .input('fullName', sql.NVarChar, this.fullName)
          .query(`
            INSERT INTO Users (Username, Email, FullName, IsActive, CreatedAt)
            OUTPUT INSERTED.*
            VALUES (@username, @email, @fullName, 1, GETUTCDATE())
          `);
        
        this.id = result.recordset[0].Id;
        this.createdAt = result.recordset[0].CreatedAt;
      }
      
      return this;
    } catch (error) {
      console.error('Erro ao salvar usuário:', error);
      throw error;
    }
  }
}

module.exports = User;