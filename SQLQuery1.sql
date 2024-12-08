select * from DISCOS
select * from ESTILOS
select * from TIPOSEDICION
insert into DISCOS values('Donde quiero estar', 2023-01-20, 16, 'https://t2.genius.com/unsafe/375x0/https%3A%2F%2Fimages.genius.com%2F8488f5564b69e90046f8fa776f0b703a.1000x1000x1.jpg', 5, 4)
insert into  ESTILOS values('Electrónica')
update DISCOS set Activo = 1 where id = 1
update DISCOS set UrlImagenTapa = NULL where id = 6
update DISCOS set UrlImagenTapa = 'https://is1-ssl.mzstatic.com/image/thumb/Music115/v4/63/e5/39/63e53993-0eff-18e2-d756-ce3d56d98270/00602537491377.rgb.jpg/600x600bf-60.jpg', IdEstilo = 6, IdTipoEdicion = 4 where id = 4

delete from DISCOS where id = 23
--Columna activo agregada, con estado por defecto en Activo es decir 1.
ALTER TABLE DISCOS
ADD Activo BIT NOT NULL DEFAULT 1;


select Id, Descripcion from TIPOSEDICION

select D.Id, D.Titulo, D.FechaLanzamiento, D.CantidadCanciones, D.UrlImagenTapa, E.Descripcion Estilo, TE.Descripcion Edicion, D.IdEstilo, D.IdTipoEdicion from DISCOS D, ESTILOS E, TIPOSEDICION TE where D.IdEstilo = E.Id and D.IdTipoEdicion = TE.Id 

update DISCOS set Titulo = '', FechaLanzamiento = '', CantidadCanciones = 1, UrlImagenTapa = '', IdEstilo = 0, IdTipoEdicion = 0 where id = 50
