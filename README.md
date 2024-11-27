# 📖 Sistema de Gerenciamento de Biblioteca

Este repositório contém a modelagem e implementação de um sistema de gerenciamento de biblioteca utilizando SQL. Ele inclui a criação de tabelas principais, inserção de dados e consultas para atender a necessidades operacionais e administrativas.

## 🎲 Estrutura do Banco de Dados

O sistema foi projetado para gerenciar os seguintes componentes de uma biblioteca:

1. **Tabelas principais:**
   - **Categoria:** Classificação dos livros.
   - **Editora:** Informações das editoras.
   - **Autor:** Detalhes dos autores.
   - **Livro:** Catálogo de livros disponíveis.
   - **Usuário:** Dados dos clientes da biblioteca.
   - **Funcionário:** Registros dos funcionários.
   - **Empréstimo:** Histórico de empréstimos.

2. **Relacionamentos:**
   - Os livros estão relacionados com categorias, editoras e autores.
   - Os empréstimos conectam usuários, livros e funcionários.

## Inserção de Dados

O script inclui exemplos de inserção de dados em todas as tabelas, com informações sobre categorias, editoras, autores, livros, usuários, funcionários e registros de empréstimos.

## 📥 Consultas SQL

O repositório apresenta consultas SQL que atendem às necessidades práticas da biblioteca, como:

1. **Inventário de livros por editora:**
   - Lista todos os livros do acervo com suas respectivas editoras, ordenados por título.

2. **Usuários com empréstimos atrasados:**
   - Identifica usuários com livros em atraso, mostrando o nome, CPF, número de livros em atraso e a data mais antiga de atraso.

3. **Livros mais populares por categoria:**
   - Relatório dos livros mais emprestados em cada categoria, com o total de empréstimos e usuários únicos.

4. **Autores mais populares:**
   - Relatório com os autores mais emprestados, mostrando nacionalidade, número de livros no acervo e total de empréstimos.

## 💻 Como Usar

1. Clone este repositório:
   ```bash
   git clone https://github.com/seu-usuario/sistema-biblioteca.git
   ```
2. Importe o script SQL para seu banco de dados (compatível com sistemas baseados em SQL).
3. Execute as consultas para explorar os dados e relatórios.

## 💾 Tecnologias Utilizadas

- **SQL** para a modelagem e consultas do banco de dados.

---

**Nota:** Este projeto é uma criação educacional apenas para fins de inspiração e aprendizado.
