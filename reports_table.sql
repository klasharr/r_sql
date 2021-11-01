DROP TABLE IF EXISTS `reports_table`;

CREATE TABLE `reports_table` (
 `race_name` varchar(255) NOT NULL,
 `race_type` varchar(255) NOT NULL,
 `date` date NOT NULL,
 `month` varchar(10) NOT NULL,
 `day` varchar(3) NOT NULL,
 `fleet` varchar(255) NOT NULL,
 `boat` varchar(255) NOT NULL,
 `sail` int(11) NOT NULL,
 `PY` int(11) NOT NULL,
 `sailor` varchar(255) NOT NULL,
 `role` varchar(255) NOT NULL,
 `place` varchar(255) NOT NULL,
 `timestamp` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8
