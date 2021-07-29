using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace DataLayer
{
    public class ProductRepository : IProductRepository
    {
        public List<Product> products = new List<Product>()
        {
            new Product { ProductId = 1, ProductName = "The Girl on the Train", ProductNumber = "Hawkins, Paula"},
            new Product { ProductId = 2, ProductName = "Rogue Lawyer", ProductNumber = "Grisham, John"}
        };
        public bool AddNewProduct(Product Product)
        {
            throw new NotImplementedException();
        }

        public List<Product> GetAllProduct()
        {
            return products;
        }

 
        public Product GetProduct(int id)
        {
            //return products.FirstOrDefault(x => x.ProductId == id);
            var product = products.FirstOrDefault(x => x.ProductId == id);
            return product;
        }






        public string GetAuthorById(int id)
        {
            throw new NotImplementedException();
        }

        public Product GetProductByAuthorAndYear(string author, int year)
        {
            throw new NotImplementedException();
        }

        public List<Product> GetProductsByAuthor(string name)
        {
            throw new NotImplementedException();
        }

        public bool Remove(int id)
        {
            throw new NotImplementedException();
        }

        public List<Product> UpdateProduct(int id, Product Product)
        {
            throw new NotImplementedException();
        }

        public List<Product> GetAllProducts()
        {
            throw new NotImplementedException();
        }

        Task<ServiceResponse<int>> IProductRepository.AddNewProduct(Product Product)
        {
            throw new NotImplementedException();
        }
    }
}
