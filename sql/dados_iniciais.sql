INSERT INTO clientes (Nome, telefone,  email, Cidade, Estado, data_cadastro)
VALUES
('Mariana Costa', '(79) 99821-4567', 'mariana.costa@email.com', 'Aracaju', 'SE', '2026-07-06'),
('João Pedro Lima', '(71) 98745-2231', 'joao.lima@email.com', 'Salvador', 'BA', '2026-07-05'),
('Camila Andrade', '(81) 99654-7788', 'camila.andrade@email.com', 'Recife', 'PE', '2026-07-04'),
('Rafael Souza', '(85) 99123-4455', 'rafael.souza@email.com', 'Fortaleza', 'CE', '2026-07-03'),
('Beatriz Santos', '(11) 98456-9012', 'beatriz.santos@email.com', 'São Paulo', 'SP', '2026-07-02'),
('Lucas Oliveira', '(21) 99789-3344', 'lucas.oliveira@email.com', 'Rio de Janeiro', 'RJ', '2026-07-01'),
('Ana Clara Mendes', '(31) 99234-8765', 'ana.mendes@email.com', 'Belo Horizonte', 'MG', '2026-06-30'),
('Felipe Rocha', '(62) 99876-1122', 'felipe.rocha@email.com', 'Goiânia', 'GO', '2026-06-29'),
('Larissa Almeida', '(41) 98765-4433', 'larissa.almeida@email.com', 'Curitiba', 'PR', '2026-06-28'),
('Gustavo Martins', '(51) 99111-2233', 'gustavo.martins@email.com', 'Porto Alegre', 'RS', '2026-06-27');

INSERT INTO produtos (nome, categoria, preco) 
VALUES
('Fone Bluetooth AirSound', 'Eletrônicos', 149.90),
('Mouse Sem Fio ClickPro', 'Eletrônicos', 89.90),
('Teclado Mecânico Gamer', 'Eletrônicos', 249.90),
('Camiseta Básica Branca', 'Roupas', 49.90),
('Calça Jeans Mom Fit', 'Roupas', 139.90),
('Tênis Casual Urbano', 'Roupas', 199.90),
('Luminária de Mesa LED', 'Casa', 79.90),
('Jogo de Panelas Antiaderente', 'Casa', 299.90),
('Almofada Decorativa Bege', 'Casa', 39.90),
('Livro SQL Para Iniciantes', 'Livros', 59.90),
('Livro Python na Prática', 'Livros', 74.90),
('Livro Engenharia de Dados Essencial', 'Livros', 89.90),
('Garrafa Térmica Inox', 'Casa', 69.90),
('Smartwatch FitLife', 'Eletrônicos', 329.90),
('Blazer Feminino Marrom', 'Roupas', 189.90);

INSERT INTO pedidos (clientes_id, data_pedido, status) 
VALUES
(1, '2026-01-10', 'entregue'),
(1, '2026-03-15', 'enviado'),
(1, '2026-06-02', 'pendente'),
(2, '2026-01-22', 'entregue'),
(2, '2026-04-08', 'cancelado'),
(3, '2026-02-05', 'entregue'),
(4, '2026-02-18', 'enviado'),
(4, '2026-05-12', 'entregue'),
(4, '2026-06-20', 'pendente'),
(5, '2026-03-03', 'cancelado'),
(5, '2026-06-11', 'entregue'),
(6, '2026-04-14', 'pendente'),
(7, '2026-01-30', 'entregue'),
(7, '2026-05-01', 'enviado'),
(7, '2026-06-25', 'cancelado'),
(8, '2026-02-27', 'entregue'),
(9, '2026-03-19', 'enviado'),
(9, '2026-05-28', 'entregue');

INSERT INTO itens_pedido (pedidos_id, produto_id, quantidade, preco_unitario) 
VALUES
-- Pedido 1
(1, 10, 1, 59.90),
(1, 11, 1, 74.90),
-- Pedido 2
(2, 1, 1, 149.90),
(2, 2, 1, 89.90),
-- Pedido 3
(3, 4, 2, 49.90),
-- Pedido 4
(4, 8, 1, 299.90),
(4, 9, 2, 39.90),
-- Pedido 5
(5, 14, 1, 299.90), -- desconto no smartwatch
-- Pedido 6
(6, 12, 1, 89.90),
-- Pedido 7
(7, 6, 1, 199.90),
(7, 4, 1, 49.90),
-- Pedido 8
(8, 7, 2, 79.90),
(8, 13, 1, 69.90),
-- Pedido 9
(9, 3, 1, 229.90), -- desconto no teclado
(9, 2, 1, 89.90),
(9, 1, 1, 149.90),
-- Pedido 10
(10, 15, 1, 189.90),
-- Pedido 11
(11, 5, 1, 139.90),
(11, 4, 3, 44.90), -- promoção na camiseta
-- Pedido 12
(12, 13, 2, 69.90),
-- Pedido 13
(13, 10, 1, 59.90),
(13, 11, 1, 74.90),
(13, 12, 1, 89.90),
-- Pedido 14
(14, 8, 1, 299.90),
-- Pedido 15
(15, 14, 1, 329.90),
(15, 13, 1, 59.90), -- desconto na garrafa
-- Pedido 16
(16, 9, 4, 39.90),
(16, 7, 1, 79.90),
-- Pedido 17
(17, 6, 1, 179.90), -- desconto no tênis
(17, 15, 1, 189.90),
-- Pedido 18
(18, 3, 1, 249.90),
(18, 10, 2, 59.90);