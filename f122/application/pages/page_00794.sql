prompt --application/pages/page_00794
begin
--   Manifest
--     PAGE: 00794
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.04.12'
,p_release=>'22.1.0'
,p_default_workspace_id=>2715162693355865
,p_default_application_id=>122
,p_default_id_offset=>0
,p_default_owner=>'INV'
);
wwv_flow_imp_page.create_page(
 p_id=>794
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Seguimiento_derivaciones'
,p_alias=>'SEGUIMIENTO-DERIVACIONES'
,p_step_title=>'Seguimiento_derivaciones'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* ',
'  $("t-HeroRegion-icon").click(function(){',
'  alert("The paragraph was clicked.");',
'});',
' ',
'',
'function setea_region() { ',
'            $("#r_datos_cliente").find("button.t-Button--hideShow").eq(0).click();    ',
'   }',
' ',
'*/',
' ///$(".s-g-row a").attr("target", "_blank");'))
,p_css_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
''))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  ',
'     .t-Body-contentInner {    ',
'       /* background-image:  linear-gradient(315deg, #294d91, #232f44 );*/ ',
'        /*background-image: linear-gradient(  #e2ecff 0%, #d7e5fa 45%, #b8d2fa  100%);*/',
'                background-color: #F1EDFF;',
'                background-image: linear-gradient(180deg, #d5e3ec 0%, #c3d6eb 50%, #5a7aaa 100%);',
' ',
'         } ',
'    .t-Region .t-Region-body{',
'            background: #f7f5f5;    ',
'            border-radius: 0.5rem;}',
'',
'     .t-Form-fieldContainer--floatingLabel .t-Form-inputContainer .apex-item-display-only {',
'           /* background-color: #D0EAF3;*/',
'            color:darkblue;',
'            border-color:#D8E5E9;',
'            border-style: solid;/*outset;*/',
'            border-radius: 0.5rem;',
'            box-shadow: inset 20px 20px 60px #ececec,/* #dafded*/',
'		                inset -20px -20px 60px #ffffff;',
'        }',
'        #r_datos_cliente, #R211781588883825112{',
'            /*box-shadow: #0e0370 0px 5px 15px; */',
'            border-color: #4e83c0;/* #AFA8BA;*/',
'            border-width: 1px;',
'            border-style: solid;/*outset;*/',
'',
'        }',
'',
'    .t-Form-fieldContainer--floatingLabel .t-Form-label {',
'        color:darkblue;/* #2C6676;  */',
'        font-weight: bold;',
'        ',
'    }',
'    ',
'    #B243582162522819309, #btn{',
'             border: 1px solid yellow;',
'            background: linear-gradient(0deg, #003a85 30%, #7ea3db 100%);',
'            color: #ffef00 ;            ',
'            margin-top:20rem;',
'    }',
'',
'',
'    #R199903941866511150{        ',
'                        background: #E0EAFC;  /* fallback for old browsers */',
'                        background: -webkit-linear-gradient(to bottom,  #6e87be,#2980B9);  /* Chrome 10-25, Safari 5.1-6 */',
'                        background: linear-gradient(to bottom,   #fbffd7,#2980B9); /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */',
'                        }',
'',
'                .at-card:hover > .card-header {             ',
'                    transform: scale(1.15);',
'                    border-radius: 20px;     ',
'                }',
'                .at-card:hover {',
'                        box-shadow: 0px 0px 30px 1px #3b2529;',
'                }',
' ',
'',
'/*----------------RESUMEN-----------------*/',
' .s-g-container{margin:0;',
'                padding:0;          ',
'                }',
'',
' #RES-TEXT',
' {  font-size:12px; ',
'    margin:0;',
'    /*text-align: center;*/',
'    }',
'',
'  #RES-TEXT-TIT',
' {color:#000885; font-weight: bold;}',
' ',
'/*----------------------*/',
'@keyframes slide {',
'                    ',
'                    from {left: -220px;}',
'                    to {left: 0px;}',
'}',
'',
'@keyframes mymove {',
'                    from {top: 220px;}',
'                    to {top: 0px;}',
'}',
'   #P121_CALIFIC_STAR_LABEL{',
'                color: #000885;',
'                font-weight: bold;',
'   }',
'    #icon-star {',
'                color: #ffb01f;',
'                 font-size: 1.5em;  ',
'                position: relative;',
'                animation: slide 2s ;',
'                /*animation-fill-mode: forwards;*/ ',
'                 } ',
'       ',
'    ',
'    #icon-star-chk {',
'                color:#dfd5c2;',
'                 font-size: 1.5em;                 ',
'                position: relative;',
'                animation: slide 2s ;',
'                /*animation-fill-mode: forwards; */',
'                 } ',
'           ',
'',
'',
'',
'    .t-HeroRegion   , #R211781588883825112 ,  #P121_CALIFICACION_LABEL ,    ',
'    .t-Form-fieldContainer--floatingLabel .t-Form-inputContainer .apex-item-display-only{',
'        color:  black; ',
'        font-weight: bold;',
'    }',
'',
'    .t-HeroRegion-title {',
'        color:#042f87;',
'        FONT-WEIGHT: bold;    ',
'    }',
'  ',
'',
'.javainhand {',
'   float: right;',
'    height: -22px;',
'     margin-right: 1%;',
'     padding: 10px; ',
'    position: relative;',
'    width: 24%;',
'    ',
'}',
'.circle-tile {',
'    margin-bottom: 15px;',
'    text-align: center;',
'}',
'.circle-tile-heading {',
'    border: 2px solid #ffffffbb;',
'    border-radius: 100%;',
'    color: #FFFFFF;',
'    height: 80px;',
'    margin: 0 auto -40px;',
'    position: relative;',
'    transition: all 0.3s ease-in-out 0s;',
'    width: 80px;',
'}',
'',
'.circle-tile-heading:hover{',
'                transform: scale(1.1); ',
'}  ',
'',
'.circle-tile-content:hover  {    ',
'                box-shadow: 0px 0px 30px 1px #412026;',
'} ',
'',
'',
'.circle-tile-heading .fa {',
'    line-height: 80px;',
'}',
'.circle-tile-content {',
'    padding-top: 50px;',
'       border-radius: 5px;',
'    margin: 5px;',
'}',
'.circle-tile-description {',
'    font-weight: 700;',
'    line-height: 1;',
'}',
'.circle-tile-number {',
'    text-transform: capitalize;',
'    font-size: 20px;',
'     padding: 5px 0 15px; ',
'} ',
'',
'',
'.circle-tile-footer {',
'    background-color: rgba(0, 0, 0, 0.1);',
'    color: rgba(255, 255, 255, 0.5);',
'    display: block;',
'    padding: 5px;',
'    transition: all 0.3s ease-in-out 0s;',
'}',
' ',
' ',
'',
'.circle-tile-footer:hover {',
'    background-color: #00000033;',
'    color: #cbf7ffbb;',
'    text-decoration: none;',
'}',
'/*',
'.circle-tile-heading.dark-blue:hover {',
'    background-color: #2E4154;',
'}',
'.circle-tile-heading.green:hover {',
'    background-color: #138F77;',
'}',
'.circle-tile-heading.orange:hover {',
'    background-color: #DA8C10;',
'}',
'.circle-tile-heading.blue:hover {',
'    background-color: #2473A6;',
'}',
'.circle-tile-heading.red:hover {',
'    background-color: #B71C1C;',
'}',
'.circle-tile-heading.purple:hover {',
'    background-color: #7F3D9B;',
'}',
'*/',
'.tile-img {',
'    text-shadow: 2px 2px 3px rgba(0, 0, 0, 0.9);',
'}',
'',
'.dark-blue {',
'    background-color: #33ce95;',
'    background-image: linear-gradient(180deg, #5ce6b3 0%, #20228abd 100%);',
'',
'}',
'',
'.light-gray {background-color: #415f79;',
'background-image: linear-gradient(  #66a8a0 ,#20228abd , #1190ff);',
'',
'}',
'',
'.light-green {background-color: #00e46a;',
'background-image: linear-gradient(  #b3ffd0,#187c47,#08b91f/* #23c574*/ );',
'}',
'.green {background-color: #00ff77;',
'background-image: linear-gradient( #c2ff7d 0%, #008521  100%);',
'',
'}',
'.blue {',
'    background-color: #85dcf5;',
'background-image: linear-gradient(225deg, #85dcf5 0%, #0d85e2 50%, #020c5a 100%);',
'',
'}',
'.orange {background-color:  #c48865 ;',
'background-image: linear-gradient(   #fce4a4, #ff5d2b ,#fdd056 ); ',
'',
'}',
'.red {background-color: #ff6c6c;',
'background-image: linear-gradient(0deg, #FF6125 0%, #f7f468 100%);',
'',
'}',
'.purple { background-color: #D9AFD9;',
'background-image: linear-gradient(0deg, #900094 0%, #E8D5B5 100%);',
'',
'}',
'',
'.gray {background-color: #698ab1;',
'background-image: linear-gradient(#FFFADE ,#683f7a, #a34f9b); ',
'}',
'',
'.dark-gray {background-color: #515f79;',
'background-image: linear-gradient(135deg, #515f79 0%, #042f87 100%);',
'',
'}',
'',
'.yellow {background-color: #92de00;',
'background-image: linear-gradient(45deg, #92de00 0%, #f1ff09 100%);',
'',
'}',
'',
'.circle-tile-footer {',
'    background-color: rgba(247, 250, 244, 0.1);',
'    color: rgba(255, 255, 255, 1.5);',
'    display: block;',
'    padding: 5px;',
'    transition: all 0.3s ease-in-out 0s;',
'}',
'',
'',
'',
'',
'',
'.a-IRR-headerLink {',
'    margin: 0;',
'    font-size: inherit;',
'    line-height: inherit;',
'    font-weight: inherit;',
'    flex-grow: 1;',
'    flex-shrink: 1;',
'    flex-basis: auto;',
'    color: #FFED00;',
'    background: #003A85;',
'}',
'',
'.apexcharts-series path:nth-child(1) {',
'    fill: #FF0000 !important; /* Primer segmento */',
'}',
'.apexcharts-series path:nth-child(2) {',
'    fill: #00FF00 !important; /* Segundo segmento */',
'}',
'',
'',
'',
'#ID_DEL_REPORTE .a-IRR-tableContainer {',
'    overflow: hidden;',
'}',
'',
' ',
'',
'#P794_PROMEDIO {',
'    font-size: 70px !important; ',
'    background: #eeeeee ;//!important;',
'    font-weight: bold !important;',
'    margin-top: 50px !important;',
'    padding: 50px !important;',
'    background-color: transparent;',
'    border: none;',
'}',
'',
'#P794_PROMEDIO_LABEL {',
'    font-size: 20px !important;',
'    background: darkblue !important; /* Fondo azul */',
'    color: white !important; /* Letra blanca */',
'    margin-top: 30px !important;',
'}',
'',
'',
'',
''))
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'18'
,p_last_updated_by=>'CHARBA'
,p_last_upd_yyyymmddhh24miss=>'20250307093820'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(251288338384714710)
,p_plug_name=>unistr('Tiempo de resoluci\00F3n')
,p_region_name=>'promedio'
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>60
,p_plug_new_grid_row=>false
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html lang="es">',
'<head>',
'    <meta charset="UTF-8">',
'    <meta name="viewport" content="width=device-width, initial-scale=1.0">',
'    <title>Ejemplo de Texto Centrado</title>',
'    <style>',
'        .horas {',
'            font-size: 24px;',
'            color: black;',
'            font-weight: bold;',
'            font-family: Georgia, sans-serif; /* Cambia el tipo de letra */',
'            text-align: center; /* Centra el texto horizontalmente */',
'            position: absolute;',
unistr('            top: 90%; /* Ajusta este valor para bajar m\00E1s el texto */'),
unistr('            left: 60%; /* Mueve el texto m\00E1s hacia la derecha */'),
'            transform: translate(-50%, -50%); /* Centra el texto verticalmente */',
'        }',
'    </style>',
'</head>',
'<body>',
'    <p class="horas">Horas</p>',
'</body>',
'</html>'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(423383916079682542)
,p_plug_name=>'Casos_Derivados'
,p_region_name=>'reg'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>80
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null ID,',
'       c.ID_CASO,',
'       c.id_derivacion,',
'       c.fecha_rec FECHA,',
'       c.estado_casos ESTADO,',
'       c.OBS_REC OBSERVACION,',
'       C.OPERADOR_REC COD_USUARIO,',
'       c.COD_CLIENTE,',
'       c.canal,',
'       c.voz_cliente,',
'       c.area_derivada,',
'       c.oper_deriv,',
'       c.fecha_deriv,',
'       c.obs_derivada,',
'       (select     CASE ',
'        WHEN ((inv.Sumar_horas_Habiles(pfecha_inicio => cx.fecha_deriv,',
'                                     pfecha_fin => NVL(cx.fecha_rec, SYSDATE)) )  <= cc.valor_decimal and c.estado_casos in (''F'',''G'') ) THEN ''En Plazo''',
'                ELSE ''Vencido''',
'            END AS estado ',
'        FROM CRM_DERIVACIONES_CONTACTO cx,',
'             CX_REFERENCIAS cc',
'           where cc.cod_referencia = c.area_derivada',
'           AND CX.COD_EMPRESA = :P_COD_EMPRESA',
'           AND CC.COD_TIPO_REFERENCIA = ''12''',
'           AND CC.COD_EMPRESA = CX.COD_EMPRESA',
'           AND CC.COD_REFERENCIA = CX.AREA_DERIVADA',
'           and cx.id_caso = c.id_caso',
'           and rownum =1) SLA,',
'         CASE ',
'            WHEN nvl(c.ind_urgente,''N'') = ''S'' THEN ',
'                ''<span class="fa fa-exclamation-triangle" style="color: red;" title="ind_urgencia"></span>''',
'            ELSE NULL',
'        END ind_urgente,',
'          CASE ',
'      WHEN EXISTS (SELECT 1 ',
'                 FROM CC_DERIVACIONES_FILES f ',
'                 WHERE f.id_caso = c.id_caso ',
'                   AND f.id_derivaciones = c.id_derivacion) ',
'      THEN',
'        ''<a href="'' || APEX_UTIL.PREPARE_URL(',
'            ''f?p='' || :APP_ID || '':821:'' || :APP_SESSION || ''::NO::P821_ID_CASO,P821_ID_DERIVACION:'' ',
'            || c.ID_CASO || '','' || c.ID_DERIVACION, ''SESSION'') || ',
'            ''" > <span class="fa fa-paperclip" style="color:blue;"></span></a>''',
'    ELSE NULL',
'    END AS VER_ADJUNTO ',
'  from  CRM_DERIVACIONES_CONTACTO C',
'  --, CRM_USER_PERMISO uu',
'  where (c.cod_cliente = :P794_CLIENTE OR :P794_CLIENTE IS NULL)',
'    and c.cod_empresa = :P_COD_EMPRESA',
'    AND c.canal IS NOT NULL',
'    AND c.voz_cliente IS NOT null',
'    AND :P_COD_USUARIO in(SELECT uu.cod_usuario FROM crm_user_permiso uu WHERE uu.cod_empresa = :P_COD_EMPRESA)',
'    --AND C.COD_EMPRESA = uu.COD_EMPRESA',
'    --AND C.OPERADOR_REC = uu.COD_USUARIO',
'    and (c.estado_casos = :P794_ESTADO or :P794_ESTADO is null)',
'    and (c.area_derivada = :P794_AREA_DERIVADA or :P794_AREA_DERIVADA is null)',
'    and (nvl(c.ind_urgente,''N'') = :P794_IND_URGENTE or :P794_IND_URGENTE is null)',
'    and (trunc(c.fecha_deriv) between nvl(to_date(:P794_FECHA_DESDE,''dd/mm/yyyy''),to_Date(''01/01/2000'',''dd/mm/yyyy'')) ',
'                    and nvl(to_date(:P794_FECHA_HASTA,''dd/mm/yyyy''),to_date(''31/12/2099'',''dd/mm/yyyy'')))',
'   order by nvl(c.ind_urgente,''N'') desc,to_date(c.fecha_deriv) desc--,c.estado_casos'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P794_CLIENTE,P794_AREA_DERIVADA,P794_ESTADO,P794_FECHA_DESDE,P794_FECHA_HASTA'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Casos_Derivados'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(423384056134682543)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'VGAMARRA'
,p_internal_uid=>423384056134682543
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(423384129818682544)
,p_db_column_name=>'ID_CASO'
,p_display_order=>20
,p_column_identifier=>'A'
,p_column_label=>'Id Caso'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(423384257465682545)
,p_db_column_name=>'FECHA'
,p_display_order=>30
,p_column_identifier=>'B'
,p_column_label=>'Fecha Rec.'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_format_mask=>'DD/MM/YYYY HH24:MI:SS'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(423384353310682546)
,p_db_column_name=>'ESTADO'
,p_display_order=>40
,p_column_identifier=>'C'
,p_column_label=>'Estado'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(982026788644398085)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(423384445195682547)
,p_db_column_name=>'OBSERVACION'
,p_display_order=>50
,p_column_identifier=>'D'
,p_column_label=>'Observacion Rec,'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(427684413101127101)
,p_db_column_name=>'COD_USUARIO'
,p_display_order=>90
,p_column_identifier=>'H'
,p_column_label=>'Operador Rec.'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(427684542953127102)
,p_db_column_name=>'COD_CLIENTE'
,p_display_order=>100
,p_column_identifier=>'I'
,p_column_label=>'Cod Cliente'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(60039285927378412)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(427685218136127109)
,p_db_column_name=>'CANAL'
,p_display_order=>170
,p_column_identifier=>'P'
,p_column_label=>'Canal'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(981880448268482037)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(427685304829127110)
,p_db_column_name=>'VOZ_CLIENTE'
,p_display_order=>180
,p_column_identifier=>'Q'
,p_column_label=>'Voz Cliente'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(981882532861492029)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(428846253552297334)
,p_db_column_name=>'SLA'
,p_display_order=>210
,p_column_identifier=>'U'
,p_column_label=>'Sla'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(428846970275297341)
,p_db_column_name=>'AREA_DERIVADA'
,p_display_order=>240
,p_column_identifier=>'X'
,p_column_label=>'Area Derivada'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(981877954082470160)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(432331137898966517)
,p_db_column_name=>'OPER_DERIV'
,p_display_order=>250
,p_column_identifier=>'Y'
,p_column_label=>'Operador Derivado'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(432331280052966518)
,p_db_column_name=>'FECHA_DERIV'
,p_display_order=>260
,p_column_identifier=>'Z'
,p_column_label=>'Fecha Derivada'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_format_mask=>'DD/MM/YYYY HH24:MI:SS'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(432331316722966519)
,p_db_column_name=>'OBS_DERIVADA'
,p_display_order=>270
,p_column_identifier=>'AA'
,p_column_label=>'Obs Derivada'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(433040197576904241)
,p_db_column_name=>'IND_URGENTE'
,p_display_order=>280
,p_column_identifier=>'AB'
,p_column_label=>'Urgente'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_format_mask=>'PCT_GRAPH:::'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(255220532102587316)
,p_db_column_name=>'ID_DERIVACION'
,p_display_order=>290
,p_column_identifier=>'AC'
,p_column_label=>'Id Derivacion'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'Y'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(627201157673991334)
,p_db_column_name=>'VER_ADJUNTO'
,p_display_order=>300
,p_column_identifier=>'AD'
,p_column_label=>'Ver Adjunto'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_format_mask=>'PCT_GRAPH:::'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1050167177261094607)
,p_db_column_name=>'ID'
,p_display_order=>310
,p_column_identifier=>'AE'
,p_column_label=>'Editar'
,p_column_link=>'f?p=&APP_ID.:797:&SESSION.::&DEBUG.::P797_ID_DERIVACION:#ID_DERIVACION#'
,p_column_linktext=>'<span aria-label="Edit"><span class="fa fa-edit" aria-hidden="true" title="Edit"></span></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(427695929544127672)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'4276960'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ID:COD_CLIENTE:FECHA_DERIV:ID_DERIVACION:ID_CASO:VOZ_CLIENTE:AREA_DERIVADA:OBS_DERIVADA:OPER_DERIV:CANAL:ESTADO:SLA:COD_USUARIO:FECHA:OBSERVACION:IND_URGENTE:VER_ADJUNTO:'
,p_sort_column_1=>'IND_URGENTE'
,p_sort_direction_1=>'ASC NULLS LAST'
,p_sort_column_2=>'FECHA_DERIV'
,p_sort_direction_2=>'DESC'
,p_sort_column_3=>'0'
,p_sort_direction_3=>'ASC'
,p_sort_column_4=>'0'
,p_sort_direction_4=>'ASC'
,p_sort_column_5=>'0'
,p_sort_direction_5=>'ASC'
,p_sort_column_6=>'0'
,p_sort_direction_6=>'ASC'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(1082413909756899198)
,p_report_id=>wwv_flow_imp.id(427695929544127672)
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'SLA'
,p_operator=>'='
,p_expr=>'En Plazo'
,p_condition_sql=>' (case when ("SLA" = #APXWS_EXPR#) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# = ''En Plazo''  '
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_row_bg_color=>'#59fc6a'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(1082414326773899198)
,p_report_id=>wwv_flow_imp.id(427695929544127672)
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'SLA'
,p_operator=>'='
,p_expr=>'Vencido'
,p_condition_sql=>' (case when ("SLA" = #APXWS_EXPR#) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# = ''Vencido''  '
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_row_bg_color=>'#fb6161'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(427686658888127123)
,p_plug_name=>'Estado de Casos'
,p_region_name=>'chart_1'
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>40
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>3
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(427686799211127124)
,p_region_id=>wwv_flow_imp.id(427686658888127123)
,p_chart_type=>'donut'
,p_height=>'400'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'slideToLeft'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hide_and_show_behavior=>'withRescale'
,p_hover_behavior=>'dim'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_value_position=>'auto'
,p_value_format_type=>'decimal'
,p_value_decimal_places=>0
,p_value_format_scaling=>'none'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_group_name=>true
,p_show_value=>true
,p_show_label=>true
,p_show_row=>true
,p_show_start=>true
,p_show_end=>true
,p_show_progress=>true
,p_show_baseline=>true
,p_legend_rendered=>'on'
,p_legend_position=>'bottom'
,p_overview_rendered=>'off'
,p_pie_other_threshold=>0
,p_pie_selection_effect=>'highlight'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(427686846131127125)
,p_chart_id=>wwv_flow_imp.id(427686799211127124)
,p_seq=>10
,p_name=>'Estado de Casos'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'    COUNT(ID_CASO) AS numero,',
'    DECODE(estado_casos, ',
'           ''A'', ''Abierto'', ',
'           ''D'', ''Derivado'', ',
'           ''G'', ''Gestionado'', ',
'           ''R'', ''Rechazado'', ',
'           ''F'', ''Finalizado'',',
'           ''E'', ''En revision'') AS estado_contacto,',
'    COUNT(ID_CASO) || '' '' || DECODE(estado_casos, ',
'           ''A'', ''Abierto'', ',
'           ''D'', ''Derivado'', ',
'           ''G'', ''Gestionado'', ',
'           ''R'', ''Rechazado'', ',
'           ''F'', ''Finalizado'',',
'           ''E'', ''En revision'') AS cantidad_estado',
'FROM CRM_DERIVACIONES_CONTACTO C',
'WHERE (c.cod_cliente = :P794_CLIENTE or :P794_CLIENTE is null)',
'  and c.cod_empresa = :P_COD_EMPRESA',
'  --AND C.COD_EMPRESA = U.COD_EMPRESA',
' -- AND C.OPERADOR_REC = U.COD_USUARIO',
' AND :P_COD_USUARIO in(SELECT uu.cod_usuario FROM crm_user_permiso uu WHERE uu.cod_empresa = :P_COD_EMPRESA)',
'  and (c.estado_casos = :P794_ESTADO or :P794_ESTADO is null)',
'  and (c.area_derivada = :P794_AREA_DERIVADA or :P794_AREA_DERIVADA is null)',
'  and c.estado_casos is not null',
' -- and (nvl(c.ind_urgente,''N'') = :P794_IND_URGENTE or :P794_IND_URGENTE is null)',
'  AND (TRUNC(fecha_deriv) BETWEEN NVL(TO_DATE(:P794_FECHA_DESDE, ''dd/mm/yyyy''), TO_DATE(''01/01/2000'', ''dd/mm/yyyy''))',
'                            AND NVL(TO_DATE(:P794_FECHA_HASTA, ''dd/mm/yyyy''), TO_DATE(''31/12/2099'', ''dd/mm/yyyy'')))',
'GROUP BY estado_casos',
'',
''))
,p_ajax_items_to_submit=>'P794_CLIENTE,P794_FECHA_DESDE,P794_FECHA_HASTA,P794_ESTADO,P794_AREA_DERIVADA'
,p_series_name_column_name=>'ESTADO_CONTACTO'
,p_items_value_column_name=>'NUMERO'
,p_items_label_column_name=>'CANTIDAD_ESTADO'
,p_items_label_rendered=>true
,p_items_label_position=>'aboveMarker'
,p_items_label_display_as=>'LABEL'
,p_items_label_font_family=>'Arial'
,p_items_label_font_style=>'normal'
,p_items_label_font_size=>'14'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(427687272740127129)
,p_plug_name=>'SLA'
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>50
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>3
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(427687331213127130)
,p_region_id=>wwv_flow_imp.id(427687272740127129)
,p_chart_type=>'pie'
,p_height=>'400'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hide_and_show_behavior=>'withRescale'
,p_hover_behavior=>'dim'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_value_position=>'auto'
,p_value_format_type=>'decimal'
,p_value_decimal_places=>0
,p_value_format_scaling=>'none'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_group_name=>true
,p_show_value=>true
,p_show_label=>true
,p_show_row=>true
,p_show_start=>true
,p_show_end=>true
,p_show_progress=>true
,p_show_baseline=>true
,p_legend_rendered=>'on'
,p_legend_position=>'bottom'
,p_overview_rendered=>'off'
,p_pie_other_threshold=>0
,p_pie_selection_effect=>'highlight'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(427687472513127131)
,p_chart_id=>wwv_flow_imp.id(427687331213127130)
,p_seq=>10
,p_name=>'SLA'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'    estado || '' ('' || ROUND((cantidad * 100 / SUM(cantidad) OVER ()), 2) || ''%)'' AS estado,',
'    cantidad',
'FROM (',
'    SELECT ''Vencido'' AS estado,',
'           SUM(CASE ',
'                   WHEN (inv.Sumar_horas_Habiles(pfecha_inicio => c.fecha_deriv, pfecha_fin => NVL(c.fecha_rec, SYSDATE))) > cc.valor_decimal THEN 1 ',
'                   ELSE 0 ',
'               END) AS cantidad',
'    FROM CRM_DERIVACIONES_CONTACTO c,',
'         CX_REFERENCIAS cc ',
'    WHERE (c.cod_cliente = :P794_CLIENTE or :P794_CLIENTE is null)',
'      and (c.estado_casos = :P794_ESTADO or :P794_ESTADO is null)',
'      AND c.area_derivada = cc.cod_referencia',
'      AND (c.area_derivada = :P794_AREA_DERIVADA or :P794_AREA_DERIVADA is null)',
'     -- and c.estado_casos is not null',
'      AND (nvl(TRUNC(c.fecha_deriv),sysdate) BETWEEN NVL(TO_DATE(:P794_FECHA_DESDE, ''dd/mm/yyyy''), TO_DATE(''01/01/2000'', ''dd/mm/yyyy'')) ',
'                                  AND NVL(TO_DATE(:P794_FECHA_HASTA, ''dd/mm/yyyy''), TO_DATE(''31/12/2099'', ''dd/mm/yyyy'')))',
'    UNION ALL',
'    SELECT ''En Plazo'' AS estado,',
'           SUM(CASE ',
'                   WHEN (inv.Sumar_horas_Habiles(pfecha_inicio => c.fecha_deriv, pfecha_fin => NVL(c.fecha_rec, SYSDATE))) <= cc.valor_decimal THEN 1 ',
'                   ELSE 0 ',
'               END) AS cantidad',
'    FROM CRM_DERIVACIONES_CONTACTO c,',
'         CX_REFERENCIAS cc ',
'    WHERE (c.cod_cliente = :P794_CLIENTE or :P794_CLIENTE is null)',
'      and (c.estado_casos = :P794_ESTADO or :P794_ESTADO is null)',
'      AND c.area_derivada = cc.cod_referencia',
'      AND (c.area_derivada = :P794_AREA_DERIVADA or :P794_AREA_DERIVADA is null)',
'     -- and c.estado_casos is not null',
'      AND (nvl(TRUNC(c.fecha_deriv),sysdate) BETWEEN NVL(TO_DATE(:P794_FECHA_DESDE, ''dd/mm/yyyy''), TO_DATE(''01/01/2000'', ''dd/mm/yyyy'')) ',
'                                  AND NVL(TO_DATE(:P794_FECHA_HASTA, ''dd/mm/yyyy''), TO_DATE(''31/12/2099'', ''dd/mm/yyyy'')))',
');',
''))
,p_ajax_items_to_submit=>'P794_CLIENTE,P794_FECHA_DESDE,P794_FECHA_HASTA,P794_ESTADO,P794_AREA_DERIVADA'
,p_series_name_column_name=>'ESTADO'
,p_items_value_column_name=>'CANTIDAD'
,p_items_label_column_name=>'ESTADO'
,p_items_label_rendered=>true
,p_items_label_position=>'auto'
,p_items_label_display_as=>'LABEL'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(680869248985105435)
,p_plug_name=>'FICHA CLIENTE'
,p_icon_css_classes=>'fa-cart-plus'
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>10
,p_plug_grid_column_span=>4
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(697201580109533031)
,p_plug_name=>'Datos del Cliente'
,p_region_name=>'r_datos_cliente'
,p_parent_plug_id=>wwv_flow_imp.id(680869248985105435)
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40108275410263656)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
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
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(427098592971253808)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(680869248985105435)
,p_button_name=>'STOCK'
,p_button_static_id=>'btn'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'t-Button--simple:t-Button--iconRight:t-Button--stretch:t-Button--gapRight:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Stock'
,p_button_execute_validations=>'N'
,p_warn_on_unsaved_changes=>null
,p_button_condition_type=>'NEVER'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>2
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(423383286315682535)
,p_button_sequence=>110
,p_button_plug_id=>wwv_flow_imp.id(697201580109533031)
,p_button_name=>'Limpiar'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'t-Button--simple:t-Button--iconRight:t-Button--stretch:t-Button--gapRight:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Limpiar'
,p_button_execute_validations=>'N'
,p_icon_css_classes=>'fa-refresh'
,p_grid_new_row=>'Y'
,p_grid_column_span=>3
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(423383388026682536)
,p_button_sequence=>120
,p_button_plug_id=>wwv_flow_imp.id(697201580109533031)
,p_button_name=>'Actualizar'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'t-Button--simple:t-Button--iconRight:t-Button--stretch:t-Button--gapRight:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Actualizar'
,p_button_execute_validations=>'N'
,p_button_condition_type=>'NEVER'
,p_icon_css_classes=>'fa-refresh'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>3
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(427685682251127113)
,p_button_sequence=>130
,p_button_plug_id=>wwv_flow_imp.id(697201580109533031)
,p_button_name=>'Consultar'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'t-Button--simple:t-Button--iconRight:t-Button--stretch:t-Button--gapRight:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Consultar'
,p_button_execute_validations=>'N'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-refresh'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>3
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(423383154702682534)
,p_name=>'P794_AREA_DERIVADA'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(697201580109533031)
,p_prompt=>'Area Derivada'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_CX_AREA_DERIVACION'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select c.cod_referencia, c.descripcion_referencia',
' from CX_REFERENCIAS c',
' where  C.COD_TIPO_REFERENCIA = ''12''',
' and c.cod_empresa = :P_COD_EMPRESA',
' --AND ''D'' = :P791_ESTADO_CONTACTO',
' ;'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'Todos'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(427098905718253810)
,p_name=>'P794_CLIENTE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(697201580109533031)
,p_prompt=>'Cliente'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_CLIENTES_CASOS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select CLIENTE,',
'       COD_CLIENTE,',
'       NCI,',
'       RUC,',
'       TELEFONO       ',
' from INV.VW_CLIENTES_CASOS',
'     ORDER BY 1 ASC'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_icon_css_classes=>'fa-users-chat'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'Y'
,p_attribute_05=>'Y'
,p_attribute_06=>'4'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(427099666451253811)
,p_name=>'P794_NOM_CLIENTE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(697201580109533031)
,p_prompt=>'Nombre'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(427100062977253811)
,p_name=>'P794_ESTADO'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(697201580109533031)
,p_prompt=>'ESTADO'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>'STATIC:Abierto;A,Gestionado;G,Derivado;D,Rechazado;R,Finalizado;F'
,p_lov_display_null=>'YES'
,p_lov_null_text=>'Todos'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(427100431722253812)
,p_name=>'P794_SEGMENTACION'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(697201580109533031)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(427100895605253812)
,p_name=>'P794_CALIFIC_STAR'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(697201580109533031)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(427101226348253812)
,p_name=>'P794_COD_CLIENTE'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(697201580109533031)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(427101632392253812)
,p_name=>'P794_NCI'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(697201580109533031)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(427102069653253812)
,p_name=>'P794_TELEFONO'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(697201580109533031)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(427102481038253812)
,p_name=>'P794_VENDEDOR'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(697201580109533031)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(427102834425253812)
,p_name=>'P794_SUC'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(697201580109533031)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(427103275109253813)
,p_name=>'P794_COMENTARIO'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_imp.id(697201580109533031)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(427103607038253813)
,p_name=>'P794_PERSONA'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_imp.id(697201580109533031)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(428845221794297324)
,p_name=>'P794_FECHA_DESDE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(697201580109533031)
,p_prompt=>'Fecha desde'
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'Y'
,p_attribute_11=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(428845333084297325)
,p_name=>'P794_FECHA_HASTA'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(697201580109533031)
,p_prompt=>'Fecha hasta'
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(433040049127904240)
,p_name=>'P794_IND_GERENTE'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_imp.id(697201580109533031)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(447498824578618225)
,p_name=>'P794_PROMEDIO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(251288338384714710)
,p_prompt=>unistr('Resoluci\00F3n')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_css_classes=>'u-textCenter'
,p_tag_attributes=>'readonly'
,p_field_template=>wwv_flow_imp.id(40186365556263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(627199683386991319)
,p_name=>'P794_IND_URGENTE'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_imp.id(697201580109533031)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(427114514923253822)
,p_name=>'datos_cod'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P794_COD_CLIENTE'
,p_condition_element=>'P794_COD_CLIENTE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(427115020799253822)
,p_event_id=>wwv_flow_imp.id(427114514923253822)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P794_NOM_CLIENTE,P794_NCI,P794_ESTADO,P794_TELEFONO,P794_SUC,P794_COMENTARIO,P794_VENDEDOR,P794_SEGMENTACION'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(427115562202253823)
,p_event_id=>wwv_flow_imp.id(427114514923253822)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(697201580109533031)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(427116560174253824)
,p_event_id=>wwv_flow_imp.id(427114514923253822)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
' ',
'begin ',
' select (to_char(DEUDA_VENCIDA,''9G999G999G999G990''))',
' into :P794_S_VENCIDO',
'       from  inv.v_cliente_apex',
'       where  cod_cliente=:P794_COD_CLIENTE; ',
'       /*case',
'         when DEUDA_VENCIDA <= 0 then',
'          ''<span style="font-size:20px;>''||(to_char(DEUDA_VENCIDA,''9G999G999G999G990''))||'' Gs.     &#128515; </span>''',
'         when round((DEUDA_VENCIDA * 10 / DEUDA_TOTAL)) between 1 and 10 then',
'          ''<span style="font-size:20px;">''||(to_char(DEUDA_VENCIDA,''9G999G999G999G990''))||'' Gs.     &#128531;</span>''',
'         when round((DEUDA_VENCIDA * 10 / DEUDA_TOTAL)) between 11 and 15 then',
'          ''<span style="font-size:20px;">''||(to_char(DEUDA_VENCIDA,''9G999G999G999G990''))||'' Gs.     &#128552; </span>''',
'         when round((DEUDA_VENCIDA * 10 / DEUDA_TOTAL)) between 16 and 40 then',
'          ''<span style="font-size:20px;">''||(to_char(DEUDA_VENCIDA,''9G999G999G999G990''))||'' Gs.     &#128561; </span>''',
'         when round((DEUDA_VENCIDA * 10 / DEUDA_TOTAL)) between 41 and 55 then',
'          ''<span style="font-size:20px;">''||(to_char(DEUDA_VENCIDA,''9G999G999G999G990''))||'' Gs.     &#128548; </span>''',
'         ELSE',
'          ''<span style="font-size:20px;">''||(to_char(DEUDA_VENCIDA,''9G999G999G999G990''))||'' Gs.     &#129327; </span>''',
'       END EMOJI',
'       into :P794_S_VENCIDO',
'       from  inv.v_cliente_apex',
'       where  cod_cliente=:P794_COD_CLIENTE; ',
'       */',
'exception',
'    when others then',
'        :P794_S_VENCIDO:=null;  ',
'end;'))
,p_attribute_02=>'P794_COD_CLIENTE'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(427117066974253824)
,p_event_id=>wwv_flow_imp.id(427114514923253822)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
' ',
'begin   ',
'                select  s.tip_segmento ',
'                into :P794_SEGMENTACION',
'                    from  cc_segmentacion_cliente s',
'                    where s.cod_empresa=  :P_COD_EMPRESA',
'                    and   s.cod_tip_cliente=''27''',
'                    and   (select  sum(DECODE(V.TIP_COMPROBANTE,''NCR'',-1,1)*V.Tot_Gravadas *v.tip_cambio) ',
'                            from vt_comprobantes_cabecera v',
'                            where v.cod_empresa= :P_COD_EMPRESA',
'                            and   trunc(v.fec_comprobante,''YYYY'')=TRUNC(trunc(sysdate,''YYYY'')-1,''YYYY'') ',
'                            and   nvl(v.estado,''P'')<>''A''',
'                            and   v.cod_cliente= :P794_COD_CLIENTE) between nvl(s.vta_anual_min,0)     and    nvl(s.vta_anual_max,0) ',
'                    ',
'        ;',
'exception',
'    when others then',
'        :P794_SEGMENTACION:=null;  ',
'end;'))
,p_attribute_02=>'P794_COD_CLIENTE'
,p_attribute_03=>'P794_SEGMENTACION'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(427118037694253825)
,p_event_id=>wwv_flow_imp.id(427114514923253822)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.region("resumen").refresh();',
'apex.region("rcharts").refresh();'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(427113117376253821)
,p_name=>'CARGA_DATOS'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P794_CLIENTE'
,p_condition_element=>'P794_CLIENTE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(427113675479253821)
,p_event_id=>wwv_flow_imp.id(427113117376253821)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P794_COD_CLIENTE'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(427114120725253822)
,p_event_id=>wwv_flow_imp.id(427113117376253821)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P794_CLIENTE  IS NOT NULL THEN',
'',
'    :P794_COD_CLIENTE:=NULL;',
'    :P794_NCI:=NULL;',
'    :P794_PERSONA:=NULL;',
'    :P794_NOM_CLIENTE:=NULL;',
'    DECLARE',
'	vcod_cliente varchar2(30);',
'    vcod_persona varchar2(30);',
'    vruc varchar2(30);',
'    vnombre varchar2(100);',
'',
'BEGIN',
'SELECT',
'  c.cod_cliente,',
'  c.cod_persona,',
'  p.numero,',
'  pe.nombre',
'INTO',
'  vcod_cliente,',
'  vcod_persona,',
'  vruc,',
'  vnombre',
'FROM',
'  CC_CLIENTES C,',
'  IDENT_PERSONAS P,',
'  personas pe',
'WHERE',
'  C.COD_EMPRESA     = :P_COD_EMPRESA',
'  AND C.COD_PERSONA = P.COD_PERSONA',
'  AND cod_ident     IN (''CI'', ''RUC'')',
'  AND c.cod_cliente = :P794_CLIENTE',
'  and c.cod_persona = pe.cod_persona',
'  AND rownum = ''1'';',
' ',
':P794_COD_CLIENTE := vcod_cliente;',
':P794_NCI := vruc;',
':P794_PERSONA := vcod_persona;',
':P794_NOM_CLIENTE := vnombre;',
'',
'/**/',
'                    ',
'    EXCEPTION',
'WHEN NO_DATA_FOUND THEN',
'BEGIN',
'	SELECT',
'	c.cod_cliente,',
'	c.cod_persona,',
'	p.numero,',
'    pe.nombre',
'  INTO',
'	vcod_cliente,',
'	vcod_persona,',
'	vruc,',
'    vnombre',
'FROM',
'	CC_CLIENTES C,',
'	IDENT_PERSONAS P,',
'  personas pe',
'WHERE  C.COD_EMPRESA = :P_COD_EMPRESA',
'	AND C.COD_PERSONA = P.COD_PERSONA',
'	AND cod_ident IN (''CI'', ''RUC'')',
'    and c.cod_persona = pe.cod_persona    ',
'	AND p.numero = :P794_CLIENTE;',
'',
':P794_COD_CLIENTE := vcod_cliente;',
':P794_NCI := vruc;',
':P794_PERSONA := vcod_persona ;',
':P794_NOM_CLIENTE := vnombre;',
'EXCEPTION',
'WHEN OTHERS THEN ',
'               apex_error.add_error(p_message => ''Dato no encontrado'',',
'                   p_display_location => apex_error.c_on_error_page',
'               );',
'END;',
'WHEN OTHERS THEN',
'            apex_error.add_error(p_message => ''Dato no encontrado'',',
'                   p_display_location => apex_error.c_on_error_page',
'               );',
'END ;',
'ELSE',
'    :P794_COD_CLIENTE:=NULL;',
'    :P794_NCI:=NULL;',
'    :P794_PERSONA:=NULL;',
'END IF;'))
,p_attribute_02=>'P794_CLIENTE'
,p_attribute_03=>'P794_NCI,P794_COD_CLIENTE,P794_PERSONA,P794_NOM_CLIENTE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(427118908008253825)
,p_name=>'clear_page'
,p_event_sequence=>50
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(427119499391253825)
,p_event_id=>wwv_flow_imp.id(427118908008253825)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P794_CLIENTE,P794_COD_CLIENTE'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(427121878150253826)
,p_name=>'DA_PAGE_126'
,p_event_sequence=>60
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(427098592971253808)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(427122320819253826)
,p_event_id=>wwv_flow_imp.id(427121878150253826)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
' apex.navigation.openInNewWindow(''f?p=122:126:&APP_SESSION.::NO::''); ',
' '))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(427685736628127114)
,p_name=>'refresh'
,p_event_sequence=>70
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(427685682251127113)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(427685815471127115)
,p_event_id=>wwv_flow_imp.id(427685736628127114)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(423383916079682542)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(427685944837127116)
,p_name=>'refresh_1'
,p_event_sequence=>80
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(427685682251127113)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(427686020601127117)
,p_event_id=>wwv_flow_imp.id(427685944837127116)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(427686658888127123)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(255219314552587304)
,p_name=>'refresh_1_1'
,p_event_sequence=>90
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(427685682251127113)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(255219454540587305)
,p_event_id=>wwv_flow_imp.id(255219314552587304)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(427687272740127129)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(251289624894714723)
,p_name=>'refresh_1_1_1'
,p_event_sequence=>100
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(427685682251127113)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(251289709263714724)
,p_event_id=>wwv_flow_imp.id(251289624894714723)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(251288338384714710)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(433036738808904207)
,p_name=>'New'
,p_event_sequence=>110
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'window'
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(433036869950904208)
,p_event_id=>wwv_flow_imp.id(433036738808904207)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(423383916079682542)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(433040363085904243)
,p_name=>'DA_INHABILITA_PERMISO'
,p_event_sequence=>120
,p_condition_element=>'P794_IND_GERENTE'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'N'
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(433040471550904244)
,p_event_id=>wwv_flow_imp.id(433040363085904243)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P794_AREA_DERIVADA'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(433040612625904246)
,p_name=>'DA_HABILITA_PERMISO'
,p_event_sequence=>130
,p_condition_element=>'P794_IND_GERENTE'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'S'
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(433040734330904247)
,p_event_id=>wwv_flow_imp.id(433040612625904246)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P794_AREA_DERIVADA'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(255220878738587319)
,p_name=>'consulta'
,p_event_sequence=>140
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(427685682251127113)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(255220983425587320)
,p_event_id=>wwv_flow_imp.id(255220878738587319)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'SELECT round(AVG((c.fecha_rec - c.fecha_deriv) * 24)) ',
'into :P794_PROMEDIO',
'FROM CRM_DERIVACIONES_CONTACTO c',
'WHERE (c.cod_cliente = :P794_CLIENTE OR :P794_CLIENTE IS NULL)',
'  AND c.cod_empresa = :P_COD_EMPRESA',
'    AND c.canal IS NOT NULL',
'    AND c.voz_cliente IS NOT null',
'  AND (c.estado_casos = :P794_ESTADO OR :P794_ESTADO IS NULL)',
'  AND (c.area_derivada = :P794_AREA_DERIVADA OR :P794_AREA_DERIVADA IS NULL)',
'  AND c.fecha_rec IS NOT NULL',
'  AND (TRUNC(c.fecha_deriv) BETWEEN NVL(TO_DATE(:P794_FECHA_DESDE, ''dd/mm/yyyy''), TO_DATE(''01/01/2000'', ''dd/mm/yyyy'')) ',
'                               AND NVL(TO_DATE(:P794_FECHA_HASTA, ''dd/mm/yyyy''), TO_DATE(''31/12/2099'', ''dd/mm/yyyy'')))',
';',
' exception',
' when others then ',
'  null;',
'end;'))
,p_attribute_02=>'P794_CLIENTE,P794_ESTADO,P794_AREA_DERIVADA,P794_FECHA_DESDE,P794_FECHA_HASTA'
,p_attribute_03=>'P794_PROMEDIO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(423383655376682539)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'ini'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P794_NOM_CLIENTE := NULL;',
':P794_COD_CLIENTE := NULL;',
'--:P794_CLIENTE := NULL;',
':P794_ESTADO := null;',
':P794_FECHA_DESDE := null;',
':P794_FECHA_HASTA := null;',
':P794_IND_URGENTE := null;',
'',
'declare',
' begin ',
'  select c.area,C.IND_GERENTE',
'   into :P794_AREA_DERIVADA, :P794_IND_GERENTE',
'  from inv.crm_user_permiso c',
'  where c.cod_empresa = :P_COD_EMPRESA',
'  AND C.COD_USUARIO = :P_COD_USUARIO;',
' exception',
' when others then ',
'  null;',
'end;',
'',
'',
'begin',
'SELECT round(AVG((c.fecha_rec - c.fecha_deriv) * 24)) ',
'into :P794_PROMEDIO',
'FROM CRM_DERIVACIONES_CONTACTO c',
'WHERE (c.cod_cliente = :P794_CLIENTE OR :P794_CLIENTE IS NULL)',
'  AND c.cod_empresa = :P_COD_EMPRESA',
'  AND c.canal IS NOT NULL',
'  AND c.voz_cliente IS NOT null',
'  AND (c.estado_casos = :P794_ESTADO OR :P794_ESTADO IS NULL)',
'  AND (c.area_derivada = :P794_AREA_DERIVADA OR :P794_AREA_DERIVADA IS NULL)',
'  AND c.fecha_rec IS NOT NULL',
'  AND (TRUNC(c.fecha_deriv) BETWEEN NVL(TO_DATE(:P794_FECHA_DESDE, ''dd/mm/yyyy''), TO_DATE(''01/01/2000'', ''dd/mm/yyyy'')) ',
'                               AND NVL(TO_DATE(:P794_FECHA_HASTA, ''dd/mm/yyyy''), TO_DATE(''31/12/2099'', ''dd/mm/yyyy'')))',
';',
' exception',
' when others then ',
'  null;',
'end;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp.component_end;
end;
/
