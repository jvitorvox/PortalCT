namespace PortalCT.Web.Models;

public class UserPermission
{
    public int Id { get; set; }
    
    public int UserId { get; set; }
    
    public int DepartmentId { get; set; }
    
    public DateTime CreatedAt { get; set; } = DateTime.Now;
    
    // Navigation properties
    public virtual User User { get; set; } = null!;
    public virtual Department Department { get; set; } = null!;
}