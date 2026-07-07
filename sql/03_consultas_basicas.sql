SELECT *
FROM clientes;

SELECT *
FROM produtos;

SELECT *
FROM pedidos;

SELECT *
FROM itens_pedido;

-- Quantidade total de clientes
SELECT COUNT(*) AS total_clientes
FROM clientes;

-- Quantidade total de produtos
SELECT COUNT(*) AS total_produtos
FROM produtos;

-- Quantidade total de pedidos
SELECT COUNT(*) AS total_pedidos
FROM pedidos;

-- Quantidade de pedidos por status
SELECT 
    status,
    COUNT(*) AS total_pedidos
FROM pedidos
GROUP BY status
ORDER BY total_pedidos DESC;

-- Quantidade de produtos por categoria
SELECT 
    categoria,
    COUNT(*) AS total_produtos
FROM produtos
GROUP BY categoria
ORDER BY total_produtos DESC;

-- Valor total de cada item vendido
SELECT 
    id,
    pedidos_id,
    produto_id,
    quantidade,
    preco_unitario,
    quantidade * preco_unitario AS valor_total_item
FROM itens_pedido;

-- Valor total por pedido
SELECT 
    pedidos_id,
    SUM(quantidade * preco_unitario) AS valor_total_pedido
FROM itens_pedido
GROUP BY pedidos_id
ORDER BY valor_total_pedido DESC;