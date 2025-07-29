namespace PortalCT.Core.DTOs
{
    public class LoginResponse
    {
        public bool IsSuccess { get; set; }
        public string Message { get; set; } = string.Empty;
        public UserDto? User { get; set; }
        public string Token { get; set; } = string.Empty;
        public List<string> Permissions { get; set; } = new();
    }
}