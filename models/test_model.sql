WITH stg_customers AS (

  SELECT * 
  
  FROM {{ source('spark_catalog.kunalg', 'stg_customers') }}

),

Reformat_1 AS (

  SELECT 
    customer_id AS customer_id,
    first_name AS first_name,
    last_name AS last_name,
    concat(first_name, last_name) AS full_name
  
  FROM stg_customers

)

SELECT *

FROM Reformat_1
