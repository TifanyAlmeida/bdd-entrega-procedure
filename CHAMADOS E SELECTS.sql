USE ecommerce;

SELECT * FROM Pedido;
SELECT * FROM Produto;
SELECT * FROM PedidoItem;

CALL sp_adicionar_pedido_item(1, 1, 3);
CALL sp_calcular_total(1);

CALL sp_adicionar_pedido_item(2, 3, 5);
CALL sp_calcular_total(2);

CALL sp_adicionar_pedido_item(3, 5, 10);
CALL sp_calcular_total(3);
