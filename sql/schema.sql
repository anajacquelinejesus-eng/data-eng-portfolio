CREATE TABLE Clientes ( 
id SERIAL PRIMARY KEY, 
nome VARCHAR(100) NOT NULL, 
telefone VARCHAR(30) NOT NULL, 
email VARCHAR(150) UNIQUE NOT NULL, 
cidade VARCHAR(99) NOT NULL, 
estado VARCHAR(50) NOT NULL, 
data_cadastro DATE DEFAULT CURRENT_DATE 
); 

CREATE TABLE Produtos ( 
id SERIAL PRIMARY KEY, 
nome VARCHAR(100) NOT NULL, 
categoria VARCHAR(150) NOT NULL, 
preco NUMERIC(10,2) CHECK (preco > 0 ) 
); 

CREATE TABLE Pedidos ( 
id SERIAL PRIMARY KEY, 
clientes_id INTEGER REFERENCES clientes(id), 
data_pedido DATE DEFAULT CURRENT_DATE, 
status VARCHAR (100) 
); 

CREATE TABLE itens_pedido ( 
id SERIAL PRIMARY KEY, 
pedidos_id INTEGER REFERENCES pedidos(id), 
produto_id INTEGER REFERENCES produtos(id), 
quantidade INTEGER CHECK ( quantidade > 0 ), preco_unitario NUMERIC(10,2) CHECK (preco_unitario > 0 ) 
);