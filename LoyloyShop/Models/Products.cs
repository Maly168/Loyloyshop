using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;

namespace LoyloyShop.Models
{
    public class Products
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public string Type { get; set; }
        public string Color { get; set; }
        public string EngineNumber { get; set; }
        public string FrameNumber { get; set; }
        public string PlateNumber { get; set; }
        public int? MadeYear { get; set;}
        public string Power { get; set; }
        public decimal PriceBuy { get; set; }
        public decimal? PriceSell { get; set; }
        public int Status { get; set; }
        public DateTime CreatedOn { get; set;}
        public DateTime? DateSell { get; set;}
        public DateTime ModifiedOn { get; set; }
        public int? CategoryId { get; set; }
    }
    public class ProductModelEntityConfiguration : IEntityTypeConfiguration<Products>
    {
        public void Configure(EntityTypeBuilder<Products> builder)
        {
            builder.HasKey(p => p.Id);
            builder.Property(p => p.Name).HasColumnName("Name").HasColumnType("NVARCHAR").HasMaxLength(50);
            builder.Property(p => p.Type).HasColumnName("Type").HasColumnType("NVARCHAR").HasMaxLength(50);
            builder.Property(p => p.Color).HasColumnName("Color").HasColumnType("NVARCHAR").HasMaxLength(50);
            builder.Property(p => p.EngineNumber).HasColumnName("EngineNumber").HasColumnType("NVARCHAR").HasMaxLength(100);
            builder.Property(p => p.FrameNumber).HasColumnName("FrameNumber").HasColumnType("NVARCHAR").HasMaxLength(100);
            builder.Property(p => p.PlateNumber).HasColumnName("PlateNumber").HasColumnType("NVARCHAR").HasMaxLength(100);

            builder.Property(p => p.MadeYear).HasColumnName("MadeYear").HasColumnType("Integer").HasMaxLength(50);
            builder.Property(p => p.Power).HasColumnName("Power").HasColumnType("NVARCHAR").HasMaxLength(50);
            builder.Property(p => p.MadeYear).HasColumnName("MadeYear").HasColumnType("Integer").HasMaxLength(50);
            builder.Property(p => p.PriceBuy).HasColumnName("PriceBuy").HasColumnType("Decimal").HasMaxLength(50);

            builder.Property(p => p.PriceSell).HasColumnName("PriceSell").HasColumnType("Decimal").HasMaxLength(50);
            builder.Property(p => p.Status).HasColumnName("Status").HasColumnType("Integer").HasMaxLength(50);

            builder.Property(p => p.CreatedOn).HasColumnName("CreatedOn").HasColumnType("DateTime");
            builder.Property(p => p.DateSell).HasColumnName("DateSell").HasColumnType("DateTime");
            
            builder.Property(p => p.ModifiedOn).HasColumnName("ModifiedOn").HasColumnType("DateTime");
            builder.Property(p => p.CategoryId).HasColumnName("CategoryId").HasColumnType("Integer").HasMaxLength(50);
            builder.ToTable("Products");
        }
    }
}
