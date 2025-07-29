using PortalCT.Web.Models;

namespace PortalCT.Web.Services;

public interface IInformationService
{
    Task<List<Information>> GetAllAsync();
    Task<Information?> GetByIdAsync(int id);
    Task<Information> CreateAsync(Information information);
    Task<Information> UpdateAsync(Information information);
    Task DeleteAsync(int id);
}