using LoyloyShop.Enum;
using LoyloyShop.Services.Interface;
using Microsoft.AspNetCore.Mvc;
using PdfSharpCore;
using PdfSharpCore.Pdf;
using TheArtOfDev.HtmlRenderer.PdfSharp;

namespace LoyloyShop.Controllers
{
    
    public class ReportController : Controller
    {
        private readonly IMotoServices _motoService;
        public ReportController(IMotoServices motoService)
        {
            _motoService = motoService;
        }

        public IActionResult Index()
        {
            return View("~/Views/Report/Index.cshtml");
        }

        [HttpPost]
        public  IActionResult GetActiveProduct() 
        {
            var products= _motoService.GetActiveProduct()
                                    .GroupBy(p => p.CategoryId)
                                    .Select(group => new
                                    {
                                        CategoryId = group.Key.Value,
                                        Product = group
                                    })
                                    .OrderBy(p => p.CategoryId)
                                    .ToList();
           
            //var products = _motoService.GetActiveProduct().OrderBy(p =>p.CategoryId);
            var data = new PdfDocument();
            string htmlContent = "<div style = 'margin: 20px auto; max-width: 600px; padding: 20px; border: 1px solid #ccc; background-color: #FFFFFF; font-family: Arial, sans-serif;' >";
            htmlContent += "<div style = 'margin-bottom: 20px; text-align: center;'>";
            htmlContent += "<img src='img/logo.jpg'  alt = 'Logo' style = 'max-width: 100px; margin-bottom: 10px;' />";
            //htmlContent += "<img src = 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcROnYPD5QO8ZJvPQt8ClnJNPXduCeX89dSOxA&usqp=CAU' alt = 'School Logo' style = 'max-width: 100px; margin-bottom: 10px;' >";
            htmlContent += "</div>";
            htmlContent += $"<p style = 'margin: 0;' >Date: {DateTime.Now.AddHours(7)}</p>";
            htmlContent += "<p style = 'margin: 0;' >Motorloyloy shop</p>";
            htmlContent += "<p style = 'margin: 0;' > st143, Sangkat Vealvong, Khan 7makara, Phnom Penh</p>";
            htmlContent += "<p style = 'margin: 0;' > Phone: 012 345 048, 016 345 048, 090 345 048 </p>";
            //htmlContent += "<p style = 'margin: 0;' > Tamilnadu </p>";
            htmlContent += "<div style = 'text-align: center; margin-bottom: 20px;'>";
            htmlContent += "<h1> Motorloyloy shop </h1>";
            htmlContent += "</div>";
            //htmlContent += "<h3> StudentDetails:</h3>";
            //htmlContent += "<p> Name:</p>";
            //htmlContent += "<p> STD:</p>";
            htmlContent += "<table style = 'width: 100%; border-collapse: collapse;'>";
            htmlContent += "<thead>";

            htmlContent += "<tr>";
            htmlContent += "<th style = 'padding: 8px; text-align: left; border-bottom: 1px solid #ddd;' > Name </th>";
            htmlContent += "<th style = 'padding: 8px; text-align: left; border-bottom: 1px solid #ddd;' > PlateNumber </th>";
           // htmlContent += "<th style = 'padding: 8px; text-align: left; border-bottom: 1px solid #ddd;' >Active </th>";
            htmlContent += "</tr><hr/>";


            htmlContent += "</thead>";
            htmlContent += "<tbody>";
            int totalProduct = 0;
            foreach (var product in products)
            {
                totalProduct += product.Product.Count();
                htmlContent += "<tr>";
                htmlContent += "<td style = 'padding: 8px; text-align: center; border-bottom: 1px solid #ddd;' colspan='2' > " +_motoService.GetCategoryName(product.CategoryId) +": " +product.Product.Count()+ " </td>";
                
                htmlContent += "</tr>";
                //product.CategoryId
                foreach (var item in product.Product)
                {
                    htmlContent += "<tr>";
                    htmlContent += "<td style = 'padding: 8px; text-align: left; border-bottom: 1px solid #ddd;' > " + item.Name + " </td>";
                    htmlContent += "<td style = 'padding: 8px; text-align: left; border-bottom: 1px solid #ddd;' >" + item.PlateNumber + " </td>";
                   // htmlContent += "<th style = 'padding: 8px; text-align: left; border-bottom: 1px solid #ddd;' ><div class='form-check'><input class='form-check-input' type='checkbox'  id='flexCheckDefault'></div></th>";

                    htmlContent += "</tr>";
                    

                }
            }

            htmlContent += "</tbody>";
            htmlContent += "<tfoot>";
            htmlContent += "<tr>";
            htmlContent += $"<td style = 'padding: 8px; text-align: center; font-weight: bold;' colspan='2'> Total products: {totalProduct} </td>";
           // htmlContent += $"<td style = 'padding: 8px; text-align: left; border-top: 1px solid #ddd;' ></td>";
            htmlContent += "</tr>";
            htmlContent += "</tfoot>";
            htmlContent += "</table>";
            htmlContent += "</div>";
            PdfGenerator.AddPdfPages(data, htmlContent, PageSize.A4);
            byte[]? response = null;
            using (MemoryStream ms = new MemoryStream())
            {
                data.Save(ms);
                response = ms.ToArray();
            }
            //string fileName = "loyloy" + DateTime.Now+ ".pdf";
            string fileName = "loyloy.pdf";

            return File(response, "application/pdf", fileName);
        }
    }
}
