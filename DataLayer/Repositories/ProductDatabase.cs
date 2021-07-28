using DataLayer.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace DataLayer.Repositories
{
    public class ProductDatabase : IProductRepository
    {
        private ProductContext db;
        public ProductDatabase(ProductContext _db)
        {
            this.db = _db;
        }

        public bool AddNewProduct(Product Product)
        {
            db.Products.Add(Product);
            db.SaveChanges();
            return true;

        }

        public List<Product> GetAllProducts()
        {
            return db.Products.ToList();
            //return db.Products.Include(x => x.Cost).ToList();
        }

        public string GetAuthorById(int id)
        {
            //return db.Products.FirstOrDefault(x => x.ProductNumber == id).ProductNumber;
            throw new NotImplementedException();
        }

        public Product GetProduct(int id)
        {
            return db.Products.FirstOrDefault(x => x.ProductId == id);

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
            var book = GetProduct(id);
            if (book == null)
            {
                return false;
            }
            db.Products.Remove(book);
            db.SaveChanges();
            return true;

        }

        public List<Product> UpdateProduct(int id, Product Product)
        {
            if (this.Remove(id))
            {
                this.AddNewProduct(Product);
                db.SaveChanges();
                return db.Products.ToList();
            }
            return db.Products.ToList();
        }
    }
}
