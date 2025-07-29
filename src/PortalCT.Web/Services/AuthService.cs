using PortalCT.Web.Models;
using PortalCT.Web.Data;
using Microsoft.EntityFrameworkCore;

namespace PortalCT.Web.Services;

public class AuthService : IAuthService
{
    private readonly ApplicationDbContext _context;
    private readonly IConfiguration _configuration;

    public AuthService(ApplicationDbContext context, IConfiguration configuration)
    {
        _context = context;
        _configuration = configuration;
    }

    public async Task<AuthResult> AuthenticateAsync(string username, string password)
    {
        try
        {
            // Em desenvolvimento, aceita qualquer usuário/senha
            if (string.IsNullOrEmpty(username) || string.IsNullOrEmpty(password))
            {
                return new AuthResult
                {
                    Success = false,
                    Message = "Usuário e senha são obrigatórios"
                };
            }

            // Simular autenticação bem-sucedida
            var user = new User
            {
                Id = 1,
                Username = username,
                Email = $"{username}@casaeterra.com",
                FullName = username.ToUpper(),
                IsActive = true
            };

            var permissions = GetUserPermissions(username);

            return new AuthResult
            {
                Success = true,
                Message = "Login realizado com sucesso",
                User = user,
                Permissions = permissions
            };
        }
        catch (Exception ex)
        {
            return new AuthResult
            {
                Success = false,
                Message = "Erro interno do servidor"
            };
        }
    }

    private List<string> GetUserPermissions(string username)
    {
        // Simular permissões baseadas no usuário
        return username.ToLower() switch
        {
            "admin" => new List<string> { "@@@@" },
            "ti" => new List<string> { "PAINEL TI" },
            "rh" => new List<string> { "PAINEL RH" },
            _ => new List<string> { "PAINEL TI", "PAINEL RH" }
        };
    }
}