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
--    ImageURL VARCHAR(100), -- ��ƷͼƬ·��
--    Memory VARCHAR(10), -- �ڴ��С
--    Storage VARCHAR(10), -- �洢��С
--    Color VARCHAR(10), -- ��ɫ
--    Price DECIMAL(10, 2) NOT NULL,
--    CategoryID INT, -- ��������������
--    FOREIGN KEY (CategoryID) REFERENCES Categories(CategoryID)
--);
--select DB_NAME()
--use Banana
--CREATE TABLE Cart (
--    CartID INT PRIMARY KEY IDENTITY(1,1),
--    UserID INT NOT NULL, -- ����������û���
--    ProductID INT NOT NULL, -- �����������Ʒ��
--    Quantity INT NOT NULL DEFAULT 1,
--    FOREIGN KEY (UserID) REFERENCES Users(UserID),
--    FOREIGN KEY (ProductID) REFERENCES Products(ProductID),
    
--);
--CREATE TABLE Orders (
--    OrderID INT PRIMARY KEY IDENTITY(1,1),
--    UserID INT NOT NULL, -- ����������û���
--    OrderDate DATETIME DEFAULT CURRENT_TIMESTAMP,
--    TotalAmount DECIMAL(10, 2) NOT NULL,
--    FOREIGN KEY (UserID) REFERENCES Users(UserID)
--);
--CREATE TABLE OrderItems (
--    OrderItemID INT PRIMARY KEY IDENTITY(1,1),
--    OrderID INT NOT NULL, -- ���������������
--    ProductID INT NOT NULL, -- �����������Ʒ��
--    Quantity INT NOT NULL,
--    UnitPrice DECIMAL(10, 2) NOT NULL, -- ����ʱ�ĵ���
--    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID),
--    FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
--);