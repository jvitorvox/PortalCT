using Microsoft.EntityFrameworkCore;
using PortalCT.Core.Entities;

namespace PortalCT.Infrastructure.Data
{
    public class PortalDbContext : DbContext
    {
        public PortalDbContext(DbContextOptions<PortalDbContext> options) : base(options)
        {
        }

        public DbSet<User> Users { get; set; }
        public DbSet<Department> Departments { get; set; }
        public DbSet<UserPermission> UserPermissions { get; set; }
        public DbSet<ActionPlan> ActionPlans { get; set; }
        public DbSet<Information> Informations { get; set; }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            base.OnModelCreating(modelBuilder);

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
                    .HasForeignKey(e => e.UserId)
                    .OnDelete(DeleteBehavior.Cascade);
                
                entity.HasOne(e => e.Department)
                    .WithMany(e => e.UserPermissions)
                    .HasForeignKey(e => e.DepartmentId)
                    .OnDelete(DeleteBehavior.Cascade);
            });

            // ActionPlan configuration
            modelBuilder.Entity<ActionPlan>(entity =>
            {
                entity.HasKey(e => e.Id);
                entity.HasOne(e => e.Department)
                    .WithMany(e => e.ActionPlans)
                    .HasForeignKey(e => e.DepartmentId)
                    .OnDelete(DeleteBehavior.Cascade);
            });

            // Information configuration
            modelBuilder.Entity<Information>(entity =>
            {
                entity.HasKey(e => e.Id);
            });

            // Seed data
            SeedData(modelBuilder);
        }

        private void SeedData(ModelBuilder modelBuilder)
        {
            // Seed Departments
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
        }
    }
}