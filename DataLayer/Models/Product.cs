using System;
using System.Collections.Generic;
using System.Text;

namespace DataLayer
{
    public class Product
    {

        public int ProductId { get; set; }
        public string ProductName { get; set; }
        public string ProductNumber { get; set; }
        public DateTime CreateTime { get; set; }
        public bool IsAvailable { get; set; }
    }
}
