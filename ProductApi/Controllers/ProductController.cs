using System;
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

        // GET: api/Product/
        [HttpGet]
        public ActionResult<IEnumerable<Product>> GetAllProducts()
        {
            try
            {
                //return Products;
                return products.GetAllProducts();
            }
            catch (Exception)
            {
                return StatusCode(StatusCodes.Status500InternalServerError,
                    "Error retrieving data from the database");
            }

        }

        // GET: api/Product/5
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


        // GET: api/Product/5
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


        // POST: api/Product
        [HttpPost]
        public async Task<IActionResult> PostProduct(Product Prod)
        {
            ServiceResponse<int> serviceResponse = await products.AddNewProduct(Prod);
            if (!serviceResponse.Success)
            {
                ModelState.AddModelError("", serviceResponse.Message);
                return BadRequest();
            }
            return Ok(Prod);
        }

        //// DELETE: api/Product/5
        [HttpDelete("{id}")]
        public ActionResult<IEnumerable<Product>> DeleteProduct(int id)
        {

            if (products.Remove(id))
            {
                return products.GetAllProducts();
            }
            return NotFound();
        }

        // PUT: api/Product/5
        //use (int id, [FromForm]Product Product) when using UI
        [HttpPut("{id}")]
        public ActionResult<IEnumerable<Product>> UpdateProduct(int id, Product Product)
        {
            var uProduct = products.UpdateProduct(id, Product);
            if (uProduct != null)
            {
                return uProduct;
            }
            return NotFound();
        }


    }
}