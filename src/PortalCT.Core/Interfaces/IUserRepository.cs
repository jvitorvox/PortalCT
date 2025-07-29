using PortalCT.Core.Entities;

namespace PortalCT.Core.Interfaces
{
    public interface IUserRepository
    {
        Task<User?> GetByUsernameAsync(string username);
        Task<User?> GetByIdAsync(int id);
        Task<List<string>> GetUserPermissionsAsync(int userId);
        Task UpdateLastLoginAsync(int userId);
        Task<IEnumerable<User>> GetAllAsync();
        Task<User> CreateAsync(User user);
        Task UpdateAsync(User user);
        Task DeleteAsync(int id);
    }
}