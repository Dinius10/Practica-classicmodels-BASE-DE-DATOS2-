# Practica - classicmodels (Base de Datos II)

/* 1) Inserta dos registros en la tabla "employees", utiliza tus datos y los datos de un amigo */

-- INSERT INTO employees (employeeNumber, lastName, firstName, extension, email, officeCode, reportsTo, jobTitle)
	VALUES 
	('1050', 'Diego', 'Bustillo', 'x600', 'diego@gmail.com','1','1002','Sales Rep'),
	('1030', 'Alvaro', 'Vargas', 'x700', 'alvaro@gmail.com','1','1002','Sales Rep');

/* 2) De la tabla "products" cambia el "buyPrice=99.99" del producto con el "productCode=S18_3232" */

UPDATE `classicmodels`.`products` SET `buyPrice` = '99.99' WHERE (`productCode` = 'S18_3232');

/* 3) Eliminar todos los "payments" cuyo "customerNumber=161" */

-- DELETE FROM `classicmodels`.`payments` WHERE (`customerNumber` = '161') and (`checkNumber` = 'BR352384');
	DELETE FROM `classicmodels`.`payments` WHERE (`customerNumber` = '161') and (`checkNumber` = 'BR478494');
	DELETE FROM `classicmodels`.`payments` WHERE (`customerNumber` = '161') and (`checkNumber` = 'KG644125');
	DELETE FROM `classicmodels`.`payments` WHERE (`customerNumber` = '161') and (`checkNumber` = 'NI908214');
	DELETE FROM `classicmodels`.`payments` WHERE (`customerNumber` = '166') and (`checkNumber` = 'LA318629');

/* 4) Selecciona el "productLine" y el "textDescription" de todos los "productlines" */

-- SELECT productlines.productLine, productlines.textDescription
   FROM productlines;

/* 5) Selecciona el "firstName" como "Nombres" y el "lastName" como "Apellidos" de todos los "employees" */

-- SELECT employees.firstName, employees.lastName
   FROM employees;

/* 6) Selecciona todas las columnas de la tabla "products" cuyo "productLine='Planes'" o cuyo
	"productScale='1:24'" */

-- SELECT products.productLine, products.productScale, products.productCode, products.productName, products.productVendor, products.productDescription, products.quantityInStock, products.quantityInStock, products.buyPrice, products.MSRP
   FROM products
   WHERE (((products.productLine)="Planes") AND ((products.productScale)="1:24"));

/* 7) Selecciona el "customerNumber", "customerName", "phone", "addressLine1" y "city" de todos
	los "customers" cuyo "customerName" empieze con "Classic" */

-- SELECT customers.customerName, customers.phone, customers.addressLine1, customers.city
   FROM customers
   WHERE (((customers.customerName)="Classic"));

/* 8) Selecciona el "productCode", "productName", "productLine", "productVendor" y "productDescription"
	de todos los "products" cuyo "productName" empieze con "19" y cuyo "productLine" este en la
    lista ('Classic Cars', 'Motorcycles', 'Trucks and Buses')*/
    
    -- SELECT products.productCode, products.productName, products.productLine, products.productVendor, products.productDescription
       FROM products
       WHERE (((products.productName)="^19") AND ((products.productLine)="Classic Cars, Motorcycles, Trucks" And (products.productLine)="Buses"));
 
/* 9) Selecciona el "orderNumber", "orderDate", "requiredDate", "shippedDate" y "status"
	de todos los "orders" cuya fecha "orderDate" este entre el "2003-01-01" y el "2003-12-31"
    ordenados por "orderDate" */
    
    -- SELECT orders.orderNumber, orders.orderDate, orders.requiredDate, orders.shippedDate, orders.status
       FROM orders
       WHERE (((orders.orderDate)>"2003-01-01" And (orders.orderDate)<"2003-12-31"));

/* 10) Selecciona el "customerNumber", "customerName", "city", "country" y "creditLimit"
	de todos los "customers" cuyo "customerName" termine con "Inc.", cuyo "country" este en
    la lista ('USA', 'Germany', 'France', 'Spain') y cuyo "creditLimit" este entre 10200 y
    500100 ordenados por customerName de forma descendente */
    
    -- SELECT customers.customerNumber, customers.customerName, customers.city, customers.country, customers.creditLimit
       FROM customers
       WHERE (((customers.customerNumber) Like "*Inc") AND ((customers.country)="USA, Germany, France, Spain") AND ((customers.creditLimit)>10200 And (customers.creditLimit)<500100))
       ORDER BY customers.customerName DESC;
    