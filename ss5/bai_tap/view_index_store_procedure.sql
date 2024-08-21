create database demo3;
use demo3;

create table products(
id int primary key auto_increment,
productCode varchar(50) unique not null,
productname varchar(100) not null,
productPrice double not null,
productAmount int not null,
productDescription varchar(200),
productStatus enum('available', 'out_of_stock') not null
);

INSERT INTO products (productCode, productName, productPrice, productAmount, productDescription, productStatus)
VALUES
('PRD001', 'Laptop Hp', 1200.00, 10, 'High-performance laptop', 'available'),
('PRD002', 'Laptop Dell', 950.50, 15, 'Affordable laptop with good specs', 'available'),
('PRD003', 'Laptop Asus', 650.00, 5, 'Entry-level laptop for basic tasks', 'out_of_stock'),
('PRD004', 'Laptop Gaming', 1300.75, 8, 'Gaming laptop with powerful GPU', 'available'),
('PRD005', 'Laptop Lenovo', 850.00, 20, 'Ultrabook with long battery life', 'available'),
('PRD006', 'Laptop Asus', 1450.00, 7, 'Laptop with 4K display and fast processor', 'available'),
('PRD007', 'Laptop Msi', 750.00, 12, 'Budget laptop with SSD storage', 'out_of_stock'),
('PRD008', 'Laptop Acer', 1100.25, 9, 'Laptop with 16GB RAM and 512GB SSD', 'available'),
('PRD009', 'Laptop Dell', 980.00, 13, 'Convertible laptop with touch screen', 'available'),
('PRD010', 'Laptop Hp', 1600.50, 4, 'Premium laptop with advanced features', 'available');

CREATE UNIQUE INDEX idx_productCode_unique ON Products (productCode);
CREATE INDEX idx_productName_productPrice ON Products (productName, productPrice);
explain select productName from products where productName ='Laptop Dell';

create view product_view as
select productCode, productName, productPrice, productStatus
from products;
CREATE OR REPLACE VIEW AvailableProducts AS
SELECT productCode, productName, productPrice, productDescription
FROM Products
WHERE productStatus = 'available';

delimiter //
create procedure getAllProducts()
begin
select* from products;
end
//delimiter ;
call getAllProducts();

delimiter //
create procedure AddProduct(
    in p_productCode VARCHAR(50),
    in p_productName VARCHAR(100),
    in p_productPrice DOUBLE,
    in p_productAmount INT,
    in p_productDescription VARCHAR(200),
    in p_productStatus ENUM('available', 'out_of_stock')
)
begin
    insert into Products (productCode, productName, productPrice, productAmount, productDescription, productStatus)
    values (p_productCode, p_productName, p_productPrice, p_productAmount, p_productDescription, p_productStatus);
end;

//delimiter ;
call addProduct('PRD011', 'Laptop K', 1350.75, 10, 'High-end laptop with extended warranty', 'available');

delimiter //
create procedure updateProducts(
	in p_id int,
	in p_productCode VARCHAR(50),
    in p_productName VARCHAR(100),
    in p_productPrice DOUBLE,
    in p_productAmount INT,
    in p_productDescription VARCHAR(200),
    in p_productStatus ENUM('available', 'out_of_stock'))
    begin
    update products
    set productCode = p_productCode, productName = p_productName, productPrice = p_productPrice, productAmount = p_productAmount, productDescription= p_productDescription,productStatus = p_productStatus
    where id = p_id;
    end;
    //delimiter ;
CALL updateProducts(11, 'PRD011', 'Laptop K', 1400.00, 12, 'Updated laptop description', 'available');

delimiter //
create procedure deleteProduct(in p_id int)
begin
delete from products where id = p_id;
end;
//delimiter ;
call deleteProduct(1);