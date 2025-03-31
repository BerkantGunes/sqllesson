use Northwind

select * from Orders
select * from [Order Details]
select * from Products

-- Oldwo id li musteri hangi üründen hangi tarihte siparis vermistir
select
C.CustomerID as 'Musteri Kodu',
O.OrderDate as 'Siparisi Tarihi',
C.ContactName as 'Musteri Adi',
P.ProductName as 'Urun Adi'
from Customers C
inner join Orders O on C.CustomerID = O.CustomerID
inner join [Order Details] OD on O.OrderID = OD.OrderID
inner join Products P on P.ProductID = OD.ProductID

where C.CustomerID = 'OLDWO'