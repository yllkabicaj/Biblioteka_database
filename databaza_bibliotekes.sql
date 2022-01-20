create database biblioteka;
use biblioteka;
/* Delete the tables if they already exist */
drop table if exists Lexuesi;
drop table if exists Detajet;
drop table if exists Punetori;
drop table if exists Librat;
drop table if exists Huazimi;
drop table if exists Librat_Demtuar;
drop table if exists Arkiva;
drop table if exists Kredencialet;
drop table if exists Kredencialetp;
drop table if exists Komentet;

/* Create the schema for our tables */
create table Lexuesi(lid integer, emri varchar(30), mbiemri varchar(30), emri_prindit varchar(30), gjinia char, dt_lindjes date,
rruga text, qyteti varchar(30), shteti varchar(30), tel_mob varchar(35), tel_fix varchar(35), kodi_postal text, email text,
profesioni text);

create table Detajet(lid integer, vitiregjistrimit integer, dataregjistrimit varchar(30), cmimi int,
punetori_qe_ka_regjistruar varchar(60), anetarsim_aktiv bool, kushtezime text);

create table Punetori(pid integer, emri varchar(30), mbiemri varchar(30), titulli varchar(70), rruga text, qyteti varchar(30),
shteti varchar(30),tel_mob varchar(35), tel_fix varchar(35), kodi_postal text, email text, paga varchar(15));

create table Librat(lbid integer, titulli varchar(150), autori varchar(60), zhanri varchar(30), nr_kopjeve int, data_pranimit date,
punetori_regjistruar varchar(60));

create table Huazimi(lid integer, lbid integer, dataehuazimit date, max_datakthimit date, datakthimit date,
punetori_regjistruar varchar(60), verejtje text);

create table Arkiva(aid integer, lbid integer, lid integer);
create table Librat_Demtuar(ldid integer, titulli varchar(150), verejtje text, dataep date, punetori varchar(60));
create table Kredencialet(kid integer, lid integer, email text, username varchar(30), passwordi varchar(70));
create table Kredencialetp(kpid integer, pid integer, email text, username varchar(30), passwordi varchar(70));
create table Komentet(cid integer, lbid integer, lid integer, data_komentit date, koha_komentit time, përmbajtja text);

/* Populate the tables with our data */
insert into  Lexuesi values(01, 'Albin', 'Tmava', 'Agim', 'M', '1997-07-20', 'Mbreti Bardhyl', 'Peje', 'Kosove', '+38349364030', '038237423', '30000', 'albin_tmava@gmail.com', 'Student');
insert into  Lexuesi values(02, 'Laura', 'Gashi', 'Ismet', 'F', '1997-02-22', 'Sefedin Maxhuni', 'Vushtrri', 'Kosove', '+38344364560', '038934578', '40000', 'lauragashi1@hotmail.com', 'Student');
insert into  Lexuesi values(03, 'Alba', 'Krasniqi', 'Afrim', 'F', '1997-05-08', 'Adem Jashari', 'Mitrovice', 'Kosove', '+38349573293', '038960879', '43000', 'alba.krasniqi@yahoo.com', 'Konsulent');
insert into  Lexuesi values(04, 'Zbulim', 'Zekaj', 'Gezim', 'M', '1997-09-04', '28 Nentori', 'Tirane', 'Shqiperi', '+38349483272', '038879768', '10000', 'zbulimzekaj@gmail.com', 'Programer');
insert into  Lexuesi values(05, 'Rina', 'Hajra', 'Valon', 'F', '1996-07-23', 'Paqja', 'Prizren', 'Kosove', '+38344382829', '038769077', '20000', 'rinahajra@live.com', 'Piktore');
insert into  Lexuesi values(06, 'Dea', 'Loxha', 'Bedri', 'F', '1985-05-14', 'Ahmet Konica', 'Prishtine', 'Kosove', '+38344637893', '038690787', '10000', 'dealoxha@gmail.com', 'Gjykatese');
insert into  Lexuesi values(07, 'Leon', 'Shala', 'Arsim', 'M', '1997-11-19', 'Jakov Xoxa', 'Prishtine', 'Kosove', '+38349343235', '038356689', '10000', 'leon_s@live.com', 'Student');
insert into  Lexuesi values(08, 'Art', 'Krasniqi', 'Emin', 'M', '1995-12-24', 'Lidhja e Prizrenit', 'Shkoder', 'Shqiperi', '+38344849924', '038588966', '4000', 'art.k@live.com', 'Ushtar');
insert into  Lexuesi values(09, 'Ard', 'Vokshi', 'Gani', 'M', '1972-10-21', 'Malush Kosova', 'Prishtine', 'Kosove', '+38349329580', '038783467', '10000', 'ard.vokshi@hotmail.com', 'Doktor');
insert into  Lexuesi values(10, 'Bekim', 'Pllana', 'Arben', 'M', '1996-08-09', 'Nene Tereza', 'Peje', 'Kosove', '+38349282474', '038769078', '30000', 'b_pllana@msn.com', 'Infermier');
insert into  Lexuesi values(11, 'Brikena', 'Devolli', 'Albin', 'F', '1997-04-08', 'Haxhi Zeka', 'Berat', 'Shqiperi', '+38349247862', '038087087', '6000', 'devolli_brikena@gmail.com', 'Kengetare');
insert into  Lexuesi values(12, 'Altin', 'Temaj', 'Lumir', 'M', '1992-03-09', 'Astrit Dehari', 'Mitrovice', 'Kosove', '+38344768794', '038789668', '40000', 'altintemaj9@gmail.com', 'Inxhinier');
insert into  Lexuesi values(13, 'Jetmira', 'Alija', 'Mergim', 'F', '1996-01-11', 'Ndue Perlleshi', 'Prishtine', 'Kosove', '+38349655497', '038087998', '10000', 'jetmira.aliaj@live.com', 'Papune');
insert into  Lexuesi values(14, 'Teuta', 'Sfishta', 'Sami', 'F', '1984-09-30', 'Azem Bejta', 'Mitrovice', 'Kosove', '+38344973358', '038698079', '40000', 'teuta.sfishta@msn.com', 'Profesoreshe');
insert into  Lexuesi values(15, 'Ekrem', 'Murati', 'Bashkim', 'M', '1987-04-12', 'Xhon Buja', 'Vushtrri', 'Kosove', '+38344876448', '038654754', '90000', 'ekrem_murati@protonmail.com', 'Kamarier');


insert into Detajet values(01, 2018, '21 Maj', '5', 'Afrim Gashi', True, 'Perfundon me 31.12.2021');
insert into Detajet values(02, 2019, '3 Qershor', '5', 'Gresa Haliti', True, 'Perfundon me 31.12.2022');
insert into Detajet values(03, 2019, '11 Janar', '5', 'Gresa Haliti', False, 'Perfundon me 31.12.2020');
insert into Detajet values(04, 2015, '15 Janar', '5', 'Afrim Gashi', True, 'Perfundon me 31.12.2021');
insert into Detajet values(05, 2014, '14 Gusht', '5', 'Dea Rexha', False, 'Perfundon me 31.12.2020');
insert into Detajet values(06, 2017, '1 Mars', '5', 'Afrim Gashi', True, 'Perfundon me 31.12.2023');
insert into Detajet values(07, 2018, '29 Shtator', '5', 'Gresa Haliti', True, 'Perfundon me 31.12.2022');
insert into Detajet values(08, 2021, '12 Dhjetor', '10', 'Gresa Haliti', True, 'Perfundon me 31.12.2022');
insert into Detajet values(09, 2020, '26 Nentor', '10', 'Dea Rexha', False, 'Perfundon me 31.12.2020');
insert into Detajet values(10, 2020, '2 Janar', '10', 'Dea Rexha', False, 'Perfundon me 31.12.2020');
insert into Detajet values(11, 2016, '4 Korrik', '5', 'Afrim Gashi', True, 'Perfundon me 31.12.2021');
insert into Detajet values(12, 2018, '19 Shkurt', '5', 'Afrim Gashi', False, 'Perfundon me 31.12.2019');
insert into Detajet values(13, 2021, '5 Tetor', '10', 'Gresa Haliti', True, 'Perfundon me 31.12.2023');
insert into Detajet values(14, 2014, '20 Prill', '5', 'Dea Rexha', False, 'Perfundon me 31.12.2018');
insert into Detajet values(15, 2021, '8 Korrik', '10', 'Gresa Haliti', True, 'Perfundon me 31.12.2022');


insert into Punetori values(201, 'Dea', 'Rexha', 'Anetarsime', 'Mbreti Bardhyl', 'Peje', 'Kosove', '+38349364030', '038237423', '30000', 'dea_rexha@gmail.com', '450€');
insert into Punetori values(202, 'Gresa', 'Haliti', 'Anetarsime', 'Sefedin Maxhuni', 'Vushtrri', 'Kosove', '+38344364560', '038934578', '40000', 'gresahaliti@hotmail.com', '450€');
insert into Punetori values(203, 'Afrim', 'Gashi', 'Anetarsime', 'Adem Jashari', 'Mitrovice', 'Kosove', '+38349573293', '038960879', '43000', 'afrimgashi1@yahoo.com', '450€');
insert into Punetori values(204, 'Rina', 'Loxha', 'IT Support', '28 Nentori', 'Tirane', 'Shqiperi', '+38349483272', '038879768', '10000', 'rina.loxha@gmail.com', '550€');
insert into Punetori values(205, 'Bedri', 'Hasani', 'IT Support', 'Paqja', 'Prizren', 'Kosove', '+38344382829', '038769077', '20000', 'bedrihasani@live.com', '550€');
insert into Punetori values(206, 'Ahmet', 'Pllana' , 'Transport', 'Jakov Xoxa', 'Prishtine', 'Kosove', '+38349343235', '038356689', '10000', 'ahmet.p@gmail.com', '300€');
insert into Punetori values(207, 'Ali', 'Temaj', 'Transport', 'Jakov Xoxa', 'Prishtine', 'Kosove', '+38344637893', '038356689', '10000', 'ali_temaj@live.com', '300€');
insert into Punetori values(208, 'Kushtrim', 'Hoti', 'Hulumtimi i tregut', 'Lidhja e Prizrenit', 'Shkoder', 'Shqiperi', '+38344849924', '038588966', '4000', 'kushtrimhoti@live.com', '500€');
insert into Punetori values(209, 'Albion', 'Aliu', 'Mirembajtje e uebfaqes', 'Malush Kosova', 'Prishtine', 'Kosove', '+38349329580', '038783467', '10000', 'aliu.albion@hotmail.com', '600€');
insert into Punetori values(210, 'Dion', 'Voca', 'Mirembajtje e uebfaqes', 'Nene Tereza', 'Peje', 'Kosove', '+38349282474', '038769078', '30000', 'd_voca@msn.com', '600€');
insert into Punetori values(211, 'Ermal', 'Kadriu', 'Hulumtimi i tregut', 'Haxhi Zeka', 'Berat', 'Shqiperi', '+38349247862', '038087087', '6000', 'ermalkadriu8@gmail.com', '500€');


insert into Librat values(1221, 'Harry Potter', 'J.K. Rowling', 'Mister', 15, '2021-10-21', 'Afrim Gashi');
insert into Librat values(1222, 'Lulja e Kujtimit', 'Foqjon Postoli', 'Drame', 10, '2021-10-21', 'Afrim Gashi');
insert into Librat values(1223, 'Sikur te isha djale', 'Haki Stermilli', 'Histori', 5, '2020-05-04', 'Gresa Haliti');
insert into Librat values(1224, 'The Toll', 'Neal Shusterman', 'Horror', 6, '2021-10-21', 'Afrim Gashi');
insert into Librat values(1225, 'Ali Cross', 'James Patterson', 'Krim', 5, '2019-08-16', 'Dea Rexha');
insert into Librat values(1226, 'Sister First', 'Jenna Bush Hager', 'Drame', 5, '2021-10-21', 'Afrim Gashi');
insert into Librat values(1227, 'Wrecking Ball', 'Jeff Kinney', 'Ditar', 8, '2018-02-07', 'Dea Rexha');
insert into Librat values(1228, 'Winterwood', 'Shea Ernshaw', 'Fantazi', 10, '2020-01-05', 'Gresa Haliti');
insert into Librat values(1229, 'I have no secrets', 'Penny Joelson', 'Histori', 4, '2021-10-21', 'Afrim Gashi');
insert into Librat values(1230, 'Blood Heir', 'Amelie Wen Zhao', 'Thriller', 2, '2019-03-04', 'Dea Rexha');
insert into Librat values(1231, 'Epoca', 'Ivy Claire', 'Fantashkence', 12, '2020-07-18', 'Dea Rexha');
insert into Librat values(1232, 'Shine', 'J.J Grabenstein', 'Shkence', 7, '2021-10-21', 'Afrim Gashi');
insert into Librat values(1233, 'My Book With No Pictures', 'B.J. Novak', 'Dokumentar', 14, '2017-03-19', 'Gresa Haliti');
insert into Librat values(1234, 'Plaku dhe Deti', 'Ernest Hemingway', 'Fantazi', 13, '2020-06-19', 'Gresa Haliti');
insert into Librat values(1235, 'Sam Houston', 'Brian Kilmeade', 'Dokumentar', 15, '2021-05-11', 'Dea Rexha');



insert into Huazimi values(01, 1225, '2021-10-06', '2021-10-21', '2021-10-15', 'Afrim Gashi', 'Nuk ka');
insert into Huazimi values(04, 1225, '2021-10-05', '2021-10-20', '2021-10-06', 'Afrim Gashi', 'Nuk ka');
insert into Huazimi values(05, 1228, '2020-12-01', '2020-12-16', '2020-12-13', 'Gresa Haliti', 'Nuk ka');
insert into Huazimi values(05, 1225, '2021-10-09', '2021-10-24', '2021-10-21', 'Dea Loxha', 'Nuk ka');
insert into Huazimi values(12, 1231, '2021-10-24', '2021-11-08', '2021-11-06', 'Gresa Haliti', 'Nuk ka');
insert into Huazimi values(05, 1235, '2020-11-11', '2020-11-26', '2020-11-25', 'Afrim Gashi', 'Nuk ka');
insert into Huazimi values(04, 1226, '2020-01-05', '2020-01-20', '2020-01-23', 'Dea Loxha', '3 dite vonese');
insert into Huazimi values(04, 1230, '2020-08-07', '2020-08-22', '2020-08-28', 'Dea Loxha', '6 dite vonese');
insert into Huazimi values(13, 1225, '2021-11-29', '2021-12-13', '2021-12-09', 'Afrim Gashi', 'Nuk ka');
insert into Huazimi values(12, 1221, '2017-03-12', '2017-03-27', '2017-03-29', 'Gresa Hajra', '2 dite vonese');
insert into Huazimi values(11, 1224, '2021-11-20', '2021-12-04', '2021-12-12', 'Afrim Gashi', '8 dite vonese');
insert into Huazimi values(13, 1224, '2021-10-02', '2021-10-17', '2021-10-15', 'Dea Loxha', 'Nuk ka');
insert into Huazimi values(10, 1228, '2020-11-05', '2020-07-20', '2020-07-18', 'Afrim Gashi', 'Nuk ka');
insert into Huazimi values(07, 1224, '2021-12-10', '2021-12-25', '2021-12-23', 'Afrim Gashi', 'Nuk ka');
insert into Huazimi values(06, 1222, '2021-11-03', '2021-11-18', '2021-11-16', 'Dea Loxha', 'Nuk ka');
insert into Huazimi values(07, 1222, '2021-12-12', '2021-07-27', '2021-07-20', 'Gresa Haliti', 'Nuk ka');


insert into Arkiva values(101, 1221, 05);
insert into Arkiva values(102, 1222, 07);
insert into Arkiva values(103, 1223, 05);
insert into Arkiva values(104, 1224, 02);
insert into Arkiva values(105, 1225, 03);
insert into Arkiva values(106, 1226, 07);
insert into Arkiva values(107, 1227, 04);
insert into Arkiva values(108, 1228, 05);
insert into Arkiva values(109, 1229, 11);
insert into Arkiva values(110, 1230, 03);


insert into Librat_Demtuar values(1236, 'Si te behesh i lumtur', 'Pakujdesia gjate leximit', '2021-06-24', 'Dea Rexha');
insert into Librat_Demtuar values(1237, 'Ne te tre', 'Libri ka qene afer zjarrit', '2021-11-19', 'Dea Rexha');
insert into Librat_Demtuar values(1238, 'Romeo dhe Juliet', 'Demtim i mehershem', '2020-01-15', 'Gresa Haliti');
insert into Librat_Demtuar values(1239, 'Kur fryma behet ajer', 'Pakujdesia', '2021-03-05', 'Gresa Haliti');
insert into Librat_Demtuar values(1240, 'Gremina e Dashurise', 'Pakujdesia', '2019-12-02', 'Afrim Gashi');
insert into Librat_Demtuar values(1241, 'Nje lindje e veshtire', 'Perdorimi i mjeteve te gabuara', '2021-04-11', 'Gresa Haliti');
insert into Librat_Demtuar values(1242, 'Foleja tragjike e dashurise', 'Demtimi nga kafshet shtepiake', '2021-12-22', 'Afrim Gashi');
insert into Librat_Demtuar values(1243, 'Nje histori e shkurter e kohes', 'Demtimi nga kafshet shtepiake', '2018-06-17', 'Dea Rexha');
insert into Librat_Demtuar values(1244, 'Sapiens', 'Pakujdesia', '2021-12-12', 'Dea Rexha');
insert into Librat_Demtuar values(1245, 'Te menduarit shpejte dhe ngadale', 'Demtim i mehershem', '2017-05-14', 'Afrim Gashi');



insert into Kredencialet values(301, 01, 'at@gmail.com', 'albintmava', 'albintmava1234');
insert into Kredencialet values(302, 02, 'lg@gmail.com', 'Lauragashi', 'Lauragashi1234');
insert into Kredencialet values(303, 03, 'ak@gmail.com', 'Albakrasniqi', 'Albakrasniqi');
insert into Kredencialet values(304, 04, 'zz@hotmail.com', 'Zbulimzekaj', 'Zbulimzekaj1234');
insert into Kredencialet values(305, 05, 'rh@hotmail.com', 'Rinahajra', 'rinahajra1234');
insert into Kredencialet values(306, 06, 'dl@gmail.com', 'Deahoxha', 'Deahoxha1234');
insert into Kredencialet values(307, 07, 'lsh@hotmail.com', 'Leonshala', 'Leonshala1234');
insert into Kredencialet values(308, 08, 'akr@gmail.com', 'Artkrasniqi', 'Artkrasniqi1234');
insert into Kredencialet values(309, 09, 'av@gmail.com', 'ardvokshi', 'ardvokshi1234');
insert into Kredencialet values(310, 10, 'bp@gmail.com', 'bekimpllana', 'bekimpllana1234');
insert into Kredencialet values(311, 11, 'bd@hotmail.com', 'Brikenadevolli', 'Brikenadevolli1234');
insert into Kredencialet values(312, 12, 'at@gmail.com', 'Altintemaj', 'Altintemaj1234');
insert into Kredencialet values(313, 13, 'ja@gmail.com', 'Jetmiraalija', 'Jetmiraalija1234');
insert into Kredencialet values(314, 14, 'ts@gmail.com', 'Teutasfishta', 'Teutasfishta1234');
insert into Kredencialet values(315, 15, 'em@hotmail.com', 'Ekremmurati', 'Ekremmurati1234');



insert into Kredencialetp values(401, 201, 'afrim.g@gmail.com', 'afrimgashi', 'afrimgashi1234');
insert into Kredencialetp values(402, 202, 'dea.r@gmail.com', 'gresahaliti', 'gresahaliti1234');
insert into Kredencialetp values(403, 203, 'gresa.h@gmail.com', 'gresahaliti', 'gresahaliti1234');
insert into Kredencialetp values(404, 204, 'dion.v@hotmail.com', 'dionvoca', 'dionvoca1234');
insert into Kredencialetp values(405, 205, 'albion.a@hotmail.com', 'albionaliu', 'albionaliu1234');
insert into Kredencialetp values(406, 206, 'kushtrim.h@gmail.com', 'kushtrimhoti', 'kushtrimhoti1234');
insert into Kredencialetp values(407, 207, 'ermal.k@hotmail.com', 'ermalkadriu', 'ermalkadriu1234');
insert into Kredencialetp values(408, 208, 'ahmet.p@gmail.com', 'ahmetpllana', 'ahmetpllana1234');
insert into Kredencialetp values(409, 209, 'ali.t@gmail.com', 'alitemaj', 'alitemaj1234');
insert into Kredencialetp values(410, 210, 'bedri.h@gmail.com', 'bedrihasani', 'bedrihasani1234');
insert into Kredencialetp values(411, 211, 'rina.l@live.com', 'rinaloxha', 'rinaloxha1234');


insert into Komentet values(10201, 1221, 07, '2019-01-11', '13:55:12', 'Liber fantastik');
insert into Komentet values(10202, 1222, 06, '2021-02-24', '23:44:32', 'Ka mundur me mire');
insert into Komentet values(10203, 1223, 09, '2021-03-29', '10:12:34', '6-10, mesatar');
insert into Komentet values(10204, 1224, 05, '2020-04-02', '12:45:44', 'Me pelqeu shume');
insert into Komentet values(10205, 1225, 15, '2021-05-07', '16:20:12', 'Nje nder me te miret');
insert into Komentet values(10206, 1226, 08, '2017-04-15', '09:23:39', 'Shume i gjate!');
insert into Komentet values(10207, 1227, 02, '2021-12-12', '19:23:55', 'Stroje interesate!');
insert into Komentet values(10208, 1228, 12, '2020-01-03', '01:10:12', 'Me pelqeu!');
insert into Komentet values(10209, 1229, 13, '2021-08-14', '13:45:48', 'Mjaft i mire!');
insert into Komentet values(10210, 1230, 12, '2018-10-09', '07:34:12', 'Fantastik');
insert into Komentet values(10211, 1231, 15, '2019-11-02', '23:19:42', 'Jo aq i mire');
insert into Komentet values(10212, 1232, 04, '2021-11-25', '16:32:11', 'Perfekt');
insert into Komentet values(10213, 1233, 07, '2017-09-13', '22:24:25', 'Autor i mrekullueshem');
insert into Komentet values(10214, 1234, 06, '2021-06-22', '03:07:08', 'Shume i mire');
insert into Komentet values(10215, 1235, 09, '2019-07-16', '20:10:12', '9-10, me pelqeu shume!');


/*Query 1*/
        /*Listoni të gjithë lexuesit që janë nga qyteti i Prishtinës.*/
	SELECT * FROM biblioteka.lexuesi where qyteti like '%Prishtine%';

/*Query 2*/
        /*Cilët lexues (Emrin dhe Mbiemrin e tyre) kanë huazuar te pakten dy libra gjate vitit 2020?*/
	SELECT Lexuesi.emri, Lexuesi.mbiemri , COUNT(huazimi.lbid) As NumriILibraveTeHuazuara FROM 
	( Huazimi INNER JOIN Lexuesi ON Huazimi.lid = Lexuesi.lid)
	GROUP BY emri 
	HAVING COUNT(Huazimi.lid) >= 2;

/*Query 3*/
        /*Listoni lexuesit te cilet e kane vonuar kthimin e librit ne afatin 15 ditesh per vitin 2020 ose 2021.*/
	select * from lexuesi, huazimi
	where year(huazimi.dataehuazimit)='2020' and
	(huazimi.datakthimit-huazimi.max_datakthimit)>0 and
	lexuesi.lid = huazimi.lid union
	select * from lexuesi, huazimi
	where year(huazimi.dataehuazimit)='2021' and
	(huazimi.datakthimit-huazimi.max_datakthimit) >0 and
	lexuesi.lid = huazimi.lid;

/*Query 4*/
      /*  Listoni ID-të dhe titullin e librave qe ne vitin 2019 ose 2020 jane huazuar se paku nje here kurse ne vitin 2021 asnjehere .*/
	select distinct librat.lbid, librat.titulli
	from librat, huazimi
	where librat.lbid=huazimi.lbid
	and (year(huazimi.dataehuazimit)='2019' or
	year(huazimi.dataehuazimit)='2020')
	and huazimi.lbid not in
	(select huazimi.lbid
	from huazimi
	where year(huazimi.dataehuazimit)='2021');

/*Query 5*/
        /*Listoni top 5 lexuesit me numrin me te madh të huazimeve në 3 muajt e fundit. Lista të paraqes të dhënat e lexusit duke përfshirë emrin e mbiemrin si dhe numrin e huazimeve që ka realizuar.*/
	Select l.emri,l.mbiemri,h.lid, count(*) "Numri i huazimeve"
	from huazimi h, lexuesi l
	where l.lid = h.lid
	group by h.lid
	order by count(*) desc
	limit 5;

/*Query 6*/
        /* Gjeni shumen e fituar nga te gjitha anetaresimet, te ndare ne vite 2019,2020,2021. Rezultati duhet te jete nje tabele te ka fushat Viti, Shuma.*/
	select vitiregjistrimit, sum(cmimi)
	from detajet
	where vitiregjistrimit = 2019
	union
	select vitiregjistrimit, sum(cmimi)
	from detajet
	where vitiregjistrimit = 2020
	union
	select vitiregjistrimit, sum(cmimi)
	from detajet
	where vitiregjistrimit = 2021;




/*Query 7*/ 
	/*Për secilin lexues paraqitni (në një listë të vetme), per vitin aktual:  Emri, mbiemri,  numrin e   librave qe ka huazuar, zhanri i preferuar, sa here e ka vonuar librin(nese ska vonesa, numri eshte 0)*/
	select
	lexuesi.emri,
	lexuesi.mbiemri,
	librat.zhanri,
	count(*) as lid
	from biblioteka.huazimi
	inner join biblioteka.librat on librat.lbid = huazimi.lbid	
	inner join biblioteka.lexuesi on
	lexuesi.lid=huazimi.lid
	group by lexuesi.lid
	having count(*) in(
	select distinct count(*)
	from biblioteka.huazimi
	where year(huazimi.dataehuazimit)='2021'
	group by lid
	order by count(*) desc);



/*Query 8*/
       /*Gjeni top librin me te lexuar per vitin aktual.*/
	select librat.titulli as emri,
	count(*) as lbid
	from biblioteka.huazimi
	inner join biblioteka.librat on librat.lbid=huazimi.lbid
	group by librat.lbid
	having count(*) in
	(
	select distinct count(*)
	from biblioteka.huazimi
	where year(huazimi.dataehuazimit)='2021'
	group by lbid
	order by count(*) desc
	)
	order by lbid desc limit 1;


/*Query 9*/
         /*Cili eshte autori me i preferuar nga lexuesit?*/
	Select h.lbid, l.Autori
	from huazimi h, librat l
	where h.lbid = l.lbid 
	group by h.lbid
	having count(*) >= All(Select count(*)
					from huazimi h
					group by h.lbid);

/* View table per te caktuar lexuesit qe vijne nga qyteti i Prishtines */
CREATE VIEW lexuesit_prishtine AS
(select * from lexuesi l
where l.qyteti = 'Prishtine');

/* View table per te caktuar lexuesit qe kane paguar 5EUR per regjistrim */
CREATE VIEW cmimi_regjistrimit_5 AS
(select * from detajet d
where d.cmimi = 5); 

/* Trigger nese cmimi eshte me i vogel se 10 */
delimiter $$
create trigger CheckPrice before insert on detajet
for each row
begin
IF NEW.cmimi < 10
Then signal sqlstate '45000'
set message_text = 'Cmimi duhet te jete me i madh se 10';
END IF;
end $$
delimiter $$; 

/* Trigger ne rast se numri i kopjeve te librit nuk eshte me i madh ose barabarte me 1 */
delimiter $$
create trigger CheckQuantity before insert on librat
for each row
begin
IF NEW.nr_kopjeve < 1
Then signal sqlstate '45000'
set message_text = 'Numri i kopjeve te librit duhet te jete te pakten 1';
END IF;
end $$
delimiter $$; 

/* Stored procedure per te listuar punetoret qe bejne anetarsime */
delimiter //
create procedure Punetoret_Anetarsime()
begin
select * from punetori p
where p.titulli = "Anetarsime";
end //
delimiter ; 

/* Stored procedure per te edituar adresen e lexuesit */
delimiter //
create procedure EditAddress(parameter_lid int, parameter_rruga varchar(70), parameter_qyteti varchar(50), 
parameter_shteti varchar(50))
begin
Update lexuesi
set rruga = parameter_rruga,
qyteti = parameter_qyteti,
shteti = parameter_shteti
where lid = parameter_lid;
end //
delimiter ; 

/* Funksion per te treguar profitin pas pagese se taksave */
DELIMITER $$
CREATE FUNCTION Profiti_pas_taksave(a decimal, b decimal, c decimal)
RETURNS decimal deterministic
BEGIN
RETURN (a+b+c) - (a+b+c)*0.18;
END $$
DELIMITER ;
