SELECT count(Email)
FROM Customer
WHERE Email = 'aa.leung@hotmail.com'
AND pwd = '12345';

SELECT isAdmin FROM Customer
FROM Customer
WHERE Email = 'aa.leung@hotmail.com'
AND pwd = '12345';

SELECT ISBN FROM Book
WHERE ISBN ="desiredBook";

SELECT * From Book join publishBy
where authorName ="Puffin Books."