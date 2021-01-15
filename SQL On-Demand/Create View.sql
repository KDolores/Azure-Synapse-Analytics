--Código para crear una vista en SQL On-Demand

CREATE VIEW v_FactOrder
as
SELECT
    *
FROM
    OPENROWSET(
        BULK 'https://adlsasakdolores001.dfs.core.windows.net/test/Fact_Order/*',
        FORMAT='PARQUET'
    ) AS [result]
