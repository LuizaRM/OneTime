-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 29-Nov-2019 às 17:20
-- Versão do servidor: 10.4.8-MariaDB
-- versão do PHP: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `ontime`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `administrador`
--

CREATE TABLE `administrador` (
  `idAdministrador` int(11) NOT NULL,
  `idUsuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `aluno`
--

CREATE TABLE `aluno` (
  `idAluno` int(11) NOT NULL,
  `idUsuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `curso`
--

CREATE TABLE `curso` (
  `idCurso` int(11) NOT NULL,
  `nomeCurso` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `curso`
--

INSERT INTO `curso` (`idCurso`, `nomeCurso`) VALUES
(1, 'Ciencia da computacao'),
(2, 'Alimentos'),
(4, 'Matematica'),
(6, 'Administração'),
(7, 'Engenharia'),
(8, 'Arquitetura'),
(9, 'Direito'),
(11, 'Zootecnia');

-- --------------------------------------------------------

--
-- Estrutura da tabela `departamento`
--

CREATE TABLE `departamento` (
  `idDepartamento` int(11) NOT NULL,
  `nomeDepartamento` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `departamento`
--

INSERT INTO `departamento` (`idDepartamento`, `nomeDepartamento`) VALUES
(1, 'DACC'),
(2, 'DCTA'),
(3, 'ZOO'),
(4, 'ADM'),
(5, 'MAT');

-- --------------------------------------------------------

--
-- Estrutura da tabela `disciplina`
--

CREATE TABLE `disciplina` (
  `idDisciplina` int(11) NOT NULL,
  `nomeDisciplina` varchar(45) NOT NULL,
  `cargaHorariaDisciplina` varchar(45) DEFAULT NULL,
  `codigoDisciplina` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `disciplina`
--

INSERT INTO `disciplina` (`idDisciplina`, `nomeDisciplina`, `cargaHorariaDisciplina`, `codigoDisciplina`) VALUES
(1, 'Cálculo 2', '66', 'AVAS2'),
(2, 'Física 3', '66', 'das5'),
(3, 'AEDS I', '66', 'COMP11'),
(4, 'AEDS II', '33', 'COMP12');

-- --------------------------------------------------------

--
-- Estrutura da tabela `disponibilidade`
--

CREATE TABLE `disponibilidade` (
  `idDisponibilidade` int(11) NOT NULL,
  `idProfessor` int(11) NOT NULL,
  `idHorario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `endereco`
--

CREATE TABLE `endereco` (
  `idEndereco` int(11) NOT NULL,
  `ruaEndereco` varchar(100) NOT NULL,
  `numeroEndereco` varchar(10) NOT NULL,
  `complementoEndereco` varchar(100) NOT NULL,
  `bairroEndereco` varchar(100) NOT NULL,
  `cidadeEndereco` varchar(100) NOT NULL,
  `estadoEndereco` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `endereco`
--

INSERT INTO `endereco` (`idEndereco`, `ruaEndereco`, `numeroEndereco`, `complementoEndereco`, `bairroEndereco`, `cidadeEndereco`, `estadoEndereco`) VALUES
(1, 'Rua Doutor Queiroz', '193', 'Casa Verde, segundo andar', 'Rosario', 'Rio Pomba', 'MG'),
(2, 'd', 'd', 'd', 'd', 'd', 'd'),
(3, 'd', 'd', 'd', 'd', 'd', 'd'),
(4, 'd', 'd', 'd', 'dd', 'd', 'd'),
(5, 'd', 'd', 'd', 'dd', 'd', 'd'),
(6, 'd', 'd', 'd', 'dd', 'd', 'd'),
(7, '', '', '', '', '', ''),
(8, 'd', 'dd', 'd', 'd', 'd', 'd'),
(9, 'd', 'd', 'd', 'd', 'd', 'd'),
(10, 'd', 'd', 'd', 'd', 'd', 'd'),
(11, 'd', 'd', 'd', 'd', 'd', 'd'),
(12, 'd', 'd', 'd', 'd', 'd', 'd'),
(13, 'd', 'd', 'd', 'dd', 'd', 'd'),
(14, 'd', 'd', 'd', 'dd', 'd', 'd'),
(15, 'Rua Dr Antonio M. Fortes d', '92', 'Terceiro Andar', 'Praça da Bandeira', 'Além Paraíba', 'Minas Geraisq'),
(16, 'd', 'd', 'd', 'd', 'd', 'd'),
(17, 'd', 'd', 'd', 'd', 'd', 'd'),
(18, 'd', 'd', 'd', 'd', 'd', 'd'),
(19, 'dd', 'd', 'd', 'd', 'd', 'd'),
(20, 'p', 'p', 'p', 'p', 'p', 'p'),
(21, 'd', 'd', 'd', 'd', 'd', 'd'),
(22, 'p', 'p', 'p', 'p', 'p', 'pp'),
(23, 'd', 'od', 'kdo', 'odkasko', 'alem', 'goiabera'),
(24, 'd', 'd', 'd', 'd', 'd', 'd'),
(25, 'dko', 'dok', 'dkdko', 'o', 'oddk', 'kodaskod'),
(26, 'q', 'q', 'q', 'q', 'q', 'q'),
(27, 'd', 'd', 'd', 'd', 'd', 'd'),
(34, 'Av Verissimo Mendonca', '193', '2 andar', 'Beira Rio', 'cataguases', 'MG'),
(37, 'Doutor Queiroz', '193', '-', 'Centro', 'Rio Pomba', 'MG'),
(39, 'Dr Queiroz', '132', '201', 'Centro', 'Rio Pomba', 'MG'),
(42, 'd', 'd', 'd', 'd', 'd', 'd'),
(43, 'teste', '123', '123', 'teste', 'teste', 'teste');

-- --------------------------------------------------------

--
-- Estrutura da tabela `horario`
--

CREATE TABLE `horario` (
  `idHorario` int(11) NOT NULL,
  `turnoHorario` int(11) NOT NULL,
  `diaHorario` int(11) NOT NULL,
  `numeroHorario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `matrizcurricular`
--

CREATE TABLE `matrizcurricular` (
  `idMatrizCurricular` int(11) NOT NULL,
  `idCurso` int(11) NOT NULL,
  `nomeMatrizCurricular` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `prerequisito`
--

CREATE TABLE `prerequisito` (
  `idPreRequisito` int(11) NOT NULL,
  `idDisciplina` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `prerequisitodisciplina`
--

CREATE TABLE `prerequisitodisciplina` (
  `idPreRequisitoDisciplina` int(11) NOT NULL,
  `idPreRequisito` int(11) NOT NULL,
  `idDisciplina` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `professor`
--

CREATE TABLE `professor` (
  `idProfessor` int(11) NOT NULL,
  `idUsuario` int(11) NOT NULL,
  `idDepartamento` int(11) NOT NULL,
  `departamentoProfessor` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `professor`
--

INSERT INTO `professor` (`idProfessor`, `idUsuario`, `idDepartamento`, `departamentoProfessor`) VALUES
(1, 17, 1, 'DDDDEPT'),
(2, 21, 2, ''),
(3, 22, 3, ''),
(4, 23, 4, ''),
(5, 24, 3, '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `turma`
--

CREATE TABLE `turma` (
  `idTurma` int(11) NOT NULL,
  `idDisciplina` int(11) NOT NULL,
  `idProfessor` int(11) NOT NULL,
  `idCurso` int(11) NOT NULL,
  `anoTurma` int(11) NOT NULL,
  `semestreTurma` int(11) NOT NULL,
  `salaTurma` varchar(45) DEFAULT NULL,
  `periodoTurma` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `turma`
--

INSERT INTO `turma` (`idTurma`, `idDisciplina`, `idProfessor`, `idCurso`, `anoTurma`, `semestreTurma`, `salaTurma`, `periodoTurma`) VALUES
(1, 1, 2, 1, 2019, 2, 'SAC', 2),
(7, 1, 3, 1, 2015, 2, '2', 2),
(27, 1, 1, 1, 5, 7, '5', 5),
(29, 3, 1, 4, 2, 2, '5', 2),
(34, 1, 1, 1, 2, 2, '2', 2),
(39, 1, 2, 2, 2, 2, '2', 2),
(40, 1, 1, 1, 3, 3, '3', 3),
(41, 3, 3, 3, 2, 2, '2', 2),
(42, 2, 2, 2, 3, 3, '3', 3),
(43, 4, 4, 2, 2, 2, '3', 3),
(44, 3, 3, 2, 2, 2, '3', 3),
(45, 1, 1, 7, 2007, 8, '7', 9),
(46, 3, 3, 1, 2019, 8, '4', 9),
(47, 1, 1, 1, 2000, 9, '8', 7);

-- --------------------------------------------------------

--
-- Estrutura da tabela `turmahorario`
--

CREATE TABLE `turmahorario` (
  `idTurmaHorario` int(11) NOT NULL,
  `idTurma` int(11) NOT NULL,
  `idHorario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuario`
--

CREATE TABLE `usuario` (
  `idUsuario` int(11) NOT NULL,
  `idEndereco` int(11) NOT NULL,
  `nomeUsuario` varchar(100) NOT NULL,
  `cpfUsuario` varchar(100) NOT NULL,
  `emailUsuario` varchar(100) NOT NULL,
  `senhaUsuario` varchar(100) NOT NULL,
  `telefoneUsuario` varchar(45) NOT NULL,
  `departamentoUsuario` varchar(45) NOT NULL,
  `nivelUsuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `usuario`
--

INSERT INTO `usuario` (`idUsuario`, `idEndereco`, `nomeUsuario`, `cpfUsuario`, `emailUsuario`, `senhaUsuario`, `telefoneUsuario`, `departamentoUsuario`, `nivelUsuario`) VALUES
(17, 34, 'Luiza Rosa de Mouraa', '09934287625', 'luikta@gmail.com', '123456', '2984805202\'', 'dacc', 1),
(20, 37, 'Julie', '099.785.123.45', 'juju@gmail.com', '12356', '3299998754', 'DACC', 1),
(22, 39, 'Thiago', '09985472685', 'thiagomotax@gmail.com', '123456', '32987458585', 'ZOO', 0),
(25, 42, 'd', 'd', 'dd', 'd', 'd', 'd', 1),
(26, 43, 'teste', '08845455521', 'aa@asa.com', '123456', '32987585985', 'DACC', 0),
(28, 8, 'master', '1', '1', '1', '1', '1', 1);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `administrador`
--
ALTER TABLE `administrador`
  ADD PRIMARY KEY (`idAdministrador`),
  ADD KEY `idUsuarioL_idx` (`idUsuario`);

--
-- Índices para tabela `aluno`
--
ALTER TABLE `aluno`
  ADD PRIMARY KEY (`idAluno`),
  ADD KEY `idUsuarioZ_idx` (`idUsuario`);

--
-- Índices para tabela `curso`
--
ALTER TABLE `curso`
  ADD PRIMARY KEY (`idCurso`);

--
-- Índices para tabela `departamento`
--
ALTER TABLE `departamento`
  ADD PRIMARY KEY (`idDepartamento`);

--
-- Índices para tabela `disciplina`
--
ALTER TABLE `disciplina`
  ADD PRIMARY KEY (`idDisciplina`);

--
-- Índices para tabela `disponibilidade`
--
ALTER TABLE `disponibilidade`
  ADD PRIMARY KEY (`idDisponibilidade`),
  ADD KEY `idHorario_idx` (`idHorario`),
  ADD KEY `idProfessorM_idx` (`idProfessor`);

--
-- Índices para tabela `endereco`
--
ALTER TABLE `endereco`
  ADD PRIMARY KEY (`idEndereco`);

--
-- Índices para tabela `horario`
--
ALTER TABLE `horario`
  ADD PRIMARY KEY (`idHorario`);

--
-- Índices para tabela `matrizcurricular`
--
ALTER TABLE `matrizcurricular`
  ADD PRIMARY KEY (`idMatrizCurricular`),
  ADD KEY `idCursoh_idx` (`idCurso`);

--
-- Índices para tabela `prerequisito`
--
ALTER TABLE `prerequisito`
  ADD PRIMARY KEY (`idPreRequisito`),
  ADD KEY `idDisciplinakk_idx` (`idDisciplina`);

--
-- Índices para tabela `prerequisitodisciplina`
--
ALTER TABLE `prerequisitodisciplina`
  ADD PRIMARY KEY (`idPreRequisitoDisciplina`),
  ADD KEY `idPreRequisitoxa_idx` (`idPreRequisito`),
  ADD KEY `idDisciplinaxa_idx` (`idDisciplina`);

--
-- Índices para tabela `professor`
--
ALTER TABLE `professor`
  ADD PRIMARY KEY (`idProfessor`),
  ADD KEY `idUsuarioX_idx` (`idUsuario`);

--
-- Índices para tabela `turma`
--
ALTER TABLE `turma`
  ADD PRIMARY KEY (`idTurma`),
  ADD KEY `idDisciplinagg_idx` (`idDisciplina`),
  ADD KEY `idCursogg_idx` (`idCurso`);

--
-- Índices para tabela `turmahorario`
--
ALTER TABLE `turmahorario`
  ADD PRIMARY KEY (`idTurmaHorario`),
  ADD KEY `idHorario_idx` (`idHorario`),
  ADD KEY `idTurmaZ_idx` (`idTurma`);

--
-- Índices para tabela `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`idUsuario`),
  ADD KEY `idEnderecoX_idx` (`idEndereco`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `administrador`
--
ALTER TABLE `administrador`
  MODIFY `idAdministrador` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `aluno`
--
ALTER TABLE `aluno`
  MODIFY `idAluno` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `curso`
--
ALTER TABLE `curso`
  MODIFY `idCurso` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de tabela `departamento`
--
ALTER TABLE `departamento`
  MODIFY `idDepartamento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `disciplina`
--
ALTER TABLE `disciplina`
  MODIFY `idDisciplina` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `disponibilidade`
--
ALTER TABLE `disponibilidade`
  MODIFY `idDisponibilidade` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `endereco`
--
ALTER TABLE `endereco`
  MODIFY `idEndereco` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT de tabela `horario`
--
ALTER TABLE `horario`
  MODIFY `idHorario` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `matrizcurricular`
--
ALTER TABLE `matrizcurricular`
  MODIFY `idMatrizCurricular` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `prerequisito`
--
ALTER TABLE `prerequisito`
  MODIFY `idPreRequisito` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `prerequisitodisciplina`
--
ALTER TABLE `prerequisitodisciplina`
  MODIFY `idPreRequisitoDisciplina` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `professor`
--
ALTER TABLE `professor`
  MODIFY `idProfessor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `turma`
--
ALTER TABLE `turma`
  MODIFY `idTurma` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT de tabela `turmahorario`
--
ALTER TABLE `turmahorario`
  MODIFY `idTurmaHorario` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `usuario`
--
ALTER TABLE `usuario`
  MODIFY `idUsuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `administrador`
--
ALTER TABLE `administrador`
  ADD CONSTRAINT `idUsuarioL` FOREIGN KEY (`idUsuario`) REFERENCES `usuario` (`idUsuario`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `aluno`
--
ALTER TABLE `aluno`
  ADD CONSTRAINT `idUsuarioZ` FOREIGN KEY (`idUsuario`) REFERENCES `usuario` (`idUsuario`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `disponibilidade`
--
ALTER TABLE `disponibilidade`
  ADD CONSTRAINT `idHorario` FOREIGN KEY (`idHorario`) REFERENCES `horario` (`idHorario`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `idProfessorM` FOREIGN KEY (`idProfessor`) REFERENCES `professor` (`idProfessor`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `matrizcurricular`
--
ALTER TABLE `matrizcurricular`
  ADD CONSTRAINT `idCursoh` FOREIGN KEY (`idCurso`) REFERENCES `curso` (`idCurso`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `prerequisito`
--
ALTER TABLE `prerequisito`
  ADD CONSTRAINT `idDisciplinakk` FOREIGN KEY (`idDisciplina`) REFERENCES `disciplina` (`idDisciplina`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `prerequisitodisciplina`
--
ALTER TABLE `prerequisitodisciplina`
  ADD CONSTRAINT `idDisciplinaxa` FOREIGN KEY (`idDisciplina`) REFERENCES `disciplina` (`idDisciplina`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `idPreRequisitoxa` FOREIGN KEY (`idPreRequisito`) REFERENCES `prerequisito` (`idPreRequisito`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `professor`
--
ALTER TABLE `professor`
  ADD CONSTRAINT `idDepartamentol` FOREIGN KEY (`idDepartamento`) REFERENCES `departamento` (`idDepartamento`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `idUsuarioX` FOREIGN KEY (`idUsuario`) REFERENCES `usuario` (`idUsuario`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `turma`
--
ALTER TABLE `turma`
  ADD CONSTRAINT `idCursogg` FOREIGN KEY (`idCurso`) REFERENCES `curso` (`idCurso`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `idDisciplinagg` FOREIGN KEY (`idDisciplina`) REFERENCES `disciplina` (`idDisciplina`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `idProfessorgg` FOREIGN KEY (`idProfessor`) REFERENCES `professor` (`idProfessor`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `turmahorario`
--
ALTER TABLE `turmahorario`
  ADD CONSTRAINT `idHorarioZxx` FOREIGN KEY (`idHorario`) REFERENCES `horario` (`idHorario`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `idTurmaZxx` FOREIGN KEY (`idTurma`) REFERENCES `turma` (`idTurma`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `idEnderecoQ` FOREIGN KEY (`idEndereco`) REFERENCES `endereco` (`idEndereco`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
