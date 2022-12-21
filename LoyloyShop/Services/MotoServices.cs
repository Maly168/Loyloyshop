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
        public void StoreMotoInfo(Products product)
        {
            product.CreatedOn = DateTime.Now;
            product.ModifiedOn = DateTime.Now;
            
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
