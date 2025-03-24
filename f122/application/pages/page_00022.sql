prompt --application/pages/page_00022
begin
--   Manifest
--     PAGE: 00022
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
 p_id=>22
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>unistr('Alerta de Facturas en Dep\00F3sito')
,p_alias=>unistr('ALERTA-DE-FACTURAS-EN-DEP\00D3SITO')
,p_step_title=>unistr('Alerta de Facturas en Dep\00F3sito')
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function refrescar(tiempo){',
'    setInterval("apex.region(''REPORTE'').refresh();", tiempo);',
'  };',
'',
'function mostrar_ocultar() {',
'  var x = document.getElementById("P22_NCI_VAR");',
'  var ver = apex.item("P22_VER_VAR").getValue();',
'',
'  if (x.type === "password" && ver == ''S'') {',
'    x.type = "text";',
'  } else {',
'    x.type = "password";',
'  }',
'}  ',
'',
'function doDescarga(p_cod_empresa, p_nro_planilla, p_cod_cliente){',
'   var vURL = ''https://ngosaeca.com.py/reportes/rest_v2/reports/reports/STGARPROCER.pdf?''',
'            + ''P_COD_EMPRESA='' + p_cod_empresa + ''&P_NRO_PLANILLA='' + p_nro_planilla  + ''&P_COD_CLIENTE=''+ p_cod_cliente+''&j_username=jasperadmin&j_password=jasperadmin'';',
'',
'    console.log(vURL);',
'    window.open(unescape(vURL.replace(/&amp;/g,''g'')),''_blank'');',
'}',
'',
'function doDescarga1(p_cod_empresa, p_tip_comprobante, p_ser_comprobante, p_nro_comprobante){',
'   var vURL = ''https://ngosaeca.com.py/reportes/rest_v2/reports/reports/VTCNDPRT.pdf?''',
'            + ''P_COD_EMPRESA='' + p_cod_empresa + ''&P_TIP_COMPROBANTE='' + p_tip_comprobante  + ''&P_SER_COMPROBANTE=''+ p_ser_comprobante  + ''&P_NRO_COMPROBANTE=''+ p_nro_comprobante+''&j_username=jasperadmin&j_password=jasperadmin'';',
'',
'    console.log(vURL);',
'    window.open(unescape(vURL.replace(/&amp;/g,''g'')),''_blank'');',
'}',
'',
'function doDescarga2(p_cod_empresa, p_tip_comprobante, p_ser_comprobante, p_nro_comprobante){',
'   var vURL = ''https://ngosaeca.com.py/reportes/rest_v2/reports/reports/VTREMPREST.pdf?''',
'            + ''P_COD_EMPRESA='' + p_cod_empresa + ''&P_TIP_COMPROBANTE='' + p_tip_comprobante  + ''&P_SER_COMPROBANTE=''+ p_ser_comprobante  + ''&P_NRO_COMPROBANTE=''+ p_nro_comprobante+''&j_username=jasperadmin&j_password=jasperadmin'';',
'',
'    console.log(vURL);',
'    window.open(unescape(vURL.replace(/&amp;/g,''g'')),''_blank'');',
'}'))
,p_javascript_code_onload=>'refrescar(80000);'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'NZARATE'
,p_last_upd_yyyymmddhh24miss=>'20241106104611'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8199061937907006)
,p_plug_name=>unistr('Alerta de Facturas en Dep\00F3sito')
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8199166847907007)
,p_plug_name=>'VARIABLES'
,p_parent_plug_id=>wwv_flow_imp.id(8199061937907006)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(9419294691622702)
,p_plug_name=>'PARAMETRO'
,p_parent_plug_id=>wwv_flow_imp.id(8199166847907007)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>180
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(9290902695889021)
,p_plug_name=>'REPORTE'
,p_region_name=>'REPORTE'
,p_parent_plug_id=>wwv_flow_imp.id(9419294691622702)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT  SEQ_ID,',
'        C001 COD_EMPRESA,                             ',
'		C002 TIP_COMPROBANTE,	',
'		C003 SER_COMPROBANTE,',
'		C004 NRO_COMPROBANTE,',
'		C005 CONFIRMADO,',
'		C006 COD_SUCURSAL,                             ',
'		C007 NRO_PLANILLA,	',
'		C008 ANULADO,',
'		C009 FECHA,',
'		C010 COD_BLOQUE,',
'		C011 NCI,                             ',
'		C012 COD_USER_FIN,	',
'		C013 FECHA_FINALIZA,',
'		C014 IND_DEVOLUCION_ANULADA,',
'		C015 IND_RELEASE,',
'		C016 FEC_RELEASE,                             ',
'		C017 ORIGEN_PEDIDO,	',
'		C018 NOMBRE_CLIENTE,',
'		C019 EMPRESA_ORIGEN,',
'		C020 CONDICION,',
'		C021 FLETE,',
'		C022 DESC_BLOQUE,',
'		C023 NRO_PLANILLA_REP,',
'		C024 VCONFIRMADO,',
'		C025 VTIPO_ENTREGA,',
'		C026 VGUARDA,',
'		C027 V_ENTREGA_REMISION,',
'        DECODE(C028,''S'', ''CF'', ''N'', '''') VTIPO_CG,',
'        C029 ESTADO_PREPA,',
'		C030 VGARANTIA,',
'        ''OK'' AS "OK",        ',
'        ''CERTIFICADO'' AS "CERTIFICADO",',
'        ''CG'' AS "CG"',
'  FROM APEX_COLLECTIONS',
'  WHERE COLLECTION_NAME = ''REPORTE_FACTURAS'';',
'												    '))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'REPORTE'
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
 p_id=>wwv_flow_imp.id(9291051077889022)
,p_max_row_count=>'1000000'
,p_no_data_found_message=>'No se han encontrado datos.'
,p_allow_report_saving=>'N'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_select_columns=>'N'
,p_show_rows_per_page=>'N'
,p_show_sort=>'N'
,p_show_control_break=>'N'
,p_show_computation=>'N'
,p_show_aggregate=>'N'
,p_show_chart=>'N'
,p_show_group_by=>'N'
,p_show_pivot=>'N'
,p_show_flashback=>'N'
,p_show_reset=>'N'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'MARIANABLA'
,p_internal_uid=>9291051077889022
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9291291737889024)
,p_db_column_name=>'COD_EMPRESA'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Cod Empresa'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9291344001889025)
,p_db_column_name=>'TIP_COMPROBANTE'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Tipo'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9291493106889026)
,p_db_column_name=>'SER_COMPROBANTE'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Serie'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9291695083889028)
,p_db_column_name=>'CONFIRMADO'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Confirmado'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9292055131889032)
,p_db_column_name=>'COD_SUCURSAL'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Cod Sucursal'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9292231699889034)
,p_db_column_name=>'ANULADO'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Anulado'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9292424299889036)
,p_db_column_name=>'COD_BLOQUE'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Cod Bloque'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9292508123889037)
,p_db_column_name=>'NCI'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Nci'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9292652237889038)
,p_db_column_name=>'COD_USER_FIN'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Cod User Fin'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9292895877889040)
,p_db_column_name=>'IND_DEVOLUCION_ANULADA'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Ind Devolucion Anulada'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9293148097889043)
,p_db_column_name=>'IND_RELEASE'
,p_display_order=>200
,p_column_identifier=>'T'
,p_column_label=>'Ind Release'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9293310444889045)
,p_db_column_name=>'ORIGEN_PEDIDO'
,p_display_order=>220
,p_column_identifier=>'V'
,p_column_label=>'Origen Pedido'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9419338676622703)
,p_db_column_name=>'NOMBRE_CLIENTE'
,p_display_order=>230
,p_column_identifier=>'W'
,p_column_label=>'Cliente'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9419479562622704)
,p_db_column_name=>'EMPRESA_ORIGEN'
,p_display_order=>240
,p_column_identifier=>'X'
,p_column_label=>'Empresa'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9419591334622705)
,p_db_column_name=>'CONDICION'
,p_display_order=>250
,p_column_identifier=>'Y'
,p_column_label=>unistr('Condici\00F3n')
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9420040247622710)
,p_db_column_name=>'FLETE'
,p_display_order=>290
,p_column_identifier=>'AC'
,p_column_label=>unistr('Dep\00F3sito')
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9514897169790522)
,p_db_column_name=>'DESC_BLOQUE'
,p_display_order=>300
,p_column_identifier=>'AD'
,p_column_label=>'Bloque'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10079933474251401)
,p_db_column_name=>'NRO_COMPROBANTE'
,p_display_order=>310
,p_column_identifier=>'AF'
,p_column_label=>unistr('N\00FAmero')
,p_column_link=>'javascript:$s(''P22_TIP_COMPROBANTE_REP'',''#TIP_COMPROBANTE#''),$s(''P22_SER_COMPROBANTE_REP'',''#SER_COMPROBANTE#''),$s(''P22_NRO_COMPROBANTE_REP'',''#NRO_COMPROBANTE#''),$s(''P22_EMPRESA_ORIGEN_REP'',''#EMPRESA_ORIGEN#''),$s(''P22_AUX_MOSTRAR_DETALLE'',''1'');'
,p_column_linktext=>'#NRO_COMPROBANTE#'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10080093420251402)
,p_db_column_name=>'NRO_PLANILLA'
,p_display_order=>320
,p_column_identifier=>'AG'
,p_column_label=>'Nro Planilla'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10080181217251403)
,p_db_column_name=>'FECHA'
,p_display_order=>330
,p_column_identifier=>'AH'
,p_column_label=>'Fecha'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10080248292251404)
,p_db_column_name=>'FECHA_FINALIZA'
,p_display_order=>340
,p_column_identifier=>'AI'
,p_column_label=>'Fecha Finaliza'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10080331096251405)
,p_db_column_name=>'FEC_RELEASE'
,p_display_order=>350
,p_column_identifier=>'AJ'
,p_column_label=>'Fec Release'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10080407342251406)
,p_db_column_name=>'NRO_PLANILLA_REP'
,p_display_order=>360
,p_column_identifier=>'AK'
,p_column_label=>unistr('N\00B0 Planilla Ped.')
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10080553757251407)
,p_db_column_name=>'VCONFIRMADO'
,p_display_order=>370
,p_column_identifier=>'AL'
,p_column_label=>'Vconfirmado'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10080635669251408)
,p_db_column_name=>'VTIPO_ENTREGA'
,p_display_order=>380
,p_column_identifier=>'AM'
,p_column_label=>'Vtipo Entrega'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10080787350251409)
,p_db_column_name=>'VGUARDA'
,p_display_order=>390
,p_column_identifier=>'AN'
,p_column_label=>'Vguarda'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10080890636251410)
,p_db_column_name=>'V_ENTREGA_REMISION'
,p_display_order=>400
,p_column_identifier=>'AO'
,p_column_label=>'V Entrega Remision'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10081375728251415)
,p_db_column_name=>'OK'
,p_display_order=>420
,p_column_identifier=>'AQ'
,p_column_label=>'&nbsp'
,p_column_link=>'javascript:$s(''P22_NCI_VAR'',null),$s(''P22_VER_VAR'',''N''),$s(''P22_AUX_MUESTRA_CONFIRMA'',''1''),$s(''P22_AUX_NRO_COMPROBANTE'',''#NRO_COMPROBANTE#''),$s(''P22_AUX_TIP_COMPROBANTE'',''#TIP_COMPROBANTE#''),$s(''P22_AUX_SER_COMPROBANTE'',''#SER_COMPROBANTE#''),$s(''P22_A'
||'UX_COD_BLOQUE'',''#COD_BLOQUE#''),$s(''P22_AUX_EMPRESA_ORIGEN'',''#EMPRESA_ORIGEN#'');'
,p_column_linktext=>'#OK#'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10081442184251416)
,p_db_column_name=>'CG'
,p_display_order=>430
,p_column_identifier=>'AR'
,p_column_label=>'&nbsp'
,p_column_link=>'javascript:$s(''P22_TIP_COMPROBANTE_REP'',''#TIP_COMPROBANTE#''),$s(''P22_SER_COMPROBANTE_REP'',''#SER_COMPROBANTE#''),$s(''P22_NRO_COMPROBANTE_REP'',''#NRO_COMPROBANTE#''),$s(''P22_NRO_PLANILLA_REP'',''#NRO_PLANILLA#'');'
,p_column_linktext=>'#CG#'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10081571385251417)
,p_db_column_name=>'CERTIFICADO'
,p_display_order=>440
,p_column_identifier=>'AS'
,p_column_label=>'Cert. Gar.'
,p_column_link=>'javascript:$s(''P22_AUX_CERTIFICADO'',''#SEQ_ID#'');'
,p_column_linktext=>'#CERTIFICADO#'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10235050929605209)
,p_db_column_name=>'VTIPO_CG'
,p_display_order=>450
,p_column_identifier=>'AT'
,p_column_label=>'&nbsp'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10235305431605212)
,p_db_column_name=>'ESTADO_PREPA'
,p_display_order=>460
,p_column_identifier=>'AU'
,p_column_label=>'Flete Pedido'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10238156955605240)
,p_db_column_name=>'VGARANTIA'
,p_display_order=>470
,p_column_identifier=>'AV'
,p_column_label=>'Vgarantia'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11952815513734729)
,p_db_column_name=>'SEQ_ID'
,p_display_order=>480
,p_column_identifier=>'AW'
,p_column_label=>'Seq Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(9407387472568928)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'94074'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'OK:TIP_COMPROBANTE:SER_COMPROBANTE:NRO_COMPROBANTE:NOMBRE_CLIENTE:FECHA:ESTADO_PREPA:FLETE:DESC_BLOQUE:CONDICION:NRO_PLANILLA_REP:EMPRESA_ORIGEN:CERTIFICADO:CG:VTIPO_CG:'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(11963844640924254)
,p_report_id=>wwv_flow_imp.id(9407387472568928)
,p_name=>'SIN STOCK'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'ESTADO_PREPA'
,p_operator=>'='
,p_expr=>'CLIENTE RETIRA'
,p_condition_sql=>' (case when ("ESTADO_PREPA" = #APXWS_EXPR#) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# = ''CLIENTE RETIRA''  '
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_row_bg_color=>'#ffb0a8'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(11964220758924254)
,p_report_id=>wwv_flow_imp.id(9407387472568928)
,p_name=>'CAPITAL'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'ESTADO_PREPA'
,p_operator=>'='
,p_expr=>'CAPITAL'
,p_condition_sql=>' (case when ("ESTADO_PREPA" = #APXWS_EXPR#) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# = ''CAPITAL''  '
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_row_bg_color=>'#c0ffdf'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(11964675955924254)
,p_report_id=>wwv_flow_imp.id(9407387472568928)
,p_name=>'CONFIRMADO'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'ESTADO_PREPA'
,p_operator=>'='
,p_expr=>'CONFIRMADO'
,p_condition_sql=>' (case when ("ESTADO_PREPA" = #APXWS_EXPR#) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# = ''CONFIRMADO''  '
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_row_bg_color=>'#d0f1cc'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(11965056495924255)
,p_report_id=>wwv_flow_imp.id(9407387472568928)
,p_name=>'NCR'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'ESTADO_PREPA'
,p_operator=>'='
,p_expr=>'NCR'
,p_condition_sql=>' (case when ("ESTADO_PREPA" = #APXWS_EXPR#) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# = ''NCR''  '
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_row_bg_color=>'#deafff'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(11965490014924255)
,p_report_id=>wwv_flow_imp.id(9407387472568928)
,p_name=>'ANULADO'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'ESTADO_PREPA'
,p_operator=>'='
,p_expr=>'ANULACION'
,p_condition_sql=>' (case when ("ESTADO_PREPA" = #APXWS_EXPR#) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# = ''ANULACION''  '
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_row_bg_color=>'#616161'
,p_row_font_color=>'#f8f8f8'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(11965805849924255)
,p_report_id=>wwv_flow_imp.id(9407387472568928)
,p_name=>'GARANTIA'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'VGARANTIA'
,p_operator=>'='
,p_expr=>'G'
,p_condition_sql=>' (case when ("VGARANTIA" = #APXWS_EXPR#) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# = ''G''  '
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_row_bg_color=>'#ffdbc0'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(11966207005924256)
,p_report_id=>wwv_flow_imp.id(9407387472568928)
,p_name=>'GARANTIA ANT'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'VGARANTIA'
,p_operator=>'='
,p_expr=>'GN'
,p_condition_sql=>' (case when ("VGARANTIA" = #APXWS_EXPR#) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# = ''GN''  '
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_row_bg_color=>'#f0ffb4'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(11966623803924256)
,p_report_id=>wwv_flow_imp.id(9407387472568928)
,p_name=>'GUARDA'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'VGUARDA'
,p_operator=>'='
,p_expr=>'S'
,p_condition_sql=>' (case when ("VGUARDA" = #APXWS_EXPR#) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# = ''S''  '
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_row_bg_color=>'#cce5ff'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(11967084048924256)
,p_report_id=>wwv_flow_imp.id(9407387472568928)
,p_name=>'DM'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'IND_RELEASE'
,p_operator=>'='
,p_expr=>'S'
,p_condition_sql=>' (case when ("IND_RELEASE" = #APXWS_EXPR#) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# = ''S''  '
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_row_bg_color=>'#ffb7ef'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(11967493323924256)
,p_report_id=>wwv_flow_imp.id(9407387472568928)
,p_name=>'INTERIOR'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'ESTADO_PREPA'
,p_operator=>'='
,p_expr=>'INTERIOR'
,p_condition_sql=>' (case when ("ESTADO_PREPA" = #APXWS_EXPR#) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# = ''INTERIOR''  '
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_row_bg_color=>'#fff5ce'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(11967878890924257)
,p_report_id=>wwv_flow_imp.id(9407387472568928)
,p_name=>'CLIENTE FINAL'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'VTIPO_CG'
,p_operator=>'='
,p_expr=>'CF'
,p_condition_sql=>' (case when ("VTIPO_CG" = #APXWS_EXPR#) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# = ''CF''  '
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_column_bg_color=>'#ffcb2f'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(9421461521622724)
,p_plug_name=>'DETALLE'
,p_parent_plug_id=>wwv_flow_imp.id(8199061937907006)
,p_region_template_options=>'#DEFAULT#:js-dialog-autoheight:js-dialog-size720x480'
,p_plug_template=>wwv_flow_imp.id(40120082745263659)
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(9422522337622735)
,p_plug_name=>'Informe'
,p_parent_plug_id=>wwv_flow_imp.id(9421461521622724)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10082018059251422)
,p_plug_name=>'CONFIRMA'
,p_parent_plug_id=>wwv_flow_imp.id(8199061937907006)
,p_region_template_options=>'#DEFAULT#:js-dialog-autoheight:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(40120082745263659)
,p_plug_display_sequence=>40
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10082266619251424)
,p_plug_name=>'Confirmar Entrega'
,p_parent_plug_id=>wwv_flow_imp.id(10082018059251422)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(10082601104251428)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(10082266619251424)
,p_button_name=>'CANCELAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Cancelar'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(9422447763622734)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_imp.id(9422522337622735)
,p_button_name=>'SALIR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Salir'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(9513603347790510)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(9422522337622735)
,p_button_name=>'PANTALLA'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Pantalla'
,p_button_position=>'CREATE'
,p_button_redirect_url=>'f?p=&APP_ID.:23:&SESSION.::&DEBUG.:23:P23_COD_EMPRESA:&P22_COD_EMPRESA.'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(10082530773251427)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(10082266619251424)
,p_button_name=>'ACEPTAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Aceptar'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(13304231532033813)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(9422522337622735)
,p_button_name=>'LASER'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('L\00E1ser')
,p_button_position=>'CREATE'
,p_button_redirect_url=>'f?p=&APP_ID.:32:&SESSION.::&DEBUG.:32:P32_COD_EMPRESA:&P22_COD_EMPRESA.'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(9513898501790512)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(9422522337622735)
,p_button_name=>'REGISTRO_GARANTIA'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Registro de Garantia'
,p_button_position=>'CREATE'
,p_button_redirect_url=>'f?p=&APP_ID.:30:&SESSION.::&DEBUG.:30:P30_COD_EMPRESA,P30_COD_USUARIO:&P22_COD_EMPRESA.,&P22_COD_USUARIO.'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(9293415660889046)
,p_button_sequence=>170
,p_button_plug_id=>wwv_flow_imp.id(8199061937907006)
,p_button_name=>'ACTUALIZAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Actualizar'
,p_button_position=>'EDIT'
,p_button_execute_validations=>'N'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(21770148907343312)
,p_button_sequence=>180
,p_button_plug_id=>wwv_flow_imp.id(8199061937907006)
,p_button_name=>'LIMPIAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Limpiar'
,p_button_position=>'EDIT'
,p_button_execute_validations=>'N'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8199253951907008)
,p_name=>'P22_COD_SUCURAL'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(8199166847907007)
,p_prompt=>unistr('Dep\00F3sito')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8199337977907009)
,p_name=>'P22_COD_BLOQUE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(8199166847907007)
,p_prompt=>'Bloque'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT nombre, codigo_rapido',
'		FROM (SELECT a.cod_bloque codigo_rapido,',
'                     desc_bloque nombre',
'                FROM st_bloques a,  ST_BLOQUE_PRODUCTOS BL2',
'               WHERE a.cod_empresa = :P22_COD_EMPRESA',
'                 AND a.cod_sucursal = :P22_COD_SUCURAL',
'                 AND BL2.COD_EMPRESA = a.cod_empresa',
'                 AND bl2.cod_bloque= a.cod_bloque',
'                 AND BL2.COD_SUCURSAL = a.cod_sucursal',
'            GROUP BY a.cod_bloque ,desc_bloque',
'            UNION ALL',
'              SELECT ''SB'' , ''SIN BLOQUE''',
'                FROM dual',
'            UNION ALL',
'              SELECT ''T'' , ''TODOS'' ',
'                FROM dual )',
'GROUP BY codigo_rapido, nombre;'))
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8199445884907010)
,p_name=>'P22_EMPRESA_ORIGEN'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(8199166847907007)
,p_prompt=>'Empresa Origen'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LV_EMPRESA_ORIGEN_VTALPEDE'
,p_lov=>'.'||wwv_flow_imp.id(9391178600541207)||'.'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8199538915907011)
,p_name=>'P22_FEC_INICIAL'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(8199166847907007)
,p_prompt=>'Fecha Inicial'
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>30
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
 p_id=>wwv_flow_imp.id(8199604745907012)
,p_name=>'P22_FEC_FINAL'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(8199166847907007)
,p_prompt=>'Fecha Final'
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
 p_id=>wwv_flow_imp.id(8199725240907013)
,p_name=>'P22_TIPO'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(8199166847907007)
,p_prompt=>'Tipo'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LV_TIPO_VTALPEDE'
,p_lov=>'.'||wwv_flow_imp.id(9410519326581871)||'.'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
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
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8199977560907015)
,p_name=>'P22_RADIO_FECHA'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(8199166847907007)
,p_item_default=>'5'
,p_prompt=>'&nbsp'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>unistr('STATIC2:D\00EDa;1,Semana;2,Mes;3,A\00F1o;4,General;5')
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'5'
,p_attribute_02=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8200492975907020)
,p_name=>'P22_LOGO'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(8199166847907007)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9290366352889015)
,p_name=>'P22_COD_EMPRESA'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(8199166847907007)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9290401218889016)
,p_name=>'P22_NOM_EMPRESA'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(8199166847907007)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9290657195889018)
,p_name=>'P22_NOM_SUCURSAL'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(8199166847907007)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9290735491889019)
,p_name=>'P22_COD_MODULO'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(8199166847907007)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9290859207889020)
,p_name=>'P22_COD_USUARIO'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(8199166847907007)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9421679426622726)
,p_name=>'P22_TIP_COMPROBANTE_REP'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(9422522337622735)
,p_prompt=>'Tipo'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9421721996622727)
,p_name=>'P22_SER_COMPROBANTE_REP'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(9422522337622735)
,p_prompt=>'Serie'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9421813712622728)
,p_name=>'P22_NRO_COMPROBANTE_REP'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(9422522337622735)
,p_prompt=>'Nro. Comprobante'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9421942939622729)
,p_name=>'P22_NRO_PLANILLA_REP'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(9422522337622735)
,p_prompt=>'Nro. Planilla'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9422029143622730)
,p_name=>'P22_EMPRESA_ORIGEN_REP'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(9422522337622735)
,p_prompt=>'Empresa Origen'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10081657487251418)
,p_name=>'P22_AUX_MOSTRAR_DETALLE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(9421461521622724)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10082142639251423)
,p_name=>'P22_NCI_VAR'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(10082266619251424)
,p_prompt=>unistr('N\00B0 C.I.')
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>30
,p_colspan=>10
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10082325671251425)
,p_name=>'P22_VER_VAR'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(10082266619251424)
,p_prompt=>'Ver'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#:margin-top-md'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10082752519251429)
,p_name=>'P22_AUX_MUESTRA_CONFIRMA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(10082018059251422)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10083329845251435)
,p_name=>'P22_AUX_NRO_COMPROBANTE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(10082018059251422)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10083638759251438)
,p_name=>'P22_AUX_TIP_COMPROBANTE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(10082018059251422)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10083723320251439)
,p_name=>'P22_AUX_SER_COMPROBANTE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(10082018059251422)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10083947596251441)
,p_name=>'P22_AUX_COD_BLOQUE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(10082018059251422)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10084043557251442)
,p_name=>'P22_AUX_EMPRESA_ORIGEN'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(10082018059251422)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10234769136605206)
,p_name=>'P22_AUX_CERTIFICADO'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(8199166847907007)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10238484922605243)
,p_name=>'P22_FEC_COMPROBANTE_REP'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(9422522337622735)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11951421284734715)
,p_name=>'P22_AUX_NRO_PLANILLA'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(8199166847907007)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11951718415734718)
,p_name=>'P22_AUX_COD_CLIENTE'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_imp.id(8199166847907007)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11952399089734724)
,p_name=>'P22_AUX_VTIPO'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_imp.id(8199166847907007)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11952404900734725)
,p_name=>'P22_AUX_VCODVEND'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_imp.id(8199166847907007)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11952542084734726)
,p_name=>'P22_AUX_VCLIENTE'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_imp.id(8199166847907007)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11952694918734727)
,p_name=>'P22_AUX_MENSAJE'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_imp.id(8199166847907007)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13303010351033801)
,p_name=>'P22_AUX_IMPRIME_CERT'
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_imp.id(8199166847907007)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13303797462033808)
,p_name=>'P22_AUX_IMPRIME_REPS'
,p_item_sequence=>270
,p_item_plug_id=>wwv_flow_imp.id(8199166847907007)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(21769806890343309)
,p_name=>'P22_NRO_PLANILLA'
,p_item_sequence=>280
,p_item_plug_id=>wwv_flow_imp.id(8199166847907007)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(9290239602889014)
,p_validation_name=>'VA_FECHA'
,p_validation_sequence=>10
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF TO_DATE(:P22_FEC_FINAL) < TO_DATE(:P22_FEC_INICIAL) THEN',
'    RETURN FALSE;',
'ELSE',
'    RETURN TRUE;',
'END IF;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'La fecha final debe ser mayor a la fecha inicial.'
,p_associated_item=>wwv_flow_imp.id(8199604745907012)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(8200006956907016)
,p_name=>'DA_RADIO_FECHA'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P22_RADIO_FECHA'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(8200175375907017)
,p_event_id=>wwv_flow_imp.id(8200006956907016)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P22_RADIO_FECHA = 1 then',
'     :P22_FEC_INICIAL := TRUNC(SYSDATE) ;',
'     :P22_FEC_FINAL := TRUNC(SYSDATE)+1 ;',
'end if;',
'if :P22_RADIO_FECHA = 3 then',
'     :P22_FEC_INICIAL := to_date(''01/''||substr(to_char(SYSDATE,''dd/mm/yyyy''),4,10),''dd/mm/yyyy'') ;',
'     :P22_FEC_FINAL := last_day(add_months(SYSDATE,0)) ;',
'end if;',
'if :P22_RADIO_FECHA = 4 then',
'     :P22_FEC_INICIAL := to_date(''01/01/''||substr(to_char(SYSDATE,''dd/mm/yyyy''),7,10),''dd/mm/yyyy'') ;',
'     :P22_FEC_FINAL    := to_date(''31/12/''||substr(to_char(SYSDATE,''dd/mm/yyyy''),7,10),''dd/mm/yyyy'') ;',
'end if;',
'if :P22_RADIO_FECHA = 2 then',
'     :P22_FEC_INICIAL := trunc(sysdate)-to_char(sysdate,''D'') ;',
'     :P22_FEC_FINAL    :=  trunc(sysdate)+1 ;',
'end if;',
'if :P22_RADIO_FECHA = 5 then',
'     :P22_FEC_INICIAL := to_date(''01/01/2000'',''dd/mm/yyyy'') ; ',
'     :P22_FEC_FINAL   := SYSDATE+1 ;',
'end if;'))
,p_attribute_02=>'P22_RADIO_FECHA'
,p_attribute_03=>'P22_FEC_INICIAL,P22_FEC_FINAL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(9293834550889050)
,p_name=>'DA_ACTUALIZAR'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(9293415660889046)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10081217429251414)
,p_event_id=>wwv_flow_imp.id(9293834550889050)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'VTALPEDE.CARGAR_REPORTE(P_COD_SUCURSAL    => :P22_COD_SUCURAL,',
'  						P_COD_EMPRESA     => :P22_COD_EMPRESA,',
'   						P_EMPRESA_ORIGEN  => :P22_EMPRESA_ORIGEN,',
'   						P_COD_BLOQUE      => :P22_COD_BLOQUE,',
'   						P_TIPO            => :P22_TIPO, ',
'   						P_FEC_INICIAL     => :P22_FEC_INICIAL, ',
'   						P_FEC_FINAL       => :P22_FEC_FINAL,',
'                        P_NRO_PLANILLA    => TO_NUMBER(:P22_NRO_PLANILLA));'))
,p_attribute_02=>'P22_COD_SUCURAL,P22_COD_EMPRESA,P22_EMPRESA_ORIGEN,P22_COD_BLOQUE,P22_TIPO,P22_FEC_INICIAL,P22_FEC_FINAL'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9419149681622701)
,p_event_id=>wwv_flow_imp.id(9293834550889050)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(9290902695889021)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(9422981961622739)
,p_name=>'DA_CERRAR'
,p_event_sequence=>60
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(9422447763622734)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10510037429236750)
,p_event_id=>wwv_flow_imp.id(9422981961622739)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'APEX_COLLECTION.TRUNCATE_COLLECTION(p_collection_name => ''DETALLE'');',
'APEX_COLLECTION.TRUNCATE_COLLECTION(p_collection_name => ''REGISTRO_GARANTIA'');  '))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9423053847622740)
,p_event_id=>wwv_flow_imp.id(9422981961622739)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(9421461521622724)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(10081782898251419)
,p_name=>'DA_MOSTRAR_DETALLE'
,p_event_sequence=>80
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P22_AUX_MOSTRAR_DETALLE'
,p_condition_element=>'P22_AUX_MOSTRAR_DETALLE'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'1'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10235486382605213)
,p_event_id=>wwv_flow_imp.id(10081782898251419)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    SELECT  C002, 	',
'    		C003, ',
'    		C004,                         ',
'    		C007,',
'            C009, 	',
'    		C019 ',
'      INTO :P22_TIP_COMPROBANTE_REP,',
'           :P22_SER_COMPROBANTE_REP,',
'           :P22_NRO_COMPROBANTE_REP,',
'           :P22_NRO_PLANILLA_REP,',
'           :P22_FEC_COMPROBANTE_REP,',
'           :P22_EMPRESA_ORIGEN_REP     ',
'      FROM APEX_COLLECTIONS',
'      WHERE COLLECTION_NAME = ''REPORTE_FACTURAS''',
'        AND C002 = :P22_TIP_COMPROBANTE_REP',
'        AND C003 = :P22_SER_COMPROBANTE_REP',
'        AND C004 = :P22_NRO_COMPROBANTE_REP',
'        AND C019 = :P22_EMPRESA_ORIGEN_REP;',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        NULL;',
'END;   ',
'',
'BEGIN',
'    APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(P_COLLECTION_NAME => ''DETALLE'');',
'    APEX_COLLECTION.ADD_MEMBER (P_COLLECTION_NAME => ''DETALLE'',',
'                                           P_C001 => :P22_TIP_COMPROBANTE_REP,',
'                                           P_C002 => :P22_SER_COMPROBANTE_REP,',
'                                           P_C003 => :P22_NRO_COMPROBANTE_REP,',
'                                           P_C004 => :P22_NRO_PLANILLA_REP,',
'                                           P_C005 => :P22_EMPRESA_ORIGEN_REP,',
'                                           P_C006 => :P22_FEC_COMPROBANTE_REP,',
'                                           P_C007 => :P22_COD_EMPRESA); ',
'END;',
'BEGIN',
'    APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(P_COLLECTION_NAME => ''REGISTRO_GARANTIA'');',
'    APEX_COLLECTION.ADD_MEMBER (P_COLLECTION_NAME => ''REGISTRO_GARANTIA'',',
'                                           P_C001 => :P22_TIP_COMPROBANTE_REP,',
'                                           P_C002 => :P22_SER_COMPROBANTE_REP,',
'                                           P_C003 => TO_CHAR(:P22_NRO_COMPROBANTE_REP),',
'                                           P_C004 => :P22_COD_SUCURAL,',
'                                           P_C006 => NVL(:P22_COD_USUARIO,:APP_USER));  ',
'END;',
'',
'                                          '))
,p_attribute_02=>'P22_EMPRESA_ORIGEN_REP,P22_TIP_COMPROBANTE_REP,P22_SER_COMPROBANTE_REP,P22_NRO_COMPROBANTE_REP'
,p_attribute_03=>'P22_TIP_COMPROBANTE_REP,P22_SER_COMPROBANTE_REP,P22_NRO_COMPROBANTE_REP,P22_NRO_PLANILLA_REP,P22_EMPRESA_ORIGEN_REP'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10081808465251420)
,p_event_id=>wwv_flow_imp.id(10081782898251419)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(9421461521622724)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10081919063251421)
,p_event_id=>wwv_flow_imp.id(10081782898251419)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(9421461521622724)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10083036634251432)
,p_event_id=>wwv_flow_imp.id(10081782898251419)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P22_AUX_MOSTRAR_DETALLE := 2;'
,p_attribute_03=>'P22_AUX_MOSTRAR_DETALLE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(10082866828251430)
,p_name=>'DA_MOSTRAR_CONFIRMA'
,p_event_sequence=>90
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P22_AUX_MUESTRA_CONFIRMA'
,p_condition_element=>'P22_AUX_NRO_COMPROBANTE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10236444874605223)
,p_event_id=>wwv_flow_imp.id(10082866828251430)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    SELECT  C002, 	',
'    		C003, ',
'    		C004,                         ',
'    		C010, 	',
'    		C019 ',
'      INTO :P22_AUX_TIP_COMPROBANTE,',
'           :P22_AUX_SER_COMPROBANTE,',
'           :P22_AUX_NRO_COMPROBANTE,',
'           :P22_AUX_COD_BLOQUE,',
'           :P22_AUX_EMPRESA_ORIGEN',
'      FROM APEX_COLLECTIONS',
'      WHERE COLLECTION_NAME = ''REPORTE_FACTURAS''',
'        AND C002 = :P22_AUX_TIP_COMPROBANTE',
'        AND C003 = :P22_AUX_SER_COMPROBANTE',
'        AND C004 = :P22_AUX_NRO_COMPROBANTE',
'        AND C010 = :P22_AUX_COD_BLOQUE',
'        AND C019 = :P22_AUX_EMPRESA_ORIGEN;',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        NULL;',
'END;                ',
'				'))
,p_attribute_02=>'P22_AUX_COD_BLOQUE,P22_AUX_EMPRESA_ORIGEN,P22_AUX_TIP_COMPROBANTE,P22_AUX_SER_COMPROBANTE,P22_AUX_NRO_COMPROBANTE'
,p_attribute_03=>'P22_AUX_TIP_COMPROBANTE,P22_AUX_SER_COMPROBANTE,P22_AUX_NRO_COMPROBANTE,P22_AUX_COD_BLOQUE,P22_AUX_EMPRESA_ORIGEN'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10082965338251431)
,p_event_id=>wwv_flow_imp.id(10082866828251430)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(10082018059251422)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P22_AUX_MUESTRA_CONFIRMA'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10083225313251434)
,p_event_id=>wwv_flow_imp.id(10082866828251430)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(10082018059251422)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P22_AUX_MUESTRA_CONFIRMA'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10083198385251433)
,p_event_id=>wwv_flow_imp.id(10082866828251430)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P22_AUX_MUESTRA_CONFIRMA := 2;'
,p_attribute_03=>'P22_AUX_MUESTRA_CONFIRMA'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P22_AUX_MUESTRA_CONFIRMA'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(10083411260251436)
,p_name=>'DA_ACEPTAR'
,p_event_sequence=>100
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(10082530773251427)
,p_condition_element=>'P22_NCI_VAR'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10083501317251437)
,p_event_id=>wwv_flow_imp.id(10083411260251436)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    VTALPEDE.confirma_entrega(P_EMPRESA_ORIGEN  => :P22_AUX_EMPRESA_ORIGEN,',
'                              P_COD_EMPRESA     => :P22_COD_EMPRESA,',
'                              P_TIP_COMPROBANTE => :P22_AUX_TIP_COMPROBANTE,',
'                              P_SER_COMPROBANTE => :P22_AUX_SER_COMPROBANTE,',
'                              P_NRO_COMPROBANTE => :P22_AUX_NRO_COMPROBANTE,',
'                              P_NCI_VAR         => :P22_NCI_VAR,',
'                              P_COD_BLOQUE      => :P22_AUX_COD_BLOQUE,',
'                              P_COD_USUARIO     => :P22_COD_USUARIO);',
'END;',
''))
,p_attribute_02=>'P22_AUX_EMPRESA_ORIGEN,P22_COD_EMPRESA,P22_AUX_TIP_COMPROBANTE,P22_AUX_SER_COMPROBANTE,P22_AUX_NRO_COMPROBANTE,P22_NCI_VAR,P22_AUX_COD_BLOQUE'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10084127509251443)
,p_event_id=>wwv_flow_imp.id(10083411260251436)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'Debe cargar en numero de Cedula de Identidad del Operador que registra la carga.'
,p_attribute_02=>'Error'
,p_attribute_03=>'warning'
,p_attribute_04=>'fa-warning'
,p_attribute_06=>'Aceptar'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10084225966251444)
,p_event_id=>wwv_flow_imp.id(10083411260251436)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(10082018059251422)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10235872250605217)
,p_event_id=>wwv_flow_imp.id(10083411260251436)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>unistr('apex.message.showPageSuccess(''El registro se actualiz\00F3 correctamente.'');')
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10236581388605224)
,p_event_id=>wwv_flow_imp.id(10083411260251436)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P22_AUX_NRO_COMPROBANTE := null;',
':P22_AUX_TIP_COMPROBANTE := null;',
':P22_AUX_SER_COMPROBANTE := null;',
':P22_AUX_COD_BLOQUE := null;',
':P22_AUX_EMPRESA_ORIGEN := null;'))
,p_attribute_03=>'P22_AUX_NRO_COMPROBANTE,P22_AUX_TIP_COMPROBANTE,P22_AUX_SER_COMPROBANTE,P22_AUX_COD_BLOQUE,P22_AUX_EMPRESA_ORIGEN'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10084668951251448)
,p_event_id=>wwv_flow_imp.id(10083411260251436)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(9290902695889021)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(10084329117251445)
,p_name=>'DA_CANCELAR'
,p_event_sequence=>110
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(10082601104251428)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10084434548251446)
,p_event_id=>wwv_flow_imp.id(10084329117251445)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(10082018059251422)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10236693880605225)
,p_event_id=>wwv_flow_imp.id(10084329117251445)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P22_AUX_NRO_COMPROBANTE := null;',
':P22_AUX_TIP_COMPROBANTE := null;',
':P22_AUX_SER_COMPROBANTE := null;',
':P22_AUX_COD_BLOQUE := null;',
':P22_AUX_EMPRESA_ORIGEN := null;'))
,p_attribute_03=>'P22_AUX_NRO_COMPROBANTE,P22_AUX_TIP_COMPROBANTE,P22_AUX_SER_COMPROBANTE,P22_AUX_COD_BLOQUE,P22_AUX_EMPRESA_ORIGEN'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(10084750504251449)
,p_name=>'DA_MOSTRAR_OCULTAR'
,p_event_sequence=>120
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P22_VER_VAR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10084816107251450)
,p_event_id=>wwv_flow_imp.id(10084750504251449)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'mostrar_ocultar();'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(10234859094605207)
,p_name=>'DA_CERTIFICADO'
,p_event_sequence=>130
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P22_AUX_CERTIFICADO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10234970080605208)
,p_event_id=>wwv_flow_imp.id(10234859094605207)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('--WHEN-BUTTON-PRESED DEL REPORTE, BOT\00D3N CERTIFICADO.'),
'DECLARE',
'    VTIP_COMPROBANTE VARCHAR2(10);',
'    VSER_COMPROBANTE VARCHAR2(10);',
'    VNRO_COMPROBANTE NUMBER;',
'BEGIN',
'    :P22_AUX_IMPRIME_REPS := 2;',
'    :P22_AUX_IMPRIME_CERT := 2; ',
'    :P22_AUX_MENSAJE := null;',
'',
'    SELECT C002, C003, C004',
'      INTO :P22_AUX_TIP_COMPROBANTE, :P22_AUX_SER_COMPROBANTE, :P22_AUX_NRO_COMPROBANTE  ',
'      FROM APEX_COLLECTIONS ',
'     WHERE COLLECTION_NAME =  ''REPORTE_FACTURAS''',
'       AND SEQ_ID = :P22_AUX_CERTIFICADO;',
' ',
'    VTALPEDE.CONDICIONES_EJECUTA_REPORTE(P_COD_EMPRESA      => :P22_COD_EMPRESA,',
'                                         P_TIP_COMPROBANTE  => :P22_AUX_TIP_COMPROBANTE,',
'                                         P_SER_COMPROBANTE  => :P22_AUX_SER_COMPROBANTE,',
'                                         P_NRO_COMPROBANTE  => :P22_AUX_NRO_COMPROBANTE,',
'                                         P_VTIPO            => :P22_AUX_VTIPO,',
'                                         P_VCODVEND         => :P22_AUX_VCODVEND,',
'                                         P_VCLIENTE         => :P22_AUX_VCLIENTE);',
'    --APEX_DEBUG.ERROR(''vtipo: ''||:P22_AUX_VTIPO||''vcondven: ''||:P22_AUX_VCODVEND||''vcliente: ''||:P22_AUX_VCLIENTE) ;    ',
'    --APEX_DEBUG.ERROR(''tip: ''||:P22_AUX_TIP_COMPROBANTE||''ser: ''||:P22_AUX_SER_COMPROBANTE||''nro: ''||:P22_AUX_NRO_COMPROBANTE) ;                           ',
'    ',
'    IF :P22_AUX_VTIPO = ''S'' THEN',
'        :P22_AUX_NRO_PLANILLA := VTALPEDE.NRO_PLANILLA(P_COD_EMPRESA      => :P22_COD_EMPRESA,',
'                                                       P_TIP_COMPROBANTE  => :P22_AUX_TIP_COMPROBANTE,',
'                                                       P_SER_COMPROBANTE  => :P22_AUX_SER_COMPROBANTE,',
'                                                       P_NRO_COMPROBANTE  => :P22_AUX_NRO_COMPROBANTE);',
'',
'        --APEX_DEBUG.ERROR(''PLANILLA: ''||:P22_AUX_NRO_PLANILLA) ;                                                ',
'        IF :P22_AUX_NRO_PLANILLA IS NOT NULL THEN',
'            --APEX_DEBUG.ERROR(''LLAMA REPORTE'') ;     ',
'            :P22_AUX_IMPRIME_CERT := 1; --LLAMA A CERTIFICADO',
'        ELSE',
'            --APEX_DEBUG.ERROR(''NO LLAMA REPORTE'') ; ',
unistr('            :P22_AUX_MENSAJE := ''No se ha encontrado un n\00FAmero de planilla para ese pedido'';'),
unistr('            --NULL;--RAISE_APPLICATION_ERROR(-20000, ''No se ha encontrado un n\00FAmero de planilla para ese pedido.'');'),
'        END IF;          ',
'',
'        IF :P22_AUX_VCODVEND IN (''193'',''194'',''196'',''197'') THEN',
'            DECLARE',
'            	DUMMY CHAR;',
'            BEGIN',
'                SELECT DISTINCT ''1''',
'                  INTO DUMMY',
'                  FROM inv.st_prestamo_prod',
'                 WHERE cod_empresa = :P22_COD_EMPRESA',
'                   AND tip_comprobante_ref = :P22_AUX_TIP_COMPROBANTE',
'                   AND ser_comprobante_ref = :P22_AUX_SER_COMPROBANTE',
'                   AND nro_comprobante_ref = :P22_AUX_NRO_COMPROBANTE;',
'                --APEX_DEBUG.ERROR(''LLAMA REPORTE vtremprest Y vtcndprt '') ;  ',
'                :P22_AUX_IMPRIME_REPS := 1;--LLAMA A LOS REPORTES vtremprest Y vtcndprt   ',
'            EXCEPTION',
'                WHEN OTHERS THEN',
'                    --APEX_DEBUG.ERROR(''NO LLAMA REPORTE vtremprest Y vtcndprt '') ;',
'                    null;--RAISE_APPLICATION_ERROR(-20000, ''Ha ocurrido un error al ejecutar el reporte. ''|| sqlerrm);',
'            END;  ',
'        END IF;     ',
'    ELSE ',
'        :P22_AUX_MENSAJE := ''Certificado solo para cliente final'';     ',
'    END IF;                                              ',
'EXCEPTION',
'    WHEN OTHERS THEN',
unistr('        :P22_AUX_MENSAJE := ''Ha ocurrido un error en la ejecuci\00F3n de reportes.'';   '),
'END;         '))
,p_attribute_02=>'P22_AUX_CERTIFICADO,P22_COD_EMPRESA,P22_AUX_TIP_COMPROBANTE,P22_AUX_SER_COMPROBANTE,P22_AUX_NRO_COMPROBANTE,P22_AUX_VTIPO,P22_AUX_VCODVEND,P22_AUX_VCLIENTE'
,p_attribute_03=>'P22_AUX_IMPRIME_REPS,P22_AUX_IMPRIME_CERT,P22_AUX_MENSAJE,P22_AUX_TIP_COMPROBANTE,P22_AUX_SER_COMPROBANTE,P22_AUX_NRO_COMPROBANTE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
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
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11952703169734728)
,p_event_id=>wwv_flow_imp.id(10234859094605207)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P22_AUX_MENSAJE..'
,p_attribute_02=>unistr('Atenci\00F3n')
,p_attribute_03=>'warning'
,p_attribute_04=>'fa-warning'
,p_attribute_06=>'Aceptar'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P22_AUX_MENSAJE'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(13304108420033812)
,p_event_id=>wwv_flow_imp.id(10234859094605207)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'//REPORTE STGARPROCER',
'doDescarga(apex.item(''P22_COD_EMPRESA'').getValue(),apex.item(''P22_AUX_NRO_PLANILLA'').getValue(),apex.item(''P22_AUX_COD_CLIENTE'').getValue());',
'//doDescarga(apex.item(''P22_COD_EMPRESA'').getValue(),994163,apex.item(''P22_AUX_COD_CLIENTE'').getValue()); //test'))
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P22_AUX_IMPRIME_CERT'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(13304003764033811)
,p_event_id=>wwv_flow_imp.id(10234859094605207)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'//reporte VTCNDPRT  ',
'//doDescarga1(apex.item(''P22_COD_EMPRESA'').getValue(),''FCR'',''C1'',188378); //test',
'doDescarga1(apex.item(''P22_COD_EMPRESA'').getValue(),apex.item(''P22_AUX_TIP_COMPROBANTE'').getValue(),apex.item(''P22_AUX_SER_COMPROBANTE'').getValue(),apex.item(''P22_AUX_NRO_COMPROBANTE'').getValue());',
'',
'//REPORTES VTREMPREST ',
'//doDescarga2(apex.item(''P22_COD_EMPRESA'').getValue(),''FCR'',''C1'',189909); //test',
'doDescarga2(apex.item(''P22_COD_EMPRESA'').getValue(),apex.item(''P22_AUX_TIP_COMPROBANTE'').getValue(),apex.item(''P22_AUX_SER_COMPROBANTE'').getValue(),apex.item(''P22_AUX_NRO_COMPROBANTE'').getValue());',
''))
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P22_AUX_IMPRIME_REPS'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(10236787357605226)
,p_name=>'DA_TIP_COMPROBANTE_REP'
,p_event_sequence=>150
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P22_TIP_COMPROBANTE_REP'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10236824421605227)
,p_event_id=>wwv_flow_imp.id(10236787357605226)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P22_TIP_COMPROBANTE_REP'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(10236945489605228)
,p_name=>'DA_SER_COMPROBANTE_REP'
,p_event_sequence=>160
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P22_SER_COMPROBANTE_REP'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10237020394605229)
,p_event_id=>wwv_flow_imp.id(10236945489605228)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P22_SER_COMPROBANTE_REP'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(10237138571605230)
,p_name=>'DA_NRO_COMPROBANTE_REP'
,p_event_sequence=>170
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P22_NRO_COMPROBANTE_REP'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10237247976605231)
,p_event_id=>wwv_flow_imp.id(10237138571605230)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P22_NRO_COMPROBANTE_REP'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(10237348020605232)
,p_name=>'DA_NRO_PLANILLA_REP'
,p_event_sequence=>180
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P22_NRO_PLANILLA_REP'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10237479375605233)
,p_event_id=>wwv_flow_imp.id(10237348020605232)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P22_NRO_PLANILLA_REP'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(10237530410605234)
,p_name=>'DA_EMPRESA_ORIGEN_REP'
,p_event_sequence=>190
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P22_EMPRESA_ORIGEN_REP'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10237658275605235)
,p_event_id=>wwv_flow_imp.id(10237530410605234)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P22_EMPRESA_ORIGEN_REP'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(10238513593605244)
,p_name=>'DA_FEC_COMPROBANTE_REP'
,p_event_sequence=>200
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P22_FEC_COMPROBANTE_REP'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10238651618605245)
,p_event_id=>wwv_flow_imp.id(10238513593605244)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P22_FEC_COMPROBANTE_REP'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(11950315045734704)
,p_name=>'DA_COLOR_CF'
,p_event_sequence=>210
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11950415518734705)
,p_event_id=>wwv_flow_imp.id(11950315045734704)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.jQuery("span[data-style]").each(',
'    function(){',
'        apex.jQuery(this).parent().attr( ''style'', apex.jQuery(this).attr(''data-style''));',
'    }',
');'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(11950540742734706)
,p_name=>'DA_REFRESH_CF'
,p_event_sequence=>220
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(9290902695889021)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterrefresh'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11950624164734707)
,p_event_id=>wwv_flow_imp.id(11950540742734706)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.jQuery("span[data-style]").each(function(){',
'    apex.jQuery(this).parent().attr( ''style'', apex.jQuery(this).attr(''data-style''));',
'});'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(21769965019343310)
,p_name=>'New'
,p_event_sequence=>230
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P22_NRO_PLANILLA'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(21770028651343311)
,p_event_id=>wwv_flow_imp.id(21769965019343310)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'null;'
,p_attribute_02=>'P22_NRO_PLANILLA'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(21770642057343317)
,p_name=>'DA_LIMPIAR'
,p_event_sequence=>240
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(21770148907343312)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(21770717691343318)
,p_event_id=>wwv_flow_imp.id(21770642057343317)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P22_NRO_PLANILLA,P22_COD_BLOQUE,P22_EMPRESA_ORIGEN,P22_TIPO,P22_FEC_INICIAL,P22_FEC_FINAL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(21770583650343316)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'CLEAR_SESSION'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_process_when=>'P22_NRO_PLANILLA'
,p_process_when_type=>'ITEM_IS_NULL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(8200303128907019)
,p_process_sequence=>20
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_INIT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'--PRE-FORM',
':P_COD_USUARIO := NVL(:P_COD_USUARIO, :APP_USER); ',
':P_COD_EMPRESA := NVL(:P_COD_EMPRESA, ''1'');',
':P_COD_SUCURSAL := NVL(:P_COD_SUCURSAL, ''190'');',
':P_COD_MODULO := ''VT'' ;',
'',
':P22_LOGO := ''Impresion de Pedidos'';',
'',
'--INICIALIZA GLOBALES',
':P_NOM_EMPRESA := NVL(:P_NOM_EMPRESA, NULL);',
':P_NOM_SUCURSAL := NVL(:P_NOM_SUCURSAL, ''190'');',
'',
'--Almacena los valores en variables locales',
':P22_COD_USUARIO  := :APP_USER;',
':P22_COD_EMPRESA  := :P_COD_EMPRESA;',
':P22_NOM_EMPRESA  := :P_NOM_EMPRESA;',
':P22_COD_SUCURAL  := :P_COD_SUCURSAL;',
':P22_NOM_SUCURSAL := :P_NOM_SUCURSAL;',
':P22_COD_MODULO   := :P_COD_MODULO;',
'',
'--WHEN-NEW-FORM-INSTANCE',
':P22_RADIO_FECHA := 1;',
':P22_FEC_INICIAL := TRUNC(SYSDATE) ;',
':P22_FEC_FINAL := TRUNC(SYSDATE)+1 ;',
':P22_TIPO :=''PR'';',
'',
'VTALPEDE.CARGAR_REPORTE(P_COD_SUCURSAL    => :P22_COD_SUCURAL,',
'  						P_COD_EMPRESA     => :P22_COD_EMPRESA,',
'   						P_EMPRESA_ORIGEN  => :P22_EMPRESA_ORIGEN,',
'   						P_COD_BLOQUE      => :P22_COD_BLOQUE,',
'   						P_TIPO            => :P22_TIPO, ',
'   						P_FEC_INICIAL     => :P22_FEC_INICIAL, ',
'   						P_FEC_FINAL       => :P22_FEC_FINAL,',
'                        P_NRO_PLANILLA    => TO_NUMBER(:P22_NRO_PLANILLA));',
'',
'DECLARE',
'   VEXISTS1 BOOLEAN;',
'   VEXISTS2 BOOLEAN;',
'BEGIN ',
'    VEXISTS1 := APEX_COLLECTION.COLLECTION_EXISTS ( p_collection_name => ''DETALLE'');',
'    VEXISTS2 := APEX_COLLECTION.COLLECTION_EXISTS ( p_collection_name => ''REGISTRO_GARANTIA'');',
'    ',
'    IF VEXISTS1 THEN',
'        APEX_COLLECTION.TRUNCATE_COLLECTION(p_collection_name => ''DETALLE'');',
'    END IF;',
'',
'    IF VEXISTS2 THEN',
'        APEX_COLLECTION.TRUNCATE_COLLECTION(p_collection_name => ''REGISTRO_GARANTIA'');',
'    END IF;',
'END; ',
'',
''))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp.component_end;
end;
/
