using System;
using LoyloyShop.DbContexst;
using LoyloyShop.Enum;
using LoyloyShop.Models;
using LoyloyShop.Services.Interface;


namespace LoyloyShop.Services
{
    public class MotoServices : IMotoServices
    {
        private readonly DataContext _dataContext;
        public MotoServices(DataContext dataContext)
        {
            _dataContext = dataContext;
        }
        public List<Products> GetMotoInfos()
        {
            var motos = _dataContext.Products.Where(p => p.Status == 1).OrderByDescending(p => p.CreatedOn).ToList();
            return motos;
        }

        public List<Products> GetActiveProduct()
        {
            var motos = _dataContext.Products.Where(m => m.Status == 1).OrderByDescending(p => p.CreatedOn).ToList();
           
            return motos;
        }

        public List<Products> GetBookingProduct()
        {
            var motos = _dataContext.Products.Where(m => m.Status == 4).OrderByDescending(p => p.ModifiedOn).ToList();

            return motos;
        }

        public decimal GetTotalPaymentDetails(List<Products> products)
        {
            decimal detailsPayment = 0;
            try
            {
                foreach (var product in products)
                {
                    if (product.Detail != null)
                    {
                        detailsPayment += product.Detail.Sum(d => d.Payment);

                    }
                }
            }
            catch (Exception e)
            {

                throw e;
            }
            

            return detailsPayment;
        }

        public List<Products> GetSoldOutProduct()
        {
            var motos = _dataContext.Products.Where(m => m.Status == 2)
               // .Skip(20)
                // .Take(10)
                .OrderByDescending(p => p.DateSell)
                .ToList();
            ////Get update datesell

            //foreach (var product in motos)
            //{
            //    product.DateSell = product.ModifiedOn;
            //    _dataContext.Products.Update(product);
            //    _dataContext.SaveChanges();
            //}
            return motos;
        }

        public List<Products> GetProductByPlateNumber(string plateNumber)
        {
            if (plateNumber is null)
            {
                return new List<Products> { };
                //throw new ArgumentNullException(nameof(plateNumber));
            }

            var motos = _dataContext.Products.Where(m =>m.PlateNumber.ToLower().Contains(plateNumber.ToLower()) && m.Status == 1).ToList();
            return motos;
        }
        public List<Products> GetSoldOutProduct(string plateNumber)
        {
            if (plateNumber is null)
            {
                return new List<Products> { };
                //throw new ArgumentNullException(nameof(plateNumber));
            }

            var motos = _dataContext.Products.Where(m => m.PlateNumber.ToLower().Contains(plateNumber.ToLower()) && m.Status == 2).ToList();
            return motos;
        }
        public List<Products> GetProductByCategory(int categoryId)
        {
            var motos = _dataContext.Products.Where(m => m.CategoryId == categoryId && m.Status == 1).ToList();
            return motos;
        }

        public List<Products> GetProductByBranch(int branchId, int status)
        {
            var motos = _dataContext.Products.Where(m => m.BranchId == branchId && m.Status == status).ToList();
            return motos;
        }

        public List<Products> GetProductByDate(DateTime dateFrom, DateTime dateTo, int branchId)
        {
            var motos = _dataContext.Products.Where(m => m.DateSell >= dateFrom 
                                                                         && m.DateSell <= dateTo 
                                                                         && m.Status == 2 
                                                                         && m.BranchId == branchId)
                                                                        .OrderByDescending(p => p.DateSell).ToList();

            return motos;
        }


        public void StoreMotoInfo(Products product)
        {
            product.CreatedOn = DateTime.UtcNow.AddHours(7);
            product.ModifiedOn = DateTime.UtcNow.AddHours(7);
            product.Status = 1;
            _dataContext.Products.Add(product);
            _dataContext.SaveChanges();
        }
        public void StoreDetails(Details details)
        {
            details.CreatedOn = DateTime.UtcNow.AddHours(7);
            details.ModifiedOn = DateTime.UtcNow.AddHours(7);
            _dataContext.Details.Add(details);
            _dataContext.SaveChanges();
        }

        public void UpdateMotoInfo(Products product)
        {
            _dataContext.Products.Update(product);
            _dataContext.SaveChanges();
        }

        public Products GetMotoInfo(int productId)
        {
             return  _dataContext.Products.FirstOrDefault(p => p.Id == productId);
        }

        public string GetCategoryName(int categoryId)
        {

            return categoryId switch
            {
                1 => CategoryEnum.Scoopy.ToString(),
                2 => CategoryEnum.Smash.ToString(),
                3 => CategoryEnum.Viva.ToString(),
                4 => CategoryEnum.Msx.ToString(),
                5 => CategoryEnum.Today.ToString(),
                6 => CategoryEnum.ScoopyMini.ToString(),
                7 => CategoryEnum.Nex.ToString(),
                8 => CategoryEnum.AirBlade.ToString(),
                9 => CategoryEnum.Click.ToString(),
                10 => CategoryEnum.Dream.ToString(),
                11 => CategoryEnum.Cub.ToString(),
                12 => CategoryEnum.Fino.ToString(),
                13 => CategoryEnum.Pulsar.ToString(),
                14 => CategoryEnum.ZoomerX.ToString(),
                15 => CategoryEnum.Cent.ToString(),
                16 => CategoryEnum.Icon.ToString(),
                17 => CategoryEnum.Let.ToString(),
                18 => CategoryEnum.Step.ToString(),
                19 => CategoryEnum.Dio.ToString(),
                20 => CategoryEnum.GTRGirno.ToString(),
                21 => CategoryEnum.PCX.ToString(),
                22 => CategoryEnum.Beat.ToString(),
                23 => CategoryEnum.CBR.ToString(),
                24 => CategoryEnum.FTR.ToString(),
                25 => CategoryEnum.Moove.ToString(),
                26 => CategoryEnum.Wave.ToString(),
                27 => CategoryEnum.CalypsoOri.ToString(),
                28 => CategoryEnum.GPX.ToString(),
                _ => "Other",
            };
        }
    }
}
