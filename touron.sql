-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 05, 2023 at 12:36 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `touron`
--

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE `company` (
  `Company_ID` int(11) NOT NULL,
  `Company_Name` varchar(255) DEFAULT NULL,
  `Phone_Number` varchar(20) DEFAULT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `Tour_ID` int(11) DEFAULT NULL,
  `Address` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `company`
--

INSERT INTO `company` (`Company_ID`, `Company_Name`, `Phone_Number`, `Email`, `Tour_ID`, `Address`) VALUES
(1, 'ABC Tours', '1234567890', 'abc@example.com', 1, '123 Main St, City, Country'),
(2, 'XYZ Travel', '9876543210', 'xyz@example.com', 2, '456 Elm St, City, Country'),
(3, '123 Adventures', '5555555555', '123@example.com', 3, '789 Oak St, City, Country'),
(4, 'Tour Co.', '9999999999', 'tourco@example.com', 4, '321 Pine St, City, Country'),
(5, 'Explore World', '7777777777', 'explore@example.com', 5, '654 Cedar St, City, Country');

-- --------------------------------------------------------

--
-- Table structure for table `completed_tours`
--

CREATE TABLE `completed_tours` (
  `Tour_ID` int(11) DEFAULT NULL,
  `Company_Name` varchar(255) DEFAULT NULL,
  `Start_Date` date DEFAULT NULL,
  `End_Date` date DEFAULT NULL,
  `Ratings` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `completed_tours`
--

INSERT INTO `completed_tours` (`Tour_ID`, `Company_Name`, `Start_Date`, `End_Date`, `Ratings`) VALUES
(1, 'ABC Tours', '2023-07-01', '2023-07-07', 4),
(2, 'XYZ Travel', '2023-08-15', '2023-08-22', 5),
(3, '123 Adventures', '2023-09-10', '2023-09-17', 4),
(4, 'Tour Co.', '2023-08-01', '2023-08-05', 3),
(5, 'Explore World', '2023-10-01', '2023-10-10', 5);

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE `country` (
  `CountryCode` varchar(2) NOT NULL,
  `Country_Name` varchar(255) DEFAULT NULL,
  `Tourist_Place` varchar(255) DEFAULT NULL,
  `Currency` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`CountryCode`, `Country_Name`, `Tourist_Place`, `Currency`) VALUES
('AD', 'Andorra', 'Sant Joan de Caselles', 'Euro'),
('AE', 'United Arab Emirates', 'Burj Khalifa', 'United Arab Emirates dirham'),
('AF', 'Afghanistan', 'Bamiyan Valley', 'Afghan afghani'),
('AG', 'Antigua and Barbuda', 'Dickenson Bay', 'East Caribbean dollar'),
('AI', 'Anguilla', 'Shoal Bay East', 'Eastern Caribbean dollar'),
('AL', 'Albania', 'Gjirokaster', 'Albanian lek'),
('AM', 'Armenia', 'Geghard Monastery', 'Armenian dram'),
('AO', 'Angola', 'Kalandula Falls', 'Angolan kwanza'),
('AQ', 'Antarctica', 'Lemaire Channel', 'Antarctic dollar'),
('AR', 'Argentina', 'Iguazu Falls', 'Argentine peso'),
('AT', 'Austria', 'Vienna', 'Euro'),
('AU', 'Australia', 'Sydney Opera House', 'Australian dollar'),
('AW', 'Aruba', 'Eagle Beach', 'Aruban florin'),
('AX', 'Åland Islands', 'Kastelholm Castle', 'Euro'),
('AZ', 'Azerbaijan', 'Gobustan National Park', 'Azerbaijani manat'),
('BA', 'Bosnia and Herzegovina', 'Mostar', 'Bosnia and Herzegovina convertible mark'),
('BB', 'Barbados', 'Bathsheba Beach', 'Barbadian dollar'),
('BD', 'Bangladesh', 'Sundarbans National Park', 'Bangladeshi taka'),
('BE', 'Belgium', 'Brussels', 'Euro'),
('BF', 'Burkina Faso', 'W National Park', 'West African CFA franc'),
('BG', 'Bulgaria', 'Rila Monastery', 'Bulgarian lev'),
('BH', 'Bahrain', 'Al Fateh Grand Mosque', 'Bahraini dinar'),
('BI', 'Burundi', 'Kibira National Park', 'Burundian franc'),
('BJ', 'Benin', 'Cotonou', 'West African CFA franc'),
('BL', 'Saint Barthélemy', 'Gustavia', 'Euro'),
('BM', 'Bermuda', 'Horseshoe Bay Beach', 'Bermudian dollar'),
('BN', 'Brunei Darussalam', 'Ulu Temburong National Park', 'Brunei dollar'),
('BO', 'Bolivia, Plurinational State of', 'Salar de Uyuni', 'Bolivian boliviano'),
('BQ', 'Bonaire, Sint Eustatius and Saba', 'Washington Slagbaai National Park', 'United States dollar'),
('BR', 'Brazil', 'Christ the Redeemer', 'Brazilian real'),
('BS', 'Bahamas', 'Pink Sands Beach', 'Bahamian dollar'),
('BV', 'Bouvet Island', 'Mount Olav', 'Norwegian krone'),
('BW', 'Botswana', 'Okavango Delta', 'Botswana pula'),
('BY', 'Belarus', 'Brest Fortress', 'Belarusian ruble'),
('BZ', 'Belize', 'Great Blue Hole', 'Belize dollar'),
('CA', 'Canada', 'Niagara Falls', 'Canadian dollar'),
('CC', 'Cocos (Keeling) Islands', 'Cossack settlement ruins', 'Australian dollar'),
('CD', 'Congo, the Democratic Republic of the', 'Virunga National Park', 'Congolese franc'),
('CF', 'Central African Republic', 'Dzanga-Sangha Special Reserve', 'Central African CFA franc'),
('CG', 'Congo', 'Loango National Park', 'Central African CFA franc'),
('CH', 'Switzerland', 'Zermatt', 'Swiss franc'),
('CI', 'Côte d\'Ivoire', 'Tai National Park', 'West African CFA franc'),
('CK', 'Cook Islands', 'Aitutaki Lagoon', 'Cook Islands dollar'),
('CL', 'Chile', 'Torres del Paine National Park', 'Chilean peso'),
('CM', 'Cameroon', 'Mount Cameroon', 'Central African CFA franc'),
('CN', 'China', 'The Great Wall', 'Chinese yuan'),
('CO', 'Colombia', 'Cartagena', 'Colombian peso'),
('CR', 'Costa Rica', 'Manuel Antonio National Park', 'Costa Rican colón'),
('CU', 'Cuba', 'Old Havana', 'Cuban convertible peso'),
('CV', 'Cabo Verde', 'Praia de Santa Maria', 'Cape Verdean escudo'),
('CW', 'Curaçao', 'Shete Boka National Park', 'Netherlands Antillean guilder'),
('CX', 'Christmas Island', 'The Dales', 'Australian dollar'),
('CY', 'Cyprus', 'Paphos', 'Euro'),
('CZ', 'Czech Republic', 'Prague', 'Czech koruna'),
('DE', 'Germany', 'Neuschwanstein Castle', 'Euro'),
('DJ', 'Djibouti', 'Lake Assal', 'Djiboutian franc'),
('DK', 'Denmark', 'Tivoli Gardens', 'Danish krone'),
('DM', 'Dominica', 'Emerald Pool', 'East Caribbean dollar'),
('DO', 'Dominican Republic', 'Saona Island', 'Dominican peso'),
('DZ', 'Algeria', 'Tassili n\'Ajjer National Park', 'Algerian dinar'),
('EC', 'Ecuador', 'Galápagos Islands', 'United States dollar'),
('EE', 'Estonia', 'Tallinn', 'Euro'),
('EG', 'Egypt', 'Pyramids of Giza', 'Egyptian pound'),
('EH', 'Western Sahara', 'Dakhla', 'Moroccan dirham'),
('ER', 'Eritrea', 'Dankalia', 'Eritrean nakfa'),
('ES', 'Spain', 'La Sagrada Familia', 'Euro'),
('ET', 'Ethiopia', 'Simien Mountains National Park', 'Ethiopian birr'),
('FI', 'Finland', 'Helsinki', 'Euro'),
('FJ', 'Fiji', 'Yasawa Islands', 'Fijian dollar'),
('FK', 'Falkland Islands (Malvinas)', 'Stanley', 'Falkland Islands pound'),
('FM', 'Micronesia, Federated States of', 'Chuuk Lagoon', 'United States dollar'),
('FO', 'Faroe Islands', 'Gjogv', 'Danish krone'),
('FR', 'France', 'Eiffel Tower', 'Euro'),
('GA', 'Gabon', 'Loango National Park', 'Central African CFA franc'),
('GB', 'United Kingdom', 'Stonehenge', 'British pound'),
('GD', 'Grenada', 'Grand Anse Beach', 'East Caribbean dollar'),
('GE', 'Georgia', 'Gergeti Trinity Church', 'Georgian lari'),
('GF', 'French Guiana', 'Îles du Salut', 'Euro'),
('GG', 'Guernsey', 'St Peter Port', 'British pound'),
('GH', 'Ghana', 'Kakum National Park', 'Ghanaian cedi'),
('GI', 'Gibraltar', 'The Rock of Gibraltar', 'Gibraltar pound'),
('GL', 'Greenland', 'Ilulissat Icefjord', 'Danish krone'),
('GM', 'Gambia', 'Kunta Kinteh Island', 'Gambian dalasi'),
('GN', 'Guinea', 'Mount Nimba Strict Nature Reserve', 'Guinean franc'),
('GP', 'Guadeloupe', 'Les Saintes', 'Euro'),
('GQ', 'Equatorial Guinea', 'Pico Basile', 'Central African CFA franc'),
('GR', 'Greece', 'Acropolis of Athens', 'Euro'),
('GS', 'South Georgia and the South Sandwich Islands', 'Grytviken', 'British pound'),
('GT', 'Guatemala', 'Tikal', 'Guatemalan quetzal'),
('GU', 'Guam', 'Tumon Bay', 'United States dollar'),
('GW', 'Guinea-Bissau', 'Bijagos Archipelago', 'West African CFA franc'),
('GY', 'Guyana', 'Kaieteur Falls', 'Guyanese dollar'),
('HK', 'Hong Kong', 'Victoria Harbour', 'Hong Kong dollar'),
('HM', 'Heard Island and McDonald Islands', 'Big Ben', 'Australian dollar'),
('HN', 'Honduras', 'Roatán Island', 'Honduran lempira'),
('HR', 'Croatia', 'Plitvice Lakes National Park', 'Croatian kuna'),
('HT', 'Haiti', 'Labadee', 'Haitian gourde'),
('HU', 'Hungary', 'Buda Castle', 'Hungarian forint'),
('ID', 'Indonesia', 'Bali', 'Indonesian rupiah'),
('IE', 'Ireland', 'Cliffs of Moher', 'Euro'),
('IL', 'Israel', 'Jerusalem', 'Israeli new shekel'),
('IM', 'Isle of Man', 'Douglas', 'British pound'),
('IN', 'India', 'Taj Mahal', 'Indian rupee'),
('IO', 'British Indian Ocean Territory', 'Diego Garcia', 'United States dollar'),
('IQ', 'Iraq', 'Hatra', 'Iraqi dinar'),
('IR', 'Iran, Islamic Republic of', 'Persepolis', 'Iranian rial'),
('IS', 'Iceland', 'Blue Lagoon', 'Icelandic króna'),
('IT', 'Italy', 'Colosseum', 'Euro'),
('JE', 'Jersey', 'St Helier', 'British pound'),
('JM', 'Jamaica', 'Dunn\'s River Falls', 'Jamaican dollar'),
('JO', 'Jordan', 'Petra', 'Jordanian dinar'),
('JP', 'Japan', 'Mount Fuji', 'Japanese yen'),
('KE', 'Kenya', 'Maasai Mara National Reserve', 'Kenyan shilling'),
('KG', 'Kyrgyzstan', 'Issyk-Kul Lake', 'Kyrgyzstani som'),
('KH', 'Cambodia', 'Angkor Wat', 'Cambodian riel'),
('KI', 'Kiribati', 'Tarawa Atoll', 'Australian dollar'),
('KM', 'Comoros', 'Mount Karthala', 'Comorian franc'),
('KN', 'Saint Kitts and Nevis', 'Brimstone Hill Fortress', 'East Caribbean dollar'),
('KP', 'Korea, Democratic People\'s Republic of', 'Mount Paektu', 'North Korean won'),
('KR', 'Korea, Republic of', 'Gyeongbokgung Palace', 'South Korean won'),
('KW', 'Kuwait', 'Kuwait Towers', 'Kuwaiti dinar'),
('KY', 'Cayman Islands', 'Seven Mile Beach', 'Cayman Islands dollar'),
('KZ', 'Kazakhstan', 'Lake Kaindy', 'Kazakhstani tenge'),
('LA', 'Lao People\'s Democratic Republic', 'Luang Prabang', 'Lao kip'),
('LB', 'Lebanon', 'Byblos', 'Lebanese pound'),
('LC', 'Saint Lucia', 'Pitons', 'East Caribbean dollar'),
('LI', 'Liechtenstein', 'Vaduz Castle', 'Swiss franc'),
('LK', 'Sri Lanka', 'Sigiriya', 'Sri Lankan rupee'),
('LR', 'Liberia', 'Sapo National Park', 'Liberian dollar'),
('LS', 'Lesotho', 'Maloti Mountains', 'Lesotho loti'),
('LT', 'Lithuania', 'Trakai Island Castle', 'Euro'),
('LU', 'Luxembourg', 'Bock Casemates', 'Euro'),
('LV', 'Latvia', 'Rundāle Palace', 'Euro'),
('LY', 'Libya', 'Leptis Magna', 'Libyan dinar'),
('MA', 'Morocco', 'Marrakech', 'Moroccan dirham'),
('MC', 'Monaco', 'Monte Carlo Casino', 'Euro'),
('MD', 'Moldova, Republic of', 'Orheiul Vechi', 'Moldovan leu'),
('ME', 'Montenegro', 'Kotor', 'Euro'),
('MF', 'Saint Martin (French part)', 'Orient Bay', 'Euro'),
('MG', 'Madagascar', 'Avenue of the Baobabs', 'Malagasy ariary'),
('MH', 'Marshall Islands', 'Bikini Atoll', 'United States dollar'),
('MK', 'Macedonia, the former Yugoslav Republic of', 'Ohrid', 'Macedonian denar'),
('ML', 'Mali', 'Timbuktu', 'West African CFA franc'),
('MM', 'Myanmar', 'Bagan', 'Burmese kyat'),
('MN', 'Mongolia', 'Gobi Desert', 'Mongolian tögrög'),
('MO', 'Macao', 'Ruins of St. Paul\'s', 'Macanese pataca'),
('MP', 'Northern Mariana Islands', 'Managaha Island', 'United States dollar'),
('MQ', 'Martinique', 'Mount Pelée', 'Euro'),
('MR', 'Mauritania', 'Banc d\'Arguin National Park', 'Mauritanian ouguiya'),
('MS', 'Montserrat', 'Soufrière Hills Volcano', 'East Caribbean dollar'),
('MT', 'Malta', 'Valletta', 'Euro'),
('MU', 'Mauritius', 'Le Morne Brabant', 'Mauritian rupee'),
('MV', 'Maldives', 'Malé', 'Maldivian rufiyaa'),
('MW', 'Malawi', 'Lake Malawi', 'Malawian kwacha'),
('MX', 'Mexico', 'Chichen Itza', 'Mexican peso'),
('MY', 'Malaysia', 'Petronas Twin Towers', 'Malaysian ringgit'),
('MZ', 'Mozambique', 'Bazaruto Archipelago', 'Mozambican metical'),
('NA', 'Namibia', 'Sossusvlei', 'Namibian dollar'),
('NC', 'New Caledonia', 'Heart of Voh', 'CFP franc'),
('NE', 'Niger', 'W National Park', 'West African CFA franc'),
('NF', 'Norfolk Island', 'Kingston', 'Australian dollar'),
('NG', 'Nigeria', 'Yankari National Park', 'Nigerian naira'),
('NI', 'Nicaragua', 'Granada', 'Nicaraguan córdoba'),
('NL', 'Netherlands', 'Keukenhof Gardens', 'Euro'),
('NO', 'Norway', 'Fjords of Norway', 'Norwegian krone'),
('NP', 'Nepal', 'Mount Everest', 'Nepalese rupee'),
('NR', 'Nauru', 'Buada Lagoon', 'Australian dollar'),
('NU', 'Niue', 'Alofi', 'New Zealand dollar'),
('NZ', 'New Zealand', 'Milford Sound', 'New Zealand dollar'),
('OM', 'Oman', 'Sultan Qaboos Grand Mosque', 'Omani rial'),
('PA', 'Panama', 'San Blas Islands', 'Panamanian balboa'),
('PE', 'Peru', 'Machu Picchu', 'Peruvian sol'),
('PF', 'French Polynesia', 'Bora Bora', 'CFP franc'),
('PG', 'Papua New Guinea', 'Kokoda Track', 'Papua New Guinean kina'),
('PH', 'Philippines', 'Palawan', 'Philippine peso'),
('PK', 'Pakistan', 'Badshahi Mosque', 'Pakistani rupee'),
('PL', 'Poland', 'Wieliczka Salt Mine', 'Polish złoty'),
('PM', 'Saint Pierre and Miquelon', 'Miquelon', 'Euro'),
('PN', 'Pitcairn', 'Bounty Bay', 'New Zealand dollar'),
('PR', 'Puerto Rico', 'El Yunque National Forest', 'United States dollar'),
('PS', 'Palestine, State of', 'Church of the Nativity', 'Israeli new shekel'),
('PT', 'Portugal', 'Lisbon', 'Euro'),
('PW', 'Palau', 'Rock Islands', 'United States dollar'),
('PY', 'Paraguay', 'Iguazu Falls', 'Paraguayan guaraní'),
('QA', 'Qatar', 'The Pearl-Qatar', 'Qatari riyal'),
('RE', 'Réunion', 'Piton de la Fournaise', 'Euro'),
('RO', 'Romania', 'Bran Castle', 'Romanian leu'),
('RS', 'Serbia', 'Belgrade Fortress', 'Serbian dinar'),
('RU', 'Russian Federation', 'Red Square', 'Russian ruble'),
('RW', 'Rwanda', 'Volcanoes National Park', 'Rwandan franc'),
('SA', 'Saudi Arabia', 'Al-Masjid al-Haram', 'Saudi riyal'),
('SB', 'Solomon Islands', 'Honiara', 'Solomon Islands dollar'),
('SC', 'Seychelles', 'La Digue', 'Seychellois rupee'),
('SD', 'Sudan', 'Pyramids of Meroe', 'Sudanese pound'),
('SE', 'Sweden', 'Stockholm', 'Swedish krona'),
('SG', 'Singapore', 'Gardens by the Bay', 'Singapore dollar'),
('SH', 'Saint Helena, Ascension and Tristan da Cunha', 'Saint Helena', 'Saint Helenian pound'),
('SI', 'Slovenia', 'Lake Bled', 'Euro'),
('SJ', 'Svalbard and Jan Mayen', 'Spitsbergen', 'Norwegian krone'),
('SK', 'Slovakia', 'High Tatras', 'Euro'),
('SL', 'Sierra Leone', 'Outamba-Kilimi National Park', 'Sierra Leonean leone'),
('SM', 'San Marino', 'San Marino', 'Euro'),
('SN', 'Senegal', 'Île de Gorée', 'West African CFA franc'),
('SO', 'Somalia', 'Mogadishu', 'Somali shilling'),
('SR', 'Suriname', 'Galibi Nature Reserve', 'Surinamese dollar'),
('SS', 'South Sudan', 'Boma National Park', 'South Sudanese pound'),
('ST', 'Sao Tome and Principe', 'Pico Cão Grande', 'São Tomé and Príncipe dobra'),
('SV', 'El Salvador', 'Suchitoto', 'United States dollar'),
('SX', 'Sint Maarten (Dutch part)', 'Philipsburg', 'Netherlands Antillean guilder'),
('SY', 'Syrian Arab Republic', 'Palmyra', 'Syrian pound'),
('SZ', 'Eswatini', 'Mlilwane Wildlife Sanctuary', 'Swazi lilangeni'),
('TC', 'Turks and Caicos Islands', 'Grace Bay Beach', 'United States dollar'),
('TD', 'Chad', 'Zakouma National Park', 'Central African CFA franc'),
('TF', 'French Southern Territories', 'Port-aux-Français', 'Euro'),
('TG', 'Togo', 'Koutammakou', 'West African CFA franc'),
('TH', 'Thailand', 'Wat Arun', 'Thai baht'),
('TJ', 'Tajikistan', 'Pamir Mountains', 'Tajikistani somoni'),
('TK', 'Tokelau', 'Fakaofo', 'New Zealand dollar'),
('TL', 'Timor-Leste', 'Ataúro Island', 'United States dollar'),
('TM', 'Turkmenistan', 'Darvaza gas crater', 'Turkmenistan manat'),
('TN', 'Tunisia', 'Carthage', 'Tunisian dinar'),
('TO', 'Tonga', 'Haʻamonga ʻa Maui', 'Tongan paʻanga'),
('TR', 'Turkey', 'Hagia Sophia', 'Turkish lira'),
('TT', 'Trinidad and Tobago', 'Maracas Bay', 'Trinidad and Tobago dollar'),
('TV', 'Tuvalu', 'Funafuti', 'Australian dollar'),
('TW', 'Taiwan, Province of China', 'Taroko National Park', 'New Taiwan dollar'),
('TZ', 'Tanzania, United Republic of', 'Mount Kilimanjaro', 'Tanzanian shilling'),
('UA', 'Ukraine', 'Saint Sophia\'s Cathedral', 'Ukrainian hryvnia'),
('UG', 'Uganda', 'Bwindi Impenetrable National Park', 'Ugandan shilling'),
('UM', 'United States Minor Outlying Islands', 'Midway Atoll', 'United States dollar'),
('US', 'United States', 'Grand Canyon', 'United States dollar'),
('UY', 'Uruguay', 'Punta del Este', 'Uruguayan peso'),
('UZ', 'Uzbekistan', 'Registan', 'Uzbekistani soʻm'),
('VA', 'Holy See (Vatican City State)', 'St. Peter\'s Basilica', 'Euro'),
('VC', 'Saint Vincent and the Grenadines', 'Bequia', 'East Caribbean dollar'),
('VE', 'Venezuela, Bolivarian Republic of', 'Angel Falls', 'Venezuelan bolívar'),
('VG', 'Virgin Islands, British', 'The Baths', 'United States dollar'),
('VI', 'Virgin Islands, U.S.', 'Magens Bay', 'United States dollar'),
('VN', 'Viet Nam', 'Ha Long Bay', 'Vietnamese đồng'),
('VU', 'Vanuatu', 'Mount Yasur', 'Vanuatu vatu'),
('WF', 'Wallis and Futuna', 'Mata-Utu', 'CFP franc'),
('WS', 'Samoa', 'To Sua Ocean Trench', 'Samoan tālā'),
('YE', 'Yemen', 'Socotra', 'Yemeni rial'),
('YT', 'Mayotte', 'Dzaoudzi', 'Euro'),
('ZA', 'South Africa', 'Table Mountain', 'South African rand'),
('ZM', 'Zambia', 'Victoria Falls', 'Zambian kwacha'),
('ZW', 'Zimbabwe', 'Victoria Falls', 'Zimbabwean dollar');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `Customer_ID` int(11) NOT NULL,
  `Customer_Name` varchar(255) DEFAULT NULL,
  `Phone_Number` varchar(20) DEFAULT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `Tour_ID` int(11) DEFAULT NULL,
  `Age` int(11) DEFAULT NULL,
  `NID` varchar(20) DEFAULT NULL,
  `Address` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`Customer_ID`, `Customer_Name`, `Phone_Number`, `Email`, `Tour_ID`, `Age`, `NID`, `Address`) VALUES
(1, 'John Doe', '1234567890', 'john.doe@example.com', 1, 30, '1234567890', '123 Main St, City, Country'),
(2, 'Jane Smith', '9876543210', 'jane.smith@example.com', 2, 25, '0987654321', '456 Elm St, City, Country'),
(3, 'Mike Johnson', '5555555555', 'mike.johnson@example.com', 3, 40, '5555555555', '789 Oak St, City, Country'),
(4, 'Emily Wilson', '9999999999', 'emily.wilson@example.com', 2, 35, '9999999999', '321 Pine St, City, Country'),
(5, 'David Brown', '7777777777', 'david.brown@example.com', 1, 28, '7777777777', '654 Cedar St, City, Country');

-- --------------------------------------------------------

--
-- Table structure for table `hotel`
--

CREATE TABLE `hotel` (
  `Hotel_ID` int(11) NOT NULL,
  `Hotel_Name` varchar(255) DEFAULT NULL,
  `Hotel_Price` decimal(10,2) DEFAULT NULL,
  `Number_Of_Rooms` int(11) DEFAULT NULL,
  `Address` varchar(255) DEFAULT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `Phone_Number` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hotel`
--

INSERT INTO `hotel` (`Hotel_ID`, `Hotel_Name`, `Hotel_Price`, `Number_Of_Rooms`, `Address`, `Email`, `Phone_Number`) VALUES
(1, 'ABC Hotel', 100.00, 50, '123 Main Street, City', 'hotel@example.com', '123-456-7890'),
(2, 'XYZ Inn', 75.50, 30, '456 Elm Street, Town', 'inn@example.com', '987-654-3210'),
(3, '123 Resort', 200.00, 100, '789 Oak Avenue, Beach', 'resort@example.com', '555-555-5555'),
(4, 'Tourist Lodge', 50.00, 20, '987 Pine Road, Mountains', 'lodge@example.com', '111-222-3333'),
(5, 'Cozy Inn', 150.75, 40, '321 Cedar Lane, Countryside', 'cozyinn@example.com', '444-444-4444');

-- --------------------------------------------------------

--
-- Table structure for table `log_in`
--

CREATE TABLE `log_in` (
  `Email` varchar(255) NOT NULL,
  `Password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `log_in`
--

INSERT INTO `log_in` (`Email`, `Password`) VALUES
('david.brown@example.com', 'password5'),
('emily.wilson@example.com', 'password4'),
('jane.smith@example.com', 'password2'),
('john.doe@example.com', 'password1'),
('mike.johnson@example.com', 'password3');

-- --------------------------------------------------------

--
-- Table structure for table `packages`
--

CREATE TABLE `packages` (
  `Tour_ID` int(11) NOT NULL,
  `Company_Name` varchar(255) DEFAULT NULL,
  `Description` varchar(255) DEFAULT NULL,
  `Price` decimal(10,2) DEFAULT NULL,
  `Start_Date` date DEFAULT NULL,
  `End_Date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `packages`
--

INSERT INTO `packages` (`Tour_ID`, `Company_Name`, `Description`, `Price`, `Start_Date`, `End_Date`) VALUES
(1, 'ABC Tours', 'City Sightseeing', 100.00, '2023-07-01', '2023-07-07'),
(2, 'XYZ Travel', 'Beach Getaway', 200.50, '2023-08-15', '2023-08-22'),
(3, '123 Adventures', 'Mountain Hiking', 150.00, '2023-09-10', '2023-09-17'),
(4, 'Tour Co.', 'Historical Tour', 75.00, '2023-08-01', '2023-08-05'),
(5, 'Explore World', 'Wildlife Safari', 300.75, '2023-10-01', '2023-10-10');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `Payment_Number` int(11) NOT NULL,
  `Tour_ID` int(11) DEFAULT NULL,
  `Customer_ID` int(11) DEFAULT NULL,
  `Company_ID` int(11) DEFAULT NULL,
  `Payment_method` varchar(255) DEFAULT NULL,
  `Amount` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`Payment_Number`, `Tour_ID`, `Customer_ID`, `Company_ID`, `Payment_method`, `Amount`) VALUES
(1, 1, 1, 1, 'Credit Card', 100.00),
(2, 2, 2, 2, 'PayPal', 75.50),
(3, 1, 3, 1, 'Bank Transfer', 200.00),
(4, 3, 4, 3, 'Cash', 50.00),
(5, 2, 5, 2, 'Credit Card', 150.75);

-- --------------------------------------------------------

--
-- Table structure for table `profile`
--

CREATE TABLE `profile` (
  `ID` int(11) NOT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `Phone_Number` varchar(20) DEFAULT NULL,
  `Email` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `profile`
--

INSERT INTO `profile` (`ID`, `Name`, `Phone_Number`, `Email`) VALUES
(1, 'John Doe', '1234567890', 'john.doe@example.com'),
(2, 'Jane Smith', '9876543210', 'jane.smith@example.com'),
(3, 'Mike Johnson', '5555555555', 'mike.johnson@example.com'),
(4, 'Emily Wilson', '9999999999', 'emily.wilson@example.com'),
(5, 'David Brown', '7777777777', 'david.brown@example.com');

-- --------------------------------------------------------

--
-- Table structure for table `ratings`
--

CREATE TABLE `ratings` (
  `Rating_Score` int(11) DEFAULT NULL,
  `Tour_ID` int(11) DEFAULT NULL,
  `Customer_ID` int(11) DEFAULT NULL,
  `Company_ID` int(11) DEFAULT NULL,
  `Comment` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ratings`
--

INSERT INTO `ratings` (`Rating_Score`, `Tour_ID`, `Customer_ID`, `Company_ID`, `Comment`) VALUES
(4, 1, 1, 1, 'Great tour experience!'),
(5, 2, 2, 2, 'Highly recommended.'),
(4, 1, 3, 1, 'Knowledgeable guides.'),
(3, 3, 4, 3, 'Average tour.'),
(5, 2, 5, 2, 'Amazing tour, loved it!');

-- --------------------------------------------------------

--
-- Table structure for table `sign_up`
--

CREATE TABLE `sign_up` (
  `Name` varchar(255) DEFAULT NULL,
  `Phone_Number` varchar(20) DEFAULT NULL,
  `Email` varchar(255) NOT NULL,
  `Password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sign_up`
--

INSERT INTO `sign_up` (`Name`, `Phone_Number`, `Email`, `Password`) VALUES
('David Brown', '7777777777', 'david.brown@example.com', 'password5'),
('Emily Wilson', '9999999999', 'emily.wilson@example.com', 'password4'),
('Jane Smith', '9876543210', 'jane.smith@example.com', 'password2'),
('John Doe', '1234567890', 'john.doe@example.com', 'password1'),
('Mike Johnson', '5555555555', 'mike.johnson@example.com', 'password3');

-- --------------------------------------------------------

--
-- Table structure for table `tourguide`
--

CREATE TABLE `tourguide` (
  `Guide_ID` int(11) NOT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `Phone` varchar(255) DEFAULT NULL,
  `Address` varchar(255) DEFAULT NULL,
  `Tour_ID` int(11) DEFAULT NULL,
  `Company_ID` int(11) DEFAULT NULL,
  `Customer_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tourguide`
--

INSERT INTO `tourguide` (`Guide_ID`, `Name`, `Email`, `Phone`, `Address`, `Tour_ID`, `Company_ID`, `Customer_ID`) VALUES
(1, 'John Smith', 'john@example.com', '123-456-7890', '123 Main Street', 1, 1, 1),
(2, 'Jane Doe', 'jane@example.com', '987-654-3210', '456 Elm Street', 2, 2, 2),
(3, 'David Johnson', 'david@example.com', '555-555-5555', '789 Oak Avenue', 3, 3, 3),
(4, 'Emily Davis', 'emily@example.com', '111-222-3333', '987 Pine Road', 4, 4, 4),
(5, 'Michael Wilson', 'michael@example.com', '444-444-4444', '321 Cedar Lane', 5, 5, 5);

-- --------------------------------------------------------

--
-- Table structure for table `transportation`
--

CREATE TABLE `transportation` (
  `Trans_ID` int(11) NOT NULL,
  `Trans_Type` varchar(255) DEFAULT NULL,
  `Trans_Name` varchar(255) DEFAULT NULL,
  `Trans_Price` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transportation`
--

INSERT INTO `transportation` (`Trans_ID`, `Trans_Type`, `Trans_Name`, `Trans_Price`) VALUES
(1, 'Car', 'ABC Car Rental', 50.00),
(2, 'Bus', 'XYZ Bus Company', 10.00),
(3, 'Train', '123 Railways', 25.00),
(4, 'Van', 'Tour Van Rental', 40.00),
(5, 'Ferry', 'Coastal Ferries', 15.00);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`Company_ID`);

--
-- Indexes for table `completed_tours`
--
ALTER TABLE `completed_tours`
  ADD KEY `Tour_ID` (`Tour_ID`);

--
-- Indexes for table `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`CountryCode`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`Customer_ID`);

--
-- Indexes for table `hotel`
--
ALTER TABLE `hotel`
  ADD PRIMARY KEY (`Hotel_ID`);

--
-- Indexes for table `log_in`
--
ALTER TABLE `log_in`
  ADD PRIMARY KEY (`Email`);

--
-- Indexes for table `packages`
--
ALTER TABLE `packages`
  ADD PRIMARY KEY (`Tour_ID`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`Payment_Number`),
  ADD KEY `Tour_ID` (`Tour_ID`),
  ADD KEY `Customer_ID` (`Customer_ID`),
  ADD KEY `Company_ID` (`Company_ID`);

--
-- Indexes for table `profile`
--
ALTER TABLE `profile`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `Email` (`Email`);

--
-- Indexes for table `ratings`
--
ALTER TABLE `ratings`
  ADD KEY `Tour_ID` (`Tour_ID`),
  ADD KEY `Customer_ID` (`Customer_ID`),
  ADD KEY `Company_ID` (`Company_ID`);

--
-- Indexes for table `sign_up`
--
ALTER TABLE `sign_up`
  ADD PRIMARY KEY (`Email`);

--
-- Indexes for table `tourguide`
--
ALTER TABLE `tourguide`
  ADD PRIMARY KEY (`Guide_ID`),
  ADD KEY `Tour_ID` (`Tour_ID`),
  ADD KEY `Company_ID` (`Company_ID`),
  ADD KEY `Customer_ID` (`Customer_ID`);

--
-- Indexes for table `transportation`
--
ALTER TABLE `transportation`
  ADD PRIMARY KEY (`Trans_ID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `completed_tours`
--
ALTER TABLE `completed_tours`
  ADD CONSTRAINT `completed_tours_ibfk_1` FOREIGN KEY (`Tour_ID`) REFERENCES `packages` (`Tour_ID`);

--
-- Constraints for table `payment`
--
ALTER TABLE `payment`
  ADD CONSTRAINT `payment_ibfk_1` FOREIGN KEY (`Tour_ID`) REFERENCES `packages` (`Tour_ID`),
  ADD CONSTRAINT `payment_ibfk_2` FOREIGN KEY (`Customer_ID`) REFERENCES `customer` (`Customer_ID`),
  ADD CONSTRAINT `payment_ibfk_3` FOREIGN KEY (`Company_ID`) REFERENCES `company` (`Company_ID`);

--
-- Constraints for table `profile`
--
ALTER TABLE `profile`
  ADD CONSTRAINT `profile_ibfk_1` FOREIGN KEY (`Email`) REFERENCES `sign_up` (`Email`);

--
-- Constraints for table `ratings`
--
ALTER TABLE `ratings`
  ADD CONSTRAINT `ratings_ibfk_1` FOREIGN KEY (`Tour_ID`) REFERENCES `packages` (`Tour_ID`),
  ADD CONSTRAINT `ratings_ibfk_2` FOREIGN KEY (`Customer_ID`) REFERENCES `customer` (`Customer_ID`),
  ADD CONSTRAINT `ratings_ibfk_3` FOREIGN KEY (`Company_ID`) REFERENCES `company` (`Company_ID`);

--
-- Constraints for table `tourguide`
--
ALTER TABLE `tourguide`
  ADD CONSTRAINT `tourguide_ibfk_1` FOREIGN KEY (`Tour_ID`) REFERENCES `packages` (`Tour_ID`),
  ADD CONSTRAINT `tourguide_ibfk_2` FOREIGN KEY (`Company_ID`) REFERENCES `company` (`Company_ID`),
  ADD CONSTRAINT `tourguide_ibfk_3` FOREIGN KEY (`Customer_ID`) REFERENCES `customer` (`Customer_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
