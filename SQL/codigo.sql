
use dbresilia;

CREATE TABLE `cursos` (
  `id_cursos` int(11) NOT NULL PRIMARY KEY,
  `nome_curso` varchar(100) NOT NULL,
  `descricao` text DEFAULT NULL,
  `carga_horaria` int(11) DEFAULT NULL
);

INSERT INTO `cursos` (`id`, `nome_curso`, `descricao`, `carga_horaria`) VALUES
(1, 'Frontend', 'Curso de frontend', 40),
(2, 'Backend', 'Curso de backend', 60),
(2, 'Full stack', 'Curso de full stack', 60);

CREATE TABLE `facilitadores` (
  `id_facilitadores` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `email` varchar(80) NOT NULL,
  `area_atuacao` varchar(255) DEFAULT NULL
);

INSERT INTO `professores` (`id`, `nome`, `email`, `area_atuacao`) VALUES
(1, 'Kim Namjoon', 'kimnamjoonprof@gmail.com', 'Frontend'),
(2, 'Pamela Cruz', 'pamelacruzprof@gmail.com', 'Backend'),
(2, 'Justin Drew', 'justindrewprof@gmail.com', 'Full stack');

CREATE TABLE `turmas` (
  `id_turmas` int(11) NOT NULL,
  `curso_id` int(11) NOT NULL,
  `professor_id` int(11) NOT NULL,
  `periodo` varchar(25) NOT NULL
);


INSERT INTO `turmas` (`id`, `curso_id`, `professor_id`, `periodo`) VALUES
(1, 1, 1, '2023.1'),
(2, 2, 2, '2023.2');

CREATE TABLE `alunos` (
  `id_alunos` int(11) NOT NULL PRIMARY KEY,
  `nome` varchar(100) NOT NULL,
  `email` varchar(80) NOT NULL,
  `data_de_nascimento` date DEFAULT NULL
);



INSERT INTO `alunos` (`id`, `nome`, `email`, `data_nascimento`) VALUES
(1, 'Rita Lee', 'ritalee_23@gmail.com', '2000-01-01'),
(2, 'Manu Gavassi', 'manugav16@gmail.com', '2007-02-02'),
(2, 'Britney Jean', 'britsjean.19@gmail.com', '2003-02-02');

