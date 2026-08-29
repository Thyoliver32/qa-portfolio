# 🔌 Testes de API — E-commerce | SauceDemo

## 🧪 Ferramenta

**Postman**

Este projeto apresenta cenários de testes de API aplicados a um sistema de e-commerce, com foco na validação de autenticação, produtos, carrinho e checkout.

> **Nota:** os endpoints apresentados neste documento representam uma estrutura de API utilizada para fins de estudo e demonstração de conhecimentos em testes de API.

---

## 📋 Cenários de Teste

| ID         | Método | Endpoint    | Cenário                                  | Resultado Esperado                         |
| ---------- | ------ | ----------- | ---------------------------------------- | ------------------------------------------ |
| **API-01** | GET    | `/products` | Consultar lista de produtos              | Status `200` e lista de produtos retornada |
| **API-02** | POST   | `/login`    | Login com credenciais válidas            | Status `200` e autenticação realizada      |
| **API-03** | POST   | `/login`    | Login com credenciais inválidas          | Status `401` e mensagem de erro            |
| **API-04** | POST   | `/cart`     | Adicionar produto ao carrinho            | Status `200` e produto adicionado          |
| **API-05** | POST   | `/checkout` | Finalizar compra com carrinho preenchido | Status `200` e pedido processado           |
| **API-06** | POST   | `/checkout` | Finalizar compra com carrinho vazio      | Status `400` e mensagem de erro            |

---

## 🔍 Validações Realizadas

### 1. Status Code

Foram considerados os seguintes códigos HTTP:

```text
200 — Requisição processada com sucesso
400 — Requisição inválida
401 — Não autorizado
```

### 2. Tempo de Resposta

Critério utilizado:

```text
Tempo de resposta esperado: < 2 segundos
```

### 3. Estrutura do JSON

Validação dos seguintes pontos:

* Estrutura correta do JSON
* Tipos de dados esperados
* Campos obrigatórios
* Presença de informações essenciais
* Formato dos valores retornados

### 4. Campos obrigatórios

Exemplo de validação de resposta de produto:

```json
{
  "id": 1,
  "name": "Produto",
  "price": 29.99,
  "stock": 10
}
```

Campos esperados:

```text
id
name
price
stock
```

---

# 🧪 Exemplos de Testes no Postman

## API-01 — GET /products

### Objetivo

Validar se a API retorna corretamente a lista de produtos.

### Validações

```javascript
pm.test("Status code deve ser 200", function () {
    pm.response.to.have.status(200);
});

pm.test("Tempo de resposta menor que 2 segundos", function () {
    pm.expect(pm.response.responseTime).to.be.below(2000);
});

pm.test("Resposta deve ser JSON", function () {
    pm.response.to.be.json;
});
```

---

## API-03 — POST /login — Credenciais inválidas

### Objetivo

Garantir que a API rejeite credenciais inválidas.

### Resultado esperado

```text
Status Code: 401
```

Exemplo de validação:

```javascript
pm.test("Login inválido deve retornar 401", function () {
    pm.response.to.have.status(401);
});
```

---

## API-06 — POST /checkout — Carrinho vazio

### Objetivo

Validar o comportamento da API quando o usuário tenta finalizar uma compra sem produtos no carrinho.

### Resultado esperado

```text
Status Code: 400
```

Exemplo de validação:

```javascript
pm.test("Checkout sem produtos deve retornar 400", function () {
    pm.response.to.have.status(400);
});
```

---

# 📊 Critérios de Aceitação

| Critério                         | Esperado           |
| -------------------------------- | ------------------ |
| Status HTTP                      | Conforme cenário   |
| Tempo de resposta                | < 2 segundos       |
| Content-Type                     | `application/json` |
| JSON válido                      | Sim                |
| Campos obrigatórios              | Presentes          |
| Mensagens de erro                | Informativas       |
| Tratamento de cenários negativos | Implementado       |

---

# 📁 Collection Postman

A Collection Postman será exportada em formato `.json` para execução e compartilhamento dos testes.

Estrutura sugerida:

```text
qa-portfolio/
│
├── test-cases/
│   └── casos-de-teste-ecommerce.md
│
├── bug-reports/
│   └── bug-report-01.md
│
├── sql/
│   └── validacoes-sql-ecommerce.sql
│
└── postman/
    ├── ecommerce-api-tests.json
    └── testes-api-postman.md
```

---

# 🚀 Próximos Passos

* [ ] Criar Collection no Postman
* [ ] Criar requests dos cenários positivos
* [ ] Criar requests dos cenários negativos
* [ ] Adicionar scripts de teste
* [ ] Validar status codes
* [ ] Validar tempo de resposta
* [ ] Validar estrutura JSON
* [ ] Exportar Collection em `.json`
* [ ] Adicionar Collection ao GitHub
* [ ] Documentar resultados dos testes
