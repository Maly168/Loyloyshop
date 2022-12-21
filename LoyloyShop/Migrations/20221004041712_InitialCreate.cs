using System;
using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace LoyloyShop.Migrations
{
    public partial class InitialCreate : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.CreateTable(
                name: "Products",
                columns: table => new
                {
                    Id = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    Name = table.Column<string>(type: "NVARCHAR(50)", maxLength: 50, nullable: true),
                    Type = table.Column<string>(type: "NVARCHAR(50)", maxLength: 50, nullable: true),
                    Color = table.Column<string>(type: "NVARCHAR(50)", maxLength: 50, nullable: true),
                    EngineNumber = table.Column<string>(type: "NVARCHAR(100)", maxLength: 100, nullable: true),
                    FrameNumber = table.Column<string>(type: "NVARCHAR(100)", maxLength: 100, nullable: true),
                    PlateNumber = table.Column<string>(type: "NVARCHAR(100)", maxLength: 100, nullable: true),
                    MadeYear = table.Column<int>(type: "Integer", maxLength: 50, nullable: true),
                    Power = table.Column<string>(type: "NVARCHAR(50)", maxLength: 50, nullable: true),
                    PriceBuy = table.Column<decimal>(type: "Decimal", maxLength: 50, nullable: false),
                    PriceSell = table.Column<decimal>(type: "Decimal(38,17)", maxLength: 50, nullable: true),
                    Status = table.Column<int>(type: "Integer", maxLength: 50, nullable: false),
                    CreatedOn = table.Column<DateTime>(type: "DateTime", nullable: false),
                    DateSell = table.Column<DateTime>(type: "DateTime", nullable: true),
                    ModifiedOn = table.Column<DateTime>(type: "DateTime", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Products", x => x.Id);
                });
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropTable(
                name: "Products");
        }
    }
}
