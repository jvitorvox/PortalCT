using System.ComponentModel.DataAnnotations;

namespace PortalCT.Web.Models;

public class Information
{
    public int Id { get; set; }
    
    [Required]
    [StringLength(1000)]
    public string Content { get; set; } = string.Empty;
    
    [Required]
    [StringLength(20)]
    public string Priority { get; set; } = string.Empty;
    
    [Required]
    [StringLength(20)]
    public string Status { get; set; } = "Ativo";
    
    [StringLength(10)]
    public string Sector { get; set; } = "T";
    
    public DateTime CreatedAt { get; set; } = DateTime.Now;
    
    public DateTime? UpdatedAt { get; set; }
}