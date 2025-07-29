using PortalCT.Core.Entities;

namespace PortalCT.Core.Interfaces
{
    public interface IInformationRepository
    {
        Task<IEnumerable<Information>> GetActiveInformationsAsync();
        Task<Information?> GetByIdAsync(int id);
        Task<Information> CreateAsync(Information information);
        Task UpdateAsync(Information information);
        Task DeleteAsync(int id);
    }
}