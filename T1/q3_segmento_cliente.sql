select C_MKTSEGMENT, count(c_custkey)
from customer
group by c_mktsegment;
