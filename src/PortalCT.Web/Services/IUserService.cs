using PortalCT.Web.Models;

namespace PortalCT.Web.Services;

public interface IUserService
{
    Task<List<User>> GetAllAsync();
    Task<User?> GetByIdAsync(int id);
    Task<User?> GetByUsernameAsync(string username);
    Task<List<string>> GetUserPermissionsAsync(int userId);
}