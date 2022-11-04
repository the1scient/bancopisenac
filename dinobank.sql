-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 04-Nov-2022 às 02:17
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
  `cpf` varchar(50) CHARACTER SET utf8 NOT NULL,
  `endereco` varchar(500) CHARACTER SET utf8 NOT NULL,
  `senha` varchar(100) CHARACTER SET utf8 NOT NULL,
  `conta_tipo` enum('poupanca','corrente') NOT NULL DEFAULT 'poupanca',
  `saldo` double(12,2) NOT NULL DEFAULT 0.00
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `usuarios`
--

INSERT INTO `usuarios` (`id`, `email`, `nome`, `conta`, `cpf`, `endereco`, `senha`, `conta_tipo`, `saldo`) VALUES
(1, 'guilherme@gmail.com', 'Guilherme Fabbri', '00001-1', '12345678900', 'Rua das Bananas, 123', '202cb962ac59075b964b07152d234b70', 'poupanca', 999.00),
(2, 'pedro@gmail.com', 'Pedro Regado', '00002-1', '81261827128', 'Rua Itu, 123', 'cfecdb276f634854f3ef915e2e980c31', 'poupanca', 10.00),
(3, 'mateus.mrdo24@gmail.com', 'Mateus Rodrigues de Oliveira', '', '24696924601', 'Avenida dos Travecos, 157', 'f9abb23c8c32ee1e7e6d62c185ffedfa', 'poupanca', 0.00),
(4, 'anamacedo@gmail.com', 'Ana Beatriz', '', '50250075877', 'Avenida dos Travecos 12', 'd34bf12d54dc4c2a57bc34384bfd976c', 'poupanca', 234567890.00),
(5, 'marina2020@gmail.com', 'marina da silva neto', '', '25843942813', 'rua da delicias', 'd34bf12d54dc4c2a57bc34384bfd976c', 'poupanca', 678967890.00),
(6, 'fernando@gmail.com', 'Fernando Moraes', '', '11111111111', 'Avenida asdsadsa', '202cb962ac59075b964b07152d234b70', 'poupanca', 0.00),
(7, 'rafaelronaldo@gmail.com', 'Rafael dos Santos', '', '48397729836', 'Avenida dos Travecos 123', 'd34bf12d54dc4c2a57bc34384bfd976c', 'poupanca', 11111110.00);

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarios_telefones`
--

CREATE TABLE `usuarios_telefones` (
  `id_usuario` int(255) NOT NULL,
  `telefone` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `usuarios_telefones`
--

INSERT INTO `usuarios_telefones` (`id_usuario`, `telefone`) VALUES
(1, '11960337050'),
(2, '11967246656');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `usuarios_telefones`
--
ALTER TABLE `usuarios_telefones`
  ADD UNIQUE KEY `id_usuario` (`id_usuario`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
