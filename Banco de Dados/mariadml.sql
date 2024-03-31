use sistema_vendas_online;

insert into cliente (nome, endereco, email, celular, data_nascimento)
values
    ('Maria Clara', 'Rua XXX, 111', 'maria@email.com', '1111-1111', '2000-02-02'),
    ('Julia Kastro', 'Rua XXX, 222', 'julia@email.com', '2222-2222', '2000-01-01'),
    ('Joana Leite', 'Rua XXX, 333', 'joana@email.com', '4444-4444', '2000-04-04'),
    ('Joyce Paz', 'Av. XXX, 444', 'joyce@email.com', '5555-5555', '2000-05-05'),
    ('Milton Ferreira', 'Rua XXX, 555', 'milton@email.com', '6666-6666', '2000-06-06'),
    ('Alfredo Neves', 'Av. XXX, 666', 'alfredo@email.com', '7777-7777', '2000-07-07'),
    ('Henrique Santos', 'Rua XXX, 777', 'henrique@email.com', '8888-8888', '2000-08-08'),
    ('Gulherme Freitas', 'Av. XXX, 888', 'guilherme@email.com', '9999-9999', '2000-09-19'),
    ('Renato Guedes', 'Rua XXX, 999', 'renato@email.com', '1111-1111', '2000-10-10'),
    ('Andersson Andrade', 'Av. XXX, 1010', 'andersson@email.com', '2222-2222', '2000-11-11'),
    ('Malena Nunes', 'Av. XXX, 1111', 'malena@email.com', '777-777', '2000-12-12');

insert into produtos (nome, preco, descricao, quantidadeestoque)
values
    ('Livro', 30.00, 'Livro Grosso Capa Dura', 200),
    ('Caderno', 60.00, 'Caderno 10 matérias', 80),
    ('Mochilas', 250.00, 'Mochilas Escolares', 120),
    ('Canetas', 2.50, 'Canetas Esteriográficas', 100),
    ('Borracha', 1.50, 'Apagador de Grafíte', 50),
    ('Estojo', 150.00, 'Estojo Escolar', 90),
    ('Marcadores', 50.00, 'Kit Marca-Textos', 40),
    ('Corretivo', 6.50, 'Corretivo em fita', 60),
    ('Lápis', 1.5, 'Lápis de Escrever', 75),
    ('Lápis de Cor', 35.00, 'Kit Lápis de Cor', 80);

insert into pedido (id_cliente, datacompra, valortotal, datadeentrega)
values
    (1, '2024-06-13', 299.90, '2024-08-09'),
    (2, '2024-03-04', 285.45, '2024-04-03'),
    (3, '2024-09-29', 145.90, '2024-10-08'),
    (4, '2024-12-25', 99.95, '2025-01-08'),
    (5, '2025-02-02', 130.00, '2024-03-31'),
    (6, '2025-05-28', 84.98, '2025-06-01'),
    (7, '2025-07-22', 100.00, '2025-08-03'),
    (8, '2025-09-15', 320.00, '2025-10-12'),
    (9, '2025-11-20', 35.50, '2025-11-26'),
    (10, '2025-12-30', 70.00, '2026-01-13');

insert into itens (numerodo_pedido, id_produto, quantidade, valorunitario, valortotal)
values
    (1, 1, 8, 20.00, 60.00),
    (2, 2, 9, 40.00, 80.00),
    (3, 3, 3, 60.00, 120.00),
    (4, 4, 7, 80.00, 160.00),
    (5, 5, 8, 100.00, 300.00),
    (6, 6, 2, 120.00, 120.00),
    (7, 7, 4, 140.00, 140.00),
    (8, 8, 6, 160.00, 320.00),
    (9, 9, 9, 180.00, 180.00),
    (10, 10, 5, 200.00, 600.00);

update cliente
set celular = '777-9997'
where id = 1;

update produtos
set preco = 20
where id = 5;

update pedido
set datacompra = 2025-08-09
where id = 3;

update itens
set quantidade = 2
where id = 9;

delete from cliente 
where id = 11;

delete from cliente 
where id = 11;