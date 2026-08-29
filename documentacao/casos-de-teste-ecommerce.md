# 🧪 Casos de Teste — E-commerce | SauceDemo

Este documento apresenta casos de teste funcionais realizados na aplicação **SauceDemo**, com foco nos principais fluxos de autenticação, carrinho de compras e checkout.

## 📋 Casos de Teste

| ID        | Cenário                       | Pré-condição                                                   | Passos                                                                                                                                                             | Resultado Esperado                                                                                 | Status              |
| --------- | ----------------------------- | -------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------ | -------------------------------------------------------------------------------------------------- | ------------------- |
| **CT-01** | Login válido                  | Usuário cadastrado                                             | 1. Acessar a página de login.<br>2. Informar `standard_user`.<br>3. Informar `secret_sauce`.<br>4. Clicar em **Login**.                                            | Usuário é autenticado e direcionado para `/inventory.html`.                                        | ✅ Passou            |
| **CT-02** | Login com senha inválida      | Usuário `standard_user` existente                              | 1. Acessar a página de login.<br>2. Informar `standard_user`.<br>3. Informar uma senha inválida.<br>4. Clicar em **Login**.                                        | Sistema deve impedir o login e apresentar mensagem de erro contendo **"Epic sadface"**.            | ✅ Passou            |
| **CT-03** | Adicionar produto ao carrinho | Usuário autenticado na página de produtos                      | 1. Selecionar um produto.<br>2. Clicar em **Add to cart**.                                                                                                         | Produto é adicionado ao carrinho e o contador do carrinho apresenta **1** item.                    | ✅ Passou            |
| **CT-04** | Remover produto do carrinho   | Produto previamente adicionado ao carrinho                     | 1. Clicar em **Remove** no produto selecionado.                                                                                                                    | Produto é removido e o carrinho retorna para **0 itens**.                                          | ✅ Passou            |
| **CT-05** | Acessar checkout com produto  | Usuário autenticado e produto adicionado ao carrinho           | 1. Acessar o **Cart**.<br>2. Clicar em **Checkout**.                                                                                                               | Sistema deve direcionar o usuário para `/checkout-step-one.html`.                                  | 🐞 **Falhou — BUG** |
| **CT-06** | Finalizar compra              | Produto adicionado ao carrinho e dados de checkout disponíveis | 1. Acessar o carrinho.<br>2. Clicar em **Checkout**.<br>3. Preencher os dados obrigatórios.<br>4. Avançar para a etapa de confirmação.<br>5. Clicar em **Finish**. | Compra deve ser finalizada e o sistema deve apresentar a mensagem **"Thank you for your order!"**. | ✅ Passou            |

---

## 🐞 Bugs Identificados

Durante a execução dos testes, foi identificado um problema relacionado ao fluxo de checkout.

**Bug relacionado:** [`bug-report-01.md`](./bug-report-01.md)

### Resumo

O **CT-05** apresentou falha durante o acesso à etapa inicial do checkout.

**Resultado esperado:**
O usuário deveria ser direcionado para:

`/checkout-step-one.html`

**Resultado encontrado:**
O comportamento observado diverge do resultado esperado, sendo necessário registrar e investigar o defeito.

---

## 📊 Resumo da Execução

| Métrica           | Resultado |
| ----------------- | --------: |
| Total de casos    |     **6** |
| Casos aprovados   |     **5** |
| Casos reprovados  |     **1** |
| Bugs encontrados  |     **1** |
| Taxa de aprovação | **83,3%** |

### Status

* 🟢 **5 casos passaram**
* 🔴 **1 caso falhou**
* 🐞 **1 bug registrado**

---

## 🛠️ Ferramentas

* **Aplicação:** SauceDemo
* **Tipo de teste:** Teste funcional
* **Área:** E-commerce
* **Técnica:** Testes de caixa-preta
* **Documentação:** Markdown
* **Versionamento:** Git / GitHub

## 📁 Arquivos relacionados

```text
qa-portfolio/
│
├── test-cases/
│   └── casos-de-teste-ecommerce.md
│
└── bug-reports/
    └── bug-report-01.md
```
