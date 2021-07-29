using System;
using System.Collections.Generic;
using System.Text;

namespace DataLayer
{
    public class ServiceResponse<T>
    {
        public bool Success { get; set; } = true;
        public T Data { get; set; }
        public string Message { get; set; } = "";
    }
}