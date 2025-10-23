SELECT
    Comanda.codigo AS codigo_comanda,
    Comanda.data,
    Comanda.mesa,
    Comanda.nome_cliente,
    SUM(ItemComanda.quantidade * Cardapio.preco_unitario) AS valor_total
FROM
    Comanda
JOIN
    ItemComanda ON Comanda.codigo = ItemComanda.codigo_comanda
JOIN
    Cardapio ON ItemComanda.codigo_cardapio = Cardapio.codigo
GROUP BY
    Comanda.codigo,
    Comanda.data,
    Comanda.mesa,
    Comanda.nome_cliente
HAVING
    COUNT(DISTINCT ItemComanda.codigo_cardapio) > 1
ORDER BY
    Comanda.data ASC;
