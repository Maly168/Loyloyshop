using LoyloyShop.DbContexst;
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
            var motos = _dataContext.Products.ToList();
            return motos;
        }

        public List<Products> GetActiveProduct()
        {
            var motos = _dataContext.Products.Where(m => m.Status == 1).ToList();
            return motos;
        }

        public List<Products> GetSoldOutProduct()
        {
            var motos = _dataContext.Products.Where(m => m.Status == 2).ToList();
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

        public void StoreMotoInfo(Products product)
        {
            product.CreatedOn = DateTime.Now;
            product.ModifiedOn = DateTime.Now;
            product.Status = 1;
            _dataContext.Products.Add(product);
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
