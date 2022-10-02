CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_adicionar_pedido_item`(fk_pedido int, fk_produto int, qtd int)
BEGIN
	DECLARE pedidoitem int;
	INSERT INTO PedidoItem VALUES(id_pedido_item, qtd, (SELECT preco FROM Produto WHERE id_produto = fk_produto), fk_produto, fk_pedido);
    SET pedidoitem = (select last_insert_id());
    UPDATE Produto SET qtd_estoque = qtd_estoque - (SELECT qtd FROM PedidoItem WHERE id_pedido_item = pedidoitem) WHERE id_produto = (SELECT fk_produto FROM PedidoItem WHERE id_pedido_item = pedidoitem);
END