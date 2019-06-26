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

-- Copiando estrutura para tabela datawarehouse.fato_crime_area_escola
CREATE TABLE IF NOT EXISTS `fato_crime_area_escola` (
  `total_crime` float DEFAULT NULL,
  `porcentagem_crime` float DEFAULT NULL,
  `dim_conduta_id_dim_conduta` int(11) NOT NULL,
  `dim_escola_id_dim_escola` int(11) NOT NULL,
  `dim_sexo_id_dim_sexo` int(11) NOT NULL,
  `dim_quadra_id_dim_quadra` int(11) NOT NULL,
  `id_dim_tempo_id_dim_conduta` int(11) NOT NULL,
  `id_dim_periodo` int(11) NOT NULL,
  `dim_dependencia_id_dim_dependencia` int(11) NOT NULL,
  `dim_ocorrencia_id_dim_ocorrencia` int(11) NOT NULL,
  `dim_municipio_id_dim_municipio` int(11) NOT NULL,
  `dim_zona_id_dim_zona` int(11) NOT NULL,
  `dim_cor_cutis_id_dim_cor_cutis` int(11) NOT NULL,
  PRIMARY KEY (`dim_conduta_id_dim_conduta`,`dim_escola_id_dim_escola`,`dim_sexo_id_dim_sexo`,`dim_quadra_id_dim_quadra`,`id_dim_tempo_id_dim_conduta`,`id_dim_periodo`,`dim_dependencia_id_dim_dependencia`,`dim_ocorrencia_id_dim_ocorrencia`,`dim_municipio_id_dim_municipio`,`dim_zona_id_dim_zona`,`dim_cor_cutis_id_dim_cor_cutis`),
  KEY `fk_fato_crime_area_escola_dim_escola1` (`dim_escola_id_dim_escola`),
  KEY `fk_fato_crime_area_escola_dim_sexo1` (`dim_sexo_id_dim_sexo`),
  KEY `fk_fato_crime_area_escola_dim_quadra1` (`dim_quadra_id_dim_quadra`),
  KEY `fk_fato_crime_area_escola_id_dim_tempo1` (`id_dim_tempo_id_dim_conduta`),
  KEY `fk_fato_crime_area_escola_dim_periodo` (`id_dim_periodo`),
  KEY `fk_fato_crime_area_escola_dim_dependencia1` (`dim_dependencia_id_dim_dependencia`),
  KEY `fk_fato_crime_area_escola_dim_ocorrencia1` (`dim_ocorrencia_id_dim_ocorrencia`),
  KEY `fk_fato_crime_area_escola_dim_municipio1` (`dim_municipio_id_dim_municipio`),
  KEY `fk_fato_crime_area_escola_dim_zona1` (`dim_zona_id_dim_zona`),
  KEY `fk_fato_crime_area_escola_dim_cor_cutis1` (`dim_cor_cutis_id_dim_cor_cutis`),
  CONSTRAINT `fk_fato_crime_area_escola_dim_conduta` FOREIGN KEY (`dim_conduta_id_dim_conduta`) REFERENCES `dim_conduta` (`id_dim_conduta`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_fato_crime_area_escola_dim_cor_cutis1` FOREIGN KEY (`dim_cor_cutis_id_dim_cor_cutis`) REFERENCES `dim_cor_cutis` (`id_dim_cor_cutis`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_fato_crime_area_escola_dim_dependencia1` FOREIGN KEY (`dim_dependencia_id_dim_dependencia`) REFERENCES `dim_dependencia` (`id_dim_dependencia`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_fato_crime_area_escola_dim_escola1` FOREIGN KEY (`dim_escola_id_dim_escola`) REFERENCES `dim_escola` (`id_dim_escola`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_fato_crime_area_escola_dim_municipio1` FOREIGN KEY (`dim_municipio_id_dim_municipio`) REFERENCES `dim_municipio` (`id_dim_municipio`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_fato_crime_area_escola_dim_ocorrencia1` FOREIGN KEY (`dim_ocorrencia_id_dim_ocorrencia`) REFERENCES `dim_ocorrencia` (`id_dim_ocorrencia`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_fato_crime_area_escola_dim_periodo` FOREIGN KEY (`id_dim_periodo`) REFERENCES `dim_periodo` (`id_dim_periodo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_fato_crime_area_escola_dim_quadra1` FOREIGN KEY (`dim_quadra_id_dim_quadra`) REFERENCES `dim_quadra` (`id_dim_quadra`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_fato_crime_area_escola_dim_sexo1` FOREIGN KEY (`dim_sexo_id_dim_sexo`) REFERENCES `dim_sexo` (`id_dim_sexo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_fato_crime_area_escola_dim_zona1` FOREIGN KEY (`dim_zona_id_dim_zona`) REFERENCES `dim_zona` (`id_dim_zona`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_fato_crime_area_escola_id_dim_tempo1` FOREIGN KEY (`id_dim_tempo_id_dim_conduta`) REFERENCES `dim_tempo` (`id_dim_tempo`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Exportação de dados foi desmarcado.
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
