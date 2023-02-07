using LoyloyShop.DbContexst;
using LoyloyShop.Models;
using LoyloyShop.Services.Interface;
using System;

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
            var motos = _dataContext.Products.Where(p => p.Status == 1).ToList();
            return motos;
        }

        public List<Products> GetActiveProduct()
        {
            var motos = _dataContext.Products.Where(m => m.Status == 1).OrderBy(p => p.CreatedOn).ToList();
           
            return motos;
        }

        public decimal GetTotalPaymentDetails()
        {
            var totalPayment = _dataContext.Details.Sum(d => d.Payment);

            return totalPayment;
        }

        public List<Products> GetSoldOutProduct()
        {
            var motos = _dataContext.Products.Where(m => m.Status == 2).ToList();
            //if (dateFrom != null && dateTo != null)
            //{
            //    motos = motos.Where(p => p.ModifiedOn >= dateFrom && p.ModifiedOn <= dateTo).ToList();
            //}
            return motos;
        }

        public Products GetProductByPlateNumber(string plateNumber)
        {
            if (plateNumber is null)
            {
                throw new ArgumentNullException(nameof(plateNumber));
            }

            var motos = _dataContext.Products.Where(m =>m.PlateNumber.ToLower() == plateNumber.ToLower()).FirstOrDefault();
            return motos;
        }
        public List<Products> GetProductByCategory(int categoryId)
        {
            var motos = _dataContext.Products.Where(m => m.CategoryId == categoryId && m.Status == 1).ToList();
            return motos;
        }

        public List<Products> GetProductByDate(DateTime dateFrom, DateTime dateTo)
        {
            var motos = _dataContext.Products.Where(m => m.ModifiedOn >= dateFrom 
            && m.ModifiedOn <= dateTo  && m.Status == 2).ToList();

            return motos;
        }


        public void StoreMotoInfo(Products product)
        {
            product.CreatedOn = DateTime.Now;
            product.ModifiedOn = DateTime.Now;
            product.Status = 1;
            _dataContext.Products.Add(product);
            _dataContext.SaveChanges();
        }
        public void StoreDetails(Details details)
        {
            details.CreatedOn = DateTime.Now;
            details.ModifiedOn = DateTime.Now;
            _dataContext.Details.Add(details);
            _dataContext.SaveChanges();
        }

        public void UpdateMotoInfo(Products product)
        {
            product.ModifiedOn = DateTime.Now;

            _dataContext.Products.Update(product);
            _dataContext.SaveChanges();
        }

        public Products GetMotoInfo(int productId)
        {
             return  _dataContext.Products.FirstOrDefault(p => p.Id == productId);
        }
    }
}
