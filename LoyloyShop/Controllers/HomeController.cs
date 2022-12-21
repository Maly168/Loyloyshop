using LoyloyShop.Models;
using LoyloyShop.Services;
using LoyloyShop.Services.Interface;
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

        public IActionResult Index()
        {
            var product = _motoService.GetMotoInfos();
            ViewBag.Product = product;
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
            ViewBag.Products = product;
            return View(product);
        }

        [HttpPost]
        public ActionResult Create(Products product)
        {
            ViewBag.Products = product;
            _motoService.StoreMotoInfo(product);
            //if (sm.Addon == true)
            //    ViewBag.Addon = "Selected";
            //else
            //    ViewBag.Addon = "Not Selected";

            return View();
        }
        // [HttpPost]
       // [AcceptVerbs(HttpMethods)]
        public ActionResult Update(int id , FormCollection formValue)
        {
            var product = _motoService.GetMotoInfo(id);
            product.Name = formValue["name"];
            product.Type = formValue["type"];
            product.Color = formValue["color"];
            product.EngineNumber = formValue["EngineNumber"];
            product.FrameNumber = formValue["FrameNumber"];
            product.PlateNumber = formValue["PlateNumber"];
            product.MadeYear = int.Parse(formValue["MadeYear"]);
            product.Power = formValue["Power"];
            product.PriceBuy = decimal.Parse(formValue["PriceBuy"]);

            _motoService.UpdateMotoInfo(product);
            return View();
        }

        [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
        public IActionResult Error()
        {
            return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
        }
    }
}