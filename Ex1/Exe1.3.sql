select dependente.nome
from dependente
inner join cliente on cliente.id = dependente.id_cliente
where cliente.nome like '%AR%';