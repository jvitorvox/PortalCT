using Microsoft.EntityFrameworkCore;
using PortalCT.Web.Data;
using PortalCT.Web.Models;

namespace PortalCT.Web.Services;

public class UserService : IUserService
{
    private readonly ApplicationDbContext _context;

    public UserService(ApplicationDbContext context)
    {
        _context = context;
    }

    public async Task<List<User>> GetAllAsync()
    {
        try
        {
            return await _context.Users
                .Where(u => u.IsActive)
                .OrderBy(u => u.FullName)
                .ToListAsync();
        }
        catch (Exception)
        {
            return new List<User>();
        }
    }

    public async Task<User?> GetByIdAsync(int id)
    {
        try
        {
            return await _context.Users.FindAsync(id);
        }
        catch (Exception)
        {
            return null;
        }
    }

    public async Task<User?> GetByUsernameAsync(string username)
    {
        try
        {
            return await _context.Users
                .FirstOrDefaultAsync(u => u.Username == username && u.IsActive);
        }
        catch (Exception)
        {
            return null;
        }
    }

    public async Task<List<string>> GetUserPermissionsAsync(int userId)
    {
        try
        {
            return await _context.UserPermissions
                .Where(up => up.UserId == userId)
                .Include(up => up.Department)
                .Select(up => $"PAINEL {up.Department.Code}")
                .ToListAsync();
        }
        catch (Exception)
        {
            return new List<string>();
        }
    }
}