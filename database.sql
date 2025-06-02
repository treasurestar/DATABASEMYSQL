CREATE DATABASE bigodecheiroso;
USE bigodecheiroso;

CREATE TABLE clientes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL
);

CREATE TABLE pedidos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    cliente_id INT,
    produto VARCHAR(100) NOT NULL,
    quantidade INT NOT NULL,
    data_pedido DATE,
    FOREIGN KEY (cliente_id) REFERENCES clientes(id)
);

INSERT INTO clientes (nome, email) VALUES
('Sávio', 'savioreidasquadras@email.com'),
('Enzo Godoy', 'godoylindao@email.com');

INSERT INTO pedidos (cliente_id, produto, quantidade) VALUES
(1, 'Notebook', 1),
(1, 'Mouse', 2),
(2, 'Teclado', 1);

SELECT * FROM clientes;
SELECT * FROM pedidos;