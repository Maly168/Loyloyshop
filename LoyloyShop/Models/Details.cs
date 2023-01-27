using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;

namespace LoyloyShop.Models
{
    public class Details
    {
        public int Id { get; set; }
        public virtual int? ProductId { get; set; }
        public string Name { get; set; }
        public decimal Payment { get; set; }
        public string? Note { get; set; }
        public virtual Products Products { get; set; }
        public DateTime CreatedOn { get; set; }
        public DateTime ModifiedOn { get; set; }

    }

    public class DetailsModelEntityConfiguration : IEntityTypeConfiguration<Details>
    {
        public void Configure(EntityTypeBuilder<Details> builder)
        {
            builder.HasKey(p => p.Id);
            builder.Property(p => p.ProductId).HasColumnName("ProductId").HasColumnType("Integer").HasMaxLength(50);
            builder.Property(p => p.Name).HasColumnName("Name").HasColumnType("NVARCHAR").HasMaxLength(50);
            builder.Property(p => p.Payment).HasColumnName("Payment").HasColumnType("Decimal");
            builder.Property(p => p.Note).HasColumnName("Note").HasColumnType("NVARCHAR").HasMaxLength(300);
            builder.Property(p => p.CreatedOn).HasColumnName("CreatedOn").HasColumnType("DateTime");
            builder.Property(p => p.ModifiedOn).HasColumnName("ModifiedOn").HasColumnType("DateTime");
            builder.HasOne(p => p.Products).WithMany(a => a.Detail).HasForeignKey(k => k.ProductId);

            builder.ToTable("Details");
        }
    }
}
