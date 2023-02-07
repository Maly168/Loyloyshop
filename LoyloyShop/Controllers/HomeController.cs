using LoyloyShop.Models;
using LoyloyShop.Services.Interface;
using LoyloyShop.ViewModel;
using Microsoft.AspNetCore.Mvc;
using System.Diagnostics;

namespace LoyloyShop.Controllers
{
    public class HomeController : Controller
    {
        private readonly ILogger<HomeController> _logger;
        private readonly IMotoServices _motoService;

        public HomeController(ILogger<HomeController> logger, IMotoServices motoService)
        {
            _logger = logger;
            _motoService = motoService;
        }

        public IActionResult Index(int page = 1)
        {
            var products = _motoService.GetActiveProduct();
            ViewBag.Product = products;
            ViewBag.TotalPaymentDetail = _motoService.GetTotalPaymentDetails();
            ViewBag.Total = products.Sum(p => p.PriceBuy);
            var productsView = new ProductViewModel
            {
                ProductPerPage = 10,
                Products = products,
                CurrentPage = page
            };
            return View(productsView);
        }

        public IActionResult SoldOutProduct(int page =1)
        {
            var products = _motoService.GetSoldOutProduct();
            ViewBag.Product = products;
            var total = products.Sum(p => p.PriceSell)  - products.Sum(p => p.PriceBuy);
            var totalPayment = _motoService.GetTotalPaymentDetails();
            ViewBag.TotalEarning = total - totalPayment;

            var productsView = new ProductViewModel
            {
                ProductPerPage = 10,
                Products = products,
                CurrentPage = page
            };
            return View("~/Views/Home/SoldOutProduct.cshtml", productsView);
        }

        public IActionResult Search(IFormCollection formValue)
        {
            var product = new List<Products>();
            if (formValue["CategoryId"].Any())
            {
                product = _motoService.GetProductByCategory(int.Parse(formValue["CategoryId"]));
            }
            else if (formValue["dateTo"].Any() && formValue["dateFrom"].Any())
            {
                product = _motoService.GetProductByDate(DateTime.Parse(formValue["dateFrom"]), 
                    DateTime.Parse(formValue["dateTo"]));
                ViewBag.Product = product;
                var total = product.Sum(p => p.PriceSell) - product.Sum(p => p.PriceBuy);
                var totalPayment = product.Sum(p => p.Detail.Sum(d => d.Payment));
                ViewBag.TotalEarning = total - totalPayment;

                var productsView = new ProductViewModel
                {
                    ProductPerPage = 50,
                    Products = product,
                    CurrentPage = 1
                };

                return View("~/Views/Home/SoldOutProduct.cshtml", productsView);
            }
                
           
            ViewBag.Product = product;
            ViewBag.Total = product.Sum(p => p.PriceBuy);
            return View();
        }

        public IActionResult Privacy()
        {
            return View();
        }

        [HttpGet]
        public IActionResult AddProduct()
        {
            return View("~/Views/Home/Create.cshtml");
        }

        [HttpGet]
        public IActionResult Edit(int id)
        {
            var product = _motoService.GetMotoInfo(id);
            return View(product);
        }

        [HttpGet]
        public IActionResult AddDetails(int id)
        {
            ViewBag.ProductId = id;
            return View();
        }

        [HttpPost]
        public ActionResult CreateDetails(Details details)
        {
            _motoService.StoreDetails(details);
            var products = _motoService.GetMotoInfos();
            ViewBag.Product = products;
            ViewBag.TotalPaymentDetail = _motoService.GetTotalPaymentDetails();
            ViewBag.Total = products.Sum(p => p.PriceBuy);
            var productsView = new ProductViewModel
            {
                ProductPerPage = 10,
                Products = products,
                CurrentPage = 1
            };
            return View("~/Views/Home/Index.cshtml", productsView);
        }

        [HttpGet]
        public IActionResult Details(int id)
        {
            var product = _motoService.GetMotoInfo(id);
            ViewBag.Products = product;
            return View(product);
        }

        [HttpPost]
        public ActionResult Create(Products product)
        {
            _motoService.StoreMotoInfo(product);

            var products = _motoService.GetMotoInfos();
            ViewBag.Product = products;
            ViewBag.TotalPaymentDetail = _motoService.GetTotalPaymentDetails();
            ViewBag.Total = products.Sum(p => p.PriceBuy);
            var productsView = new ProductViewModel
            {
                ProductPerPage = 10,
                Products = products,
                CurrentPage = 1
            };
            return View("~/Views/Home/Index.cshtml", productsView);
        }

      

        [HttpPost]
        public ActionResult Update(IFormCollection formValue)
        {
            var product = _motoService.GetMotoInfo(int.Parse(formValue["Id"]));
            product.Name = formValue["name"];
            product.Type = formValue["type"];
            product.Color = formValue["color"];
            product.EngineNumber = formValue["EngineNumber"];
            product.FrameNumber = formValue["FrameNumber"];
            product.PlateNumber = formValue["PlateNumber"];
            product.MadeYear = int.Parse(formValue["MadeYear"]);
            product.Power = formValue["Power"];
            product.PriceBuy = decimal.Parse(formValue["PriceBuy"]);
            product.PriceSell = decimal.Parse(formValue["PriceSell"]);
            product.CategoryId = int.Parse(formValue["CategoryId"]);

            product.Status = int.Parse(formValue["Status"]);

            _motoService.UpdateMotoInfo(product);

            var products = _motoService.GetMotoInfos();
            ViewBag.Product = products;
            ViewBag.Total = products.Sum(p => p.PriceBuy);

            var productsView = new ProductViewModel
            {
                ProductPerPage = 10,
                Products = products,
                CurrentPage = 1
            };
            return View("~/Views/Home/Index.cshtml", productsView);
        }
    }
}