using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Text;

namespace DataLayer
{
    public class Product
    {

        public int ProductId { get; set; }
        [Required]
        [MinLength(3)]
        public string ProductName { get; set; }
        [Required]
        [MinLength(3)]
        public string ProductNumber { get; set; }
        public DateTime CreateTime { get; set; }
        public bool IsAvailable { get; set; }
    }
}
