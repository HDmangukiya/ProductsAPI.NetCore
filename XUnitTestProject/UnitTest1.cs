using DataLayer;
using Moq;
using System;
using Xunit;
using ProductApi.Controllers;

namespace XUnitTestProject
{
    public class UnitTest1
    {
        [Fact]
        public void Test1()
        {
            var mockProductRepo = new Mock<IProductRepository>();
            var productid = 2;
            var productname = "abc";
            mockProductRepo.Setup(x => x.GetProduct(It.IsAny<int>())).Returns(new Product() { ProductId = 2, ProductName = "abc" });
            var controller = new ProductController(mockProductRepo.Object);

            //Act
            var response = controller.GetProduct(productid);

            //Assert
            Assert.Equal(productid, response.Value.ProductId);
            Assert.Equal(productname, response.Value.ProductName);
        }
    }
}
