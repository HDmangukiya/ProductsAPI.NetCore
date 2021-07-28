﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using DataLayer;

namespace ProductApi.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class ProductController : ControllerBase
    {
        //private ProductRepository products = new ProductRepository();


        /// <summary>
        /// Dependency Injection, For Product controller works I have added IproductRepository
        /// </summary>
        private IProductRepository products;
        public ProductController(IProductRepository _products)
        {
            this.products = _products;
        }





        [HttpGet]
        public ActionResult<IEnumerable<Product>> GetAllProducts()
        {
            //return books;
            return products.GetAllProducts();
        }

        [HttpGet("{id}")]
        public ActionResult<Product> GetProduct(int id)
        {
            //var Product = Products.FirstOrDefault(x => x.Id == id);
            var product = products.GetProduct(id);

            if (product == null)
            {
                return NotFound();
            }
            return product;
        }



        //[System.Web.Http.HttpGet("{id}")]

        public ActionResult Get(int id)
        {
            //var product = products.FirstOrDefault(x => x.ProductId == id);
            var product = products.GetProduct(id);
            if (product == null)
            {
                return NotFound();
            }
            return Ok(product);
        }

    }
}