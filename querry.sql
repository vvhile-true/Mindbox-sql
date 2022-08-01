CREATE TABLE Products (
	Id INT PRIMARY KEY,
	"Name" TEXT
);

CREATE TABLE Categories (
	Id INT PRIMARY KEY,
	"Name" TEXT
);

INSERT INTO Products
VALUES
	(1, 'iPhone'),
	(2, 'Donate'),
	(3, 'Lenovo Thinkpad');

INSERT INTO Categories
VALUES
	(1, 'Phone'),
	(2, 'Food'),
	(3, 'Electronic');

CREATE TABLE ProdCategories (
	ProductId INT FOREIGN KEY REFERENCES Products(Id),
	CategoryId INT FOREIGN KEY REFERENCES Categories(Id),
	PRIMARY KEY (ProductId, CategoryId)
);

INSERT INTO ProdCategories
VALUES
	(1, 1),
	(1, 3),
	(2, 2);

SELECT P."Name", C."Name"
FROM Products P
LEFT JOIN ProdCategories PC
	ON P.Id = PC.ProductId
INNER JOIN Categories C
	ON PC.CategoryId = C.Id;
