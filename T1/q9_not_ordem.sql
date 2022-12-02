select count(*)
from(select distinct c_custkey
  from customer

  except

  select c.c_custkey
  from customer c, orders o
  where c.c_custkey = o.o_custkey
)
