select p.nome_original, a.usuario_1, a.usuario_2
from amizade a join compra c on(a.usuario_1 = c.comprador and a.usuario_2 = c.destinatario)
    join produto p on(p.codigo_de_barras = c.produto);
    
select f.nome atendente, u.nome usuario, m.conteudo
from funcionario f join mensagens m on (f.loja = 1 and a.funcionario = f.cpf)
    join usuario u on (u.cpf=m.usuario);
    
select d.*
from elenco e join deuncia d on (e.ator_atriz = 'CHRIS EVANS' and e.filme = d.produto);

select p.nome_original Nome,count(*) compras
from filme f join compra c on (f.genero = 'AÇÃO' AND f.produto = c.produto)
    join produto p on (p.codigo_de_barras = c.produto)
    group by p.nome_original;
    
select count(*) compras, p.loja
from compras c join produtos on (c.produto = p.codigo_de_barras)
group by p.loja
    