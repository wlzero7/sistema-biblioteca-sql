INSERT INTO autores (nome, nacionalidade)
VALUES
('Machado de Assis', 'Brasileiro'),
('J. K. Rowling', 'Britânica'),
('George Orwell', 'Britânico');

INSERT INTO categorias (nome)
VALUES
('Romance'),
('Fantasia'),
('Ficção Científica');

INSERT INTO editoras (nome, cidade)
VALUES
('Companhia das Letras', 'São Paulo'),
('Rocco', 'Rio de Janeiro'),
('Penguin Books', 'Londres');

INSERT INTO livros
(titulo, ano_publicacao, id_autor, id_categoria, id_editora)
VALUES
('Dom Casmurro', 1899, 1, 1, 1),
('Harry Potter e a Pedra Filosofal', 1997, 2, 2, 2),
('1984', 1949, 3, 3, 3);

INSERT INTO usuarios
(nome, email, telefone, data_cadastro)
VALUES
('William Campos', 'william@email.com', '(21)99999-9999', '2025-01-15'),
('Maria Silva', 'maria@email.com', '(11)98888-8888', '2025-02-10'),
('João Souza', 'joao@email.com', '(31)97777-7777', '2025-03-05');

INSERT INTO emprestimos
(id_usuario, id_livro, data_emprestimo, data_devolucao, status_emprestimo)
VALUES
(1, 1, '2025-05-01', '2025-05-10', 'Devolvido'),
(2, 2, '2025-05-15', NULL, 'Em andamento'),
(3, 3, '2025-05-20', NULL, 'Em andamento');
