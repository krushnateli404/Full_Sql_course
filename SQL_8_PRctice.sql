SELECT*,
(revenue-budget) as revenue_prof,
ROUND((revenue-budget)*100/budget,2)as prof_in_percentage
FROM financials


1) Print profit % for all the movies 
   
   select 
        *, 
    (revenue-budget) as profit, 
    (revenue-budget)*100/budget as profit_pct 
   from financials
   