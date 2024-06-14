WITH source_orders AS (
    SELECT * FROM {{ source ('raw_retail_orders','orders')}}
),

final AS (
    SELECT * FROM source_orders
)

SELECT * FROM final