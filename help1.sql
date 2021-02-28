-- MySQL dump 10.13  Distrib 5.7.33, for Linux (x86_64)
--
-- Host: localhost    Database: mysql
-- ------------------------------------------------------
-- Server version	5.7.33-0ubuntu0.18.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `help_keyword`
--

DROP TABLE IF EXISTS `help_keyword`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `help_keyword` (
  `help_keyword_id` int(10) unsigned NOT NULL,
  `name` char(64) NOT NULL,
  PRIMARY KEY (`help_keyword_id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 STATS_PERSISTENT=0 COMMENT='help keywords';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `help_keyword`
--

LOCK TABLES `help_keyword` WRITE;
/*!40000 ALTER TABLE `help_keyword` DISABLE KEYS */;
INSERT INTO `help_keyword` VALUES (282,'(JSON'),(283,'->'),(285,'->>'),(52,'<>'),(620,'ACCOUNT'),(415,'ACTION'),(46,'ADD'),(108,'AES_DECRYPT'),(109,'AES_ENCRYPT'),(347,'AFTER'),(97,'AGAINST'),(652,'AGGREGATE'),(348,'ALGORITHM'),(482,'ALL'),(47,'ALTER'),(6,'ANALYSE'),(349,'ANALYZE'),(56,'AND'),(319,'ANY_VALUE'),(416,'ARCHIVE'),(216,'AREA'),(483,'AS'),(181,'ASBINARY'),(310,'ASC'),(183,'ASTEXT'),(182,'ASWKB'),(184,'ASWKT'),(404,'AT'),(508,'AUTOCOMMIT'),(440,'AUTOEXTEND_SIZE'),(350,'AUTO_INCREMENT'),(351,'AVG_ROW_LENGTH'),(536,'BEFORE'),(509,'BEGIN'),(57,'BETWEEN'),(74,'BIGINT'),(104,'BINARY'),(677,'BINLOG'),(14,'BOOL'),(15,'BOOLEAN'),(68,'BOTH'),(408,'BTREE'),(231,'BUFFER'),(311,'BY'),(39,'BYTE'),(8,'CACHE'),(448,'CALL'),(417,'CASCADE'),(59,'CASE'),(600,'CATALOG_NAME'),(77,'CEIL'),(78,'CEILING'),(217,'CENTROID'),(510,'CHAIN'),(352,'CHANGE'),(541,'CHANNEL'),(40,'CHAR'),(36,'CHARACTER'),(660,'CHARSET'),(353,'CHECK'),(354,'CHECKSUM'),(621,'CIPHER'),(601,'CLASS_ORIGIN'),(633,'CLIENT'),(454,'CLOSE'),(355,'COALESCE'),(680,'CODE'),(320,'COLLATE'),(662,'COLLATION'),(356,'COLUMN'),(357,'COLUMNS'),(602,'COLUMN_NAME'),(328,'COMMENT'),(511,'COMMIT'),(525,'COMMITTED'),(418,'COMPACT'),(329,'COMPLETION'),(419,'COMPRESSED'),(358,'COMPRESSION'),(468,'CONCURRENT'),(596,'CONDITION'),(359,'CONNECTION'),(512,'CONSISTENT'),(360,'CONSTRAINT'),(603,'CONSTRAINT_CATALOG'),(604,'CONSTRAINT_NAME'),(605,'CONSTRAINT_SCHEMA'),(259,'CONTAINS'),(597,'CONTINUE'),(103,'CONVERT'),(232,'CONVEXHULL'),(309,'COUNT'),(48,'CREATE'),(307,'CREATE_DH_PARAMETERS'),(501,'CROSS'),(240,'CROSSES'),(420,'CSV'),(330,'CURRENT_USER'),(594,'CURSOR'),(606,'CURSOR_NAME'),(321,'DATA'),(322,'DATABASE'),(663,'DATABASES'),(399,'DATAFILE'),(33,'DATE'),(105,'DATETIME'),(81,'DATE_ADD'),(82,'DATE_SUB'),(83,'DAY'),(84,'DAY_HOUR'),(85,'DAY_MINUTE'),(86,'DAY_SECOND'),(584,'DEALLOCATE'),(25,'DEC'),(28,'DECIMAL'),(585,'DECLARE'),(2,'DEFAULT'),(575,'DEFAULT_AUTH'),(331,'DEFINER'),(461,'DELAYED'),(361,'DELAY_KEY_WRITE'),(421,'DELETE'),(312,'DESC'),(695,'DESCRIBE'),(685,'DES_KEY_FILE'),(607,'DIAGNOSTICS'),(189,'DIMENSION'),(323,'DIRECTORY'),(332,'DISABLE'),(362,'DISCARD'),(260,'DISJOINT'),(241,'DISTANCE'),(308,'DISTINCT'),(484,'DISTINCTROW'),(333,'DO'),(363,'DROP'),(500,'DUAL'),(485,'DUMPFILE'),(462,'DUPLICATE'),(422,'DYNAMIC'),(60,'ELSE'),(586,'ELSEIF'),(334,'ENABLE'),(469,'ENCLOSED'),(364,'ENCRYPTION'),(61,'END'),(205,'ENDPOINT'),(405,'ENDS'),(365,'ENGINE'),(664,'ENGINES'),(190,'ENVELOPE'),(261,'EQUALS'),(686,'ERROR'),(665,'ERRORS'),(72,'ESCAPE'),(470,'ESCAPED'),(335,'EVENT'),(678,'EVENTS'),(406,'EVERY'),(366,'EXCHANGE'),(583,'EXECUTE'),(403,'EXISTS'),(598,'EXIT'),(98,'EXPANSION'),(622,'EXPIRE'),(696,'EXPLAIN'),(687,'EXPORT'),(650,'EXTENDED'),(441,'EXTENT_SIZE'),(218,'EXTERIORRING'),(284,'EXTRACTION)'),(12,'FALSE'),(648,'FAST'),(423,'FEDERATED'),(595,'FETCH'),(471,'FIELDS'),(634,'FILE'),(442,'FILE_BLOCK_SIZE'),(565,'FILTER'),(367,'FIRST'),(26,'FIXED'),(29,'FLOAT4'),(30,'FLOAT8'),(75,'FLOOR'),(9,'FLUSH'),(486,'FOR'),(502,'FORCE'),(368,'FOREIGN'),(697,'FORMAT'),(69,'FROM'),(424,'FULL'),(369,'FULLTEXT'),(341,'FUNCTION'),(688,'GENERAL'),(114,'GEOMCOLLFROMTEXT'),(144,'GEOMCOLLFROMWKB'),(174,'GEOMETRYCOLLECTION'),(115,'GEOMETRYCOLLECTIONFROMTEXT'),(145,'GEOMETRYCOLLECTIONFROMWKB'),(116,'GEOMETRYFROMTEXT'),(146,'GEOMETRYFROMWKB'),(227,'GEOMETRYN'),(191,'GEOMETRYTYPE'),(117,'GEOMFROMTEXT'),(147,'GEOMFROMWKB'),(608,'GET'),(206,'GLENGTH'),(526,'GLOBAL'),(635,'GRANT'),(666,'GRANTS'),(343,'GROUP'),(455,'HANDLER'),(487,'HAVING'),(425,'HEAP'),(5,'HELP'),(0,'HELP_DATE'),(1,'HELP_VERSION'),(463,'HIGH_PRIORITY'),(409,'HOST'),(667,'HOSTS'),(87,'HOUR'),(88,'HOUR_MINUTE'),(89,'HOUR_SECOND'),(480,'IDENTIFIED'),(64,'IF'),(464,'IGNORE'),(542,'IGNORE_SERVER_IDS'),(370,'IMPORT'),(99,'IN'),(49,'INDEX'),(668,'INDEXES'),(472,'INFILE'),(400,'INITIAL_SIZE'),(286,'INLINE'),(503,'INNER'),(426,'INNODB'),(65,'INSERT'),(371,'INSERT_METHOD'),(656,'INSTALL'),(342,'INSTANCE'),(16,'INT1'),(19,'INT2'),(20,'INT3'),(22,'INT4'),(24,'INT8'),(23,'INTEGER'),(219,'INTERIORRINGN'),(262,'INTERSECTS'),(90,'INTERVAL'),(465,'INTO'),(576,'IO_THREAD'),(53,'IS'),(207,'ISCLOSED'),(192,'ISEMPTY'),(527,'ISOLATION'),(193,'ISSIMPLE'),(623,'ISSUER'),(587,'ITERATE'),(488,'JOIN'),(106,'JSON'),(290,'JSON_APPEND'),(276,'JSON_ARRAY'),(315,'JSON_ARRAYAGG'),(291,'JSON_ARRAY_APPEND'),(292,'JSON_ARRAY_INSERT'),(279,'JSON_CONTAINS'),(280,'JSON_CONTAINS_PATH'),(301,'JSON_DEPTH'),(281,'JSON_EXTRACT'),(293,'JSON_INSERT'),(288,'JSON_KEYS'),(302,'JSON_LENGTH'),(294,'JSON_MERGE'),(295,'JSON_MERGE_PATCH'),(296,'JSON_MERGE_PRESERVE'),(277,'JSON_OBJECT'),(316,'JSON_OBJECTAGG'),(305,'JSON_PRETTY'),(278,'JSON_QUOTE'),(297,'JSON_REMOVE'),(298,'JSON_REPLACE'),(289,'JSON_SEARCH'),(299,'JSON_SET'),(306,'JSON_STORAGE_SIZE'),(303,'JSON_TYPE'),(300,'JSON_UNQUOTE'),(304,'JSON_VALID'),(50,'KEY'),(372,'KEYS'),(373,'KEY_BLOCK_SIZE'),(693,'KILL'),(456,'LAST'),(70,'LEADING'),(588,'LEAVE'),(694,'LEAVES'),(504,'LEFT'),(528,'LEVEL'),(66,'LIKE'),(449,'LIMIT'),(118,'LINEFROMTEXT'),(148,'LINEFROMWKB'),(473,'LINES'),(175,'LINESTRING'),(119,'LINESTRINGFROMTEXT'),(149,'LINESTRINGFROMWKB'),(474,'LOAD'),(475,'LOCAL'),(374,'LOCK'),(344,'LOGFILE'),(537,'LOGS'),(44,'LONG'),(45,'LONGBINARY'),(589,'LOOP'),(450,'LOW_PRIORITY'),(538,'MASTER'),(543,'MASTER_AUTO_POSITION'),(544,'MASTER_BIND'),(545,'MASTER_CONNECT_RETRY'),(546,'MASTER_HEARTBEAT_PERIOD'),(547,'MASTER_HOST'),(548,'MASTER_LOG_FILE'),(549,'MASTER_LOG_POS'),(550,'MASTER_PASSWORD'),(551,'MASTER_PORT'),(552,'MASTER_RETRY_COUNT'),(553,'MASTER_SSL'),(554,'MASTER_SSL_CA'),(555,'MASTER_SSL_CERT'),(556,'MASTER_SSL_CIPHER'),(557,'MASTER_SSL_CRL'),(558,'MASTER_SSL_CRLPATH'),(559,'MASTER_SSL_KEY'),(560,'MASTER_SSL_VERIFY_SERVER_CERT'),(561,'MASTER_TLS_VERSION'),(562,'MASTER_USER'),(100,'MATCH'),(624,'MAX_CONNECTIONS_PER_HOUR'),(625,'MAX_QUERIES_PER_HOUR'),(375,'MAX_ROWS'),(443,'MAX_SIZE'),(626,'MAX_UPDATES_PER_HOUR'),(627,'MAX_USER_CONNECTIONS'),(252,'MBRCONTAINS'),(253,'MBRDISJOINT'),(254,'MBREQUAL'),(255,'MBRINTERSECTS'),(256,'MBROVERLAPS'),(257,'MBRTOUCHES'),(258,'MBRWITHIN'),(649,'MEDIUM'),(489,'MEMORY'),(427,'MERGE'),(609,'MESSAGE_TEXT'),(21,'MIDDLEINT'),(91,'MINUTE'),(92,'MINUTE_SECOND'),(376,'MIN_ROWS'),(120,'MLINEFROMTEXT'),(150,'MLINEFROMWKB'),(76,'MOD'),(101,'MODE'),(377,'MODIFY'),(93,'MONTH'),(122,'MPOINTFROMTEXT'),(152,'MPOINTFROMWKB'),(124,'MPOLYFROMTEXT'),(154,'MPOLYFROMWKB'),(428,'MRG_MYISAM'),(176,'MULTILINESTRING'),(121,'MULTILINESTRINGFROMTEXT'),(151,'MULTILINESTRINGFROMWKB'),(177,'MULTIPOINT'),(123,'MULTIPOINTFROMTEXT'),(153,'MULTIPOINTFROMWKB'),(178,'MULTIPOLYGON'),(125,'MULTIPOLYGONFROMTEXT'),(155,'MULTIPOLYGONFROMWKB'),(669,'MUTEX'),(429,'MYISAM'),(610,'MYSQL_ERRNO'),(324,'NAME'),(661,'NAMES'),(37,'NATIONAL'),(505,'NATURAL'),(38,'NCHAR'),(430,'NDB'),(431,'NDBCLUSTER'),(628,'NEVER'),(457,'NEXT'),(432,'NO'),(444,'NODEGROUP'),(636,'NONE'),(54,'NOT'),(647,'NO_WRITE_TO_BINLOG'),(55,'NULL'),(611,'NUMBER'),(27,'NUMERIC'),(228,'NUMGEOMETRIES'),(220,'NUMINTERIORRINGS'),(208,'NUMPOINTS'),(41,'NVARCHAR'),(490,'OFFSET'),(336,'ON'),(513,'ONLY'),(458,'OPEN'),(378,'OPTIMIZE'),(689,'OPTIMIZER_COSTS'),(637,'OPTION'),(476,'OPTIONALLY'),(345,'OPTIONS'),(58,'OR'),(313,'ORDER'),(506,'OUTER'),(491,'OUTFILE'),(263,'OVERLAPS'),(410,'OWNER'),(379,'PACK_KEYS'),(380,'PARSER'),(433,'PARTIAL'),(381,'PARTITION'),(382,'PARTITIONING'),(698,'PARTITIONS'),(383,'PASSWORD'),(287,'PATH)'),(657,'PLUGIN'),(681,'PLUGINS'),(577,'PLUGIN_DIR'),(179,'POINT'),(126,'POINTFROMTEXT'),(156,'POINTFROMWKB'),(209,'POINTN'),(127,'POLYFROMTEXT'),(157,'POLYFROMWKB'),(180,'POLYGON'),(128,'POLYGONFROMTEXT'),(158,'POLYGONFROMWKB'),(411,'PORT'),(79,'POW'),(80,'POWER'),(31,'PRECISION'),(533,'PREPARE'),(337,'PRESERVE'),(459,'PREV'),(384,'PRIMARY'),(638,'PRIVILEGES'),(7,'PROCEDURE'),(639,'PROCESS'),(670,'PROCESSLIST'),(682,'PROFILE'),(683,'PROFILES'),(645,'PROXY'),(539,'PURGE'),(10,'QUERY'),(451,'QUICK'),(110,'RANDOM_BYTES'),(460,'READ'),(32,'REAL'),(385,'REBUILD'),(534,'RECOVER'),(434,'REDUNDANT'),(435,'REFERENCES'),(690,'RELAY'),(684,'RELAYLOG'),(563,'RELAY_LOG_FILE'),(564,'RELAY_LOG_POS'),(514,'RELEASE'),(640,'RELOAD'),(386,'REMOVE'),(338,'RENAME'),(387,'REORGANIZE'),(388,'REPAIR'),(590,'REPEAT'),(529,'REPEATABLE'),(477,'REPLACE'),(566,'REPLICATE_DO_DB'),(567,'REPLICATE_DO_TABLE'),(568,'REPLICATE_IGNORE_DB'),(569,'REPLICATE_IGNORE_TABLE'),(570,'REPLICATE_REWRITE_DB'),(571,'REPLICATE_WILD_DO_TABLE'),(572,'REPLICATE_WILD_IGNORE_TABLE'),(573,'REPLICATION'),(629,'REQUIRE'),(11,'RESET'),(617,'RESIGNAL'),(438,'RESTRICT'),(592,'RETURN'),(612,'RETURNED_SQLSTATE'),(653,'RETURNS'),(646,'REVOKE'),(507,'RIGHT'),(73,'RLIKE'),(515,'ROLLBACK'),(481,'ROWS'),(613,'ROW_COUNT'),(389,'ROW_FORMAT'),(521,'SAVEPOINT'),(339,'SCHEDULE'),(325,'SCHEMA'),(671,'SCHEMAS'),(614,'SCHEMA_NAME'),(94,'SECOND'),(641,'SECURITY'),(466,'SELECT'),(314,'SEPARATOR'),(3,'SERIAL'),(530,'SERIALIZABLE'),(346,'SERVER'),(531,'SESSION'),(326,'SET'),(111,'SHA'),(112,'SHA1'),(113,'SHA2'),(492,'SHARE'),(672,'SHOW'),(642,'SHUTDOWN'),(619,'SIGNAL'),(107,'SIGNED'),(340,'SLAVE'),(691,'SLOW'),(516,'SNAPSHOT'),(412,'SOCKET'),(654,'SONAME'),(67,'SOUNDS'),(390,'SPATIAL'),(618,'SQLSTATE'),(578,'SQL_AFTER_GTIDS'),(579,'SQL_AFTER_MTS_GAPS'),(580,'SQL_BEFORE_GTIDS'),(493,'SQL_BIG_RESULT'),(494,'SQL_BUFFER_RESULT'),(495,'SQL_CACHE'),(496,'SQL_CALC_FOUND_ROWS'),(540,'SQL_LOG_BIN'),(497,'SQL_NO_CACHE'),(574,'SQL_SLAVE_SKIP_COUNTER'),(498,'SQL_SMALL_RESULT'),(581,'SQL_THREAD'),(194,'SRID'),(630,'SSL'),(517,'START'),(478,'STARTING'),(215,'STARTPOINT'),(407,'STARTS'),(391,'STATS_AUTO_RECALC'),(392,'STATS_PERSISTENT'),(393,'STATS_SAMPLE_PAGES'),(673,'STATUS'),(317,'STD'),(318,'STDDEV'),(582,'STOP'),(679,'STORAGE'),(436,'STORED'),(499,'STRAIGHT_JOIN'),(655,'STRING'),(221,'ST_AREA'),(185,'ST_ASBINARY'),(269,'ST_ASGEOJSON'),(187,'ST_ASTEXT'),(186,'ST_ASWKB'),(188,'ST_ASWKT'),(233,'ST_BUFFER'),(234,'ST_BUFFER_STRATEGY'),(222,'ST_CENTROID'),(242,'ST_CONTAINS'),(235,'ST_CONVEXHULL'),(243,'ST_CROSSES'),(236,'ST_DIFFERENCE'),(195,'ST_DIMENSION'),(244,'ST_DISJOINT'),(245,'ST_DISTANCE'),(271,'ST_DISTANCE_SPHERE'),(210,'ST_ENDPOINT'),(196,'ST_ENVELOPE'),(246,'ST_EQUALS'),(223,'ST_EXTERIORRING'),(265,'ST_GEOHASH'),(129,'ST_GEOMCOLLFROMTEXT'),(159,'ST_GEOMCOLLFROMWKB'),(130,'ST_GEOMETRYCOLLECTIONFROMTEXT'),(160,'ST_GEOMETRYCOLLECTIONFROMWKB'),(131,'ST_GEOMETRYFROMTEXT'),(161,'ST_GEOMETRYFROMWKB'),(229,'ST_GEOMETRYN'),(197,'ST_GEOMETRYTYPE'),(270,'ST_GEOMFROMGEOJSON'),(132,'ST_GEOMFROMTEXT'),(162,'ST_GEOMFROMWKB'),(224,'ST_INTERIORRINGN'),(237,'ST_INTERSECTION'),(247,'ST_INTERSECTS'),(211,'ST_ISCLOSED'),(198,'ST_ISEMPTY'),(199,'ST_ISSIMPLE'),(272,'ST_ISVALID'),(266,'ST_LATFROMGEOHASH'),(133,'ST_LINEFROMTEXT'),(163,'ST_LINEFROMWKB'),(134,'ST_LINESTRINGFROMTEXT'),(164,'ST_LINESTRINGFROMWKB'),(267,'ST_LONGFROMGEOHASH'),(273,'ST_MAKEENVELOPE'),(135,'ST_MLINEFROMTEXT'),(165,'ST_MLINEFROMWKB'),(137,'ST_MPOINTFROMTEXT'),(167,'ST_MPOINTFROMWKB'),(139,'ST_MPOLYFROMTEXT'),(169,'ST_MPOLYFROMWKB'),(136,'ST_MULTILINESTRINGFROMTEXT'),(166,'ST_MULTILINESTRINGFROMWKB'),(138,'ST_MULTIPOINTFROMTEXT'),(168,'ST_MULTIPOINTFROMWKB'),(140,'ST_MULTIPOLYGONFROMTEXT'),(170,'ST_MULTIPOLYGONFROMWKB'),(230,'ST_NUMGEOMETRIES'),(225,'ST_NUMINTERIORRING'),(226,'ST_NUMINTERIORRINGS'),(212,'ST_NUMPOINTS'),(248,'ST_OVERLAPS'),(268,'ST_POINTFROMGEOHASH'),(141,'ST_POINTFROMTEXT'),(171,'ST_POINTFROMWKB'),(213,'ST_POINTN'),(142,'ST_POLYFROMTEXT'),(172,'ST_POLYFROMWKB'),(143,'ST_POLYGONFROMTEXT'),(173,'ST_POLYGONFROMWKB'),(274,'ST_SIMPLIFY'),(200,'ST_SRID'),(214,'ST_STARTPOINT'),(238,'ST_SYMDIFFERENCE'),(249,'ST_TOUCHES'),(239,'ST_UNION'),(275,'ST_VALIDATE'),(250,'ST_WITHIN'),(201,'ST_X'),(202,'ST_Y'),(615,'SUBCLASS_ORIGIN'),(631,'SUBJECT'),(643,'SUPER'),(51,'TABLE'),(523,'TABLES'),(394,'TABLESPACE'),(616,'TABLE_NAME'),(447,'TEMPORARY'),(479,'TERMINATED'),(62,'THEN'),(35,'TIME'),(34,'TIMESTAMP'),(522,'TO'),(251,'TOUCHES'),(699,'TRADITIONAL'),(71,'TRAILING'),(518,'TRANSACTION'),(446,'TRIGGER'),(674,'TRIGGERS'),(13,'TRUE'),(395,'TRUNCATE'),(396,'TYPE'),(532,'UNCOMMITTED'),(599,'UNDO'),(658,'UNINSTALL'),(397,'UNION'),(398,'UNIQUE'),(524,'UNLOCK'),(17,'UNSIGNED'),(591,'UNTIL'),(439,'UPDATE'),(327,'UPGRADE'),(644,'USAGE'),(445,'USE'),(413,'USER'),(692,'USER_RESOURCES'),(651,'USE_FRM'),(452,'USING'),(4,'VALUE'),(467,'VALUES'),(42,'VARCHARACTER'),(659,'VARIABLE'),(675,'VARIABLES'),(43,'VARYING'),(402,'VIEW'),(437,'VIRTUAL'),(401,'WAIT'),(676,'WARNINGS'),(63,'WHEN'),(453,'WHERE'),(593,'WHILE'),(102,'WITH'),(264,'WITHIN'),(519,'WORK'),(414,'WRAPPER'),(520,'WRITE'),(203,'X'),(632,'X509'),(535,'XA'),(204,'Y'),(95,'YEAR'),(96,'YEAR_MONTH'),(18,'ZEROFILL');
/*!40000 ALTER TABLE `help_keyword` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-02-19 14:40:47
