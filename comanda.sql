SELECT 
    Comanda.codigo AS codigo_comanda,
    Comanda.data,
    Comanda.mesa,
    Comanda.nome_cliente,
    ItemComanda.codigo_comanda,
    Cardapio.nome AS nome_cafe,
    Cardapio.descricao,
    ItemComanda.quantidade,
    Cardapio.preco_unitario,
    (ItemComanda.quantidade * Cardapio.preco_unitario) AS preco_total
FROM 
    Comanda
JOIN 
    ItemComanda ON Comanda.codigo = ItemComanda.codigo_comanda
JOIN 
    Cardapio ON ItemComanda.codigo_cardapio = Cardapio.codigo
ORDER BY 
    Comanda.data ASC,
    Comanda.codigo ASC,
    Cardapio.nome ASC;
