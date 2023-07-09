CREATE DEFINER=`root`@`localhost` PROCEDURE `cancelled_order`()
BEGIN

insert into cancellations (customerNumber, orderNumber, comments)
select customerNumber, orderNumber, comments from orders
where status = 'cancelled';

END


call cancelled_order();
select * from cancellations;