using PortalCT.Core.DTOs;

namespace PortalCT.Core.Interfaces
{
    public interface IAuthService
    {
        Task<LoginResponse> AuthenticateAsync(string username, string password);
        Task<UserDto?> GetUserByUsernameAsync(string username);
        Task<List<string>> GetUserPermissionsAsync(int userId);
        Task UpdateLastLoginAsync(int userId);
    }
}