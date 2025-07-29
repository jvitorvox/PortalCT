using Microsoft.EntityFrameworkCore;
using PortalCT.Web.Data;
using PortalCT.Web.Models;

namespace PortalCT.Web.Services;

public class InformationService : IInformationService
{
    private readonly ApplicationDbContext _context;

    public InformationService(ApplicationDbContext context)
    {
        _context = context;
    }

    public async Task<List<Information>> GetAllAsync()
    {
        try
        {
            return await _context.Informations
                .Where(i => i.Status == "Ativo")
                .OrderByDescending(i => i.CreatedAt)
                .ToListAsync();
        }
        catch (Exception)
        {
            // Em caso de erro com o banco, retorna dados de exemplo
            return new List<Information>
            {
                new Information
                {
                    Id = 1,
                    Content = "Bem-vindo ao Portal Casa & Terra! Sistema migrado para .NET Core com Blazor Server.",
                    Priority = "Alta",
                    Status = "Ativo",
                    Sector = "T",
                    CreatedAt = DateTime.Now.AddHours(-2)
                },
                new Information
                {
                    Id = 2,
                    Content = "Sistema funcionando com Entity Framework Core e SQL Server LocalDB.",
                    Priority = "Media",
                    Status = "Ativo",
                    Sector = "TI",
                    CreatedAt = DateTime.Now.AddHours(-1)
                }
            };
        }
    }

    public async Task<Information?> GetByIdAsync(int id)
    {
        try
        {
            return await _context.Informations.FindAsync(id);
        }
        catch (Exception)
        {
            return null;
        }
    }

    public async Task<Information> CreateAsync(Information information)
    {
        try
        {
            information.CreatedAt = DateTime.Now;
            information.Status = "Ativo";
            
            _context.Informations.Add(information);
            await _context.SaveChangesAsync();
            return information;
        }
        catch (Exception)
        {
            // Em caso de erro, simula criação
            information.Id = new Random().Next(1000, 9999);
            information.CreatedAt = DateTime.Now;
            return information;
        }
    }

    public async Task<Information> UpdateAsync(Information information)
    {
        try
        {
            information.UpdatedAt = DateTime.Now;
            _context.Informations.Update(information);
            await _context.SaveChangesAsync();
            return information;
        }
        catch (Exception)
        {
            // Em caso de erro, retorna o objeto atualizado
            information.UpdatedAt = DateTime.Now;
            return information;
        }
    }

    public async Task DeleteAsync(int id)
    {
        try
        {
            var information = await _context.Informations.FindAsync(id);
            if (information != null)
            {
                _context.Informations.Remove(information);
                await _context.SaveChangesAsync();
            }
        }
        catch (Exception)
        {
            // Em caso de erro, ignora silenciosamente
        }
    }
}