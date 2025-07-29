using Microsoft.EntityFrameworkCore;
using PortalCT.Web.Data;
using PortalCT.Web.Models;

namespace PortalCT.Web.Services;

public class DepartmentService : IDepartmentService
{
    private readonly ApplicationDbContext _context;

    public DepartmentService(ApplicationDbContext context)
    {
        _context = context;
    }

    public async Task<List<Department>> GetAllAsync()
    {
        try
        {
            return await _context.Departments
                .Where(d => d.IsActive)
                .OrderBy(d => d.Name)
                .ToListAsync();
        }
        catch (Exception)
        {
            return new List<Department>
            {
                new Department { Id = 1, Name = "Tecnologia da Informação", Code = "TI", Description = "Departamento de TI" },
                new Department { Id = 2, Name = "Recursos Humanos", Code = "RH", Description = "Departamento de RH" },
                new Department { Id = 3, Name = "Financeiro", Code = "FIN", Description = "Departamento Financeiro" }
            };
        }
    }

    public async Task<Department?> GetByIdAsync(int id)
    {
        try
        {
            return await _context.Departments.FindAsync(id);
        }
        catch (Exception)
        {
            return null;
        }
    }

    public async Task<Department?> GetByCodeAsync(string code)
    {
        try
        {
            return await _context.Departments
                .FirstOrDefaultAsync(d => d.Code == code && d.IsActive);
        }
        catch (Exception)
        {
            return null;
        }
    }
}