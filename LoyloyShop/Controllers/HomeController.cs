using LoyloyShop.Models;
using LoyloyShop.Services.Interface;
using LoyloyShop.ViewModel;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Configuration;
using System.Diagnostics;

namespace LoyloyShop.Controllers
{
    public class HomeController : Controller
    {
        private readonly ILogger<HomeController> _logger;
        private readonly IMotoServices _motoService;

        private readonly string username;
        private readonly string password;

        public HomeController(ILogger<HomeController> logger, 
            IConfiguration configuration,
            IMotoServices motoService)
        {
            _logger = logger;
            _motoService = motoService;
            username = configuration.GetSection("Login").GetValue<string>("Username");
            password = configuration.GetSection("Login").GetValue<string>("Password");

        }

        public IActionResult Index()
        {
            return View();
        }
        public IActionResult Privacy()
        {
            return View();
        }
        
        [HttpPost]
        public IActionResult Login(IFormCollection formValue)
        {
            if (username == formValue["Username"] 
                && password == formValue["Password"])
            {
                return RedirectToAction("Index", "Product");
            }

            ViewBag.Messages = "Incorect Username or Password.";
            return View("Index");
        }

    }
}