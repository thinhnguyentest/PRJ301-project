CREATE DATABASE BookOrders;
USE BookOrders;

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

CREATE TABLE Users (
    UserId INT IDENTITY(1,1) PRIMARY KEY,
    Username VARCHAR(255) NOT NULL UNIQUE,
    [Password] VARCHAR(255) NOT NULL,
	[Name] NVARCHAR(255),
    Email VARCHAR(255) NOT NULL UNIQUE,
    Phone VARCHAR(255) UNIQUE,
    [Address] VARCHAR(255),
    [Role] VARCHAR(50),
    IsActive BIT,
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



-- Thêm dữ liệu cho Authors
INSERT INTO Authors ([Name], BirthDate, Bio)
VALUES 
    (N'Paulo Coelho', '1939-01-01', N'Paulo Coelho sinh năm 1947 tại Rio de Janeiro (Brazil) trong một gia đình trung lưu. Năm 1970, ông bỏ dở việc học để lên đường du lịch qua nhiều nơi thuộc châu Mỹ, châu u và Bắc Phi trước khi trở về Brazil và kết hôn với vợ, họa sĩ Christina Oiticica. Sau chuyến hành hương năm 1986, Coelho quyết định từ bỏ sự nghiệp sáng tác lời ca khúc đang rất thành công để quay lại theo đuổi giấc mơ văn chương thời trẻ. Nhà giả kim (1988) đã đưa ông trở thành tên tuổi được biết đến trên toàn thế giới.'),
    (N'FRANCES HODGSON BURNETT', NULL, N'Author of The Little Princess'),
    (N'HARUKI MURAKAMI', NULL, N'Japanese author of Norwegian Wood'),
    (N'HIGASHINO KEIGO', NULL, N'Japanese author known for The Devotion of Suspect X'),
    (N'JOSÉ MAURO DE VASCONCELOS', NULL, N'Brazilian author of My Sweet Orange Tree'),
    (N'NIGEL WARBURTON', NULL, N'Author of A Little History of Philosophy'),
    (N'DIANA WYNNE JONES', NULL, N'British author of fantasy novels including Howl''s Moving Castle'),
    (N'JANE AUSTEN', NULL, N'English novelist known for Pride and Prejudice'),
    (N'KAWABATA YASUNARI', NULL, N'Đẹp và buồn'),
	(N'VŨ BẰNG', NULL, N'Đang cập nhật'),
    (N'ĐĂNG HOÀNG GIANG', NULL, N'Đang cập nhật'),
    (N'NEIL GAIMAN', NULL, N'Đang cập nhật'),
    (N'LƯU TỪ HÂN', NULL, N'Đang cập nhật'),
    (N'DALE CARNEGIE', NULL, N'Đang cập nhật'),
    (N'CARL SAGAN', NULL, N'Đang cập nhật'),
    (N'KHALED HOSSEINI', NULL, N'Đang cập nhật'),
    (N'CARL GUSTAV JUNG', NULL, N'Đang cập nhật'),
    (N'SIGMUND FREUD', NULL, N'Đang cập nhật');

-- Thêm dữ liệu cho Publishers
INSERT INTO Publishers (PublisherId, Name, DateEstablished)
VALUES 
    (1, N'AlphaBook', '2023-01-01'),
    (2, N'NXB Kim Đồng', '2022-05-10'),
    (3, N'NXB Trẻ', '2024-12-15'),
    (4, N'Hội Nhà Văn', '2020-03-10'),
	(5, N'Hà Nội', '2022-03-10'),
	(6, N'Phụ Nữ', '2021-03-10'),
	(7, N'Thế Giới', '2020-03-10');

-- Thêm dữ liệu cho Books
INSERT INTO Books (Title, Genre, [Description], Quantity, Price, AuthorId, PublisherId)
VALUES 
    (N'Nhà Giả Kim', 'Mystery', N'Tất cả những trải nghiệm trong chuyến phiêu du theo đuổi vận mệnh của mình đã giúp Santiago thấu hiểu được ý nghĩa sâu xa nhất của hạnh phúc, hòa hợp với vũ trụ và con người. ', 30, 67000, 1, 4),
    (N'Hippie – Những kẻ lãng du', 'Mystery', N'Hippie – Những kẻ lãng du đưa ta đến với những con người hoàn toàn xa lạ, với những mục đích khác nhau nhưng cùng hướng đến vùng đất xa xôi Nepal trên con đường mòn hippie huyền thoại.', 30, 127000, 1, 4),
    (N'ALEPH', 'Mystery', N'Thông tin chi tiết sản phẩm đang được cập nhật', 30, 84000, 1, 4),
    (N'Công chúa nhỏ', 'Fiction', N'Description for Công chúa nhỏ', 100, 45000, 2, 4),
    (N'Phía sau nghi can X', 'Mystery', N'Description for Phía sau nghi can X', 80, 110000, 4, 2),
    (N'Những chuyện lạ ở Tokyo', 'Fiction', N'Description for Những chuyện lạ ở Tokyo', 120, 78000, 3, 3),
    (N'Điều kì diệu của tiệm tạp hóa Namiya', 'Fantasy', N'Description for Điều kì diệu của tiệm tạp hóa Namiya', 90, 97000, 4, 4),
    (N'Cây cam ngọt của tôi', 'Fiction', N'Description for Cây cam ngọt của tôi', 110, 47000, 5, 3),
    (N'Kafka bên bờ biển', 'Fiction', N'Description for Kafka bên bờ biển', 70, 85000, 3, 1),
    (N'Rừng Nauy', 'Non-Fiction', N'Description for Rừng Nauy', 85, 132000, 3, 3),
    (N'Lược sử Triết học', 'Non-Fiction', N'Description for Lược sử Triết học', 95, 155000, 6, 1),
    (N'Kiêu hãnh và định kiến', 'Fiction', N'Description for Kiêu hãnh và định kiến', 75, 79000, 8, 2),
    (N'Lâu đài trên mây', 'Fantasy', N'Description for Lâu đài trên mây', 100, 91000, 7, 3),
    (N'Đẹp và buồn', 'Fiction', N'Description for Đẹp và buồn', 110, 112000, 9, 1),
	(N'MIẾNG NGON HÀ NỘI', 'Cooking', N'Miếng Ngon Hà Nội là một cuốn sách về ẩm thực Việt Nam.', 50, 45000, 10, 5),
    (N'ĐẠI DƯƠNG ĐEN', 'Adventure', N'Cuộc phiêu lưu đầy thách thức giữa đại dương bao la và không gian huyền bí.', 30, 65000, 11, 4),
    (N'BẠCH DẠ HÀNH', 'Fiction', N'Truyện về tình yêu, mạo hiểm, và sức mạnh của tình bạn trong thời kỳ chiến tranh.', 40, 55000, 4, 6),
    (N'ĐIỀM LÀNH', 'Mystery', N'Cuộc truy lùng tội phạm và giải mã bí ẩn xung quanh những sự kiện kỳ lạ.', 60, 78000, 12, 7),
    (N'TAM THỂ 2 - KHU RỪNG ĐEN TỐI', 'Fantasy', N'Bắt đầu từ nơi cuốn sách đầu tiên kết thúc, hành trình tiếp tục vào khu rừng đen tối.', 25, 110000, 13, 7),
    (N'TAM THỂ', 'Fantasy', N'Trận chiến giữa các phe phái để bảo vệ hay chiếm lấy sức mạnh Tam Thể.', 35, 100000, 13, 1),
    (N'TAM THỂ 3 - TỬ THẦN SỐNG MÃI', 'Fantasy', N'Phần kết của loạt truyện Tam Thể, với sự hấp dẫn và bất ngờ đầy kịch tính.', 20, 115000, 13, 2),
    (N'ĐẮC NHÂN TÂM', 'Self-Help', N'Sách nổi tiếng về cách tương tác xã hội và phát triển bản thân.', 80, 30000, 14, 7),
    (N'VŨ TRỤ', 'Science', N'Khám phá vũ trụ qua góc nhìn khoa học và phiêu lưu.', 45, 88000, 15, 7),
    (N'NGƯỜI ĐUA DIỀU', 'Biography', N'Câu chuyện có thật về sự nghiệp và cuộc đời của một người đua diều nổi tiếng.', 55, 52000, 16, 7),
    (N'CON NGƯỜI VÀ BIỂU TƯỢNG', 'Philosophy', N'Nghiên cứu về ý thức con người và tầm ảnh hưởng của biểu tượng trong xã hội.', 40, 42000, 17, 7),
    (N'NGHIÊN CỨU PHÂN TÂM HỌC', 'Psychology', N'Cuộc thám hiểm sâu sắc vào lĩnh vực phân tâm học và tâm lý học hành vi.', 30, 48000, 18, 7);


INSERT INTO ImageStoring (BookId, FilePath)
VALUES
(1, 'nhagiakim.jpg'),
(2, 'kelangdu.jpg'),
(3, 'aleph.jpg'),
(4, 'congchuanho.jpg'),
(5, 'nghicanx.jpg'),
(6, 'nhungchuyenlaotokyo.jpg'),
(8, 'caycamngotcuatoi.jpg'),
(7, 'namiya.jpg'),
(9, 'kafkabenbobien.jpg'),
(10, 'rungnauy.jpg'),
(11, 'luocsutriethoc.jpg'),
(12, 'kieuhanhvadinhkien.jpg'),
(13, 'laudaitrenmay.jpg'),
(14, 'depvabuon.jpg'),
(15, 'miengngonhanoi.jpg'),
(16, 'daiduongden.jpg'),
(17, 'bachdahanh.jpg'),
(18, 'diemlanh.jpg'),
(19, 'tamthe2.jpg'),
(20, 'tamthe1.jpg'),
(21, 'tamthe3.jpg'),
(22, 'dacnhantam.jpg'),
(23, 'vutru.jpg'),
(24, 'nguoiduadieu.jpg'),
(25, 'connguoivabieutuong.jpg'),
(26, 'nghiencuuphantamhoc.jpg');


INSERT INTO Users (Username, [Password], [Name], Email, Phone, [Address], [Role], IsActive)
VALUES
('User1', 'password123', 'User name', 'user1@example.com', '123-456-7890', 'Address1', 'user', 1),
('Admin1', 'adminpass456', 'Admin name', 'admin@example.com', '987-654-3210', 'AdminAddress', 'admin', 1);

INSERT INTO Discounts (DiscountCode, DiscountAmount, DiscountPercent, Quantity, StartDate, EndDate)
VALUES
('DISCOUNT1', 5.00, NULL, 10, '2024-01-01', '2024-02-01'),
('DISCOUNT2', NULL, 15, 20, '2024-02-15', '2024-03-15');

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

select * from Users

