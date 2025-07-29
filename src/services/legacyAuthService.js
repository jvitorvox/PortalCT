const axios = require('axios');

class LegacyAuthService {
  static async authenticate(username, password) {
    try {
      // TODO: Integrar com o webservice real
      // const response = await axios.post(process.env.LEGACY_WEBSERVICE_URL, {
      //   username: username,
      //   password: password
      // });

      // Simulação por enquanto - remover quando integrar com webservice real
      await new Promise(resolve => setTimeout(resolve, 100)); // Simula chamada de rede
      
      // Lógica temporária - aceita qualquer usuário para demonstração
      if (username && password) {
        return {
          success: true,
          message: 'OK'
        };
      }
      
      return {
        success: false,
        message: 'Credenciais inválidas'
      };
    } catch (error) {
      console.error('Erro na autenticação legada:', error);
      return {
        success: false,
        message: 'Erro na autenticação'
      };
    }
  }

  static async getUserPermissions(username) {
    try {
      // TODO: Integrar com servicoV.getpermissoes(username)
      await new Promise(resolve => setTimeout(resolve, 50));
      
      // Simulação - retorna permissões baseadas no usuário
      const permissions = [];
      
      // Simula diferentes níveis de acesso
      if (username.toLowerCase().includes('admin') || username === 'alexander.valerio') {
        permissions.push('@@@@'); // Acesso total
      } else {
        permissions.push('PAINEL TI');
        permissions.push('PAINEL RH');
        permissions.push('PAINEL FINANCEIRO');
      }
      
      return permissions;
    } catch (error) {
      console.error('Erro ao buscar permissões legadas:', error);
      return [];
    }
  }
}

module.exports = LegacyAuthService;