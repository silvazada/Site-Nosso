-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 30-Maio-2023 às 12:38
-- Versão do servidor: 10.4.28-MariaDB
-- versão do PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `ceudebrigadeiro`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `cadastros`
--

CREATE TABLE `cadastros` (
  `id_cadastro` int(11) NOT NULL,
  `CPF` varchar(11) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Usuario` varchar(255) NOT NULL,
  `CEP` varchar(8) NOT NULL,
  `Senha` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Extraindo dados da tabela `cadastros`
--

INSERT INTO `cadastros` (`id_cadastro`, `CPF`, `Email`, `Usuario`, `CEP`, `Senha`) VALUES
(10, '11111111111', 'gabieldaluzandrade@gmail.com', 'iago', '89206500', '123');

-- --------------------------------------------------------

--
-- Estrutura da tabela `produtos`
--

CREATE TABLE `produtos` (
  `id_prod` int(11) NOT NULL,
  `nome_prod` varchar(255) NOT NULL,
  `fabricante_prod` varchar(255) NOT NULL,
  `validade_prod` varchar(255) NOT NULL,
  `desc_prod` varchar(255) NOT NULL,
  `valor_prod` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Extraindo dados da tabela `produtos`
--

INSERT INTO `produtos` (`id_prod`, `nome_prod`, `fabricante_prod`, `validade_prod`, `desc_prod`, `valor_prod`) VALUES
(1, 'Milkshake de Morango', 'Céu de Brigadeiro', '18/07/2023', 'Milkshake de morango batido', 'R$13,00'),
(2, 'Milkshake de Chocolate', 'Céu de Brigadeiro', '18/07/2023', 'Milkshake de chocolate batido', 'R$13,00'),
(3, 'Milkshake de Ovomaltine', 'Céu de Brigadeiro', '18/07/2023', 'Milkshake de chocolate com ovomaltine batido', 'R$15,00'),
(4, 'Milkshake de Paçoca', 'Céu de Brigadeiro', '18/07/2023', 'Milkshake de baunilha com paçoca batido', 'R$15,00'),
(5, 'Bolo de Pote de Banana', 'Céu de Brigadeiro', '18/06/2023', 'Bolo de Pote Feito Com Massa de Bolo e Pedaços de Banana', 'R$10,00'),
(6, 'Bolo de Pote de Sensação', 'Céu de Brigadeiro', '18/06/2023', 'Bolo de Pote Sabor Sensação', 'R$10,00'),
(7, 'Bolo de Pote de Maracujá', 'Céu de Brigadeiro', '18/06/2023', 'Bolo de Pote Feito Com Massa de Bolo e Pedaços de Maracujá', 'R$15,00'),
(9, 'Bolo de Pote de Leite Ninho', 'Céu de Brigadeiro', '18/06/2023', 'Bolo de Pote Feito Com Massa de Bolo e Leite Ninho', 'R$15,00'),
(10, 'Trufa de Pão de Mel', 'Céu de Brigadeiro', '20/06/2023', 'Trufa recheada com pão de mel', 'R$3,00'),
(11, 'Trufa de Maracujá', 'Céu de Brigadeiro', '20/06/2023', 'Trufa recheada com maracujá', 'R$3,00'),
(12, 'Trufa de Cupuaçu', 'Céu de Brigadeiro', '20/06/2023', 'Trufa recheada com cupuaçu', 'R$5,00'),
(13, 'Trufa de Limão', 'Céu de Brigadeiro', '20/06/2023', 'Trufa recheada com limão', 'R$5,00');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `cadastros`
--
ALTER TABLE `cadastros`
  ADD PRIMARY KEY (`id_cadastro`);

--
-- Índices para tabela `produtos`
--
ALTER TABLE `produtos`
  ADD PRIMARY KEY (`id_prod`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `cadastros`
--
ALTER TABLE `cadastros`
  MODIFY `id_cadastro` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `produtos`
--
ALTER TABLE `produtos`
  MODIFY `id_prod` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
