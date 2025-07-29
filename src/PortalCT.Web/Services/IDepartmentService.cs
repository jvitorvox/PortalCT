using PortalCT.Web.Models;

namespace PortalCT.Web.Services;

public interface IDepartmentService
{
    Task<List<Department>> GetAllAsync();
    Task<Department?> GetByIdAsync(int id);
    Task<Department?> GetByCodeAsync(string code);
}