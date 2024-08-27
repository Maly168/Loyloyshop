using LoyloyShop.Models;
using Microsoft.AspNetCore.Mvc;

namespace LoyloyShop.Controllers
{
    public class CalculationRateController
        : Controller
    {
        public CalculationRateController()
        {

        }
        public IActionResult Index()
        {
            var calculationRate = new CalculationRate();
            return View("~/Views/Product/Calculation.cshtml", calculationRate);
        }

        [HttpPost]
        public ActionResult CalculateRate(IFormCollection formValue)
        {
            decimal amount = decimal.Parse(formValue["Amount"]);
            int periodInMonth =int.Parse( formValue["PeriodInMonth"]);
            decimal result = 0;
            if (periodInMonth > 0 && amount > 0)
            { 
                result = ((amount * decimal.Parse("1.2")* periodInMonth / 100) + amount) / periodInMonth;
            }
            var calculationRate = new CalculationRate();
            calculationRate.Amount = amount;
            calculationRate.PeriodInMonth = periodInMonth;
            calculationRate.Result = result;
            return View("~/Views/Product/Calculation.cshtml", calculationRate);
        }
    }
}
