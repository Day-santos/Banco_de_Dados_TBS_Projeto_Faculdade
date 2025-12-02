USE tbs_entregas;

-- CLIENTE
CREATE TABLE CLIENTE (
  id_cliente INT AUTO_INCREMENT PRIMARY KEY,
  nome VARCHAR(150) NOT NULL,
  telefone VARCHAR(20),
  whatsapp VARCHAR(20),
  cpf_cnpj VARCHAR(20),
  tipo_cliente VARCHAR(20),
  data_cadastro DATETIME DEFAULT CURRENT_TIMESTAMP
);

-- ATENDENTE
CREATE TABLE ATENDENTE (
  id_atendente INT AUTO_INCREMENT PRIMARY KEY,
  nome_atendente VARCHAR(150) NOT NULL,
  telefone VARCHAR(20),
  matricula VARCHAR(50)
);

-- MOTOBOY
CREATE TABLE MOTOBOY (
  id_motoboy INT AUTO_INCREMENT PRIMARY KEY,
  nome VARCHAR(150) NOT NULL,
  telefone VARCHAR(20),
  placa_moto VARCHAR(20),
  ativo BOOLEAN DEFAULT TRUE
);

-- STATUS_ENTREGA
CREATE TABLE STATUS_ENTREGA (
  id_status INT AUTO_INCREMENT PRIMARY KEY,
  descricao VARCHAR(50)
);

-- FORMA_PAGAMENTO
CREATE TABLE FORMA_PAGAMENTO (
  id_forma_pagamento INT AUTO_INCREMENT PRIMARY KEY,
  descricao VARCHAR(50),
  recebe_na_origem BOOLEAN,
  recebe_no_destino BOOLEAN
);

-- ENDERECO
CREATE TABLE ENDERECO (
  id_endereco INT AUTO_INCREMENT PRIMARY KEY,
  logradouro VARCHAR(200),
  numero VARCHAR(20),
  complemento VARCHAR(100),
  bairro VARCHAR(100),
  cidade VARCHAR(100),
  cep VARCHAR(20),
  referencia VARCHAR(200),
  tipo_endereco VARCHAR(20),
  id_cliente INT,
  FOREIGN KEY (id_cliente) REFERENCES CLIENTE(id_cliente)
);

-- ENTREGA
CREATE TABLE ENTREGA (
  id_entrega INT AUTO_INCREMENT PRIMARY KEY,
  data_solicitacao DATE,
  hora_solicitacao TIME,
  descricao_encomenda VARCHAR(300),
  peso_estimado DECIMAL(10,2),
  valor_entrega DECIMAL(10,2),
  observacao VARCHAR(500),
  data_hora_coleta DATETIME,
  data_hora_entrega DATETIME,
  recebido_por VARCHAR(150),
  id_cliente INT,
  id_endereco_coleta INT,
  id_endereco_entrega INT,
  id_motoboy INT,
  id_atendente INT,
  id_forma_pagamento INT,
  id_status INT,
  FOREIGN KEY (id_cliente) REFERENCES CLIENTE(id_cliente),
  FOREIGN KEY (id_endereco_coleta) REFERENCES ENDERECO(id_endereco),
  FOREIGN KEY (id_endereco_entrega) REFERENCES ENDERECO(id_endereco),
  FOREIGN KEY (id_motoboy) REFERENCES MOTOBOY(id_motoboy),
  FOREIGN KEY (id_atendente) REFERENCES ATENDENTE(id_atendente),
  FOREIGN KEY (id_forma_pagamento) REFERENCES FORMA_PAGAMENTO(id_forma_pagamento),
  FOREIGN KEY (id_status) REFERENCES STATUS_ENTREGA(id_status)
);
