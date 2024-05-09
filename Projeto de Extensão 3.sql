CREATE TABLE Pedidos (
    id_pedido INT PRIMARY KEY,
    nome_produto VARCHAR(100),
    valor_unitario DECIMAL(10, 2)
);

CREATE TABLE ItensPedido (
    id_item INT PRIMARY KEY,
    id_pedido INT,
    quantidade INT,
    FOREIGN KEY (id_pedido) REFERENCES Pedidos(id_pedido)
);

INSERT INTO Pedidos (id_pedido, nome_produto, valor_unitario) VALUES
(1, 'MacBook Air', 13000.00),
(2, 'Playstation 5', 4000.00),
(3, 'Galaxy S24', 7000.00),
(4, 'Apple Vision Pro', 22000.00),
(5, 'GeForce RTX 4090', 10000.00);


INSERT INTO ItensPedido (id_item, id_pedido, quantidade) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 1),
(4, 4, 3),
(5, 5, 2);


SELECT P.id_pedido, P.nome_produto, P.valor_unitario, IP.quantidade
FROM Pedidos P
JOIN ItensPedido IP ON P.id_pedido = IP.id_pedido;