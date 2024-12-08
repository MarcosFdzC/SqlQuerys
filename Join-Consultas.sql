USE [POKEDEX_DB];
select * from POKEMONS 
select * from ELEMENTOS

Select P.Numero, P.Nombre, P.Descripcion, E.Descripcion as Tipo From POKEMONS P, ELEMENTOS E 
where P.IdTipo = E.Id

-- consulta Joineada
SELECT p.Numero, p.Nombre, p.Descripcion, e1.descripcion AS elemento, e2.descripcion 
AS debilidad FROM pokemons p 
INNER JOIN  elementos e1 ON p.IdTipo = e1.id 
INNER JOIN elementos e2 ON p.IdDebilidad = e2.id;
