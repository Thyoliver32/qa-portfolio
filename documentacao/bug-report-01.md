# 🐞 Relatório de Defeito (Bug Report)

**ID do Defeito:** BUG-001  
**Data:** 10/08/2026  
**Sistema:** E-commerce SauceDemo  
**Relatado por:** QA Tester  

---

## 📌 Resumo
[WEB] Botão "Checkout" não redireciona o usuário para a página de dados ao estar com itens no carrinho.

---

## ⚙️ Informações do Ambiente
- **Navegador:** Google Chrome (Versão 120.0)
- **Sistema Operacional:** Windows 11
- **Dispositivo:** Desktop
- **URL:** `https://www.saucedemo.com/cart.html`

---

## 🚨 Severidade e Prioridade
- **Severidade:** Alta *(impede o fluxo principal de compra)*
- **Prioridade:** Alta *(deve ser corrigido na sprint atual)*

---

## 📝 Passos para Reproduzir
1. Acesse o site `https://www.saucedemo.com/`.
2. Faça login com o usuário `standard_user` e senha `secret_sauce`.
3. Adicione o produto "Sauce Labs Backpack" ao carrinho.
4. Clique no ícone do carrinho no canto superior direito.
5. Clique no botão **"Checkout"**.

---

## ❌ Resultado Obtido
A página pisca/recarrega e o usuário permanece na tela do carrinho (`/cart.html`). Nenhum aviso ou mensagem de erro é exibido no console.

---

## ✅ Resultado Esperado
O usuário deve ser redirecionado com sucesso para a página de formulário "Checkout: Your Information" (`/checkout-step-one.html`).
