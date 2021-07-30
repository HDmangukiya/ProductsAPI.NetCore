# ProductsAPI.NetCore
ProjectSetup and Test

# <Product API>

Instruction for Setup Projects:
1.	Run Attached SQL server Script and Create database in MS SQL.
2.	Open VisualStudio WebApi Project. 
3.	Locate to ProductApi/Startup.cs and Update
 public void ConfigureServices(IServiceCollection services)
        {            
            var connection = @"Data Source=YOUR DATABASE LINK";
     } 
4.	Run Project 
5.	Open Postman and Run Following APIs. (Use Following Instructions for run Apis.)
	https://localhost:44397/api/Product 	(Get All Product)
	 https://localhost:44397/api/Product/36	(Get Product byID)
	https://localhost:44397/api/Product/search?name=Colin	(Get Product by Name)
	https://localhost:44397/api/Product/118	(Update Product)
	https://localhost:44397/api/Product/		(Create Product)
	https://localhost:44397/api/Product/118	(Delete Product)

  
  
GET /api/<RESOURCE>/{ID}
  
REQUEST: GET
https://localhost:44397/api/Product
  
RESPONSE
  
[
    {
        "productId": 3,
        "productName": "Car",
        "productNumber": "123",
        "createTime": "2021-07-29T02:54:19.2833333",
        "isAvailable": false
    },
    {
        "productId": 4,
        "productName": "MotorCycle",
        "productNumber": "321",
        "createTime": "2021-07-29T02:55:12.89",
        "isAvailable": false
    },
    {
        "productId": 5,
        "productName": "Truck",
        "productNumber": "456",
        "createTime": "2021-07-29T03:18:05.6103023",
        "isAvailable": true
    },
    {
        "productId": 12,
        "productName": "Uriel",
        "productNumber": "86313319499",
        "createTime": "2020-08-30T10:51:00",
        "isAvailable": true
    }
]



GET /api/<RESOURCE>/{ID}
REQUEST
https://localhost:44397/api/Product/36
RESPONSE
{
    "productId": 36,
    "productName": "Hamilton",
    "productNumber": "38845895099",
    "createTime": "2020-11-29T12:05:59",
    "isAvailable": true
}


  
  

GET /api/<RESOURCE>/{NAME}
  
REQUEST
https://localhost:44397/api/Product/search?name=Colin
  
RESPONSE
  
[
    {
        "productId": 56,
        "productName": "Colin",
        "productNumber": "83496362999",
        "createTime": "2021-03-20T07:03:12",
        "isAvailable": true
    },
    {
        "productId": 99,
        "productName": "Colin",
        "productNumber": "13424961399",
        "createTime": "2022-05-17T00:08:59",
        "isAvailable": false
    },
    {
        "productId": 117,
        "productName": "Colin",
        "productNumber": "13424961399",
        "createTime": "2021-07-30T02:59:15.2833333",
        "isAvailable": false
    }
]


PUT API/{RESOURCE}/{ID}
  
REQUEST : PUT
  
https://localhost:44397/api/Product/118
  
{
    "productName": "HDTest2",
    "productNumber": "3695",
    "isAvailable": true
}

RESPONSE
 {
        "productId": 118,
        "productName": "HDTest2",
        "productNumber": "3695",
        "createTime": "2021-07-30T13:26:01.3968644+12:00",
        "isAvailable": true
  }


  
  
POST API/{RESOURCE}/{ID}
  
REQUEST : POST
  
https://localhost:44397/api/Product/
  

ENTER DATA INTO BODY->RAW-> SELECT JSON TYPE
  
  
{
    "productName": "HDTest1",
    "productNumber": "3695",
    "isAvailable": true
}

RESPONSE
{
    "productId": 118,
    "productName": "HDTest1",
    "productNumber": "3695",
    "createTime": "2021-07-30T13:22:58.7118891+12:00",
    "isAvailable": true
}

  
  
DELETE API/{RESOURCE}/{ID}
  
•	
REQUEST : DELETE
  
https://localhost:44397/api/Product/118
  

RESPONSE
Product Deleted and LIST all products.

