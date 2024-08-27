using LoyloyShop.Enum;
using LoyloyShop.Models;
using LoyloyShop.Services.Interface;
using LoyloyShop.ViewModel;
using Microsoft.AspNetCore.Mvc;

namespace LoyloyShop.Controllers
{
    public class ProductController : Controller
    {
        private readonly IMotoServices _motoService;
        public ProductController(IMotoServices motoService)
        {
            _motoService = motoService;
        }
        public IActionResult Index(int page = 1)
        {
            var products = _motoService.GetActiveProduct();
            try
            {
              
                ViewBag.Product = products;
                ViewBag.TotalPaymentDetail = _motoService.GetTotalPaymentDetails(products);
                ViewBag.Total = products.Sum(p => p.PriceBuy);
            }
            catch (Exception ex)
            {
                   throw new Exception(ex.Message);
            }
           
            var productsView = new ProductViewModel
            {
                ProductPerPage = 10,
                Products = products,
                CurrentPage = page
            };
            return View("~/Views/Product/Index.cshtml", productsView);
        }

        [HttpGet]
        public IActionResult ListPrice(int page = 1)
        {
            var products = _motoService.GetActiveProduct();
            ViewBag.Product = products;

            var productsView = new ProductViewModel
            {
                ProductPerPage = 10,
                Products = products,
                CurrentPage = page
            };
            return View("~/Views/Product/ListPrice.cshtml", productsView);
        }

        [HttpPost]
        public ActionResult SearchByPlateNumber(IFormCollection formValue)
        {
            var products = _motoService.GetProductByPlateNumber(formValue["plateNumber"].ToString());
            ViewBag.Product = products;
            var productsView = new ProductViewModel
            {
                ProductPerPage = 10,
                Products = products,
                CurrentPage = 1
            };
            return View("~/Views/Product/ListPrice.cshtml", productsView);
        }
        [HttpGet]
        public IActionResult AddProduct()
        {
            return View("~/Views/Product/Create.cshtml");
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
        public IActionResult SoldOutProduct(int page = 1)
        {
            var products = _motoService.GetSoldOutProduct();

           
            ViewBag.Product = products;
            var total = products.Sum(p => p.PriceSell) - products.Sum(p => p.PriceBuy);
            var totalPayment = _motoService.GetTotalPaymentDetails(products);
            ViewBag.TotalEarning = total - totalPayment;

            var productsView = new ProductViewModel
            {
                ProductPerPage = 10,
                Products = products,
                CurrentPage = page
            };
            return View("~/Views/Product/SoldOutProduct.cshtml", productsView);
        }

        public IActionResult SearchByBranch(string branchId, int status, int page = 1)
        {
            var product = new List<Products>();
            if (int.TryParse(branchId, out int branchValue))
            {
                product = _motoService.GetProductByBranch(branchValue, status);
            }

            ViewBag.Product = product;
            ViewBag.Total = product.Sum(p => p.PriceBuy);

            ViewBag.TotalPaymentDetail = _motoService.GetTotalPaymentDetails(product);
          
            var productsViewSearch = new ProductViewModel
            {
                ProductPerPage = 10,
                Products = product,
                CurrentPage = page,
                BranchId = branchValue,
                Status = status,
            };
            return View("~/Views/Product/Search.cshtml", productsViewSearch);
        }
        //[HttpGet("search?"{branchId})]
        //public IActionResult TestSearch(int param, int page = 1)
        //{ 
        //    return ViewModel:param;

        //}
        public IActionResult TestSearch(string dateFrom, string dateTo, int branchId, int page = 1)
        {
            var product = new List<Products>();
          
             if (dateTo.Any() && dateFrom.Any())
            {
                product = _motoService.GetProductByDate(
                                                        DateTime.Parse(dateFrom),
                                                        DateTime.Parse(dateTo),
                                                        branchId);
                ViewBag.Product = product;
                var total = product.Sum(p => p.PriceSell) - product.Sum(p => p.PriceBuy);
                var totalPayment = product.Sum(p => p.Detail.Sum(d => d.Payment));
                ViewBag.TotalEarning = total - totalPayment;

                var productsView = new ProductViewModel
                {
                    ProductPerPage = 50,
                    Products = product,
                    CurrentPage = 1,
                    BranchId = branchId,
                    DateFrom = dateFrom,
                    DateTo = dateTo
                };

                return View("~/Views/Product/SoldOutProduct.cshtml", productsView);
            }


            ViewBag.Product = product;
            ViewBag.Total = product.Sum(p => p.PriceBuy);


            //ViewBag.Product = products;
            ViewBag.TotalPaymentDetail = _motoService.GetTotalPaymentDetails(product);
            //  ViewBag.Total = products.Sum(p => p.PriceBuy);
            var productsViewSearch = new ProductViewModel
            {
                ProductPerPage = 30,
                Products = product,
                CurrentPage = page
            };
            return View("~/Views/Product/Search.cshtml", productsViewSearch);



            // return View();
        }

        public IActionResult SearchByCategory(int categoryId , int page = 1)
        {
            var product = new List<Products>();
            product = _motoService.GetProductByCategory(categoryId);
           

            ViewBag.Product = product;
            ViewBag.Total = product.Sum(p => p.PriceBuy);

            ViewBag.TotalPaymentDetail = _motoService.GetTotalPaymentDetails(product);

            var productsViewSearch = new ProductViewModel
            {
                ProductPerPage = 30,
                Products = product,
                CurrentPage = page,
                CategoryId = categoryId,
            };
            return View("~/Views/Product/SearchCategory.cshtml", productsViewSearch);



           // return View();
        }

        [HttpGet]
        public IActionResult SearchSoldOutByPlateNumber()
        {
           // var productsView = new ProductViewModel();
            var productsView = new ProductViewModel
            {
                ProductPerPage = 10,
                Products = null,
                CurrentPage = 1
            };
            return View("~/Views/Product/SearchSoldOut.cshtml", productsView);
        }

        [HttpPost]
        public ActionResult CreateDetails(Details details)
        {
            _motoService.StoreDetails(details);
            var products = _motoService.GetActiveProduct();
            ViewBag.Product = products;
            ViewBag.TotalPaymentDetail = _motoService.GetTotalPaymentDetails(products);
            ViewBag.Total = products.Sum(p => p.PriceBuy);
            var productsView = new ProductViewModel
            {
                ProductPerPage = 10,
                Products = products,
                CurrentPage = 1
            };
            return View("~/Views/Product/Index.cshtml", productsView);
        }

        [HttpGet]
        public IActionResult Details(int id)
        {
            var product = _motoService.GetMotoInfo(id);
            ViewBag.Products = product;
            return View("~/Views/Product/Details.cshtml", product);
        }

        [HttpPost]
        public ActionResult Create(Products product)
        {
            _motoService.StoreMotoInfo(product);

            var products = _motoService.GetActiveProduct();
            ViewBag.Product = products;
            ViewBag.TotalPaymentDetail = _motoService.GetTotalPaymentDetails(products);
            ViewBag.Total = products.Sum(p => p.PriceBuy);
            var productsView = new ProductViewModel
            {
                ProductPerPage = 10,
                Products = products,
                CurrentPage = 1
            };
            return View("~/Views/Product/Index.cshtml", productsView);
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
            product.SellingPrice = decimal.Parse(formValue["SellingPrice"]);
            product.CategoryId = int.Parse(formValue["CategoryId"]);
            product.BranchId = int.Parse(formValue["BranchId"]);
            product.Status = int.Parse(formValue["Status"]);
            product.Description = formValue["description"];
            product.DateSell = DateTime.Parse( formValue["dateSell"]);
            product.ModifiedOn = DateTime.UtcNow.AddHours(7);
            _motoService.UpdateMotoInfo(product);

            var products = _motoService.GetActiveProduct();
            ViewBag.TotalPaymentDetail = _motoService.GetTotalPaymentDetails(products);
            ViewBag.Product = products;
            ViewBag.Total = products.Sum(p => p.PriceBuy);

            var productsView = new ProductViewModel
            {
                ProductPerPage = 10,
                Products = products,
                CurrentPage = 1
            };
            return View("~/Views/Product/Index.cshtml", productsView);
        }

        [HttpGet]
        public IActionResult GetBooking(int page = 1)
        {
            var products = _motoService.GetBookingProduct();
            ViewBag.Product = products;
            ViewBag.TotalPaymentDetail = _motoService.GetTotalPaymentDetails(products);
            ViewBag.Total = products.Sum(p => p.PriceBuy);
            var productsView = new ProductViewModel
            {
                ProductPerPage = 10,
                Products = products,
                CurrentPage = page
            };
            return View("~/Views/Product/Booking.cshtml", productsView);
        }

        [HttpPost]
        public ActionResult SearchSoldOutProduct(IFormCollection formValue)
        {
            var products = _motoService.GetSoldOutProduct(formValue["plateNumber"].ToString());
            ViewBag.Product = products;
            var productsView = new ProductViewModel
            {
                ProductPerPage = 10,
                Products = products,
                CurrentPage = 1
            };
            return View("~/Views/Product/SearchSoldOut.cshtml", productsView);
        }
    }
}
