--List all orders with the corresponding customer name and order date.
SELECT c.customerID , o.orderID, o.orderDate
FROM orders as o
INNER JOIN customers as c
ON o.customerID = c.customerID

--Get a list of products with their category names.
SELECT p.productname, p.quantityperunit, p.unitprice, c.categoryname
FROM products as p
INNER JOIN categories as c
ON p.categoryID = c.categoryID

--List all customers and their orders, including customers who have not placed any orders.
SELECT c.customerID,o.orderID, c.companyname, c.contactname, c.contacttitle, o.orderdate
FROM customers as c
LEFT JOIN orders as o
ON c.customerID = o.customerID;

--List all products and orders in a single view, including products that were never ordered and orders that have no valid product
