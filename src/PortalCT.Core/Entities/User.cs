using System.ComponentModel.DataAnnotations;

namespace PortalCT.Core.Entities
{
    public class User
    {
        public int Id { get; set; }
        
        [Required]
        [StringLength(100)]
        public string Username { get; set; } = string.Empty;
        
        [Required]
        [StringLength(255)]
        public string Email { get; set; } = string.Empty;
        
        [StringLength(255)]
        public string FullName { get; set; } = string.Empty;
        
        public bool IsActive { get; set; } = true;
        
        public DateTime CreatedAt { get; set; } = DateTime.UtcNow;
        
        public DateTime? LastLoginAt { get; set; }
        
        // Navigation properties
        public virtual ICollection<UserPermission> Permissions { get; set; } = new List<UserPermission>();
    }
}