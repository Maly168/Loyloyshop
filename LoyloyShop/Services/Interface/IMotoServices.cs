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
        List<Products> GetProductByPlateNumber(string plateNumber);
        List<Products> GetProductByCategory(int categoryId);
        decimal GetTotalPaymentDetails(List<Products> products);
        void StoreDetails(Details details);
        List<Products> GetProductByDate(DateTime dateFrom, DateTime dateTo, int branchId);
        List<Products> GetBookingProduct();

        List<Products> GetSoldOutProduct(string plateNumber);
        string GetCategoryName(int categoryId);

        List<Products> GetProductByBranch(int branchId, int status);
    }
}
