using LoyloyShop.Models;

namespace LoyloyShop.ViewModel
{
    public class ProductViewModel
    {
        public IEnumerable<Products> Products { get; set; }
        public int ProductPerPage { get; set; }
        public int CurrentPage { get; set; }

        public int PageCount()
        {
            return Convert.ToInt32(Math.Ceiling(Products.Count() / (double)ProductPerPage));
        }
        //public int AllProducts()
        //{ 
        //    return Products.Count();
        //}
        public List<Products> PaginatedProducts()
        {
            int start = (CurrentPage - 1) * ProductPerPage;
            return Products
                .Skip(start).Take(ProductPerPage).ToList();

               // .OrderBy(b => b.Id).Skip(start).Take(ProductPerPage).ToList();
        }

        public int? BranchId { get; set; }
        public int? CategoryId { get; set; }
        public int? Status { get; set; }

        public string? DateFrom { get; set; }
        public string? DateTo { get; set; }
    }
}
