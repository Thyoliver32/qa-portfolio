# 🗄️ QA Portfolio — Validações SQL para E-commerce

Este arquivo contém consultas SQL utilizadas para validação de dados em um sistema de e-commerce, com foco em testes de pedidos, duplicidade, estoque e confirmação de e-mail.

> **Objetivo:** demonstrar conhecimentos em SQL aplicados à área de Quality Assurance (QA), auxiliando na identificação e validação de possíveis inconsistências no banco de dados.

---

## 1. 🔎 Verificar últimos pedidos de um usuário

### Objetivo

Validar os pedidos mais recentes realizados por um determinado usuário.

```sql
SELECT 
    id,
    user_id,
    status,
    total,
    created_at
FROM orders
WHERE user_id = 'standard_user'
ORDER BY created_at DESC
LIMIT 5;
```

### Validação esperada

* Retornar os últimos 5 pedidos do usuário.
* Os pedidos devem estar ordenados do mais recente para o mais antigo.
* O `status` e o `total` devem corresponder às informações apresentadas na aplicação.

---

## 2. 🚨 Buscar pedidos duplicados

### Objetivo

Identificar possíveis pedidos duplicados para o mesmo usuário e horário de criação.

```sql
SELECT 
    user_id,
    created_at,
    COUNT(*) AS qtd
FROM orders
GROUP BY user_id, created_at
HAVING COUNT(*) > 1;
```

### Validação esperada

A consulta não deve retornar registros.

Caso sejam encontrados registros, é necessário investigar se houve criação duplicada de pedidos.

**Possível impacto:**
Duplicidade de pedidos pode resultar em cobrança indevida, processamento duplicado ou problemas de estoque.

---

## 3. 📦 Validar estoque após a compra

### Objetivo

Verificar a quantidade disponível em estoque após a realização de um pedido.

```sql
SELECT 
    p.name,
    p.stock,
    oi.quantity
FROM products p
JOIN order_items oi 
    ON p.id = oi.product_id
WHERE oi.order_id = 123;
```

### Validação esperada

A quantidade disponível no estoque deve ser compatível com a quantidade de produtos adquiridos.

### Exemplo de validação

Se o produto possuía:

```text
Estoque antes da compra: 10
Quantidade comprada:      2
Estoque esperado:         8
```

O resultado esperado após a compra é:

```text
Estoque atual: 8
```

> Para uma validação completa, é recomendável comparar o estoque antes e depois da transação ou consultar um histórico de movimentações de estoque.

---

## 4. 📧 Listar usuários sem confirmação de e-mail

### Objetivo

Identificar usuários que não possuem registro de confirmação de e-mail.

```sql
SELECT 
    u.id,
    u.email
FROM users u
LEFT JOIN email_logs e 
    ON u.id = e.user_id
WHERE e.id IS NULL;
```

### Validação esperada

A consulta deve retornar somente usuários que não possuem registro correspondente na tabela `email_logs`.

---

## 🧪 Cenários de QA validados

| ID     | Validação          | Objetivo                             | Resultado esperado              |
| ------ | ------------------ | ------------------------------------ | ------------------------------- |
| SQL-01 | Últimos pedidos    | Validar histórico de pedidos         | Dados corretos e ordenados      |
| SQL-02 | Pedidos duplicados | Identificar duplicidade              | Nenhum registro duplicado       |
| SQL-03 | Estoque            | Validar baixa após compra            | Estoque atualizado corretamente |
| SQL-04 | E-mail             | Identificar usuários sem confirmação | Usuários sem log de confirmação |

---

## 🛠️ Conhecimentos demonstrados

* `SELECT`
* `WHERE`
* `ORDER BY`
* `LIMIT`
* `JOIN`
* `LEFT JOIN`
* `GROUP BY`
* `HAVING`
* `COUNT()`
* Validação de integridade de dados
* Investigação de possíveis bugs
* Testes de banco de dados aplicados a QA

---

## 📁 Estrutura sugerida no GitHub

```text
qa-portfolio/
│
├── test-cases/
│   └── casos-de-teste-ecommerce.md
│
├── bug-reports/
│   └── bug-report-01.md
│
└── sql/
    └── validacoes-sql-ecommerce.sql
```
