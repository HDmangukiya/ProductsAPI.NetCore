using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;

namespace DataLayer
{
    public interface IProductRepository
    {
        List<Product> GetAllProducts();
        Product GetProduct(int id);

        Task<ServiceResponse<int>> AddNewProduct(Product Product);
        //bool AddNewProduct(Product Product);
        bool Remove(int id);
        List<Product> UpdateProduct(int id, Product Product);

        List<Product> GetProductsByAuthor(string name);

        string GetAuthorById(int id);

        Product GetProductByAuthorAndYear(string author, int year);

        List<Product> GetByProductName(string nameSubstring);

    }
}
