--1
select Nome, Ano from Filmes

--2
select Nome, Ano from Filmes
order by ano

--3
select Nome, Ano, Duracao from Filmes
where nome = 'De volta para o futuro'

--4
select * from filmes
where ano = 1997

--5
select Nome, Ano, Duracao from filmes
where ano > 2000

--6
select Nome, Ano, Duracao from filmes
where duracao between 101 and 149
order by duracao

--7
select Ano,
count(*) as Quantidade 
from filmes
group by ano
order by quantidade desc

--8
select Id,
	   PrimeiroNome,
	   UltimoNome,
	   Genero
from atores
where genero = 'M'

--9
select Id,
	   PrimeiroNome,
	   UltimoNome,
	   Genero
from atores
where genero = 'F'
order by PrimeiroNome

--10
select f.nome as Nome,
	   g.genero as Genero
from Filmes f
join FilmesGenero fg on fg.IdFilme = f.Id
join Generos g on g.Id = fg.IdGenero

--11
select f.nome as Nome,
	   g.genero as Genero
from Filmes f
join FilmesGenero fg on fg.IdFilme = f.Id
join Generos g on g.Id = fg.IdGenero
where g.Genero = 'Mistério'

--12
select f.Nome,
	   a.PrimeiroNome,
	   a.UltimoNome,
	   ef.Papel
from Filmes f
join ElencoFilme ef on ef.IdFilme = f.Id
join Atores a on a.Id = ef.IdAtor