-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 04/06/2025 às 01:50
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `etecmcm2`
--
CREATE DATABASE IF NOT EXISTS `etecmcm2` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `etecmcm2`;

-- --------------------------------------------------------

--
-- Estrutura para tabela `categoria`
--

CREATE TABLE `categoria` (
  `nome_cat` varchar(255) DEFAULT NULL,
  `id_categoria` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `categoria`
--

INSERT INTO `categoria` (`nome_cat`, `id_categoria`) VALUES
('Limpeza', 1),
('Açogue', 2),
('Hortifruti', 3),
('Enlatados', 4),
('Higiene', 5),
('Laticinios', 6),
('Doces', 7),
('Eletronicos', 8),
('Brinquedos', 9),
('Bebidas', 10);

-- --------------------------------------------------------

--
-- Estrutura para tabela `categorias`
--

CREATE TABLE `categorias` (
  `id_categoria` int(11) NOT NULL,
  `nome_cat` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `categorias`
--

INSERT INTO `categorias` (`id_categoria`, `nome_cat`) VALUES
(1, 'laticinios'),
(2, 'higiene'),
(3, 'limpeza'),
(4, 'hortifruti'),
(5, 'enlatados'),
(7, 'açougue');

-- --------------------------------------------------------

--
-- Estrutura para tabela `produtos`
--

CREATE TABLE `produtos` (
  `id_prod` int(11) NOT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `preco` decimal(10,2) DEFAULT NULL,
  `marca` varchar(255) DEFAULT NULL,
  `qtde` int(11) DEFAULT NULL,
  `fk_categoria_id_categoria` int(11) DEFAULT NULL,
  `unidade_medida` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `produtos`
--

INSERT INTO `produtos` (`id_prod`, `nome`, `preco`, `marca`, `qtde`, `fk_categoria_id_categoria`, `unidade_medida`) VALUES
(2, 'Detergente', 3.50, 'limpol', 50, 1, 'un'),
(3, 'sabao em po', 13.50, 'omo', 50, 1, 'un'),
(4, 'Picanha', 100.50, 'Freboi', 50, 2, 'kg'),
(5, 'Peito de frango', 100.50, 'Seara', 50, 2, 'kg'),
(6, 'Banana', 13.50, 'Agranor', 50, 3, 'kg'),
(7, 'Maça', 10.50, 'Arcanjo', 50, 3, 'kg'),
(8, 'Milho', 5.50, 'quero', 50, 4, 'un'),
(9, 'Ervilha', 6.50, 'knorr', 50, 4, 'un'),
(10, 'Microondas', 650.00, 'Electrolux', 50, 8, 'un'),
(11, 'Refrigerante', 9.00, 'Sprite', 50, 10, 'un'),
(12, 'Geladeira', 3000.00, 'Brastemp', 50, 8, 'un'),
(13, 'Refrigerante', 7.00, 'Dolly', 50, 10, 'un'),
(14, 'Lego Batman', 110.00, 'Lego', 50, 9, 'un'),
(15, 'Massa de Modelar', 40.00, 'Play-Doh', 50, 9, 'un'),
(16, 'Caixa de Chocolate', 10.00, 'Nestle', 50, 7, 'un'),
(17, 'Barra de Chocolate Suflair', 10.00, 'Nestle', 50, 7, 'un'),
(18, 'Creme Dental', 5.00, 'Colgate', 50, 5, 'un'),
(19, 'Enxaguante Bucal Carmed', 12.00, 'Carmed', 50, 5, 'un'),
(20, 'Margarina', 9.00, 'Margarina', 50, 6, 'un'),
(21, 'Requeijão Cremoso', 9.00, 'Vigor', 50, 6, 'un');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`id_categoria`);

--
-- Índices de tabela `produtos`
--
ALTER TABLE `produtos`
  ADD PRIMARY KEY (`id_prod`),
  ADD KEY `FK_produtos_2` (`fk_categoria_id_categoria`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `categoria`
--
ALTER TABLE `categoria`
  MODIFY `id_categoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `produtos`
--
ALTER TABLE `produtos`
  MODIFY `id_prod` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `produtos`
--
ALTER TABLE `produtos`
  ADD CONSTRAINT `FK_produtos_2` FOREIGN KEY (`fk_categoria_id_categoria`) REFERENCES `categoria` (`id_categoria`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
