select n.n_name, count(o.o_orderkey) as total
from nation n, customer c, orders o
where n.n_nationkey = c.c_nationkey and
c.c_custkey = o.o_custkey
group by n.n_name
order by total desc
