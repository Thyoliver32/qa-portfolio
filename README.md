# 🧪 Portfólio de Quality Assurance (QA)

Bem-vindo(a) ao meu portfólio de Garantia de Qualidade de Software. Aqui apresento meus projetos práticos, metodologias de teste, estratégias de planejamento e testes de API.

---

## 👤 Sobre Mim

- **Nome:** thiago de oliveira
- **Objetivo:** Analista de QA / QA Tester
- **LinkedIn:** [Link do Seu LinkedIn]
- **E-mail:** [Seu E-mail de Contato]

---

## 🛠️ Competências & Ferramentas

- **Tipos de Testes:** Funcional, Regressão, Exploratório, Sanidade, API.
- **Documentação:** Planos de Teste, Cenários de Teste (BDD/Gherkin), Relatórios de Defeitos (Bug Reports).
- **Ferramentas:** Postman, GitHub, Markdown, Chrome DevTools.
- **Metodologias:** Scrum, Kanban, BDD (Behavior Driven Development).

---

## 🚀 Projetos em Destaque

### 1. Testes de API REST — Restful-Booker
> Validacao da API pública de reservas de hotel em ambiente de testes.

- **Descrição:** Mapeamento e execução de testes automatizados/manuais para criação, consulta e autenticação de reservas.
- **Ferramentas:** Postman, JSON.
- **Evidências & Arquivos:**
  - `restful-booker.postman_collection.json` *(coleção de testes do Postman no repositório)*.
- **Principais Coberturas:**
  - [x] Geração de Token de Autenticação (`POST /auth`)
  - [x] Validação de Status Code 200 ao buscar reservas (`GET /booking`)
  - [x] Criação de reserva com *payload* válido (`POST /booking`)

---

### 2. Estratégia de Testes Manuais & BDD — E-commerce SauceDemo
> Mapeamento funcional e documentação de testes para o e-commerce SauceDemo.

- **Descrição:** Elaboração de cenários de teste orientados a BDD e reporte padronizado de defeitos.
- **Ferramentas:** Markdown, BDD (Gherkin).

#### 📋 Exemplo de Cenário em BDD:
```gherkin
Funcionalidade: Autenticação de Usuário

  Cenário: Login efetuado com sucesso
    Dado que o usuário está na página inicial de login
    Quando preenche o usuário "standard_user" e a senha "secret_sauce"
    E clica no botão "Login"
    Então deve ser redirecionado para a página de produtos "/inventory.html"
