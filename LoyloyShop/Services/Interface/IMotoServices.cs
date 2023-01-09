using LoyloyShop.Models;

namespace LoyloyShop.Services.Interface
{
    public interface IMotoServices
    {
        List<Products> GetMotoInfos();
        void StoreMotoInfo(Products product);
        void UpdateMotoInfo(Products product);
        Products GetMotoInfo(int productId);
        List<Products> GetActiveProduct();
        List<Products> GetSoldOutProduct();
        Products GetProductByPlateNumber(string plateNumber);
        List<Products> GetProductByCategory(int categoryId);
    }
}
