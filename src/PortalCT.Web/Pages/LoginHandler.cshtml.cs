using Microsoft.AspNetCore.Authentication;
using Microsoft.AspNetCore.Authentication.Cookies;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using System.Security.Claims;
using PortalCT.Web.Services;

namespace PortalCT.Web.Pages
{
    public class LoginHandlerModel : PageModel
    {
        private readonly IAuthService _authService;

        public LoginHandlerModel(IAuthService authService)
        {
            _authService = authService;
        }

        public async Task<IActionResult> OnPostAsync([FromBody] LoginRequest request)
        {
            var result = await _authService.AuthenticateAsync(request.Username, request.Password);

            if (result.Success && result.User != null)
            {
                var claims = new List<Claim>
                {
                    new Claim(ClaimTypes.Name, result.User.Username),
                    new Claim(ClaimTypes.Email, result.User.Email),
                    new Claim("FullName", result.User.FullName),
                    new Claim("UserId", result.User.Id.ToString())
                };

                foreach (var permission in result.Permissions)
                {
                    claims.Add(new Claim("Permission", permission));
                }

                var claimsIdentity = new ClaimsIdentity(claims, CookieAuthenticationDefaults.AuthenticationScheme);
                await HttpContext.SignInAsync(CookieAuthenticationDefaults.AuthenticationScheme, new ClaimsPrincipal(claimsIdentity));

                return new JsonResult(new { success = true });
            }

            return new JsonResult(new { success = false, message = result.Message });
        }
    }

    public class LoginRequest
    {
        public string Username { get; set; } = string.Empty;
        public string Password { get; set; } = string.Empty;
    }
}