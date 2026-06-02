-- 1. Listar todos os livros com seus autores

SELECT
    livros.titulo,
    autores.nome AS autor
FROM livros
INNER JOIN autores
ON livros.id_autor = autores.id_autor;


-- 2. Livros e categorias

SELECT
    livros.titulo,
    categorias.nome AS categoria
FROM livros
INNER JOIN categorias
ON livros.id_categoria = categorias.id_categoria;


-- 3. Empréstimos realizados

SELECT
    usuarios.nome,
    livros.titulo,
    emprestimos.data_emprestimo,
    emprestimos.status_emprestimo
FROM emprestimos
INNER JOIN usuarios
ON emprestimos.id_usuario = usuarios.id_usuario
INNER JOIN livros
ON emprestimos.id_livro = livros.id_livro;


-- 4. Quantidade de livros por categoria

SELECT
    categorias.nome,
    COUNT(*) AS quantidade
FROM livros
INNER JOIN categorias
ON livros.id_categoria = categorias.id_categoria
GROUP BY categorias.nome;


-- 5. Usuários cadastrados em 2025

SELECT *
FROM usuarios
WHERE YEAR(data_cadastro) = 2025;


-- 6. Livros publicados após 1950

SELECT *
FROM livros
WHERE ano_publicacao > 1950;


-- 7. Empréstimos ainda em andamento

SELECT *
FROM emprestimos
WHERE status_emprestimo = 'Em andamento';


-- 8. Quantidade de empréstimos por usuário

SELECT
    usuarios.nome,
    COUNT(*) AS total_emprestimos
FROM emprestimos
INNER JOIN usuarios
ON emprestimos.id_usuario = usuarios.id_usuario
GROUP BY usuarios.nome
ORDER BY total_emprestimos DESC;
