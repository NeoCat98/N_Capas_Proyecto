select * from public.useradmin;
insert into public.useradmin(centroescolarid,municipioid,rolid,nombre,apellido,birthdaydate,edad,direccion,username,passwordencripted,estado)
values (1,193,2,'Mario Cecilio','De Leon Recinos','1996/12/15',23,'Cima4','admin2','admin',true);
update public.useradmin set rolid=2 where useradminid=2;