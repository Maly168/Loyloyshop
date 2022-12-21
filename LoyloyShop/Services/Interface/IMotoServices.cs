using LoyloyShop.Models;

namespace LoyloyShop.Services.Interface
{
    public interface IMotoServices
    {
        List<Products> GetMotoInfos();
        void StoreMotoInfo(Products product);
        void UpdateMotoInfo(Products product);
        Products GetMotoInfo(int productId);
    }
}
