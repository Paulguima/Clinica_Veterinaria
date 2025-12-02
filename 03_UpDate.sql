--- UPDATE - Atualizações SQL----

update cliente
 set nome = 'João' 
where id_cliente = 2;

 
select * from cliente

--ordenar

select * from pet
Order BY nome;

select * from consulta
Order BY data ASC;

---quantas consultas cada veterianrio fez---

select
    v.nome AS veterinario,
    COUNT(c.id_consulta) AS Total_consultas
FROM consulta c
JOIN veterinario v ON v.id_veterinario = c.id_veterinario
order BY v.nome;









