select cliente.id, cliente.nome
from cliente
where cliente.id not in (select dependente.id_cliente from dependente);