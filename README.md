# 🛵 TBS Entregas Rápidas — Implementação e Manipulação de Dados SQL (Atividade 04)

## 🎯 Objetivo do Projeto
Este repositório contém a implementação completa do banco de dados do sistema **TBS Soluções em Entregas Rápidas**, uma empresa especializada em entregas via motoboy.  
O projeto envolve a criação do banco de dados, suas tabelas, relacionamentos e manipulação dos dados utilizando SQL (DML).

Este trabalho integra:
- Modelagem lógica do mini-mundo (atividade anterior)
- Execução real de scripts SQL (DDL + DML)
- Uso de ferramentas de desenvolvimento como MySQL Workbench
- Versionamento e organização com GitHub

---

## 🧠 Taxonomias Utilizadas

| Taxonomia de Bloom | Taxonomia de Fink |
|--------------------|-------------------|
| **Aplicar:** executar comandos SQL. | **Aplicação:** uso de MySQL Workbench. |
| **Criar:** desenvolver scripts completos e estruturados. | **Integração:** combinar modelo lógico + SQL. |
|                    | **Aprender a Aprender:** lidar com erros e buscar soluções. |

---

## 🛠️ Tecnologias e Ferramentas

- **SGBD:** MySQL 8+
- **Linguagem:** SQL (DDL + DML)
- **Ferramenta SQL:** MySQL Workbench / DBeaver / HeidiSQL
- **Versionamento:** Git + GitHub

---

## 📂 Estrutura do Repositório

| Arquivo | Conteúdo | Observação |
|--------|----------|------------|
| `schema.sql` | Criação do banco e todas as tabelas (CREATE TABLE + FK). | Executar primeiro. |
| `inserts.sql` | População inicial de dados com INSERT. | Executar após o schema. |
| `queries.sql` | Consultas SELECT com JOIN, filtros, ORDER BY e agregações. | 5 consultas exigidas na atividade. |
| `updates_deletes.sql` | Comandos UPDATE e DELETE com regras condicionais. | Contém 3 updates + 3 deletes. |
| `README.md` | Documentação oficial do projeto. | Você está aqui. |

---

## ⚙️ Como Executar o Projeto

### 1️⃣ Instalar e configurar o ambiente
- Instale **MySQL Server 8+**
- Instale **MySQL Workbench** OU qualquer cliente SQL

### 2️⃣ Criar o banco + tabelas (DDL)
No Workbench:

1. Abra o arquivo **schema.sql**
2. Execute tudo (⚡ Run)

O script:
- Cria o banco `tbs_db`
- Cria as tabelas na ordem correta
- Aplica todas as chaves estrangeiras
- Cria a tabela de documentação `CARDINALIDADE_RELACIONAMENTO`

---

### 3️⃣ Popular o banco (INSERT)
Execute o arquivo:

```sql
inserts.sql
