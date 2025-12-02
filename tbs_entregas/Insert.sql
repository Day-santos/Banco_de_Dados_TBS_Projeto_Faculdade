USE tbs_entregas;
-- CLIENTES
INSERT INTO CLIENTE (nome, telefone, whatsapp, cpf_cnpj, tipo_cliente)
VALUES
('Maria Silva', '11987654321', '11987654321', '12345678900', 'Pessoa Física'),
('Drogaria Central', '1133334455', '1199998888', '3216549870001', 'Comércio');

-- ATENDENTES
INSERT INTO ATENDENTE (nome_atendente, telefone, matricula)
VALUES
('Ana Costa', '11922223333', 'AT100'),
('Lucas Mendes', '11955554444', 'AT101');

-- MOTOBOYS
INSERT INTO MOTOBOY (nome, telefone, placa_moto)
VALUES
('Paulo Souza', '11988887777', 'ABC1A23'),
('Rafael Lima', '11977776666', 'XYZ4B56');

-- STATUS
INSERT INTO STATUS_ENTREGA (descricao)
VALUES ('não iniciado'), ('em andamento'), ('concluído');

-- FORMA PAGAMENTO
INSERT INTO FORMA_PAGAMENTO (descricao, recebe_na_origem, recebe_no_destino)
VALUES
('Dinheiro', TRUE, FALSE),
('Pix', FALSE, TRUE);

-- ENDEREÇO
INSERT INTO ENDERECO (logradouro, numero, bairro, cidade, cep, tipo_endereco, id_cliente)
VALUES
('Rua A', '100', 'Centro', 'São Paulo', '01000-000', 'coleta', 1),
('Rua B', '200', 'Jardins', 'São Paulo', '01500-000', 'entrega', 1),
('Av. Principal', '999', 'Centro', 'São Paulo', '02000-000', 'coleta', 2);

-- ENTREGA
INSERT INTO ENTREGA (
  data_solicitacao, hora_solicitacao, descricao_encomenda,
  peso_estimado, valor_entrega,
  id_cliente, id_endereco_coleta, id_endereco_entrega,
  id_motoboy, id_atendente, id_forma_pagamento, id_status
)
VALUES
('2025-01-01', '09:30:00', 'Documentos', 0.5, 25.00,
  1, 1, 2, 1, 1, 2, 1),

('2025-01-02', '14:10:00', 'Medicamentos', 1.2, 35.00,
  2, 3, 2, 2, 2, 1, 2);

