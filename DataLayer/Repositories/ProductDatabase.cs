using DataLayer.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataLayer.Repositories
{
    public class ProductDatabase : IProductRepository
    {
        private ProductContext db;
        public ProductDatabase(ProductContext _db)
        {
            this.db = _db;
        }

        //public bool AddNewProduct(Product Product)
        //{
        //    Product.CreateTime = DateTime.Now;
        //    db.Products.Add(Product);
        //    db.SaveChanges();
        //    return true;

        //}

        public async Task<ServiceResponse<int>> AddNewProduct(Product Product)
        {
            ServiceResponse<int> serviceResponse = new ServiceResponse<int>();
            Product.CreateTime = DateTime.Now;
            db.Products.Add(Product);
            db.SaveChanges();
            serviceResponse.Data = Product.ProductId;
            return serviceResponse;
        }



        public List<Product> GetAllProducts()
        {
            return db.Products.ToList();
            //return db.Products.Include(x => x.Cost).ToList();
        }

        public Product GetProduct(int id)
        {
            return db.Products.FirstOrDefault(x => x.ProductId == id);

        }

        public bool Remove(int id)
        {
            var Product = GetProduct(id);
            if (Product == null)
            {
                return false;
            }
            db.Products.Remove(Product);
            db.SaveChanges();
            return true;

        }

        //public List<Product> UpdateProduct(int id, Product Product)
        //{
        //    if (this.Remove(id))
        //    {
        //        this.AddNewProduct(Product); // Use same functions
        //        db.SaveChanges();
        //        return db.Products.ToList();
        //    }
        //    return db.Products.ToList();
        //}

        public List<Product> UpdateProduct(int id, Product Product)
        {
            {

                    var uProduct = db.Products.FirstOrDefault(x => x.ProductId == id);

                    //uProduct.ProductId = Product.ProductId;
                    uProduct.ProductName = Product.ProductName;
                    uProduct.ProductNumber = Product.ProductNumber;
                    uProduct.CreateTime = DateTime.Now;
                    db.SaveChanges();
                    return db.Products.ToList();
                
                //return db.Products.ToList();
            }
        }











        public string GetAuthorById(int id)
        {
            //return db.Products.FirstOrDefault(x => x.ProductNumber == id).ProductNumber;
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


    }
}
