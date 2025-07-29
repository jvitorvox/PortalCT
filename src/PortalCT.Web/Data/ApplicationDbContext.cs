using Microsoft.EntityFrameworkCore;
using PortalCT.Web.Models;
using Microsoft.Data.Sqlite;

namespace PortalCT.Web.Data;

public class ApplicationDbContext : DbContext
{
    public ApplicationDbContext(DbContextOptions<ApplicationDbContext> options) : base(options)
    {
    }

    public DbSet<User> Users { get; set; }
    public DbSet<Department> Departments { get; set; }
    public DbSet<UserPermission> UserPermissions { get; set; }
    public DbSet<Information> Informations { get; set; }

    protected override void OnModelCreating(ModelBuilder modelBuilder)
    {
        base.OnModelCreating(modelBuilder);
        
        // Configure for SQLite in production
        if (Database.ProviderName == "Microsoft.EntityFrameworkCore.Sqlite")
        {
            foreach (var entityType in modelBuilder.Model.GetEntityTypes())
            {
                var properties = entityType.ClrType.GetProperties().Where(p => p.PropertyType == typeof(decimal));
                foreach (var property in properties)
                {
                    modelBuilder.Entity(entityType.Name).Property(property.Name).HasConversion<double>();
                }
            }
        }

        // User configuration
        modelBuilder.Entity<User>(entity =>
        {
            entity.HasKey(e => e.Id);
            entity.HasIndex(e => e.Username).IsUnique();
            entity.HasIndex(e => e.Email).IsUnique();
        });

        // Department configuration
        modelBuilder.Entity<Department>(entity =>
        {
            entity.HasKey(e => e.Id);
            entity.HasIndex(e => e.Code).IsUnique();
        });

        // UserPermission configuration
        modelBuilder.Entity<UserPermission>(entity =>
        {
            entity.HasKey(e => e.Id);
            entity.HasOne(e => e.User)
                .WithMany(e => e.Permissions)
                .HasForeignKey(e => e.UserId);
            entity.HasOne(e => e.Department)
                .WithMany(e => e.UserPermissions)
                .HasForeignKey(e => e.DepartmentId);
        });

        // Seed data
        modelBuilder.Entity<Department>().HasData(
            new Department { Id = 1, Name = "Administrativo", Code = "ADM", Description = "Departamento Administrativo" },
            new Department { Id = 2, Name = "Recursos Humanos", Code = "RH", Description = "Departamento de RH" },
            new Department { Id = 3, Name = "Tecnologia da Informação", Code = "TI", Description = "Departamento de TI" },
            new Department { Id = 4, Name = "Financeiro", Code = "FIN", Description = "Departamento Financeiro" },
            new Department { Id = 5, Name = "Obras", Code = "OBRAS", Description = "Departamento de Obras" },
            new Department { Id = 6, Name = "Comercial", Code = "COM", Description = "Departamento Comercial" },
            new Department { Id = 7, Name = "Jurídico", Code = "JUR", Description = "Departamento Jurídico" },
            new Department { Id = 8, Name = "Contábil", Code = "CONT", Description = "Departamento Contábil" }
        );

        modelBuilder.Entity<Information>().HasData(
            new Information 
            { 
                Id = 1, 
                Content = "Bem-vindo ao Portal Casa & Terra! Sistema migrado para .NET Core com Blazor Server.", 
                Priority = "Alta", 
                Status = "Ativo", 
                Sector = "T" 
            },
            new Information 
            { 
                Id = 2, 
                Content = "Sistema funcionando com Entity Framework Core e SQL Server LocalDB.", 
                Priority = "Media", 
                Status = "Ativo", 
                Sector = "TI" 
            }
        );
    }
}