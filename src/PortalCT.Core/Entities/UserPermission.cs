using System.ComponentModel.DataAnnotations;

namespace PortalCT.Core.Entities
{
    public class UserPermission
    {
        public int Id { get; set; }
        
        public int UserId { get; set; }
        public virtual User User { get; set; } = null!;
        
        public int DepartmentId { get; set; }
        public virtual Department Department { get; set; } = null!;
        
        [StringLength(100)]
        public string Permission { get; set; } = string.Empty;
        
        public bool IsActive { get; set; } = true;
        
        public DateTime CreatedAt { get; set; } = DateTime.UtcNow;
    }
}