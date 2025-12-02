USE tbs_entregas;
-- Apagar endereço não utilizado
DELETE FROM ENDERECO WHERE id_endereco = 3;

-- Excluir forma de pagamento não utilizada
DELETE FROM FORMA_PAGAMENTO WHERE id_forma_pagamento = 2;

-- Excluir cliente sem entregas
DELETE FROM CLIENTE WHERE id_cliente = 1;

