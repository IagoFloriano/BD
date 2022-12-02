select count(*)
from(
  select c.c_custkey
  from customer c, orders o
  where c.c_custkey = o.o_custkey
  and o.o_comment like '%special request%'

  except

  select c.c_custkey
  from customer c, orders o
  where c.c_custkey = o.o_custkey
  and o.o_comment like '%unusual package%'
)
