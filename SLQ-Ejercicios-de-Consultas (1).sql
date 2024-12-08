--1 Obtener las Pel�culas estrenadas en la D�cada de los '80.
select * from Peliculas where year(FechaEstreno) between 1980 and 1989 
select * from [Peliculas.Clasificaciones]
select * from Plataformas

--2 Obtener los Actores nacidos en la D�cada de los '70.
select * from Reparto where year(FechaNacimiento) between 1970 and 1979

--3 Obtener las Peliculas que se encuentran en la Plataforma de Disney+.
select Titulo from Peliculas P, [Peliculas.Plataformas] 
where [Peliculas.Plataformas].IdPlataforma = 3 and [Peliculas.Plataformas].IdPelicula = P.Id

--4 Obtener la Cantidad de Pel�culas con Clasificaci�n R(4). (Considerar usar el Comando LIKE)
select * from [Peliculas.Clasificaciones] PC where PC.IdClasificacion = 4
select count(PC.IdClasificacion) as Peliculas from [Peliculas.Clasificaciones] PC where PC.IdClasificacion = 4


--5 Obtener la Pel�cula que mayor duraci�n tiene.
Select Titulo, MinutosDuracion from Peliculas where MinutosDuracion = (Select max(MinutosDuracion) from Peliculas)
