CREATE TABLE Category (
    id INT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    description TEXT
);

CREATE TABLE Attribute (
    id INT PRIMARY KEY,
    category_id INT,
    name VARCHAR(100) NOT NULL,
    datatype VARCHAR(50),
    FOREIGN KEY (category_id) REFERENCES Category(id)
);

CREATE TABLE Product (
    id INT PRIMARY KEY,
    category_id INT,
    name VARCHAR(100) NOT NULL,
    price DECIMAL(10,2),
    FOREIGN KEY (category_id) REFERENCES Category(id)
);

CREATE TABLE ProductAttributeValue (
    id INT PRIMARY KEY,
    product_id INT,
    attribute_id INT,
    value VARCHAR(255),
    FOREIGN KEY (product_id) REFERENCES Product(id),
    FOREIGN KEY (attribute_id) REFERENCES Attribute(id)
);
