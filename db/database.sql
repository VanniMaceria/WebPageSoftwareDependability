CREATE DATABASE  IF NOT EXISTS `rowandb` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `rowandb`;
-- MySQL dump 10.13  Distrib 8.0.27, for Win64 (x86_64)
--
-- Host: localhost    Database: rowandb
-- ------------------------------------------------------
-- Server version	8.0.27

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `appartenenza`
--

DROP TABLE IF EXISTS `appartenenza`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `appartenenza` (
  `PkmnID` int DEFAULT NULL,
  `nomeRegione` varchar(15) DEFAULT NULL,
  KEY `PkmnID` (`PkmnID`),
  KEY `nomeRegione` (`nomeRegione`),
  CONSTRAINT `appartenenza_ibfk_1` FOREIGN KEY (`PkmnID`) REFERENCES `pokemon` (`ID`) ON UPDATE CASCADE,
  CONSTRAINT `appartenenza_ibfk_2` FOREIGN KEY (`nomeRegione`) REFERENCES `regione` (`nome`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `appartenenza`
--

LOCK TABLES `appartenenza` WRITE;
/*!40000 ALTER TABLE `appartenenza` DISABLE KEYS */;
/*!40000 ALTER TABLE `appartenenza` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pokemon`
--

DROP TABLE IF EXISTS `pokemon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pokemon` (
  `ID` int NOT NULL,
  `nome` varchar(30) NOT NULL,
  `tipo1` varchar(15) NOT NULL,
  `tipo2` varchar(15) DEFAULT NULL,
  `categoria` varchar(40) NOT NULL,
  `altezza` float DEFAULT NULL,
  `peso` float DEFAULT NULL,
  `abilita1` varchar(30) NOT NULL,
  `abilita2` varchar(30) DEFAULT NULL,
  `descrizione` varchar(1000) NOT NULL,
  `linkImmagine` varchar(200) NOT NULL,
  `linkImmagineShiny` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pokemon`
--

LOCK TABLES `pokemon` WRITE;
/*!40000 ALTER TABLE `pokemon` DISABLE KEYS */;
INSERT INTO `pokemon` VALUES (1,'Bulbasaur','Erba','Veleno','Seme',0.7,6.9,'Erbaiuto','Clorofilla','Fin dalla nascita questo Pokémon ha sulla schiena un seme che cresce lentamente. Appena nato, trae nutrimento dalle sostanze contenute nel seme sul dorso.','/Immagini/Pokemon/001_Bulbasaur.png','/Immagini/PokemonShiny/001_BulbasaurShiny.jpg'),(2,'Ivysaur','Erba','Veleno','Seme',1,13,'Erbaiuto','Clorofilla','Il bulbo sulla schiena è cresciuto così tanto da impedirgli di alzarsi in piedi sulle zampe posteriori. L\'esposizione alla luce solare lo rafforza e fa crescere il bocciolo che ha sul dorso.','/Immagini/Pokemon/002_Ivysaur.png','/Immagini/PokemonShiny/002_IvysaurShiny.png'),(3,'Venusar','Erba','Veleno','Seme',2,100,'Erbaiuto','Clorofilla','Il fiore sboccia assorbendo energia solare. Si muove continuamente in cerca di luce. Il suo fiore emana una fragranza inebriante capace di placare l\'animo di chi è impegnato nella lotta.','/Immagini/Pokemon/003_Venusaur.png','/Immagini/PokemonShiny/003_VenusaurShiny.png'),(4,'Charmander','Fuoco',NULL,'Lucertola',0.6,8.5,'Aiutofuoco','Solarpotere','Ama le cose calde. Si dice che quando piove gli esca vapore dalla punta della coda. Una fiamma gli arde sulla punta della coda fin dalla nascita. Se si spegnesse, per lui sarebbe la fine.','/Immagini/Pokemon/004_Charmander.png','/Immagini/PokemonShiny/004_CharmanderShiny.png'),(5,'Charmeleon','Fuoco',NULL,'Fiamma',1.1,19,'Aiutofuoco','Solarpotere','Ha un\'indole feroce. Usa la coda fiammeggiante come una frusta e lacera l\'avversario con gli artigli affilati. Se s\'infervora nella lotta, sputa potenti fiamme che inceneriscono l\'area circostante.','/Immagini/Pokemon/005_Charmeleon.png','/Immagini/PokemonShiny/005_CharmeleonShiny.png'),(6,'Charizard','Fuoco','Volante','Fiamma',1.7,90.5,'Aiutofuoco','Solarpotere','Sputa fiamme incandescenti in grado di fondere le rocce. A volte causa incendi boschivi. Grazie alle possenti ali può volare fino a 1.400 m d\'altezza. Le fiamme che sputa possono raggiungere temperature altissime.','/Immagini/Pokemon/006_Charizard.png','/Immagini/PokemonShiny/006_CharizardShiny.png'),(7,'Squirtle','Acqua',NULL,'Tartaghina',0.5,9,'Acquaiuto','Copripioggia','Quando ritrae il lungo collo dentro la corazza sputa un vigoroso getto d\'acqua. Se si sente minacciato, ritira le zampe nel guscio e inizia a spruzzare acqua dalla bocca.','/Immagini/Pokemon/007_Squirtle.png','/Immagini/PokemonShiny/007_SquirtleShiny.png'),(8,'Wartortle','Acqua',NULL,'Tartaruga',1,22.5,'Acquaiuto','Copripioggia','È considerato un simbolo di longevità. Se c\'è del muschio sul suo guscio, significa che è molto anziano. Controlla abilmente le orecchie e la coda coperte di pelo, mantenendo l\'assetto mentre nuota.','/Immagini/Pokemon/008_Wartortle.png','/Immagini/PokemonShiny/008_WartortleShiny.png'),(9,'Blastoise','Acqua',NULL,'Crostaceo',1.6,85.5,'Acquaiuto','Copripioggia','Mette KO gli avversari schiacciandoli sotto il corpo possente. Se è in difficoltà, può ritrarsi nella corazza. I cannoni sul suo guscio sparano getti d\'acqua capaci di bucare l\'acciaio.','/Immagini/Pokemon/009_Blastoise.png','/Immagini/PokemonShiny/009_BlastoiseShiny.png'),(10,'Caterpie','Coleottero',NULL,'Baco',0.3,2.9,'Polvoscudo','Fugafacile','Per proteggersi emette un puzzo terribile dalle antenne sul capo, con cui tiene lontani i nemici. Le ventose sulle sue corte zampe gli permettono di affrontare ogni salita e di scalare senza fatica qualsiasi muro.','/Immagini/Pokemon/010_Caterpie.png','/Immagini/PokemonShiny/010_CaterpieShiny.png'),(11,'Metapod','Coleottero',NULL,'Bozzolo',0.7,9.9,'Muta',NULL,'In attesa di evolversi, l\'unica cosa che può fare è indurire la sua corazza, quindi rimane immobile per evitare di essere attaccato. La corazza esterna è robusta ma l\'interno è molle. Per questo non è in grado di resistere ad attacchi particolarmente veementi.','/Immagini/Pokemon/011_Metapod.png','/Immagini/PokemonShiny/011_MetapodShiny.png'),(12,'Butterfree','Coleottero','Volante','Farfalla',1.1,32,'Insettocchi','Lentifumé','Sbatte le ali a gran velocità per liberare le sue polveri tossiche nell\'aria. Raccoglie nettare tutti i giorni e lo spalma sulla peluria che ricopre le sue zampe per trasportarlo al nido.','/Immagini/Pokemon/012_Butterfree.png','/Immagini/PokemonShiny/012_ButterfreeShiny.png'),(13,'Weedle','Coleottero','Veleno','Millepiedi',0.3,3.2,'Polvoscudo','Fugafacile','Ha un pungiglione acuminato sul capo. Vive tra l\'erba alta e nei boschi, dove si nutre di foglie.','/Immagini/Pokemon/013_Weedle.png','/Immagini/PokemonShiny/013_WeedleShiny.png'),(14,'Kakuna','Coleottero','Veleno','Bozzolo',0.6,10,'Muta',NULL,'È molto limitato nei movimenti. Se si sente minacciato, estrae il pungiglione e avvelena il nemico.','/Immagini/Pokemon/014_Kakuna.png','/Immagini/PokemonShiny/014_KakunaShiny.png'),(15,'Beedrill','Coleottero','Veleno','Velenape',1,29.5,'Aiutinsetto','Cecchino','Possiede tre aculei velenosi, due sulle zampe anteriori e uno sull\'addome, con cui punge ripetutamente i nemici.','/Immagini/Pokemon/015_Beedrill.png','/Immagini/PokemonShiny/015_BeedrillShiny.png'),(16,'Pidgey','Normale','Volante','Uccellino',0.3,1.8,'Sguardofermo','Intricopiedi','Di indole docile, preferisce gettare sabbia verso il nemico per proteggersi piuttosto che attaccarlo.','/Immagini/Pokemon/016_Pidgey.png','/Immagini/PokemonShiny/016_PidgeyShiny.png'),(17,'Pidgeotto','Normale','Volante','Uccello',1.1,30,'Sguardofermo','Intricopiedi','Un Pokémon pieno di vitalità che vola instancabile sul suo territorio in cerca di prede.','/Immagini/Pokemon/017_Pidgeotto.png','/Immagini/PokemonShiny/017_PidgeottoShiny.png'),(18,'Pidgeot','Normale','Volante','Uccello',1.5,39.5,'Sguardofermo','Intricopiedi','Può volare a una velocità di Mach 2 in cerca di prede. I suoi artigli sono armi micidiali.','/Immagini/Pokemon/018_Pidgeot.png','/Immagini/PokemonShiny/018_PidgeotShiny.png');
/*!40000 ALTER TABLE `pokemon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `regione`
--

DROP TABLE IF EXISTS `regione`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `regione` (
  `nome` varchar(15) NOT NULL,
  `numPkmn` int NOT NULL,
  `giochi` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`nome`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `regione`
--

LOCK TABLES `regione` WRITE;
/*!40000 ALTER TABLE `regione` DISABLE KEYS */;
/*!40000 ALTER TABLE `regione` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-11-19 22:52:01
