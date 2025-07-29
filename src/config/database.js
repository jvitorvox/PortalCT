const sql = require('mssql');
require('dotenv').config();

const config = {
  server: process.env.DB_HOST || 'localhost',
  port: parseInt(process.env.DB_PORT) || 1433,
  database: process.env.DB_NAME || 'PortalCT_Modern',
  user: process.env.DB_USER || '',
  password: process.env.DB_PASSWORD || '',
  options: {
    encrypt: process.env.DB_ENCRYPT === 'true',
    trustServerCertificate: process.env.DB_TRUST_SERVER_CERTIFICATE === 'true',
    enableArithAbort: true,
    connectionTimeout: 30000,
    requestTimeout: 30000
  },
  pool: {
    max: 10,
    min: 0,
    idleTimeoutMillis: 30000
  }
};

let pool;

const connectDB = async () => {
  try {
    if (!pool) {
      pool = await sql.connect(config);
      console.log('✅ Conectado ao SQL Server');
      
      // Criar tabelas se não existirem
      await createTables();
    }
    return pool;
  } catch (error) {
    console.error('❌ Erro ao conectar com o banco de dados:', error);
    throw error;
  }
};

const createTables = async () => {
  try {
    const request = pool.request();
    
    // Criar tabela de Departamentos
    await request.query(`
      IF NOT EXISTS (SELECT * FROM sysobjects WHERE name='Departments' AND xtype='U')
      CREATE TABLE Departments (
        Id INT IDENTITY(1,1) PRIMARY KEY,
        Name NVARCHAR(100) NOT NULL,
        Description NVARCHAR(500),
        Code NVARCHAR(50) UNIQUE NOT NULL,
        IsActive BIT DEFAULT 1,
        CreatedAt DATETIME2 DEFAULT GETUTCDATE()
      )
    `);

    // Criar tabela de Usuários
    await request.query(`
      IF NOT EXISTS (SELECT * FROM sysobjects WHERE name='Users' AND xtype='U')
      CREATE TABLE Users (
        Id INT IDENTITY(1,1) PRIMARY KEY,
        Username NVARCHAR(100) UNIQUE NOT NULL,
        Email NVARCHAR(255) UNIQUE NOT NULL,
        FullName NVARCHAR(255),
        IsActive BIT DEFAULT 1,
        CreatedAt DATETIME2 DEFAULT GETUTCDATE(),
        LastLoginAt DATETIME2
      )
    `);

    // Criar tabela de Permissões
    await request.query(`
      IF NOT EXISTS (SELECT * FROM sysobjects WHERE name='UserPermissions' AND xtype='U')
      CREATE TABLE UserPermissions (
        Id INT IDENTITY(1,1) PRIMARY KEY,
        UserId INT NOT NULL,
        DepartmentId INT NOT NULL,
        Permission NVARCHAR(100) NOT NULL,
        IsActive BIT DEFAULT 1,
        CreatedAt DATETIME2 DEFAULT GETUTCDATE(),
        FOREIGN KEY (UserId) REFERENCES Users(Id),
        FOREIGN KEY (DepartmentId) REFERENCES Departments(Id)
      )
    `);

    // Criar tabela de Informações
    await request.query(`
      IF NOT EXISTS (SELECT * FROM sysobjects WHERE name='Informations' AND xtype='U')
      CREATE TABLE Informations (
        Id INT IDENTITY(1,1) PRIMARY KEY,
        Content NVARCHAR(MAX) NOT NULL,
        Priority NVARCHAR(50) DEFAULT 'Media',
        Status NVARCHAR(50) DEFAULT 'Ativo',
        Sector NVARCHAR(10) DEFAULT 'T',
        CreatedAt DATETIME2 DEFAULT GETUTCDATE(),
        UpdatedAt DATETIME2
      )
    `);

    // Criar tabela de Planos de Ação
    await request.query(`
      IF NOT EXISTS (SELECT * FROM sysobjects WHERE name='ActionPlans' AND xtype='U')
      CREATE TABLE ActionPlans (
        Id INT IDENTITY(1,1) PRIMARY KEY,
        DepartmentId INT NOT NULL,
        Period NVARCHAR(20) NOT NULL,
        Action NVARCHAR(100) NOT NULL,
        What NVARCHAR(MAX),
        Why NVARCHAR(MAX),
        [Where] NVARCHAR(MAX),
        [When] NVARCHAR(MAX),
        Who NVARCHAR(MAX),
        How NVARCHAR(MAX),
        HowMuch NVARCHAR(MAX),
        Value DECIMAL(18,2) DEFAULT 0,
        Feedback NVARCHAR(MAX),
        Category NVARCHAR(50),
        Status NVARCHAR(50),
        Direction NVARCHAR(100),
        CreatedAt DATETIME2 DEFAULT GETUTCDATE(),
        UpdatedAt DATETIME2,
        FOREIGN KEY (DepartmentId) REFERENCES Departments(Id)
      )
    `);

    // Inserir dados iniciais dos departamentos
    await request.query(`
      IF NOT EXISTS (SELECT * FROM Departments WHERE Code = 'ADM')
      INSERT INTO Departments (Name, Code, Description) VALUES 
      ('Administrativo', 'ADM', 'Departamento Administrativo'),
      ('Recursos Humanos', 'RH', 'Departamento de RH'),
      ('Tecnologia da Informação', 'TI', 'Departamento de TI'),
      ('Financeiro', 'FIN', 'Departamento Financeiro'),
      ('Obras', 'OBRAS', 'Departamento de Obras'),
      ('Comercial', 'COM', 'Departamento Comercial'),
      ('Jurídico', 'JUR', 'Departamento Jurídico'),
      ('Contábil', 'CONT', 'Departamento Contábil')
    `);

    console.log('✅ Tabelas criadas/verificadas com sucesso');
  } catch (error) {
    console.error('❌ Erro ao criar tabelas:', error);
  }
};

const getPool = () => {
  if (!pool) {
    throw new Error('Banco de dados não conectado. Chame connectDB() primeiro.');
  }
  return pool;
};

module.exports = {
  connectDB,
  getPool,
  sql
};