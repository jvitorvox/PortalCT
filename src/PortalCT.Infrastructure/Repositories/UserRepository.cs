using Microsoft.EntityFrameworkCore;
using PortalCT.Core.Entities;
using PortalCT.Core.Interfaces;
using PortalCT.Infrastructure.Data;

namespace PortalCT.Infrastructure.Repositories
{
    public class UserRepository : IUserRepository
    {
        private readonly PortalDbContext _context;

        public UserRepository(PortalDbContext context)
        {
            _context = context;
        }

        public async Task<User?> GetByUsernameAsync(string username)
        {
            return await _context.Users
                .Include(u => u.Permissions)
                .ThenInclude(p => p.Department)
                .FirstOrDefaultAsync(u => u.Username == username && u.IsActive);
        }

        public async Task<User?> GetByIdAsync(int id)
        {
            return await _context.Users
                .Include(u => u.Permissions)
                .ThenInclude(p => p.Department)
                .FirstOrDefaultAsync(u => u.Id == id && u.IsActive);
        }

        public async Task<List<string>> GetUserPermissionsAsync(int userId)
        {
            return await _context.UserPermissions
                .Where(up => up.UserId == userId && up.IsActive)
                .Include(up => up.Department)
                .Select(up => up.Permission)
                .ToListAsync();
        }

        public async Task UpdateLastLoginAsync(int userId)
        {
            var user = await _context.Users.FindAsync(userId);
            if (user != null)
            {
                user.LastLoginAt = DateTime.UtcNow;
                await _context.SaveChangesAsync();
            }
        }

        public async Task<IEnumerable<User>> GetAllAsync()
        {
            return await _context.Users
                .Where(u => u.IsActive)
                .Include(u => u.Permissions)
                .ToListAsync();
        }

        public async Task<User> CreateAsync(User user)
        {
            _context.Users.Add(user);
            await _context.SaveChangesAsync();
            return user;
        }

        public async Task UpdateAsync(User user)
        {
            _context.Users.Update(user);
            await _context.SaveChangesAsync();
        }

        public async Task DeleteAsync(int id)
        {
            var user = await _context.Users.FindAsync(id);
            if (user != null)
            {
                user.IsActive = false;
                await _context.SaveChangesAsync();
            }
        }
    }
}