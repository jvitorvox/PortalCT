using PortalCT.Core.DTOs;

namespace PortalCT.Infrastructure.Services
{
    public interface ILegacyAuthService
    {
        Task<LoginResponse> AuthenticateAsync(string username, string password);
        Task<List<string>> GetUserPermissionsAsync(string username);
    }

    public class LegacyAuthService : ILegacyAuthService
    {
        // Aqui você integraria com o webservice existente
        // Por enquanto, vou simular a integração
        
        public async Task<LoginResponse> AuthenticateAsync(string username, string password)
        {
            try
            {
                // TODO: Integrar com WebserviceVB.loginSoapClient
                // var servicoV = new WebserviceVB.loginSoapClient();
                // var autoriza = await servicoV.loginadAsync(username, password);
                
                // Simulação por enquanto - remover quando integrar com webservice real
                await Task.Delay(100); // Simula chamada de rede
                
                // Lógica temporária - aceita qualquer usuário para demonstração
                if (!string.IsNullOrEmpty(username) && !string.IsNullOrEmpty(password))
                {
                    return new LoginResponse
                    {
                        IsSuccess = true,
                        Message = "OK"
                    };
                }
                
                return new LoginResponse
                {
                    IsSuccess = false,
                    Message = "Credenciais inválidas"
                };
            }
            catch (Exception ex)
            {
                return new LoginResponse
                {
                    IsSuccess = false,
                    Message = "Erro na autenticação"
                };
            }
        }

        public async Task<List<string>> GetUserPermissionsAsync(string username)
        {
            try
            {
                // TODO: Integrar com servicoV.getpermissoes(username)
                await Task.Delay(50);
                
                // Simulação - retorna permissões baseadas no usuário
                var permissions = new List<string>();
                
                // Simula diferentes níveis de acesso
                if (username.ToLower().Contains("admin") || username == "alexander.valerio")
                {
                    permissions.Add("@@@@"); // Acesso total
                }
                else
                {
                    permissions.AddRange(new[]
                    {
                        "PAINEL TI",
                        "PAINEL RH",
                        "PAINEL FINANCEIRO"
                    });
                }
                
                return permissions;
            }
            catch
            {
                return new List<string>();
            }
        }
    }
}