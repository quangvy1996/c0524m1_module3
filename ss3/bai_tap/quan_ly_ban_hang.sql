use quanlybanhang;
insert into orderdetail(oID, pID, odQTY) values
(1,1,3),
(1,3,7),
(1,4,2),
(2,1,1),
(3,1,8),
(2,5,4),
(2,3,3);

insert into orderdetail(oID, pID, odQTY) values(5,2,5);
select oID, oDate, oTotalPrice
from orderr;

select cName, pName
from customer
join
orderr on orderr.cID = customer.cID
join
orderdetail on orderdetail.oID = orderr.oID
join
product on product.pID = orderdetail.pID;

select cName
from customer
join
orderr on customer.cID = orderr.cID
join
orderdetail on orderdetail.oID = orderr.oID
where odQTY is null;

select orderdetail.oID, orderr.oDate,
sum(odQTY * pPrice) as Totalprice
from orderdetail
join
product on product.pID = orderdetail.pID
join
orderr on orderdetail.oID = orderr.oID
group by
orderdetail.oID;
