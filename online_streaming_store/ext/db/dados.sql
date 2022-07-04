/* inserções na tabela de usuário */
INSERT INTO USUARIO VALUES (000, 'João', 'joao@gmail.com', 'JOAO123');
INSERT INTO USUARIO VALUES (001, 'José', 'jose@gmail.com', 'JOSE123');
INSERT INTO USUARIO VALUES (002, 'Maria', 'maria@gmail.com', 'MARIA123');
INSERT INTO USUARIO VALUES (003, 'Ana', 'ana@gmail.com', 'ANA123');

/* inserções na tabela de produto */
INSERT INTO PRODUTO VALUES ('000', 'Avengers', 'Vingadores', 30.9, 'FILME'); 
INSERT INTO PRODUTO VALUES ('001', 'Toy Story', 'Toy Story', 9.9, 'FILME');
INSERT INTO PRODUTO VALUES ('002', 'Avengers: The Game', 'Vingadores: O Jogo', 150.0, 'JOGO');
INSERT INTO PRODUTO VALUES ('004', 'Elden Ring', 'Elden Ring', 250.0, 'JOGO');
INSERT INTO PRODUTO VALUES ('005', 'Harry Potter', 'Harry Potter', 30.0, 'LIVRO');
INSERT INTO PRODUTO VALUES ('006', 'Sapiens', 'Sapiens', 50.5, 'LIVRO');
INSERT INTO PRODUTO VALUES ('007', 'Butter', 'Butter', 5.0, 'MUSICA');
INSERT INTO PRODUTO VALUES ('008', 'Dynamite', 'Dynamite', 5.0, 'MUSICA');
INSERT INTO PRODUTO VALUES ('003', 'Avengers Package', 'Pacote Vingadores', 175.0, 'PACOTE');
INSERT INTO PRODUTO VALUES ('009', 'BTS Collection', 'Coleção BTS', 7.5, 'PACOTE');

/* inserções na tabela de amizade */
INSERT INTO AMIZADE VALUES (000, 001, TO_DATE('01/07/2022', 'DD/MM/YYYY')); 
INSERT INTO AMIZADE VALUES (002, 003, TO_DATE('02/07/2022', 'DD/MM/YYYY'));

/* inserções na tabela de compra */
INSERT INTO COMPRA VALUES (000, 000, '003', TO_DATE('30/06/2022 2:30:00', 'DD/MM/YYYY HH:MI:SS'), 'PIX');
INSERT INTO COMPRA VALUES (000, 001, '002', TO_DATE('30/06/2022 3:00:00', 'DD/MM/YYYY HH:MI:SS'), 'CREDITO');
INSERT INTO COMPRA VALUES (000, 001, '000', TO_DATE('30/06/2022 4:00:00', 'DD/MM/YYYY HH:MI:SS'), 'CREDITO');
INSERT INTO COMPRA VALUES (000, 002, '000', TO_DATE('30/06/2022 5:00:00', 'DD/MM/YYYY HH:MI:SS'), 'CREDITO');
INSERT INTO COMPRA VALUES (000, 003, '000', TO_DATE('30/06/2022 6:00:00', 'DD/MM/YYYY HH:MI:SS'), 'CREDITO');

/* inserções na tabela de denúncia */
INSERT INTO DENUNCIA VALUES (000, '000', TO_DATE('01/06/2022', 'DD/MM/YYYY'), 'Muito violento.');
INSERT INTO DENUNCIA VALUES (000, '002', TO_DATE('01/06/2022', 'DD/MM/YYYY'), 'Muito ruim.');

/* inserções na tabela de possui */
INSERT INTO POSSUI VALUES (000, '003');
INSERT INTO POSSUI VALUES (001, '002');

/* inserções na tabela de avaliação */
INSERT INTO AVALIACAO VALUES (000, '003', TO_DATE('01/07/2022', 'DD/MM/YYYY'), 3, 'Não gostei.');
INSERT INTO AVALIACAO VALUES (001, '002', TO_DATE('01/07/2022', 'DD/MM/YYYY'), 10, 'Maravilhoso!');

/* inserções na tabela de pacote */
INSERT INTO PACOTE VALUES ('003');
INSERT INTO PACOTE VALUES ('009');

/* inserções na tabela de contém */
INSERT INTO CONTEM VALUES ('003', '000');
INSERT INTO CONTEM VALUES ('003', '002');
INSERT INTO CONTEM VALUES ('009', '007');
INSERT INTO CONTEM VALUES ('009', '008');

/* inserções na tabela de música */
INSERT INTO MUSICA VALUES ('007', 'RM', 3.5, 'Kpop');
INSERT INTO MUSICA VALUES ('008', 'SUGA', 3.2, 'Kpop');

/* inserções na tabela de filme */
INSERT INTO FILME VALUES ('000', TO_DATE('27/04/2012', 'DD/MM/YYYY'), 2.4, 'Ação', 10, 'EUA'); 
INSERT INTO FILME VALUES ('001', TO_DATE('22/12/1995', 'DD/MM/YYYY'), 1.4, 'Animação', 0, 'EUA');

/* inserções na tabela de elenco */
INSERT INTO ELENCO VALUES ('000', 'Robert D Junior');
INSERT INTO ELENCO VALUES ('000', 'Chris Evans');

/* inserções na tabela de trailer */
INSERT INTO TRAILER VALUES ('000', 1.1, 1);
INSERT INTO TRAILER VALUES ('001', 0.9, 1);

/* inserções na tabela de jogo */
INSERT INTO JOGO VALUES ('002', TO_DATE('01/10/2022', 'DD/MM/YYYY'), 10, 'Violencia', 'Badgames');
INSERT INTO JOGO VALUES ('004', TO_DATE('25/02/2022', 'DD/MM/YYYY'), 10, 'Violencia', 'From Software');

/* inserções na tabela de demo */
INSERT INTO DEMO VALUES ('002', 0.5, 1);
INSERT INTO DEMO VALUES ('004', 0.6, 1);

/* inserções na tabela de livro */
INSERT INTO LIVRO VALUES ('005', 'Português', 'Rocco', 264, 'Harry Potter', 'Um bruxo...');
INSERT INTO LIVRO VALUES ('006', 'Português', 'CIA Letras', 472, 'Sapiens', 'A humanidade...');

/* inserções na tabela de autores */
INSERT INTO AUTOR VALUES ('005', 'J K Rowling');
INSERT INTO AUTOR VALUES ('006', 'Y N Harari');

/* inserções na tabela de loja */
INSERT INTO LOJA VALUES (001, 'CIA Letras', 'cia@gmail.com');
INSERT INTO LOJA VALUES (002, 'BTS', 'bts@gmail.com');

/* inserções na tabela de endereço das lojas */
INSERT INTO ENDERECO_LOJA VALUES (001, 'rua 1', 10, 'Centro', 001);
INSERT INTO ENDERECO_LOJA VALUES (002, 'rua 2', 11, 'Centro', 001);

/* inserções na tabela de funcionário */
INSERT INTO FUNCIONARIO VALUES (010, 'Luana', 'luana@gmail.com', 'LUANA123', 'vendedor', 001);
INSERT INTO FUNCIONARIO VALUES (011, 'Yago', 'yago@gmail.com', 'YAGO123', 'vendedor', 002);

/* inserções na tabela de chat */
INSERT INTO CHAT VALUES (001, '006', 010, 001);
INSERT INTO CHAT VALUES (002, '009', 011, 002);

/* inserções na tabela de mensagens */
INSERT INTO MENSAGENS VALUES (001, '006', 010, 001, 'Tem desconto?', TO_DATE('01/7/2022', 'DD/MM/YYYY'));
INSERT INTO MENSAGENS VALUES (002, '009', 011, 002, 'Tem autógrafo?', TO_DATE('01/7/2022', 'DD/MM/YYYY'));