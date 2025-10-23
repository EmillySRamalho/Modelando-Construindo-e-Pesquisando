SELECT
    Comanda.data,
    SUM(ItemComanda.quantidade * Cardapio.preco_unitario) AS faturamento_total
FROM
    Comanda
JOIN
    ItemComanda ON Comanda.codigo = ItemComanda.codigo_comanda
JOIN
    Cardapio ON ItemComanda.codigo_cardapio = Cardapio.codigo
GROUP BY
    Comanda.data
ORDER BY
    Comanda.data ASC;
