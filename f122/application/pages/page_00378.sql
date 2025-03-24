prompt --application/pages/page_00378
begin
--   Manifest
--     PAGE: 00378
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
 p_id=>378
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'CCRECIBO'
,p_alias=>'CCRECIBO'
,p_step_title=>'CCRECIBO'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function obtenerRegistrosSeleccionados(){',
'  var gridView = apex.region("IG_COMPROBANTE").widget().interactiveGrid("getViews").grid;',
'  var records;',
'  try {',
'      ',
'    records = gridView.getSelectedRecords();',
'    var cod_mone = "";',
'    var tip_tran = "";',
'    var nom_moneda ="";',
'    var nom_transac ="";',
'',
'    for (let index = 0; index < records.length; index++)',
'     {',
'            cod_mone = records[index][7];',
'            tip_tran = records[index][9];',
'            nom_moneda = records[index][13];',
'            nom_transac = records[index][14];',
'        }',
'',
'    apex.item(''P378_COD_MONE_SELECT'').setValue(cod_mone);',
'    apex.item(''P378_COD_MONE_SELECT'').refresh();',
'    apex.item(''P378_TIP_TRAN_SELECT'').setValue(tip_tran);',
'    apex.item(''P378_TIP_TRAN_SELECT'').refresh();',
'    apex.item(''P378_MONEDA'').setValue(nom_moneda);',
'    apex.item(''P378_MONEDA'').refresh();',
'    apex.item(''P378_TRANSACCION'').setValue(nom_transac);',
'    apex.item(''P378_TRANSACCION'').refresh();',
'  } catch (e) {',
'',
'    apex.item(''P378_COD_MONE_SELECT'').setValue('''');',
'    apex.item(''P378_TIP_TRAN_SELECT'').setValue('''');',
'    apex.item(''P378_MONEDA'').setValue('''');',
'    apex.item(''P378_TRANSACCION'').setValue('''');',
'  } ',
'  finally{',
'',
'    apex.server.process(''DUMMY'', { pageItems: ''#P378_COD_MONE_SELECT''}, { dataType: "text" });',
'    apex.server.process(''DUMMY'', { pageItems: ''#P378_TIP_TRAN_SELECT''}, { dataType: "text" });',
'    apex.server.process(''DUMMY'', { pageItems: ''#P378_MONEDA''}, { dataType: "text" });',
'    apex.server.process(''DUMMY'', { pageItems: ''#P378_TRANSACCION''}, { dataType: "text" });',
'  }',
'}',
'',
'function obtenerRegistrosSeleccionados_2(){',
'  var gridView = apex.region("COLL_REPORTE").widget().interactiveGrid("getViews").grid;',
'  var records;',
'  try {',
'      ',
'    records = gridView.getSelectedRecords();',
'    var cod_empresa = "";',
'    var nro_compro = "";',
'    var tip_compro = "";',
'    var ser_compro = "";',
'',
'    for (let index = 0; index < records.length; index++)',
'     {',
'            cod_empresa = records[index][0];',
'            tip_compro = records[index][3];',
'            ser_compro = records[index][2];',
'            nro_compro = records[index][1];',
'        }',
'',
'    apex.item(''P378_NRO_EM_SELEC'').setValue(cod_empresa);',
'    apex.item(''P378_NRO_EM_SELEC'').refresh();',
'    apex.item(''P378_TIP_SELEC'').setValue(tip_compro);',
'    apex.item(''P378_TIP_SELEC'').refresh();',
'    apex.item(''P378_SER_SELEC'').setValue(ser_compro);',
'    apex.item(''P378_SER_SELEC'').refresh();',
'    apex.item(''P378_NRO_SELEC'').setValue(nro_compro);',
'    apex.item(''P378_NRO_SELEC'').refresh();',
'  } catch (e) {',
'',
'    apex.item(''P378_NRO_EM_SELEC'').setValue('''');',
'    apex.item(''P378_TIP_SELEC'').setValue('''');',
'    apex.item(''P378_SER_SELEC'').setValue('''');',
'    apex.item(''P378_NRO_SELEC'').setValue('''');',
'  } ',
'  finally{',
'',
'    apex.server.process(''DUMMY'', { pageItems: ''#P378_NRO_EM_SELEC''}, { dataType: "text" });',
'    apex.server.process(''DUMMY'', { pageItems: ''#P378_TIP_SELEC''}, { dataType: "text" });',
'    apex.server.process(''DUMMY'', { pageItems: ''#P378_SER_SELEC''}, { dataType: "text" });',
'    apex.server.process(''DUMMY'', { pageItems: ''#P378_NRO_SELEC''}, { dataType: "text" });',
'  }',
'}'))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.ui-dialog{',
'    width: 1000px !important;',
'    }'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'DFINO'
,p_last_upd_yyyymmddhh24miss=>'20230328101026'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(111522137060339629)
,p_plug_name=>'New'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(111523151011339639)
,p_plug_name=>'New'
,p_parent_plug_id=>wwv_flow_imp.id(111522137060339629)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>10
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(111523318516339641)
,p_plug_name=>'New'
,p_parent_plug_id=>wwv_flow_imp.id(111522137060339629)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>30
,p_plug_new_grid_row=>false
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(112272931293665807)
,p_plug_name=>'Datos del Recibo'
,p_parent_plug_id=>wwv_flow_imp.id(111522137060339629)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>40
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(112276842313665846)
,p_plug_name=>'Comprobantes'
,p_parent_plug_id=>wwv_flow_imp.id(111522137060339629)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>50
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(112169772255065539)
,p_plug_name=>'COL_DETA_CCRECIBO'
,p_parent_plug_id=>wwv_flow_imp.id(112276842313665846)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT seq_id SEQ_ID,',
'       COLL.C001 Empresa, --COD_EMPRESA',
'       COLL.C002 Nro, --NRO_COMPROBANTE',
'       COLL.C003 Ser, --SER_COMPROBANTE',
'       COLL.C004 Tip, --TIP_COMPROBANTE',
'       COLL.C005 Cuota,',
'       COLL.C006 Monto,',
'       COLL.C007 Moneda,',
'       COLL.C008 Vencimiento,',
'       COLL.C009 Tipo_Transac,',
'       COLL.C010 Cambio,',
'       COLL.C011 Importe,',
'       COLL.C013 Nom_moneda,',
'       COLL.C014 Nom_Transac,',
'       COLL.C015 CONTROL,',
'       NULL ELIMINAR',
'  FROM APEX_COLLECTIONS COLL',
' WHERE COLLECTION_NAME = ''COL_DETA_CCRECIBO''',
'   AND (COLL.C015 = ''U'' OR COLL.C015 = ''I'' OR COLL.C015 IS NULL)'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'COL_DETA_CCRECIBO'
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
 p_id=>wwv_flow_imp.id(112169852665065540)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'DFINO'
,p_internal_uid=>112169852665065540
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(112169921326065541)
,p_db_column_name=>'SEQ_ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Seq Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(112170064074065542)
,p_db_column_name=>'EMPRESA'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Empresa'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(112170120870065543)
,p_db_column_name=>'NRO'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Nro'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(112170271080065544)
,p_db_column_name=>'SER'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Ser'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(112170316500065545)
,p_db_column_name=>'TIP'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Tip'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(112170409633065546)
,p_db_column_name=>'CUOTA'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Cuota'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(112170511935065547)
,p_db_column_name=>'MONTO'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Monto'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(112170675362065548)
,p_db_column_name=>'MONEDA'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Moneda'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(112170753343065549)
,p_db_column_name=>'VENCIMIENTO'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Vencimiento'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(112170892142065550)
,p_db_column_name=>'TIPO_TRANSAC'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Tipo Transac'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(116511385692245001)
,p_db_column_name=>'CAMBIO'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Cambio'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(116511412012245002)
,p_db_column_name=>'IMPORTE'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Importe'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(116511509780245003)
,p_db_column_name=>'NOM_MONEDA'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Nom Moneda'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(116511693777245004)
,p_db_column_name=>'NOM_TRANSAC'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Nom Transac'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(116511776577245005)
,p_db_column_name=>'CONTROL'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Control'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(116511879277245006)
,p_db_column_name=>'ELIMINAR'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Eliminar'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(116521623567245465)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1165217'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'SEQ_ID:EMPRESA:NRO:SER:TIP:CUOTA:MONTO:MONEDA:VENCIMIENTO:TIPO_TRANSAC:CAMBIO:IMPORTE:NOM_MONEDA:NOM_TRANSAC:CONTROL:ELIMINAR'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(112276901728665847)
,p_plug_name=>'New'
,p_parent_plug_id=>wwv_flow_imp.id(112276842313665846)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>30
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(113893725926533410)
,p_plug_name=>'Coleccion'
,p_region_name=>'IG_COMPROBANTE'
,p_parent_plug_id=>wwv_flow_imp.id(112276842313665846)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>15
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT seq_id SEQ_ID,',
'       COLL.C001 Empresa, --COD_EMPRESA',
'       COLL.C002 Nro, --NRO_COMPROBANTE',
'       COLL.C003 Ser, --SER_COMPROBANTE',
'       COLL.C004 Tip, --TIP_COMPROBANTE',
'       COLL.C005 Cuota,',
'       COLL.C006 Monto,',
'       COLL.C007 Moneda,',
'       COLL.C008 Vencimiento,',
'       COLL.C009 Tipo_Transac,',
'       COLL.C010 Cambio,',
'       COLL.C011 Importe,',
'       COLL.C013 Nom_moneda,',
'       COLL.C014 Nom_Transac,',
'       NULL ELIMINAR',
'  FROM APEX_COLLECTIONS COLL',
' WHERE COLLECTION_NAME = ''COL_DETA_CCRECIBO'';'))
,p_plug_source_type=>'NATIVE_IG'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'NEVER'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Coleccion'
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
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(114306997831370947)
,p_name=>'SEQ_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SEQ_ID'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>30
,p_attribute_01=>'N'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(114307007456370948)
,p_name=>'EMPRESA'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EMPRESA'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>40
,p_attribute_01=>'N'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(114307103228370949)
,p_name=>'NRO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'NRO'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Nro'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>4000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(114307292085370950)
,p_name=>'SER'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SER'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Ser'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>60
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>4000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(114499241506783301)
,p_name=>'TIP'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TIP'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Tip'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>70
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>4000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(114499311731783302)
,p_name=>'CUOTA'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CUOTA'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Cuota'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>80
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>4000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(114499449901783303)
,p_name=>'MONTO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MONTO'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Monto'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>90
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_format_mask=>'999G999G999G999G990D00'
,p_is_required=>false
,p_max_length=>4000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(114499567567783304)
,p_name=>'MONEDA'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MONEDA'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Moneda'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>100
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>4000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(114499609999783305)
,p_name=>'VENCIMIENTO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'VENCIMIENTO'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Vencimiento'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>110
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>4000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(114499727038783306)
,p_name=>'TIPO_TRANSAC'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TIPO_TRANSAC'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Tipo Transac'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>120
,p_value_alignment=>'CENTER'
,p_is_required=>false
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select subtipo_trans||''-''||descripcion d, subtipo_trans r ',
'from subtipos_trans ',
'where cod_empresa = :p_cod_empresa ',
'and cod_modulo = :P378_V_COD_MODULO ',
'and tipo_trans = :P378_V_TIPO_TRAN'))
,p_lov_display_extra=>false
,p_lov_display_null=>false
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(114499813162783307)
,p_name=>'CAMBIO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CAMBIO'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Cambio'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>130
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>4000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(114499953361783308)
,p_name=>'IMPORTE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'IMPORTE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Importe'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>140
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_format_mask=>'999G999G999G999G990D00'
,p_is_required=>false
,p_max_length=>4000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(114500096174783309)
,p_name=>'ELIMINAR'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ELIMINAR'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_LINK'
,p_heading=>'Eliminar'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>150
,p_value_alignment=>'CENTER'
,p_link_target=>'javascript:$s(''P378_SEQ_ID_BORRAR'',#SEQ_ID#);'
,p_link_text=>'<span aria-hidden="true" class="fa fa-trash"></span>'
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_escape_on_http_output=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(114501571362783324)
,p_name=>'NOM_MONEDA'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'NOM_MONEDA'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>160
,p_attribute_01=>'N'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(114501631405783325)
,p_name=>'NOM_TRANSAC'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'NOM_TRANSAC'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>170
,p_attribute_01=>'N'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(114503855315783347)
,p_name=>'APEX$ROW_ACTION'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_use_as_row_header=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(114503981217783348)
,p_name=>'APEX$ROW_SELECTOR'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>10
,p_attribute_01=>'Y'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
,p_use_as_row_header=>false
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(114306828837370946)
,p_internal_uid=>114306828837370946
,p_is_editable=>true
,p_edit_operations=>'i'
,p_lost_update_check_type=>'VALUES'
,p_add_row_if_empty=>false
,p_submit_checked_rows=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SET'
,p_show_total_row_count=>true
,p_show_toolbar=>true
,p_toolbar_buttons=>'SEARCH_COLUMN:SEARCH_FIELD'
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>false
,p_define_chart_view=>false
,p_enable_download=>false
,p_download_formats=>null
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(114505373882787992)
,p_interactive_grid_id=>wwv_flow_imp.id(114306828837370946)
,p_static_id=>'1145054'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(114505530594787992)
,p_report_id=>wwv_flow_imp.id(114505373882787992)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(114506007027787993)
,p_view_id=>wwv_flow_imp.id(114505530594787992)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(114306997831370947)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(114506969971787995)
,p_view_id=>wwv_flow_imp.id(114505530594787992)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(114307007456370948)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(114507846349787997)
,p_view_id=>wwv_flow_imp.id(114505530594787992)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(114307103228370949)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(114508737092787999)
,p_view_id=>wwv_flow_imp.id(114505530594787992)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(114307292085370950)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(114509649594788000)
,p_view_id=>wwv_flow_imp.id(114505530594787992)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(114499241506783301)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(114510588770788002)
,p_view_id=>wwv_flow_imp.id(114505530594787992)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(114499311731783302)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(114511401236788004)
,p_view_id=>wwv_flow_imp.id(114505530594787992)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(114499449901783303)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(114512380400788006)
,p_view_id=>wwv_flow_imp.id(114505530594787992)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(114499567567783304)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(114513299577788008)
,p_view_id=>wwv_flow_imp.id(114505530594787992)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(114499609999783305)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(114514157842788009)
,p_view_id=>wwv_flow_imp.id(114505530594787992)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(114499727038783306)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(114515033344788011)
,p_view_id=>wwv_flow_imp.id(114505530594787992)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(114499813162783307)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(114515941126788013)
,p_view_id=>wwv_flow_imp.id(114505530594787992)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(114499953361783308)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(114516886524788016)
,p_view_id=>wwv_flow_imp.id(114505530594787992)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(114500096174783309)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(114551858905014624)
,p_view_id=>wwv_flow_imp.id(114505530594787992)
,p_display_seq=>14
,p_column_id=>wwv_flow_imp.id(114501571362783324)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(114552791538014627)
,p_view_id=>wwv_flow_imp.id(114505530594787992)
,p_display_seq=>15
,p_column_id=>wwv_flow_imp.id(114501631405783325)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(114617029935642228)
,p_view_id=>wwv_flow_imp.id(114505530594787992)
,p_display_seq=>0
,p_column_id=>wwv_flow_imp.id(114503855315783347)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(112365381458949001)
,p_plug_name=>'Datos Administrativos'
,p_parent_plug_id=>wwv_flow_imp.id(111522137060339629)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
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
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(112365677008949004)
,p_plug_name=>unistr('Datos de Anulaci\00F3n')
,p_parent_plug_id=>wwv_flow_imp.id(111522137060339629)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(112365735293949005)
,p_plug_name=>'Estado del Recibo'
,p_parent_plug_id=>wwv_flow_imp.id(111522137060339629)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>30
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(112942692211633711)
,p_plug_name=>unistr('Comprobantes a a\00F1adir')
,p_region_template_options=>'#DEFAULT#:js-dialog-autoheight:t-DialogRegion--noPadding:js-dialog-size720x480'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>20
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(113895748005533430)
,p_plug_name=>'COLECCION_REPORTE'
,p_region_name=>'COLL_REPORTE'
,p_parent_plug_id=>wwv_flow_imp.id(112942692211633711)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>30
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT COLL.C001 Empresa, --COD_EMPRESA',
'        COLL.C002 Nro, --NRO_COMPROBANTE',
'        COLL.C003 Ser, --SER_COMPROBANTE',
'        COLL.C004 Tip, --TIP_COMPROBANTE',
'        COLL.C005 Cuota,',
'        COLL.C006 Saldo_Cuota,',
'        COLL.C007 Monto_Cuota,',
'        COLL.C008 Moneda,',
'        COLL.C009 Vencimiento,',
'        COLL.C010 PAGARE',
'  FROM APEX_COLLECTIONS COLL',
' WHERE COLLECTION_NAME = ''COL_COMPR_CCRECIBO'';'))
,p_plug_source_type=>'NATIVE_IG'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'NEVER'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'COLECCION_REPROTE'
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
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(113896015437533433)
,p_name=>'EMPRESA'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EMPRESA'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Empresa'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>30
,p_value_alignment=>'LEFT'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
,p_is_required=>false
,p_max_length=>4000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(113896103242533434)
,p_name=>'NRO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'NRO'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Nro'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>40
,p_value_alignment=>'LEFT'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
,p_is_required=>false
,p_max_length=>4000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(113896230920533435)
,p_name=>'SER'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SER'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Ser'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
,p_is_required=>false
,p_max_length=>4000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(113896327441533436)
,p_name=>'TIP'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TIP'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Tip'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>60
,p_value_alignment=>'LEFT'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
,p_is_required=>false
,p_max_length=>4000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(113897535094533448)
,p_name=>'CUOTA'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CUOTA'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Cuota'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>70
,p_value_alignment=>'CENTER'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
,p_is_required=>false
,p_max_length=>4000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(113897667003533449)
,p_name=>'SALDO_CUOTA'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SALDO_CUOTA'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Saldo'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>80
,p_value_alignment=>'RIGHT'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
,p_is_required=>false
,p_max_length=>4000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(113897795614533450)
,p_name=>'MONTO_CUOTA'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MONTO_CUOTA'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Monto Cuota'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>90
,p_value_alignment=>'RIGHT'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
,p_is_required=>false
,p_max_length=>4000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(114037374533351401)
,p_name=>'MONEDA'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MONEDA'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Moneda'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>100
,p_value_alignment=>'CENTER'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
,p_is_required=>false
,p_max_length=>4000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(114037435782351402)
,p_name=>'VENCIMIENTO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'VENCIMIENTO'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Vencimiento'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>110
,p_value_alignment=>'LEFT'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
,p_is_required=>false
,p_max_length=>4000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(114037599605351403)
,p_name=>'PAGARE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PAGARE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Pagare'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>120
,p_value_alignment=>'LEFT'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
,p_is_required=>false
,p_max_length=>4000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(114630057297852305)
,p_name=>'APEX$ROW_ACTION'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_use_as_row_header=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(114630113397852306)
,p_name=>'APEX$ROW_SELECTOR'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>10
,p_attribute_01=>'Y'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
,p_use_as_row_header=>false
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(113895813445533431)
,p_internal_uid=>113895813445533431
,p_is_editable=>true
,p_lost_update_check_type=>'VALUES'
,p_submit_checked_rows=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>false
,p_fixed_row_height=>true
,p_pagination_type=>'SET'
,p_show_total_row_count=>true
,p_show_toolbar=>true
,p_toolbar_buttons=>'SEARCH_COLUMN:SEARCH_FIELD:ACTIONS_MENU'
,p_enable_save_public_report=>true
,p_enable_subscriptions=>true
,p_enable_flashback=>false
,p_define_chart_view=>false
,p_enable_download=>false
,p_download_formats=>null
,p_enable_mail_download=>true
,p_fixed_header=>'REGION'
,p_fixed_header_max_height=>500
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(113958355241035616)
,p_interactive_grid_id=>wwv_flow_imp.id(113895813445533431)
,p_static_id=>'1139584'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(113958574488035616)
,p_report_id=>wwv_flow_imp.id(113958355241035616)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(113959987567035620)
,p_view_id=>wwv_flow_imp.id(113958574488035616)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(113896015437533433)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(113960825707035622)
,p_view_id=>wwv_flow_imp.id(113958574488035616)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(113896103242533434)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>121.99
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(113961756862035624)
,p_view_id=>wwv_flow_imp.id(113958574488035616)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(113896230920533435)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>92.392
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(113962648586035626)
,p_view_id=>wwv_flow_imp.id(113958574488035616)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(113896327441533436)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>79.399
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(114043205287351574)
,p_view_id=>wwv_flow_imp.id(113958574488035616)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(113897535094533448)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>49.9931
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(114044176440351576)
,p_view_id=>wwv_flow_imp.id(113958574488035616)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(113897667003533449)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>79
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(114045004318351578)
,p_view_id=>wwv_flow_imp.id(113958574488035616)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(113897795614533450)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>148.99
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(114045951181351580)
,p_view_id=>wwv_flow_imp.id(113958574488035616)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(114037374533351401)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>67.97900000000001
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(114046854941351581)
,p_view_id=>wwv_flow_imp.id(113958574488035616)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(114037435782351402)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>94
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(114047772472351583)
,p_view_id=>wwv_flow_imp.id(113958574488035616)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(114037599605351403)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>63.968999999999994
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(114643917084024417)
,p_view_id=>wwv_flow_imp.id(113958574488035616)
,p_display_seq=>0
,p_column_id=>wwv_flow_imp.id(114630057297852305)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(114502143258783330)
,p_plug_name=>unistr('Anulaci\00F3n Comprobante')
,p_region_template_options=>'#DEFAULT#:js-dialog-autoheight:js-dialog-size720x480'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>30
,p_plug_source=>unistr('<b>Debe ingresar un motivo de anulaci\00F3n</b>')
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(112277272667665850)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(112276901728665847)
,p_button_name=>'BTN_FORM_COBRO'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--iconRight:t-Button--gapLeft:t-Button--gapTop:t-Button--padBottom'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Forma de Cobro'
,p_button_redirect_url=>'f?p=&APP_ID.:95:&SESSION.::&DEBUG.:::'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(112273332372665811)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(112272931293665807)
,p_button_name=>'BTN_BUSCAR'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Buscar'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(114502528332783334)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(114502143258783330)
,p_button_name=>'BTN_Cancelar'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Cancelar'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(114502498660783333)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(114502143258783330)
,p_button_name=>'BTN_ACEPTAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Aceptar'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(112942250926633707)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(112276842313665846)
,p_button_name=>'BTN_AGREGAR_COMPROBANTE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Agregar Comprobantes'
,p_button_position=>'NEXT'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(113030390402562216)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(112942692211633711)
,p_button_name=>'BTN_SELECCIONAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Seleccionar'
,p_button_position=>'NEXT'
,p_warn_on_unsaved_changes=>null
,p_button_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(116512604417245014)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(112942692211633711)
,p_button_name=>'BTAGREGAR_EDITAR_DET'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Agregar/Editar Detalle'
,p_button_position=>'NEXT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(114503526347783344)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(111522137060339629)
,p_button_name=>'BTN_GUARDAR_CAMBIOS'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Guardar Recibo'
,p_button_position=>'TOP'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(111522979357339637)
,p_name=>'P378_SUCURSAL'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(111523151011339639)
,p_prompt=>'Sucursal'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LOV_SUCURSAL_COD'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT COD_SUCURSAL||''-''||DESCRIPCION d,',
'       COD_SUCURSAL r',
'  FROM SUCURSALES',
'WHERE COD_EMPRESA = :P_COD_EMPRESA'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'Seleccione'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(111523051898339638)
,p_name=>'P378_CLIENTE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(111523318516339641)
,p_prompt=>'Cliente'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select c.cod_cliente||''-''|| nvl( ltrim(p.nombre), ltrim( p.nomb_fantasia ) ) D, c.cod_cliente r ',
'from cc_clientes c, personas p ',
'where c.cod_empresa = :P_cod_empresa',
'and c.cod_persona = p.cod_persona ',
'order by 2'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'Seleccione'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(111523531625339643)
,p_name=>'P378_GEN_DOC'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(112272931293665807)
,p_prompt=>'Gen. tras de documentos'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(111523628502339644)
,p_name=>'P378_COBRADOR'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(111523318516339641)
,p_prompt=>'Cobrador'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select c.cod_cobrador||''-''||nvl( ltrim(p.nombre), ltrim(p.nomb_fantasia)) d, c.cod_cobrador r',
'from cc_cobradores c, personas p ',
'where c.cod_empresa = :p_cod_empresa ',
'and c.cod_persona = p.cod_persona ',
'order by 2'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'Seleccione'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(111523736413339645)
,p_name=>'P378_SER_RECIBO'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(111523151011339639)
,p_prompt=>'Recibo'
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
 p_id=>wwv_flow_imp.id(111523816919339646)
,p_name=>'P378_NRO_RECIBO'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(111523151011339639)
,p_prompt=>'Nro Recibo'
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
 p_id=>wwv_flow_imp.id(111523969322339647)
,p_name=>'P378_FECHA_RECIBO'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(111523151011339639)
,p_prompt=>'Fecha Recibo'
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
 p_id=>wwv_flow_imp.id(111524052017339648)
,p_name=>'P378_SER_COMPROBANTE_REF'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(111523151011339639)
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(111524126996339649)
,p_name=>'P378_NRO_COMPROBANTE_REF'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(111523151011339639)
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(111524235844339650)
,p_name=>'P378_TIP_COMPROBANTE_REF'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(111523151011339639)
,p_prompt=>'Ref.:'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(112168516961065527)
,p_name=>'P378_V_ESTADO'
,p_item_sequence=>350
,p_item_plug_id=>wwv_flow_imp.id(111522137060339629)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(112168619875065528)
,p_name=>'P378_V_FEC_ESTADO'
,p_item_sequence=>340
,p_item_plug_id=>wwv_flow_imp.id(111522137060339629)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(112168764714065529)
,p_name=>'P378_ANULACION_INICIAL'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(111523151011339639)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(112168868684065530)
,p_name=>'P378_V_P_REQUIERE_DETALLE'
,p_item_sequence=>360
,p_item_plug_id=>wwv_flow_imp.id(111522137060339629)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(112169029934065532)
,p_name=>'P378_V_SER_CAMBIO'
,p_item_sequence=>370
,p_item_plug_id=>wwv_flow_imp.id(111522137060339629)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(112169166092065533)
,p_name=>'P378_TIP_RECIBO'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(111523151011339639)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(112272471698665802)
,p_name=>'P378_ANUL_REAL'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(111523151011339639)
,p_prompt=>'Anulado Real'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_colspan=>4
,p_grid_column=>4
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(112272511540665803)
,p_name=>'P378_COD_MONEDA'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(111523318516339641)
,p_prompt=>'Cod Moneda'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT cod_moneda||''-''||descripcion D, cod_moneda R',
'FROM MONEDAS'))
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
 p_id=>wwv_flow_imp.id(112272621530665804)
,p_name=>'P378_CUSTODIO'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(111523318516339641)
,p_prompt=>'Custodio'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select c.cod_custodio||''-''||c.descripcion d, c.cod_custodio r',
'from usuarios_custodios u, cc_custodios c ',
'where u.cod_empresa = :p_cod_empresa ',
'and u.cod_usuario = :p_cod_usuario ',
'and u.cod_empresa = c.cod_empresa ',
'and u.cod_custodio = c.cod_custodio ',
'and u.cod_custodio <> :p378_cod_custodio ',
'union all ',
'select c.cod_custodio||''-''||c.descripcion d, c.cod_custodio r',
'from cc_custodios c ',
'where c.cod_empresa = :p_cod_empresa ',
'and c.cod_custodio = :p378_cod_custodio',
'order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'Seleccione'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(112272784860665805)
,p_name=>'P378_V_COD_CUSTODIO'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(111522137060339629)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(112272841061665806)
,p_name=>'P378_TIP_CAMBIO'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(111523318516339641)
,p_prompt=>'Cambio'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(112273007273665808)
,p_name=>'P378_IMP_S_FP'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(112272931293665807)
,p_prompt=>'Imprimir sin fo. Pago'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(112273100769665809)
,p_name=>'P378_CUSTODIO_ENT'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(112272931293665807)
,p_prompt=>'Custodio Destino'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cod_custodio||''-''||descripcion d, cod_custodio r',
'from cc_custodios ',
'where cod_empresa = :P_COD_EMPRESA',
'and cod_custodio <> :P378_CUSTODIO ',
'order by descripcion'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'Seleccione'
,p_cSize=>30
,p_colspan=>3
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
 p_id=>wwv_flow_imp.id(112273251579665810)
,p_name=>'P378_NRO_PLANILLA'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(112272931293665807)
,p_prompt=>'Planilla'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
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
 p_id=>wwv_flow_imp.id(112273456461665812)
,p_name=>'P378_FEC_VENC_D'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(112272931293665807)
,p_prompt=>'Fecha Vencimiento Desde'
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
 p_id=>wwv_flow_imp.id(112273598662665813)
,p_name=>'P378_FEC_VENC_H'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(112272931293665807)
,p_prompt=>'Fecha Vencimiento Hasta'
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
 p_id=>wwv_flow_imp.id(112273671269665814)
,p_name=>'P378_FEC_EMISION_D'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(112272931293665807)
,p_prompt=>'Fecha Emision Desde'
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
 p_id=>wwv_flow_imp.id(112273784965665815)
,p_name=>'P378_FEC_EMI_HASTA'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(112272931293665807)
,p_prompt=>unistr('Fecha Emisi\00F3n Hasta')
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
 p_id=>wwv_flow_imp.id(112274080599665818)
,p_name=>'P378_TRANSACCION'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(112276901728665847)
,p_prompt=>unistr('Transacci\00F3n')
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(112274104085665819)
,p_name=>'P378_MONEDA'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(112276901728665847)
,p_prompt=>'Moneda'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(112277059358665848)
,p_name=>'P378_COMENTARIO'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(112276901728665847)
,p_prompt=>'Comentario'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cHeight=>3
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(112277175725665849)
,p_name=>'P378_TOTAL'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(112276901728665847)
,p_prompt=>'Total'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(112365433264949002)
,p_name=>'P378_USUARIO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(112365381458949001)
,p_prompt=>'Usuario'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(112365584192949003)
,p_name=>'P378_MOV_DE_CAJA'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(112365381458949001)
,p_prompt=>'Mov. De Caja'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(112365845859949006)
,p_name=>'P378_ANULADO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(112365677008949004)
,p_prompt=>'Anulado'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
,p_attribute_03=>'P'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(112365949572949007)
,p_name=>'P378_USUARIO_ANUL'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(112365677008949004)
,p_prompt=>'Usuario'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(112366085308949008)
,p_name=>'P378_FEC_ANUL'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(112365677008949004)
,p_prompt=>'Fec Anul'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(112366156328949009)
,p_name=>'P378_MOTIVO_ANUL'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(112365677008949004)
,p_prompt=>unistr('Motivo Anulaci\00F3n')
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(112366289285949010)
,p_name=>'P378_ESTADO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(112365735293949005)
,p_prompt=>'Estado'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(112366346874949011)
,p_name=>'P378_FEC_ESTADO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(112365735293949005)
,p_prompt=>'Fecha Estado'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(112366476623949012)
,p_name=>'P378_ASIENTO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(112365735293949005)
,p_prompt=>'Asiento'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(112366587945949013)
,p_name=>'P378_ASIENTO_ANUL'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(112365735293949005)
,p_prompt=>unistr('Asiento Anulaci\00F3n')
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(112366675652949014)
,p_name=>'P378_V_COD_MODULO'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(111522137060339629)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(112367357391949021)
,p_name=>'P378_V_TIPO_TRAN'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(111522137060339629)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(112367604871949024)
,p_name=>'P378_V_SUB_TIPO_TRANS'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(111522137060339629)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(112367722635949025)
,p_name=>'P378_V_TIPO_RECIBO'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(111522137060339629)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(112367850516949026)
,p_name=>'P378_V_SER_RECIBO'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(111522137060339629)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(112367923650949027)
,p_name=>'P378_V_TIPO_CHEQUE'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(111522137060339629)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(112368040126949028)
,p_name=>'P378_P_TIP_COMPROBANTE'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(111522137060339629)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(112369199334949039)
,p_name=>'P378_V_TIPO_TALON_FACTURA'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(111522137060339629)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(112369408942949042)
,p_name=>'P378_V_GENERA_MD'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(111522137060339629)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(112369583595949043)
,p_name=>'P378_V_COD_CUSTODIO_ENT'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(111522137060339629)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(112370020834949048)
,p_name=>'P378_V_TIP_ANTICIPO'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(111522137060339629)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(112737453853665102)
,p_name=>'P378_V_CLIENTE_CONTADO_CREDITO'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_imp.id(111522137060339629)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(112737776749665105)
,p_name=>'P378_V_REIMPRIME'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_imp.id(111522137060339629)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(112737876376665106)
,p_name=>'P378_V_MODIFICA_CAMBIO'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_imp.id(111522137060339629)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(112738331991665111)
,p_name=>'P378_V_PERMITE_ANULAR'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_imp.id(111522137060339629)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(112738683919665114)
,p_name=>'P378_V_CARGA_SUCURSAL'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_imp.id(111522137060339629)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(112738998766665117)
,p_name=>'P378_V_CARGA_TIP_CAMBIO'
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_imp.id(111522137060339629)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(112739276850665120)
,p_name=>'P378_V_CARGA_SUB_TIPO_TRANS'
,p_item_sequence=>270
,p_item_plug_id=>wwv_flow_imp.id(111522137060339629)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(112739577795665123)
,p_name=>'P378_V_MODIFICA_FECHA_ANT'
,p_item_sequence=>280
,p_item_plug_id=>wwv_flow_imp.id(111522137060339629)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(112739894446665126)
,p_name=>'P378_V_CAMBIA_FECHA'
,p_item_sequence=>290
,p_item_plug_id=>wwv_flow_imp.id(111522137060339629)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(112740179970665129)
,p_name=>'P378_V_CARGA_SENIA'
,p_item_sequence=>300
,p_item_plug_id=>wwv_flow_imp.id(111522137060339629)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(112740935773665137)
,p_name=>'P378_V_NRO_INICIAL'
,p_item_sequence=>310
,p_item_plug_id=>wwv_flow_imp.id(111522137060339629)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(112741234682665140)
,p_name=>'P378_V_NRO_FINAL'
,p_item_sequence=>320
,p_item_plug_id=>wwv_flow_imp.id(111522137060339629)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(112741542851665143)
,p_name=>'P378_V_SERIE'
,p_item_sequence=>330
,p_item_plug_id=>wwv_flow_imp.id(111522137060339629)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(113032667673562239)
,p_name=>'P378_NRO_SELECT'
,p_item_sequence=>380
,p_item_plug_id=>wwv_flow_imp.id(111522137060339629)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(113032736646562240)
,p_name=>'P378_SER_SELECT'
,p_item_sequence=>390
,p_item_plug_id=>wwv_flow_imp.id(111522137060339629)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(113032844429562241)
,p_name=>'P378_TIP_SELECT'
,p_item_sequence=>400
,p_item_plug_id=>wwv_flow_imp.id(111522137060339629)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(113032967827562242)
,p_name=>'P378_NRO_SELEC'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(112942692211633711)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(113033073321562243)
,p_name=>'P378_TIP_SELEC'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(112942692211633711)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(113033195476562244)
,p_name=>'P378_SER_SELEC'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(112942692211633711)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(113033275862562245)
,p_name=>'P378_ROW_ID_SELECT'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(112942692211633711)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(113893596092533408)
,p_name=>'P378_NRO_EM_SELEC'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(112942692211633711)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(114038366772351411)
,p_name=>'P378_DECIMALES'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(111523318516339641)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(114038805733351416)
,p_name=>'P378_COD_CUSTODIO'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(111523318516339641)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(114304324360370921)
,p_name=>'P378_TIPO_TRANSAC'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(112942692211633711)
,p_prompt=>unistr('Tipo Transacci\00F3n')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select subtipo_trans||''-''||descripcion d, subtipo_trans r ',
'from subtipos_trans ',
'where cod_empresa = :p_cod_empresa ',
'and cod_modulo = :P378_V_COD_MODULO ',
'and tipo_trans = :P378_V_TIPO_TRAN'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'Seleccione'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(114305015776370928)
,p_name=>'P378_SEQ_ID_BORRAR'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(113893725926533410)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(114500119865783310)
,p_name=>'P378_COD_MONE_SELECT'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(113893725926533410)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(114500292677783311)
,p_name=>'P378_TIP_TRAN_SELECT'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(113893725926533410)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(114502376945783332)
,p_name=>'P378_MOTIVO_ANULA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(114502143258783330)
,p_prompt=>unistr('Motivo Anulaci\00F3n')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select descripcion d, cod_motivo_anu r',
'from vt_motivo_anulacion',
' where cod_empresa = :p_cod_empresa ',
' and tip_motivo = ''4'' ',
' order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'Seleccione'
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
 p_id=>wwv_flow_imp.id(114629774705852302)
,p_name=>'P378_GENERA_CREDITO'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(113893725926533410)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(116511986120245007)
,p_name=>'P378_EDIT_DATA_DET'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(112169772255065539)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(116512027780245008)
,p_name=>'P378_DELETE_DATA_DET'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(112169772255065539)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(116512591543245013)
,p_name=>'P378_TIP_FACTURA_REF_ADD'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(112942692211633711)
,p_prompt=>'Tipo'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_SALDOS2_CCRECIBO'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select /*+ rule */',
'     c.tipo_comprobante TIPO_COMPROBANTE,',
'     c.ser_comprobante SER_COMPROBANTE,',
'     c.nro_comprobante,',
'     c.nro_cuota,',
'     c.nro_valor,',
'     c.saldo_cuota - nvl(c.rec_pendientes, 0) as saldo_cuota,',
'     c.monto_cuota,',
'     c.cod_moneda_cuota,',
'     c.fec_vencimiento,',
'     c.fec_acobrar,',
'     c.cod_custodio,',
'     c.rowid ROW_ID',
'  from cc_saldos c',
' where c.cod_empresa = :P_COD_EMPRESA',
'   and c.cod_cliente = :P394_CLIENTE',
'   AND C.FEC_VENCIMIENTO > ADD_MONTHS(SYSDATE, -900)',
'   and nvl(c.saldo_cuota, 0) - nvl(rec_pendientes, 0) <> 0',
'   and (c.cod_custodio = :P394_CUSTODIO or',
'       c.cod_custodio in',
'       (select cod_custodio',
'           from usuarios_custodios',
'          where cod_empresa = :P_COD_EMPRESA',
'            and cod_usuario = :P_COD_USUARIO))',
' order by fec_vencimiento'))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P378_CLIENTE,P378_CUSTODIO'
,p_ajax_items_to_submit=>'P378_CLIENTE,P378_CUSTODIO'
,p_ajax_optimize_refresh=>'Y'
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
 p_id=>wwv_flow_imp.id(112366713736949015)
,p_name=>'DA_V_COD_MODULO'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P378_V_COD_MODULO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(112366860146949016)
,p_event_id=>wwv_flow_imp.id(112366713736949015)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P378_V_COD_MODULO'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(112366997484949017)
,p_name=>'DA_V_COD_CUSTODIO'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P378_V_COD_CUSTODIO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(112367000497949018)
,p_event_id=>wwv_flow_imp.id(112366997484949017)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'null;'
,p_attribute_02=>'P378_V_COD_CUSTODIO'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(112367426198949022)
,p_name=>'DA_V_TIPO_TRAN'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P378_V_TIPO_TRAN'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(112367529472949023)
,p_event_id=>wwv_flow_imp.id(112367426198949022)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P378_V_TIPO_TRAN'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(112368189170949029)
,p_name=>'DA_P_TIP_COMPROBANTE'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P378_P_TIP_COMPROBANTE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(112368244609949030)
,p_event_id=>wwv_flow_imp.id(112368189170949029)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P378_P_TIP_COMPROBANTE'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(112368307910949031)
,p_name=>'DA_V_TIPO_CHEQUE'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P378_V_TIPO_CHEQUE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(112368448913949032)
,p_event_id=>wwv_flow_imp.id(112368307910949031)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P378_V_TIPO_CHEQUE'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(112368543564949033)
,p_name=>'DA_V_SER_RECIBO'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P378_V_SER_RECIBO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(112368647221949034)
,p_event_id=>wwv_flow_imp.id(112368543564949033)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P378_V_SER_RECIBO'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(112368792008949035)
,p_name=>'DA_V_TIPO_RECIBO'
,p_event_sequence=>70
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P378_V_TIPO_RECIBO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(112368892539949036)
,p_event_id=>wwv_flow_imp.id(112368792008949035)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P378_V_TIPO_RECIBO'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(112368979425949037)
,p_name=>'DA_V_SUB_TIPO_TRANS'
,p_event_sequence=>80
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P378_V_SUB_TIPO_TRANS'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(112369030105949038)
,p_event_id=>wwv_flow_imp.id(112368979425949037)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P378_V_SUB_TIPO_TRANS'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(112369216408949040)
,p_name=>'DA_V_TIPO_TALON_FACTURA'
,p_event_sequence=>90
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P378_V_TIPO_TALON_FACTURA'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(112369328133949041)
,p_event_id=>wwv_flow_imp.id(112369216408949040)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P378_V_TIPO_TALON_FACTURA'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(112369626178949044)
,p_name=>'DA_V_COD_CUSTODIO_ENT'
,p_event_sequence=>100
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P378_V_COD_CUSTODIO_ENT'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(112369762924949045)
,p_event_id=>wwv_flow_imp.id(112369626178949044)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P378_V_COD_CUSTODIO_ENT'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(112369810705949046)
,p_name=>'DA_V_GENERA_MD'
,p_event_sequence=>110
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P378_V_GENERA_MD'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(112369941166949047)
,p_event_id=>wwv_flow_imp.id(112369810705949046)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P378_V_GENERA_MD'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(112370108614949049)
,p_name=>'DA_V_TIP_ANTICIPO'
,p_event_sequence=>120
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P378_V_TIP_ANTICIPO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(112370287041949050)
,p_event_id=>wwv_flow_imp.id(112370108614949049)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P378_V_TIP_ANTICIPO'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(112737582449665103)
,p_name=>'DA_V_CLIENTE_CONTADO_CREDITO'
,p_event_sequence=>130
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P378_V_CLIENTE_CONTADO_CREDITO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(112737600514665104)
,p_event_id=>wwv_flow_imp.id(112737582449665103)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P378_V_CLIENTE_CONTADO_CREDITO'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(112737992248665107)
,p_name=>'DA_V_REIMPRIME'
,p_event_sequence=>140
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P378_V_REIMPRIME'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(112738000163665108)
,p_event_id=>wwv_flow_imp.id(112737992248665107)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P378_V_REIMPRIME'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(112738122981665109)
,p_name=>'DA_V_MODIFICA_CAMBIO'
,p_event_sequence=>150
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P378_V_MODIFICA_CAMBIO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(112738220806665110)
,p_event_id=>wwv_flow_imp.id(112738122981665109)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P378_V_MODIFICA_CAMBIO'
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
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(112738483542665112)
,p_name=>'DA_V_PERMITE_ANULAR'
,p_event_sequence=>160
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P378_V_PERMITE_ANULAR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(112738518809665113)
,p_event_id=>wwv_flow_imp.id(112738483542665112)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'null;'
,p_attribute_02=>'P378_V_PERMITE_ANULAR'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(112738702096665115)
,p_name=>'DA_V_CARGA_SUCURSAL'
,p_event_sequence=>170
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P378_V_CARGA_SUCURSAL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(112738820029665116)
,p_event_id=>wwv_flow_imp.id(112738702096665115)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'null;'
,p_attribute_02=>'P378_V_CARGA_SUCURSAL'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(112740558591665133)
,p_event_id=>wwv_flow_imp.id(112738702096665115)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P378_SUCURSAL'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P378_V_CARGA_SUCURSAL'
,p_client_condition_expression=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(112739065553665118)
,p_name=>'DA_V_CARGA_TIP_CAMBIO'
,p_event_sequence=>180
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P378_V_CARGA_TIP_CAMBIO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(112739174315665119)
,p_event_id=>wwv_flow_imp.id(112739065553665118)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'null;'
,p_attribute_02=>'P378_V_CARGA_TIP_CAMBIO'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(112740794147665135)
,p_event_id=>wwv_flow_imp.id(112739065553665118)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P378_TIP_CAMBIO'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P378_V_CARGA_TIP_CAMBIO'
,p_client_condition_expression=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(112739358442665121)
,p_name=>'DA_V_CARGA_SUB_TIPO_TRANS'
,p_event_sequence=>190
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P378_V_CARGA_SUB_TIPO_TRANS'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(112739472256665122)
,p_event_id=>wwv_flow_imp.id(112739358442665121)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'null;'
,p_attribute_02=>'P378_V_CARGA_SUB_TIPO_TRANS'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(112739670925665124)
,p_name=>'DA_V_MODIFICA_FECHA_ANT'
,p_event_sequence=>200
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P378_V_MODIFICA_FECHA_ANT'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(112739717869665125)
,p_event_id=>wwv_flow_imp.id(112739670925665124)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'null;'
,p_attribute_02=>'P378_V_MODIFICA_FECHA_ANT'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(112739958866665127)
,p_name=>'DA_V_CAMBIA_FECHA'
,p_event_sequence=>210
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P378_V_CAMBIA_FECHA'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(112740017478665128)
,p_event_id=>wwv_flow_imp.id(112739958866665127)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'null;'
,p_attribute_02=>'P378_V_CAMBIA_FECHA'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(112740249991665130)
,p_name=>'DA_V_CARGA_SENIA'
,p_event_sequence=>220
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P378_V_CARGA_SENIA'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(112740344145665131)
,p_event_id=>wwv_flow_imp.id(112740249991665130)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'null;'
,p_attribute_02=>'P378_V_CARGA_SENIA'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(112741098174665138)
,p_name=>'DA_V_NRO_INICIAL'
,p_event_sequence=>230
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P378_V_NRO_INICIAL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(112741136710665139)
,p_event_id=>wwv_flow_imp.id(112741098174665138)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'null;'
,p_attribute_02=>'P378_V_NRO_INICIAL'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(112741341335665141)
,p_name=>'DA_V_NRO_FINAL'
,p_event_sequence=>240
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P378_V_NRO_FINAL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(112741425859665142)
,p_event_id=>wwv_flow_imp.id(112741341335665141)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P378_V_NRO_FINAL'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(112741605971665144)
,p_name=>'DA_V_SERIE'
,p_event_sequence=>250
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P378_V_SERIE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(112741771776665145)
,p_event_id=>wwv_flow_imp.id(112741605971665144)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P378_V_SERIE'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(112741819002665146)
,p_name=>'DA_SER_RECIBO'
,p_event_sequence=>260
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P378_SER_RECIBO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(114629911614852304)
,p_event_id=>wwv_flow_imp.id(112741819002665146)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P378_SER_RECIBO'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(112742024537665148)
,p_name=>'DA_NRO_RECIBO'
,p_event_sequence=>270
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P378_NRO_RECIBO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(114629844012852303)
,p_event_id=>wwv_flow_imp.id(112742024537665148)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'null;'
,p_attribute_02=>'P378_NRO_RECIBO'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(112941831805633703)
,p_name=>'DA_TRANSACCION'
,p_event_sequence=>280
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P378_TRANSACCION'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(112941947334633704)
,p_event_id=>wwv_flow_imp.id(112941831805633703)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'null;'
,p_attribute_02=>'P378_TRANSACCION'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(112942372042633708)
,p_name=>'DA_ABRE_REGION'
,p_event_sequence=>300
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(112942250926633707)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(113029768431562210)
,p_event_id=>wwv_flow_imp.id(112942372042633708)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P378_MOSTRAR_REPORTE'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_02=>'1'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(113896558909533438)
,p_event_id=>wwv_flow_imp.id(112942372042633708)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'CCRECIBO.PR_CARGAR_DETALLE(PI_COD_EMPRESA       => :P_COD_EMPRESA,',
'                            PI_COD_CLIENTE => :P378_CLIENTE);',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;',
'                '))
,p_attribute_02=>'P378_CLIENTE,P_COD_EMPRESA'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(113896627458533439)
,p_event_id=>wwv_flow_imp.id(112942372042633708)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(113895748005533430)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(112942532968633710)
,p_event_id=>wwv_flow_imp.id(112942372042633708)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(112942692211633711)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(113029563541562208)
,p_name=>'New_29'
,p_event_sequence=>310
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P378_MOSTRAR_REPORTE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(113029673039562209)
,p_event_id=>wwv_flow_imp.id(113029563541562208)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'null;'
,p_attribute_02=>'P378_MOSTRAR_REPORTE'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(113030429098562217)
,p_name=>'DA_BTN_SELECCIONAR'
,p_event_sequence=>330
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(113030390402562216)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(114304677054370924)
,p_event_id=>wwv_flow_imp.id(113030429098562217)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'Debe seleccionar Tipo de Transaccion'
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P378_TIPO_TRANSAC'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(113893625438533409)
,p_event_id=>wwv_flow_imp.id(113030429098562217)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'CCRECIBO.INSERTAR_COLECCION(PI_COD_EMPRESA       => :P_COD_EMPRESA,',
'    					    PI_NRO_COMPROBANTE      => :P378_NRO_SELEC,',
'    					    PI_SER_COMPROBANTE  => :P378_SER_SELEC,    					  ',
'    					    PI_TIP_COMPROBANTE          => :P378_TIP_SELEC,',
'                            PI_COD_CLIENTE => :P378_CLIENTE,',
'                            PI_COD_MONEDA => :P378_COD_MONEDA,',
'                            PI_COD_TIPO_CAMBIO => :P378_TIP_CAMBIO,',
'                            PI_TIP_TRANSC => :P378_TIPO_TRANSAC,',
'                            PI_COD_MODULO => :P378_V_COD_MODULO,',
'                            PI_V_TIPO_TRAN => :P378_V_TIPO_TRAN,',
'                            PO_TOT => :P378_TOTAL);                       ',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;',
'                '))
,p_attribute_02=>'P378_NRO_SELEC,P378_TIP_SELEC,P378_SER_SELEC,P378_CLIENTE,P_COD_EMPRESA,P378_TIP_CAMBIO,P378_COD_MONEDA,P378_TIPO_TRANSAC,P378_V_COD_MODULO,P378_V_TIPO_TRAN'
,p_attribute_03=>'P378_TOTAL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P378_TIPO_TRANSAC'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(113894739826533420)
,p_event_id=>wwv_flow_imp.id(113030429098562217)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(113893725926533410)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(113030521551562218)
,p_event_id=>wwv_flow_imp.id(113030429098562217)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(112942692211633711)
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P378_TIPO_TRANSAC'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(114304749049370925)
,p_event_id=>wwv_flow_imp.id(113030429098562217)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P378_TIPO_TRANSAC'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(113033338706562246)
,p_name=>'DA_ROW_ID_SELECT'
,p_event_sequence=>340
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P378_ROW_ID_SELECT'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(113033411663562247)
,p_event_id=>wwv_flow_imp.id(113033338706562246)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'null;'
,p_attribute_02=>'P378_ROW_ID_SELECT'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(113892967020533402)
,p_name=>'DA_SER_SELEC'
,p_event_sequence=>370
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P378_SER_SELEC'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(113893046375533403)
,p_event_id=>wwv_flow_imp.id(113892967020533402)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'null;'
,p_attribute_02=>'P378_SER_SELEC'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(113893199976533404)
,p_name=>'DA_TIP_SELEC'
,p_event_sequence=>380
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P378_TIP_SELEC'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(113893216573533405)
,p_event_id=>wwv_flow_imp.id(113893199976533404)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'null;'
,p_attribute_02=>'P378_TIP_SELEC'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(113893343898533406)
,p_name=>'DA_NRO_SELEC'
,p_event_sequence=>390
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P378_NRO_SELEC'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(113893459705533407)
,p_event_id=>wwv_flow_imp.id(113893343898533406)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'null;'
,p_attribute_02=>'P378_NRO_SELEC'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(113894530998533418)
,p_name=>'DA_CLIENTE'
,p_event_sequence=>400
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P378_CLIENTE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(113894619587533419)
,p_event_id=>wwv_flow_imp.id(113894530998533418)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'null;'
,p_attribute_02=>'P378_CLIENTE'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(113895205557533425)
,p_name=>'DA_NRO_EM_SELECT'
,p_event_sequence=>410
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P378_NRO_EM_SELEC'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(113895340788533426)
,p_event_id=>wwv_flow_imp.id(113895205557533425)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'null;'
,p_attribute_02=>'P378_NRO_EM_SELEC'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(113895536075533428)
,p_name=>'DA_NRO_SELECT'
,p_event_sequence=>420
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P378_NRO_SELECT'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(113895610299533429)
,p_event_id=>wwv_flow_imp.id(113895536075533428)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'null;'
,p_attribute_02=>'P378_NRO_SELECT'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(113897372345533446)
,p_name=>'DA_COLLECCION_REPORTE'
,p_event_sequence=>440
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(113895748005533430)
,p_bind_type=>'bind'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|interactivegridselectionchange'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(113897400493533447)
,p_event_id=>wwv_flow_imp.id(113897372345533446)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'obtenerRegistrosSeleccionados_2();'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(114038422854351412)
,p_name=>'DA_DECIMALES'
,p_event_sequence=>450
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P378_DECIMALES'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(114038586933351413)
,p_event_id=>wwv_flow_imp.id(114038422854351412)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P378_DECIMALES'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(114038688942351414)
,p_name=>'DA_COD_MONEDA'
,p_event_sequence=>460
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P378_COD_MONEDA'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(114038748871351415)
,p_event_id=>wwv_flow_imp.id(114038688942351414)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'select TIPO_CAMBIO_DIA, decimales',
'    into :p378_tip_cambio, :p378_decimales',
'    from monedas',
'   where cod_moneda = :p378_cod_moneda;',
'exception when others then null;',
'end;'))
,p_attribute_02=>'P378_COD_MONEDA'
,p_attribute_03=>'P378_TIP_CAMBIO,P378_DECIMALES'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(114038947502351417)
,p_name=>'DA_COD_CUSTODIO'
,p_event_sequence=>470
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P378_COD_CUSTODIO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(114039073043351418)
,p_event_id=>wwv_flow_imp.id(114038947502351417)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P378_COD_CUSTODIO'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(114305182210370929)
,p_name=>'DA_SEQ_ID_BORRAR'
,p_event_sequence=>480
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P378_DELETE_DATA_DET'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(114305261997370930)
,p_event_id=>wwv_flow_imp.id(114305182210370929)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P378_DELETE_DATA_DET'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(112169521782065537)
,p_event_id=>wwv_flow_imp.id(114305182210370929)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    APEX_COLLECTION.DELETE_MEMBER(p_collection_name => ''COL_DETA_CCRECIBO'',',
'                                  p_seq             => :P378_DELETE_DATA_DET);',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_DELETE_DATA_DET ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P378_DELETE_DATA_DET'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(112169681574065538)
,p_event_id=>wwv_flow_imp.id(114305182210370929)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(113893725926533410)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(114500389010783312)
,p_name=>'DA_COD_MONE_SELECT'
,p_event_sequence=>490
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P378_COD_MONE_SELECT'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(114500464420783313)
,p_event_id=>wwv_flow_imp.id(114500389010783312)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P378_COD_MONE_SELECT'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(114500591047783314)
,p_name=>'DA_TIP_TRAN_SELECT'
,p_event_sequence=>500
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P378_TIP_TRAN_SELECT'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(114500694248783315)
,p_event_id=>wwv_flow_imp.id(114500591047783314)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P378_TIP_TRAN_SELECT'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(114501146370783320)
,p_name=>'DA_COLLECCION'
,p_event_sequence=>510
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(113893725926533410)
,p_bind_type=>'bind'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|interactivegridselectionchange'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(114501254278783321)
,p_event_id=>wwv_flow_imp.id(114501146370783320)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'obtenerRegistrosSeleccionados();'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(114501732808783326)
,p_name=>'DA_ANULADO'
,p_event_sequence=>520
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P378_ANULADO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(114503251722783341)
,p_event_id=>wwv_flow_imp.id(114501732808783326)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(114502143258783330)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(114502631879783335)
,p_name=>'DA_BTN_CANCELAR'
,p_event_sequence=>530
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(114502528332783334)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(114503016635783339)
,p_event_id=>wwv_flow_imp.id(114502631879783335)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P378_ANULADO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(114503164666783340)
,p_event_id=>wwv_flow_imp.id(114502631879783335)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(114502143258783330)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(114503388021783342)
,p_name=>'DA_BTN_ACEPTAR'
,p_event_sequence=>540
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(114502498660783333)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(114503411000783343)
,p_event_id=>wwv_flow_imp.id(114503388021783342)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'BEGIN',
'  update CC_RECIBOS',
'  SET cod_motivo_anu = :P378_MOTIVO_ANULA,',
'  cod_usuario_anu = :P_COD_USUARIO,',
'  fec_anulacion = sysdate,',
'  anulado = ''S''',
'  where cod_Empresa = :P_COD_EMPRESA',
'  AND nro_recibo = :P378_NRO_RECIBO',
'  AND ser_recibo = :P378_SER_RECIBO',
'  AND cod_sucursal = :P378_SUCURSAL;',
'END;'))
,p_attribute_02=>'P378_MOTIVO_ANULA,P378_NRO_RECIBO,P378_SER_RECIBO,P378_SUCURSAL'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P378_MOTIVO_ANULA'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(114503661511783345)
,p_name=>'DA_BT_GUARDAR_CAMBIOS'
,p_event_sequence=>550
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(114503526347783344)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(114503769484783346)
,p_event_id=>wwv_flow_imp.id(114503661511783345)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select *',
'from dual;'))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(114504128749783350)
,p_name=>'DA_TIP_COL'
,p_event_sequence=>560
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_imp.id(113893725926533410)
,p_triggering_element=>'TIP'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(114629692778852301)
,p_event_id=>wwv_flow_imp.id(114504128749783350)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'If :tip = :P378_V_TIP_ANTICIPO then ',
'DECLARE ',
'	 	VEXISTE VARCHAR2(50); ',
'BEGIN ',
'  BEGIN',
'    select ''S''',
'      into VEXISTE',
'      from cc_saldos',
'     where cod_empresa = :p_cod_empresa',
'       and tipo_comprobante = :tip',
'       and ser_comprobante = :ser',
'       and nro_comprobante = :nro',
'       and nro_cuota = :cuota',
'       and cod_cliente = :P378_CLIENTE;',
'  EXCEPTION ',
'  	 WHEN OTHERS THEN  ',
'		 VEXISTE := ''N''; ',
'	END; ',
' IF 	VEXISTE = ''N'' THEN ',
'	  :P378_GENERA_CREDITO := ''S'';',
'	  :nro := :P378_NRO_RECIBO ;',
'	  :cuota:= 1;',
'      :ser := :P378_SER_RECIBO;',
'      :vencimiento := sysdate;',
'      :moneda := :P378_COD_MONEDA;',
'      :cambio := :P378_TIP_CAMBIO;',
'      :monto := TO_cHAR(''0'',RPAD( ''999G999G999G990'', 15 + nvl( :P378_DECIMALES, 0 ), ''D00'' ));',
'      :importe := TO_cHAR(''0'',RPAD( ''999G999G999G990'', 15 + nvl( :P378_DECIMALES, 0 ), ''D00'' ));',
'	ELSE',
'	  :P378_GENERA_CREDITO := ''N'';',
'	End If;',
'end; ',
'ELSE',
'    if :tip=''PG'' then',
'        :ser := :P378_SER_RECIBO;',
'        :vencimiento := sysdate;',
'        :moneda := :P378_COD_MONEDA;',
'          :cambio := :P378_TIP_CAMBIO;',
'          :monto := TO_cHAR(''0'',RPAD( ''999G999G999G990'', 15 + nvl( :P378_DECIMALES, 0 ), ''D00'' ));',
'          :importe := TO_cHAR(''0'',RPAD( ''999G999G999G990'', 15 + nvl( :P378_DECIMALES, 0 ), ''D00'' ));',
'    end if;',
'end if ; '))
,p_attribute_02=>'P378_CLIENTE,NRO,SER,TIP,CUOTA,P378_SER_RECIBO,P378_COD_MONEDA,P378_TIP_CAMBIO'
,p_attribute_03=>'NRO,CUOTA,P378_GENERA_CREDITO,SER,MONEDA,VENCIMIENTO,IMPORTE,MONTO,CAMBIO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(112169223028065534)
,p_name=>'DA_CUSTODIO'
,p_event_sequence=>570
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P378_CUSTODIO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(112169303237065535)
,p_event_id=>wwv_flow_imp.id(112169223028065534)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P378_CUSTODIO'
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
 p_id=>wwv_flow_imp.id(112169452482065536)
,p_event_id=>wwv_flow_imp.id(112169223028065534)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    IF :P378_CUSTODIO IN(''221'',''225'') THEN',
'        :P378_COBRADOR := ''75'';',
'    ELSIF :P378_CUSTODIO IN(''203'',''227'') THEN',
'        :P378_COBRADOR := ''74'';',
'    ELSIF :P378_CUSTODIO IN(''289'') THEN',
'        :P378_COBRADOR := ''81'';',
'    END IF;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_CUSTODIO ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P378_CUSTODIO'
,p_attribute_03=>'P378_COBRADOR'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(116512134054245009)
,p_name=>'DA_EDIT_DATA_DET'
,p_event_sequence=>580
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P378_EDIT_DATA_DET'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(116512201681245010)
,p_event_id=>wwv_flow_imp.id(116512134054245009)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P378_EDIT_DATA_DET'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(116512387885245011)
,p_name=>'DA_ABRIR_MODAL'
,p_event_sequence=>590
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(112942250926633707)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(116512421911245012)
,p_event_id=>wwv_flow_imp.id(116512387885245011)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(112942692211633711)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(114504030123783349)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(113893725926533410)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Coleccion - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(114630270660852307)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(113895748005533430)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'COLECCION_REPORTE - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(112367110543949019)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_INIT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(p_collection_name => ''COL_DETA_CCRECIBO'');',
'APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(p_collection_name => ''COL_COMPR_CCRECIBO'');',
':P378_V_COD_MODULO := ''CC'';',
'',
':P378_V_TIPO_TRAN         := inv.bs_busca_parametro( :P378_V_COD_MODULO, ''TRANS_COBRO''     ) ;',
':P378_V_SUB_TIPO_TRANS     := inv.bs_busca_parametro( :P378_V_COD_MODULO, ''SUB_TRANS_COBRO'' ) ;',
':P378_V_SER_RECIBO          := inv.bs_busca_parametro( :P378_V_COD_MODULO, ''SERIE_RECIBO''||:P_COD_SUCURSAL    ) ;',
':P378_V_TIPO_RECIBO       := inv.bs_busca_parametro( :P378_V_COD_MODULO, ''TIPO_RECIBO''     ) ;',
':P378_V_TIPO_CHEQUE        := ''CH'' ;',
':P378_V_TIPO_TALON_FACTURA := inv.bs_busca_parametro( :P378_V_COD_MODULO, ''TIPO_RECIBO''     ) ;',
':P378_V_GENERA_MD          := ''N'' ;',
':P378_V_COD_CUSTODIO_ENT   := null ;',
':P378_V_TIP_ANTICIPO      := inv.bs_busca_parametro( :P378_V_COD_MODULO, ''TIPO_ANTICIPO_REC'' );',
':P378_V_CLIENTE_CONTADO_CREDITO      := inv.bs_busca_parametro( ''VT'', ''CLIENTE_CONTADO''  ) ;',
':P378_COD_MONEDA :=null;',
':P378_TIP_CAMBIO := null;',
':p378_cod_custodio := null;',
':P378_CLIENTE :=null;',
':P378_TOTAL :=null;',
':P378_TIPO_TRANSAC :=null;',
'',
':P378_MOTIVO_ANULA :=null;',
'',
':P378_MONEDA :=null;',
':P378_TRANSACCION :=null;',
'',
':P378_USUARIO:= :P_COD_USUARIO;',
'begin',
'     select cod_custodio',
'        into :p378_cod_custodio',
'        from usuarios',
'        where cod_empresa = :P_COD_EMPRESA',
'          and cod_usuario = ''INV'';--:p_cod_usuario ;',
'  exception',
'     when others then',
'        :p378_cod_custodio := null ;',
'  end ;',
'/*Permisos*/',
'begin',
'    :P378_V_PERMITE_ANULAR := busca_permiso( :p_cod_empresa,',
'                                                ''CCRECIBO'',',
'                                                :p_cod_usuario,',
'                                                ''ANULA RECIBOS'' );',
'',
'',
'    :P378_V_CARGA_SUCURSAL := busca_permiso( :p_cod_empresa,',
'                                              ''CCRECIBO'',',
'                                              :p_cod_usuario,',
'                                              ''CARGA SUCURSAL'' );',
'    ',
'   :P378_V_CARGA_TIP_CAMBIO := busca_permiso( :p_cod_empresa,',
'                                                 ''CCRECIBO'',',
'                                                 :p_cod_usuario,',
'                                                 ''CARGA TIPO CAMBIO'' );',
'                                                 ',
'   :P378_V_CARGA_SUB_TIPO_TRANS := busca_permiso( :p_cod_empresa,',
'                                                     ''CCRECIBO'',',
'                                                     :p_cod_usuario,',
'                                                     ''CARGA TRANSACCION'' );',
'                                                     ',
'  :P378_V_MODIFICA_FECHA_ANT := busca_permiso( :p_cod_empresa,',
'                                                  ''CCRECIBO'',',
'                                                  :p_cod_usuario,',
'                                                  ''MODIFICA FECHA ANTERIOR'' );',
'',
'  :P378_V_CAMBIA_FECHA       := busca_permiso( :p_cod_empresa,',
'                                                  ''CCRECIBO'',',
'                                                  :p_cod_usuario,',
'                                                  ''CAMBIA_FECHA'' );',
'',
unistr('  -- PARA CASO DE SE\00D1A DE TRATO --'),
'  :P378_V_CARGA_SENIA := busca_permiso( :p_cod_empresa,',
'                                           ''CCRECIBO'',',
'                                           :p_cod_usuario,',
'                                           ''PERMITE_CARGA_SENIA'' );',
'',
'end;',
'/*Fin Permisos*/',
'',
'begin',
' select cod_custodio',
'    into :P378_V_COD_CUSTODIO',
'    from usuarios',
'    where cod_empresa = :P_cod_empresa',
'      and cod_usuario = :P_cod_usuario ;',
'exception',
' when others then',
'    :P378_V_COD_CUSTODIO := null ;',
'end ;',
'  ',
':P378_V_REIMPRIME := busca_permiso( :P_cod_empresa, ',
'                                                  ''CCRECIBO'', ',
'                                                  :P_COD_USUARIO, ',
'                                                  ''REIMPRIME'' ) ; ',
'                                                  ',
':P378_V_modifica_cambio := busca_permiso( :P_cod_empresa, ',
'                                                  ''CCRECIBO'', ',
'                                                  :P_COD_USUARIO, ',
'                                                  ''MODIFICA_CAMBIO'' ) ;                                                                                              ',
'begin',
'  select decode(nvl(:P378_P_TIP_COMPROBANTE,''NN''),''GIF'',''GC'', SERie_recibo)',
'    into :P378_V_SER_RECIBO ',
'    from USUARIOS',
'   where cod_empresa = :P_cod_empresa',
'     and COD_USUARIO = :P_COD_USUARIO;',
'exception',
'  when others then',
'     :P378_V_SER_RECIBO :=NULL;',
'end;',
'',
'if :P378_V_SER_RECIBO is null then',
' ',
'	 :P378_V_SER_RECIBO := inv.bs_busca_parametro( :P378_V_COD_MODULO, ''SERIE_RECIBO''    ) ;',
'end if;',
'',
'begin',
'   select descripcion',
'      into :p378_transaccion',
'      from subtipos_trans',
'      where cod_empresa   = :p_cod_empresa',
'        and cod_modulo    = :P378_V_COD_MODULO',
'        and tipo_trans    = :P378_V_TIPO_TRAN',
'        and subtipo_trans = :P378_V_SUB_TIPO_TRANS;',
'exception',
'   when others then',
'      :p378_transaccion := null ;',
'end ;',
'',
':P378_SUCURSAL := NVL(:P_COD_SUCURSAL,''01'');'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(112168360633065525)
,p_process_sequence=>20
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_WHEN_NEW_INTANCE'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/*if :system.form_status <> ''NEW'' then',
'   if :b_recibos.anulado = ''S'' then',
'      :proceso.anulado := ''S'' ;',
'   else',
'      :proceso.anulado := ''N'' ;',
'   end if ;',
'end if ;',
'if :b_recibos.nro_recibo is null then',
'   set_item_property( ''proceso.anulado'', enabled, property_false ) ;',
'else',
'   set_item_property( ''proceso.anulado'', enabled, property_true  ) ;',
'end if ;',
'',
'if :variables.permite_anular <> ''S'' then',
'   set_item_property( ''proceso.anulado'', enabled, property_false ) ;',
'end if ;',
'',
'',
'set_item_property( ''b_detalle.importe'',     format_mask, rpad( ''999G999G999G990'', 16 + nvl( :b_recibos.decimales, 0 ), ''D00'' ) ) ;',
'set_item_property( ''b_detalle.monto_cuota'', format_mask, rpad( ''999G999G999G990'', 15 + 3, ''D00'' ) ) ;',
'',
'if :b_recibos.nro_recibo is not null then',
'   set_item_property( ''B_RECIBOS.MOV_CAJA'', ENABLED, PROPERTY_TRUE  ) ;',
'else',
'   set_item_property( ''B_RECIBOS.MOV_CAJA'', ENABLED, PROPERTY_FALSE ) ;',
'end if ;',
'',
':variables.estado     := :b_recibos.estado ;',
':variables.fec_estado := :b_recibos.fec_estado ;',
'synchronize ;',
'',
'---IF :system.mode <> ''QUERY'' THEN',
'  asigna_derechos( :b_recibos.fec_recibo );*/NULL;',
'',
':P378_V_ESTADO := :P378_ESTADO;',
':P378_V_FEC_ESTADO := :P378_FEC_ESTADO;',
'',
' '))
,p_process_clob_language=>'PLSQL'
,p_process_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(112740800201665136)
,p_process_sequence=>30
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'WHEN_NEW_FORM_INSTANCE'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  seleccion BOOLEAN;',
'  valerta   NUMBER;',
'  vnro_ini  NUMBER(8);',
'  vnro_fin  NUMBER(8);',
'  alg_err   EXCEPTION;',
'BEGIN ',
'  select count(*)',
'    into vnro_ini',
'    from talonarios',
'   where cod_empresa = :p_cod_empresa',
'     and tip_talonario = :p378_v_tipo_talon_factura',
'     and cod_sucursal = :P378_V_CARGA_SUCURSAL',
'     and nvl(activo, ''S'') <> ''N'';',
'',
'  IF nvl(vnro_ini, 0) = 1 then',
'    BEGIN',
'      select numero_inicial, numero_final, serie',
'        into :P378_V_NRO_INICIAL, :P378_V_NRO_FINAL, :P378_V_SERIE',
'        from talonarios',
'       where cod_empresa = :p_cod_empresa',
'         and tip_talonario = :p378_v_tipo_talon_factura',
'         and cod_sucursal = :P378_V_CARGA_SUCURSAL',
'         and nvl(activo, ''S'') <> ''N'';',
'    EXCEPTION',
'      when others then',
'        :P378_V_NRO_INICIAL := NULL;',
'        :P378_V_NRO_FINAL := NULL;',
'        NULL;--alerta(''no se ha podido cargar el talonario existente ''||sqlerrm,'''',3,valerta);',
'    END;',
'  ELSIF nvl(vnro_ini, 0) > 1 THEN',
'  /*  seleccion := Show_Lov(''LV_TALONARIOS''); ',
'    IF NOT seleccion THEN ',
'      :P378_V_SERIE := NULL;',
'      :P378_V_NRO_INICIAL := NULL;',
'      :P378_V_NRO_FINAL := NULL;',
unistr('      alerta(''Debe seleccionar un valor de la lista para poder realizar una nueva transacci\00F3n.'','''',2,valerta); '),
'      Bell;',
'      raise alg_err;',
'    END IF; */NULL;',
'',
'  ELSIF nvl(vnro_ini, 0) = 0 THEN',
'    :P378_V_SERIE := NULL;',
'    :P378_V_NRO_INICIAL := NULL;',
'    :P378_V_NRO_FINAL := NULL;',
unistr('    /*alerta(''No existen talonarios activos para poder realizar una nueva transacci\00F3n. ''||'),
unistr('           ''Comun\00EDquese con el administrador del sistema para crear un nuevo talonario.'','''',2,valerta);*/'),
'  END IF;',
'EXCEPTION',
'  when alg_err then',
'    NULL;--raise form_trigger_failure;',
'  when others then',
'    NULL;--alerta(''Error en la carga del formulario actual ''||sqlerrm,'''',3,valerta);',
'END;',
'',
'---------------------[FF]',
'--IF :parameter.tip_comprobante IS NOT NULL THEN',
'  ',
'  declare',
'    nro_recibo   number(12);',
'    valerta      number;',
'    algun_error  exception;',
'  begin',
'    IF :P378_NRO_RECIBO IS NULL AND :P378_TIP_COMPROBANTE_REF <>''GIF'' THEN',
'      IF :P378_V_NRO_INICIAL IS NOT NULL AND :P378_V_NRO_FINAL IS NOT NULL THEN',
'        BEGIN',
'          Select nvl(max(nro_recibo), 0)',
'            into nro_recibo',
'            from cc_recibos',
'           where cod_empresa = :P_COD_EMPRESA',
'             and cod_sucursal = :P378_SUCURSAL  ',
'             and ser_recibo = :P378_V_SER_RECIBO',
'              and nro_recibo between :P378_V_NRO_INICIAL and :P378_V_NRO_FINAL',
'            and nro_recibo not in (14511400, 14511401); -- sacar esta linea luego.',
'          ',
'          IF nro_recibo >= :P378_V_NRO_FINAL THEN',
'            :P378_NRO_RECIBO := NULL;',
unistr('            /*alerta(''El n\00FAmero de recibo ha llegado hasta el final del talonario. ''||'),
unistr('                   ''Seleccione un nuevo talonario o comun\00EDquese con el ''||'),
'                   ''administrador del sistema para crear un nuevo talonario.'','''',2,valerta);',
'            raise algun_error;*/',
'          ELSIF nro_recibo <= :P378_V_NRO_INICIAL THEN',
'            :P378_NRO_RECIBO := :P378_V_NRO_INICIAL;',
'          ELSE',
'            :P378_NRO_RECIBO := nvl(:P378_NRO_RECIBO, :P378_V_NRO_INICIAL) + 1;',
'          END IF;',
'        EXCEPTION',
'          when algun_error then',
'            NULL;--raise algun_error;',
'          when others then',
'            :P378_NRO_RECIBO := 1;',
unistr('            --alerta(''Error al cargar el n\00FAmero recibo actual ''||sqlerrm,'''',3,valerta);'),
'        END;',
'      ELSE',
unistr('        NULL;--alerta(''Debe seleccionar un talonario para poder completar la transacci\00F3n.'','''',2,valerta);'),
'        --raise algun_error;',
'      END IF;',
'    END IF;',
'  end;',
'  /*:b_recibos.cod_sucursal := :parameter.cod_sucursal;',
'  :b_recibos.tip_comprobante_ref := :parameter.tip_comprobante;',
'  :b_recibos.ser_comprobante_ref := :parameter.ser_comprobante;',
'  :b_recibos.nro_comprobante_ref := :parameter.nro_comprobante;',
'  :b_recibos.ind_adelanto_ot     := :parameter.ind_adelanto_ot;',
'*/',
' /* if nvl(:parameter.monto,0) > 0 then',
'    :b_recibos.cod_cliente         := :parameter.cod_cliente;',
'    Begin',
'      Select valor',
'      into :b_recibos.cod_moneda',
'      from parametros_generales',
'      where parametro = ''COD_MONEDA_BASE'';',
'    exception',
'      when others then',
'        null;',
'    end;',
'    go_block(''B_DETALLE'');',
'    go_record(1);',
'    enter;',
'    ',
'    :b_detalle.tip_factura_ref  := busca_parametro( :variables.cod_modulo, ''TIPO_ANTICIPO_REC'' );',
'    :b_detalle.ser_factura_ref  := :b_recibos.ser_recibo;',
'    :b_detalle.cod_moneda_cuota := :b_recibos.cod_moneda ;',
'    :b_detalle.monto_cuota      := :parameter.monto ;',
'',
'    last_record;',
'    go_block(''B_RECIBOS'');',
'    go_item(''B_RECIBOS.NRO_RECIBO'');',
'  end if;*/',
'--end if;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(112168460951065526)
,p_process_sequence=>40
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_POST_QUERY_CAB'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P378_ANULACION_INICIAL := :P378_ANUL_REAL;',
':P378_V_P_REQUIERE_DETALLE := ''S'';',
'',
'',
'/*',
'',
'',
'BEGIN',
'    select  NVL(IND_AUTOIMPRESO,''N'')',
'      into  :variables.autoimpreso',
'      from series_comprob',
'     where cod_empresa = :variables.cod_empresa',
'       and tip_comprobante = :b_recibos.tip_recibo',
'       and ser_comprobante = :b_recibos.ser_recibo;',
'  EXCEPTION',
'    ',
'    when others then',
'       :variables.autoimpreso:=''N'';',
'  END;*/NULL;'))
,p_process_clob_language=>'PLSQL'
,p_process_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(112168987572065531)
,p_process_sequence=>50
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_WHEN_CREATE_RECORD'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P378_V_GENERA_MD := ''S'';',
':P378_ESTADO := ''P'';',
':P378_FECHA_RECIBO := SYSDATE;',
':P378_ANULADO := ''N'';',
':P378_V_P_REQUIERE_DETALLE := ''S'';',
':P378_TOTAL := 0;',
':P378_V_SER_CAMBIO := ''N'';',
'',
'IF :P_COD_USUARIO IN(''MIRTHARff'') THEN',
'    NULL;',
'ELSE',
'    :P378_SER_RECIBO := :P378_V_SER_RECIBO;',
'END IF;',
'',
':P378_TIP_RECIBO := :P378_V_TIPO_RECIBO;',
'',
'',
'',
'',
'',
' '))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp.component_end;
end;
/
