using PortalCT.Web.Models;

namespace PortalCT.Web.Services;

public interface IAuthService
{
    Task<AuthResult> AuthenticateAsync(string username, string password);
}

public class AuthResult
{
    public bool Success { get; set; }
    public string Message { get; set; } = string.Empty;
    public User? User { get; set; }
    public List<string> Permissions { get; set; } = new();
}