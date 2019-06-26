-- --------------------------------------------------------
-- Servidor:                     127.0.0.1
-- Versão do servidor:           10.1.38-MariaDB - mariadb.org binary distribution
-- OS do Servidor:               Win64
-- HeidiSQL Versão:              10.1.0.5464
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Copiando estrutura para tabela datawarehouse.dim_tempo
CREATE TABLE IF NOT EXISTS `dim_tempo` (
  `id_dim_tempo` int(11) NOT NULL AUTO_INCREMENT,
  `cod_ID_TEMPO` int(11) DEFAULT NULL,
  `version` int(11) DEFAULT NULL,
  `date_from` datetime DEFAULT NULL,
  `date_to` datetime DEFAULT NULL,
  `DIA_MES` int(11) DEFAULT NULL,
  `MES_NUMERO` int(11) DEFAULT NULL,
  `MES_NOME` varchar(20) DEFAULT NULL,
  `DIA_SEMANA_NUMERO` int(11) DEFAULT NULL,
  `DIA_SEMANA_NOME` varchar(20) DEFAULT NULL,
  `SEMANA_ANO` int(11) DEFAULT NULL,
  `DIA_ANO` int(11) DEFAULT NULL,
  `ANO` int(11) DEFAULT NULL,
  `HORA` int(11) DEFAULT NULL,
  `MINUTOS` int(11) DEFAULT NULL,
  `SEGUNDOS` int(11) DEFAULT NULL,
  `HORA_COMPLETA` time DEFAULT NULL,
  `PERIODO` varchar(50) DEFAULT NULL,
  `TRIMESTRE_NUMERO` int(11) DEFAULT NULL,
  `TRIMESTRE_NOME` varchar(20) DEFAULT NULL,
  `SEMESTRE_NUMERO` int(11) DEFAULT NULL,
  `SEMESTRE_NOME` varchar(20) DEFAULT NULL,
  `DATA_BR` varchar(20) DEFAULT NULL,
  `TIMESTAMP` datetime DEFAULT NULL,
  PRIMARY KEY (`id_dim_tempo`)
) ENGINE=InnoDB AUTO_INCREMENT=10002 DEFAULT CHARSET=utf8;

-- Exportação de dados foi desmarcado.
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
