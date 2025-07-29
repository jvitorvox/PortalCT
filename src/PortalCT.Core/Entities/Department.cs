using System.ComponentModel.DataAnnotations;

namespace PortalCT.Core.Entities
{
    public class Department
    {
        public int Id { get; set; }
        
        [Required]
        [StringLength(100)]
        public string Name { get; set; } = string.Empty;
        
        [StringLength(500)]
        public string Description { get; set; } = string.Empty;
        
        [StringLength(50)]
        public string Code { get; set; } = string.Empty;
        
        public bool IsActive { get; set; } = true;
        
        // Navigation properties
        public virtual ICollection<UserPermission> UserPermissions { get; set; } = new List<UserPermission>();
        public virtual ICollection<ActionPlan> ActionPlans { get; set; } = new List<ActionPlan>();
    }
}