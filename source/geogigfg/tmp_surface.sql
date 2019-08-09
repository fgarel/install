--
-- PostgreSQL database dump
--

-- Dumped from database version 9.1.8
-- Dumped by pg_dump version 9.5.6

-- Started on 2017-06-27 18:11:08 CEST

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

SET search_path = a_rtge, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 3472 (class 1259 OID 2980519)
-- Name: tmp_surface; Type: TABLE; Schema: a_rtge; Owner: rtge
--

CREATE TABLE tmp_surface (
    gid integer NOT NULL,
    gid_leve_topo integer,
    layer text,
    subclasses text,
    extendedentity text,
    linetype text,
    entityhandle text,
    text text,
    color text,
    thickness text,
    representation character varying(50),
    shape public.geometry,
    CONSTRAINT enforce_dims_shape CHECK ((public.st_ndims(shape) = 2)),
    CONSTRAINT enforce_geotype_shape CHECK (((public.geometrytype(shape) = 'POLYGON'::text) OR (shape IS NULL))),
    CONSTRAINT enforce_srid_shape CHECK ((public.st_srid(shape) = (-1)))
);


ALTER TABLE tmp_surface OWNER TO rtge;

--
-- TOC entry 15101 (class 0 OID 0)
-- Dependencies: 3472
-- Name: COLUMN tmp_surface.representation; Type: COMMENT; Schema: a_rtge; Owner: rtge
--

COMMENT ON COLUMN tmp_surface.representation IS 'Représentation thématique';


--
-- TOC entry 3471 (class 1259 OID 2980517)
-- Name: tmp_surface_gid_seq; Type: SEQUENCE; Schema: a_rtge; Owner: rtge
--

CREATE SEQUENCE tmp_surface_gid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE tmp_surface_gid_seq OWNER TO rtge;

--
-- TOC entry 15103 (class 0 OID 0)
-- Dependencies: 3471
-- Name: tmp_surface_gid_seq; Type: SEQUENCE OWNED BY; Schema: a_rtge; Owner: rtge
--

ALTER SEQUENCE tmp_surface_gid_seq OWNED BY tmp_surface.gid;


--
-- TOC entry 14861 (class 2604 OID 2980522)
-- Name: gid; Type: DEFAULT; Schema: a_rtge; Owner: rtge
--

ALTER TABLE ONLY tmp_surface ALTER COLUMN gid SET DEFAULT nextval('tmp_surface_gid_seq'::regclass);


--
-- TOC entry 15096 (class 0 OID 2980519)
-- Dependencies: 3472
-- Data for Name: tmp_surface; Type: TABLE DATA; Schema: a_rtge; Owner: rtge
--

INSERT INTO tmp_surface (gid, gid_leve_topo, layer, subclasses, extendedentity, linetype, entityhandle, text, color, thickness, representation, shape) VALUES (241, 34, 'SIGH_F_PIETON', 'AcDbEntity:AcDbPolyline', NULL, NULL, '1864', NULL, NULL, NULL, 'SIGH_F_PIETON', '01030000000100000005000000FE4B6166800D3541FF6C576135EF534140160F45810D354188FB1A8934EF5341B57BE1A9810D35411D11988F34EF534180B133CB800D35419682D46735EF5341FE4B6166800D3541FF6C576135EF5341');
INSERT INTO tmp_surface (gid, gid_leve_topo, layer, subclasses, extendedentity, linetype, entityhandle, text, color, thickness, representation, shape) VALUES (242, 36, 'FDP_F_BATI', 'AcDbEntity:AcDbPolyline', NULL, 'Continuous', '42492', NULL, NULL, NULL, 'FDP_F_BATI', '01030000000100000005000000E0BF7A9BC00C3541ACC39F3E2CF053411E7541EFA00E3541ACC39F3E2CF053411E7541EFA00E3541193FEFBEF0EF5341E0BF7A9BC00C3541193FEFBEF0EF5341E0BF7A9BC00C3541ACC39F3E2CF05341');
INSERT INTO tmp_surface (gid, gid_leve_topo, layer, subclasses, extendedentity, linetype, entityhandle, text, color, thickness, representation, shape) VALUES (243, 36, 'FDP_F_BATI', 'AcDbEntity:AcDbPolyline', NULL, 'Continuous', '42554', NULL, NULL, NULL, 'FDP_F_BATI', '01030000000100000005000000E0BF7A1BC10C3541ACC39F1E2CF053411E75416FA00E3541ACC39F1E2CF053411E75416FA00E3541193FEFDEF0EF5341E0BF7A1BC10C3541193FEFDEF0EF5341E0BF7A1BC10C3541ACC39F1E2CF05341');
INSERT INTO tmp_surface (gid, gid_leve_topo, layer, subclasses, extendedentity, linetype, entityhandle, text, color, thickness, representation, shape) VALUES (244, 37, 'FDP_F_BATI', 'AcDbEntity:AcDbPolyline', NULL, 'Continuous', 'FD60', NULL, NULL, NULL, 'FDP_F_BATI', '01030000000100000005000000763D65230814354146FF8321DFEE534122A0BCC709143541DE2A1B8AE0EE5341F815C9FC1914354164096F5EDFEE53414CB3715818143541CCDDD7F5DDEE5341763D65230814354146FF8321DFEE5341');
INSERT INTO tmp_surface (gid, gid_leve_topo, layer, subclasses, extendedentity, linetype, entityhandle, text, color, thickness, representation, shape) VALUES (245, 37, 'FDP_F_BATI', 'AcDbEntity:AcDbPolyline', NULL, 'Continuous', 'FDAB', NULL, NULL, NULL, 'FDP_F_BATI', '0103000000010000007B0000006985631C1C143541056EA248EAEE534112BDE65B1B1435414767AE56EAEE53417B73E04D1B1435417779AB4AEAEE5341C72537111B143541BDB9184FEAEE53415D6F3D1F1B1435418DA71B5BEAEE5341FFCC12611A1435412945FC68EAEE53416F139E5A1A14354108C87463EAEE5341998B544E1A14354197535A64EAEE53412A45C9541A143541B7D0E169EAEE53414BF096CD18143541A7FE6D86EAEE5341BB3622C7181435418681E680EAEE5341E5AED8BA18143541120DCC81EAEE534176684DC118143541338A5387EAEE53411E1F843717143541A33DDDA3EAEE53411157E21517143541E0FEDB86EAEE5341A98D0C0C17143541FF759287EAEE5341B0363CD514143541A79EBD9EE8EE5341727287E114143541C389D99DE8EE5341C0147FCF141435410D4B4C8EE8EE5341FED833C314143541F15F308FE8EE5341E9E1F346141435411B8F0824E8EE5341FB73AF151414354199969A27E8EE5341F4CF89A113143541F5B56FC3E7EE534127D5AAB713143541F129D5C1E7EE534190811AB413143541FE5AC2BEE7EE5341617CF99D1314354103E75CC0E7EE5341737EF2291314354101754C5CE7EE5341A783134013143541FEE8B15AE7EE53410B30833C131435410D1A9F57E7EE5341DC2A62261314354111A63959E7EE5341EBAD6FB112143541561B5EF4E6EE53411AB390C712143541518FC3F2E6EE5341835F00C41214354160C0B0EFE6EE5341545ADFAD12143541644C4BF1E6EE5341BDA77236121435413CCD4C8AE6EE534198D2EA7312143541C164D885E6EE53412C93E9511214354102D18468E6EE53411DE4C0E313143541DCAD654BE6EE53412F142BEA1314354129EFED50E6EE5341F14F76F61314354143DA0950E6EE5341E31F0CF013143541F698814AE6EE53410D66FF6D15143541B07BD32EE6EE53412096697415143541FBBC5B34E6EE5341E2D1B4801514354116A87733E6EE5341D4A14A7A15143541C966EF2DE6EE53414A6BD537161435411EEE3220E6EE53413E0DA74916143541D4F8902FE6EE53410D956988161435414B9F042BE6EE534119F39776161435419594A61BE6EE5341B1659E3617143541D80ABC0DE6EE5341C095083D17143541254C4413E6EE534186D15349171435413F376012E6EE534177A1E94217143541F3F5D70CE6EE5341F4253ECE18143541019E31F0E5EE53410256A8D4181435414EDFB9F5E5EE5341C891F3E01814354168CAD5F4E5EE5341BA6189DA181435411C894DEFE5EE53412E1BA16D1A1435419B2D17D2E5EE534121BD727F1A143541513875E1E5EE5341EE706EBD1A1435418947F7DCE5EE5341F6CE9CAB1A143541D43C99CDE5EE53417F0FA43F1C1435417E8551B0E5EE53418D3F0E461C143541CBC6D9B5E5EE5341537B59521C143541E5B1F5B4E5EE5341454BEF4B1C14354197706DAFE5EE5341C8B384D11D14354157B53193E5EE5341D7E3EED71D143541A2F6B998E5EE53419D1F3AE41D143541BCE1D597E5EE53418EEFCFDD1D14354170A04D92E5EE53414FAE329E1E1435415C665C84E5EE534123D94DAF1E1435417C141D93E5EE5341C4D7DD221F143541D81CBD8AE5EE5341D65646971F143541D4A521EFE5EE53415EC6247F1F143541CB56E1F0E5EE5341F519B5821F143541BC25F4F3E5EE53416DAAD69A1F143541C57434F2E5EE5341AEC1270A201435419FE83452E6EE5341363106F21F1435419599F453E6EE5341CD8496F51F14354186680757E6EE53414115B80D201435418FB74755E6EE5341FCA010452014354138F30285E6EE53412576980720143541B55B7789E6EE5341AE078D19201435418C87F398E6EE534189320557201435410F1F7F94E6EE53413AFF3C8E20143541071D1EC4E6EE5341C66E1B7620143541FECDDDC5E6EE53415DC2AB7920143541EE9CF0C8E6EE5341D152CD9120143541F8EB30C7E6EE5341D92C94022114354186B67328E7EE5341669C72EA201435417C67332AE7EE5341FDEF02EE201435416E36462DE7EE534171802406211435417785862BE7EE534168B1FC7A2114354166624B90E7EE53418D86843D21143541E3CABF94E7EE53416E46DF4F21143541301694A4E7EE534135822A5C211435414B01B0A3E7EE5341F2425781221435414BFA86A0E8EE534128070C75221435412F0F6BA1E8EE5341A622E58622143541298CCFB0E8EE53416D5E3093221435414377EBAFE8EE53414B2CB5B723143541A39831ACE9EE53410F1CF975231435417A22F5B0E9EE534159AB6E8523143541DF9D32BEE9EE534131DB7AC222143541C8A36CCCE9EE5341A02106BC22143541A826E5C6E9EE5341CA99BCAF2214354136B2CAC7E9EE53415F5331B622143541562F52CDE9EE5341BD9AB92321143541FAECB0EAE9EE53412CE1441D21143541DA6F29E5E9EE53415659FB102114354167FB0EE6E9EE5341E712701721143541877896EBE9EE5341D185058D1F14354135CC5E08EAEE53413A3CFF7E1F14354165DE5BFCE9EE53411FE379421F143541F77EC600EAEE5341B62C80501F143541C66CC90CEAEE53416EFE27C71D143541C6BA7D29EAEE5341DA44B3C01D143541A53DF623EAEE534104BD69B41D14354134C9DB24EAEE53419476DEBA1D1435415446632AEAEE53413F0DAD281C14354178E2BC47EAEE5341AA5338221C14354159653542EAEE5341D4CBEE151C143541E5F01A43EAEE53416985631C1C143541056EA248EAEE5341');
INSERT INTO tmp_surface (gid, gid_leve_topo, layer, subclasses, extendedentity, linetype, entityhandle, text, color, thickness, representation, shape) VALUES (246, 37, 'FDP_F_BATI', 'AcDbEntity:AcDbPolyline', 'GéouestLR_Bati_Dur.syb      1      0 0', 'Continuous', '11BEA', NULL, NULL, NULL, 'FDP_F_BATI', '0103000000010000003500000065C39A620E1435415BB6D625EBEE53412981B2650E1435411D638028EBEE53419B0299590E143541323D6129EBEE5341E44C137E0E143541E6AE2549EBEE5341F3CB60880E1435411F82AA48EBEE534150508A060F143541983446B3EBEE534117BCE8370F143541AB7B64B0EBEE534131CD74071114354156462350EDEE53413B191CE510143541B3D2A452EDEE5341DE3EAB0411143541BA4A7770EDEE53413866D9530D14354116F71FB5EDEE53416B3D09150D143541907DB0B9EDEE5341B5A9BA030D143541D2E5CDAAEDEE534192AE99C40C14354136E84BAFEDEE53419D64ABCF0C14354145B75EBBEDEE5341E690D4EE08143541713C9F05EEEE5341BF885DDE08143541D677DA06EEEE53417044F7CC081435412D0950F8EDEE534195B88E8D08143541BA4E23FDEDEE5341768BC09C08143541F7E80D09EEEE5341F7764BAA041435419F56D151EEEE5341D87DC79C04143541A4FFE545EEEE53418978EB2404143541FC8EE14EEEEE534138D89B10031435413A5D165FEDEE5341ECE04E060314354167E62556EDEE53411A53B04603143541E1F08251EDEE5341C632FD36031435417D242540EDEE5341529ACDF30214354182380F45EDEE5341B1FCF9D20114354147C84049ECEE5341BF43511002143541427A8A43ECEE53412C7E53FC01143541BC92E433ECEE534165B2BEEF01143541F8AACE34ECEE5341D48041EA01143541D6541630ECEE53416D1D1CC800143541A0A69636EBEE5341B9E2E2D40014354145F29535EBEE5341422102C20014354112F75825EBEE5341A985ECB3001435416AD95A26EBEE5341F4FE3FAA0014354194C0E61DEBEE5341B7D26B97FF1335419772BE2DEAEE53418BC22EDEFF133541D4D17128EAEE5341E78D93CEFF133541B79C4B1CEAEE5341253E77BE03143541C005D9D2E9EE5341637E6ECC03143541E38C61DEE9EE5341F7949C0B04143541C8073DDAE9EE53413BD97BFB03143541EF8B15CCE9EE53411EA33C0304143541403388CBE9EE53414A6073F2071435414BAFCD83E9EE5341FD135C000814354168E89F8FE9EE534114048F3F08143541F0FD0D8BE9EE5341ECE3992E081435419D90C47BE9EE534168AF3E4E0814354185EE9279E9EE5341AEF545220C14354183C2A035E9EE534165C39A620E1435415BB6D625EBEE5341');
INSERT INTO tmp_surface (gid, gid_leve_topo, layer, subclasses, extendedentity, linetype, entityhandle, text, color, thickness, representation, shape) VALUES (247, 37, 'FDP_F_BATI', 'AcDbEntity:AcDbPolyline', 'GéouestLR_Bati_Dur.syb      1      0 0', 'Continuous', '11BFB', NULL, NULL, NULL, 'FDP_F_BATI', '010300000001000000A60000007A8D8864FB13354105A32A8BE6EE53412A59A9C9FB13354162501EEAE6EE5341DC317F92FC133541A9913999E7EE534187319D0AFD133541606C60F2E7EE5341513E1EE4FC133541180734F5E7EE5341E2C28E08FD133541EDAC7015E8EE53418D578731FD1335417B3C8013E8EE5341A46FD246FE133541FCAD88FFE8EE534180EF231BFE1335412AFAEC02E9EE5341BCEDE42DFE133541765ACE11E9EE5341D8298564FE133541C53EDF0DE9EE5341CCB00471FE13354110F1B718E9EE5341738C1587FF1335416D6D090AEAEE5341E843CA57FF133541BF6B070FEAEE5341708AF45AFF1335418A4DD914EAEE534181A456F1F7133541CE74C69FEAEE5341B65D9694F7133541DC16CE56EAEE53415CE2B415F7133541B9E9EEE9E9EE53410706BAC3F61335416CE05DA1E9EE534166EEB7BDF61335417A650C9CE9EE5341D3DA21D5F6133541222E659AE9EE53410177A7C5F6133541B5B24C8CE9EE5341BE114AADF613354158D3A18CE9EE5341555F8B99F51335415B0B969DE8EE534105190189F5133541314F3F8FE8EE53413942EE9FF5133541DD2B988DE8EE53417AA5188EF5133541B9C3D37FE8EE534161B17974F51335410C748E81E8EE534178C9A862F51335414C010F71E8EE53415613020FF513354108778723E8EE53415BBB5B1EF51335414E298922E8EE5341424FBA09F5133541926C9C0EE8EE534152996242F2133541C828CF42E8EE534171750024ED133541E220218AE7EE5341E1968F50E91335413CDBA3C4E7EE534129CB106FED133541A9C29F5AEBEE53412FBFD380ED133541F8DD7468EBEE53412BDA1C1FF1133541F9484A8EEEEE5341651A4D6AF513354171218F38F2EE5341C6E061D2FF1335415B09DD71F1EE53412101A38FFF133541A3569833F1EE53413CE139A1021435418F1DB2F6F0EE5341DFC2BAED02143541C2306034F1EE53413694DA8B051435417235B203F1EE53419E99DC2007143541098D59E6F0EE53418BAA5F2507143541B1DD3DEAF0EE5341155D947107143541E69BF7E4F0EE5341EE0143340714354135AE13B0F0EE5341284701661C143541F5BD8626EFEE5341350AC4571C143541C3363B1AEFEE534107ABFB3B1C1435413434431CEFEE53419222F07D1B1435417286CC79EEEE5341A508BF50281435417CF82D8CEDEE5341897AC1CF281435415DFDD8F9EDEE534172365B0D291435413192092FEEEE53416F6158AE281435412621EA35EEEE5341629E95BC2814354158A83542EEEE534133A6604129143541C30FCE37EEEE5341BF7CB2FA26143541185DDE41ECEE53411D00716B26143541C576F7C4EBEE534172142052251435413E40F7D6EAEE5341786000412514354116855DC9EAEE53419E793920241435413881E9CCE9EE5341ED66461724143541268BFBC5E9EE5341D9B3E7062C1435418046E932E9EE53415B15AA0C2C1435419233F237E9EE5341478D09D93514354166A19D84E8EE53418AE177132F143541D64724B6E2EE53418A4D75D82E143541EF126BBAE2EE5341399484A02E143541E730308AE2EE5341B1E8A3B62E143541EBD89588E2EE534129AE17B32E143541F1728385E2EE5341B259F89C2E143541ECCA1D87E2EE53411BCD8F292E1435418A5C9723E2EE53419221AF3F2E1435418E04FD21E2EE53415B591C3C2E143541B6A1EA1EE2EE5341E804FD252E143541B0F98420E2EE5341C515D8B12D1435410B0D5BBCE1EE5341C5A9DAEC2D143541F14114B8E1EE5341427E1FD72D143541532754A5E1EE5341CA131F8C2D14354134F2C2AAE1EE5341027DE88D2D1435416BF54CACE1EE5341668286862D1435414F32D5ACE1EE5341F6680F812D143541AE1D90ABE1EE534118E7064826143541E14D9131E2EE5341E7051C4626143541639F5E33E2EE5341D017BA3E26143541B37FE833E2EE5341443CF73C261435415A795E32E2EE53418CBF30F325143541A661B737E2EE53414F8E01052614354165FA1447E2EE53412E16BED4231435413B9FAF6FE2EE5341C3E9A2C3231435413AFAEE60E2EE53410F9E6877231435411C4B7566E2EE534141FC9FBA2314354198A870A0E2EE5341323B6F9B20143541B0485CDAE2EE53410513FA5B20143541BBA5A7A3E2EE53415084BBBF1D143541043815D4E2EE534176488ECC1D143541418626DFE2EE5341CD267A381C14354111F16DFCE2EE534198822F281C143541292361EEE2EE534120182FDD1B1435410BEECFF3E2EE534151B992F21B143541398D4106E3EE5341C58F90021C143541728D1905E3EE534199CC002C1C143541F583D628E3EE5341F93D9CE91B143541F38BA52DE3EE5341656AB7FA1B143541F230663CE3EE53413C75C6381B1435413E08754AE3EE534169195D321B143541D532ED44E3EE5341D98013261B143541E440D045E3EE5341A8DC7C2C1B1435414D16584BE3EE5341AC0D639E19143541F6263268E3EE5341D9B1F997191435418C51AA62E3EE5341C925B08B1914354107038F63E3EE53419C8119921914354171D81669E3EE534174B97101181435419D012086E3EE53410C8D56F0171435419C5C5F77E3EE5341938122B2171435415C06E17BE3EE5341FAAD3DC3171435415DABA18AE3EE534149D32434161435419D3B8EA7E3EE53417A77BB2D16143541336606A2E3EE5341E6DE7121161435414374E9A2E3EE53413D47DB271614354118ED72A8E3EE534116FD2B9814143541CC9969C5E3EE534147A1C2911414354164C4E1BFE3EE5341B30879851414354173D2C4C0E3EE53410A71E28B14143541474B4EC6E3EE534116790BD113143541EE4ED8D3E3EE5341AF4CF0BF13143541EEA917C5E3EE53414F95458213143541793D8FC9E3EE5341B7C16093131435417AE24FD8E3EE534198C860D312143541D8C039E6E3EE5341C96CF7CC121435416DEBB1E0E3EE53410D53A7C01214354109A096E1E3EE5341DCAE10C71214354172751EE7E3EE5341DECD962F111435412FC2A504E4EE53410F722D2911143541C5EC1DFFE3EE5341FFE5E31C11143541409E0200E4EE5341CE414D2311143541A9738A05E4EE53417E55419B0F143541F2D9F321E4EE53411629268A0F143541F2343313E4EE534197299C4C0F1435416F15A917E4EE5341FE55B75D0F14354170BA6926E4EE5341ACA6E1D30D1435410CC0F442E4EE53412B4059C60D143541107E4637E4EE534141A78A600B1435411560C163E4EE5341415A0C5C0B143541C8FBE05FE4EE5341093EBC1E0B14354166695264E4EE5341FD4B52590D143541B8C83D49E6EE5341B12E39ED0D143541EA01F0C6E6EE5341F699B3CE0D143541FDA02EC9E6EE534135B401300A14354113471E0CE7EE53418C6E3EEA0914354171452811E7EE5341CAA65C59091435418942CB93E6EE534153D3B8470714354153DEBCADE4EE534153D7DC22071435411D066EB0E4EE5341EDCF903A0714354138C68DC8E4EE534182ED9FEA071435419AEEC05FE5EE5341F74ADB3DFB13354124398F4DE6EE5341BB74D881FA133541FB6CC3B0E5EE5341652247C1FA133541567502ACE5EE5341837C10ACFA133541997B8E99E5EE5341650A5D3AFA133541EDD6B9A1E5EE534102595241FB13354179A0067DE6EE53418AF88530FB1335410C7F3A7EE6EE53416A89FE41FB133541B099378DE6EE53417A8D8864FB13354105A32A8BE6EE5341');
INSERT INTO tmp_surface (gid, gid_leve_topo, layer, subclasses, extendedentity, linetype, entityhandle, text, color, thickness, representation, shape) VALUES (248, 37, 'FDP_F_BATI', 'AcDbEntity:AcDbPolyline', NULL, 'Continuous', '11C18', NULL, NULL, NULL, 'FDP_F_BATI', '0103000000010000007B0000006985631C1C143541056EA248EAEE534112BDE65B1B1435414767AE56EAEE53417B73E04D1B1435417779AB4AEAEE5341C72537111B143541BDB9184FEAEE53415D6F3D1F1B1435418DA71B5BEAEE5341FFCC12611A1435412945FC68EAEE53416F139E5A1A14354108C87463EAEE5341998B544E1A14354197535A64EAEE53412A45C9541A143541B7D0E169EAEE53414BF096CD18143541A7FE6D86EAEE5341BB3622C7181435418681E680EAEE5341E5AED8BA18143541120DCC81EAEE534176684DC118143541338A5387EAEE53411E1F843717143541A33DDDA3EAEE53411157E21517143541E0FEDB86EAEE5341A98D0C0C17143541FF759287EAEE5341B0363CD514143541A79EBD9EE8EE5341727287E114143541C389D99DE8EE5341C0147FCF141435410D4B4C8EE8EE5341FED833C314143541F15F308FE8EE5341E9E1F346141435411B8F0824E8EE5341FB73AF151414354199969A27E8EE5341F4CF89A113143541F5B56FC3E7EE534127D5AAB713143541F129D5C1E7EE534190811AB413143541FE5AC2BEE7EE5341617CF99D1314354103E75CC0E7EE5341737EF2291314354101754C5CE7EE5341A783134013143541FEE8B15AE7EE53410B30833C131435410D1A9F57E7EE5341DC2A62261314354111A63959E7EE5341EBAD6FB112143541561B5EF4E6EE53411AB390C712143541518FC3F2E6EE5341835F00C41214354160C0B0EFE6EE5341545ADFAD12143541644C4BF1E6EE5341BDA77236121435413CCD4C8AE6EE534198D2EA7312143541C164D885E6EE53412C93E9511214354102D18468E6EE53411DE4C0E313143541DCAD654BE6EE53412F142BEA1314354129EFED50E6EE5341F14F76F61314354143DA0950E6EE5341E31F0CF013143541F698814AE6EE53410D66FF6D15143541B07BD32EE6EE53412096697415143541FBBC5B34E6EE5341E2D1B4801514354116A87733E6EE5341D4A14A7A15143541C966EF2DE6EE53414A6BD537161435411EEE3220E6EE53413E0DA74916143541D4F8902FE6EE53410D956988161435414B9F042BE6EE534119F39776161435419594A61BE6EE5341B1659E3617143541D80ABC0DE6EE5341C095083D17143541254C4413E6EE534186D15349171435413F376012E6EE534177A1E94217143541F3F5D70CE6EE5341F4253ECE18143541019E31F0E5EE53410256A8D4181435414EDFB9F5E5EE5341C891F3E01814354168CAD5F4E5EE5341BA6189DA181435411C894DEFE5EE53412E1BA16D1A1435419B2D17D2E5EE534121BD727F1A143541513875E1E5EE5341EE706EBD1A1435418947F7DCE5EE5341F6CE9CAB1A143541D43C99CDE5EE53417F0FA43F1C1435417E8551B0E5EE53418D3F0E461C143541CBC6D9B5E5EE5341537B59521C143541E5B1F5B4E5EE5341454BEF4B1C14354197706DAFE5EE5341C8B384D11D14354157B53193E5EE5341D7E3EED71D143541A2F6B998E5EE53419D1F3AE41D143541BCE1D597E5EE53418EEFCFDD1D14354170A04D92E5EE53414FAE329E1E1435415C665C84E5EE534123D94DAF1E1435417C141D93E5EE5341C4D7DD221F143541D81CBD8AE5EE5341D65646971F143541D4A521EFE5EE53415EC6247F1F143541CB56E1F0E5EE5341F519B5821F143541BC25F4F3E5EE53416DAAD69A1F143541C57434F2E5EE5341AEC1270A201435419FE83452E6EE5341363106F21F1435419599F453E6EE5341CD8496F51F14354186680757E6EE53414115B80D201435418FB74755E6EE5341FCA010452014354138F30285E6EE53412576980720143541B55B7789E6EE5341AE078D19201435418C87F398E6EE534189320557201435410F1F7F94E6EE53413AFF3C8E20143541071D1EC4E6EE5341C66E1B7620143541FECDDDC5E6EE53415DC2AB7920143541EE9CF0C8E6EE5341D152CD9120143541F8EB30C7E6EE5341D92C94022114354186B67328E7EE5341669C72EA201435417C67332AE7EE5341FDEF02EE201435416E36462DE7EE534171802406211435417785862BE7EE534168B1FC7A2114354166624B90E7EE53418D86843D21143541E3CABF94E7EE53416E46DF4F21143541301694A4E7EE534135822A5C211435414B01B0A3E7EE5341F2425781221435414BFA86A0E8EE534128070C75221435412F0F6BA1E8EE5341A622E58622143541298CCFB0E8EE53416D5E3093221435414377EBAFE8EE53414B2CB5B723143541A39831ACE9EE53410F1CF975231435417A22F5B0E9EE534159AB6E8523143541DF9D32BEE9EE534131DB7AC222143541C8A36CCCE9EE5341A02106BC22143541A826E5C6E9EE5341CA99BCAF2214354136B2CAC7E9EE53415F5331B622143541562F52CDE9EE5341BD9AB92321143541FAECB0EAE9EE53412CE1441D21143541DA6F29E5E9EE53415659FB102114354167FB0EE6E9EE5341E712701721143541877896EBE9EE5341D185058D1F14354135CC5E08EAEE53413A3CFF7E1F14354165DE5BFCE9EE53411FE379421F143541F77EC600EAEE5341B62C80501F143541C66CC90CEAEE53416EFE27C71D143541C6BA7D29EAEE5341DA44B3C01D143541A53DF623EAEE534104BD69B41D14354134C9DB24EAEE53419476DEBA1D1435415446632AEAEE53413F0DAD281C14354178E2BC47EAEE5341AA5338221C14354159653542EAEE5341D4CBEE151C143541E5F01A43EAEE53416985631C1C143541056EA248EAEE5341');
INSERT INTO tmp_surface (gid, gid_leve_topo, layer, subclasses, extendedentity, linetype, entityhandle, text, color, thickness, representation, shape) VALUES (249, 37, 'FDP_F_BATI', 'AcDbEntity:AcDbPolyline', NULL, 'Continuous', '11CAC', NULL, NULL, NULL, 'FDP_F_BATI', '01030000000100000005000000997FF471251435417E1D389DDCEE534138FF351826143541A73A7635DDEE5341E5F680AD231435418BCAD860DDEE53415794120623143541D02687C7DCEE5341997FF471251435417E1D389DDCEE5341');
INSERT INTO tmp_surface (gid, gid_leve_topo, layer, subclasses, extendedentity, linetype, entityhandle, text, color, thickness, representation, shape) VALUES (250, 37, 'FDP_F_BATI', 'AcDbEntity:AcDbPolyline', 'GéouestLR_Bati_Dur.syb      1      0 0', 'Continuous', '11CAD', NULL, NULL, NULL, 'FDP_F_BATI', '01030000000100000005000000E4852DA123143541A30EB661DDEE5341FB3C46312114354136E6758DDDEE5341AD6BB484201435417711A6F3DCEE5341FDBD14F622143541BB4736C9DCEE5341E4852DA123143541A30EB661DDEE5341');
INSERT INTO tmp_surface (gid, gid_leve_topo, layer, subclasses, extendedentity, linetype, entityhandle, text, color, thickness, representation, shape) VALUES (251, 38, 'FDP_F_BATI', 'AcDbEntity:AcDbPolyline', NULL, 'Continuous', '42492', NULL, NULL, NULL, 'FDP_F_BATI', '01030000000100000005000000E0BF7A9BC00C3541ACC39F3E2CF053411E7541EFA00E3541ACC39F3E2CF053411E7541EFA00E3541193FEFBEF0EF5341E0BF7A9BC00C3541193FEFBEF0EF5341E0BF7A9BC00C3541ACC39F3E2CF05341');
INSERT INTO tmp_surface (gid, gid_leve_topo, layer, subclasses, extendedentity, linetype, entityhandle, text, color, thickness, representation, shape) VALUES (252, 38, 'FDP_F_BATI', 'AcDbEntity:AcDbPolyline', NULL, 'Continuous', '42554', NULL, NULL, NULL, 'FDP_F_BATI', '01030000000100000005000000E0BF7A1BC10C3541ACC39F1E2CF053411E75416FA00E3541ACC39F1E2CF053411E75416FA00E3541193FEFDEF0EF5341E0BF7A1BC10C3541193FEFDEF0EF5341E0BF7A1BC10C3541ACC39F1E2CF05341');


--
-- TOC entry 15105 (class 0 OID 0)
-- Dependencies: 3471
-- Name: tmp_surface_gid_seq; Type: SEQUENCE SET; Schema: a_rtge; Owner: rtge
--

SELECT pg_catalog.setval('tmp_surface_gid_seq', 252, true);


--
-- TOC entry 14866 (class 2606 OID 2980530)
-- Name: tmp_surface_pkey; Type: CONSTRAINT; Schema: a_rtge; Owner: rtge
--

ALTER TABLE ONLY tmp_surface
    ADD CONSTRAINT tmp_surface_pkey PRIMARY KEY (gid);


--
-- TOC entry 14867 (class 1259 OID 2980531)
-- Name: tmp_surface_shape; Type: INDEX; Schema: a_rtge; Owner: rtge
--

CREATE INDEX tmp_surface_shape ON tmp_surface USING gist (shape);


--
-- TOC entry 15102 (class 0 OID 0)
-- Dependencies: 3472
-- Name: tmp_surface; Type: ACL; Schema: a_rtge; Owner: rtge
--

REVOKE ALL ON TABLE tmp_surface FROM PUBLIC;
REVOKE ALL ON TABLE tmp_surface FROM rtge;
GRANT ALL ON TABLE tmp_surface TO rtge;
GRANT ALL ON TABLE tmp_surface TO wvs_role;
GRANT ALL ON TABLE tmp_surface TO wvs;


--
-- TOC entry 15104 (class 0 OID 0)
-- Dependencies: 3471
-- Name: tmp_surface_gid_seq; Type: ACL; Schema: a_rtge; Owner: rtge
--

REVOKE ALL ON SEQUENCE tmp_surface_gid_seq FROM PUBLIC;
REVOKE ALL ON SEQUENCE tmp_surface_gid_seq FROM rtge;
GRANT ALL ON SEQUENCE tmp_surface_gid_seq TO rtge;


-- Completed on 2017-06-27 18:11:09 CEST

--
-- PostgreSQL database dump complete
--

