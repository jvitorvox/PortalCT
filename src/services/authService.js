const jwt = require('jsonwebtoken');
const User = require('../models/User');
const legacyAuthService = require('./legacyAuthService');

class AuthService {
  static async authenticate(username, password) {
    try {
      // Primeiro, tenta autenticar usando o serviço legado
      const legacyAuth = await legacyAuthService.authenticate(username, password);
      
      if (!legacyAuth.success) {
        return {
          success: false,
          message: 'Usuário ou senha inválidos'
        };
      }

      // Se autenticação legada foi bem-sucedida, busca/cria usuário local
      let user = await User.findByUsername(username);
      
      if (!user) {
        // Cria usuário local se não existir
        user = await User.create({
          username: username,
          email: `${username}@casaeterra.com`,
          fullName: username
        });
      }

      // Atualiza último login
      await User.updateLastLogin(user.id);

      // Busca permissões do usuário
      let permissions = await User.getPermissions(user.id);

      // Se não tem permissões locais, busca do serviço legado
      if (!permissions || permissions.length === 0) {
        permissions = await legacyAuthService.getUserPermissions(username);
      }

      // Gera token JWT
      const token = jwt.sign(
        { 
          userId: user.id, 
          username: user.username,
          permissions: permissions
        },
        process.env.JWT_SECRET || 'casa-terra-secret',
        { expiresIn: '30m' }
      );

      return {
        success: true,
        message: 'Login realizado com sucesso',
        user: {
          id: user.id,
          username: user.username,
          email: user.email,
          fullName: user.fullName,
          lastLoginAt: user.lastLoginAt,
          permissions: permissions
        },
        token: token,
        permissions: permissions
      };
    } catch (error) {
      console.error('Erro na autenticação:', error);
      return {
        success: false,
        message: 'Erro interno do servidor'
      };
    }
  }

  static async getUserByUsername(username) {
    try {
      const user = await User.findByUsername(username);
      if (!user) return null;

      const permissions = await User.getPermissions(user.id);

      return {
        id: user.id,
        username: user.username,
        email: user.email,
        fullName: user.fullName,
        lastLoginAt: user.lastLoginAt,
        permissions: permissions
      };
    } catch (error) {
      console.error('Erro ao buscar usuário:', error);
      throw error;
    }
  }

  static verifyToken(token) {
    try {
      return jwt.verify(token, process.env.JWT_SECRET || 'casa-terra-secret');
    } catch (error) {
      return null;
    }
  }

  static generateToken(user, permissions = []) {
    return jwt.sign(
      { 
        userId: user.id, 
        username: user.username,
        permissions: permissions
      },
      process.env.JWT_SECRET || 'casa-terra-secret',
      { expiresIn: '30m' }
    );
  }
}

module.exports = AuthService;