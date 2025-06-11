/*
CREATE TABLE Users (
    UserId INT PRIMARY KEY IDENTITY(1,1),
    UserName VARCHAR(10)NOT NULL UNIQUE,
    UserPassword VARCHAR(16) NOT NULL,
    PhoneNumber VARCHAR(20)
);
*/
--CREATE TABLE Admins (
--    UserId INT PRIMARY KEY IDENTITY(1,1),
--    UserName VARCHAR(10)NOT NULL UNIQUE,
--    UserPassword VARCHAR(16) NOT NULL,
--    PhoneNumber VARCHAR(20)
--);
--CREATE TABLE Categories (
--    CategoryID INT PRIMARY KEY IDENTITY(1,1),
--    CategoryName VARCHAR(20) NOT NULL UNIQUE
--);
--CREATE TABLE Products (
--    ProductID INT PRIMARY KEY IDENTITY(1,1),
--    ProductName VARCHAR(20) NOT NULL,
--    ImageURL VARCHAR(100), -- 商品图片路径
--    Memory VARCHAR(10), -- 内存大小
--    Storage VARCHAR(10), -- 存储大小
--    Color VARCHAR(10), -- 颜色
--    Price DECIMAL(10, 2) NOT NULL,
--    CategoryID INT, -- 外键关联到分类表
--    FOREIGN KEY (CategoryID) REFERENCES Categories(CategoryID)
--);
--select DB_NAME()
--use Banana
--CREATE TABLE Cart (
--    CartID INT PRIMARY KEY IDENTITY(1,1),
--    UserID INT NOT NULL, -- 外键关联到用户表
--    ProductID INT NOT NULL, -- 外键关联到商品表
--    Quantity INT NOT NULL DEFAULT 1,
--    FOREIGN KEY (UserID) REFERENCES Users(UserID),
--    FOREIGN KEY (ProductID) REFERENCES Products(ProductID),
    
--);
--CREATE TABLE Orders (
--    OrderID INT PRIMARY KEY IDENTITY(1,1),
--    UserID INT NOT NULL, -- 外键关联到用户表
--    OrderDate DATETIME DEFAULT CURRENT_TIMESTAMP,
--    TotalAmount DECIMAL(10, 2) NOT NULL,
--    FOREIGN KEY (UserID) REFERENCES Users(UserID)
--);
--CREATE TABLE OrderItems (
--    OrderItemID INT PRIMARY KEY IDENTITY(1,1),
--    OrderID INT NOT NULL, -- 外键关联到订单表
--    ProductID INT NOT NULL, -- 外键关联到商品表
--    Quantity INT NOT NULL,
--    UnitPrice DECIMAL(10, 2) NOT NULL, -- 购买时的单价
--    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID),
--    FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
--);