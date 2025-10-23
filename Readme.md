# ☕ Cafeteria BomGosto – Controle de Vendas

Este projeto gerencia as **vendas de cafés** da cafeteria BomGosto através de **comandas**, permitindo acompanhar itens vendidos, valor total e faturamento diário.  

---

## 🗂 Estrutura do Banco de Dados

### **Cardápio**
| Coluna         | Descrição                    |
|----------------|------------------------------|
| `codigo`       | Código único do café         |
| `nome`         | Nome do café (único)         |
| `descricao`    | Composição do café           |
| `preco_unitario` | Preço de cada café          |

### **Comanda**
| Coluna        | Descrição                   |
|---------------|-----------------------------|
| `codigo`      | Código único da comanda     |
| `data`        | Data da comanda             |
| `mesa`        | Número da mesa              |
| `nome_cliente`| Nome do cliente             |

### **ItemComanda**
| Coluna          | Descrição                          |
|-----------------|------------------------------------|
| `codigo_comanda`| Código da comanda                  |
| `codigo_cardapio` | Código do café                     |
| `quantidade`    | Quantidade vendida                 |


📊 Funcionalidades

✅ Visualizar o cardápio ordenado.

✅ Listar comandas e seus itens detalhados.

✅ Calcular valor total de cada comanda.

✅ Filtrar comandas com mais de um tipo de café.

✅ Obter o faturamento total diário.
