------Insert-------
INSERT INTO cliente(nome, telefone)
VALUES   
('ANA DE LIMA' , '1199999-99'),
('Jose' , '1188888-77'),
('Paulo' , '1166666-55');

select * from cliente;

INSERT INTO pet(nome, especie, idade, id_cliente)
VALUES
('Mel', 'cachorro',5,3),
('belinha', 'cachorro',4,1),
('Thor' , 'cachorro',6, 1);

Select * from Pet;

INSERT INTO veterinario (nome, crmv)
VALUES
('DRA.MARISA' , 'SP0302'),
('DRA.ANGELA' , 'SP1621'),
('DRA.FABIANA' , 'SP4152');

Select * from veterinario;

INSERT INTO consulta(data, tipo_servico, id_pet, id_veterinario)
VALUES
('2025-05-30' , 'vacina',1,1),
('2025-06-02' , 'castração',2,2),
('2025-11-03' , 'retorno',1,1);

Select * from consulta;

INSERT INTO medicamento(nome, quantidade, qualidade, validade_medicamento, id_consulta)
VALUES
('vermit' , 2, '2023-11-30',1),
('vermit02' ,3, '2023-12-30',2),
('vermit03' , 3, '2023-01-30',3);

Select * from medicamento;


INSERT INTO medicamento_consulta(id_consulta, id_medicamento, dose_aplicada)
VALUES
(1,1, '1 dose unica'),
(1,2, 'aplicar duas gotas no ouvido'),
(3,2, '1 comprimido');

select * from medicamento_consulta;

select * from consulta;

-----update-----

UPDATE consulta
 set nome = 'dipirona'
 where id_consulta =2;
 
select * from consulta;

select
    co.id_consulta,
    co.data,
    v.nome AS veterinario,
    v.crmv
From consulta co
JOIN veterinario v ON v.id_veterinario = co.id_veterinario;












