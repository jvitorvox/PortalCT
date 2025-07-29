using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace PortalCT.Core.Entities
{
    public class ActionPlan
    {
        public int Id { get; set; }
        
        public int DepartmentId { get; set; }
        public virtual Department Department { get; set; } = null!;
        
        [StringLength(20)]
        public string Period { get; set; } = string.Empty; // MM/YYYY
        
        [StringLength(100)]
        public string Action { get; set; } = string.Empty;
        
        public string What { get; set; } = string.Empty;
        public string Why { get; set; } = string.Empty;
        public string Where { get; set; } = string.Empty;
        public string When { get; set; } = string.Empty;
        public string Who { get; set; } = string.Empty;
        public string How { get; set; } = string.Empty;
        public string HowMuch { get; set; } = string.Empty;
        
        [Column(TypeName = "decimal(18,2)")]
        public decimal Value { get; set; }
        
        public string Feedback { get; set; } = string.Empty;
        
        [StringLength(50)]
        public string Category { get; set; } = string.Empty;
        
        [StringLength(50)]
        public string Status { get; set; } = string.Empty;
        
        [StringLength(100)]
        public string Direction { get; set; } = string.Empty;
        
        public DateTime CreatedAt { get; set; } = DateTime.UtcNow;
        public DateTime? UpdatedAt { get; set; }
    }
}