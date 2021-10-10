select dependente.nome, dependente.idade, cliente.nome, cliente.idade 
from cliente 
inner join tipo_cliente on tipo_cliente.id = cliente.tp_cliente
left join dependente on dependente.id_cliente = cliente.id
where tipo_cliente.descricao = 'FIDELIZADO';