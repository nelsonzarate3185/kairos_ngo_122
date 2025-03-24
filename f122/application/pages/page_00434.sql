prompt --application/pages/page_00434
begin
--   Manifest
--     PAGE: 00434
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
 p_id=>434
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Gestion de Visitas  - CAGESVIS'
,p_alias=>'GESTION-DE-VISITAS-CAGESVIS'
,p_step_title=>'Gestion de Visitas  - CAGESVIS'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function validateNumber(event) {',
'  var keyCode = event.keyCode;',
unistr('  var excludedKeys = [8, 37, 39, 46];//Teclas extra que queremos que el campo acepte aparte de los n\00FAmeros, como el backspace'),
unistr('//Realizamos la validaci\00F3n de la tecla ingresada'),
'  if (!((keyCode >= 48 && keyCode <= 57) ||',
'      (keyCode >= 96 && keyCode <= 105) ||',
'      (excludedKeys.includes(keyCode)))) {',
'    event.preventDefault();',
'',
'  }',
'}',
'',
'function doDisable_Enable(){',
'var vControl = apex.item(''P434_REALIZADO'').getValue();',
'var vControl2 = apex.item(''P434_V_CONTROL'').getValue();',
'//alert(vControl);',
'if (vControl != "P"){',
'    apex.item(''P434_COD_TECNICO'').disable();',
'    apex.item(''P434_COD_CLIENTE'').disable();',
'    apex.item(''P434_FEC_VISITA'').disable();',
'    apex.item(''P434_HORA'').disable();',
'    apex.item(''P434_MINU'').disable();',
'    apex.item(''P434_DIA'').disable();',
'    apex.item(''P434_COD_MOTIVO_VISITA'').disable();',
'    apex.item(''P434_CONTACTO'').disable();',
'    apex.item(''P434_DIRECCION'').disable();',
'    apex.item(''P434_COD_PROVINCIA'').disable();',
'    apex.item(''P434_COD_CIUDAD'').disable();',
'    apex.item(''P434_COD_BARRIO'').disable();',
'    apex.item(''P434_COORDENADAS'').disable();',
'    apex.item(''P434_ES_REAGENDA'').disable();',
'    apex.item(''P434_OBSERVACION'').disable();',
'    apex.item(''P434_REALIZADO'').disable();',
'    document.getElementById("BTFIN").disabled = true;',
'    document.getElementById("BTCAN").disabled = true;    ',
'}else{',
'  ',
'   apex.item(''P434_COD_TECNICO'').enable();',
'   apex.item(''P434_COD_CLIENTE'').enable();',
'   apex.item(''P434_FEC_VISITA'').enable();',
'   apex.item(''P434_HORA'').enable();',
'   apex.item(''P434_MINU'').enable();',
'   apex.item(''P434_DIA'').enable();',
'   apex.item(''P434_COD_MOTIVO_VISITA'').enable();',
'   apex.item(''P434_CONTACTO'').enable();',
'   apex.item(''P434_DIRECCION'').enable();',
'   apex.item(''P434_COD_PROVINCIA'').enable();',
'   apex.item(''P434_COD_CIUDAD'').enable();',
'   apex.item(''P434_COD_BARRIO'').enable();',
'   apex.item(''P434_COORDENADAS'').enable();',
'   apex.item(''P434_ES_REAGENDA'').enable();',
'   apex.item(''P434_OBSERVACION'').enable();',
'   apex.item(''P434_REALIZADO'').enable();',
'   document.getElementById("BTFIN").disabled = false;',
'   document.getElementById("BTCAN").disabled = false;',
' }',
' if (vControl2 != "1"||vControl != "P"){',
'    apex.item(''P434_REALIZADO'').disable();',
'    document.getElementById("BTFIN").disabled = true;',
'    document.getElementById("BTCAN").disabled = true;    ',
'}else{',
'   apex.item(''P434_REALIZADO'').enable();',
'   document.getElementById("BTFIN").disabled = false;',
'   document.getElementById("BTCAN").disabled = false;',
' }',
'}'))
,p_javascript_code_onload=>'doDisable_Enable();'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.ui-dialog{',
'    width: 1200px !important;',
'    }',
'',
'',
'.t-Body-content{',
'   background-color:  #d0e0f783!important;}',
'',
'#calendario{    ',
'  background-color: #487ab8  !important;',
'} ',
'.t-Form-label  {',
'  color: darkblue  !important;',
'  border-color: #003a85 !important;',
'}',
'',
'',
'.display_only, .apex-item-display-only',
'{',
'    font-weight: bold !important;',
'    border-style: solid !important;',
'    background-color: white  !important;',
'',
'}',
'',
'.a-IRR-header  a , #checktext , .a-IRR-headerLink{color: darkblue; }',
'.a-IRR-header , .a-IRR-headerLink{   background-color: #FFFB7D; ',
'                                    background-image: #FFFB7D; ',
'}',
''))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'JUANSA'
,p_last_upd_yyyymmddhh24miss=>'20240918155330'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(126308675720686831)
,p_plug_name=>'Registro de Visita  - CAGESVIS'
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>1010
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(128433970265744721)
,p_plug_name=>'Contenedor 1'
,p_parent_plug_id=>wwv_flow_imp.id(126308675720686831)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(128436819571744750)
,p_plug_name=>'Contenedor 1.3'
,p_parent_plug_id=>wwv_flow_imp.id(128433970265744721)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>230
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(128434030987744722)
,p_plug_name=>'Contenedor 2'
,p_region_name=>'calendario'
,p_parent_plug_id=>wwv_flow_imp.id(126308675720686831)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>40
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(128516036439228233)
,p_plug_name=>'COLEC_CA_GESTIONES_VISITAS'
,p_parent_plug_id=>wwv_flow_imp.id(128434030987744722)
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT seq_id SEQ_ID,',
'       c001 DIA,',
'       c002 FEC_VISITA,',
'       c003 HORA_VISITA,',
'       c004 COMPROBANTE,',
'       c005 NRO_MOVIMIENTO,',
'       c006 TIP_COMPROBANTE,',
'       c007 SER_COMPROBANTE,',
'       c008 NRO_COMPROBANTE,',
'       c009 CONTACTO,',
'       c010 DIRECCION,',
'       c011 ||'' ''||c012 FEC_AGENDADA,',
'      --- c012 HORA_AGENDADA,',
'       c013 OBSERVACION,',
'       c014 COORDENADAS,',
'       c015 VISITA,',
'       c016 COD_MOVITO_VISITA,',
'       NULL DETALLE',
'  FROM APEX_COLLECTIONS',
' WHERE COLLECTION_NAME = ''COLEC_CA_GESTIONES_VISITAS'''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'COLEC_CA_GESTIONES_VISITAS'
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
 p_id=>wwv_flow_imp.id(128516218575228235)
,p_max_row_count=>'1000000'
,p_no_data_found_message=>'No se encontraron registros.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_search_bar=>'N'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_enable_mail_download=>'Y'
,p_owner=>'DFINO'
,p_internal_uid=>128516218575228235
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(128516331593228236)
,p_db_column_name=>'SEQ_ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Seq Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(128516433157228237)
,p_db_column_name=>'DIA'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>unistr('D\00EDa')
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(128516532739228238)
,p_db_column_name=>'FEC_VISITA'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Fecha Visita'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(128516623965228239)
,p_db_column_name=>'HORA_VISITA'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Hora Visita'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(128516748718228240)
,p_db_column_name=>'COMPROBANTE'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Comprobante'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(129089833995898115)
,p_db_column_name=>'NRO_MOVIMIENTO'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Nro Movimiento'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(129089914505898116)
,p_db_column_name=>'TIP_COMPROBANTE'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Tip Comprobante'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(129090086575898117)
,p_db_column_name=>'SER_COMPROBANTE'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Ser Comprobante'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(129090132602898118)
,p_db_column_name=>'NRO_COMPROBANTE'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Nro Comprobante'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(129090267221898119)
,p_db_column_name=>'CONTACTO'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Contacto'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(129090325630898120)
,p_db_column_name=>'DIRECCION'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Direccion'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(129090408953898121)
,p_db_column_name=>'FEC_AGENDADA'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Fecha Agendada '
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(129090639668898123)
,p_db_column_name=>'OBSERVACION'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Observacion'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(129090700032898124)
,p_db_column_name=>'COORDENADAS'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Coordenadas'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(129090875165898125)
,p_db_column_name=>'VISITA'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Visita'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(129090936033898126)
,p_db_column_name=>'DETALLE'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Detalle'
,p_column_link=>'javascript:$s(''P434_DET_DATA'',''#SEQ_ID#'');'
,p_column_linktext=>'<span class="fa fa-search">'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(129091852494898135)
,p_db_column_name=>'COD_MOVITO_VISITA'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'Cod Movito Visita'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(128617825540680760)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1286179'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'DIA:FEC_VISITA:HORA_VISITA:COMPROBANTE:VISITA:CONTACTO:DIRECCION:OBSERVACION:FEC_AGENDADA'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(128516814824228241)
,p_plug_name=>'Contenedor 2.1'
,p_parent_plug_id=>wwv_flow_imp.id(128434030987744722)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'NEVER'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(128436658769744748)
,p_plug_name=>'Contenedor 1.2'
,p_parent_plug_id=>wwv_flow_imp.id(126308675720686831)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>30
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(129093208158898149)
,p_plug_name=>'&P434_TITULO.'
,p_parent_plug_id=>wwv_flow_imp.id(126308675720686831)
,p_region_template_options=>'#DEFAULT#:js-dialog-autoheight:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>50
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(131586307157570511)
,p_plug_name=>'Contenedor 3'
,p_parent_plug_id=>wwv_flow_imp.id(129093208158898149)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>40
,p_plug_grid_column_span=>8
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(131586487250570512)
,p_plug_name=>'Contenedor 3.1'
,p_parent_plug_id=>wwv_flow_imp.id(129093208158898149)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>50
,p_plug_new_grid_row=>false
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(131586837971570516)
,p_plug_name=>'Contenedor 3.2'
,p_parent_plug_id=>wwv_flow_imp.id(129093208158898149)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(131587171103570519)
,p_plug_name=>'Contenedor 3.3'
,p_parent_plug_id=>wwv_flow_imp.id(129093208158898149)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(131588837251570536)
,p_plug_name=>unistr('Direcci\00F3n')
,p_parent_plug_id=>wwv_flow_imp.id(126308675720686831)
,p_region_template_options=>'#DEFAULT#:js-dialog-autoheight:js-dialog-size720x480'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>60
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(131588994595570537)
,p_plug_name=>'Mapa'
,p_parent_plug_id=>wwv_flow_imp.id(131588837251570536)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source_type=>'PLUGIN_COM.JK64.SIMPLE_GOOGLE_MAP'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'-25,-57'
,p_attribute_02=>'8'
,p_attribute_03=>'400'
,p_attribute_04=>'P434_COORDENADAS_DIRE'
,p_attribute_05=>'16'
,p_attribute_07=>'N'
,p_attribute_11=>'P434_DIRECCION_DIRE'
,p_attribute_12=>'N'
,p_attribute_17=>'auto'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(126308770394686832)
,p_plug_name=>'Contenedor Variables'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>990
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(128432429514744706)
,p_plug_name=>'Contenedor Parametros'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>1000
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(128513470383228207)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(128436658769744748)
,p_button_name=>'BTFINALIZAR'
,p_button_static_id=>'BTFIN'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft:t-Button--stretch:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Finalizar'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'u-color-21-text'
,p_icon_css_classes=>'fa-check'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>2
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(131586506147570513)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(131586487250570512)
,p_button_name=>'BTACEPTAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Aceptar'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(131587086866570518)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(131586837971570516)
,p_button_name=>'BTARCHIVO'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--large'
,p_button_template_id=>wwv_flow_imp.id(40187078917263678)
,p_button_image_alt=>'Archivo'
,p_icon_css_classes=>'fa-window-file'
,p_button_cattributes=>'style="margin-top:10px;"'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(128513579926228208)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(128436658769744748)
,p_button_name=>'BTCANCELAR'
,p_button_static_id=>'BTCAN'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft:t-Button--stretch:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Cancelar'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'u-color-24-text'
,p_icon_css_classes=>'fa-remove'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>2
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(131586677174570514)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(131586487250570512)
,p_button_name=>'BTCANCELAR_2'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Cancelar'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(128517335639228246)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_imp.id(128516814824228241)
,p_button_name=>'BT_VER_COORD_2'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large'
,p_button_template_id=>wwv_flow_imp.id(40187078917263678)
,p_button_image_alt=>'Ver Coordenadas'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-map-markers-o'
,p_button_cattributes=>'style="margin-top:10px;"'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>1
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(128436318263744745)
,p_button_sequence=>170
,p_button_plug_id=>wwv_flow_imp.id(128433970265744721)
,p_button_name=>'BT_VER_COORD'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large'
,p_button_template_id=>wwv_flow_imp.id(40187078917263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Ver Coordenadas'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-map-markers-o'
,p_button_cattributes=>'style="margin-top:10px;"'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>1
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(128515981040228232)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(126308675720686831)
,p_button_name=>'BTVOLVER'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft:t-Button--gapRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Volver'
,p_button_position=>'COPY'
,p_button_redirect_url=>'f?p=&APP_ID.:437:&SESSION.::&DEBUG.:437::'
,p_button_css_classes=>'u-color-21-bg u-color-43-text'
,p_icon_css_classes=>'fa-arrow-left'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(129092208141898139)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(126308675720686831)
,p_button_name=>'BTGUARDAR_DATOS'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft:t-Button--gapLeft:t-Button--padRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Guardar'
,p_button_position=>'COPY'
,p_button_css_classes=>'u-color-21-bg u-color-43-text'
,p_icon_css_classes=>'fa-save'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(131589713013570545)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(131588994595570537)
,p_button_name=>'BTGUARDAR_DIRE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Guardar'
,p_button_position=>'COPY'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(132543300224400111)
,p_branch_name=>'GO_TO_437'
,p_branch_action=>'f?p=&APP_ID.:437:&SESSION.::&DEBUG.:437::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(129092208141898139)
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(126308899591686833)
,p_name=>'P434_V_DERECHOS'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(126308770394686832)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(126308926790686834)
,p_name=>'P434_V_IMPORTE_ANT'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(126308770394686832)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(126309065381686835)
,p_name=>'P434_V_COD_MODULO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(126308770394686832)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(126309158484686836)
,p_name=>'P434_V_COD_FORMA'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(126308770394686832)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(126309222397686837)
,p_name=>'P434_V_NOM_FORMA'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(126308770394686832)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(126309356510686838)
,p_name=>'P434_V_COD_MONEDA_BASE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(126308770394686832)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(126309458750686839)
,p_name=>'P434_V_TIPO_TRANS'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(126308770394686832)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(126309580502686840)
,p_name=>'P434_V_SER_RECIBO'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(126308770394686832)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(126309646922686841)
,p_name=>'P434_V_FEC_ACTUAL'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(126308770394686832)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(126309749663686842)
,p_name=>'P434_V_DESC_MOTIVO'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(126308770394686832)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(126309878387686843)
,p_name=>'P434_V_COORDENADAS'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(126308770394686832)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(126309930157686844)
,p_name=>'P434_V_DIR_ARCHIVO'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(126308770394686832)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(126310040370686845)
,p_name=>'P434_V_MODIFICA_FECHA'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(126308770394686832)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(126310100934686846)
,p_name=>'P434_V_DIAS_ATRASO'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(126308770394686832)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(126310219537686847)
,p_name=>'P434_V_TIT_PROB'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(126308770394686832)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(126310383954686848)
,p_name=>'P434_V_TITULO'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(126308770394686832)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(126310423371686849)
,p_name=>'P434_V_REAGENDAR'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(126308770394686832)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(126310581306686850)
,p_name=>'P434_V_COD_MOTIVO'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(126308770394686832)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(128431940462744701)
,p_name=>'P434_V_RESULTADO_VISITA'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(126308770394686832)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(128432031395744702)
,p_name=>'P434_V_FECHA_REA'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(126308770394686832)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(128432191895744703)
,p_name=>'P434_V_HORA_REA'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_imp.id(126308770394686832)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(128432200186744704)
,p_name=>'P434_V_MOTIVO_CAN'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_imp.id(126308770394686832)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(128432568936744707)
,p_name=>'P434_P_NRO_MOVIMIENTO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(128432429514744706)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(128432643136744708)
,p_name=>'P434_P_DIA'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(128432429514744706)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(128432700634744709)
,p_name=>'P434_P_TIP_COMPROBANTE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(128432429514744706)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(128432898090744710)
,p_name=>'P434_P_SER_COMPROBANTE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(128432429514744706)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(128432902529744711)
,p_name=>'P434_P_NRO_COMPROBANTE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(128432429514744706)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(128433060905744712)
,p_name=>'P434_P_CONTACTO'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(128432429514744706)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(128433123632744713)
,p_name=>'P434_P_DIRECCION'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(128432429514744706)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(128433255152744714)
,p_name=>'P434_P_MOTIVO'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(128432429514744706)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(128433384624744715)
,p_name=>'P434_P_OBSERV'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(128432429514744706)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(128433471820744716)
,p_name=>'P434_P_COORDENADAS'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(128432429514744706)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(128433520355744717)
,p_name=>'P434_P_FEC_VISITA'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(128432429514744706)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
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
 p_id=>wwv_flow_imp.id(128433675836744718)
,p_name=>'P434_P_HORA_VISITA'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(128432429514744706)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(128433717031744719)
,p_name=>'P434_P_FEC_AGENDADA'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(128432429514744706)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(128433816782744720)
,p_name=>'P434_P_HORA_AGENDADA'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(128432429514744706)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(128434193517744723)
,p_name=>'P434_NRO_MOVIMIENTO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(128433970265744721)
,p_prompt=>'Nro. Movimiento'
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
 p_id=>wwv_flow_imp.id(128434226076744724)
,p_name=>'P434_TIP_COMPROBANTE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(128433970265744721)
,p_item_default=>'ORT'
,p_prompt=>'Tipo'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
,p_attribute_06=>'UPPER'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(128434314683744725)
,p_name=>'P434_SER_COMPROBANTE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(128433970265744721)
,p_prompt=>'Serie'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
,p_attribute_06=>'UPPER'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(128434453487744726)
,p_name=>'P434_NRO_COMPROBANTE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(128433970265744721)
,p_prompt=>'Nro.'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(128434945410744731)
,p_name=>'P434_MINU'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(128433970265744721)
,p_prompt=>'Minutos'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_cMaxlength=>2
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186937130263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(128435039715744732)
,p_name=>'P434_FEC_VISITA'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(128433970265744721)
,p_prompt=>'Fecha Visita'
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>30
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(40186937130263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(128435103916744733)
,p_name=>'P434_HORA'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(128433970265744721)
,p_prompt=>'Hora'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_cMaxlength=>2
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186937130263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(128435249290744734)
,p_name=>'P434_DIA'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(128433970265744721)
,p_prompt=>unistr('D\00EDa')
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
 p_id=>wwv_flow_imp.id(128435388201744735)
,p_name=>'P434_CONTACTO'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(128433970265744721)
,p_prompt=>'Contacto'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(128435488909744736)
,p_name=>'P434_DIRECCION'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(128433970265744721)
,p_prompt=>unistr('Direcci\00F3n')
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
 p_id=>wwv_flow_imp.id(128436161759744743)
,p_name=>'P434_COORDENADAS'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(128433970265744721)
,p_prompt=>'Coordenadas'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(128436483068744746)
,p_name=>'P434_DESC_MOTIVO'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(128436658769744748)
,p_prompt=>'Reagendado por:'
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
 p_id=>wwv_flow_imp.id(128436561189744747)
,p_name=>'P434_OBSERVACION'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(128436658769744748)
,p_prompt=>unistr('Observaci\00F3n')
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cHeight=>5
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(128436735076744749)
,p_name=>'P434_ES_REAGENDA'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(128436658769744748)
,p_prompt=>'Es Reagenda'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC2:SI;S,NO;N'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(128512842967228201)
,p_name=>'P434_FEC_CONTACTO'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(128436658769744748)
,p_prompt=>'Fecha Contacto'
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
 p_id=>wwv_flow_imp.id(128512999003228202)
,p_name=>'P434_HORA_CONTACTO'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(128436658769744748)
,p_prompt=>'Hora Contacto'
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
 p_id=>wwv_flow_imp.id(128513065042228203)
,p_name=>'P434_FEC_AGENDADA'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(128436658769744748)
,p_prompt=>'Fecha Agendada'
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
 p_id=>wwv_flow_imp.id(128513129399228204)
,p_name=>'P434_HORA_AGENDADA'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(128436658769744748)
,p_prompt=>'Hora Agendada'
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
 p_id=>wwv_flow_imp.id(128513388718228206)
,p_name=>'P434_REALIZADO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(128436658769744748)
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:PENDIENTE;P,FINALIZADO;S,CANCELADO;N'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(128516986167228242)
,p_name=>'P434_MOTIVO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(128516814824228241)
,p_prompt=>'Cod'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_colspan=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(128517069587228243)
,p_name=>'P434_CONTACTO_DET'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(128516814824228241)
,p_prompt=>'Contacto'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(128517227064228245)
,p_name=>'P434_DIRECCION_DET'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(128516814824228241)
,p_prompt=>unistr('Direcci\00F3n')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(128517577623228248)
,p_name=>'P434_FEC_AGENDADA_DET'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(128516814824228241)
,p_prompt=>'Fecha Agend.'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(128517685911228249)
,p_name=>'P434_HORA_AGENDADA_DET'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(128516814824228241)
,p_prompt=>'Hora Agend.'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(129089663006898113)
,p_name=>'P434_V_CONTROL'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_imp.id(126308770394686832)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(129091598963898132)
,p_name=>'P434_DET_DATA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(128516036439228233)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(129092198755898138)
,p_name=>'P434_OBSERVACION_DET'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(128516814824228241)
,p_prompt=>unistr('Observaci\00F3n')
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cHeight=>5
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(129092672633898143)
,p_name=>'P434_ORIGEN'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_imp.id(128433970265744721)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(129092739472898144)
,p_name=>'P434_COD_MOTIVO_REAGENDADA'
,p_item_sequence=>270
,p_item_plug_id=>wwv_flow_imp.id(128433970265744721)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(129092858579898145)
,p_name=>'P434_COD_USUARIO_AGENDA'
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_imp.id(128433970265744721)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(129092976315898146)
,p_name=>'P434_HORA_VISITA'
,p_item_sequence=>280
,p_item_plug_id=>wwv_flow_imp.id(128433970265744721)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(129093009498898147)
,p_name=>'P434_COMENTARIO_RESULTADO'
,p_item_sequence=>290
,p_item_plug_id=>wwv_flow_imp.id(128433970265744721)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(129093188778898148)
,p_name=>'P434_ID_VISITA_DF'
,p_item_sequence=>300
,p_item_plug_id=>wwv_flow_imp.id(128433970265744721)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(129093344390898150)
,p_name=>'P434_TITULO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(129093208158898149)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(131586173861570509)
,p_name=>'P434_RESULTADO_VISITA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(131586307157570511)
,p_prompt=>'Resultado Visita'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cHeight=>5
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(131586237518570510)
,p_name=>'P434_REAGENDAR'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(131586487250570512)
,p_prompt=>'Reagendar'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(131586988607570517)
,p_name=>'P434_MOTIVO_CAN'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(131586837971570516)
,p_prompt=>'Motivo'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:Falta de tiempo;Falta de tiempo,Cliente no contesta;Cliente no contesta,Cliente Cancela;Cliente Cancela,No tiene para abonar presupuesto;No tiene para abonar presupuesto,Producto no funciona - Reclamo SPP;Producto no funciona - Reclamo SPP'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_colspan=>8
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(131587255755570520)
,p_name=>'P434_FECHA_REA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(131587171103570519)
,p_prompt=>'Fecha'
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
 p_id=>wwv_flow_imp.id(131587399466570521)
,p_name=>'P434_HORA_REA'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(131587171103570519)
,p_prompt=>'Hora'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(131587912129570527)
,p_name=>'P434_DIR_ARCHIVO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(131586837971570516)
,p_prompt=>'Informe'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_colspan=>8
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(131589091843570538)
,p_name=>'P434_COORDENADAS_DIRE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(131588994595570537)
,p_prompt=>'Coordenadas'
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
 p_id=>wwv_flow_imp.id(131589198707570539)
,p_name=>'P434_DIRECCION_DIRE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(131588994595570537)
,p_prompt=>unistr('Direcci\00F3n')
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
 p_id=>wwv_flow_imp.id(131590063522570548)
,p_name=>'P434_COORDENADAS_DET'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(128516814824228241)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(131590173257570549)
,p_name=>'P434_DESC_MOTIVO_DET'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(128516814824228241)
,p_prompt=>'Motivo'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(132543781160400115)
,p_name=>'P434_CONTROL'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(129093208158898149)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(132543994858400117)
,p_name=>'P434_MENSAJE_REALIZADO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(129093208158898149)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(132544337797400121)
,p_name=>'P434_DIR_ARCHIVO_G'
,p_item_sequence=>310
,p_item_plug_id=>wwv_flow_imp.id(128433970265744721)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(399815374667424250)
,p_name=>'P434_COD_TECNICO'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(128433970265744721)
,p_prompt=>'Tecnico'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select v.cod_tecnico ||'' - ''||nvl(p.nombre,p.nomb_fantasia) nombre, ',
'       v.cod_tecnico ',
' from vt_tecnicos v, personas p ',
'where v.cod_empresa = :P_COD_EMPRESA ',
'  and v.cod_persona = p.cod_persona',
'   order by 1  '))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(400994977602896202)
,p_name=>'P434_COD_MOTIVO_VISITA'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(128433970265744721)
,p_prompt=>'Motivo de Visita'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select descripcion, ',
'       cod_motivo',
'  from CA_MOTIVO_VISITA ',
'order by 1 desc'))
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(400995057571896203)
,p_name=>'P434_COD_CLIENTE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(128433970265744721)
,p_prompt=>'Cliente'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select  c.cod_cliente ||'' - ''|| ltrim(rtrim(nvl(p.nombre, p.nomb_fantasia)))||'' - '' ||I.NUMERO nombre, ',
'       c.cod_cliente ',
'  from cc_clientes c,',
'       personas p, ',
'       ident_personas i',
' where c.cod_empresa = :P_COD_EMPRESA',
'   and c.cod_persona = p.cod_persona',
'   and c.estado <> ''B''',
'   and c.estado <> ''I''',
'   and i.cod_persona(+) = p.cod_persona',
'   and i.cod_ident(+)=''CI''',
' order by 1'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(400995120235896204)
,p_name=>'P434_COD_PROVINCIA'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(128433970265744721)
,p_prompt=>'Departamento'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select descripcion, ',
'       cod_provincia ',
'  from provincias ',
' where cod_pais = ''PAR''',
'order by descripcion',
''))
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(400995227757896205)
,p_name=>'P434_COD_CIUDAD'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(128433970265744721)
,p_prompt=>'Ciudad'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select descripcion, ',
'       cod_ciudad ',
'  from ciudades ',
' where cod_pais = ''PAR''',
'   and COD_PROVINCIA = :P434_COD_PROVINCIA',
'order by descripcion'))
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(400995367154896206)
,p_name=>'P434_COD_BARRIO'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(128433970265744721)
,p_prompt=>'Barrio'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select descripcion, ',
'       cod_barrio ',
'  from barrios ',
' where cod_pais = ''PAR''',
'   AND COD_PROVINCIA in(''11'',''18'')',
'   and (cod_ciudad = :P434_COD_CIUDAD or :P434_COD_CIUDAD is null)',
'order by descripcion'))
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(129089027082898107)
,p_name=>'DA_FEC_VISITA'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P434_FEC_VISITA'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(129089125032898108)
,p_event_id=>wwv_flow_imp.id(129089027082898107)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P434_FEC_VISITA'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(129089287110898109)
,p_event_id=>wwv_flow_imp.id(129089027082898107)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    BEGIN',
'        SELECT TO_CHAR(TO_DATE(:P434_FEC_VISITA,''DD/MM/YYYY''),''DAY'')',
'          INTO :P434_DIA',
'          FROM DUAL;',
'    EXCEPTION',
'        WHEN OTHERS THEN',
'        :P434_DIA := NULL;',
'    END;',
'EXCEPTION',
'    WHEN OTHERS THEN',
'     raise_application_error(-20000, SQLERRM);',
'END;'))
,p_attribute_02=>'P434_FEC_VISITA'
,p_attribute_03=>'P434_DIA'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P434_FEC_VISITA'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(129089313919898110)
,p_name=>'DA_COD_CLIENTE'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P434_COD_CLIENTE'
,p_condition_element=>'P434_V_CONTROL'
,p_triggering_condition_type=>'NOT_EQUALS'
,p_triggering_expression=>'1'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(129089441602898111)
,p_event_id=>wwv_flow_imp.id(129089313919898110)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P434_COD_CLIENTE'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(129089523697898112)
,p_event_id=>wwv_flow_imp.id(129089313919898110)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    CAGESVIS.GET_DATOS_CLIENTE(pcod_cliente   => :P434_COD_CLIENTE,',
'                               pcod_empresa   => :P_COD_EMPRESA,',
'                               pdireccion     => :P434_DIRECCION,',
'                               pcod_ciudad    => :P434_COD_CIUDAD,',
'                               pcod_barrio    => :P434_COD_BARRIO,',
'                               pcontacto      => :P434_CONTACTO,',
'                               pcod_provincia => :P434_COD_PROVINCIA);',
'EXCEPTION',
'    WHEN OTHERS THEN',
'     raise_application_error(-20000, ''DA_COD_CLIENTE ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P_COD_EMPRESA'
,p_attribute_03=>'P434_DIRECCION,P434_CONTACTO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P434_COD_CLIENTE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(129091099354898127)
,p_name=>'DA_COD_TECNICO'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P434_COD_TECNICO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(129091109110898128)
,p_event_id=>wwv_flow_imp.id(129091099354898127)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P434_FEC_VISITA'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(129091226605898129)
,p_event_id=>wwv_flow_imp.id(129091099354898127)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    CAGESVIS.FILTRAR_DET(pcod_empresa => :P_COD_EMPRESA,',
'                         pcod_tecnico => :P434_COD_TECNICO,',
'                         pfec_visita  => :P434_FEC_VISITA);',
'EXCEPTION',
'    WHEN OTHERS THEN',
'     raise_application_error(-20000, ''DA_COD_TECNICO ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P_COD_EMPRESA,P434_FEC_VISITA'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P434_COD_TECNICO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(129091398030898130)
,p_event_id=>wwv_flow_imp.id(129091099354898127)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(128516036439228233)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(129091623106898133)
,p_name=>'DA_DET_DATA'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P434_DET_DATA'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(129091707036898134)
,p_event_id=>wwv_flow_imp.id(129091623106898133)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P434_DET_DATA'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(129091952958898136)
,p_event_id=>wwv_flow_imp.id(129091623106898133)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN ',
'    CAGESVIS.OBTENER_DATA_DET(pseq_id        => :P434_DET_DATA,',
'                              pmotivo        => :P434_MOTIVO,',
'                              pcontacto      => :P434_CONTACTO_DET,',
'                              pdireccion     => :P434_DIRECCION_DET,',
'                              pfec_agendada  => :P434_FEC_AGENDADA_DET,',
'                              phora_agendada => :P434_HORA_AGENDADA_DET,',
'                              pobservacion   => :P434_OBSERVACION_DET,',
'                              pcoordenadas   => :P434_COORDENADAS_DET);',
'',
' EXCEPTION',
'    WHEN OTHERS THEN',
'     raise_application_error(-20000, ''DA_DET_DATA ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P434_DET_DATA'
,p_attribute_03=>'P434_MOTIVO,P434_CONTACTO_DET,P434_DIRECCION_DET,P434_FEC_AGENDADA_DET,P434_HORA_AGENDADA_DET,P434_OBSERVACION_DET,P434_COORDENADAS_DET'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P434_DET_DATA'
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
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(129092319408898140)
,p_name=>'DA_NRO_COMPROBANTE'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P434_NRO_COMPROBANTE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(129092405287898141)
,p_event_id=>wwv_flow_imp.id(129092319408898140)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P434_TIP_COMPROBANTE,P434_SER_COMPROBANTE,P434_NRO_COMPROBANTE'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(129092566777898142)
,p_event_id=>wwv_flow_imp.id(129092319408898140)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    CAGESVIS.VALIDATE_NRO_COMPROBANTE(pcod_empresa     => :P_COD_EMPRESA,',
'                                      ptip_comprobante => :P434_TIP_COMPROBANTE,',
'                                      pser_comprobante => :P434_SER_COMPROBANTE,',
'                                      pnro_comprobante => :P434_NRO_COMPROBANTE,',
'                                      pcod_tecnico     => :P434_COD_TECNICO,',
'                                      pcod_cliente     => :P434_COD_CLIENTE,',
'                                      porigen          => :P434_ORIGEN);',
'EXCEPTION',
'    WHEN OTHERS THEN',
'     raise_application_error(-20000, ''DA_NRO_COMPROBANTE ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P_COD_EMPRESA,P434_TIP_COMPROBANTE,P434_SER_COMPROBANTE,P434_NRO_COMPROBANTE'
,p_attribute_03=>'P434_ORIGEN'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P434_NRO_COMPROBANTE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(131585376335570501)
,p_name=>'DA_BTFINALIZAR'
,p_event_sequence=>70
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(128513470383228207)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(131587536082570523)
,p_event_id=>wwv_flow_imp.id(131585376335570501)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P434_TITULO'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(131585485521570502)
,p_event_id=>wwv_flow_imp.id(131585376335570501)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P434_TITULO := ''Finalizar Agenda'';',
':P434_CONTROL := 1;'))
,p_attribute_02=>'P434_TITULO,P434_CONTROL'
,p_attribute_03=>'P434_TITULO,P434_CONTROL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(131587603327570524)
,p_event_id=>wwv_flow_imp.id(131585376335570501)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.util.getTopApex().jQuery(".ui-dialog-content").dialog("option", "title", $v("P434_TITULO"));'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(131587804654570526)
,p_event_id=>wwv_flow_imp.id(131585376335570501)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P434_REAGENDAR,P434_FECHA_REA,P434_HORA_REA,P434_MOTIVO_CAN'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(131588011430570528)
,p_event_id=>wwv_flow_imp.id(131585376335570501)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P434_RESULTADO_VISITA,P434_DIR_ARCHIVO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(131588112256570529)
,p_event_id=>wwv_flow_imp.id(131585376335570501)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(131587086866570518)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(131585711495570505)
,p_event_id=>wwv_flow_imp.id(131585376335570501)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(129093208158898149)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(131585577664570503)
,p_name=>'DA_BTCANCELAR'
,p_event_sequence=>80
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(128513579926228208)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(131587421440570522)
,p_event_id=>wwv_flow_imp.id(131585577664570503)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P434_TITULO'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(131585619952570504)
,p_event_id=>wwv_flow_imp.id(131585577664570503)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P434_TITULO := ''Cancelar Agenda'';',
':P434_CONTROL := 2;'))
,p_attribute_02=>'P434_TITULO,P434_CONTROL'
,p_attribute_03=>'P434_TITULO,P434_CONTROL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(131587709513570525)
,p_event_id=>wwv_flow_imp.id(131585577664570503)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.util.getTopApex().jQuery(".ui-dialog-content").dialog("option", "title", $v("P434_TITULO"));'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(131588285663570530)
,p_event_id=>wwv_flow_imp.id(131585577664570503)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P434_DIR_ARCHIVO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(131588400351570532)
,p_event_id=>wwv_flow_imp.id(131585577664570503)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(131587086866570518)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(131588306774570531)
,p_event_id=>wwv_flow_imp.id(131585577664570503)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P434_REAGENDAR,P434_MOTIVO_CAN'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(131585895476570506)
,p_event_id=>wwv_flow_imp.id(131585577664570503)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(129093208158898149)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(131585941474570507)
,p_name=>'DA_TITULO'
,p_event_sequence=>90
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P434_TITULO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(131586026306570508)
,p_event_id=>wwv_flow_imp.id(131585941474570507)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P434_TITULO'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(131588575501570533)
,p_name=>'DA_REAGENDAR'
,p_event_sequence=>100
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P434_REAGENDAR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(131588694525570534)
,p_event_id=>wwv_flow_imp.id(131588575501570533)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P434_FECHA_REA,P434_HORA_REA'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P434_REAGENDAR'
,p_client_condition_expression=>'S'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(131588778061570535)
,p_event_id=>wwv_flow_imp.id(131588575501570533)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P434_FECHA_REA,P434_HORA_REA'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P434_REAGENDAR'
,p_client_condition_expression=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(131589229944570540)
,p_name=>'DA_VER_COORD'
,p_event_sequence=>110
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(128436318263744745)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(131589929946570547)
,p_event_id=>wwv_flow_imp.id(131589229944570540)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(131589713013570545)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(131589389897570541)
,p_event_id=>wwv_flow_imp.id(131589229944570540)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(131588837251570536)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(131589415660570542)
,p_name=>'DA_VER_COORD_2'
,p_event_sequence=>120
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(128517335639228246)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(131589560411570543)
,p_event_id=>wwv_flow_imp.id(131589415660570542)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P434_COORDENADAS_DIRE := :P434_COORDENADAS_DET;',
':P434_DIRECCION_DIRE := :P434_DIRECCION_DET;'))
,p_attribute_02=>'P434_COORDENADAS_DET,P434_DIRECCION_DET'
,p_attribute_03=>'P434_COORDENADAS_DIRE,P434_DIRECCION_DIRE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(131589840964570546)
,p_event_id=>wwv_flow_imp.id(131589415660570542)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(131589713013570545)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(131589664199570544)
,p_event_id=>wwv_flow_imp.id(131589415660570542)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(131588837251570536)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(131590218222570550)
,p_name=>'DA_MOTIVO_DET'
,p_event_sequence=>130
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P434_MOTIVO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(132542300427400101)
,p_event_id=>wwv_flow_imp.id(131590218222570550)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P434_MOTIVO'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(132542475300400102)
,p_event_id=>wwv_flow_imp.id(131590218222570550)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    BEGIN',
'        SELECT DESCRIPCION',
'          INTO :P434_DESC_MOTIVO_DET',
'          FROM  CA_MOTIVO_VISITA',
'         WHERE COD_MOTIVO = :P434_MOTIVO;',
'    EXCEPTION',
'        WHEN NO_DATA_FOUND THEN',
'        :P434_DESC_MOTIVO_DET := NULL;',
'    END;',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    raise_application_error(-20000, ''DA_MOTIVO_DET ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P434_MOTIVO'
,p_attribute_03=>'P434_DESC_MOTIVO_DET'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(132542547547400103)
,p_name=>'DA_COD_MOTIVO_VISITA'
,p_event_sequence=>140
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P434_COD_MOTIVO_VISITA'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(132542667407400104)
,p_event_id=>wwv_flow_imp.id(132542547547400103)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P434_COD_MOTIVO_VISITA'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(132542833560400106)
,p_name=>'DA_GUARDAR_DIRE'
,p_event_sequence=>150
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(131589713013570545)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(132543175288400109)
,p_event_id=>wwv_flow_imp.id(132542833560400106)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P434_COORDENADAS_DIRE'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(132542968184400107)
,p_event_id=>wwv_flow_imp.id(132542833560400106)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P434_COORDENADAS := :P434_COORDENADAS_DIRE;'
,p_attribute_02=>'P434_COORDENADAS_DIRE'
,p_attribute_03=>'P434_COORDENADAS'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(132543019616400108)
,p_event_id=>wwv_flow_imp.id(132542833560400106)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(131588837251570536)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(132543479422400112)
,p_name=>'DA_BTACEPTAR'
,p_event_sequence=>160
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(131586506147570513)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(132543525019400113)
,p_event_id=>wwv_flow_imp.id(132543479422400112)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'Debe cargar correctamente los datos.'
,p_attribute_02=>'Aviso'
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P434_RESULTADO_VISITA'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(132543656029400114)
,p_event_id=>wwv_flow_imp.id(132543479422400112)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\00BFDesea grabar los datos?')
,p_attribute_02=>'Aviso'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P434_RESULTADO_VISITA'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(132543830286400116)
,p_event_id=>wwv_flow_imp.id(132543479422400112)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'V_COMENTARIO VARCHAR2(500);',
'V_ESTADO VARCHAR2(50);',
'VMENSAJE VARCHAR2(4000);',
'VERROR EXCEPTION;',
'BEGIN',
'    VMENSAJE := NULL;',
'    ',
'    IF :P434_CONTROL = 2 THEN',
'        :P434_REALIZADO := ''N'';',
'        V_ESTADO := ''VISITA CANCELADA'';',
'        IF :P434_REAGENDAR = ''S'' THEN',
'            IF :P434_FECHA_REA IS NULL AND :P434_HORA_REA IS NULL THEN',
'                VMENSAJE := ''Debe cargar correctamente la Fecha/Hora de Agendamiento'';',
'                RAISE VERROR;',
'            ELSE',
'                :P434_OBSERVACION := NVL(:P434_OBSERVACION,'''')||chr(10)||:P434_RESULTADO_VISITA||chr(10)||:P_COD_USUARIO||'' REAGENDO EN FECHA: ''',
'                ||:P434_FECHA_REA||''  Hs: ''||:P434_HORA_REA;',
'                ',
'                CAGESVIS.REAGENDAR(pcod_empresa     => :P_COD_EMPRESA,',
'                                   pcod_motivo      => :P434_MOTIVO_CAN,',
'                                   pfecha_rea       => :P434_FECHA_REA,',
'                                   phora_rea        => :P434_HORA_REA,',
'                                   pobservacion     => :P434_OBSERVACION,',
'                                   pnro_movimiento  => :P434_NRO_MOVIMIENTO,',
'                                   pcod_tecnico     => :P434_COD_TECNICO,',
'                                   ptip_comprobante => :P434_TIP_COMPROBANTE,',
'                                   pser_comprobante => :P434_SER_COMPROBANTE,',
'                                   pnro_comprobante => :P434_NRO_COMPROBANTE,',
'                                   pmensaje         => :VMENSAJE);',
'',
'                IF VMENSAJE IS NOT NULL THEN',
'                    RAISE VERROR;',
'                END IF;',
'',
'                V_COMENTARIO :=''Por Motivo ''||substr(:P434_MOTIVO_CAN,1,30)||'', la visita se reagendo en Fecha: ''||:P434_FECHA_REA||''  Hs:''||:P434_HORA_REA;',
'',
'                BEGIN',
'                    UPDATE CA_GESTIONES_VISITAS',
'                       SET ES_REAGENDA = ''S'',',
'                           --COD_MOTIVO_REAGENDA = :P434_MOTIVO_CAN,',
'                           OBSERVACION = :P434_OBSERVACION,',
'                           REALIZADO = ''N''',
'                     WHERE COD_EMPRESA = :P_COD_EMPRESA',
'                       AND NRO_MOVIMIENTO = :P434_NRO_MOVIMIENTO;',
'                EXCEPTION',
'                    WHEN OTHERS THEN',
'                     raise_application_error(-20000,  ''ERROR AL ACTUALIZAR REGISTRO EN CA_GESTIONES_VISITAS ''||SQLERRM);',
'                END;',
'            END IF;',
'        END IF;',
'        V_COMENTARIO := :P434_RESULTADO_VISITA||chr(10)||V_COMENTARIO||chr(10)||:P_COD_USUARIO||''  ''||SYSDATE;',
'    ELSE',
'        :P434_DIR_ARCHIVO_G := :P434_DIR_ARCHIVO;',
'		V_ESTADO := ''VISITA REALIZADA'';	',
'		:P434_REALIZADO := ''S'';',
'		V_COMENTARIO := :P434_RESULTADO_VISITA||chr(10)||''Confirmacion de Visita.   ''||:P_COD_USUARIO||''  ''||SYSDATE;',
'        BEGIN',
'            UPDATE CA_GESTIONES_VISITAS',
'               SET ES_REAGENDA = ''N'',',
'                   --COD_MOTIVO_REAGENDA = :P434_MOTIVO_CAN,',
'                   OBSERVACION = V_COMENTARIO,',
'                   REALIZADO = ''S''',
'             WHERE COD_EMPRESA = :P_COD_EMPRESA',
'               AND NRO_MOVIMIENTO = :P434_NRO_MOVIMIENTO;',
'        EXCEPTION',
'            WHEN OTHERS THEN',
'             raise_application_error(-20000, ''ERROR AL ACTUALIZAR REGISTRO EN CA_GESTIONES_VISITAS ''||SQLERRM);',
'        END;',
'    END IF;',
'',
'    INSERTA_SEGUIMIENTO_OT(PCOD_EMPRESA     => :P_COD_EMPRESA,',
'                           PCOMENTARIO      => :P434_RESULTADO_VISITA,',
'                           PCOD_CLIENTE     => :P434_COD_CLIENTE,',
'                           PSER_COMPROBANTE => :P434_SER_COMPROBANTE,',
'                           PNRO_COMPROBANTE => :P434_NRO_COMPROBANTE,',
'                           PNOMBRE          => null/*:P434_NOM_CLIENTE*/,',
'                           PDIRECCION       => :P434_DIRECCION,',
'                           PTIPO            => '''');',
'EXCEPTION',
'    WHEN VERROR THEN',
'    :P434_MENSAJE_REALIZADO := VMENSAJE;',
'    WHEN OTHERS THEN',
'     raise_application_error(-20000, ''DA_BTACEPTAR ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P434_CONTROL,P434_REAGENDAR,P434_FECHA_REA,P434_HORA_REA,P434_OBSERVACION,P434_RESULTADO_VISITA,P_COD_USUARIO,P434_MOTIVO_CAN,P434_DIR_ARCHIVO,P_COD_EMPRESA,P434_SER_COMPROBANTE,P434_NRO_COMPROBANTE,P434_DIRECCION'
,p_attribute_03=>'P434_REALIZADO,P434_MENSAJE_REALIZADO,P434_OBSERVACION,P434_DIR_ARCHIVO_G'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(132544444344400122)
,p_event_id=>wwv_flow_imp.id(132543479422400112)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(132544047740400118)
,p_name=>'DA_MENSAJE_REALIZADO'
,p_event_sequence=>170
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P434_MENSAJE_REALIZADO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(132544165362400119)
,p_event_id=>wwv_flow_imp.id(132544047740400118)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P434_MENSAJE_REALIZADO'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(132544215730400120)
,p_event_id=>wwv_flow_imp.id(132544047740400118)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P434_MENSAJE_REALIZADO.'
,p_attribute_02=>'Aviso'
,p_attribute_03=>'warning'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P434_MENSAJE_REALIZADO'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(128432368497744705)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_INIT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P434_V_COD_MODULO := ''CA'';',
'APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(''COLEC_CA_GESTIONES_VISITAS'');',
' ',
'',
'',
'IF :P434_NRO_MOVIMIENTO IS NOT NULL ',
'    AND :P434_NRO_COMPROBANTE IS NOT NULL THEN',
'            select 	 TIP_COMPROBANTE,	',
'                    SER_COMPROBANTE,	',
'                    NRO_COMPROBANTE,	',
'                    FEC_AGENDADA,	',
'                    HORA_AGENDADA,	',
'                    FEC_CONTACTO,	',
'                    HORA_CONTACTO,	',
'                    ES_REAGENDA,	',
'                    FEC_VISITA,	',
'                    HORA_VISITA,	',
'                    COORDENADAS,	',
'                    COD_TECNICO,	',
'                    CONTACTO,	',
'                    OBSERVACION,	',
'                    COD_MOTIVO_VISITA,	',
'                    DIRECCION,	',
'                    COD_BARRIO,	',
'                    COD_CIUDAD,	',
'                    COD_CLIENTE,	',
'                    DIR_ARCHIVO,	',
'                    ORIGEN,	',
'                    COD_USUARIO_AGENDA	',
'              ',
'            into :P434_TIP_COMPROBANTE,',
'                 :P434_SER_COMPROBANTE,',
'                 :P434_NRO_COMPROBANTE,',
'                 :P434_FEC_AGENDADA,',
'                 :P434_HORA_AGENDADA,',
'                 :P434_FEC_CONTACTO,',
'                 :P434_HORA_CONTACTO,',
'                 :P434_ES_REAGENDA,',
'                 :P434_FEC_VISITA,',
'                 :P434_HORA_VISITA,',
'                 :P434_COORDENADAS,',
'                 :P434_COD_TECNICO,',
'                 :P434_CONTACTO,',
'                 :P434_OBSERVACION,',
'                 :P434_COD_MOTIVO_VISITA,',
'                 :P434_DIRECCION,',
'                 :P434_COD_BARRIO,',
'                 :P434_COD_CIUDAD,',
'                 :P434_COD_CLIENTE,',
'                 :P434_DIR_ARCHIVO,',
'                 :P434_ORIGEN,',
'                 :P434_COD_USUARIO_AGENDA',
'            from CA_GESTIONES_VISITAS',
'            where nro_movimiento = :P434_P_NRO_MOVIMIENTO',
'            AND NRO_COMPROBANTE = :P434_NRO_COMPROBANTE',
'            AND COD_EMPRESA= :P_COD_EMPRESA',
'            ;',
'',
'END IF;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(129091462090898131)
,p_process_sequence=>20
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_ADD'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    BEGIN',
'        SELECT MAX(NVL(NRO_MOVIMIENTO,0)) + 1',
'          INTO :P434_NRO_MOVIMIENTO',
'          FROM CA_GESTIONES_VISITAS',
'         WHERE COD_EMPRESA = :P_COD_EMPRESA;',
'    EXCEPTION',
'        WHEN NO_DATA_FOUND THEN',
'        :P434_NRO_MOVIMIENTO := 1;',
'        WHEN OTHERS THEN',
'         raise_application_error(-20000, ''ERROR EN LA TABLA CABECERA ''||SQLERRM);',
'    END;',
'    :P434_HORA_AGENDADA := TO_CHAR(SYSDATE,''HH24:MI'');',
'    :P434_HORA_CONTACTO := TO_CHAR(SYSDATE,''HH24:MI'');',
'    :P434_FEC_CONTACTO := TRUNC(SYSDATE);',
'    :P434_REALIZADO := ''P'';',
'EXCEPTION',
'    WHEN OTHERS THEN',
'     raise_application_error(-20000, ''PR_ADD ''||SQLERRM);',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_process_when=>'P434_V_CONTROL'
,p_process_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_process_when2=>'0'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(129089767328898114)
,p_process_sequence=>30
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_EDIT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
' ',
'',
'    CAGESVIS.CARGAR_DATOS_EDIT(pcod_empresa          => :P_COD_EMPRESA,',
'                               pnro_movimiento       => :P434_NRO_MOVIMIENTO,',
'                               ptip_comprobante      => :P434_TIP_COMPROBANTE,',
'                               pser_comprobante      => :P434_SER_COMPROBANTE,',
'                               pnro_comprobante      => :P434_NRO_COMPROBANTE,',
'                               pfec_agendada         => :P434_FEC_AGENDADA,',
'                               phora_agendada        => :P434_HORA_AGENDADA,',
'                               pes_reagendada        => :P434_ES_REAGENDA,',
'                               pfec_contacto         => :P434_FEC_CONTACTO,',
'                               phora_contacto        => :P434_HORA_CONTACTO,',
'                               pcod_motivo_reag      => :P434_COD_MOTIVO_REAGENDADA,',
'                               pfec_visita           => :P434_FEC_VISITA,',
'                               phora_vista           => :P434_HORA_VISITA,',
'                               pcoordenadas          => :P434_COORDENADAS,',
'                               pcod_tecnico          => :P434_COD_TECNICO,',
'                               pcontacto             => :P434_CONTACTO,',
'                               pobservacion          => :P434_OBSERVACION,',
'                               pcod_motivo_visita    => :P434_COD_MOTIVO_VISITA,',
'                               prealizado            => :P434_REALIZADO,',
'                               pdireccion            => :P434_DIRECCION,',
'                               pcod_barrio           => :P434_COD_BARRIO,',
'                               pcod_ciudad           => :P434_COD_CIUDAD,',
'                               pcod_cliente          => :P434_COD_CLIENTE,',
'                               porigen               => :P434_ORIGEN,',
'                               pcod_usuario_agenda   => :P434_COD_USUARIO_AGENDA,',
'                               pcod_resultado        => :P434_V_RESULTADO_VISITA,',
'                               pcomentario_resultado => :P434_COMENTARIO_RESULTADO,',
'                               pcod_provincia        => :P434_COD_PROVINCIA,',
'                               pid_visita_sf         => :P434_ID_VISITA_DF);',
'',
'    :P434_HORA := SUBSTR(:P434_HORA_VISITA,0,2);',
'    :P434_MINU := SUBSTR(:P434_HORA_VISITA,2,2);    ',
'    ',
'EXCEPTION',
'    WHEN OTHERS THEN',
'     raise_application_error(-20000, ''PR_EDTI ''||SQLERRM);',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_process_when=>'P434_V_CONTROL'
,p_process_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_process_when2=>'1'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(132543265580400110)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_SAVE'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'V_REALIZADO VARCHAR2(2);',
'BEGIN',
'',
'V_REALIZADO := NVL(:P434_REALIZADO, ''P'');',
'    :P434_HORA_VISITA := NVL(:P434_HORA,''00'')|| NVL(:P434_MINU,''00'');',
'',
'    IF :P434_V_CONTROL = 0 THEN',
'        CAGESVIS.GUARDAR_DATOS(pcod_empresa          => :P_COD_EMPRESA,',
'                               pnro_movimiento       => :P434_NRO_MOVIMIENTO,',
'                               ptip_comprobante      => :P434_TIP_COMPROBANTE,',
'                               pser_comprobante      => :P434_SER_COMPROBANTE,',
'                               pnro_comprobante      => :P434_NRO_COMPROBANTE,',
'                               pfec_agendada         => :P434_FEC_AGENDADA,',
'                               phora_agendada        => :P434_HORA_AGENDADA,',
'                               pfec_contacto         => :P434_FEC_CONTACTO,',
'                               phora_contacto        => :P434_HORA_CONTACTO,',
'                               pes_reagenda          => :P434_ES_REAGENDA,',
'                               pcod_motivo_reagenda  => :P434_COD_MOTIVO_REAGENDADA,',
'                               pfec_visita           => :P434_FEC_VISITA,',
'                               phora_visita          => :P434_HORA_VISITA,',
'                               pcoordenadas          => :P434_COORDENADAS,',
'                               pcod_tecnico          => :P434_COD_TECNICO,',
'                               pcontacto             => :P434_CONTACTO,',
'                               pobservacion          => :P434_OBSERVACION,',
'                               pcod_motivo_visita    => :P434_COD_MOTIVO_VISITA,',
'                               prealizado            => V_REALIZADO,',
'                               pdireccion            => :P434_DIRECCION,',
'                               pcod_barrio           => :P434_COD_BARRIO,',
'                               pcod_ciudad           => :P434_COD_CIUDAD,',
'                               pcod_cliente          => :P434_COD_CLIENTE,',
'                               pdir_archivo          => :P434_DIR_ARCHIVO,',
'                               porigen               => :P434_ORIGEN,',
'                               pcod_usuario_agenda   => :P_COD_USUARIO,',
'                               pcod_resultado        => NULL,',
'                               pcomentario_resultado => :P434_COMENTARIO_RESULTADO,',
'                               pcod_provincia        => :P434_COD_PROVINCIA,',
'                               pid_visita_sf         => NULL);',
'    ELSE',
'        CAGESVIS.EDITAR_DATOS(pcod_empresa          => :P_COD_EMPRESA,',
'                              pnro_movimiento       => :P434_NRO_MOVIMIENTO,',
'                              ptip_comprobante      => :P434_TIP_COMPROBANTE,',
'                              pser_comprobante      => :P434_SER_COMPROBANTE,',
'                              pnro_comprobante      => :P434_NRO_COMPROBANTE,',
'                              pfec_agendada         => :P434_FEC_AGENDADA,',
'                              phora_agendada        => :P434_HORA_AGENDADA,',
'                              pfec_contacto         => :P434_FEC_CONTACTO,',
'                              phora_contacto        => :P434_HORA_CONTACTO,',
'                              pes_reagenda          => :P434_ES_REAGENDA,',
'                              pcod_motivo_reagenda  => :P434_COD_MOTIVO_REAGENDADA,',
'                              pfec_visita           => :P434_FEC_VISITA,',
'                              phora_visita          => :P434_HORA_VISITA,',
'                              pcoordenadas          => :P434_COORDENADAS,',
'                              pcod_tecnico          => :P434_COD_TECNICO,',
'                              pcontacto             => :P434_CONTACTO,',
'                              pobservacion          => :P434_OBSERVACION,',
'                              pcod_motivo_visita    => :P434_COD_MOTIVO_VISITA,',
'                              prealizado            => :P434_REALIZADO,',
'                              pdireccion            => :P434_DIRECCION,',
'                              pcod_barrio           => :P434_COD_BARRIO,',
'                              pcod_ciudad           => :P434_COD_CIUDAD,',
'                              pcod_cliente          => :P434_COD_CLIENTE,',
'                              pdir_archivo          => :P434_DIR_ARCHIVO,',
'                              porigen               => :P434_ORIGEN,',
'                              pcod_usuario_agenda   => :P_COD_USUARIO,',
'                              pcod_resultado        => NULL,',
'                              pcomentario_resultado => :P434_COMENTARIO_RESULTADO,',
'                              pcod_provincia        => :P434_COD_PROVINCIA,',
'                              pid_visita_sf         => NULL);',
'    END IF;',
'EXCEPTION',
'    WHEN OTHERS THEN',
'     raise_application_error(-20000, ''PR_SAVE ''||SQLERRM);',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(129092208141898139)
);
wwv_flow_imp.component_end;
end;
/
