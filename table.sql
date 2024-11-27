-- Tabelas principais.

-- Categoria: Representa as categorias em que os livros estão classificados.
CREATE TABLE Categoria (
    id_categoria INT PRIMARY KEY, 
    nome_categoria VARCHAR(100) NOT NULL 
);

-- Editora: Representa as editoras responsáveis pela publicação dos livros.
CREATE TABLE Editora (
    id_editora INT PRIMARY KEY, 
    nome_editora VARCHAR(100) NOT NULL, 
    endereco VARCHAR(255) NULL, 
    telefone VARCHAR(20) NULL 
);

-- Autor: Representa os autores dos livros disponíveis na biblioteca.
CREATE TABLE Autor (
    id_autor INT PRIMARY KEY, 
    nome_autor VARCHAR(100) NOT NULL, 
    nacionalidade VARCHAR(50) NULL, 
    data_nascimento DATE NULL 
);

-- Livro: Representa os livros disponíveis da bibliotca.
CREATE TABLE Livro (
    ISBN VARCHAR(50) PRIMARY KEY,
    titulo VARCHAR(255) NOT NULL, 
    idioma VARCHAR(50) NULL, 
    data_publicacao DATE NOT NULL, 
    id_categoria INT NOT NULL,
    id_editora INT NOT NULL, 
    id_autor INT NOT NULL, 
    FOREIGN KEY (id_categoria) REFERENCES Categoria(id_categoria),
    FOREIGN KEY (id_editora) REFERENCES Editora(id_editora),
    FOREIGN KEY (id_autor) REFERENCES Autor(id_autor)
);  

-- Usuário: Representa os indivíduos que utilizam os serviçoes da biblioteca.
CREATE TABLE Usuario (
    cpf VARCHAR(11) PRIMARY KEY, 
    nome_usuario VARCHAR(255) NOT NULL, 
    endereco VARCHAR(255) NULL, 
    telefone VARCHAR(255), 
    data_cadastro DATE NOT NULL 
);

-- Funcionário: Representa os funcionários responsáveis por atender os usuários e processar os emprestimos. 
CREATE TABLE Funcionario (
    matricula INT PRIMARY KEY, 
    nome_funcionario VARCHAR(255) NOT NULL, 
    cargo VARCHAR(50) NOT NULL, 
    data_contratacao DATE NOT NULL 
);

-- Empréstimo: Representa os empréstimo de livros realizados pelos usuários.
CREATE TABLE Emprestimo (
    id_emprestimo INT PRIMARY KEY,
    data_emprestimo DATE NOT NULL, 
    data_devolucao DATE NULL, 
    status VARCHAR(20) NOT NULL, 
    cpf_usuario VARCHAR(11) NOT NULL, 
    ISBN_livro VARCHAR(50) NOT NULL, 
    matricula_funcionario INT NOT NULL, 
    FOREIGN KEY (cpf_usuario) REFERENCES Usuario(cpf),
    FOREIGN KEY (ISBN_livro) REFERENCES Livro (ISBN),
    FOREIGN KEY (matricula_funcionario) REFERENCES Funcionario(matricula)
);
