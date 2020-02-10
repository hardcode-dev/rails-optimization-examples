# Задачка: выбрать 10й по цене рабочий iphone c наименьшим id

# Поздапрос
select * from experiments
  where
    cents =
      (select min(cents) from
        (select distinct cents from experiments
          where model like 'Iphone-%' and broken = false
          order by cents desc limit 10
        ) as prices
      )
    and model like 'Iphone-%' and broken = false
    order by id asc
limit 1
;

# CTE
with
  iphones as (
    select * from experiments
    where model like 'Iphone-%' and broken = false
  ),
  iphones_prices AS (
    select distinct cents from iphones
    order by cents desc limit 10
  ),
  tenth_price AS (
    select min(cents) cents from iphones_prices
  )
select * from iphones
  where cents = (select cents from tenth_price)
  order by id asc
  limit 1
;


# CTE + window functions
with
  iphones as (
    select * from experiments where model like 'Iphone-%' and broken = false
  ),
  ranked_iphones as (
    select
      id, model, cents, broken,
      dense_rank() OVER (order by cents desc) as price_rank
    from iphones
  )
select * from ranked_iphones where price_rank = 10
  order by id asc limit 1
;
