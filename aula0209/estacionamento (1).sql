-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 08/09/2025 às 03:19
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `estacionamento`
--
CREATE DATABASE IF NOT EXISTS `estacionamento` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `estacionamento`;

-- --------------------------------------------------------

--
-- Estrutura para tabela `andar`
--

CREATE TABLE `andar` (
  `idandar` int(11) NOT NULL,
  `capacidade` int(11) DEFAULT NULL,
  `andar` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `andar`
--

INSERT INTO `andar` (`idandar`, `capacidade`, `andar`) VALUES
(1, 50, 'Térreo'),
(2, 40, '1º Andar'),
(3, 30, '2º Andar'),
(4, 20, '3º Andar'),
(5, 10, 'Subsolo');

-- --------------------------------------------------------

--
-- Estrutura para tabela `cliente`
--

CREATE TABLE `cliente` (
  `idcliente` int(11) NOT NULL,
  `cpf` varchar(20) DEFAULT NULL,
  `datanasc` datetime DEFAULT NULL,
  `nome` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `cliente`
--

INSERT INTO `cliente` (`idcliente`, `cpf`, `datanasc`, `nome`) VALUES
(1, '11111111111', '1990-05-12 00:00:00', 'João Silva'),
(2, '22222222222', '1985-09-23 00:00:00', 'Maria Oliveira'),
(3, '33333333333', '2000-01-15 00:00:00', 'Pedro Souza'),
(4, '44444444444', '1995-11-30 00:00:00', 'Ana Costa'),
(5, '55555555555', '1988-07-04 00:00:00', 'Lucas Almeida');

-- --------------------------------------------------------

--
-- Estrutura para tabela `estaciona`
--

CREATE TABLE `estaciona` (
  `idestaciona` int(11) NOT NULL,
  `horasaida` datetime DEFAULT NULL,
  `horaentrada` datetime DEFAULT NULL,
  `datasaida` datetime DEFAULT NULL,
  `dataentrada` datetime DEFAULT NULL,
  `idveiculo` int(11) DEFAULT NULL,
  `idandar` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `estaciona`
--

INSERT INTO `estaciona` (`idestaciona`, `horasaida`, `horaentrada`, `datasaida`, `dataentrada`, `idveiculo`, `idandar`) VALUES
(1, '2025-09-02 08:00:00', '2025-09-02 07:00:00', '2025-09-02 00:00:00', '2025-09-02 00:00:00', 1, 1),
(2, '2025-09-02 09:30:00', '2025-09-02 08:15:00', '2025-09-02 00:00:00', '2025-09-02 00:00:00', 2, 2),
(3, '2025-09-02 10:00:00', '2025-09-02 09:00:00', '2025-09-02 00:00:00', '2025-09-02 00:00:00', 3, 3),
(4, '2025-09-02 11:00:00', '2025-09-02 09:45:00', '2025-09-02 00:00:00', '2025-09-02 00:00:00', 4, 4),
(5, '2025-09-02 12:30:00', '2025-09-02 11:15:00', '2025-09-02 00:00:00', '2025-09-02 00:00:00', 5, 5);

-- --------------------------------------------------------

--
-- Estrutura para tabela `modelo`
--

CREATE TABLE `modelo` (
  `idmodelo` int(11) NOT NULL,
  `modelo` varchar(30) DEFAULT NULL,
  `descricao` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `modelo`
--

INSERT INTO `modelo` (`idmodelo`, `modelo`, `descricao`) VALUES
(1, 'Onix', 'Carro compacto popular da Volkswagen'),
(2, 'Civic', 'Sedã médio da Honda, confortável e econômico'),
(3, 'Onix', 'Hatch moderno da Chevrolet, ágil na cidade'),
(4, 'Corolla', 'Sedã da Toyota, espaçoso e confiável'),
(5, 'HB20', 'Hatch da Hyundai, econômico e estiloso');

-- --------------------------------------------------------

--
-- Estrutura para tabela `veiculo`
--

CREATE TABLE `veiculo` (
  `idveiculo` int(11) NOT NULL,
  `placa` varchar(10) DEFAULT NULL,
  `ano` int(11) NOT NULL,
  `cor` varchar(20) DEFAULT NULL,
  `cpf` varchar(20) DEFAULT NULL,
  `idmodelo` int(11) DEFAULT NULL,
  `idcliente` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `veiculo`
--

INSERT INTO `veiculo` (`idveiculo`, `placa`, `ano`, `cor`, `cpf`, `idmodelo`, `idcliente`) VALUES
(1, 'ABC1234', 2015, 'Azul turquesa', '11111111111', 1, 1),
(2, 'DEF5678', 2018, 'Branco', '22222222222', 2, 2),
(3, 'GHI9012', 2020, 'Verde', '33333333333', 3, 3),
(4, 'JKL3456', 2017, 'Vermelho', '44444444444', 4, 4),
(5, 'MNO7890', 2019, 'Azul', '55555555555', 5, 5);

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `andar`
--
ALTER TABLE `andar`
  ADD PRIMARY KEY (`idandar`);

--
-- Índices de tabela `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`idcliente`);

--
-- Índices de tabela `estaciona`
--
ALTER TABLE `estaciona`
  ADD PRIMARY KEY (`idestaciona`),
  ADD KEY `idveiculo` (`idveiculo`),
  ADD KEY `idandar` (`idandar`);

--
-- Índices de tabela `modelo`
--
ALTER TABLE `modelo`
  ADD PRIMARY KEY (`idmodelo`);

--
-- Índices de tabela `veiculo`
--
ALTER TABLE `veiculo`
  ADD PRIMARY KEY (`idveiculo`),
  ADD KEY `idmodelo` (`idmodelo`),
  ADD KEY `idcliente` (`idcliente`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `andar`
--
ALTER TABLE `andar`
  MODIFY `idandar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `cliente`
--
ALTER TABLE `cliente`
  MODIFY `idcliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `estaciona`
--
ALTER TABLE `estaciona`
  MODIFY `idestaciona` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `modelo`
--
ALTER TABLE `modelo`
  MODIFY `idmodelo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `veiculo`
--
ALTER TABLE `veiculo`
  MODIFY `idveiculo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `estaciona`
--
ALTER TABLE `estaciona`
  ADD CONSTRAINT `estaciona_ibfk_1` FOREIGN KEY (`idveiculo`) REFERENCES `veiculo` (`idveiculo`),
  ADD CONSTRAINT `estaciona_ibfk_2` FOREIGN KEY (`idandar`) REFERENCES `andar` (`idandar`);

--
-- Restrições para tabelas `veiculo`
--
ALTER TABLE `veiculo`
  ADD CONSTRAINT `veiculo_ibfk_1` FOREIGN KEY (`idmodelo`) REFERENCES `modelo` (`idmodelo`),
  ADD CONSTRAINT `veiculo_ibfk_2` FOREIGN KEY (`idcliente`) REFERENCES `cliente` (`idcliente`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
