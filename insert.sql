-- Inserir dados nas tabelas.

-- Categorias:
INSERT INTO Categoria (id_categoria, nome_categoria)
VALUES (1, 'Romance'), (2, 'Ficção Cientifica'), (3, 'Terror');

-- Editoras:
INSERT INTO Editora (id_editora, nome_editora, endereco, telefone)
VALUES (1, 'Editora Arqueiro', 'Rua Funchal, São Paulo', '1138684492'),
       (2, 'Editora Aleph', 'Rua Bento Freitas, São Paulo', '1137433202'),
       (3, 'Editora Suma', 'Praça Floriano, Rio de Janeiro', '2139937510');

-- Autores: 
INSERT INTO Autor (id_autor, nome_autor, nacionalidade, data_nascimento)
VALUES (1, 'Nicholas Sparks', 'Estadunidense', '1965-12-31'),
       (2, 'William Gibson', 'Estadunidense', '1948-03-17'),
       (3, 'Stephen King', 'Estudunidense', '1947-09-21');

-- Livros:
INSERT INTO Livro (ISBN, titulo, idioma, data_publicacao, id_categoria, id_editora, id_autor)
VALUES ('8580419816', 'Um amor para recordar', 'Portugues', '2019-07-05', 1, 1, 1),
       ('8576573008', 'Neuromancer: 1', 'Portugues', '2016-08-19', 2, 2, 2),
       ('8556511570', 'Conto de fadas', 'Portugues', '2022-09-22', 3, 3, 3);

-- Usuários:
INSERT INTO Usuario (cpf, nome_usuario, endereco, data_cadastro, telefone)
VALUES ('11111111111', 'Nicole', 'Rua Frango, São Paulo', '2011-01-01', '11923232332'),
       ('22222222222', 'Wilson', 'Rua Carne, Rio de Janeiro', '2012-02-02', '21924244242'),
       ('33333333333', 'Sabrina', 'Rua Peixe, São Paulo', '2022-09-25', '11956567878');

-- Funcionários:
INSERT INTO Funcionario (matricula, nome_funcionario, cargo, data_contratacao)
VALUES (1, 'Sandro', 'Bibliotecario', '2010-12-12'),
       (2, 'Gabriela', 'Jovem Aprendiz', '2023-03-03'),
       (3, 'Katarina', 'Assistente', '2004-04-04');

-- Empréstimos:
INSERT INTO Emprestimo (id_emprestimo, cpf_usuario, ISBN_livro, matricula_funcionario, data_emprestimo, data_devolucao, status)
VALUES (1, '11111111111', '8580419816', 1, '2023-03-23', '2023-05-23', 'Concluido'),
       (2, '22222222222', '8556511570', 1, '2024-09-24', '2024-11-23', 'Em Andamento'),
       (3, '11111111111', '8576573008', 3, '2010-05-20', '2010-08-20', 'Concluido'),
       (4, '33333333333', '8576573008', 2, '2024-03-15', '2024-05-14', 'Em Andamento'),
       (5, '11111111111', '8576573008', 3, '2023-10-12', '2023-12-12', 'Concluido');
