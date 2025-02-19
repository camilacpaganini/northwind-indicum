WITH 
    fonte_categorias AS (
        SELECT *
        FROM {{ source('erp', 'category') }} 
    ),
    renomeando AS (
        SELECT 
            CAST(id AS INT) AS pk_categoria,
            CAST(categoryname AS STRING) AS nome_categoria,
            CAST(description AS STRING) AS descricao_categoria
        FROM fonte_categorias
    )
SELECT * 
FROM renomeando

