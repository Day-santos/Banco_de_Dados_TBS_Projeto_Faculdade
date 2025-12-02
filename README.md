🚚 TBS Soluções em Entregas Rápidas — Implementação e Manipulação de Dados SQL (Atividade 04)
🎯 Objetivo do Projeto

Este repositório contém a implementação completa do banco de dados relacional da TBS Soluções em Entregas Rápidas, incluindo criação de tabelas, inserção de dados, consultas SQL, atualizações e exclusões.

O objetivo é integrar o modelo lógico desenvolvido anteriormente com a prática de manipulação de dados utilizando SQL (DML), aplicando regras de integridade, normalização e versionamento de código com Git/GitHub.

🧠 Taxonomias
Taxonomia de Bloom

Aplicar: executar comandos SQL reais no banco.

Criar: desenvolver scripts completos, funcionais e organizados.

Taxonomia de Fink

Aplicação: uso de ferramentas como MySQL Workbench, DBeaver ou outro cliente SQL.

Integração: combinar DER, modelo lógico, integridade referencial e DML.

Aprender a Aprender: interpretar erros SQL e buscar soluções.

🛠️ Tecnologias Utilizadas

SGBD: MySQL 8+ ou MariaDB

Linguagem: SQL (DDL + DML)

Ferramentas: MySQL Workbench / DBeaver

Versionamento: Git e GitHub

📂 Estrutura do Repositório

Este repositório contém todos os arquivos SQL necessários para criar e manipular o banco tbs_db:

Arquivo	Conteúdo	Observação
schema.sql	Criação completa das tabelas, chaves primárias e estrangeiras	Executar primeiro
inserts.sql	População das tabelas principais (CLIENTE, ENTREGA, ENDEREÇO etc.)	Executar após o schema
queries.sql	SELECTs com JOIN, filtros e ordenação	2 a 5 consultas solicitadas
updates_deletes.sql	Pelo menos 3 UPDATEs e 3 DELETEs	Respeita integridade referencial
README.md	Documentação completa	Você está aqui 😄
⚙️ Como Executar o Projeto
1️⃣ Configure o ambiente

Instale o MySQL + MySQL Workbench
ou use Docker:

docker run --name mysql-tbs -e MYSQL_ROOT_PASSWORD=root -p 3306:3306 -d mysql:8

2️⃣ Crie o banco de dados

Via terminal ou Workbench:

CREATE DATABASE tbs_db;
USE tbs_db;


Mas você também pode apenas rodar:

mysql -u root -p < schema.sql

3️⃣ Crie as tabelas (DDL)

Execute no Workbench:

✔ schema.sql

Isso irá criar:

CLIENTE

ENDERECO

ATENDENTE

MOTOBOY

STATUS_ENTREGA

FORMA_PAGAMENTO

ENTREGA

CARDINALIDADE_RELACIONAMENTO

4️⃣ Popule as tabelas

Execute:

✔ inserts.sql

Inclui:

clientes reais

atendentes

motoboys

endereços

status (não_iniciado, Em andamento, concluído)

formas de pagamento

entregas com dados reais

5️⃣ Rode as consultas

Execute:

✔ queries.sql

Inclui:

Entregas com cliente + motoboy + status

Entregas pendentes

Total por motoboy

Últimas entregas concluídas

Total por forma de pagamento

6️⃣ Atualize e delete dados

Execute:

✔ updates_deletes.sql

Inclui:

Atualização de status

Atribuição de motoboy

Correção de valores

Remoção de endereços e motoboys inativos

Deleção segura com FK

🔍 Exemplos do Projeto (Trechos do SQL)
🟦 Consultas (SELECT)
SELECT e.id_entrega, c.nome AS cliente, m.nome AS motoboy, s.descricao AS status
FROM ENTREGA e
JOIN CLIENTE c ON e.id_cliente = c.id_cliente
LEFT JOIN MOTOBOY m ON e.id_motoboy = m.id_motoboy
LEFT JOIN STATUS_ENTREGA s ON e.id_status = s.id_status
ORDER BY e.data_solicitacao DESC;

🟧 Atualizações (UPDATE)
UPDATE ENTREGA e
JOIN STATUS_ENTREGA s ON s.descricao = 'Em andamento'
SET e.id_status = s.id_status
WHERE id_entrega = 1;

🟥 Exclusões (DELETE)
DELETE FROM ENDERECO WHERE id_endereco = 99;

📌 Observações Finais

O projeto foi totalmente baseado no modelo lógico e DER da Atividade 3.

Todos os scripts foram testados em ambiente MySQL 8.

O repositório pode ser importado em qualquer SGBD compatível com SQL ANSI.
