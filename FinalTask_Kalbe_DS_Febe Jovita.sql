-- Rata-rata umur customer jika dilihat dari marital statusnya
select "Marital Status", round(avg(age)) age_avg
from "Case Study - Customer.csv" cscc
group by "Marital Status"

-- Rata-rata umur customer jika dilihat dari gender nya
select  gender, round(avg(age)) age_avg
from "Case Study - Customer.csv" cscc
group by gender

-- Nama store dengan total quantity terbanyak 
select sum(qty) total_qty, cssc.storename  
from "Case Study - Transaction.csv" cstc  
join "Case Study - Store.csv" cssc 
on cstc.storeid = cssc.storeid 
group by cssc.storename
order by 1 desc
limit 1

-- Nama produk terlaris dengan total amount terbanyak
select sum(totalamount) total_amount_sum, cspc."Product Name"
from "Case Study - Transaction.csv" cstc 
join "Case Study - Product.csv" cspc 
on cstc.productid = cspc.productid 
group by 2
order by 1 desc
limit 1