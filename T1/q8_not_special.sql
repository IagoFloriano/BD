select count(*)
from(select distinct c_custkey
  from customer

  except

  select distinct c.c_custkey
  from customer c inner join orders o
  on c.c_custkey = o.o_custkey
  where o.o_comment like '%special request%'
)
