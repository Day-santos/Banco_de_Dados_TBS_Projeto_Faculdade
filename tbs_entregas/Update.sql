USE tbs_entregas;
-- Alterar status da entrega
UPDATE ENTREGA SET id_status = 3 WHERE id_entrega = 1;

-- Atualizar telefone do cliente
UPDATE CLIENTE SET telefone = '11900001111' WHERE id_cliente = 1;

-- Atualizar motoboy de uma entrega
UPDATE ENTREGA SET id_motoboy = 2 WHERE id_entrega = 2;
