using LoyloyShop.Models;
using Microsoft.EntityFrameworkCore;
using System.Data.Entity;

namespace LoyloyShop.DbContexst
{
    public class DataContext : Microsoft.EntityFrameworkCore.DbContext
    {
        protected readonly IConfiguration Configuration;

        public DataContext(IConfiguration configuration)
        {
            Configuration = configuration;
        }
        public Microsoft.EntityFrameworkCore.DbSet<Products> Products { get; set; }
        public Microsoft.EntityFrameworkCore.DbSet<Details> Details { get; set; }

        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            // connect to sql server with connection string from app settings
            optionsBuilder.UseLazyLoadingProxies();
            optionsBuilder.UseSqlServer(
                    Configuration.GetConnectionString("loyloyshopdb"),
                    options => options.EnableRetryOnFailure()
                );
           
            //, b => b.MigrationsAssembly("CountryPublicHolidayWebApi")
            // options.UseQueryTrackingBehavior(QueryTrackingBehavior.NoTracking);
        }
        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            base.OnModelCreating(modelBuilder);

            modelBuilder.ApplyConfiguration(new ProductModelEntityConfiguration());
            modelBuilder.ApplyConfiguration(new DetailsModelEntityConfiguration());


        }
    }
}
