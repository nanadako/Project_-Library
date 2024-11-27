-- Consultas.

-- Consulta 01: Uma bibliotecária precisa gerar uma listagem de todos os livros do acervo com suas respectivas editoras para fazer um inventário anual. Crie uma consulta que mostre o título do livro, seu ISBN e o nome da editora, ordenados alfabeticamente pelo título.
SELECT l.titulo, l.ISBN, e.nome_editora AS editora
FROM Livro l
JOIN Editora e ON l.id_editora = e.id_editora
ORDER BY l.titulo;

-- Consulta 02: O setor de controle da biblioteca precisa identificar todos os usuários que estão com livros em atraso para enviar notificações. Para cada usuário com atraso, é necessário saber seu nome, CPF, quantos livros está devendo e qual a data do atraso mais antigo. Considere apenas empréstimos com status 'Em Andamento'.
SELECT u.nome_usuario, u.cpf, COUNT(e.ISBN_livro) AS livros_em_atraso, MIN(e.data_emprestimo) AS data_atraso_mais_antigo
FROM Usuario u 
JOIN Emprestimo e ON u.cpf = e.cpf_usuario
WHERE e.status = 'Em Andamento' AND e.data_devolucao < CURRENT_DATE
GROUP BY u.nome_usuario, u.cpf
HAVING COUNT(e.ISBN_livro) > 0;

-- Consulta 03: Para melhorar o acervo da biblioteca, a coordenação precisa de um relatório que mostre quais são os livros mais populares em cada categoria. O relatório deve mostrar a categoria, o título do livro, o número total de empréstimos e quantos usuários diferentes já pegaram cada livro. Ordene por categoria e depois pela quantidade de empréstimos, em ordem decrescente.
SELECT c.nome_categoria, l.titulo, COUNT(e.id_emprestimo) AS total_emprestimos, COUNT(DISTINCT e.cpf_usuario) AS usuarios_unicos
FROM Livro l
JOIN Categoria c ON l.id_categoria = c.id_categoria
LEFT JOIN Emprestimo e ON l.ISBN = e.ISBN_livro
GROUP BY c.nome_categoria, l.titulo
ORDER BY c.nome_categoria, total_emprestimos DESC;

-- Consulta 04: Para uma análise cultural e de preferências dos leitores, a biblioteca precisa identificar quais são os autores mais populares. Crie um relatório que mostre, para cada autor, sua nacionalidade, quantos livros ele tem no acervo e quantos empréstimos seus livros já tiveram no total. Considere apenas autores que têm pelo menos um livro no acervo e ordene pelo número de empréstimos e quantidade de livros, em ordem decrescente.
SELECT a.nome_autor, a.nacionalidade, COUNT(l.ISBN) AS total_livros, COUNT(e.id_emprestimo) AS total_emprestimos
FROM Autor a 
JOIN Livro l ON a.id_autor = l.id_autor
JOIN Emprestimo e ON l.ISBN = e.ISBN_livro
GROUP BY a.nome_autor, a.nacionalidade 
ORDER BY total_emprestimos DESC, total_livros DESC;
