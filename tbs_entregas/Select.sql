USE tbs_entregas;
-- 1. Listar todas as entregas com cliente e motoboy
SELECT e.id_entrega, c.nome AS cliente, m.nome AS motoboy, e.valor_entrega
FROM ENTREGA e
JOIN CLIENTE c ON e.id_cliente = c.id_cliente
JOIN MOTOBOY m ON e.id_motoboy = m.id_motoboy;

-- 2. Entregas concluídas
SELECT * FROM ENTREGA WHERE id_status = 3;

-- 3. Clientes ordenados por nome
SELECT * FROM CLIENTE ORDER BY nome ASC;

-- 4. Entregas acima de R$ 30
SELECT * FROM ENTREGA WHERE valor_entrega > 30;

-- 5. Apenas 1 entrega mais recente
SELECT * FROM ENTREGA ORDER BY data_solicitacao DESC LIMIT 1;
