/* Insert into Author*/
INSERT INTO author VALUES('Rick Riordan', 'June 5, 1964', 'San Antonio', 'Texas', 'United States');

/* Insert into Customer */
INSERT INTO Customer VALUES('aa.leung@hotmail.com', 'Aaron Leung', 'Ottawa', '2222222222', 'Nunya Busness', 'Canada', 'Ontario', TRUE, '12345');

/*Insert Into Publisher*/
INSERT INTO Publisher VALUES('Puffin Books', '111 puffin strt', '11111111111', '99.2');

/*Insert Into Book*/
INSERT INTO Book VALUES('0-7868-5629-7', '2005', '377', '20.00');

/*Insert Into Warehouse*/
INSERT INTO Warehouse VALUES('9999', '6136136666', 'Warehouse Addr');

/*Insert Into CheckOut*/
INSERT INTO CheckOut VALUES('1939', '2020/04/14');

/*Insert Into writtenBy*/
INSERT INTO writtenBy VALUES('Rick Riordan', 'June 5, 1964', '0-7868-5629-7');

/*Insert Into publishBy*/
INSERT INTO publishBy VALUES('Puffin Books', '0-7868-5629-7');

/*Insert Into stocks*/
INSERT INTO stocks VALUES('9999', '0-7868-5629-7', '100');

/*Insert Into contains*/
INSERT INTO contains VALUES('1939','0-7868-5629-7', '200');


/*Insert Into checkOutOrders*/
INSERT INTO checkOutOrders VALUES('1939','aa.leung@hotmail.com');
