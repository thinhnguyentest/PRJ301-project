--CREATE DATABASE BookOrders;
--USE BookOrders;

CREATE TABLE Authors (
    AuthorId INT IDENTITY PRIMARY KEY,
    [Name] NVARCHAR(255) NOT NULL,
	BirthDate DATE,
    Bio NVARCHAR(1000)
);

CREATE TABLE Publishers (
    PublisherId INT PRIMARY KEY,
    Name NVARCHAR(255) NOT NULL,
    DateEstablished DATE
);

CREATE TABLE Books (
    BookId INT IDENTITY(1,1) PRIMARY KEY,
    Title NVARCHAR(255) NOT NULL,
	Genre NVARCHAR(255) DEFAULT 'UNKNOW',
    [Description] NVARCHAR(1000),
    Quantity INT,
    Price DECIMAL(10,2),
    AuthorId INT,
    PublisherId INT,
    FOREIGN KEY (AuthorId) REFERENCES Authors(AuthorId),
    FOREIGN KEY (PublisherId) REFERENCES Publishers(PublisherId)
);

CREATE TABLE ImageStoring (
    BookId INT,
    FilePath VARCHAR(100),
    FOREIGN KEY (BookId) REFERENCES Books(BookId)
);

CREATE TABLE Roles (
    RoleId INT PRIMARY KEY,
    [Name] NVARCHAR(255) NOT NULL
);

CREATE TABLE Users (
    UserId INT IDENTITY(1,1)PRIMARY KEY,
    Username VARCHAR(255) NOT NULL,
    [Password] VARCHAR(255) NOT NULL,
    Email VARCHAR(255) NOT NULL,
    Phone VARCHAR(255),
    [Address] VARCHAR(255),
    RoleId INT,
    IsActive BIT,
    FOREIGN KEY (RoleId) REFERENCES Roles(RoleId)
);

CREATE TABLE Discounts (
    DiscountId INT IDENTITY PRIMARY KEY,
    DiscountCode VARCHAR(255) NOT NULL,
    DiscountAmount DECIMAL(10,2) DEFAULT 0,
	DiscountPercent INT DEFAULT 0,
    Quantity INT,
    StartDate DATE DEFAULT GETDATE(),
    EndDate DATE
);

CREATE TABLE Carts (
    CartId INT IDENTITY PRIMARY KEY,
    UserId INT,
    BookId INT,
    Quantity INT,
    DiscountId INT,
    FOREIGN KEY (UserId) REFERENCES Users(UserId),
    FOREIGN KEY (BookId) REFERENCES Books(BookId),
    FOREIGN KEY (DiscountId) REFERENCES Discounts(DiscountId)
);

CREATE TABLE ShippingMethods (
    ShippingMethodId INT IDENTITY PRIMARY KEY,
    [Name] NVARCHAR(255) NOT NULL,
    Cost DECIMAL(10,2)
);

CREATE TABLE Orders (
    OrderId INT IDENTITY PRIMARY KEY,
    OrderDate DATETIME DEFAULT GETDATE(),
    OrderAmount DECIMAL(10,2),
    UserId INT,
    ShippingMethodId INT,
    FOREIGN KEY (UserId) REFERENCES Users(UserId),
    FOREIGN KEY (ShippingMethodId) REFERENCES ShippingMethods(ShippingMethodId)
);

CREATE TABLE OrderDetails (
    OrderDetailId INT IDENTITY PRIMARY KEY,
    OrderId INT,
    BookId INT,
    Quantity INT,
    Price DECIMAL(10,2),
    DiscountId INT,
    FOREIGN KEY (DiscountId) REFERENCES Discounts(DiscountId),
    FOREIGN KEY (OrderId) REFERENCES Orders(OrderId),
    FOREIGN KEY (BookId) REFERENCES Books(BookId)
);

CREATE TABLE Payments (
    PaymentId INT IDENTITY PRIMARY KEY,
    OrderId INT UNIQUE,
    PaymentType VARCHAR(255) NOT NULL,
    PaymentDate DATETIME DEFAULT GETDATE(),
    Amount DECIMAL(10,2),
    FOREIGN KEY (OrderId) REFERENCES Orders(OrderId)
);

INSERT INTO Authors ([Name], BirthDate, Bio)
VALUES
('Author1', '1990-01-01', 'Bio for Author1'),
('Author2', '1985-02-15', 'Bio for Author2'),
('Author3', '1978-07-20', 'Bio for Author3');

INSERT INTO Publishers (PublisherId, Name, DateEstablished)
VALUES
(1, 'Publisher1', '2000-01-01'),
(2, 'Publisher2', '1995-03-10'),
(3, 'Publisher3', '1988-11-05');

INSERT INTO Books (Title, Genre, [Description], Quantity, Price, AuthorId, PublisherId)
VALUES
('Book1', 'Fiction', 'Description for Book1', 50, 29.99, 1, 1),
('Book2', 'Mystery', 'Description for Book2', 30, 19.99, 2, 2),
('Book3', 'Science Fiction', 'Description for Book3', 40, 24.99, 3, 3);

INSERT INTO ImageStoring (BookId, FilePath)
VALUES
(1, '/images/book1.jpg'),
(2, '/images/book2.jpg'),
(3, '/images/book3.jpg');

INSERT INTO Roles (RoleId, [Name])
VALUES
(1, 'Admin'),
(2, 'User');

INSERT INTO Users (Username, [Password], Email, Phone, [Address], RoleId, IsActive)
VALUES
('User1', 'password123', 'user1@example.com', '123-456-7890', 'Address1', 2, 1),
('Admin1', 'adminpass456', 'admin@example.com', '987-654-3210', 'AdminAddress', 1, 1);

INSERT INTO Discounts (DiscountCode, DiscountAmount, DiscountPercent, Quantity, StartDate, EndDate)
VALUES
('DISCOUNT1', 5.00, NULL, 10, '2024-01-01', '2024-02-01'),
('DISCOUNT2', NULL, 15, 20, '2024-02-15', '2024-03-15');

INSERT INTO Carts (UserId, BookId, Quantity, DiscountId)
VALUES
(1, 1, 2, 1),
(2, 3, 1, 2);

INSERT INTO ShippingMethods ([Name], Cost)
VALUES
('Standard Shipping', 5.99),
('Express Shipping', 12.99);

INSERT INTO Orders (UserId, ShippingMethodId)
VALUES
(1, 1),
(2, 2);

INSERT INTO OrderDetails (OrderId, BookId, Quantity, Price, DiscountId)
VALUES
(1, 1, 2, 29.99, 1),
(2, 3, 1, 24.99, 2);

INSERT INTO Payments (OrderId, PaymentType, Amount)
VALUES
(1, 'Credit Card', 65.97),
(2, 'PayPal', 24.99);