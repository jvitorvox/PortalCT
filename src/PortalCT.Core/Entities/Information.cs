using System.ComponentModel.DataAnnotations;

namespace PortalCT.Core.Entities
{
    public class Information
    {
        public int Id { get; set; }
        
        [Required]
        public string Content { get; set; } = string.Empty;
        
        [StringLength(50)]
        public string Priority { get; set; } = string.Empty; // Baixa, Media, Alta, Critica
        
        [StringLength(50)]
        public string Status { get; set; } = "Ativo";
        
        [StringLength(10)]
        public string Sector { get; set; } = string.Empty; // T = Todos
        
        public DateTime CreatedAt { get; set; } = DateTime.UtcNow;
        public DateTime? UpdatedAt { get; set; }
    }
}