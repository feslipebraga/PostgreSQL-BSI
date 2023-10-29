-- 1) Buscar o nome e CPF dos médicos que também são pacientes do hospital
SELECT p.nome, p.cpf
FROM pacientes p
JOIN funcionarios f ON f.cpf = p.cpf
WHERE f.tipoFuncionario = 1;

-- 2) Buscar o nome e a especialidade dos médicos que atendem nos ambulatórios do primeiro andar
SELECT f.nome, f.especialidade
FROM funcionarios f
JOIN atendimento at ON at.cpffuncionario = f.cpf
JOIN ambulatorios a ON a.numero = at.numeroambulatorio
WHERE a.andar = 1 AND f.tipoFuncionario = 1;

-- 3) Buscar o nome e idade dos médicos que têm consulta marcada com a paciente Ana
SELECT f.nome, f.idade
FROM funcionarios f
JOIN consulta c ON c.cpffuncionario = f.cpf
JOIN pacientes p ON p.cpf = c.cpfpaciente
WHERE p.nome = 'Ana';

-- 4) Buscar o número dos ambulatórios que estão no mesmo andar do ambulatório 3
SELECT numero
FROM ambulatorios
WHERE andar = 3;

-- 5) Buscar o número e o andar dos ambulatórios utilizados por médicos ortopedistas
SELECT a.numero, a.andar 
FROM ambulatorios a 
JOIN atendimento ate ON ate.numeroambulatorio = a.numero
JOIN funcionarios f ON f.cpf = ate.cpffuncionario
WHERE f.especialidade = 'Ortopedista';

-- 6) Retornar pares (código, nome) de funcionários e de médicos que residem na mesma cidade (tabela resultado deve ter 4 atributos)
SELECT f0.cpf, f0.nome, f1.cpf, f1.nome
FROM funcionarios f0
JOIN funcionarios f1 ON f0.cidade = f1.cidade
WHERE f0.tipoFuncionario = 0 and f1.tipoFuncionario = 1;

-- 7) Buscar o código e nome dos médicos que possuem consultas marcadas para antes das 12 horas e possuem idade inferior à idade da médica Maria


-- 8) Buscar o nome e o salário dos funcionários que moram na mesma cidade do funcionário Carlos e possuem salário superior ao dele