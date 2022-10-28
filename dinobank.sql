-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 02-Set-2022 às 03:30
-- Versão do servidor: 10.4.24-MariaDB
-- versão do PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `dinobank`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(255) NOT NULL,
  `email` varchar(100) CHARACTER SET utf8 NOT NULL,
  `nome` varchar(100) CHARACTER SET utf8 NOT NULL,
  `conta` varchar(50) CHARACTER SET utf8 NOT NULL,
  `telefone` varchar(100) CHARACTER SET utf8 NOT NULL,
  `cpf` varchar(50) CHARACTER SET utf8 NOT NULL,
  `endereco` varchar(500) CHARACTER SET utf8 NOT NULL,
  `senha` varchar(100) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `usuarios`
--

INSERT INTO `usuarios` (`id`, `email`, `nome`, `conta`, `telefone`, `cpf`, `endereco`, `senha`) VALUES
(1, 'mateus@gmail.com', 'Mateus Rodrigues de Oliveira', '00001-1', '40028922', '12345678900', 'Rua das Bananas, 123', '123'),
(2, 'fernando@gmail.com', 'Fernando Moraes', '00002-1', '23498273482', '812618271281', 'Rua Itu, 123', '190');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
