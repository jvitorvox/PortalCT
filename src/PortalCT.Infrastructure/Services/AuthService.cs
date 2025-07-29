using PortalCT.Core.DTOs;
using PortalCT.Core.Interfaces;

namespace PortalCT.Infrastructure.Services
{
    public class AuthService : IAuthService
    {
        private readonly IUserRepository _userRepository;
        private readonly ILegacyAuthService _legacyAuthService;

        public AuthService(IUserRepository userRepository, ILegacyAuthService legacyAuthService)
        {
            _userRepository = userRepository;
            _legacyAuthService = legacyAuthService;
        }

        public async Task<LoginResponse> AuthenticateAsync(string username, string password)
        {
            try
            {
                // Primeiro, tenta autenticar usando o serviço legado (webservice)
                var legacyAuth = await _legacyAuthService.AuthenticateAsync(username, password);
                
                if (!legacyAuth.IsSuccess)
                {
                    return new LoginResponse
                    {
                        IsSuccess = false,
                        Message = "Usuário ou senha inválidos"
                    };
                }

                // Se autenticação legada foi bem-sucedida, busca/cria usuário local
                var user = await _userRepository.GetByUsernameAsync(username);
                
                if (user == null)
                {
                    // Cria usuário local se não existir
                    user = new Core.Entities.User
                    {
                        Username = username,
                        Email = $"{username}@casaeterra.com",
                        FullName = username,
                        IsActive = true,
                        CreatedAt = DateTime.UtcNow
                    };
                    
                    user = await _userRepository.CreateAsync(user);
                }

                // Atualiza último login
                await _userRepository.UpdateLastLoginAsync(user.Id);

                // Busca permissões do usuário
                var permissions = await GetUserPermissionsAsync(user.Id);

                // Se não tem permissões locais, busca do serviço legado
                if (!permissions.Any())
                {
                    permissions = await _legacyAuthService.GetUserPermissionsAsync(username);
                }

                return new LoginResponse
                {
                    IsSuccess = true,
                    Message = "Login realizado com sucesso",
                    User = new UserDto
                    {
                        Id = user.Id,
                        Username = user.Username,
                        Email = user.Email,
                        FullName = user.FullName,
                        LastLoginAt = user.LastLoginAt,
                        Permissions = permissions
                    },
                    Permissions = permissions
                };
            }
            catch (Exception ex)
            {
                return new LoginResponse
                {
                    IsSuccess = false,
                    Message = "Erro interno do servidor"
                };
            }
        }

        public async Task<UserDto?> GetUserByUsernameAsync(string username)
        {
            var user = await _userRepository.GetByUsernameAsync(username);
            if (user == null) return null;

            var permissions = await GetUserPermissionsAsync(user.Id);

            return new UserDto
            {
                Id = user.Id,
                Username = user.Username,
                Email = user.Email,
                FullName = user.FullName,
                LastLoginAt = user.LastLoginAt,
                Permissions = permissions
            };
        }

        public async Task<List<string>> GetUserPermissionsAsync(int userId)
        {
            return await _userRepository.GetUserPermissionsAsync(userId);
        }

        public async Task UpdateLastLoginAsync(int userId)
        {
            await _userRepository.UpdateLastLoginAsync(userId);
        }
    }
}