prompt --application/shared_components/navigation/breadcrumbs/breadcrumb
begin
--   Manifest
--     MENU: Breadcrumb
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.04.12'
,p_release=>'22.1.0'
,p_default_workspace_id=>2715162693355865
,p_default_application_id=>122
,p_default_id_offset=>0
,p_default_owner=>'INV'
);
wwv_flow_imp_shared.create_menu(
 p_id=>wwv_flow_imp.id(40070279985263645)
,p_name=>'Breadcrumb'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(6211282922410312)
,p_short_name=>unistr('Detalle de ventas por art\00EDculos')
,p_link=>'f?p=&APP_ID.:8:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>8
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(6224476746730638)
,p_short_name=>unistr('Detalle de ventas por art\00EDculos')
,p_link=>'f?p=&APP_ID.:10:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>10
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(6308020493626037)
,p_short_name=>'Anulacion De Pedidos'
,p_link=>'f?p=&APP_ID.:15:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>15
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(6311364091710546)
,p_short_name=>'Listado de OTS entregadas'
,p_link=>'f?p=&APP_ID.:16:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>16
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(6422065618420637)
,p_short_name=>'Resumen de Ventas por Vendedores Permitidos'
,p_link=>'f?p=&APP_ID.:17:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>17
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(6441395891639369)
,p_short_name=>'LLAMA MODAL'
,p_link=>'f?p=&APP_ID.:900:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>900
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(6928756706704310)
,p_short_name=>'Carga de Fondo de Sencillo'
,p_link=>'f?p=&APP_ID.:20:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>20
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(6963503311787629)
,p_parent_id=>wwv_flow_imp.id(111399681645461489)
,p_short_name=>unistr('Generaci\00F3n de Gift Card')
,p_link=>'f?p=&APP_ID.:21:&SESSION.::&DEBUG.:::'
,p_page_id=>21
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(7325043363528893)
,p_short_name=>'Rendicion de Ots Autorizados'
,p_link=>'f?p=&APP_ID.:18:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>18
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(8250369253500828)
,p_short_name=>unistr('Alerta de Facturas en Dep\00F3sito')
,p_link=>'f?p=&APP_ID.:22:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>22
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(8725193377948412)
,p_parent_id=>wwv_flow_imp.id(600354349809659598)
,p_short_name=>unistr('Ordenes de Trabajo Terminadas por T\00E9cnico')
,p_long_name=>unistr('Ordenes de Trabajo Terminadas por T\00E9cnico')
,p_link=>'f?p=&APP_ID.:37:&SESSION.::&DEBUG.:::'
,p_page_id=>37
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(8729695013132586)
,p_short_name=>'CPSVALES'
,p_link=>'f?p=&APP_ID.:33:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>33
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(10543810151134538)
,p_short_name=>unistr('Comparativo de ventas anuales por art\00EDculos')
,p_link=>'f?p=&APP_ID.:38:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>38
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(10638923238941438)
,p_short_name=>'Devolucion por Nota de Credito'
,p_link=>'f?p=&APP_ID.:25:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>25
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(12456524899965198)
,p_short_name=>'Visor PDF'
,p_link=>'f?p=&APP_ID.:800:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>800
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(12459471043009618)
,p_short_name=>'Prueba de Visor'
,p_link=>'f?p=&APP_ID.:801:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>801
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(13473758590240327)
,p_short_name=>'RPPLANIL'
,p_link=>'f?p=&APP_ID.:31:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>31
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(13830296111425651)
,p_short_name=>unistr('Asignaci\00F3n de Promotoras')
,p_link=>'f?p=&APP_ID.:56:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>56
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(14632197691469870)
,p_short_name=>'Alta de paginas en menu'
,p_link=>'f?p=&APP_ID.:5000:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>5000
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(15857074090339685)
,p_short_name=>unistr('Carga de Notas de Cr\00E9dito')
,p_link=>'f?p=&APP_ID.:103:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>103
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(17519045591162794)
,p_short_name=>'Carga de Vendedores'
,p_link=>'f?p=&APP_ID.:100:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>100
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(18387285165567215)
,p_short_name=>'VTRPEPEN - Reporte de Pedidos Pendientes'
,p_link=>'f?p=&APP_ID.:104:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>104
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(19494104373678535)
,p_short_name=>'Seguridad Granular'
,p_link=>'f?p=&APP_ID.:109:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>109
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(19739283162535785)
,p_short_name=>'Pagina prueba seguridad granular'
,p_link=>'f?p=&APP_ID.:115:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>115
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(19749289548808094)
,p_parent_id=>wwv_flow_imp.id(112820214685108346)
,p_short_name=>'CANOCONF - Solicitud No Conforme'
,p_link=>'f?p=&APP_ID.:146:&SESSION.::&DEBUG.:::'
,p_page_id=>146
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(20874618268300478)
,p_parent_id=>wwv_flow_imp.id(600354349809659598)
,p_short_name=>'Reporte de OT Termindas por Tecnico - Comisiones'
,p_long_name=>'Reporte de OT Terminadas por Tecnico - Comisiones'
,p_link=>'f?p=&APP_ID.:147:&SESSION.::&DEBUG.:::'
,p_page_id=>147
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(22539994118090949)
,p_parent_id=>wwv_flow_imp.id(111399681645461489)
,p_short_name=>'Carga de Facturas'
,p_link=>'f?p=&APP_ID.:99:&SESSION.::&DEBUG.:::'
,p_page_id=>99
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(23424469961742846)
,p_short_name=>'Lista de Precios'
,p_link=>'f?p=&APP_ID.:93:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>93
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(25375526439770110)
,p_short_name=>'BSPERSON'
,p_link=>'f?p=&APP_ID.:102:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>102
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(25436036630203127)
,p_short_name=>'BSREFCOM'
,p_link=>'f?p=&APP_ID.:108:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>108
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(25829039209541914)
,p_short_name=>'CCDOCBAL'
,p_link=>'f?p=&APP_ID.:114:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>114
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(26330704242286550)
,p_short_name=>unistr('Editar Direcci\00F3n')
,p_link=>'f?p=&APP_ID.:118:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>118
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(26399739205563066)
,p_short_name=>'Consultas de Derivaciones Realizadas'
,p_link=>'f?p=&APP_ID.:158:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>158
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(27428630260643633)
,p_short_name=>'CCCRECPH'
,p_link=>'f?p=&APP_ID.:122:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>122
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(28303378685376216)
,p_short_name=>unistr('Editar Tel\00E9fono')
,p_link=>'f?p=&APP_ID.:117:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>117
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(28593542985464287)
,p_short_name=>unistr('Edici\00F3n de documentos')
,p_link=>'f?p=&APP_ID.:119:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>119
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(28623108217918690)
,p_short_name=>'Editar responsable legal'
,p_link=>'f?p=&APP_ID.:123:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>123
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(29528994353135451)
,p_short_name=>'Solicitud de Credito'
,p_link=>'f?p=&APP_ID.:131:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>131
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(29648601825755601)
,p_short_name=>'E-mail de contactos'
,p_link=>'f?p=&APP_ID.:132:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>132
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(32175871813545584)
,p_short_name=>'VTCPEDRE - Consulta de pedido de repuestos'
,p_link=>'f?p=&APP_ID.:165:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>165
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(33995234470250644)
,p_short_name=>'VTMOTANU'
,p_link=>'f?p=&APP_ID.:137:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>137
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(35858080258790637)
,p_short_name=>'CCDESCLI - Descuentos a Clientes'
,p_link=>'f?p=&APP_ID.:170:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>170
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(36359714241207603)
,p_short_name=>'VTPEDAUTRES'
,p_link=>'f?p=&APP_ID.:175:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>175
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(36454844277075983)
,p_short_name=>'STREMISI'
,p_link=>'f?p=&APP_ID.:178:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>178
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(37854896161601183)
,p_short_name=>'VTMOTI'
,p_link=>'f?p=&APP_ID.:179:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>179
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(38421060229924629)
,p_short_name=>'VTRVEVCO'
,p_link=>'f?p=&APP_ID.:169:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>169
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(40070490222263645)
,p_short_name=>'INICIO'
,p_link=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::'
,p_page_id=>1
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(41883998040391266)
,p_short_name=>'CCSEGCLI'
,p_link=>'f?p=&APP_ID.:190:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>190
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(42072015520305576)
,p_short_name=>'CCCLIDOCVEN'
,p_link=>'f?p=&APP_ID.:191:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>191
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(42278145400976859)
,p_short_name=>'CRSOLRE'
,p_link=>'f?p=&APP_ID.:192:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>192
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(42585473520338083)
,p_short_name=>'VTRVEMOA'
,p_link=>'f?p=&APP_ID.:194:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>194
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(43256754313447788)
,p_short_name=>'VTRGARAN'
,p_link=>'f?p=&APP_ID.:197:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>197
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(43375592701881337)
,p_short_name=>'VTRRESOR'
,p_link=>'f?p=&APP_ID.:199:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>199
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(43403616330077025)
,p_short_name=>'VTOFERTA'
,p_link=>'f?p=&APP_ID.:201:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>201
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(44667955310395071)
,p_short_name=>'VTORIGEN'
,p_link=>'f?p=&APP_ID.:196:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>196
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(44720376034651005)
,p_short_name=>'VTPARCON'
,p_link=>'f?p=&APP_ID.:209:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>209
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(47475640060548415)
,p_short_name=>'CCRETCHE'
,p_link=>'f?p=&APP_ID.:214:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>214
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(47527263837138177)
,p_short_name=>'VTCANRET'
,p_link=>'f?p=&APP_ID.:215:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>215
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(50482897564447324)
,p_parent_id=>wwv_flow_imp.id(158448198941714180)
,p_short_name=>'METAS DE VENDEDORES'
,p_long_name=>'METAS DE VENDEDORES'
,p_link=>'f?p=&APP_ID.:212:&SESSION.::&DEBUG.:::'
,p_page_id=>212
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(51134068428890489)
,p_short_name=>'FVCOPROM'
,p_link=>'f?p=&APP_ID.:224:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>224
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(51816678241032285)
,p_short_name=>'prueba tabs'
,p_link=>'f?p=&APP_ID.:354354:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>354354
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(52223234624722162)
,p_short_name=>'Verificacion de Margenes de Promociones FVMRGPRM'
,p_link=>'f?p=&APP_ID.:228:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>228
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(52279400476446248)
,p_short_name=>'VTRRANCL'
,p_link=>'f?p=&APP_ID.:230:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>230
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(53815107343097051)
,p_short_name=>'FVRCOMGR'
,p_link=>'f?p=&APP_ID.:229:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>229
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(54276730795833042)
,p_short_name=>'BSOBSCLI'
,p_link=>'f?p=&APP_ID.:236:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>236
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(54396499377790797)
,p_short_name=>'INFORME'
,p_link=>'f?p=&APP_ID.:1000:&SESSION.::&DEBUG.:::'
,p_page_id=>1000
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(54446074730920825)
,p_short_name=>'FVPROYEC'
,p_link=>'f?p=&APP_ID.:238:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>238
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(54853336754884124)
,p_short_name=>unistr('CONFACEL - Configuraci\00F3n Facturas Electr\00F3nicas')
,p_link=>'f?p=&APP_ID.:239:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>239
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(56133548160779766)
,p_parent_id=>wwv_flow_imp.id(111399681645461489)
,p_short_name=>'Pedidos'
,p_link=>'f?p=&APP_ID.:233:&SESSION.::&DEBUG.:::233'
,p_page_id=>233
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(58344618090629066)
,p_short_name=>'Carga de Promotoras'
,p_link=>'f?p=&APP_ID.:237:&SESSION.::&DEBUG.:::'
,p_page_id=>237
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(58633888416691536)
,p_short_name=>'VTCANVER - Autorizacion Canal Verde'
,p_link=>'f?p=&APP_ID.:240:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>240
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(58684960154178554)
,p_short_name=>'FVREPMGPR Verificacion Margen Promocion'
,p_link=>'f?p=&APP_ID.:242:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>242
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(59794903303539999)
,p_short_name=>'Canales  por Usuario'
,p_link=>'f?p=&APP_ID.:260:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>260
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(59834792941672562)
,p_short_name=>'Permisos por Usuarios'
,p_link=>'f?p=&APP_ID.:262:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>262
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(63239479323188085)
,p_short_name=>'FCOMSUPR_RESUMEN'
,p_link=>'f?p=&APP_ID.:255:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>255
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(63275236351911327)
,p_short_name=>'Seguimiento de Asistencia Gastro SMSEGASI'
,p_link=>'f?p=&APP_ID.:257:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>257
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(63627837374349568)
,p_short_name=>'FVREPROM'
,p_link=>'f?p=&APP_ID.:248:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>248
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(63663396931742970)
,p_short_name=>'SMREGCAP'
,p_link=>'f?p=&APP_ID.:265:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>265
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(63678848599136289)
,p_short_name=>'SMCAPMKT - Registro de Capacitaciones'
,p_link=>'f?p=&APP_ID.:252:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>252
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(64076898271754220)
,p_short_name=>'Motivos de Llamadas'
,p_link=>'f?p=&APP_ID.:254:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>254
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(64532586501680559)
,p_short_name=>'BSPROG - PROGRAMAS'
,p_link=>'f?p=&APP_ID.:268:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>268
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(65617834150876466)
,p_short_name=>'SMSESSGG'
,p_link=>'f?p=&APP_ID.:270:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>270
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(66827717393315643)
,p_short_name=>'SMPEDSG'
,p_link=>'f?p=&APP_ID.:272:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>272
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(66955284956826847)
,p_short_name=>'Puntos Por Productos'
,p_link=>'f?p=&APP_ID.:274:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>274
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(67493672158133276)
,p_short_name=>'Prosupuesto de Obras - SMENTSAL'
,p_link=>'f?p=&APP_ID.:277:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>277
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(67776010339098778)
,p_short_name=>'FVVALCOM'
,p_link=>'f?p=&APP_ID.:278:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>278
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(69312874550861661)
,p_short_name=>'Carga de Puntos Promo - STCANPUN'
,p_link=>'f?p=&APP_ID.:284:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>284
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(72161899159204033)
,p_short_name=>'Vendedores para Puntos'
,p_link=>'f?p=&APP_ID.:281:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>281
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(72485841717572073)
,p_short_name=>'Acuerdos Comerciales - CPACUECO'
,p_link=>'f?p=&APP_ID.:290:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>290
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(72860526579297870)
,p_short_name=>'BSTIPCOM'
,p_link=>'f?p=&APP_ID.:291:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>291
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(72867156307303129)
,p_short_name=>'BSTPTRA'
,p_link=>'f?p=&APP_ID.:293:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>293
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(72889713369339728)
,p_short_name=>'BSSERCOM'
,p_link=>'f?p=&APP_ID.:294:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>294
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(73895180514641943)
,p_short_name=>'BSSUBTRA'
,p_link=>'f?p=&APP_ID.:299:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>299
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(74296960541697953)
,p_short_name=>'BSESCIVI'
,p_link=>'f?p=&APP_ID.:302:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>302
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(74415556368164391)
,p_short_name=>'Carga de Talonarios BSTALONA'
,p_link=>'f?p=&APP_ID.:303:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>303
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(74563656445588471)
,p_short_name=>'BSPROFES'
,p_link=>'f?p=&APP_ID.:305:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>305
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(75302427789039679)
,p_short_name=>'CCHISTCP'
,p_link=>'f?p=&APP_ID.:295:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>295
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(75856508188464110)
,p_short_name=>'CALINTEC'
,p_link=>'f?p=&APP_ID.:309:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>309
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(75872910826628834)
,p_short_name=>'Carga de tipos de Cambio por Moneda BSTIPCAM'
,p_link=>'f?p=&APP_ID.:310:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>310
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(75877735849661717)
,p_short_name=>'Tipos de Cambio'
,p_link=>'f?p=&APP_ID.:311:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>311
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(76477304778562400)
,p_short_name=>'CAESCCOM'
,p_link=>'f?p=&APP_ID.:304:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>304
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(76583407114928749)
,p_parent_id=>wwv_flow_imp.id(600354534298661390)
,p_short_name=>'DEFINICION DE DE SOLUCIONES'
,p_long_name=>'DEFINICION DE DE SOLUCIONES'
,p_link=>'f?p=&APP_ID.:312:&SESSION.::&DEBUG.:::'
,p_page_id=>312
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(76720869253018310)
,p_parent_id=>wwv_flow_imp.id(600354534298661390)
,p_short_name=>'DEFINICION DE PROBLEMAS'
,p_long_name=>'DEFINICION DE PROBLEMAS - CAPROBLE'
,p_link=>'f?p=&APP_ID.:313:&SESSION.::&DEBUG.:::'
,p_page_id=>313
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(76990180135636333)
,p_parent_id=>wwv_flow_imp.id(111399681645461489)
,p_short_name=>'Preparacion de Pedidos de Repuestos'
,p_link=>'f?p=&APP_ID.:315:&SESSION.::&DEBUG.:::'
,p_page_id=>315
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(77382382699826109)
,p_short_name=>'Solicitud de Servicio SET UP'
,p_link=>'f?p=&APP_ID.:317:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>317
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(77952226182439084)
,p_short_name=>'BSPAISES'
,p_link=>'f?p=&APP_ID.:306:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>306
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(78246913585630531)
,p_parent_id=>wwv_flow_imp.id(641603826563673856)
,p_short_name=>'LLAMADAS PENDIENTES A REALIZAR'
,p_long_name=>'LLAMADAS PENDIENTES A REALIZAR  - CALLAPEN'
,p_link=>'f?p=&APP_ID.:321:&SESSION.::&DEBUG.:::'
,p_page_id=>321
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(78297826278804388)
,p_parent_id=>wwv_flow_imp.id(112673180881239135)
,p_short_name=>'VTREPDET'
,p_link=>'f?p=&APP_ID.:322:&SESSION.::&DEBUG.:::'
,p_page_id=>322
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(78423470982105390)
,p_short_name=>'VTCONMAR  (a migrar)'
,p_link=>'f?p=&APP_ID.:324:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>324
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(82146253179154158)
,p_short_name=>'CAORDTRA a migrar'
,p_link=>'f?p=&APP_ID.:320:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>320
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(82159818121163916)
,p_short_name=>'Distritos SET'
,p_link=>'f?p=&APP_ID.:332:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>332
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(85347943985635500)
,p_short_name=>'AUAUDIT'
,p_link=>'f?p=&APP_ID.:338:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>338
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(85829926918549176)
,p_short_name=>'Consulta de Repuestos a Presupuestar - CAENTSAL'
,p_link=>'f?p=&APP_ID.:342:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>342
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(91066755555611136)
,p_short_name=>'CACONOT'
,p_link=>'f?p=&APP_ID.:348:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>348
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(91116899217314908)
,p_short_name=>'STPEDCAR'
,p_link=>'f?p=&APP_ID.:350:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>350
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(93769802895234313)
,p_short_name=>'PRUEBA DRIVE'
,p_link=>'f?p=&APP_ID.:340:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>340
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(93850346945706975)
,p_short_name=>'BSCALEND'
,p_link=>'f?p=&APP_ID.:351:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>351
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(99338015979242013)
,p_short_name=>'prueba_hector'
,p_link=>'f?p=&APP_ID.:356:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>356
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(101974677063920933)
,p_short_name=>'Facturacion Masiva CPH - RPFACCPH'
,p_link=>'f?p=&APP_ID.:361:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>361
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(102637708285710974)
,p_short_name=>'vtconfac'
,p_link=>'f?p=&APP_ID.:193:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>193
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(103903326022743418)
,p_short_name=>'Favoritos'
,p_link=>'f?p=&APP_ID.:360:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>360
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(104456520141611631)
,p_short_name=>unistr('Autorizaci\00F3n de solicitudes de requerimiento de personal-RHAUTREQ')
,p_link=>'f?p=&APP_ID.:362:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>362
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(104671431637114705)
,p_short_name=>unistr('CNFELECT Facturas Electr\00F3nicas no migradas')
,p_link=>'f?p=&APP_ID.:363:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>363
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(106689718793737870)
,p_parent_id=>wwv_flow_imp.id(112679975586408979)
,p_short_name=>'FICHA DE MOVIMIENTOS DE ARTICULOS'
,p_long_name=>'FICHA DE MOVIMIENTOS DE ARTICULOS - STREENS'
,p_link=>'f?p=&APP_ID.:368:&SESSION.::&DEBUG.:::'
,p_page_id=>368
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(107101774294573282)
,p_short_name=>'BSPROVIN - Departamentos'
,p_link=>'f?p=&APP_ID.:366:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>366
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(107670645003992548)
,p_parent_id=>wwv_flow_imp.id(111399681645461489)
,p_short_name=>unistr('Pedidos de Repuesto Sal\00F3n')
,p_link=>'f?p=&APP_ID.:376:&SESSION.::&DEBUG.:::'
,p_page_id=>376
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(107731218022689941)
,p_short_name=>'Control de pedidos de Repuestos - STREPED1'
,p_link=>'f?p=&APP_ID.:379:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>379
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(108953821174031380)
,p_parent_id=>wwv_flow_imp.id(208969651270360287)
,p_short_name=>'NOTAS DE ENVIOS PENDIENTES - STENVPE'
,p_link=>'f?p=&APP_ID.:369:&SESSION.::&DEBUG.:::'
,p_page_id=>369
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(109147107528833590)
,p_parent_id=>wwv_flow_imp.id(112672995965234580)
,p_short_name=>'Pedido de Reposicion de Repuestos'
,p_long_name=>'Pedido de Reposicion de Repuestos - STREPREP'
,p_link=>'f?p=&APP_ID.:371:&SESSION.::&DEBUG.:::'
,p_page_id=>371
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(109257524163429437)
,p_short_name=>'Show_image'
,p_link=>'f?p=&APP_ID.:374:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>374
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(110095499705167996)
,p_parent_id=>wwv_flow_imp.id(506006346959999041)
,p_short_name=>'CAORDTRA'
,p_link=>'f?p=&APP_ID.:370:&SESSION.::&DEBUG.:::'
,p_page_id=>370
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(110448337863071063)
,p_short_name=>'RECATRE - CATALOGACION DE REPUESTO'
,p_link=>'f?p=&APP_ID.:380:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>380
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(110768018252397319)
,p_short_name=>'Aplicacion de Notas de Credito - CCCANCUO'
,p_link=>'f?p=&APP_ID.:386:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>386
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(110812771938742421)
,p_short_name=>'Reporte de Cabecera  de Aplicacion de Notas de Credito - CCCANCUO'
,p_link=>'f?p=&APP_ID.:387:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>387
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(111397243516437553)
,p_parent_id=>wwv_flow_imp.id(56133548160779766)
,p_short_name=>'Carga de Pedidos'
,p_link=>'f?p=&APP_ID.:234:&SESSION.::&DEBUG.:::234'
,p_page_id=>234
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(111399337598456703)
,p_parent_id=>wwv_flow_imp.id(40070490222263645)
,p_short_name=>'VENTAS'
,p_long_name=>'VENTAS'
,p_link=>'f?p=&APP_ID.:390:&SESSION.::&DEBUG.:::390'
,p_page_id=>390
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(111399681645461489)
,p_parent_id=>wwv_flow_imp.id(111399337598456703)
,p_short_name=>'MOVIMIENTOS'
,p_long_name=>'MOVIMIENTOS'
,p_link=>'f?p=&APP_ID.:391:&SESSION.::&DEBUG.:::391'
,p_page_id=>391
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(111404133488523963)
,p_parent_id=>wwv_flow_imp.id(107670645003992548)
,p_short_name=>'Carga de Pedidos Repuesto'
,p_link=>'f?p=&APP_ID.:9:&SESSION.::&DEBUG.:::'
,p_page_id=>9
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(111404967021549253)
,p_parent_id=>wwv_flow_imp.id(111399681645461489)
,p_short_name=>'Presupuestos'
,p_link=>'f?p=&APP_ID.:353:&SESSION.::&DEBUG.:::'
,p_page_id=>353
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(111405127885552473)
,p_parent_id=>wwv_flow_imp.id(111404967021549253)
,p_short_name=>'Carga de Presupuestos'
,p_link=>'f?p=&APP_ID.:354:&SESSION.::&DEBUG.:::'
,p_page_id=>354
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(111410996439636290)
,p_parent_id=>wwv_flow_imp.id(22539994118090949)
,p_short_name=>'Movimiento de Caja'
,p_link=>'f?p=&APP_ID.:95:&SESSION.::&DEBUG.:::'
,p_page_id=>95
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(112175077286091143)
,p_short_name=>'CCRECIBO'
,p_link=>'f?p=&APP_ID.:378:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>378
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(112638156847008419)
,p_short_name=>'Ordenes de Trabajo'
,p_link=>'f?p=&APP_ID.:400:&SESSION.::&DEBUG.:::'
,p_page_id=>400
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(112672511797230678)
,p_parent_id=>wwv_flow_imp.id(40070490222263645)
,p_short_name=>'REPUESTOS'
,p_long_name=>'REPUESTOS'
,p_link=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::'
,p_page_id=>1
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(112672995965234580)
,p_parent_id=>wwv_flow_imp.id(112672511797230678)
,p_short_name=>'MOVIMIENTOS'
,p_long_name=>'MOVIMIENTOS'
,p_link=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::'
,p_page_id=>1
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(112673180881239135)
,p_parent_id=>wwv_flow_imp.id(112672995965234580)
,p_short_name=>'Control de Pedidos Repuestos'
,p_link=>'f?p=&APP_ID.:11:&SESSION.::&DEBUG.:::'
,p_page_id=>11
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(112676858841381223)
,p_short_name=>'Stock'
,p_link=>'f?p=&APP_ID.:385:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>385
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(112678623667398670)
,p_parent_id=>wwv_flow_imp.id(40070490222263645)
,p_short_name=>'STOCK'
,p_link=>'f?p=&APP_ID.:385:&SESSION.::&DEBUG.:::'
,p_page_id=>385
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(112679467223402725)
,p_short_name=>'Reportes'
,p_link=>'f?p=&APP_ID.:389:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>389
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(112679975586408979)
,p_parent_id=>wwv_flow_imp.id(112678623667398670)
,p_short_name=>'REPORTES'
,p_long_name=>'REPORTES'
,p_link=>'f?p=&APP_ID.:389:&SESSION.::&DEBUG.:::'
,p_page_id=>389
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(112680381227413619)
,p_parent_id=>wwv_flow_imp.id(112679975586408979)
,p_short_name=>'Consulta de Stock'
,p_link=>'f?p=&APP_ID.:65:&SESSION.::&DEBUG.:::'
,p_page_id=>65
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(112685374880489975)
,p_parent_id=>wwv_flow_imp.id(40070490222263645)
,p_short_name=>'GENTE'
,p_link=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::'
,p_page_id=>1
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(112686663970496735)
,p_parent_id=>wwv_flow_imp.id(112820012870104911)
,p_short_name=>'Movimientos'
,p_link=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::'
,p_page_id=>1
);
wwv_flow_imp.component_end;
end;
/
begin
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.04.12'
,p_release=>'22.1.0'
,p_default_workspace_id=>2715162693355865
,p_default_application_id=>122
,p_default_id_offset=>0
,p_default_owner=>'INV'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(112820012870104911)
,p_parent_id=>wwv_flow_imp.id(19749289548808094)
,p_short_name=>unistr('Servicio T\00E9cnico')
,p_link=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::'
,p_page_id=>1
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(112820214685108346)
,p_parent_id=>wwv_flow_imp.id(112820012870104911)
,p_short_name=>'Movimientos'
,p_link=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::'
,p_page_id=>1
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(112821041750146234)
,p_parent_id=>wwv_flow_imp.id(112820012870104911)
,p_short_name=>'Movimientos'
,p_link=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::'
,p_page_id=>1
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(115402429628502645)
,p_short_name=>'RECONCAT'
,p_link=>'f?p=&APP_ID.:401:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>401
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(115688705553898805)
,p_short_name=>'Movimientos de ausentismo - RHMOVPER'
,p_link=>'f?p=&APP_ID.:396:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>396
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(117492439762257559)
,p_short_name=>'Contacto del Usuario'
,p_link=>'f?p=&APP_ID.:403:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>403
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(118371342548525571)
,p_short_name=>'Cabecera Carga de Recibos - CCRECIBO'
,p_link=>'f?p=&APP_ID.:395:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>395
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(118564087851625427)
,p_short_name=>'BTL'
,p_link=>'f?p=&APP_ID.:404:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>404
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(120178257195454969)
,p_short_name=>'Recibos Emitidos'
,p_link=>'f?p=&APP_ID.:408:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>408
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(120602884851779806)
,p_short_name=>'TEST'
,p_link=>'f?p=&APP_ID.:413:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>413
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(120900200620497721)
,p_short_name=>'Subida_Archivo'
,p_link=>'f?p=&APP_ID.:414:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>414
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(120950455986646443)
,p_short_name=>'Detalle de recibos cobrados - CCRECOME'
,p_link=>'f?p=&APP_ID.:415:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>415
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(122590362360013357)
,p_short_name=>'Panel de Facturas a Rutear - RPRUPFAC'
,p_link=>'f?p=&APP_ID.:412:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>412
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(123858795969561684)
,p_short_name=>'Reporte Reparto por Planillas'
,p_link=>'f?p=&APP_ID.:411:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>411
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(124008142751800992)
,p_parent_id=>wwv_flow_imp.id(112638156847008419)
,p_short_name=>'Carga de Orden de Trabajo'
,p_link=>'f?p=&APP_ID.:370:&SESSION.::&DEBUG.:::'
,p_page_id=>370
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(124039015447906583)
,p_short_name=>unistr('Reporte Reposici\00F3n de Repuestos')
,p_link=>'f?p=&APP_ID.:418:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>418
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(125897027994634419)
,p_short_name=>'Adjuntos Imagenes'
,p_link=>'f?p=&APP_ID.:420:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>420
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(126001782084937810)
,p_short_name=>'VTRLISTA'
,p_link=>'f?p=&APP_ID.:421:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>421
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(126315638566502499)
,p_short_name=>'CALIPERE'
,p_link=>'f?p=&APP_ID.:423:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>423
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(126371099560211053)
,p_short_name=>'RPVEHICU'
,p_link=>'f?p=&APP_ID.:424:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>424
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(126547634862543032)
,p_short_name=>'RPREPAMM'
,p_link=>'f?p=&APP_ID.:426:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>426
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(127787430294605346)
,p_short_name=>'Repartidores'
,p_link=>'f?p=&APP_ID.:429:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>429
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(127788509744604770)
,p_short_name=>'RPVETARI'
,p_link=>'f?p=&APP_ID.:431:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>431
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(128601204029785811)
,p_short_name=>unistr('REMIRCA - Migraci\00F3n de Repuestos a Catalogo')
,p_link=>'f?p=&APP_ID.:435:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>435
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(129780623664350796)
,p_short_name=>'Seguimiento de Inventario Movil'
,p_link=>'f?p=&APP_ID.:440:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>440
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(130065220589642089)
,p_short_name=>'test'
,p_link=>'f?p=&APP_ID.:4000:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>4000
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(131307372973093790)
,p_short_name=>'PRODUCT FILE'
,p_link=>'f?p=&APP_ID.:433:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>433
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(131550098174661030)
,p_short_name=>'BSciudad'
,p_link=>'f?p=&APP_ID.:436:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>436
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(132099715157277877)
,p_short_name=>'BSBARRIO'
,p_link=>'f?p=&APP_ID.:444:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>444
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(132125553341072321)
,p_parent_id=>wwv_flow_imp.id(132133518070039061)
,p_short_name=>'PROYECTOS PRESUPUESTO'
,p_long_name=>'PROYECTOS PRESUPUESTO'
,p_link=>'f?p=&APP_ID.:445:&SESSION.::&DEBUG.:::'
,p_page_id=>445
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(132133394979043211)
,p_parent_id=>wwv_flow_imp.id(40070490222263645)
,p_short_name=>'SERVICIOS GENERALES'
,p_long_name=>'SERVICIOS GENERALES'
,p_link=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::'
,p_page_id=>1
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(132133518070039061)
,p_parent_id=>wwv_flow_imp.id(132133394979043211)
,p_short_name=>'MOVIMIENTOS'
,p_link=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::'
,p_page_id=>1
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(132134266015035729)
,p_parent_id=>wwv_flow_imp.id(132133518070039061)
,p_short_name=>'SEGUIMIENTO DE OBRAS'
,p_long_name=>'SEGUIMIENTO DE OBRAS'
,p_link=>'f?p=&APP_ID.:249:&SESSION.::&DEBUG.:::'
,p_page_id=>249
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(132139525422007607)
,p_parent_id=>wwv_flow_imp.id(132133518070039061)
,p_short_name=>'OBRAS'
,p_long_name=>'OBRAS'
,p_link=>'f?p=&APP_ID.:258:&SESSION.::&DEBUG.:::'
,p_page_id=>258
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(132144607942981396)
,p_parent_id=>wwv_flow_imp.id(40070490222263645)
,p_short_name=>'SERVICIO TECNICO'
,p_long_name=>'SERVICIO TECNICO'
,p_link=>'f?p=&APP_ID.:446:&SESSION.::&DEBUG.:::'
,p_page_id=>446
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(132209637524841039)
,p_short_name=>unistr('CPAUTOCS - Autorizaci\00F3n de Ordenes de Compra')
,p_link=>'f?p=&APP_ID.:447:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>447
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(132530428998453508)
,p_parent_id=>wwv_flow_imp.id(208969651270360287)
,p_short_name=>unistr('SEGUIMIENTO PARA REPOSICI\00D3N DE PRODUCTOS')
,p_long_name=>unistr('SEGUIMIENTO PARA REPOSICI\00D3N DE PRODUCTOS')
,p_link=>'f?p=&APP_ID.:479:&SESSION.::&DEBUG.:::'
,p_page_id=>479
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(133095632515155717)
,p_short_name=>unistr('\00D3rdenes de Compra Local')
,p_link=>'f?p=&APP_ID.:450:&SESSION.::&DEBUG.:::'
,p_page_id=>450
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(133507833548827428)
,p_short_name=>'Motivo de Visitas'
,p_link=>'f?p=&APP_ID.:443:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>443
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(133557285942643724)
,p_short_name=>'CPARTICU'
,p_link=>'f?p=&APP_ID.:452:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>452
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(134064464791536186)
,p_short_name=>'Recepciones'
,p_link=>'f?p=&APP_ID.:449:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>449
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(134099005441207534)
,p_short_name=>'VALIDA_EMAIL'
,p_link=>'f?p=&APP_ID.:454:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>454
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(134148789294717251)
,p_short_name=>'Identificaciones'
,p_link=>'f?p=&APP_ID.:455:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>455
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(134201830828569366)
,p_short_name=>'RPLIQFOK'
,p_link=>'f?p=&APP_ID.:456:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>456
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(134436468103668657)
,p_parent_id=>wwv_flow_imp.id(133095632515155717)
,p_short_name=>unistr('Carga de \00D3rdenes de Compra Local')
,p_link=>'f?p=&APP_ID.:451:&SESSION.::&DEBUG.:::'
,p_page_id=>451
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(135649501442958453)
,p_parent_id=>wwv_flow_imp.id(132133518070039061)
,p_short_name=>'SEGUIMIENTO DE PROYECTOS'
,p_link=>'f?p=&APP_ID.:448:&SESSION.::&DEBUG.:::'
,p_page_id=>448
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(135698112552543046)
,p_parent_id=>wwv_flow_imp.id(112672995965234580)
,p_short_name=>'Ficha Tecnica'
,p_link=>'f?p=&APP_ID.:345:&SESSION.::&DEBUG.:::'
,p_page_id=>345
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(135698398535535752)
,p_parent_id=>wwv_flow_imp.id(112672995965234580)
,p_short_name=>'Seguimiento de Carneo'
,p_link=>'f?p=&APP_ID.:364:&SESSION.::&DEBUG.:::'
,p_page_id=>364
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(135699679287526860)
,p_parent_id=>wwv_flow_imp.id(112672995965234580)
,p_short_name=>'Solicitud Carneo - Despiece'
,p_link=>'f?p=&APP_ID.:365:&SESSION.::&DEBUG.:::'
,p_page_id=>364
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(135827463933791300)
,p_short_name=>'Pedidos de Compras'
,p_link=>'f?p=&APP_ID.:461:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>461
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(135867984050686537)
,p_short_name=>'RPROTV'
,p_link=>'f?p=&APP_ID.:462:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>462
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(136329085696654843)
,p_short_name=>'DIRECTORIO DE IMAGENES'
,p_link=>'f?p=&APP_ID.:464:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>464
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(137277222684554513)
,p_short_name=>'Seguimiento de Solicitud Suministros MKT'
,p_link=>'f?p=&APP_ID.:458:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>458
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(137724487760135272)
,p_short_name=>'Liquidacion de Fletes Tercerizados - RPLIQFLE'
,p_link=>'f?p=&APP_ID.:472:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>472
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(139910570626126388)
,p_short_name=>'CCINGEGR'
,p_link=>'f?p=&APP_ID.:467:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>467
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(140052968871596556)
,p_short_name=>'CCCSALDO'
,p_link=>'f?p=&APP_ID.:470:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>470
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(140619252474372783)
,p_short_name=>'Carga de Notas de Debito por importes - CCDEBITO'
,p_link=>'f?p=&APP_ID.:476:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>476
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(141211776210795120)
,p_short_name=>'Diferencias de Cambios'
,p_link=>'f?p=&APP_ID.:477:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>477
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(141394188995316456)
,p_parent_id=>wwv_flow_imp.id(208969651270360287)
,p_short_name=>unistr('PEDIDO DE REPOSICI\00D3N DE PRODUCTOS')
,p_link=>'f?p=&APP_ID.:474:&SESSION.::&DEBUG.:::'
,p_page_id=>474
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(141400414769253307)
,p_parent_id=>wwv_flow_imp.id(208969651270360287)
,p_short_name=>unistr('UBICACIONES DE ART\00CDCULOS EN DEP\00D3SITO')
,p_long_name=>unistr('UBICACIONES DE ART\00CDCULOS EN DEP\00D3SITO')
,p_link=>'f?p=&APP_ID.:475:&SESSION.::&DEBUG.:::'
,p_page_id=>475
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(141760029263155830)
,p_parent_id=>wwv_flow_imp.id(506006346959999041)
,p_short_name=>unistr('PEDIDOS PARA REPOSICI\00D3N DE PRODUCTOS')
,p_long_name=>unistr('Pedidos para Reposici\00F3n de Productos')
,p_link=>'f?p=&APP_ID.:479:&SESSION.::&DEBUG.:::'
,p_page_id=>479
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(141823539564091360)
,p_short_name=>'STCHKPRO'
,p_link=>'f?p=&APP_ID.:480:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>480
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(142974569970348162)
,p_short_name=>'Armado de Equipos - STARDETE'
,p_link=>'f?p=&APP_ID.:478:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>478
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(143116848599764318)
,p_parent_id=>wwv_flow_imp.id(506006346959999041)
,p_short_name=>'SEGUIMIENTO DE RETIRO DE PRODUCTOS Y SPP'
,p_long_name=>'Seguimiento de Retiro de Prod. y SPP - CAGESRPP'
,p_link=>'f?p=&APP_ID.:483:&SESSION.::&DEBUG.:::'
,p_page_id=>483
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(143705992398772257)
,p_short_name=>'CAOTSINT'
,p_link=>'f?p=&APP_ID.:484:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>484
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(144478446354786337)
,p_parent_id=>wwv_flow_imp.id(506006346959999041)
,p_short_name=>'Control de Pedidos de Repuestos - CAREPPED'
,p_link=>'f?p=&APP_ID.:482:&SESSION.::&DEBUG.:::'
,p_page_id=>482
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(145141746493090924)
,p_short_name=>'Listado para Inventario - STREXINV'
,p_link=>'f?p=&APP_ID.:487:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>487
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(145850932761730418)
,p_short_name=>'STRPEDEN'
,p_link=>'f?p=&APP_ID.:488:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>488
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(145855251705697963)
,p_short_name=>'STSOLAJS'
,p_link=>'f?p=&APP_ID.:491:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>491
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(145927634237246875)
,p_short_name=>unistr('Mantenimiento de Equivalencia entre Art\00EDculos - STEQUART')
,p_link=>'f?p=&APP_ID.:492:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>492
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(146032182149316391)
,p_short_name=>'STSOLAJS_BUSQ'
,p_link=>'f?p=&APP_ID.:490:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>490
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(147025981150953845)
,p_parent_id=>wwv_flow_imp.id(600354534298661390)
,p_short_name=>'COMISION POR LINEAS REPARADAS'
,p_long_name=>'Comision por Lineas Reparadas - CALINCOM'
,p_link=>'f?p=&APP_ID.:493:&SESSION.::&DEBUG.:::'
,p_page_id=>493
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(147029535968878074)
,p_parent_id=>wwv_flow_imp.id(600354534298661390)
,p_short_name=>'LINEA DE PRODUCTOS PARA SERVICIO TECNICO'
,p_long_name=>'LINEA DE PRODUCTOS PARA SERVICIO TECNICO'
,p_link=>'f?p=&APP_ID.:494:&SESSION.::&DEBUG.:::'
,p_page_id=>494
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(147525241798464170)
,p_short_name=>'Problemas y Soluciones - CAPROSOL'
,p_link=>'f?p=&APP_ID.:495:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>495
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(147852817172434204)
,p_short_name=>'AGENDA2'
,p_link=>'f?p=&APP_ID.:496:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>496
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(147905517336691595)
,p_short_name=>'AGENDA3'
,p_link=>'f?p=&APP_ID.:497:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>497
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(147916069127644224)
,p_short_name=>'Contactos de Proveedores - CMCONTAC'
,p_link=>'f?p=&APP_ID.:498:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>498
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(148337534379470982)
,p_short_name=>'CAOBJGPV'
,p_link=>'f?p=&APP_ID.:499:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>499
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(148350246582389892)
,p_parent_id=>wwv_flow_imp.id(600354534298661390)
,p_short_name=>'CARGA DE PROVEEDORES (STNGO-STA)'
,p_long_name=>'Carga de proveedores(STNGO-STA) - CAPROVEE'
,p_link=>'f?p=&APP_ID.:501:&SESSION.::&DEBUG.:::'
,p_page_id=>501
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(148415620418153122)
,p_short_name=>'PRUEBA TEMPORAL'
,p_link=>'f?p=&APP_ID.:503:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>503
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(148517920655793643)
,p_parent_id=>wwv_flow_imp.id(600354534298661390)
,p_short_name=>'MANO DE OBRA - STARTIMO'
,p_long_name=>'Mano de Obra - STARTIMO'
,p_link=>'f?p=&APP_ID.:504:&SESSION.::&DEBUG.:::'
,p_page_id=>504
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(148593185109567336)
,p_parent_id=>wwv_flow_imp.id(600354534298661390)
,p_short_name=>'MAESTRO DE MANO DE OBRA STA'
,p_long_name=>'MAESTRO DE MANO DE OBRA STA - CAMOSTAM'
,p_link=>'f?p=&APP_ID.:505:&SESSION.::&DEBUG.:::'
,p_page_id=>505
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(152743549351084109)
,p_short_name=>'Registro de Entregas de Ots en Garantia - CASALOTS'
,p_link=>'f?p=&APP_ID.:510:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>510
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(153175305256797531)
,p_parent_id=>wwv_flow_imp.id(506006346959999041)
,p_short_name=>'SEGUIMIENTO DE RETIRO DE PRODUCTOS'
,p_long_name=>'Seguimiento de Retiro de Productos - CASEGRP'
,p_link=>'f?p=&APP_ID.:511:&SESSION.::&DEBUG.:::'
,p_page_id=>511
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(153353158844852717)
,p_short_name=>unistr('Solicitud de Revisi\00F3n de Ots para SNC - CAVERSOL')
,p_link=>'f?p=&APP_ID.:500:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>500
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(153722070462264783)
,p_short_name=>'Resumen de Entrada - Salida - STRENSA'
,p_link=>'f?p=&APP_ID.:506:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>506
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(153723138666249570)
,p_short_name=>'STLOTES'
,p_link=>'f?p=&APP_ID.:507:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>507
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(153943952838284488)
,p_parent_id=>wwv_flow_imp.id(600354534298661390)
,p_short_name=>'Mano de Obra'
,p_long_name=>'Mano de Obra'
,p_link=>'f?p=&APP_ID.:509:&SESSION.::&DEBUG.:::'
,p_page_id=>509
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(154346307418458265)
,p_short_name=>'Mantenimiento de Entrada/Salida de Articulos - STENTSAL'
,p_link=>'f?p=&APP_ID.:512:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>512
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(154350892934401060)
,p_short_name=>'Bloques - Articulos STBLOART'
,p_link=>'f?p=&APP_ID.:513:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>513
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(154467708684865490)
,p_short_name=>'FVLISVAL'
,p_link=>'f?p=&APP_ID.:514:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>514
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(154855756534601623)
,p_short_name=>'Cabecera de Mantenimiento de Entrada/Salida de Articulos - STENTSAL'
,p_link=>'f?p=&APP_ID.:516:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>516
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(154902519458816956)
,p_short_name=>'Puestos'
,p_link=>'f?p=&APP_ID.:517:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>517
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(155358550278786501)
,p_parent_id=>wwv_flow_imp.id(600354534298661390)
,p_short_name=>'PERMISOS APROBACION SNC'
,p_long_name=>'PERMISOS APROBACION SNC - CAAPRSNC'
,p_link=>'f?p=&APP_ID.:515:&SESSION.::&DEBUG.:::'
,p_page_id=>515
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(155400971508186257)
,p_parent_id=>wwv_flow_imp.id(600354534298661390)
,p_short_name=>'CAMODSNC'
,p_link=>'f?p=&APP_ID.:520:&SESSION.::&DEBUG.:::'
,p_page_id=>520
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(156473778327463765)
,p_parent_id=>wwv_flow_imp.id(600354534298661390)
,p_short_name=>unistr('ASOCIACI\00D3N DE DEPARTAMENTO Y MOTIVOS SNC - CAMODSNC')
,p_long_name=>unistr('ASOCIACI\00D3N DE DEPARTAMENTO Y MOTIVOS SNC - CAMODSNC')
,p_link=>'f?p=&APP_ID.:521:&SESSION.::&DEBUG.:::'
,p_page_id=>521
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(156655951399096807)
,p_parent_id=>wwv_flow_imp.id(600354534298661390)
,p_short_name=>'MOTIVOS DE SNC'
,p_long_name=>'MOTIVOS DE SNC - CAMOTSNC'
,p_link=>'f?p=&APP_ID.:522:&SESSION.::&DEBUG.:::'
,p_page_id=>522
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(156697027637652632)
,p_short_name=>'Control de Estado de Solicitud No Conforme - CACESNC'
,p_link=>'f?p=&APP_ID.:523:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>523
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(157165511068880420)
,p_short_name=>'Canje de Puntos - STPROCAN'
,p_link=>'f?p=&APP_ID.:524:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>524
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(157584488347663377)
,p_short_name=>'COCROAUD'
,p_link=>'f?p=&APP_ID.:525:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>525
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(157617510645929654)
,p_parent_id=>wwv_flow_imp.id(439759746527084591)
,p_short_name=>'CRONOGRAMA DE AUDITORIA - COCROAUD'
,p_link=>'f?p=&APP_ID.:527:&SESSION.::&DEBUG.:::'
,p_page_id=>527
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(157821865261776950)
,p_short_name=>'INFORMES TICKETS'
,p_link=>'f?p=&APP_ID.:528:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>528
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(158250601584683429)
,p_short_name=>'Generar Varios Vales - STPROCAN'
,p_link=>'f?p=&APP_ID.:529:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>529
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(158292977555455474)
,p_short_name=>'Cargar Archivo STENTSAL'
,p_link=>'f?p=&APP_ID.:530:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>530
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(158446681029719354)
,p_parent_id=>wwv_flow_imp.id(40070490222263645)
,p_short_name=>'FUERZA DE VENTAS'
,p_long_name=>'FUERZA DE VENTAS'
,p_link=>'f?p=&APP_ID.:529:&SESSION.::&DEBUG.:::526'
,p_page_id=>526
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(158448198941714180)
,p_parent_id=>wwv_flow_imp.id(158446681029719354)
,p_short_name=>'MOVIMIENTOS'
,p_long_name=>'MOVIMIENTOS'
,p_link=>'f?p=&APP_ID.:531:&SESSION.::&DEBUG.:::531'
,p_page_id=>531
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(158448393870710818)
,p_parent_id=>wwv_flow_imp.id(158448198941714180)
,p_short_name=>'Mantenimiento de Promociones'
,p_long_name=>'Mantenimiento de Promociones'
,p_link=>'f?p=&APP_ID.:485:&SESSION.::&DEBUG.:::485'
,p_page_id=>485
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(159719740949185391)
,p_parent_id=>wwv_flow_imp.id(506006346959999041)
,p_short_name=>'RETIRO DE PRODUCTOS'
,p_long_name=>'RETIRO DE PRODUCTOS'
,p_link=>'f?p=&APP_ID.:532:&SESSION.::&DEBUG.:::'
,p_page_id=>532
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(160227435909293476)
,p_short_name=>unistr('Par\00E1metros Comisi\00F3n - CPH')
,p_link=>'f?p=&APP_ID.:534:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>534
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(160909730085807189)
,p_short_name=>'PROCESAR OT'
,p_link=>'f?p=&APP_ID.:535:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>535
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(162601698947582569)
,p_short_name=>'NOTA CREDITO'
,p_link=>'f?p=&APP_ID.:541:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>541
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(163566044847500084)
,p_short_name=>'Tracking Pedidos'
,p_link=>'f?p=&APP_ID.:545:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>545
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(163618195230239823)
,p_parent_id=>wwv_flow_imp.id(111399681645461489)
,p_short_name=>'Tracking de Pedidos'
,p_long_name=>'Tracking de Pedidos'
,p_link=>'f?p=&APP_ID.:545:&SESSION.::&DEBUG.:::'
,p_page_id=>545
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(164373840973574307)
,p_short_name=>'Busqueda de Pedidos - CPPRPECM'
,p_link=>'f?p=&APP_ID.:544:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>544
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(164461003185116000)
,p_short_name=>'ESTADO FACTURACION'
,p_link=>'f?p=&APP_ID.:547:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>547
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(170062466304456284)
,p_short_name=>'Facturas Electronicas - Reprocesos'
,p_link=>'f?p=&APP_ID.:543:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>543
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(171691579244307989)
,p_short_name=>'Seguimiento de Prestamos de Productos'
,p_link=>'f?p=&APP_ID.:546:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>546
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(173895074291675264)
,p_short_name=>'Informe de Comisiones'
,p_link=>'f?p=&APP_ID.:549:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>549
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(175441889933130450)
,p_parent_id=>wwv_flow_imp.id(995026845454324852)
,p_short_name=>'Recibo de liquidacion de Salarios'
,p_long_name=>'Recibo de liquidacion de Salarios - RHRPLSAL'
,p_link=>'f?p=&APP_ID.:789:&SESSION.::&DEBUG.:::'
,p_page_id=>789
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(175763697059559692)
,p_short_name=>'Listado de postulantes'
,p_link=>'f?p=&APP_ID.:555:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>555
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(175840213594585468)
,p_short_name=>'DESCARGA PDF'
,p_link=>'f?p=&APP_ID.:557:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>557
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(176485962856722942)
,p_short_name=>'VISUALIZAR  ARCHIVOS'
,p_link=>'f?p=&APP_ID.:552:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>552
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(178313512619588896)
,p_short_name=>'STGEINMO'
,p_link=>'f?p=&APP_ID.:556:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>556
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(179067115011152107)
,p_short_name=>'Generacion de Inventario Movil'
,p_link=>'f?p=&APP_ID.:559:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>559
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(179143229043484615)
,p_short_name=>unistr('Inventar\00EDo de Art\00EDculos')
,p_link=>'f?p=&APP_ID.:562:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>562
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(179493308234421421)
,p_short_name=>'Prueba_hector'
,p_link=>'f?p=&APP_ID.:564:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>564
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(182726455256395503)
,p_short_name=>'Usuario Inventario Movil'
,p_link=>'f?p=&APP_ID.:570:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>570
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(182732677624014915)
,p_short_name=>'Inventario Actual'
,p_link=>'f?p=&APP_ID.:572:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>572
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(183071155220522881)
,p_short_name=>'CAMOVOT'
,p_link=>'f?p=&APP_ID.:568:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>568
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(184628620611913076)
,p_short_name=>'Importar Puntos'
,p_link=>'f?p=&APP_ID.:569:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>569
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(185325419664236087)
,p_short_name=>unistr('Facturaci\00F3n Masiva')
,p_link=>'f?p=&APP_ID.:346:&SESSION.::&DEBUG.:::'
,p_page_id=>346
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(186540855227762393)
,p_short_name=>'Encuestas'
,p_link=>'f?p=&APP_ID.:576:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>576
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(187673945449283162)
,p_short_name=>'AGENDAMIENTOS'
,p_link=>'f?p=&APP_ID.:577:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>577
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(187781486558553757)
,p_parent_id=>wwv_flow_imp.id(600350367326651390)
,p_short_name=>'AGRUPACION COMISION VENDEDORES'
,p_long_name=>'AGRUPACION COMISION VENDEDORES'
,p_link=>'f?p=&APP_ID.:579:&SESSION.::&DEBUG.:::'
,p_page_id=>579
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(188547354182613082)
,p_parent_id=>wwv_flow_imp.id(158448198941714180)
,p_short_name=>'CALCULO DE COMISIONES - NP'
,p_long_name=>'CALCULO DE COMISIONES - NP'
,p_link=>'f?p=&APP_ID.:580:&SESSION.::&DEBUG.:::'
,p_page_id=>580
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(190027473377899507)
,p_parent_id=>wwv_flow_imp.id(995026845454324852)
,p_short_name=>unistr('Gesti\00F3n Solicitud de Ausentismos')
,p_long_name=>unistr('Gesti\00F3n Solicitud de Ausentismos')
,p_link=>'f?p=&APP_ID.:625:&SESSION.::&DEBUG.:::'
,p_page_id=>625
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(190736422415790354)
,p_short_name=>'MOTIVO DERIVACION POSTVTA'
,p_link=>'f?p=&APP_ID.:594:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>594
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(195142199342515808)
,p_parent_id=>wwv_flow_imp.id(600349762287649427)
,p_short_name=>'COMISIONES GENERADAS - NP'
,p_long_name=>'COMISIONES GENERADAS - NP'
,p_link=>'f?p=&APP_ID.:586:&SESSION.::&DEBUG.:::'
,p_page_id=>586
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(199537850263537650)
,p_parent_id=>wwv_flow_imp.id(506006346959999041)
,p_short_name=>'SEGUIMIENTO DE VISITAS AGENDADAS'
,p_link=>'f?p=&APP_ID.:596:&SESSION.::&DEBUG.:::'
,p_page_id=>596
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(201335577533040476)
,p_short_name=>'CAREPPED'
,p_link=>'f?p=&APP_ID.:598:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>598
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(204054504133703854)
,p_short_name=>'Autorizaciones de Ordenes de Pago - CPAUTPAT'
,p_link=>'f?p=&APP_ID.:601:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>601
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(204185912245514796)
,p_short_name=>'Precios Fijos'
,p_link=>'f?p=&APP_ID.:604:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>604
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(205483573754289041)
,p_short_name=>'RPPLATER'
,p_link=>'f?p=&APP_ID.:602:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>602
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(205903509076234419)
,p_short_name=>'Capacitaciones - Wango'
,p_link=>'f?p=&APP_ID.:603:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>603
);
wwv_flow_imp.component_end;
end;
/
begin
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.04.12'
,p_release=>'22.1.0'
,p_default_workspace_id=>2715162693355865
,p_default_application_id=>122
,p_default_id_offset=>0
,p_default_owner=>'INV'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(205918582741862753)
,p_short_name=>'Reparto de Terciario'
,p_link=>'f?p=&APP_ID.:607:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>607
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(206343658175937469)
,p_short_name=>'Crear Solicitud Capacitaciones Wango'
,p_link=>'f?p=&APP_ID.:609:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>609
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(206495942838634685)
,p_parent_id=>wwv_flow_imp.id(995026845454324852)
,p_short_name=>'Cuenta Corriente'
,p_long_name=>'Cuenta Corriente - wango'
,p_link=>'f?p=&APP_ID.:610:&SESSION.::&DEBUG.:::'
,p_page_id=>610
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(207083494991923114)
,p_short_name=>'Carga de Facturas'
,p_link=>'f?p=&APP_ID.:612:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>612
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(207278926047271628)
,p_short_name=>'pagina alerta'
,p_link=>'f?p=&APP_ID.:1600:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>1600
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(208883713848142090)
,p_short_name=>'Reporte de derivaciones'
,p_link=>'f?p=&APP_ID.:621:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>621
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(208969651270360287)
,p_parent_id=>wwv_flow_imp.id(112678623667398670)
,p_short_name=>'MOVIMIENTOS'
,p_link=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::'
,p_page_id=>1
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(209212578706495984)
,p_parent_id=>wwv_flow_imp.id(208969651270360287)
,p_short_name=>unistr('NOTAS DE ENV\00CDO')
,p_link=>'f?p=&APP_ID.:323:&SESSION.::&DEBUG.:::'
,p_page_id=>323
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(209954693931678017)
,p_parent_id=>wwv_flow_imp.id(108953821174031380)
,p_short_name=>'NOTAS DE ENVIOS PENDIENTES - STENVPE'
,p_link=>'f?p=&APP_ID.:339:&SESSION.::&DEBUG.:::'
,p_page_id=>339
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(210015461800308726)
,p_parent_id=>wwv_flow_imp.id(208969651270360287)
,p_short_name=>'CONSULTA DE STOCK CON COSTOS - STCOSOPN'
,p_link=>'f?p=&APP_ID.:251:&SESSION.::&DEBUG.:::'
,p_page_id=>251
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(210466980401685959)
,p_short_name=>'Carga de Notas de Credito'
,p_link=>'f?p=&APP_ID.:616:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>616
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(210543419381124503)
,p_short_name=>unistr('Carga de Notas de Cr\00E9dito')
,p_link=>'f?p=&APP_ID.:622:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>622
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(210700483705916325)
,p_short_name=>'Reporte Detalles - STOCONS'
,p_link=>'f?p=&APP_ID.:623:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>623
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(212817758425359569)
,p_parent_id=>wwv_flow_imp.id(439759746527084591)
,p_short_name=>'CRONOGRAMA DE AUDITORIA'
,p_link=>'f?p=&APP_ID.:525:&SESSION.::&DEBUG.:::'
,p_page_id=>525
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(212949933044822238)
,p_parent_id=>wwv_flow_imp.id(111399681645461489)
,p_short_name=>'Cierre de Pedidos de Ventas'
,p_link=>'f?p=&APP_ID.:519:&SESSION.::&DEBUG.:::'
,p_page_id=>519
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(213290624562529665)
,p_parent_id=>wwv_flow_imp.id(112679975586408979)
,p_short_name=>unistr('Remisi\00F3n por Reposici\00F3n')
,p_link=>'f?p=&APP_ID.:624:&SESSION.::&DEBUG.:::'
,p_page_id=>624
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(213395295175500842)
,p_parent_id=>wwv_flow_imp.id(112679975586408979)
,p_short_name=>unistr('Remisi\00F3n de Facturas')
,p_link=>'f?p=&APP_ID.:422:&SESSION.::&DEBUG.:::'
,p_page_id=>422
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(214098875329002621)
,p_short_name=>unistr('Gesti\00F3n Solicitud de Ausentismos')
,p_link=>'f?p=&APP_ID.:625:&SESSION.::&DEBUG.:::'
,p_page_id=>625
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(214106012289931548)
,p_short_name=>'Grupos de Preguntas'
,p_link=>'f?p=&APP_ID.:627:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>627
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(215121595021333159)
,p_short_name=>'Gestion de la encuesta'
,p_link=>'f?p=&APP_ID.:629:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>629
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(215138211316132820)
,p_short_name=>'Gestion de Encuestas'
,p_link=>'f?p=&APP_ID.:630:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>630
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(215229970443899856)
,p_short_name=>'Mantenimiento de encuestas'
,p_link=>'f?p=&APP_ID.:631:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>631
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(216423775524088679)
,p_short_name=>'Mantenimiento de Preguntas de Clima'
,p_link=>'f?p=&APP_ID.:633:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>633
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(216926963487153733)
,p_short_name=>'RH BENEFICIO LINEA CREDITO'
,p_link=>'f?p=&APP_ID.:634:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>634
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(217104593988406805)
,p_short_name=>'Encuesta Clima Laboral'
,p_link=>'f?p=&APP_ID.:639:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>639
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(217147422957758952)
,p_short_name=>'Seleccion de Listado de Encuestas'
,p_link=>'f?p=&APP_ID.:640:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>640
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(217520691070175906)
,p_short_name=>'Indicadores de Encuestas'
,p_link=>'f?p=&APP_ID.:635:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>635
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(217642445143828460)
,p_parent_id=>wwv_flow_imp.id(112679975586408979)
,p_short_name=>'Listado de Ordenes de trabajo'
,p_link=>'f?p=&APP_ID.:637:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>637
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(219651925392308524)
,p_short_name=>'Impresion de Etiquetas - STETIQUE'
,p_link=>'f?p=&APP_ID.:641:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>641
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(220086825646937588)
,p_short_name=>unistr('Reporte de Participaci\00F3n en Encuestas')
,p_link=>'f?p=&APP_ID.:643:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>643
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(220266964242335527)
,p_short_name=>'Customer Experience'
,p_link=>'f?p=&APP_ID.:648:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>648
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(387944522567836823)
,p_short_name=>'TUR - Llamador General UP'
,p_link=>'f?p=&APP_ID.:656:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>656
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(439759345163078308)
,p_parent_id=>wwv_flow_imp.id(40070490222263645)
,p_short_name=>'AUDITORIA'
,p_link=>'f?p=&APP_ID.:527:&SESSION.::&DEBUG.:::'
,p_page_id=>527
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(439759746527084591)
,p_parent_id=>wwv_flow_imp.id(439759345163078308)
,p_short_name=>'MOVIMIENTOS'
,p_link=>'f?p=&APP_ID.:527:&SESSION.::&DEBUG.:::'
,p_page_id=>527
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(506006346959999041)
,p_parent_id=>wwv_flow_imp.id(132144607942981396)
,p_short_name=>'MOVIMIENTOS'
,p_long_name=>'MOVIMIENTOS'
,p_link=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::'
,p_page_id=>1
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(554770828440874260)
,p_parent_id=>wwv_flow_imp.id(40070490222263645)
,p_short_name=>'CUENTAS A PAGAR'
,p_long_name=>'CUENTAS A PAGAR'
,p_link=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::'
,p_page_id=>1
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(554771007486876959)
,p_parent_id=>wwv_flow_imp.id(554770828440874260)
,p_short_name=>'DEFINICIONES'
,p_long_name=>'DEFINICIONES'
,p_link=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::'
,p_page_id=>1
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(554771519022889048)
,p_parent_id=>wwv_flow_imp.id(554771007486876959)
,p_short_name=>'Tarifario de Viaticos'
,p_long_name=>'Tarifario de Viaticos'
,p_link=>'f?p=&APP_ID.:665:&SESSION.::&DEBUG.:::'
,p_page_id=>665
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(557364466166219251)
,p_parent_id=>wwv_flow_imp.id(158448198941714180)
,p_short_name=>'Metas Vendedores NP'
,p_long_name=>'Metas Vendedores NP'
,p_link=>'f?p=&APP_ID.:716:&SESSION.::&DEBUG.:::'
,p_page_id=>716
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(593467393286348272)
,p_parent_id=>wwv_flow_imp.id(208969651270360287)
,p_short_name=>'CONSULTA DE GARANTIA DE PRODUCTOS'
,p_long_name=>'CONSULTA DE GARANTIA DE PRODUCTOS'
,p_link=>'f?p=&APP_ID.:243:&SESSION.::&DEBUG.:::'
,p_page_id=>243
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(600330075003394049)
,p_parent_id=>wwv_flow_imp.id(554770828440874260)
,p_short_name=>'MOVIMIENTOS'
,p_long_name=>'MOVIMIENTOS'
,p_link=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::'
,p_page_id=>1
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(600330297496397797)
,p_parent_id=>wwv_flow_imp.id(600330075003394049)
,p_short_name=>'RENDICION DE VIATICOS'
,p_long_name=>'RENDICION DE VIATICOS'
,p_link=>'f?p=&APP_ID.:698:&SESSION.::&DEBUG.:::'
,p_page_id=>698
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(600349550025647714)
,p_parent_id=>wwv_flow_imp.id(554770828440874260)
,p_short_name=>'REPORTES'
,p_long_name=>'REPORTES'
,p_link=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::'
,p_page_id=>1
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(600349762287649427)
,p_parent_id=>wwv_flow_imp.id(158446681029719354)
,p_short_name=>'REPORTES'
,p_long_name=>'REPORTES'
,p_link=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::'
,p_page_id=>1
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(600350367326651390)
,p_parent_id=>wwv_flow_imp.id(158446681029719354)
,p_short_name=>'DEFINICIONES'
,p_long_name=>'DEFINICIONES'
,p_link=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::'
,p_page_id=>1
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(600350668755653069)
,p_parent_id=>wwv_flow_imp.id(112672511797230678)
,p_short_name=>'REPORTES'
,p_long_name=>'REPORTES'
,p_link=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::'
,p_page_id=>1
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(600353568996658234)
,p_parent_id=>wwv_flow_imp.id(112672511797230678)
,p_short_name=>'DEFINICIONES'
,p_long_name=>'DEFINICIONES'
,p_link=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::'
,p_page_id=>1
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(600354349809659598)
,p_parent_id=>wwv_flow_imp.id(132144607942981396)
,p_short_name=>'INFORMES'
,p_long_name=>'INFORMES'
,p_link=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::'
,p_page_id=>1
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(600354534298661390)
,p_parent_id=>wwv_flow_imp.id(132144607942981396)
,p_short_name=>'DEFINICIONES'
,p_long_name=>'DEFINICIONES'
,p_link=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::'
,p_page_id=>1
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(600354733158663068)
,p_parent_id=>wwv_flow_imp.id(132133394979043211)
,p_short_name=>'REPORTES'
,p_long_name=>'REPORTES'
,p_link=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::'
,p_page_id=>1
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(600355523959666770)
,p_parent_id=>wwv_flow_imp.id(132133394979043211)
,p_short_name=>'DEFINICIONES'
,p_long_name=>'DEFINICIONES'
,p_link=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::'
,p_page_id=>1
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(600355913441669628)
,p_parent_id=>wwv_flow_imp.id(112678623667398670)
,p_short_name=>'DEFINICIONES'
,p_long_name=>'DEFINICIONES'
,p_link=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::'
,p_page_id=>1
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(600356776073671045)
,p_parent_id=>wwv_flow_imp.id(111399337598456703)
,p_short_name=>'REPORTES'
,p_long_name=>'REPORTES'
,p_link=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::'
,p_page_id=>1
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(600357581091672410)
,p_parent_id=>wwv_flow_imp.id(111399337598456703)
,p_short_name=>'DEFINICIONES'
,p_long_name=>'DEFINICIONES'
,p_link=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::'
,p_page_id=>1
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(618082049906514358)
,p_parent_id=>wwv_flow_imp.id(600349550025647714)
,p_short_name=>'INFORME DE VIATICOS - RENDICIONES'
,p_long_name=>'INFORME DE VIATICOS - RENDICIONES'
,p_link=>'f?p=&APP_ID.:740:&SESSION.::&DEBUG.:::'
,p_page_id=>740
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(629854210773203194)
,p_parent_id=>wwv_flow_imp.id(640684646529156314)
,p_short_name=>unistr('CONSULTA DE CLIENTES POR N\00DAMERO DE DOCUMENTO')
,p_long_name=>unistr('CONSULTA DE CLIENTES POR N\00DAMERO DE DOCUMENTO')
,p_link=>'f?p=&APP_ID.:599:&SESSION.::&DEBUG.:::'
,p_page_id=>599
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(630559012451115346)
,p_parent_id=>wwv_flow_imp.id(506006346959999041)
,p_short_name=>'SEGUIMIENTO VISITAS AGENDADAS'
,p_long_name=>'SEGUIMIENTO VISITAS AGENDADAS'
,p_link=>'f?p=&APP_ID.:596:&SESSION.::&DEBUG.:::'
,p_page_id=>596
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(640684322062152258)
,p_parent_id=>wwv_flow_imp.id(40070490222263645)
,p_short_name=>'CUENTAS A COBRAR'
,p_long_name=>'CUENTAS A COBRAR'
,p_link=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::'
,p_page_id=>1
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(640684646529156314)
,p_parent_id=>wwv_flow_imp.id(640684322062152258)
,p_short_name=>'DEFINICIONES'
,p_long_name=>'DEFINICIONES'
,p_link=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::'
,p_page_id=>1
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(640686231538162091)
,p_parent_id=>wwv_flow_imp.id(640684646529156314)
,p_short_name=>'DATOS DE CLIENTES'
,p_long_name=>'DATOS DE CLIENTES - CCCLIENT'
,p_link=>'f?p=&APP_ID.:162:&SESSION.::&DEBUG.:::'
,p_page_id=>162
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(640694084335203213)
,p_parent_id=>wwv_flow_imp.id(640684646529156314)
,p_short_name=>'MODIFICACION DATOS DE CLIENTES'
,p_long_name=>'MODIFICACION DATOS DE CLIENTES'
,p_link=>'f?p=&APP_ID.:618:&SESSION.::&DEBUG.:::'
,p_page_id=>618
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(640695553325212868)
,p_parent_id=>wwv_flow_imp.id(640684646529156314)
,p_short_name=>'CARGA RAPIDA DE CLIENTES'
,p_long_name=>'CARGA RAPIDA DE CLIENTES'
,p_link=>'f?p=&APP_ID.:357:&SESSION.::&DEBUG.:::'
,p_page_id=>357
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(640715063116338213)
,p_parent_id=>wwv_flow_imp.id(506006346959999041)
,p_short_name=>'GESTION DE VISITAS'
,p_long_name=>'GESTION DE VISITAS - CAGESVIS'
,p_link=>'f?p=&APP_ID.:437:&SESSION.::&DEBUG.:::'
,p_page_id=>437
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(641579133066574019)
,p_parent_id=>wwv_flow_imp.id(208969651270360287)
,p_short_name=>'CONSULTA DE COSTOS HISTORICO'
,p_long_name=>'CONSULTA DE COSTOS HISTORICO'
,p_link=>'f?p=&APP_ID.:615:&SESSION.::&DEBUG.:::'
,p_page_id=>615
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(641583598949603259)
,p_parent_id=>wwv_flow_imp.id(506006346959999041)
,p_short_name=>'AGENDA DE VISITA'
,p_long_name=>'AGENDA DE VISITA  - CAVISPRO'
,p_link=>'f?p=&APP_ID.:329:&SESSION.::&DEBUG.:::'
,p_page_id=>329
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(641597038253645671)
,p_parent_id=>wwv_flow_imp.id(640684322062152258)
,p_short_name=>'MOVIMIENTOS'
,p_long_name=>'MOVIMIENTOS'
,p_link=>'f?p=&APP_ID.:599:&SESSION.::&DEBUG.:::'
,p_page_id=>599
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(641603394448670765)
,p_parent_id=>wwv_flow_imp.id(40070490222263645)
,p_short_name=>'EXPERIENCIA DEL CLIENTE'
,p_long_name=>'EXPERIENCIA DEL CLIENTE'
,p_link=>'f?p=&APP_ID.:321:&SESSION.::&DEBUG.:::'
,p_page_id=>321
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(641603826563673856)
,p_parent_id=>wwv_flow_imp.id(641603394448670765)
,p_short_name=>'MOVIMIENTOS'
,p_long_name=>'MOVIMIENTOS'
,p_link=>'f?p=&APP_ID.:321:&SESSION.::&DEBUG.:::'
,p_page_id=>321
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(641699627914130186)
,p_parent_id=>wwv_flow_imp.id(40070490222263645)
,p_short_name=>'REPARTOS'
,p_long_name=>'REPARTOS'
,p_link=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::'
,p_page_id=>1
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(641701323263138622)
,p_parent_id=>wwv_flow_imp.id(641699627914130186)
,p_short_name=>'MOVIMIENTOS'
,p_long_name=>'MOVIMIENTOS'
,p_link=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::'
,p_page_id=>1
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(641703800093143058)
,p_parent_id=>wwv_flow_imp.id(641701323263138622)
,p_short_name=>'PLANILLA DE RETIRO DE MERCADERIAS'
,p_long_name=>'PLANILLA DE RETIRO DE MERCADERIAS'
,p_link=>'f?p=&APP_ID.:409:&SESSION.::&DEBUG.:::'
,p_page_id=>409
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(641945810947928150)
,p_parent_id=>wwv_flow_imp.id(208969651270360287)
,p_short_name=>unistr('CONSULTA DE GARANT\00CDA DE PRODUCTOS')
,p_long_name=>unistr('CONSULTA DE GARANT\00CDA DE PRODUCTOS - STCONGAR')
,p_link=>'f?p=&APP_ID.:243:&SESSION.::&DEBUG.:::'
,p_page_id=>243
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(643036853658822620)
,p_parent_id=>wwv_flow_imp.id(506006346959999041)
,p_short_name=>'GESTION DE ENTREGAS'
,p_long_name=>'GESTION DE ENTREGAS - CAGEVISP'
,p_link=>'f?p=&APP_ID.:318:&SESSION.::&DEBUG.:::'
,p_page_id=>318
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(646966318763564499)
,p_parent_id=>wwv_flow_imp.id(111399681645461489)
,p_short_name=>unistr('ANULACI\00D3N DE FACTURAS')
,p_long_name=>'ANULACION DE FACTURAS'
,p_link=>'f?p=&APP_ID.:24:&SESSION.::&DEBUG.:::'
,p_page_id=>24
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(704247824996341527)
,p_parent_id=>wwv_flow_imp.id(112672995965234580)
,p_short_name=>'PEDIDO DE REPUESTOS STA'
,p_long_name=>'Pedido de Repuesto'
,p_link=>'f?p=&APP_ID.:298:&SESSION.::&DEBUG.:::'
,p_page_id=>298
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(716476614927059101)
,p_parent_id=>wwv_flow_imp.id(600354534298661390)
,p_short_name=>'ALTA DE TECNICOS'
,p_long_name=>'ALTA DE TECNICOS'
,p_link=>'f?p=&APP_ID.:235:&SESSION.::&DEBUG.:::'
,p_page_id=>235
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(732571658398861207)
,p_parent_id=>wwv_flow_imp.id(600349762287649427)
,p_short_name=>'AGRUPACION DE VENDEDORES POR SUPERVISOR'
,p_long_name=>'AGRUPACION DE VENDEDORES POR SUPERVISOR'
,p_link=>'f?p=&APP_ID.:757:&SESSION.::&DEBUG.:::'
,p_page_id=>757
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(738506519739283672)
,p_parent_id=>wwv_flow_imp.id(600354534298661390)
,p_short_name=>'AGENTES POR VENDEDORES'
,p_long_name=>'AGENTES POR VENDEDORES'
,p_link=>'f?p=&APP_ID.:314:&SESSION.::&DEBUG.:::'
,p_page_id=>314
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(744099913184249859)
,p_parent_id=>wwv_flow_imp.id(506006346959999041)
,p_short_name=>'GESTION DE CONTROL DE CALIDAD'
,p_long_name=>'GESTION DE CONTROL DE CALIDAD'
,p_link=>'f?p=&APP_ID.:721:&SESSION.::&DEBUG.:::'
,p_page_id=>721
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(744102168228260138)
,p_parent_id=>wwv_flow_imp.id(600354349809659598)
,p_short_name=>'CONTROL DE CALIDAD PSVTA.'
,p_long_name=>'CONTROL DE CALIDAD PSVTA.'
,p_link=>'f?p=&APP_ID.:735:&SESSION.::&DEBUG.:::'
,p_page_id=>735
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(819937946727933678)
,p_parent_id=>wwv_flow_imp.id(112672995965234580)
,p_short_name=>unistr('Notas de Env\00EDo Pendientes STNGO')
,p_long_name=>unistr('Notas de Env\00EDo Pendientes STNGO')
,p_link=>'f?p=&APP_ID.:651:&SESSION.::&DEBUG.:::'
,p_page_id=>651
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(844695831130646606)
,p_parent_id=>wwv_flow_imp.id(506006346959999041)
,p_short_name=>'SOLICITUD DE ASISTENCIA WANGO'
,p_long_name=>'SOLICITUD DE ASISTENCIA WANGO'
,p_link=>'f?p=&APP_ID.:606:&SESSION.::&DEBUG.:::'
,p_page_id=>606
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(850689922228554177)
,p_parent_id=>wwv_flow_imp.id(554771007486876959)
,p_short_name=>'PROVEEDORES'
,p_long_name=>'PROVEEDORES'
,p_link=>'f?p=&APP_ID.:217:&SESSION.::&DEBUG.:::'
,p_page_id=>217
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(855404979235992992)
,p_parent_id=>wwv_flow_imp.id(506006346959999041)
,p_short_name=>'GESTION DE VISITAS - CAGESVIS'
,p_long_name=>'GESTION DE VISITAS'
,p_link=>'f?p=&APP_ID.:434:&SESSION.::&DEBUG.:::'
,p_page_id=>434
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(995026845454324852)
,p_parent_id=>wwv_flow_imp.id(112685374880489975)
,p_short_name=>'MOVIMIENTOS'
,p_link=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::'
,p_page_id=>1
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(995042094277425504)
,p_parent_id=>wwv_flow_imp.id(995026845454324852)
,p_short_name=>'Listado de Embargos'
,p_long_name=>'Listado de Embargos'
,p_link=>'f?p=&APP_ID.:619:&SESSION.::&DEBUG.:::'
,p_page_id=>619
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(1012421654307797369)
,p_parent_id=>wwv_flow_imp.id(600354349809659598)
,p_short_name=>'Existencia de OTs'
,p_long_name=>'Existencia de Ordenes de Trabajo'
,p_link=>'f?p=&APP_ID.:820:&SESSION.::&DEBUG.:::'
,p_page_id=>820
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(1019510821217828975)
,p_parent_id=>wwv_flow_imp.id(506006346959999041)
,p_short_name=>'PANEL GENERAL DE TECNICOS'
,p_long_name=>'Panel General de Tecnicos - CAPANTEC'
,p_link=>'f?p=&APP_ID.:308:&SESSION.::&DEBUG.:::'
,p_page_id=>308
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(1028782106187737492)
,p_short_name=>'Log Adaia'
,p_link=>'f?p=&APP_ID.:589:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>589
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(1049557783635177619)
,p_parent_id=>wwv_flow_imp.id(506006346959999041)
,p_short_name=>'RENDICION DE OTS'
,p_long_name=>'RENDICION DE OTS'
,p_link=>'f?p=&APP_ID.:336:&SESSION.::&DEBUG.:::'
,p_page_id=>336
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(386201815090503194)
,p_parent_id=>wwv_flow_imp.id(76990180135636333)
,p_option_sequence=>11
,p_short_name=>'Pedidos de Repuesto STNGO'
,p_link=>'f?p=&APP_ID.:322:&SESSION.::&DEBUG.:::'
,p_page_id=>322
);
wwv_flow_imp.component_end;
end;
/
