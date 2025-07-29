using Microsoft.EntityFrameworkCore;
using PortalCT.Core.Entities;
using PortalCT.Core.Interfaces;
using PortalCT.Infrastructure.Data;

namespace PortalCT.Infrastructure.Repositories
{
    public class InformationRepository : IInformationRepository
    {
        private readonly PortalDbContext _context;

        public InformationRepository(PortalDbContext context)
        {
            _context = context;
        }

        public async Task<IEnumerable<Information>> GetActiveInformationsAsync()
        {
            return await _context.Informations
                .Where(i => i.Status == "Ativo")
                .OrderByDescending(i => i.Priority == "Critica" ? 4 : 
                                       i.Priority == "Alta" ? 3 : 
                                       i.Priority == "Media" ? 2 : 1)
                .ThenByDescending(i => i.CreatedAt)
                .ToListAsync();
        }

        public async Task<Information?> GetByIdAsync(int id)
        {
            return await _context.Informations.FindAsync(id);
        }

        public async Task<Information> CreateAsync(Information information)
        {
            _context.Informations.Add(information);
            await _context.SaveChangesAsync();
            return information;
        }

        public async Task UpdateAsync(Information information)
        {
            information.UpdatedAt = DateTime.UtcNow;
            _context.Informations.Update(information);
            await _context.SaveChangesAsync();
        }

        public async Task DeleteAsync(int id)
        {
            var information = await _context.Informations.FindAsync(id);
            if (information != null)
            {
                _context.Informations.Remove(information);
                await _context.SaveChangesAsync();
            }
        }
    }
}