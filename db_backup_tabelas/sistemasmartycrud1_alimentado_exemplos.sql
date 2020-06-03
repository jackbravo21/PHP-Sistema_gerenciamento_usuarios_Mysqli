-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 22-Abr-2020 às 05:57
-- Versão do servidor: 10.3.16-MariaDB
-- versão do PHP: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `sistemasmartycrud1`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_funcionarios`
--

CREATE TABLE `tb_funcionarios` (
  `id_funcionario` int(11) NOT NULL,
  `nome_completo` varchar(255) NOT NULL,
  `cpf` varchar(12) NOT NULL,
  `endereco` varchar(255) NOT NULL,
  `telefone` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `tb_funcionarios`
--

INSERT INTO `tb_funcionarios` (`id_funcionario`, `nome_completo`, `cpf`, `endereco`, `telefone`) VALUES
(1, 'Bob Robinson', '0102020303', 'Rua Dr Kobe, 2929 Suite 31 - SÃ£o Paulo', '9999-0001'),
(2, 'Peston Lee', '020202020', 'Rua Dr Priestly, 5927 Ap 30 - Rio de Janeiro', '9999-0101'),
(3, 'Jane Shelton', '03023065968', 'Rua Dr Priestly, 5924 - Recife', '9999-0202'),
(4, 'Mary Jane Sheep', '065184996196', 'Rua Mill Lane, 22 - Rio de Janeiro', '9999-0303'),
(5, 'Adriaan Rocky', '19849416189', 'Rua Caldas Jr, 31 - Porto Alegre', '9999-4040'),
(6, 'Yeshe Ding Dong', '918941198198', 'Rua Palace des Vosges, 26 - Recife', '9999-5050'),
(7, 'Jean Claude Van Hellsing', '66697879419', 'Rua dos Arvoredos, 26 - Salvador', '9999-6060'),
(8, 'Charmian Russo', '651849619651', 'Rua Biscane Boulevard, 21 - Fortaleza', '9999-7070'),
(9, 'Tex Damian', '98498496187', 'Rua Dr Ocean, 32 - Fortaleza', '9999-8080'),
(10, 'James Lee Jones', '654189491961', 'Rua Lotus Street, 533 - Belo Horizonte', '9999-9090'),
(11, 'Scott Martin', '98749841036', 'Rua Harley Bender, 1312 - Curitiba', '9999-0000'),
(12, 'Monica Pietro', '756418419641', 'Rua Arbor Drive - 774 - BelÃ©m', '9999-2222');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_usuarios`
--

CREATE TABLE `tb_usuarios` (
  `id_usuario` int(11) NOT NULL,
  `nome_completo` varchar(255) NOT NULL,
  `usuario` varchar(255) NOT NULL,
  `senha` varchar(255) NOT NULL,
  `confirmar_senha` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `tb_usuarios`
--

INSERT INTO `tb_usuarios` (`id_usuario`, `nome_completo`, `usuario`, `senha`, `confirmar_senha`) VALUES
(1, 'UsuÃ¡rio Root', 'Administrador', 'toor', 'toor'),
(2, 'Departamento Pessoal', 'RH', 'rh2020', 'rh2020'),
(3, 'Joana PiauÃ­', 'joemugger', '3326836', '3326836'),
(4, 'Ricardo Prata', 'ricardo.prata', '33262836', '33262836'),
(5, 'Gustavo Bege', 'dining', '33262836', '33262836'),
(6, 'Marta Borges', 'marta.borges', '33262836', '33262836'),
(7, 'Fernando MaranhÃ£o', 'pacific', '33262836', '33262836'),
(8, 'Ronaldo Catarinense', 'ronaldo.catarinense', '33262836', '33262836'),
(9, 'Alexandre Cirne', 'quickclothing', '33262836', '33262836'),
(10, 'Paulo JosÃ© de Almeida', 'paulo.almeida', '33262836', '33262836'),
(11, 'Victor NazÃ¡rio', 'victor.nazario', '33262836', '33262836'),
(12, 'Evellyn Sales', 'aneevellyn', '33262836', '33262836');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `tb_funcionarios`
--
ALTER TABLE `tb_funcionarios`
  ADD PRIMARY KEY (`id_funcionario`);

--
-- Índices para tabela `tb_usuarios`
--
ALTER TABLE `tb_usuarios`
  ADD PRIMARY KEY (`id_usuario`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `tb_funcionarios`
--
ALTER TABLE `tb_funcionarios`
  MODIFY `id_funcionario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de tabela `tb_usuarios`
--
ALTER TABLE `tb_usuarios`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
