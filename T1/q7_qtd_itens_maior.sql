select n.n_name, sum(l.l_quantity) as total
from nation n, customer c, orders o, lineitem l
where n.n_nationkey = c.c_nationkey and
c.c_custkey = o.o_custkey and
l.l_orderkey = o.o_orderkey
group by n.n_name
having sum(l.l_quantity) > 62000
order by total desc
