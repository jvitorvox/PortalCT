const jwt = require('jsonwebtoken');
const AuthService = require('../services/authService');

const authenticateToken = (req, res, next) => {
  const authHeader = req.headers['authorization'];
  const token = authHeader && authHeader.split(' ')[1]; // Bearer TOKEN

  if (!token) {
    // Verifica se existe token na sessão
    if (req.session && req.session.token) {
      const decoded = AuthService.verifyToken(req.session.token);
      if (decoded) {
        req.user = decoded;
        return next();
      }
    }
    
    return res.status(401).json({ 
      success: false, 
      message: 'Token de acesso requerido' 
    });
  }

  const decoded = AuthService.verifyToken(token);
  if (!decoded) {
    return res.status(403).json({ 
      success: false, 
      message: 'Token inválido' 
    });
  }

  req.user = decoded;
  next();
};

const requirePermission = (permission) => {
  return (req, res, next) => {
    if (!req.user) {
      return res.status(401).json({ 
        success: false, 
        message: 'Usuário não autenticado' 
      });
    }

    const userPermissions = req.user.permissions || [];
    
    // Verifica se tem acesso total
    if (userPermissions.includes('@@@@')) {
      return next();
    }

    // Verifica se tem a permissão específica
    if (userPermissions.includes(permission)) {
      return next();
    }

    return res.status(403).json({ 
      success: false, 
      message: 'Permissão insuficiente' 
    });
  };
};

const optionalAuth = (req, res, next) => {
  const authHeader = req.headers['authorization'];
  const token = authHeader && authHeader.split(' ')[1];

  if (token) {
    const decoded = AuthService.verifyToken(token);
    if (decoded) {
      req.user = decoded;
    }
  } else if (req.session && req.session.token) {
    const decoded = AuthService.verifyToken(req.session.token);
    if (decoded) {
      req.user = decoded;
    }
  }

  next();
};

module.exports = {
  authenticateToken,
  requirePermission,
  optionalAuth
};