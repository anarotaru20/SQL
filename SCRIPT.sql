--TABELE
CREATE TABLE ANGAJATI_1 (
    id_angajat NUMBER(3) PRIMARY KEY not null,
    nume_angajat VARCHAR2(20) not null, 
    prenume_angajat VARCHAR2(20) not null,
    telefon_angajat VARCHAR2(20) not null,
    email_angajat VARCHAR2(30) unique not null,
    data_angajare DATE,
    salariu_angajat NUMBER(8,2) not null
);

alter table ANGAJATI_1 
add constraint email_angajat check (email_angajat like '_%@_%._%');

CREATE TABLE CLIENTI_1 (
    id_client NUMBER(3) PRIMARY KEY not null,
    nume_client VARCHAR2(20) not null, 
    prenume_client VARCHAR2(20) not null, 
    cnp_client VARCHAR2(20) not null,
    telefon_client VARCHAR2(20) not null,
    adresa_client VARCHAR2(50) not null 
);

CREATE TABLE FURNIZORI_1 (
    id_furnizor NUMBER(3) PRIMARY KEY not null,
    nume_furnizor VARCHAR2(20) not null, 
    telefon_furnizor VARCHAR2(20) not null,
    adresa_furnizor VARCHAR2(30) not null
);

CREATE TABLE ARTICOLE_1 (
    id_articol NUMBER(3) PRIMARY KEY not null,
    nume_articol VARCHAR2(200) not null, 
    caracteristici_articol VARCHAR2(500) not null,
    stoc_articol NUMBER(3) not null,
    pret_articol NUMBER(8,2),
    id_furnizor NUMBER(3) not null
);

alter table ARTICOLE_1 
add constraint ARTICOLE_ID_FURNIZOR_FK foreign key (id_furnizor) references FURNIZORI_1 (id_furnizor);
alter table ARTICOLE_1 
drop column stoc_articol;

CREATE TABLE COMENZI_1 (
    id_comanda NUMBER(3) PRIMARY KEY not null,
    data_comanda DATE,
    id_client NUMBER(3), FOREIGN KEY (id_client) REFERENCES CLIENTI_1 (id_client),
    id_articol NUMBER(3), FOREIGN KEY (id_articol) REFERENCES ARTICOLE_1 (id_articol),
    cantitate NUMBER(5) not null,
    stare_comanda VARCHAR2(20)
);

alter table COMENZI_1 
add id_angajat number(3);

CREATE TABLE INCASARI_1 (
    id_incasare NUMBER(4) PRIMARY KEY not null,
    data_incasare DATE, 
    id_comanda NUMBER(3),
    suma VARCHAR2(20),
    datorie NUMBER(8,2)
);

alter table INCASARI_1
add constraint INCASARI_ID_COMANDA_FK foreign key (id_comanda) references COMENZI_1 (id_comanda);



--INSERT ANGAJATI
insert into ANGAJATI_1 (id_angajat, nume_angajat, prenume_angajat, telefon_angajat, email_angajat, data_angajare, salariu_angajat)
values (100, 'Popa', 'Oana', '0724.358.369', 'oana.popa@yahoo.com', to_date('28-09-2016', 'dd-mm-yyyy'), 2621);
insert into ANGAJATI_1 (id_angajat, nume_angajat, prenume_angajat, telefon_angajat, email_angajat, data_angajare, salariu_angajat)
values (101, 'Ivanescu', 'Cornelia', '0734.856.544', 'corneliaivanescu@yahoo.com',  to_date('20-10-2017', 'dd-mm-yyyy'), 2145);
insert into ANGAJATI_1 (id_angajat, nume_angajat, prenume_angajat, telefon_angajat, email_angajat, data_angajare, salariu_angajat)
values (102, 'Popa', 'Andreea', '0724.897.542', 'popa.andreea@yahoo.com', to_date('28-09-2016', 'dd-mm-yyyy'), 2621);
insert into ANGAJATI_1 (id_angajat, nume_angajat, prenume_angajat, telefon_angajat, email_angajat, data_angajare, salariu_angajat)
values (103, 'Muscalescu', 'Denis', '0734.789.410', 'denis.muscalescu@yahoo.com',  to_date('03-10-2020', 'dd-mm-yyyy'), 1875);
insert into ANGAJATI_1 (id_angajat, nume_angajat, prenume_angajat, telefon_angajat, email_angajat, data_angajare, salariu_angajat)
values (104, 'Popa', 'Tudor', '0789.457.653', 't.popa@yahoo.com', to_date('28-09-2016', 'dd-mm-yyyy'), 2621);
insert into ANGAJATI_1 (id_angajat, nume_angajat, prenume_angajat, telefon_angajat, email_angajat, data_angajare, salariu_angajat)
values (105, 'Vladulesu', 'Ioana', '0754.652.103', 'ioana.vladulescu@yahoo.com',  to_date('02-04-2018', 'dd-mm-yyyy'), 2045);
insert into ANGAJATI_1 (id_angajat, nume_angajat, prenume_angajat, telefon_angajat, email_angajat, data_angajare, salariu_angajat)
values (106, 'Georgescu', 'Alexandra', '0732.478.623', 'alex.georgescu@yahoo.com', to_date('20-10-2017', 'dd-mm-yyyy'), 2471);
insert into ANGAJATI_1 (id_angajat, nume_angajat, prenume_angajat, telefon_angajat, email_angajat, data_angajare, salariu_angajat)
values (107, 'Florea', 'Adrian', '0745.874.565', 'adrin.florea@yahoo.com',  to_date('02-04-2018', 'dd-mm-yyyy'), 1845);
insert into ANGAJATI_1 (id_angajat, nume_angajat, prenume_angajat, telefon_angajat, email_angajat, data_angajare, salariu_angajat)
values (108, 'Ornicescu', 'Andrei', '0778.498.105', 'andrei.ornicescu@yahoo.com', to_date('28-09-2016', 'dd-mm-yyyy'), 2621);
insert into ANGAJATI_1 (id_angajat, nume_angajat, prenume_angajat, telefon_angajat, email_angajat, data_angajare, salariu_angajat)
values (109, 'Ureche', 'Adrian', '0754.894.476', 'ureche.adi@yahoo.com',  to_date('10-05-2019', 'dd-mm-yyyy'), 3245);
insert into ANGAJATI_1 (id_angajat, nume_angajat, prenume_angajat, telefon_angajat, email_angajat, data_angajare, salariu_angajat)
values (110, 'Popescu', 'Ana', '0745.697.109', 'ana.popescu@yahoo.com', to_date('03-10-2020', 'dd-mm-yyyy'), 2621);
insert into ANGAJATI_1 (id_angajat, nume_angajat, prenume_angajat, telefon_angajat, email_angajat, data_angajare, salariu_angajat)
values (111, 'Andronescu', 'Lucia', '0745.125.708', 'lucia_andronescu@yahoo.com', to_date('20-10-2017', 'dd-mm-yyyy'), 2621);
insert into ANGAJATI_1 (id_angajat, nume_angajat, prenume_angajat, telefon_angajat, email_angajat, data_angajare, salariu_angajat)
values (112, 'Anton', 'Andreea', '0735.789.404', 'andreea_anton21@yahoo.com',  to_date('02-04-2018', 'dd-mm-yyyy'), 1875);
insert into ANGAJATI_1 (id_angajat, nume_angajat, prenume_angajat, telefon_angajat, email_angajat, data_angajare, salariu_angajat)
values (113, 'Anton', 'Florin', '0789.457.653', 'anton.florin23@yahoo.com', to_date('08-06-2016', 'dd-mm-yyyy'), 2721);
insert into ANGAJATI_1 (id_angajat, nume_angajat, prenume_angajat, telefon_angajat, email_angajat, data_angajare, salariu_angajat)
values (114, 'Barbulescu', 'Alexandru', '0754.652.103', 'alexandru.barbulescu@yahoo.com',  to_date('10-06-2015', 'dd-mm-yyyy'), 2845);
insert into ANGAJATI_1 (id_angajat, nume_angajat, prenume_angajat, telefon_angajat, email_angajat, data_angajare, salariu_angajat)
values (115, 'Burnescu', 'Felicia', '0778.054.098', 'burnescu_felicia34@yahoo.com', to_date('28-09-2016', 'dd-mm-yyyy'), 3471);
insert into ANGAJATI_1 (id_angajat, nume_angajat, prenume_angajat, telefon_angajat, email_angajat, data_angajare, salariu_angajat)
values (116, 'Dorobantu', 'Adrian', '0748.154.656', 'alin.doro45@yahoo.com',  to_date('15-11-2018', 'dd-mm-yyyy'), 4845);
insert into ANGAJATI_1 (id_angajat, nume_angajat, prenume_angajat, telefon_angajat, email_angajat, data_angajare, salariu_angajat)
values (117, 'Andrei', 'Violeta', '0758.214.566', 'andrei_vio23@yahoo.com', to_date('06-02-2019', 'dd-mm-yyyy'), 2621);
insert into ANGAJATI_1 (id_angajat, nume_angajat, prenume_angajat, telefon_angajat, email_angajat, data_angajare, salariu_angajat)
values (118, 'Grecu', 'Marian', '0778.205.659', 'grecu_marian34@yahoo.com',  to_date('10-05-2019', 'dd-mm-yyyy'), 3285);
insert into ANGAJATI_1 (id_angajat, nume_angajat, prenume_angajat, telefon_angajat, email_angajat, data_angajare, salariu_angajat)
values (119, 'Oprea', 'Andrei', '0778.598.415', 'andrei_oprea28@yahoo.com', to_date('21-09-2020', 'dd-mm-yyyy'), 3621);
insert into ANGAJATI_1 (id_angajat, nume_angajat, prenume_angajat, telefon_angajat, email_angajat, data_angajare, salariu_angajat)
values (120, 'Marian', 'Alexandru', '0789.568.485', 'marian.alex988@yahoo.com', to_date('03-10-2020', 'dd-mm-yyyy'), 1621);
insert into ANGAJATI_1 (id_angajat, nume_angajat, prenume_angajat, telefon_angajat, email_angajat, data_angajare, salariu_angajat)
values (121, 'Gorge', 'Andra', '0775.236.485', 'andra_george145@yahoo.com', to_date('20-10-2017', 'dd-mm-yyyy'), 2621);
insert into ANGAJATI_1 (id_angajat, nume_angajat, prenume_angajat, telefon_angajat, email_angajat, data_angajare, salariu_angajat)
values (122, 'Irimescu', 'Andreea', '0786.569.100', 'andreeairime21@yahoo.com',  to_date('02-04-2018', 'dd-mm-yyyy'), 1875);
insert into ANGAJATI_1 (id_angajat, nume_angajat, prenume_angajat, telefon_angajat, email_angajat, data_angajare, salariu_angajat)
values (123, 'Popa', 'Dan', '0787.005.875', 'popdan@yahoo.com', to_date('08-06-2016', 'dd-mm-yyyy'), 2721);
insert into ANGAJATI_1 (id_angajat, nume_angajat, prenume_angajat, telefon_angajat, email_angajat, data_angajare, salariu_angajat)
values (124, 'Mihai', 'Doru', '0721.406.924', 'doru_mihai45@yahoo.com',  to_date('10-06-2015', 'dd-mm-yyyy'), 2845);
insert into ANGAJATI_1 (id_angajat, nume_angajat, prenume_angajat, telefon_angajat, email_angajat, data_angajare, salariu_angajat)
values (125, 'Alexandru', 'Lorena', '0772.345.566', 'lory_alex45@yahoo.com', to_date('28-09-2016', 'dd-mm-yyyy'), 3471);
insert into ANGAJATI_1 (id_angajat, nume_angajat, prenume_angajat, telefon_angajat, email_angajat, data_angajare, salariu_angajat)
values (126, 'Ivan', 'Camelia', '0731.705.984', 'camiivan@yahoo.com',  to_date('03-10-2020', 'dd-mm-yyyy'), 1245);
insert into ANGAJATI_1 (id_angajat, nume_angajat, prenume_angajat, telefon_angajat, email_angajat, data_angajare, salariu_angajat)
values (127, 'Rosu', 'Maria', '0787.462.523', 'r.maria32@yahoo.com', to_date('06-02-2019', 'dd-mm-yyyy'), 2621);
insert into ANGAJATI_1 (id_angajat, nume_angajat, prenume_angajat, telefon_angajat, email_angajat, data_angajare, salariu_angajat)
values (128, 'Corbu', 'Alexandru', '0796.568.045', 'corbu_alexandru586@yahoo.com',  to_date('10-05-2019', 'dd-mm-yyyy'), 3285);
insert into ANGAJATI_1 (id_angajat, nume_angajat, prenume_angajat, telefon_angajat, email_angajat, data_angajare, salariu_angajat)
values (129, 'Florea', 'Andrei', '0798.587.598', 'andrei_florea5456@yahoo.com', to_date('21-09-2020', 'dd-mm-yyyy'), 3621);
insert into ANGAJATI_1 (id_angajat, nume_angajat, prenume_angajat, telefon_angajat, email_angajat, data_angajare, salariu_angajat)
values (130, 'Lascu', 'Alexandru', '0787.028.658', 'l.alexandru329@yahoo.com', to_date('03-10-2020', 'dd-mm-yyyy'), 1621);

update ANGAJATI_1 
set nume_angajat = 'Rotaru', prenume_angajat ='Ana-Maria', email_angajat='rotarumaria19@stud.ase.ro'
where id_angajat = 100;


--INSERT CLIENTI
insert into CLIENTI_1 (id_client, nume_client, prenume_client, cnp_client, telefon_client, adresa_client)
values(10, 'Ionescu', 'Maria', '0251123450096', '0734.852.986', 'Strada Lalelelor nr.7, Bucuresti');
insert into CLIENTI_1 (id_client, nume_client, prenume_client, cnp_client, telefon_client, adresa_client)
values(11, 'Ifrim', 'Ion', '0348759842103', '0745.985.241', 'Strada Florilor nr.6, Bucuresti');
insert into CLIENTI_1 (id_client, nume_client, prenume_client, cnp_client, telefon_client, adresa_client)
values(12, 'Radulescu', 'Camelia', '0615854789541', '0778.463.632', 'Str. Lemnului nr.8, Brasov');
insert into CLIENTI_1 (id_client, nume_client, prenume_client, cnp_client, telefon_client, adresa_client)
values(13, 'Anton', 'Florin', '0874589658741', '0724.856.812', 'Strada Verde nr.17, Iasi');
insert into CLIENTI_1 (id_client, nume_client, prenume_client, cnp_client, telefon_client, adresa_client)
values(14, 'Radu', 'Lucia', '0457842158745', '0754.852.414', 'Strada Rosie nr.45, Targoviste');
insert into CLIENTI_1 (id_client, nume_client, prenume_client, cnp_client, telefon_client, adresa_client)
values(15, 'Traian', 'Raluca', '0584478965214', '0727.865.054', 'Strada Albastra nr.25, Ploiesti');
insert into CLIENTI_1 (id_client, nume_client, prenume_client, cnp_client, telefon_client, adresa_client)
values(16, 'Dan', 'Florica', '0784598145126', '0734.856.120', 'Strada Pacii nr.27, Cluj');
insert into CLIENTI_1 (id_client, nume_client, prenume_client, cnp_client, telefon_client, adresa_client)
values(17, 'Marinescu', 'Zoe', '0456874125891', '0724.568.951', 'Strada Podului nr.4, Bucuresti');
insert into CLIENTI_1 (id_client, nume_client, prenume_client, cnp_client, telefon_client, adresa_client)
values(18, 'Ionescu', 'Adrian', '0745458712569', '0754.745.681', 'Strada Petre nr.5, Pitesti');
insert into CLIENTI_1 (id_client, nume_client, prenume_client, cnp_client, telefon_client, adresa_client)
values(19, 'Irinescu', 'Manuel', '0478954758948', '0778.410.586', 'Strada Valeni nr.10, Sinaia');
insert into CLIENTI_1 (id_client, nume_client, prenume_client, cnp_client, telefon_client, adresa_client)
values(20, 'Andrei', 'Oana', '0547896410256', '0723.148.957', 'Strada Muzelor nr.6, Bacau');
insert into CLIENTI_1 (id_client, nume_client, prenume_client, cnp_client, telefon_client, adresa_client)
values(21, 'Ionescu', 'Mara', '0854126985471', '0747.589.654', 'Strada Virgil nr.3, Buzau');
insert into CLIENTI_1 (id_client, nume_client, prenume_client, cnp_client, telefon_client, adresa_client)
values(22, 'Zavoranu', 'Ionel', '0421458795412', '0728.965.745', 'Strada Meritelor nr.1, Suceava');
insert into CLIENTI_1 (id_client, nume_client, prenume_client, cnp_client, telefon_client, adresa_client)
values(23, 'Dan', 'Alexandru', '0547985120354', '0748.956.265', 'Strada Alba nr.5, Targoviste');
insert into CLIENTI_1 (id_client, nume_client, prenume_client, cnp_client, telefon_client, adresa_client)
values(24, 'Niculescu', 'Daniel', '0584785479312', '0778.458.566', 'Strada Marinarilor nr.8, Constanta');
insert into CLIENTI_1 (id_client, nume_client, prenume_client, cnp_client, telefon_client, adresa_client)
values(25, 'Oprea', 'Ionela', '0785412047912', '0798.458.102', 'Strada Velma nr.4, Bacau');
insert into CLIENTI_1 (id_client, nume_client, prenume_client, cnp_client, telefon_client, adresa_client)
values(26, 'Rotaru', 'Ioana', '0658741256849', '0778.465.805', 'Strada Papadiilor nr.2, Bucuresti');
insert into CLIENTI_1 (id_client, nume_client, prenume_client, cnp_client, telefon_client, adresa_client)
values(27, 'Barbu', 'Elena', '0458741359420', '0779.456.265', 'Strada Oprescu nr.8, Pitesti');
insert into CLIENTI_1 (id_client, nume_client, prenume_client, cnp_client, telefon_client, adresa_client)
values(28, 'Ierulescu', 'Oana', '0784587412598', '0775.214.598', 'Strada Berzelor nr.15, Baia Mare');
insert into CLIENTI_1 (id_client, nume_client, prenume_client, cnp_client, telefon_client, adresa_client)
values(29, 'Barbulesu', 'Alexandru', '0895478563204', '0756.149.586', 'Strada Pasarilor nr.9, Suceava');
insert into CLIENTI_1 (id_client, nume_client, prenume_client, cnp_client, telefon_client, adresa_client)
values(30, 'Georgescu', 'Maria', '0725489650125', '0755.103.648', 'Strada Paris nr.7, Bucuresti');
insert into CLIENTI_1 (id_client, nume_client, prenume_client, cnp_client, telefon_client, adresa_client)
values(31, 'Andronache', 'George', '0325478960458', '0798.406.587', 'Strada Roma nr.10, Baia Mare');
insert into CLIENTI_1 (id_client, nume_client, prenume_client, cnp_client, telefon_client, adresa_client)
values(32, 'Orlin', 'Flavius', '0758465894125', '0789.528.356', 'Strada Jder nr.24, Pitesti');
insert into CLIENTI_1 (id_client, nume_client, prenume_client, cnp_client, telefon_client, adresa_client)
values(33, 'Andrei', 'Stefan', '0765201698453', '0786.982.556', 'Strada Pomilor nr.10, Brasov');
insert into CLIENTI_1 (id_client, nume_client, prenume_client, cnp_client, telefon_client, adresa_client)
values(34, 'Ionescu', 'Maria', '0325410698745', '0785.215.564', 'Strada Poeziei nr.5, Suceava');


--INSERT FURNIZORI
insert into FURNIZORI_1 (id_furnizor, nume_furnizor, telefon_furnizor, adresa_furnizor)
values(10, 'SDEX', '0317.548.057', 'Strada Frunzelor, Arad');
insert into FURNIZORI_1 (id_furnizor, nume_furnizor, telefon_furnizor, adresa_furnizor)
values(11, 'ASFR', '0317.569.045', 'Strada OP, Valcea');
insert into FURNIZORI_1 (id_furnizor, nume_furnizor, telefon_furnizor, adresa_furnizor)
values(12, 'DEDDE CP', '0317.854.026', 'Strada Copacului, Neamt');
insert into FURNIZORI_1 (id_furnizor, nume_furnizor, telefon_furnizor, adresa_furnizor)
values(13, 'HUIOL', '0318.458.064', 'Strada Ivinescu, Iasi');
insert into FURNIZORI_1 (id_furnizor, nume_furnizor, telefon_furnizor, adresa_furnizor)
values(14, 'LEORE', '0317.098.765', 'Strada Prada, Sinaia');
insert into FURNIZORI_1 (id_furnizor, nume_furnizor, telefon_furnizor, adresa_furnizor)
values(15, 'AFFLY', '0318.458.306', 'Strada Petrescu, Oradea');
insert into FURNIZORI_1 (id_furnizor, nume_furnizor, telefon_furnizor, adresa_furnizor)
values(16, 'ANRLTF', '0315.025.584', 'Strada Marina, Constanta');
insert into FURNIZORI_1 (id_furnizor, nume_furnizor, telefon_furnizor, adresa_furnizor)
values(17, 'SUOPRT', '0317.056.985', 'Strada Timpului, Galati');
insert into FURNIZORI_1 (id_furnizor, nume_furnizor, telefon_furnizor, adresa_furnizor)
values(18, 'DELIS', '0316.065.095', 'Strada Ovidiu, Focsani');
insert into FURNIZORI_1 (id_furnizor, nume_furnizor, telefon_furnizor, adresa_furnizor)
values(19, 'BELLAR', '0314.586.735', 'Strada Corneliu, Suceava');
insert into FURNIZORI_1 (id_furnizor, nume_furnizor, telefon_furnizor, adresa_furnizor)
values(20, 'PINKY', '0317.952.059', 'Strada Pelin, Baia Mare');
insert into FURNIZORI_1 (id_furnizor, nume_furnizor, telefon_furnizor, adresa_furnizor)
values(21, 'GREENF', '0318.586.563', 'Strada Andron, Arad');
insert into FURNIZORI_1 (id_furnizor, nume_furnizor, telefon_furnizor, adresa_furnizor)
values(22, 'ALMA', '0314.248.075', 'Strada Mircea, Valcea');
insert into FURNIZORI_1 (id_furnizor, nume_furnizor, telefon_furnizor, adresa_furnizor)
values(23, 'OPEX', '0317.798.982', 'Strada Ametist, Neamt');
insert into FURNIZORI_1 (id_furnizor, nume_furnizor, telefon_furnizor, adresa_furnizor)
values(24, 'AMETIST', '0318.756.095', 'Strada Jder, Iasi');
insert into FURNIZORI_1 (id_furnizor, nume_furnizor, telefon_furnizor, adresa_furnizor)
values(25, 'LARIS', '0312.069.498', 'Strada Amelia, Sinaia');
insert into FURNIZORI_1 (id_furnizor, nume_furnizor, telefon_furnizor, adresa_furnizor)
values(26, 'ALUFLEY', '0318.895.065', 'Strada Oprea, Oradea');
insert into FURNIZORI_1 (id_furnizor, nume_furnizor, telefon_furnizor, adresa_furnizor)
values(27, 'IUTY', '0315.982.068', 'Strada Ceasca, Constanta');
insert into FURNIZORI_1 (id_furnizor, nume_furnizor, telefon_furnizor, adresa_furnizor)
values(28, 'DERF', '0317.874.195', 'Strada Muzicii, Galati');
insert into FURNIZORI_1 (id_furnizor, nume_furnizor, telefon_furnizor, adresa_furnizor)
values(29, 'GERY', '0316.104.752', 'Strada Vantului, Focsani');
insert into FURNIZORI_1 (id_furnizor, nume_furnizor, telefon_furnizor, adresa_furnizor)
values(30, 'CALEA', '0318.586.563', 'Strada Mirilor, Arad');
insert into FURNIZORI_1 (id_furnizor, nume_furnizor, telefon_furnizor, adresa_furnizor)
values(31, 'AMAX', '0314.120.063', 'Strada L, Valcea');
insert into FURNIZORI_1 (id_furnizor, nume_furnizor, telefon_furnizor, adresa_furnizor)
values(32, 'ALEX CP', '0317.161.206', 'Strada Lalelei, Neamt');
insert into FURNIZORI_1 (id_furnizor, nume_furnizor, telefon_furnizor, adresa_furnizor)
values(33, 'LORY', '0318.414.656', 'Strada Iuliu, Iasi');
insert into FURNIZORI_1 (id_furnizor, nume_furnizor, telefon_furnizor, adresa_furnizor)
values(34, 'OP LEMN', '0312.899.520', 'Strada Peluzei, Sinaia');
insert into FURNIZORI_1 (id_furnizor, nume_furnizor, telefon_furnizor, adresa_furnizor)
values(35, 'ALEXANDRY', '0318.875.410', 'Strada Petre, Oradea');
insert into FURNIZORI_1 (id_furnizor, nume_furnizor, telefon_furnizor, adresa_furnizor)
values(36, 'ANDRLEM', '0315.045.522', 'Strada Meduza, Constanta');
insert into FURNIZORI_1 (id_furnizor, nume_furnizor, telefon_furnizor, adresa_furnizor)
values(37, 'SUPLEN', '0317.562.410', 'Strada Ceasului, Galati');
insert into FURNIZORI_1 (id_furnizor, nume_furnizor, telefon_furnizor, adresa_furnizor)
values(38, 'DELOR', '0316.478.952', 'Strada Parcului, Focsani');
insert into FURNIZORI_1 (id_furnizor, nume_furnizor, telefon_furnizor, adresa_furnizor)
values(39, 'AFLORU', '0314.705.516', 'Strada Constantin, Suceava');
insert into FURNIZORI_1 (id_furnizor, nume_furnizor, telefon_furnizor, adresa_furnizor)
values(40, 'VIOLET', '0317.410.581', 'Strada Pescarilor, Baia Mare');

--INSERT ARTICOLE
insert into ARTICOLE_1 (id_articol, nume_articol, caracteristici_articol, pret_articol, id_furnizor)
values(10, 'Comodă CZP7', 'Inaltime: 800mm; Latime: 1650mm; Adancime: 400mm', 947, 25);
insert into ARTICOLE_1 (id_articol, nume_articol, caracteristici_articol, pret_articol, id_furnizor)
values(11, 'Mobila-sufragerie NV5', 'Tip de set: cu comoda tv, parti separate', 1561, 10);
insert into ARTICOLE_1 (id_articol, nume_articol, caracteristici_articol, pret_articol, id_furnizor)
values(12, 'Scaun S14378', 'Inaltime: 880mm; Latime: 540mm; Adancime: 590mm; Inaltimea scaunului: 450mm; Culoare: Negru', 202, 25);
insert into ARTICOLE_1 (id_articol, nume_articol, caracteristici_articol, pret_articol, id_furnizor)
values(13, 'Colțar VG2097', 'Inaltime: 800mm, Latime: 1630mm, Lungime: 2790mm', 2077, 27);
insert into ARTICOLE_1 (id_articol, nume_articol, caracteristici_articol, pret_articol, id_furnizor)
values(14, 'Scaun VG3336', 'Inaltime: 790mm, Latime: 500mm, Adancime: 430mm; Culoare: Verde', 288, 27);
insert into ARTICOLE_1 (id_articol, nume_articol, caracteristici_articol, pret_articol, id_furnizor)
values(15, 'Pat LUH2', 'Inaltime: 850mm; Inaltime laterala: 420mm; Latime: 1640mm; Lungime: 2050mm; Pentru saltele cu dimensiunea:1600 x 2000mm; Material: Pal', 1100, 14);
insert into ARTICOLE_1 (id_articol, nume_articol, caracteristici_articol, pret_articol, id_furnizor)
values(16, 'Chesterfield canapea VG547', 'Inaltime: 770mm; Lungime: 2010mm; Adancime: 810mm; Inaltimea scaunului: 510mm; Latimea scaunului: 1600mm; Inaltimea bratului: 770mm; Material: Tapiterie; Culoare: Alb', 2538, 13);
insert into ARTICOLE_1 (id_articol, nume_articol, caracteristici_articol, pret_articol, id_furnizor)
values(17, 'Canapea trei locuri UU188', 'Inaltime: 750mm; Lungime: 2050mm; Adancime: 850mm; Material: Tapiterie; Culoare: Albastru', 2538, 13);
insert into ARTICOLE_1 (id_articol, nume_articol, caracteristici_articol, pret_articol, id_furnizor)
values(18, 'Canapea trei locuri pat YN1761', 'Inaltime: 900mm; Lungime: 2180 mm; Adancime: 750; Latimea zonei de dormit: 1100mm; Lungimea zonei de dormit: 1940mm; Material: Tapiterie; Culoare: Crem', 2351, 26);
insert into ARTICOLE_1 (id_articol, nume_articol, caracteristici_articol, pret_articol, id_furnizor)
values(19, 'Fotoliu VG6240', 'Inaltime: 1000mm; Latime: 1000mm; Adancime: 630mm; Culoare: Negru', 947, 27);
insert into ARTICOLE_1 (id_articol, nume_articol, caracteristici_articol, pret_articol, id_furnizor)
values(20, 'Masuta NVZ6', 'Inaltime: 440mm; Latime: 600mm; Lungime: 1100mm; Culoare: Alb', 577, 30);
insert into ARTICOLE_1 (id_articol, nume_articol, caracteristici_articol, pret_articol, id_furnizor)
values(21, 'Masuta PZ2', 'Inaltime: 400mm; Latime: 640mm; Lungime: 1200mm; Culoare: Alb lucios , negru lucios', 877, 31);
insert into ARTICOLE_1 (id_articol, nume_articol, caracteristici_articol, pret_articol, id_furnizor)
values(22, 'Masuta E125', 'Inaltime: 450mm; Latime: 5000mm; Lungime: 1000mm; Culoare: Sonoma stejar', 206, 18);
insert into ARTICOLE_1 (id_articol, nume_articol, caracteristici_articol, pret_articol, id_furnizor)
values(23, 'Masuta VG5082', 'Inaltime: 450mm; Latime: 600mm; Lungime: 1300mm; Culoare: Alb', 740, 17);
insert into ARTICOLE_1 (id_articol, nume_articol, caracteristici_articol, pret_articol, id_furnizor)
values(24, 'Masuta YN1500', 'Inaltime: 350mm; Latime: 500mm; Lungime: 800mm; Culoare: Nuca , Alb', 263, 19);
insert into ARTICOLE_1 (id_articol, nume_articol, caracteristici_articol, pret_articol, id_furnizor)
values(25, 'Masuta YN1545', 'Inaltime: 320mm; Latime: 600mm; Lungime: 1050mm; Culoare: Alb , Cordoba', 232, 31);
insert into ARTICOLE_1 (id_articol, nume_articol, caracteristici_articol, pret_articol, id_furnizor)
values(26, 'Masuta ZB93', 'Inaltime: 550mm; Latime: 532mm; Lungime: 947mm; Culoare: Sonoma stejar', 325, 33);
insert into ARTICOLE_1 (id_articol, nume_articol, caracteristici_articol, pret_articol, id_furnizor)
values(27, 'Masuta ZU12', 'Inaltime: 510mm; Latime: 600mm; Lungime: 600mm; Culoare: Wenge', 199, 35);
insert into ARTICOLE_1 (id_articol, nume_articol, caracteristici_articol, pret_articol, id_furnizor)
values(28, 'Dulap LV52', 'Inaltime: 2160mm; Latime: 1200mm; Adancime: 600mm; Usi dulap: Alunecare; Material: Pal; Culoare: Alb', 1292, 31);
insert into ARTICOLE_1 (id_articol, nume_articol, caracteristici_articol, pret_articol, id_furnizor)
values(29, 'Dulap BDj40', 'Inaltime: 1970mm; Latime: 1185mm; Adancime: 545mm; Usi dulap: Cu balamale; Material: Pal; Culoare: Alb', 862, 31);
insert into ARTICOLE_1 (id_articol, nume_articol, caracteristici_articol, pret_articol, id_furnizor)
values(30, 'Dulap PH125', 'Inaltime: 2150mm; Latime: 2500mm; Adancime: 610mm; Usi dulap: Alunecare; Material: Pal; Culoare: Sonoma Stejar', 2370, 16);
insert into ARTICOLE_1 (id_articol, nume_articol, caracteristici_articol, pret_articol, id_furnizor)
values(31, 'Dulap S20108', 'Inaltime: 2005mm; Latime: 1015mm; Adancime: 560mm; Usi dulap: Cu balamale; Material: Pal; Culoare: Anderson pin , Grandson stejar', 670, 39);
insert into ARTICOLE_1 (id_articol, nume_articol, caracteristici_articol, pret_articol, id_furnizor)
values(32, 'Dulap BDj40', 'Inaltime: 1970mm; Latime: 1185mm; Adancime: 545mm; Usi dulap: Cu balamale; Material: Pal; Culoare: Alb', 862, 31);
insert into ARTICOLE_1 (id_articol, nume_articol, caracteristici_articol, pret_articol, id_furnizor)
values(33, 'Dulap S20259', 'Inaltime: 1955mm; Latime: 800mm; Adancime: 570mm; Usi dulap: Cu balamale; Material: Pal, MDF; Culoare: Kanjono pin', 1204, 20);
insert into ARTICOLE_1 (id_articol, nume_articol, caracteristici_articol, pret_articol, id_furnizor)
values(34, ' Dulap S20848', 'Inaltime: 1930mm; Latime: 870mm; Adancime: 490mm; Usi dulap: Cu balamale; Material: Pal, MDF; Culoare: Nordic pin , stejar salbatic', 1386, 11);
insert into ARTICOLE_1 (id_articol, nume_articol, caracteristici_articol, pret_articol, id_furnizor)
values(35, 'Dulap RYD18', 'Inaltime: 1900mm; Latime: 1350mm; Adancime: 570mm; Usi dulap: Cu balamale; Material: Pal, MDF; Culoare: Lefkas', 1831, 10);
insert into ARTICOLE_1 (id_articol, nume_articol, caracteristici_articol, pret_articol, id_furnizor)
values(36, 'Dulap BK24', 'Inaltime: 2250mm; Latime: 2270mm; Adancime: 530mm; Usi dulap: Cu balamale; Material: Pal, MDF; Culoare: Castan', 3382, 12);
insert into ARTICOLE_1 (id_articol, nume_articol, caracteristici_articol, pret_articol, id_furnizor)
values(37, 'Dulap ZB12', 'Inaltime: 1910mm; Latime: 1500mm; Adancime: 590mm; Usi dulap: Alunecare; Material: Pal, Sticla; Culoare: Wenge , luminos lemn', 1191, 13);
insert into ARTICOLE_1 (id_articol, nume_articol, caracteristici_articol, pret_articol, id_furnizor)
values(38, 'Consola BABU7', 'Inaltime: 765mm; Latime: 455mm; Lungime: 1305mm; Material: Pal, Metal; Culoare: Grandson stejar', 547, 12);
insert into ARTICOLE_1 (id_articol, nume_articol, caracteristici_articol, pret_articol, id_furnizor)
values(39, 'Consola YN1421', 'Inaltime: 900mm; Latime: 355mm; Lungime: 1200mm; Usi dulap: Cu balamale; Material: Pal; Culoare: Nuca', 812, 13);
insert into ARTICOLE_1 (id_articol, nume_articol, caracteristici_articol, pret_articol, id_furnizor)
values(40, 'Masuta de machiaj YN1435', 'Inaltime: 1200mm; Latime: 518mm; Lungime: 1160mm; Material: Pal; Culoare: Nuca , Alb', 1090, 11);
insert into ARTICOLE_1 (id_articol, nume_articol, caracteristici_articol, pret_articol, id_furnizor)
values(41, 'Masuta de machiaj S20148', 'Inaltime: 1510mm; Latime: 350mm; Lungime: 1050mm; Material: Pal, MDF; Culoare: Alb , Stejar', 828, 20);
insert into ARTICOLE_1 (id_articol, nume_articol, caracteristici_articol, pret_articol, id_furnizor)
values(42, 'Consola PEU42', 'Inaltime: 1955mm; Latime: 800mm; Adancime: 570mm; Material: Pal; Culoare: Sonoma stejar , Alb lucios', 316, 24);
insert into ARTICOLE_1 (id_articol, nume_articol, caracteristici_articol, pret_articol, id_furnizor)
values(43, 'Raft BDJ11', 'Inaltime: 1495mm; Latime: 1540mm; Adancime: 385mm; Material: Pal; Culoare: Alb', 726, 23);
insert into ARTICOLE_1 (id_articol, nume_articol, caracteristici_articol, pret_articol, id_furnizor)
values(44, 'Raft BDJ13', 'Inaltime: 1970mm; Latime: 600mm; Adancime: 34570mm; Material: Pal; Culoare: Stejar', 293, 15);
insert into ARTICOLE_1 (id_articol, nume_articol, caracteristici_articol, pret_articol, id_furnizor)
values(45, 'Raft BGF7', 'Inaltime: 2185mm; Latime: 800mm; Adancime: 360mm; Material: Pal; Culoare: San Remo stejar', 494, 38);
insert into ARTICOLE_1 (id_articol, nume_articol, caracteristici_articol, pret_articol, id_furnizor)
values(46, 'Raft BFAH5', 'Inaltime: 1815mm; Latime: 1200mm; Adancime: 365mm; Material: Pal, MDF; Culoare: Alb lucios , stejar', 866, 28);
insert into ARTICOLE_1 (id_articol, nume_articol, caracteristici_articol, pret_articol, id_furnizor)
values(47, 'Raft S20681', 'Inaltime: 2050mm; Latime: 500mm; Adancime: 560mm; Material: Pal; Culoare: Stejar deschis', 515, 34);
insert into ARTICOLE_1 (id_articol, nume_articol, caracteristici_articol, pret_articol, id_furnizor)
values(48, 'Raft BDJ12', 'Inaltime: 1850mm; Latime: 800mm; Adancime: 385mm; Material: Pal; Culoare: Alb', 508, 36);
insert into ARTICOLE_1 (id_articol, nume_articol, caracteristici_articol, pret_articol, id_furnizor)
values(49, 'Pat BDJ7', 'Inaltime: 665mm; Latime: 445mm; Lungime: 2030mm; Material: Pal; Culoare: Alb', 293, 20);
insert into ARTICOLE_1 (id_articol, nume_articol, caracteristici_articol, pret_articol, id_furnizor)
values(50, 'Pat BDJ7', 'Inaltime: 665mm; Latime: 445mm; Lungime: 2030mm; Pentru saltele cu dimensiunea: 900 x 2000mm; Material: Pal; Culoare: Alb', 293, 20);
insert into ARTICOLE_1 (id_articol, nume_articol, caracteristici_articol, pret_articol, id_furnizor)
values(51, 'Pat C115', 'Inaltime: 640mm; Latime: 960mm; Lungime: 2060mm; Pentru saltele cu dimensiunea: 900 x 2000mm;  Material: Pal; Culoare: Alb', 1112, 18);
insert into ARTICOLE_1 (id_articol, nume_articol, caracteristici_articol, pret_articol, id_furnizor)
values(52, 'Pat BABY7', 'Inaltime: 675mm; Latime: 1650mm; Lungime: 2040mm; Pentru saltele cu dimensiunea: 900 x 2000mm;  Material: Pal; Culoare: Alb', 313, 18);
insert into ARTICOLE_1 (id_articol, nume_articol, caracteristici_articol, pret_articol, id_furnizor)
values(53, 'Pat BFG9', 'Inaltime: 845mm; Latime: 1655mm; Lungime: 2045mm; Pentru saltele cu dimensiunea: 1600 x 2000mm; Material: Pal; Culoare: Luminos sibu larice', 565, 15);
insert into ARTICOLE_1 (id_articol, nume_articol, caracteristici_articol, pret_articol, id_furnizor)
values(54, 'Pat BAAY5', 'Inaltime: 805mm; Latime: 950mm; Lungime: 2045mm; Pentru saltele cu dimensiunea: 900 x 2000mm; Material: Pal, MDF; Culoare: Riviera stejar , Alb lucios', 291, 29);
insert into ARTICOLE_1 (id_articol, nume_articol, caracteristici_articol, pret_articol, id_furnizor)
values(55, 'Pat CAA4', 'Inaltime: 860mm; Latime: 1460mm; Lungime: 2050mm; Pentru saltele cu dimensiunea: 1400 x 2000mm; Material: Pal; Culoare: Alb , Sonoma stejar', 941, 24);
insert into ARTICOLE_1 (id_articol, nume_articol, caracteristici_articol, pret_articol, id_furnizor)
values(56, 'Pat BFR7', 'Inaltime: 810mm; Latime: 1765mm; Lungime: 2070mm; Pentru saltele cu dimensiunea: 1600 x 2000mm; Material: Pal, MDF; Culoare: Alb', 1117, 35);
insert into ARTICOLE_1 (id_articol, nume_articol, caracteristici_articol, pret_articol, id_furnizor)
values(57, 'Pat BABY6', 'Inaltime: 675mm; Latime: 1250mm; Lungime: 2040mm; Pentru saltele cu dimensiunea: 1200 x 2000mm; Material: Pal; Culoare: Luminos lemn', 328, 39);
insert into ARTICOLE_1 (id_articol, nume_articol, caracteristici_articol, pret_articol, id_furnizor)
values(58, 'Pat NVBP7', 'Inaltime: 940mm; Latime: 1660mm; Lungime: 2049mm; Pentru saltele cu dimensiunea: 1600 x 2000mm; Material: Pal, Piele eco; Culoare: Monastery stejar , Negru', 1329, 11);
insert into ARTICOLE_1 (id_articol, nume_articol, caracteristici_articol, pret_articol, id_furnizor)
values(59, 'Pat CM22', 'Inaltime: 890mm; Latime: 1650mm; Lungime: 2070mm; Pentru saltele cu dimensiunea: 1600 x 2000mm; Material: Pal; Culoare: Cires primavara', 1048, 22);
insert into ARTICOLE_1 (id_articol, nume_articol, caracteristici_articol, pret_articol, id_furnizor)
values(60, 'Pat S19549', 'Inaltime: 1000mm; Latime: 1470mm; Lungime: 2150mm; Material: Tapiterie; Culoare: Gri', 880, 27);
insert into ARTICOLE_1 (id_articol, nume_articol, caracteristici_articol, pret_articol, id_furnizor)
values(61, 'Pat S19698', 'Inaltime: 605mm; Latime: 1480mm; Lungime: 2065mm; Pentru saltele cu dimensiunea: 1400 x 2000 mm; Material: Pal; Culoare: Sonoma stejar', 632, 32);
insert into ARTICOLE_1 (id_articol, nume_articol, caracteristici_articol, pret_articol, id_furnizor)
values(62, 'Pat RA2', 'Inaltime: 1000mm; Latime: 1800mm; Lungime: 2270mm; Pentru saltele cu dimensiunea: 1600 x 2000 mm; Material: Piele eco; Culoare: Alb', 2869, 22);
insert into ARTICOLE_1 (id_articol, nume_articol, caracteristici_articol, pret_articol, id_furnizor)
values(63, 'Pat UL3', 'Inaltime: 930mm; Latime: 2000mm; Lungime: 2230mm; Pentru saltele cu dimensiunea: 1800 x 2000 mm; Material: Tapiterie; Culoare: Crem', 2869, 37);
insert into ARTICOLE_1 (id_articol, nume_articol, caracteristici_articol, pret_articol, id_furnizor)
values(64, 'Comoda-tv C184 ', 'Inaltime: 440mm; Latime: 2000mm; Adancime: 440mm; Material: Pal, MDF; Culoare: Alb , Alb lucios', 1021, 39);
insert into ARTICOLE_1 (id_articol, nume_articol, caracteristici_articol, pret_articol, id_furnizor)
values(65, 'Comoda-tv BFR13', 'Inaltime: 470mm; Latime: 1245mm; Adancime: 235mm; Material: Pal, MDF; Culoare: Alb', 810, 38);
insert into ARTICOLE_1 (id_articol, nume_articol, caracteristici_articol, pret_articol, id_furnizor)
values(66, 'Scaun H2382', 'Inaltime: 870mm; Latime: 490mm; Adancime: 620mm; Inaltimea scaunului: 480mm; Material: Piele eco; Culoare: Gri , Negru', 339, 14);
insert into ARTICOLE_1 (id_articol, nume_articol, caracteristici_articol, pret_articol, id_furnizor)
values(67, 'Set-bucatarie ABB1', 'Latime: 1800mm; Adancime: 600mm; Inaltimea raftului neancorat: 850mm; Lungimea raftului neancorat: 450mm; Agatat inaltime corp: 575mm; Agatat adancimea de cabinet: 295mm; Material: Pal; Culoare: Gri', 740, 12);
insert into ARTICOLE_1 (id_articol, nume_articol, caracteristici_articol, pret_articol, id_furnizor)
values(68, 'Cuier BFG25', 'Inaltime: 1520mm; Latime: 660mm; Adancime: 215mm; Material: Pal; Culoare: Luminoa sibiu larice', 285, 28);
insert into ARTICOLE_1 (id_articol, nume_articol, caracteristici_articol, pret_articol, id_furnizor)
values(69, 'Masa C84', 'Inaltime: 760mm; Latime: 600mm; Lungime: 1600mm; Material: Pal; Culoare: Alb', 725, 19);
insert into ARTICOLE_1 (id_articol, nume_articol, caracteristici_articol, pret_articol, id_furnizor)
values(70, 'Masa VG6301', 'Inaltime: 740mm; Latime: 750mm; Lungime: 1200mm; Material: Lemn; Culoare: Alb , Lemn', 595, 19);

--INSERT COMENZI
insert into COMENZI_1 (id_comanda, data_comanda, id_client, id_articol, cantitate, stare_comanda, id_angajat)
values(5, to_date('11-02-2016', 'dd-mm-yyyy'), 15, 14, 4, 'livrat', 102);
insert into COMENZI_1 (id_comanda, data_comanda, id_client, id_articol, cantitate, stare_comanda, id_angajat)
values(6, to_date('14-02-2016', 'dd-mm-yyyy'), 16, 17, 2, 'livrat', 102);
insert into COMENZI_1 (id_comanda, data_comanda, id_client, id_articol, cantitate, stare_comanda, id_angajat)
values(7, to_date('17-02-2016', 'dd-mm-yyyy'), 12, 10, 5, 'livrat', 103);
insert into COMENZI_1 (id_comanda, data_comanda, id_client, id_articol, cantitate, stare_comanda, id_angajat)
values(8, to_date('20-02-2016', 'dd-mm-yyyy'), 17, 14, 3, 'livrat', 103);
insert into COMENZI_1 (id_comanda, data_comanda, id_client, id_articol, cantitate, stare_comanda, id_angajat)
values(9, to_date('21-02-2016', 'dd-mm-yyyy'), 18, 20, 2, 'livrat', 103);
insert into COMENZI_1 (id_comanda, data_comanda, id_client, id_articol, cantitate, stare_comanda, id_angajat)
values(10, to_date('25-02-2016', 'dd-mm-yyyy'), 20, 18, 5, 'livrat', 102);
insert into COMENZI_1 (id_comanda, data_comanda, id_client, id_articol, cantitate, stare_comanda, id_angajat)
values(11, to_date('27-02-2016', 'dd-mm-yyyy'), 30, 65, 4, 'livrat', 102);
insert into COMENZI_1 (id_comanda, data_comanda, id_client, id_articol, cantitate, stare_comanda, id_angajat)
values(12, to_date('03-02-2016', 'dd-mm-yyyy'), 24, 17, 3, 'livrat', 103);
insert into COMENZI_1 (id_comanda, data_comanda, id_client, id_articol, cantitate, stare_comanda, id_angajat)
values(13, to_date('05-02-2016', 'dd-mm-yyyy'), 15, 68, 1, 'livrat', 102);
insert into COMENZI_1 (id_comanda, data_comanda, id_client, id_articol, cantitate, stare_comanda, id_angajat)
values(14, to_date('11-03-2016', 'dd-mm-yyyy'), 19, 58, 6, 'livrat', 112);
insert into COMENZI_1 (id_comanda, data_comanda, id_client, id_articol, cantitate, stare_comanda, id_angajat)
values(15, to_date('14-03-2016', 'dd-mm-yyyy'), 30, 53, 2, 'livrat', 107);
insert into COMENZI_1 (id_comanda, data_comanda, id_client, id_articol, cantitate, stare_comanda, id_angajat)
values(16, to_date('17-03-2016', 'dd-mm-yyyy'), 16, 10, 1, 'livrat', 108);
insert into COMENZI_1 (id_comanda, data_comanda, id_client, id_articol, cantitate, stare_comanda, id_angajat)
values(17, to_date('20-03-2016', 'dd-mm-yyyy'), 21, 31, 3, 'livrat', 107);
insert into COMENZI_1 (id_comanda, data_comanda, id_client, id_articol, cantitate, stare_comanda, id_angajat)
values(18, to_date('21-03-2016', 'dd-mm-yyyy'), 15, 49, 2, 'livrat', 108);
insert into COMENZI_1 (id_comanda, data_comanda, id_client, id_articol, cantitate, stare_comanda, id_angajat)
values(19, to_date('25-03-2016', 'dd-mm-yyyy'), 26, 69, 5, 'livrat', 112);
insert into COMENZI_1 (id_comanda, data_comanda, id_client, id_articol, cantitate, stare_comanda, id_angajat)
values(20, to_date('27-03-2016', 'dd-mm-yyyy'), 24, 53, 4, 'livrat', 117);
insert into COMENZI_1 (id_comanda, data_comanda, id_client, id_articol, cantitate, stare_comanda, id_angajat)
values(21, to_date('03-03-2016', 'dd-mm-yyyy'), 31, 11, 3, 'livrat', 123);
insert into COMENZI_1 (id_comanda, data_comanda, id_client, id_articol, cantitate, stare_comanda, id_angajat)
values(22, to_date('05-03-2016', 'dd-mm-yyyy'), 32, 58, 1, 'livrat', 112);
insert into COMENZI_1 (id_comanda, data_comanda, id_client, id_articol, cantitate, stare_comanda, id_angajat)
values(23, to_date('11-04-2016', 'dd-mm-yyyy'), 29, 48, 6, 'livrat', 114);
insert into COMENZI_1 (id_comanda, data_comanda, id_client, id_articol, cantitate, stare_comanda, id_angajat)
values(24, to_date('14-04-2016', 'dd-mm-yyyy'), 12, 29, 2, 'livrat', 130);
insert into COMENZI_1 (id_comanda, data_comanda, id_client, id_articol, cantitate, stare_comanda, id_angajat)
values(25, to_date('17-04-2016', 'dd-mm-yyyy'), 14, 17, 1, 'livrat', 101);
insert into COMENZI_1 (id_comanda, data_comanda, id_client, id_articol, cantitate, stare_comanda, id_angajat)
values(26, to_date('20-04-2016', 'dd-mm-yyyy'), 18, 47, 3, 'livrat', 125);
insert into COMENZI_1 (id_comanda, data_comanda, id_client, id_articol, cantitate, stare_comanda, id_angajat)
values(27, to_date('21-04-2016', 'dd-mm-yyyy'), 21, 13, 2, 'livrat', 128);
insert into COMENZI_1 (id_comanda, data_comanda, id_client, id_articol, cantitate, stare_comanda, id_angajat)
values(28, to_date('25-04-2016', 'dd-mm-yyyy'), 11, 69, 5, 'livrat', 125);
insert into COMENZI_1 (id_comanda, data_comanda, id_client, id_articol, cantitate, stare_comanda, id_angajat)
values(29, to_date('27-04-2016', 'dd-mm-yyyy'), 22, 44, 4, 'livrat', 101);
insert into COMENZI_1 (id_comanda, data_comanda, id_client, id_articol, cantitate, stare_comanda, id_angajat)
values(30, to_date('03-04-2016', 'dd-mm-yyyy'), 34, 58, 3, 'livrat', 123);
insert into COMENZI_1 (id_comanda, data_comanda, id_client, id_articol, cantitate, stare_comanda, id_angajat)
values(31, to_date('05-04-2016', 'dd-mm-yyyy'), 21, 35, 1, 'livrat', 112);
insert into COMENZI_1 (id_comanda, data_comanda, id_client, id_articol, cantitate, stare_comanda, id_angajat)
values(32, to_date('11-05-2016', 'dd-mm-yyyy'), 32, 42, 6, 'livrat', 100);
insert into COMENZI_1 (id_comanda, data_comanda, id_client, id_articol, cantitate, stare_comanda, id_angajat)
values(33, to_date('14-05-2016', 'dd-mm-yyyy'), 23, 43, 3, 'livrat', 119);
insert into COMENZI_1 (id_comanda, data_comanda, id_client, id_articol, cantitate, stare_comanda, id_angajat)
values(34, to_date('17-05-2016', 'dd-mm-yyyy'), 17, 53, 10, 'livrat', 106);
insert into COMENZI_1 (id_comanda, data_comanda, id_client, id_articol, cantitate, stare_comanda, id_angajat)
values(35, to_date('20-05-2016', 'dd-mm-yyyy'), 11, 70, 3, 'livrat', 105);
insert into COMENZI_1 (id_comanda, data_comanda, id_client, id_articol, cantitate, stare_comanda, id_angajat)
values(36, to_date('21-05-2016', 'dd-mm-yyyy'), 24, 50, 2, 'livrat', 108);
insert into COMENZI_1 (id_comanda, data_comanda, id_client, id_articol, cantitate, stare_comanda, id_angajat)
values(37, to_date('25-05-2016', 'dd-mm-yyyy'), 31, 69, 5, 'livrat', 115);
insert into COMENZI_1 (id_comanda, data_comanda, id_client, id_articol, cantitate, stare_comanda, id_angajat)
values(38, to_date('27-05-2016', 'dd-mm-yyyy'), 16, 43, 4, 'livrat', 125);
insert into COMENZI_1 (id_comanda, data_comanda, id_client, id_articol, cantitate, stare_comanda, id_angajat)
values(39, to_date('03-05-2016', 'dd-mm-yyyy'), 20, 29, 3, 'livrat', 114);
insert into COMENZI_1 (id_comanda, data_comanda, id_client, id_articol, cantitate, stare_comanda, id_angajat)
values(40, to_date('05-05-2016', 'dd-mm-yyyy'), 28, 47, 1, 'livrat', 128);
insert into COMENZI_1 (id_comanda, data_comanda, id_client, id_articol, cantitate, stare_comanda, id_angajat)
values(41, to_date('11-06-2016', 'dd-mm-yyyy'), 28, 41, 6, 'livrat', 124);
insert into COMENZI_1 (id_comanda, data_comanda, id_client, id_articol, cantitate, stare_comanda, id_angajat)
values(42, to_date('14-06-2016', 'dd-mm-yyyy'), 12, 34, 3, 'livrat', 115);
insert into COMENZI_1 (id_comanda, data_comanda, id_client, id_articol, cantitate, stare_comanda, id_angajat)
values(43, to_date('17-06-2016', 'dd-mm-yyyy'), 17, 25, 10, 'livrat', 103);
insert into COMENZI_1 (id_comanda, data_comanda, id_client, id_articol, cantitate, stare_comanda, id_angajat)
values(44, to_date('20-06-2016', 'dd-mm-yyyy'), 13, 22, 3, 'livrat', 104);
insert into COMENZI_1 (id_comanda, data_comanda, id_client, id_articol, cantitate, stare_comanda, id_angajat)
values(45, to_date('21-06-2016', 'dd-mm-yyyy'), 14, 24, 2, 'livrat', 109);
insert into COMENZI_1 (id_comanda, data_comanda, id_client, id_articol, cantitate, stare_comanda, id_angajat)
values(46, to_date('25-06-2016', 'dd-mm-yyyy'), 18, 29, 5, 'livrat', 117);
insert into COMENZI_1 (id_comanda, data_comanda, id_client, id_articol, cantitate, stare_comanda, id_angajat)
values(47, to_date('27-06-2016', 'dd-mm-yyyy'), 20, 50, 4, 'livrat', 115);
insert into COMENZI_1 (id_comanda, data_comanda, id_client, id_articol, cantitate, stare_comanda, id_angajat)
values(48, to_date('03-06-2016', 'dd-mm-yyyy'), 19, 55, 3, 'livrat', 127);
insert into COMENZI_1 (id_comanda, data_comanda, id_client, id_articol, cantitate, stare_comanda, id_angajat)
values(49, to_date('05-06-2016', 'dd-mm-yyyy'), 32, 57, 1, 'livrat', 129);
insert into COMENZI_1 (id_comanda, data_comanda, id_client, id_articol, cantitate, stare_comanda, id_angajat)
values(50, to_date('11-07-2016', 'dd-mm-yyyy'), 12, 49, 6, 'livrat', 101);
insert into COMENZI_1 (id_comanda, data_comanda, id_client, id_articol, cantitate, stare_comanda, id_angajat)
values(51, to_date('14-07-2016', 'dd-mm-yyyy'), 10, 54, 3, 'livrat', 102);
insert into COMENZI_1 (id_comanda, data_comanda, id_client, id_articol, cantitate, stare_comanda, id_angajat)
values(52, to_date('17-07-2016', 'dd-mm-yyyy'), 15, 37, 10, 'livrat', 105);
insert into COMENZI_1 (id_comanda, data_comanda, id_client, id_articol, cantitate, stare_comanda, id_angajat)
values(53, to_date('20-07-2016', 'dd-mm-yyyy'), 16, 32, 3, 'livrat', 106);
insert into COMENZI_1 (id_comanda, data_comanda, id_client, id_articol, cantitate, stare_comanda, id_angajat)
values(54, to_date('21-07-2016', 'dd-mm-yyyy'), 17, 24, 2, 'livrat', 103);
insert into COMENZI_1 (id_comanda, data_comanda, id_client, id_articol, cantitate, stare_comanda, id_angajat)
values(55, to_date('25-07-2016', 'dd-mm-yyyy'), 19, 16, 5, 'livrat', 107);
insert into COMENZI_1 (id_comanda, data_comanda, id_client, id_articol, cantitate, stare_comanda, id_angajat)
values(56, to_date('27-07-2016', 'dd-mm-yyyy'), 28, 50, 4, 'livrat', 108);
insert into COMENZI_1 (id_comanda, data_comanda, id_client, id_articol, cantitate, stare_comanda, id_angajat)
values(57, to_date('03-07-2016', 'dd-mm-yyyy'), 31, 55, 3, 'livrat', 109);
insert into COMENZI_1 (id_comanda, data_comanda, id_client, id_articol, cantitate, stare_comanda, id_angajat)
values(58, to_date('05-07-2016', 'dd-mm-yyyy'), 29, 57, 1, 'livrat', 107);
insert into COMENZI_1 (id_comanda, data_comanda, id_client, id_articol, cantitate, stare_comanda, id_angajat)
values(59, to_date('11-08-2016', 'dd-mm-yyyy'), 16, 49, 6, 'anulat', 108);
insert into COMENZI_1 (id_comanda, data_comanda, id_client, id_articol, cantitate, stare_comanda, id_angajat)
values(60, to_date('14-08-2016', 'dd-mm-yyyy'), 10, 54, 3, 'livrat', 109);
insert into COMENZI_1 (id_comanda, data_comanda, id_client, id_articol, cantitate, stare_comanda, id_angajat)
values(61, to_date('17-08-2016', 'dd-mm-yyyy'), 25, 37, 10, 'livrat', 120);
insert into COMENZI_1 (id_comanda, data_comanda, id_client, id_articol, cantitate, stare_comanda, id_angajat)
values(62, to_date('20-08-2016', 'dd-mm-yyyy'), 26, 32, 3, 'anulat', 124);
insert into COMENZI_1 (id_comanda, data_comanda, id_client, id_articol, cantitate, stare_comanda, id_angajat)
values(63, to_date('21-08-2016', 'dd-mm-yyyy'), 32, 24, 2, 'livrat', 106);
insert into COMENZI_1 (id_comanda, data_comanda, id_client, id_articol, cantitate, stare_comanda, id_angajat)
values(64, to_date('25-08-2016', 'dd-mm-yyyy'), 33, 16, 5, 'anulat', 109);
insert into COMENZI_1 (id_comanda, data_comanda, id_client, id_articol, cantitate, stare_comanda, id_angajat)
values(65, to_date('27-08-2016', 'dd-mm-yyyy'), 31, 50, 4, 'livrat', 115);
insert into COMENZI_1 (id_comanda, data_comanda, id_client, id_articol, cantitate, stare_comanda, id_angajat)
values(66, to_date('03-08-2016', 'dd-mm-yyyy'), 26, 55, 3, 'anulat', 114);
insert into COMENZI_1 (id_comanda, data_comanda, id_client, id_articol, cantitate, stare_comanda, id_angajat)
values(67, to_date('05-08-2016', 'dd-mm-yyyy'), 18, 57, 1, 'anulat', 106);
insert into COMENZI_1 (id_comanda, data_comanda, id_client, id_articol, cantitate, stare_comanda, id_angajat)
values(68, to_date('11-09-2016', 'dd-mm-yyyy'), 16, 49, 6, 'livrat', 108);
insert into COMENZI_1 (id_comanda, data_comanda, id_client, id_articol, cantitate, stare_comanda, id_angajat)
values(69, to_date('14-09-2016', 'dd-mm-yyyy'), 15, 27, 3, 'anulat', 109);
insert into COMENZI_1 (id_comanda, data_comanda, id_client, id_articol, cantitate, stare_comanda, id_angajat)
values(70, to_date('17-09-2016', 'dd-mm-yyyy'), 24, 46, 10, 'livrat', 120);
insert into COMENZI_1 (id_comanda, data_comanda, id_client, id_articol, cantitate, stare_comanda, id_angajat)
values(71, to_date('20-09-2016', 'dd-mm-yyyy'), 12, 64, 3, 'anulat', 124);
insert into COMENZI_1 (id_comanda, data_comanda, id_client, id_articol, cantitate, stare_comanda, id_angajat)
values(72, to_date('21-09-2016', 'dd-mm-yyyy'), 13, 24, 2, 'livrat', 106);
insert into COMENZI_1 (id_comanda, data_comanda, id_client, id_articol, cantitate, stare_comanda, id_angajat)
values(73, to_date('25-09-2016', 'dd-mm-yyyy'), 14, 45, 5, 'livrat', 109);
insert into COMENZI_1 (id_comanda, data_comanda, id_client, id_articol, cantitate, stare_comanda, id_angajat)
values(74, to_date('27-09-2016', 'dd-mm-yyyy'), 19, 50, 4, 'livrat', 115);
insert into COMENZI_1 (id_comanda, data_comanda, id_client, id_articol, cantitate, stare_comanda, id_angajat)
values(75, to_date('03-09-2016', 'dd-mm-yyyy'), 17, 55, 3, 'livrat', 114);
insert into COMENZI_1 (id_comanda, data_comanda, id_client, id_articol, cantitate, stare_comanda, id_angajat)
values(76, to_date('05-09-2016', 'dd-mm-yyyy'), 19, 57, 1, 'anulat', 106);
insert into COMENZI_1 (id_comanda, data_comanda, id_client, id_articol, cantitate, stare_comanda, id_angajat)
values(77, to_date('11-10-2016', 'dd-mm-yyyy'), 30, 49, 6, 'livrat', 109);
insert into COMENZI_1 (id_comanda, data_comanda, id_client, id_articol, cantitate, stare_comanda, id_angajat)
values(78, to_date('14-10-2016', 'dd-mm-yyyy'), 15, 27, 3, 'returnat', 107);
insert into COMENZI_1 (id_comanda, data_comanda, id_client, id_articol, cantitate, stare_comanda, id_angajat)
values(79, to_date('17-10-2016', 'dd-mm-yyyy'), 24, 46, 10, 'livrat', 124);
insert into COMENZI_1 (id_comanda, data_comanda, id_client, id_articol, cantitate, stare_comanda, id_angajat)
values(80, to_date('20-10-2016', 'dd-mm-yyyy'), 12, 64, 3, 'anulat', 126);
insert into COMENZI_1 (id_comanda, data_comanda, id_client, id_articol, cantitate, stare_comanda, id_angajat)
values(81, to_date('21-10-2016', 'dd-mm-yyyy'), 13, 24, 2, 'livrat', 111);
insert into COMENZI_1 (id_comanda, data_comanda, id_client, id_articol, cantitate, stare_comanda, id_angajat)
values(82, to_date('25-10-2016', 'dd-mm-yyyy'), 25, 31, 5, 'livrat', 125);
insert into COMENZI_1 (id_comanda, data_comanda, id_client, id_articol, cantitate, stare_comanda, id_angajat)
values(83, to_date('27-10-2016', 'dd-mm-yyyy'), 22, 50, 4, 'livrat', 126);
insert into COMENZI_1 (id_comanda, data_comanda, id_client, id_articol, cantitate, stare_comanda, id_angajat)
values(84, to_date('03-10-2016', 'dd-mm-yyyy'), 12, 55, 3, 'livrat', 112);
insert into COMENZI_1 (id_comanda, data_comanda, id_client, id_articol, cantitate, stare_comanda, id_angajat)
values(85, to_date('05-10-2016', 'dd-mm-yyyy'), 19, 57, 1, 'returnat', 106);
insert into COMENZI_1 (id_comanda, data_comanda, id_client, id_articol, cantitate, stare_comanda, id_angajat)
values(86, to_date('11-11-2016', 'dd-mm-yyyy'), 30, 49, 6, 'livrat', 129);
insert into COMENZI_1 (id_comanda, data_comanda, id_client, id_articol, cantitate, stare_comanda, id_angajat)
values(87, to_date('14-11-2016', 'dd-mm-yyyy'), 15, 27, 3, 'returnat', 125);
insert into COMENZI_1 (id_comanda, data_comanda, id_client, id_articol, cantitate, stare_comanda, id_angajat)
values(88, to_date('17-11-2016', 'dd-mm-yyyy'), 24, 46, 10, 'livrat', 104);
insert into COMENZI_1 (id_comanda, data_comanda, id_client, id_articol, cantitate, stare_comanda, id_angajat)
values(89, to_date('20-11-2016', 'dd-mm-yyyy'), 12, 64, 3, 'anulat', 106);
insert into COMENZI_1 (id_comanda, data_comanda, id_client, id_articol, cantitate, stare_comanda, id_angajat)
values(90, to_date('21-11-2016', 'dd-mm-yyyy'), 13, 24, 2, 'livrat', 110);
insert into COMENZI_1 (id_comanda, data_comanda, id_client, id_articol, cantitate, stare_comanda, id_angajat)
values(91, to_date('25-11-2016', 'dd-mm-yyyy'), 25, 31, 5, 'livrat', 116);
insert into COMENZI_1 (id_comanda, data_comanda, id_client, id_articol, cantitate, stare_comanda, id_angajat)
values(92, to_date('27-11-2016', 'dd-mm-yyyy'), 22, 50, 4, 'livrat', 113);
insert into COMENZI_1 (id_comanda, data_comanda, id_client, id_articol, cantitate, stare_comanda, id_angajat)
values(93, to_date('03-11-2016', 'dd-mm-yyyy'), 12, 55, 3, 'livrat', 114);
insert into COMENZI_1 (id_comanda, data_comanda, id_client, id_articol, cantitate, stare_comanda, id_angajat)
values(94, to_date('05-11-2016', 'dd-mm-yyyy'), 19, 57, 1, 'returnat', 118);
insert into COMENZI_1 (id_comanda, data_comanda, id_client, id_articol, cantitate, stare_comanda, id_angajat)
values(95, to_date('11-12-2016', 'dd-mm-yyyy'), 30, 49, 6, 'livrat', 129);
insert into COMENZI_1 (id_comanda, data_comanda, id_client, id_articol, cantitate, stare_comanda, id_angajat)
values(96, to_date('14-12-2016', 'dd-mm-yyyy'), 15, 27, 3, 'returnat', 125);
insert into COMENZI_1 (id_comanda, data_comanda, id_client, id_articol, cantitate, stare_comanda, id_angajat)
values(97, to_date('17-12-2016', 'dd-mm-yyyy'), 24, 46, 10, 'livrat', 104);
insert into COMENZI_1 (id_comanda, data_comanda, id_client, id_articol, cantitate, stare_comanda, id_angajat)
values(98, to_date('20-12-2016', 'dd-mm-yyyy'), 12, 64, 3, 'anulat', 106);
insert into COMENZI_1 (id_comanda, data_comanda, id_client, id_articol, cantitate, stare_comanda, id_angajat)
values(99, to_date('21-12-2016', 'dd-mm-yyyy'), 13, 24, 2, 'livrat', 110);
insert into COMENZI_1 (id_comanda, data_comanda, id_client, id_articol, cantitate, stare_comanda, id_angajat)
values(100, to_date('25-12-2016', 'dd-mm-yyyy'), 25, 31, 5, 'livrat', 116);
insert into COMENZI_1 (id_comanda, data_comanda, id_client, id_articol, cantitate, stare_comanda, id_angajat)
values(101, to_date('27-12-2016', 'dd-mm-yyyy'), 22, 50, 4, 'livrat', 113);
insert into COMENZI_1 (id_comanda, data_comanda, id_client, id_articol, cantitate, stare_comanda, id_angajat)
values(102, to_date('03-12-2016', 'dd-mm-yyyy'), 12, 55, 3, 'livrat', 114);
insert into COMENZI_1 (id_comanda, data_comanda, id_client, id_articol, cantitate, stare_comanda, id_angajat)
values(103, to_date('05-12-2016', 'dd-mm-yyyy'), 19, 57, 1, 'returnat', 118);
insert into COMENZI_1 (id_comanda, data_comanda, id_client, id_articol, cantitate, stare_comanda, id_angajat)
values(104, to_date('11-01-2017', 'dd-mm-yyyy'), 15, 14, 4, 'livrat', 102);
insert into COMENZI_1 (id_comanda, data_comanda, id_client, id_articol, cantitate, stare_comanda, id_angajat)
values(105, to_date('14-01-2017', 'dd-mm-yyyy'), 16, 17, 2, 'livrat', 102);
insert into COMENZI_1 (id_comanda, data_comanda, id_client, id_articol, cantitate, stare_comanda, id_angajat)
values(106, to_date('17-01-2017', 'dd-mm-yyyy'), 12, 10, 5, 'livrat', 103);
insert into COMENZI_1 (id_comanda, data_comanda, id_client, id_articol, cantitate, stare_comanda, id_angajat)
values(107, to_date('20-01-2017', 'dd-mm-yyyy'), 17, 14, 3, 'livrat', 103);
insert into COMENZI_1 (id_comanda, data_comanda, id_client, id_articol, cantitate, stare_comanda, id_angajat)
values(108, to_date('21-01-2017', 'dd-mm-yyyy'), 18, 20, 2, 'livrat', 103);
insert into COMENZI_1 (id_comanda, data_comanda, id_client, id_articol, cantitate, stare_comanda, id_angajat)
values(109, to_date('25-01-2017', 'dd-mm-yyyy'), 20, 18, 5, 'livrat', 102);
insert into COMENZI_1 (id_comanda, data_comanda, id_client, id_articol, cantitate, stare_comanda, id_angajat)
values(110, to_date('27-01-2017', 'dd-mm-yyyy'), 30, 65, 4, 'livrat', 102);
insert into COMENZI_1 (id_comanda, data_comanda, id_client, id_articol, cantitate, stare_comanda, id_angajat)
values(111, to_date('03-01-2017', 'dd-mm-yyyy'), 24, 17, 3, 'livrat', 103);
insert into COMENZI_1 (id_comanda, data_comanda, id_client, id_articol, cantitate, stare_comanda, id_angajat)
values(112, to_date('05-01-2017', 'dd-mm-yyyy'), 15, 68, 1, 'livrat', 102);
insert into COMENZI_1 (id_comanda, data_comanda, id_client, id_articol, cantitate, stare_comanda, id_angajat)
values(113, to_date('11-02-2017', 'dd-mm-yyyy'), 15, 14, 4, 'livrat', 102);
insert into COMENZI_1 (id_comanda, data_comanda, id_client, id_articol, cantitate, stare_comanda, id_angajat)
values(114, to_date('14-02-2017', 'dd-mm-yyyy'), 16, 17, 2, 'livrat', 102);
insert into COMENZI_1 (id_comanda, data_comanda, id_client, id_articol, cantitate, stare_comanda, id_angajat)
values(115, to_date('17-02-2017', 'dd-mm-yyyy'), 12, 10, 5, 'livrat', 103);
insert into COMENZI_1 (id_comanda, data_comanda, id_client, id_articol, cantitate, stare_comanda, id_angajat)
values(116, to_date('20-02-2017', 'dd-mm-yyyy'), 17, 14, 3, 'livrat', 103);
insert into COMENZI_1 (id_comanda, data_comanda, id_client, id_articol, cantitate, stare_comanda, id_angajat)
values(117, to_date('21-02-2017', 'dd-mm-yyyy'), 18, 20, 2, 'livrat', 103);
insert into COMENZI_1 (id_comanda, data_comanda, id_client, id_articol, cantitate, stare_comanda, id_angajat)
values(118, to_date('25-02-2017', 'dd-mm-yyyy'), 20, 18, 5, 'livrat', 102);
insert into COMENZI_1 (id_comanda, data_comanda, id_client, id_articol, cantitate, stare_comanda, id_angajat)
values(119, to_date('20-03-2017', 'dd-mm-yyyy'), 21, 31, 3, 'livrat', 107);
insert into COMENZI_1 (id_comanda, data_comanda, id_client, id_articol, cantitate, stare_comanda, id_angajat)
values(120, to_date('05-03-2017', 'dd-mm-yyyy'), 32, 58, 1, 'livrat', 112);
insert into COMENZI_1 (id_comanda, data_comanda, id_client, id_articol, cantitate, stare_comanda, id_angajat)
values(121, to_date('11-04-2017', 'dd-mm-yyyy'), 29, 48, 6, 'livrat', 114);
insert into COMENZI_1 (id_comanda, data_comanda, id_client, id_articol, cantitate, stare_comanda, id_angajat)
values(122, to_date('14-04-2017', 'dd-mm-yyyy'), 12, 29, 2, 'livrat', 130);
insert into COMENZI_1 (id_comanda, data_comanda, id_client, id_articol, cantitate, stare_comanda, id_angajat)
values(123, to_date('20-04-2017', 'dd-mm-yyyy'), 18, 47, 3, 'livrat', 125);
insert into COMENZI_1 (id_comanda, data_comanda, id_client, id_articol, cantitate, stare_comanda, id_angajat)
values(124, to_date('17-05-2017', 'dd-mm-yyyy'), 17, 53, 10, 'livrat', 106);
insert into COMENZI_1 (id_comanda, data_comanda, id_client, id_articol, cantitate, stare_comanda, id_angajat)
values(125, to_date('20-05-2017', 'dd-mm-yyyy'), 11, 70, 3, 'livrat', 105);
insert into COMENZI_1 (id_comanda, data_comanda, id_client, id_articol, cantitate, stare_comanda, id_angajat)
values(126, to_date('21-05-2017', 'dd-mm-yyyy'), 24, 50, 2, 'livrat', 108);
insert into COMENZI_1 (id_comanda, data_comanda, id_client, id_articol, cantitate, stare_comanda, id_angajat)
values(127, to_date('14-06-2017', 'dd-mm-yyyy'), 12, 34, 3, 'livrat', 115);
insert into COMENZI_1 (id_comanda, data_comanda, id_client, id_articol, cantitate, stare_comanda, id_angajat)
values(128, to_date('17-06-2017', 'dd-mm-yyyy'), 17, 25, 10, 'livrat', 103);
insert into COMENZI_1 (id_comanda, data_comanda, id_client, id_articol, cantitate, stare_comanda, id_angajat)
values(129, to_date('20-06-2017', 'dd-mm-yyyy'), 13, 22, 3, 'livrat', 104);
insert into COMENZI_1 (id_comanda, data_comanda, id_client, id_articol, cantitate, stare_comanda, id_angajat)
values(130, to_date('14-07-2017', 'dd-mm-yyyy'), 10, 54, 3, 'livrat', 102);
insert into COMENZI_1 (id_comanda, data_comanda, id_client, id_articol, cantitate, stare_comanda, id_angajat)
values(131, to_date('17-07-2017', 'dd-mm-yyyy'), 15, 37, 10, 'livrat', 105);
insert into COMENZI_1 (id_comanda, data_comanda, id_client, id_articol, cantitate, stare_comanda, id_angajat)
values(132, to_date('20-07-2017', 'dd-mm-yyyy'), 16, 32, 3, 'livrat', 106);
insert into COMENZI_1 (id_comanda, data_comanda, id_client, id_articol, cantitate, stare_comanda, id_angajat)
values(133, to_date('21-07-2017', 'dd-mm-yyyy'), 17, 24, 2, 'livrat', 103);
insert into COMENZI_1 (id_comanda, data_comanda, id_client, id_articol, cantitate, stare_comanda, id_angajat)
values(134, to_date('25-07-2017', 'dd-mm-yyyy'), 19, 16, 5, 'livrat', 107);
insert into COMENZI_1 (id_comanda, data_comanda, id_client, id_articol, cantitate, stare_comanda, id_angajat)
values(135, to_date('03-09-2017', 'dd-mm-yyyy'), 17, 55, 3, 'livrat', 114);
insert into COMENZI_1 (id_comanda, data_comanda, id_client, id_articol, cantitate, stare_comanda, id_angajat)
values(136, to_date('05-09-2017', 'dd-mm-yyyy'), 19, 57, 1, 'anulat', 106);
insert into COMENZI_1 (id_comanda, data_comanda, id_client, id_articol, cantitate, stare_comanda, id_angajat)
values(137, to_date('11-10-2017', 'dd-mm-yyyy'), 30, 49, 6, 'livrat', 109);
insert into COMENZI_1 (id_comanda, data_comanda, id_client, id_articol, cantitate, stare_comanda, id_angajat)
values(138, to_date('14-10-2017', 'dd-mm-yyyy'), 15, 27, 3, 'returnat', 107);
insert into COMENZI_1 (id_comanda, data_comanda, id_client, id_articol, cantitate, stare_comanda, id_angajat)
values(139, to_date('17-10-2017', 'dd-mm-yyyy'), 24, 46, 10, 'livrat', 124);
insert into COMENZI_1 (id_comanda, data_comanda, id_client, id_articol, cantitate, stare_comanda, id_angajat)
values(140, to_date('20-10-2017', 'dd-mm-yyyy'), 12, 64, 3, 'anulat', 126);
insert into COMENZI_1 (id_comanda, data_comanda, id_client, id_articol, cantitate, stare_comanda, id_angajat)
values(141, to_date('21-10-2017', 'dd-mm-yyyy'), 13, 24, 2, 'livrat', 111);
insert into COMENZI_1 (id_comanda, data_comanda, id_client, id_articol, cantitate, stare_comanda, id_angajat)
values(142, to_date('25-10-2017', 'dd-mm-yyyy'), 25, 31, 5, 'livrat', 125);
insert into COMENZI_1 (id_comanda, data_comanda, id_client, id_articol, cantitate, stare_comanda, id_angajat)
values(143, to_date('27-10-2017', 'dd-mm-yyyy'), 22, 50, 4, 'livrat', 126);
insert into COMENZI_1 (id_comanda, data_comanda, id_client, id_articol, cantitate, stare_comanda, id_angajat)
values(144, to_date('03-10-2017', 'dd-mm-yyyy'), 12, 55, 3, 'livrat', 112);
insert into COMENZI_1 (id_comanda, data_comanda, id_client, id_articol, cantitate, stare_comanda, id_angajat)
values(145, to_date('05-10-2017', 'dd-mm-yyyy'), 19, 57, 1, 'returnat', 106);
insert into COMENZI_1 (id_comanda, data_comanda, id_client, id_articol, cantitate, stare_comanda, id_angajat)
values(146, to_date('11-11-2018', 'dd-mm-yyyy'), 30, 49, 6, 'livrat', 129);
insert into COMENZI_1 (id_comanda, data_comanda, id_client, id_articol, cantitate, stare_comanda, id_angajat)
values(147, to_date('14-11-2018', 'dd-mm-yyyy'), 15, 27, 3, 'returnat', 125);
insert into COMENZI_1 (id_comanda, data_comanda, id_client, id_articol, cantitate, stare_comanda, id_angajat)
values(148, to_date('17-11-2018', 'dd-mm-yyyy'), 24, 46, 10, 'livrat', 104);
insert into COMENZI_1 (id_comanda, data_comanda, id_client, id_articol, cantitate, stare_comanda, id_angajat)
values(149, to_date('20-11-2018', 'dd-mm-yyyy'), 12, 64, 3, 'anulat', 106);
insert into COMENZI_1 (id_comanda, data_comanda, id_client, id_articol, cantitate, stare_comanda, id_angajat)
values(150, to_date('21-11-2018', 'dd-mm-yyyy'), 13, 24, 2, 'livrat', 110);
insert into COMENZI_1 (id_comanda, data_comanda, id_client, id_articol, cantitate, stare_comanda, id_angajat)
values(151, to_date('25-11-2018', 'dd-mm-yyyy'), 25, 31, 5, 'livrat', 116);
insert into COMENZI_1 (id_comanda, data_comanda, id_client, id_articol, cantitate, stare_comanda, id_angajat)
values(152, to_date('27-11-2019', 'dd-mm-yyyy'), 22, 50, 4, 'livrat', 113);
insert into COMENZI_1 (id_comanda, data_comanda, id_client, id_articol, cantitate, stare_comanda, id_angajat)
values(153, to_date('03-11-2019', 'dd-mm-yyyy'), 12, 55, 3, 'livrat', 114);
insert into COMENZI_1 (id_comanda, data_comanda, id_client, id_articol, cantitate, stare_comanda, id_angajat)
values(154, to_date('05-11-2019', 'dd-mm-yyyy'), 19, 57, 1, 'returnat', 118);
insert into COMENZI_1 (id_comanda, data_comanda, id_client, id_articol, cantitate, stare_comanda, id_angajat)
values(155, to_date('11-12-2019', 'dd-mm-yyyy'), 30, 49, 6, 'livrat', 129);
insert into COMENZI_1 (id_comanda, data_comanda, id_client, id_articol, cantitate, stare_comanda, id_angajat)
values(156, to_date('14-12-2019', 'dd-mm-yyyy'), 15, 27, 3, 'returnat', 125);
insert into COMENZI_1 (id_comanda, data_comanda, id_client, id_articol, cantitate, stare_comanda, id_angajat)
values(157, to_date('17-12-2019', 'dd-mm-yyyy'), 24, 46, 10, 'livrat', 104);
insert into COMENZI_1 (id_comanda, data_comanda, id_client, id_articol, cantitate, stare_comanda, id_angajat)
values(158, to_date('20-12-2019', 'dd-mm-yyyy'), 12, 64, 3, 'anulat', 106);
insert into COMENZI_1 (id_comanda, data_comanda, id_client, id_articol, cantitate, stare_comanda, id_angajat)
values(159, to_date('21-12-2019', 'dd-mm-yyyy'), 13, 24, 2, 'livrat', 110);
insert into COMENZI_1 (id_comanda, data_comanda, id_client, id_articol, cantitate, stare_comanda, id_angajat)
values(160, to_date('25-12-2019', 'dd-mm-yyyy'), 25, 31, 5, 'livrat', 116);
insert into COMENZI_1 (id_comanda, data_comanda, id_client, id_articol, cantitate, stare_comanda, id_angajat)
values(161, to_date('27-12-2019', 'dd-mm-yyyy'), 22, 50, 4, 'livrat', 113);
insert into COMENZI_1 (id_comanda, data_comanda, id_client, id_articol, cantitate, stare_comanda, id_angajat)
values(162, to_date('03-12-2019', 'dd-mm-yyyy'), 12, 55, 3, 'livrat', 114);
insert into COMENZI_1 (id_comanda, data_comanda, id_client, id_articol, cantitate, stare_comanda, id_angajat)
values(163, to_date('05-12-2019', 'dd-mm-yyyy'), 19, 57, 1, 'returnat', 118);
insert into COMENZI_1 (id_comanda, data_comanda, id_client, id_articol, cantitate, stare_comanda, id_angajat)
values(164, to_date('11-04-2019', 'dd-mm-yyyy'), 29, 48, 6, 'livrat', 114);
insert into COMENZI_1 (id_comanda, data_comanda, id_client, id_articol, cantitate, stare_comanda, id_angajat)
values(165, to_date('14-04-2019', 'dd-mm-yyyy'), 12, 29, 2, 'livrat', 130);
insert into COMENZI_1 (id_comanda, data_comanda, id_client, id_articol, cantitate, stare_comanda, id_angajat)
values(166, to_date('20-04-2019', 'dd-mm-yyyy'), 18, 47, 3, 'livrat', 125);
insert into COMENZI_1 (id_comanda, data_comanda, id_client, id_articol, cantitate, stare_comanda, id_angajat)
values(167, to_date('17-05-2018', 'dd-mm-yyyy'), 17, 53, 10, 'livrat', 106);
insert into COMENZI_1 (id_comanda, data_comanda, id_client, id_articol, cantitate, stare_comanda, id_angajat)
values(168, to_date('20-05-2018', 'dd-mm-yyyy'), 11, 70, 3, 'livrat', 105);
insert into COMENZI_1 (id_comanda, data_comanda, id_client, id_articol, cantitate, stare_comanda, id_angajat)
values(169, to_date('21-05-2018', 'dd-mm-yyyy'), 24, 50, 2, 'livrat', 108);
insert into COMENZI_1 (id_comanda, data_comanda, id_client, id_articol, cantitate, stare_comanda, id_angajat)
values(170, to_date('14-06-2018', 'dd-mm-yyyy'), 12, 34, 3, 'livrat', 115);
insert into COMENZI_1 (id_comanda, data_comanda, id_client, id_articol, cantitate, stare_comanda, id_angajat)
values(171, to_date('17-06-2018', 'dd-mm-yyyy'), 17, 25, 10, 'livrat', 103);
insert into COMENZI_1 (id_comanda, data_comanda, id_client, id_articol, cantitate, stare_comanda, id_angajat)
values(172, to_date('20-06-2019', 'dd-mm-yyyy'), 13, 22, 3, 'livrat', 104);

--INSERT INCASARI
insert into INCASARI_1 (id_incasare, data_incasare, id_comanda, suma, datorie)
values(1, to_date('13-02-2016', 'dd-mm-yyyy'), 12, 'incasat', 0);
insert into INCASARI_1 (id_incasare, data_incasare, id_comanda, suma, datorie)
values(2, to_date('15-02-2016', 'dd-mm-yyyy'), 13, 'neincasat', 285);
insert into INCASARI_1 (id_incasare, data_incasare, id_comanda, suma, datorie)
values(3, to_date('18-02-2016', 'dd-mm-yyyy'), 7, 'incasat', 0);
insert into INCASARI_1 (id_incasare, data_incasare, id_comanda, suma, datorie)
values(4, to_date('22-02-2016', 'dd-mm-yyyy'), 8, 'in curs', 125);
insert into INCASARI_1 (id_incasare, data_incasare, id_comanda, suma, datorie)
values(5, to_date('23-02-2016', 'dd-mm-yyyy'), 5, 'incasat', 0);
insert into INCASARI_1 (id_incasare, data_incasare, id_comanda, suma, datorie)
values(6, to_date('26-02-2016', 'dd-mm-yyyy'), 9, 'incasat', 0);
insert into INCASARI_1 (id_incasare, data_incasare, id_comanda, suma, datorie)
values(7, to_date('17-02-2016', 'dd-mm-yyyy'), 6, 'incasat', 0);
insert into INCASARI_1 (id_incasare, data_incasare, id_comanda, suma, datorie)
values(8, to_date('13-03-2016', 'dd-mm-yyyy'), 21, 'incasat', 0);
insert into INCASARI_1 (id_incasare, data_incasare, id_comanda, suma, datorie)
values(9, to_date('15-03-2016', 'dd-mm-yyyy'), 22, 'neincasat', 1329);
insert into INCASARI_1 (id_incasare, data_incasare, id_comanda, suma, datorie)
values(10, to_date('18-03-2016', 'dd-mm-yyyy'), 15, 'incasat', 0);
insert into INCASARI_1 (id_incasare, data_incasare, id_comanda, suma, datorie)
values(11, to_date('22-03-2016', 'dd-mm-yyyy'), 18, 'in curs', 84);
insert into INCASARI_1 (id_incasare, data_incasare, id_comanda, suma, datorie)
values(12, to_date('29-03-2016', 'dd-mm-yyyy'), 20, 'incasat', 0);
insert into INCASARI_1 (id_incasare, data_incasare, id_comanda, suma, datorie)
values(13, to_date('26-03-2016', 'dd-mm-yyyy'), 19, 'incasat', 0);
insert into INCASARI_1 (id_incasare, data_incasare, id_comanda, suma, datorie)
values(14, to_date('17-03-2016', 'dd-mm-yyyy'), 14, 'incasat', 0);
insert into INCASARI_1 (id_incasare, data_incasare, id_comanda, suma, datorie)
values(15, to_date('13-04-2016', 'dd-mm-yyyy'), 23, 'incasat', 0);
insert into INCASARI_1 (id_incasare, data_incasare, id_comanda, suma, datorie)
values(16, to_date('15-04-2016', 'dd-mm-yyyy'), 24, 'neincasat', 1724);
insert into INCASARI_1 (id_incasare, data_incasare, id_comanda, suma, datorie)
values(17, to_date('18-04-2016', 'dd-mm-yyyy'), 25, 'incasat', 0);
insert into INCASARI_1 (id_incasare, data_incasare, id_comanda, suma, datorie)
values(18, to_date('22-04-2016', 'dd-mm-yyyy'), 30, 'in curs', 1993.5);
insert into INCASARI_1 (id_incasare, data_incasare, id_comanda, suma, datorie)
values(19, to_date('29-04-2016', 'dd-mm-yyyy'), 20, 'incasat', 0);
insert into INCASARI_1 (id_incasare, data_incasare, id_comanda, suma, datorie)
values(20, to_date('26-04-2016', 'dd-mm-yyyy'), 26, 'incasat', 0);
insert into INCASARI_1 (id_incasare, data_incasare, id_comanda, suma, datorie)
values(21, to_date('17-04-2016', 'dd-mm-yyyy'), 31, 'incasat', 0);
insert into INCASARI_1 (id_incasare, data_incasare, id_comanda, suma, datorie)
values(22, to_date('13-05-2016', 'dd-mm-yyyy'), 39, 'incasat', 0);
insert into INCASARI_1 (id_incasare, data_incasare, id_comanda, suma, datorie)
values(23, to_date('15-05-2016', 'dd-mm-yyyy'), 40, 'neincasat', 515);
insert into INCASARI_1 (id_incasare, data_incasare, id_comanda, suma, datorie)
values(24, to_date('18-05-2016', 'dd-mm-yyyy'), 33, 'incasat', 0);
insert into INCASARI_1 (id_incasare, data_incasare, id_comanda, suma, datorie)
values(25, to_date('22-05-2016', 'dd-mm-yyyy'), 30, 'in curs', 1089);
insert into INCASARI_1 (id_incasare, data_incasare, id_comanda, suma, datorie)
values(26, to_date('29-05-2016', 'dd-mm-yyyy'), 38, 'incasat', 0);
insert into INCASARI_1 (id_incasare, data_incasare, id_comanda, suma, datorie)
values(27, to_date('26-05-2016', 'dd-mm-yyyy'), 36, 'incasat', 0);
insert into INCASARI_1 (id_incasare, data_incasare, id_comanda, suma, datorie)
values(28, to_date('17-05-2016', 'dd-mm-yyyy'), 31, 'incasat', 0);
insert into INCASARI_1 (id_incasare, data_incasare, id_comanda, suma, datorie)
values(29, to_date('13-06-2016', 'dd-mm-yyyy'), 49, 'incasat', 0);
insert into INCASARI_1 (id_incasare, data_incasare, id_comanda, suma, datorie)
values(30, to_date('15-06-2016', 'dd-mm-yyyy'), 48, 'neincasat', 2823);
insert into INCASARI_1 (id_incasare, data_incasare, id_comanda, suma, datorie)
values(31, to_date('18-06-2016', 'dd-mm-yyyy'), 43, 'incasat', 0);
insert into INCASARI_1 (id_incasare, data_incasare, id_comanda, suma, datorie)
values(32, to_date('22-06-2016', 'dd-mm-yyyy'), 45, 'in curs', 210.4);
insert into INCASARI_1 (id_incasare, data_incasare, id_comanda, suma, datorie)
values(33, to_date('29-06-2016', 'dd-mm-yyyy'), 47, 'incasat', 0);
insert into INCASARI_1 (id_incasare, data_incasare, id_comanda, suma, datorie)
values(34, to_date('26-06-2016', 'dd-mm-yyyy'), 46, 'incasat', 0);
insert into INCASARI_1 (id_incasare, data_incasare, id_comanda, suma, datorie)
values(35, to_date('17-06-2016', 'dd-mm-yyyy'), 31, 'incasat', 0);
insert into INCASARI_1 (id_incasare, data_incasare, id_comanda, suma, datorie)
values(36, to_date('13-08-2016', 'dd-mm-yyyy'), 67, 'incasat', 0);
insert into INCASARI_1 (id_incasare, data_incasare, id_comanda, suma, datorie)
values(37, to_date('15-08-2016', 'dd-mm-yyyy'), 66, 'neincasat', 2823);
insert into INCASARI_1 (id_incasare, data_incasare, id_comanda, suma, datorie)
values(38, to_date('18-08-2016', 'dd-mm-yyyy'), 61, 'incasat', 0);
insert into INCASARI_1 (id_incasare, data_incasare, id_comanda, suma, datorie)
values(39, to_date('22-08-2016', 'dd-mm-yyyy'), 62, 'in curs', 470.18);
insert into INCASARI_1 (id_incasare, data_incasare, id_comanda, suma, datorie)
values(40, to_date('29-08-2016', 'dd-mm-yyyy'), 65, 'incasat', 0);
insert into INCASARI_1 (id_incasare, data_incasare, id_comanda, suma, datorie)
values(41, to_date('26-08-2016', 'dd-mm-yyyy'), 64, 'incasat', 0);
insert into INCASARI_1 (id_incasare, data_incasare, id_comanda, suma, datorie)
values(42, to_date('17-08-2016', 'dd-mm-yyyy'), 60, 'incasat', 0);
insert into INCASARI_1 (id_incasare, data_incasare, id_comanda, suma, datorie)
values(43, to_date('13-01-2017', 'dd-mm-yyyy'), 112, 'incasat', 0);
insert into INCASARI_1 (id_incasare, data_incasare, id_comanda, suma, datorie)
values(44, to_date('15-01-2017', 'dd-mm-yyyy'), 111, 'neincasat', 7614);
insert into INCASARI_1 (id_incasare, data_incasare, id_comanda, suma, datorie)
values(45, to_date('18-01-2017', 'dd-mm-yyyy'), 106, 'incasat', 0);
insert into INCASARI_1 (id_incasare, data_incasare, id_comanda, suma, datorie)
values(46, to_date('22-01-2017', 'dd-mm-yyyy'), 104, 'in curs', 166.95);
insert into INCASARI_1 (id_incasare, data_incasare, id_comanda, suma, datorie)
values(47, to_date('29-01-2017', 'dd-mm-yyyy'), 110, 'incasat', 0);
insert into INCASARI_1 (id_incasare, data_incasare, id_comanda, suma, datorie)
values(48, to_date('26-01-2017', 'dd-mm-yyyy'), 108, 'incasat', 0);
insert into INCASARI_1 (id_incasare, data_incasare, id_comanda, suma, datorie)
values(49, to_date('17-01-2017', 'dd-mm-yyyy'), 105, 'incasat', 0);
insert into INCASARI_1 (id_incasare, data_incasare, id_comanda, suma, datorie)
values(50, to_date('13-02-2017', 'dd-mm-yyyy'), 120, 'incasat', 0);
insert into INCASARI_1 (id_incasare, data_incasare, id_comanda, suma, datorie)
values(51, to_date('15-02-2017', 'dd-mm-yyyy'), 113, 'neincasat', 1152);
insert into INCASARI_1 (id_incasare, data_incasare, id_comanda, suma, datorie)
values(52, to_date('18-02-2017', 'dd-mm-yyyy'), 115, 'incasat', 0);
insert into INCASARI_1 (id_incasare, data_incasare, id_comanda, suma, datorie)
values(53, to_date('22-03-2017', 'dd-mm-yyyy'), 116, 'in curs', 205.71);
insert into INCASARI_1 (id_incasare, data_incasare, id_comanda, suma, datorie)
values(54, to_date('29-03-2017', 'dd-mm-yyyy'), 119, 'incasat', 0);
insert into INCASARI_1 (id_incasare, data_incasare, id_comanda, suma, datorie)
values(55, to_date('26-02-2017', 'dd-mm-yyyy'), 117, 'incasat', 0);
insert into INCASARI_1 (id_incasare, data_incasare, id_comanda, suma, datorie)
values(56, to_date('17-03-2017', 'dd-mm-yyyy'), 119, 'incasat', 0);
insert into INCASARI_1 (id_incasare, data_incasare, id_comanda, suma, datorie)
values(57, to_date('13-11-2018', 'dd-mm-yyyy'), 153, 'incasat', 0);
insert into INCASARI_1 (id_incasare, data_incasare, id_comanda, suma, datorie)
values(58, to_date('15-11-2018', 'dd-mm-yyyy'), 146, 'neincasat', 1518);
insert into INCASARI_1 (id_incasare, data_incasare, id_comanda, suma, datorie)
values(59, to_date('18-11-2018', 'dd-mm-yyyy'), 148, 'incasat', 0);
insert into INCASARI_1 (id_incasare, data_incasare, id_comanda, suma, datorie)
values(60, to_date('22-11-2018', 'dd-mm-yyyy'), 150, 'in curs', 150.28);
insert into INCASARI_1 (id_incasare, data_incasare, id_comanda, suma, datorie)
values(61, to_date('29-11-2018', 'dd-mm-yyyy'), 152, 'incasat', 0);
insert into INCASARI_1 (id_incasare, data_incasare, id_comanda, suma, datorie)
values(62, to_date('26-11-2018', 'dd-mm-yyyy'), 151, 'incasat', 0);
insert into INCASARI_1 (id_incasare, data_incasare, id_comanda, suma, datorie)
values(63, to_date('17-11-2018', 'dd-mm-yyyy'), 147, 'incasat', 0);
insert into INCASARI_1 (id_incasare, data_incasare, id_comanda, suma, datorie)
values(64, to_date('13-12-2018', 'dd-mm-yyyy'), 154, 'incasat', 0);
insert into INCASARI_1 (id_incasare, data_incasare, id_comanda, suma, datorie)
values(65, to_date('15-11-2019', 'dd-mm-yyyy'), 162, 'neincasat', 2823);
insert into INCASARI_1 (id_incasare, data_incasare, id_comanda, suma, datorie)
values(66, to_date('18-12-2019', 'dd-mm-yyyy'), 157, 'incasat', 0);
insert into INCASARI_1 (id_incasare, data_incasare, id_comanda, suma, datorie)
values(67, to_date('22-12-2019', 'dd-mm-yyyy'), 158, 'in curs', 625.10);
insert into INCASARI_1 (id_incasare, data_incasare, id_comanda, suma, datorie)
values(68, to_date('29-12-2019', 'dd-mm-yyyy'), 161, 'incasat', 0);
insert into INCASARI_1 (id_incasare, data_incasare, id_comanda, suma, datorie)
values(69, to_date('26-12-2019', 'dd-mm-yyyy'), 160, 'incasat', 0);
insert into INCASARI_1 (id_incasare, data_incasare, id_comanda, suma, datorie)
values(70, to_date('17-12-2019', 'dd-mm-yyyy'), 163, 'incasat', 0);