prompt --application/pages/page_00277
begin
--   Manifest
--     PAGE: 00277
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
 p_id=>277
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Prosupuesto de Obras - SMENTSAL'
,p_alias=>'PROSUPUESTO-DE-OBRAS-SMENTSAL'
,p_step_title=>'Prosupuesto de Obras - SMENTSAL'
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
'var vControl = apex.item(''P277_CONTROL_CONFIRM'').getValue();',
'//alert(vControl);',
'if (vControl == 0 ){',
'    document.getElementById("BCONFI").disabled = true;    ',
'}else{',
'   document.getElementById("BCONFI").disabled = false;',
' }',
'}',
'',
'function doDisable_Enable_Det(){',
'var vControl = apex.item(''P277_CONTROL_DET'').getValue();',
'//alert(vControl);',
'if (vControl == 0 ){',
'    document.getElementById("RDET").disabled = true; ',
'    document.getElementById("BCREAR").disabled = true;   ',
'}else{',
'   document.getElementById("RDET").disabled = false;',
'   document.getElementById("BCREAR").disabled = true;',
' }',
'}'))
,p_javascript_code_onload=>'document.getElementById("BCONFI").disabled = true;'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.ui-dialog{',
'    width: 1500px !important;',
'    }'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'DFINO'
,p_last_upd_yyyymmddhh24miss=>'20221230142416'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(64383998029178847)
,p_plug_name=>'Presupuesto de Obras'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>990
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(67635281934440407)
,p_plug_name=>'COLEC_SM_ENTSAL_CAB'
,p_parent_plug_id=>wwv_flow_imp.id(64383998029178847)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT seq_id SEQ_ID,',
'       c001 COD_EMPRESA,',
'       c002 COD_SUCURSAL,',
'       c003 NUM_ENT_SAL,',
'       c004 SER_ENT_SAL,',
'       c005 TIP_ENT_SAL,',
'       c006 FEC_ENT_SAL,',
'       c007 FEC_ALTA,',
'       c008 HORA_ALTA,',
'       c009 COD_MOTIVO_ENT_SAL,',
'       c010 COD_MONEDA,',
'       c011 OBSERVACION,',
'       c012 COD_USUARIO,',
'       c013 COD_CLIENTE,',
'       c014 COD_PROVEEDOR,',
'       c015 COD_VENDEDOR,',
'       c016 IND_ENTSAL,',
'       c017 TIP_COMPROBANTE_REF,',
'       c018 SER_COMPROBANTE_REF,',
'       c019 NRO_COMPROBANTE_REF,',
'       c020 NRO_AJS_REF,',
'       c021 ROW_ID,',
'       c022 CONTROL,',
'       c023 DESC_ESTADO,',
'       c024 DESC_SUCURSAL,',
'       NULL DETALLE,',
'       NULL EDITAR,',
'       NULL BORRAR',
'  FROM APEX_COLLECTIONS',
' WHERE COLLECTION_NAME = ''COLEC_SM_ENTSAL_CAB''',
'   AND (c022 = ''U'' OR c022 = ''I'' OR c022 IS NULL)',
' ORDER BY SEQ_ID DESC'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'COLEC_SM_ENTSAL_CAB'
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
 p_id=>wwv_flow_imp.id(67635356616440408)
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
,p_internal_uid=>67635356616440408
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(67635482773440409)
,p_db_column_name=>'SEQ_ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Seq Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(67635556256440410)
,p_db_column_name=>'COD_EMPRESA'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Cod Empresa'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(67635660903440411)
,p_db_column_name=>'COD_SUCURSAL'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Cod Sucursal'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(67635753277440412)
,p_db_column_name=>'NUM_ENT_SAL'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>unistr('N\00BA')
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(67635815914440413)
,p_db_column_name=>'SER_ENT_SAL'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Serie'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(67635906895440414)
,p_db_column_name=>'TIP_ENT_SAL'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Tipo'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(67636042642440415)
,p_db_column_name=>'FEC_ENT_SAL'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Fecha'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(67636145034440416)
,p_db_column_name=>'FEC_ALTA'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Fec Alta'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(67636216870440417)
,p_db_column_name=>'HORA_ALTA'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Hora Alta'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(67636342267440418)
,p_db_column_name=>'COD_MOTIVO_ENT_SAL'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Cod Motivo Ent Sal'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(67636405599440419)
,p_db_column_name=>'COD_MONEDA'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Cod Moneda'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(67636504381440420)
,p_db_column_name=>'OBSERVACION'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>unistr('Observaci\00F3n')
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(67636647171440421)
,p_db_column_name=>'COD_USUARIO'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Cod Usuario'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(67636756655440422)
,p_db_column_name=>'COD_CLIENTE'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Cod Cliente'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(67636873466440423)
,p_db_column_name=>'COD_PROVEEDOR'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Cod Proveedor'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(67636977151440424)
,p_db_column_name=>'COD_VENDEDOR'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Cod Vendedor'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(67637081904440425)
,p_db_column_name=>'IND_ENTSAL'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Ind Entsal'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(67637120432440426)
,p_db_column_name=>'TIP_COMPROBANTE_REF'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'Referencia Tipo Comprobante'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(67637208982440427)
,p_db_column_name=>'SER_COMPROBANTE_REF'
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>'Referencia Serie Comprobante'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(67637330097440428)
,p_db_column_name=>'NRO_COMPROBANTE_REF'
,p_display_order=>200
,p_column_identifier=>'T'
,p_column_label=>unistr('Referencia N\00BA Comprobante')
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(67637434127440429)
,p_db_column_name=>'NRO_AJS_REF'
,p_display_order=>210
,p_column_identifier=>'U'
,p_column_label=>'Nro Ajs Ref'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(67637508915440430)
,p_db_column_name=>'ROW_ID'
,p_display_order=>220
,p_column_identifier=>'V'
,p_column_label=>'Row Id'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(67637697741440431)
,p_db_column_name=>'CONTROL'
,p_display_order=>230
,p_column_identifier=>'W'
,p_column_label=>'Control'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(67637751176440432)
,p_db_column_name=>'DETALLE'
,p_display_order=>240
,p_column_identifier=>'X'
,p_column_label=>'Detalle'
,p_column_link=>'javascript:$s(''P277_NUM_ENT_SAL_CAB'',''#NUM_ENT_SAL#'');'
,p_column_linktext=>'<span class="fa fa-search">'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(67637895117440433)
,p_db_column_name=>'EDITAR'
,p_display_order=>250
,p_column_identifier=>'Y'
,p_column_label=>'Editar'
,p_column_link=>'javascript:$s(''P277_EDIT_DATA'',''#SEQ_ID#'');'
,p_column_linktext=>'<span aria-label="Edit"><span class="fa fa-edit" aria-hidden="true" title="Edit"></span></span>'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(67637901388440434)
,p_db_column_name=>'BORRAR'
,p_display_order=>260
,p_column_identifier=>'Z'
,p_column_label=>'Borrar'
,p_column_link=>'javascript:$s(''P277_DELETE_DATA'',''#SEQ_ID#'');'
,p_column_linktext=>'<span class="fa fa-trash-o">'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(67720294227702510)
,p_db_column_name=>'DESC_ESTADO'
,p_display_order=>270
,p_column_identifier=>'AA'
,p_column_label=>'Estado'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(69483473448695104)
,p_db_column_name=>'DESC_SUCURSAL'
,p_display_order=>280
,p_column_identifier=>'AB'
,p_column_label=>'Sucursal'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(67714960457676863)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'677150'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>5
,p_report_columns=>'TIP_ENT_SAL:SER_ENT_SAL:NUM_ENT_SAL:DESC_SUCURSAL:FEC_ENT_SAL:TIP_COMPROBANTE_REF:SER_COMPROBANTE_REF:NRO_COMPROBANTE_REF:DESC_ESTADO:OBSERVACION:DETALLE:EDITAR:BORRAR:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(67493229163133276)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40134615190263663)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(40070279985263645)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(40189153869263678)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(67638198479440436)
,p_plug_name=>'Detalle'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>1010
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(67638225875440437)
,p_plug_name=>'COLEC_SM_ENTSAL_DET'
,p_region_name=>'RDET'
,p_parent_plug_id=>wwv_flow_imp.id(67638198479440436)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT seq_id SEQ_ID,',
'       c001 COD_EMPRESA,',
'       c002 TIP_ENT_SAL,',
'       c003 SER_ENT_SAL,',
'       c004 NUM_ENT_SAL,',
'       c005 COD_HERRAMIENTA,',
'       c006 DESC_HERRAMIENTA,',
'       n001 CANTIDAD,',
'       n002 COSTO,',
'       c007 OBSERVACION,',
'       c008 ROW_ID,',
'       c009 CONTROL,',
'       n003 IMPORTE,',
'       NULL EDITAR,',
'       NULL BORRAR',
'  FROM APEX_COLLECTIONS',
' WHERE COLLECTION_NAME = ''COLEC_SM_ENTSAL_DET''',
'   AND c001 = :P277_COD_EMPRESA_CAB',
'   AND c004 = :P277_NUM_ENT_SAL_CAB',
'   AND (c009 = ''U'' OR c009 = ''I'' OR c009 IS NULL)',
' ORDER BY SEQ_ID DESC'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P277_COD_EMPRESA_CAB,P277_NUM_ENT_SAL_CAB_N'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'COLEC_SM_ENTSAL_DET'
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
 p_id=>wwv_flow_imp.id(67638385896440438)
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
,p_internal_uid=>67638385896440438
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(67638428193440439)
,p_db_column_name=>'SEQ_ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Seq Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(67638559605440440)
,p_db_column_name=>'COD_EMPRESA'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Cod Empresa'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(67638618450440441)
,p_db_column_name=>'TIP_ENT_SAL'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Tip Ent Sal'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(67638715258440442)
,p_db_column_name=>'SER_ENT_SAL'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Ser Ent Sal'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(67638872750440443)
,p_db_column_name=>'NUM_ENT_SAL'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Num Ent Sal'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(67638922258440444)
,p_db_column_name=>'COD_HERRAMIENTA'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>unistr('C\00F3digo')
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(67639040642440445)
,p_db_column_name=>'DESC_HERRAMIENTA'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Material'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(67639318393440448)
,p_db_column_name=>'OBSERVACION'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Observacion'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(67639448414440449)
,p_db_column_name=>'ROW_ID'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Row Id'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(67639582776440450)
,p_db_column_name=>'CONTROL'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Control'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(67719391553702501)
,p_db_column_name=>'EDITAR'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Editar'
,p_column_link=>'javascript:$s(''P277_EDIT_DATA_DET'',''#SEQ_ID#'');'
,p_column_linktext=>'<span aria-label="Edit"><span class="fa fa-edit" aria-hidden="true" title="Edit"></span></span>'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(67719423656702502)
,p_db_column_name=>'BORRAR'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Borrar'
,p_column_link=>'javascript:$s(''P277_DELETE_DATA_DET'',''#SEQ_ID#'');'
,p_column_linktext=>'<span class="fa fa-trash-o">'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(67721706150702525)
,p_db_column_name=>'IMPORTE'
,p_display_order=>150
,p_column_identifier=>'P'
,p_column_label=>'Importe'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(67721850630702526)
,p_db_column_name=>'CANTIDAD'
,p_display_order=>160
,p_column_identifier=>'Q'
,p_column_label=>'Cantidad'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(67721996809702527)
,p_db_column_name=>'COSTO'
,p_display_order=>170
,p_column_identifier=>'R'
,p_column_label=>'Costo'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(67741058320788730)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'677411'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>10
,p_report_columns=>'COD_HERRAMIENTA:DESC_HERRAMIENTA:CANTIDAD:COSTO:IMPORTE:EDITAR:BORRAR:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(67721470602702522)
,p_plug_name=>'Contenedor Total'
,p_parent_plug_id=>wwv_flow_imp.id(67638198479440436)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(67722111619702529)
,p_plug_name=>'Agregar/Editar Registro Cabecera'
,p_region_template_options=>'#DEFAULT#:js-dialog-autoheight:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>1000
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(69484546170695115)
,p_plug_name=>'Agregar/Editar Registro Detalle'
,p_region_template_options=>'#DEFAULT#:js-dialog-autoheight:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>1020
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(69485075840695120)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(69484546170695115)
,p_button_name=>'BTAGREGAR_EDIT_DET'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Agregar/Editar Registro'
,p_button_position=>'BELOW_BOX'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(67723598647702543)
,p_button_sequence=>100
,p_button_plug_id=>wwv_flow_imp.id(67722111619702529)
,p_button_name=>'BTAGREGAR_EDITAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Agregar/Editar Registro'
,p_button_position=>'BELOW_BOX'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(69485101309695121)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(67638198479440436)
,p_button_name=>'BTABRIR_MODAL_DET'
,p_button_static_id=>'BCREAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Crear'
,p_button_position=>'COPY'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(67722018079702528)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_imp.id(64383998029178847)
,p_button_name=>'BTCREAR_CAB'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Crear'
,p_button_position=>'COPY'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(69487558588695145)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_imp.id(64383998029178847)
,p_button_name=>'BTGUARDAR_DATOS'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Guardar Cambios'
,p_button_position=>'COPY'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(70986251419780601)
,p_button_sequence=>90
,p_button_plug_id=>wwv_flow_imp.id(64383998029178847)
,p_button_name=>'BTCONFIRMAR'
,p_button_static_id=>'BCONFI'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Confirmar'
,p_button_position=>'COPY'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(64384214146178850)
,p_name=>'P277_COD_MODULO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(64383998029178847)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(67634655144440401)
,p_name=>'P277_SER_ENT_SAL'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(64383998029178847)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(67634719331440402)
,p_name=>'P277_TIP_ENT_SAL'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(64383998029178847)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(67634801528440403)
,p_name=>'P277_TIPO_ENVIO'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(64383998029178847)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(67634908248440404)
,p_name=>'P277_COD_MONEDA_BASE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(64383998029178847)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(67635011645440405)
,p_name=>'P277_COD_MONEDA_US'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(64383998029178847)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(67635143470440406)
,p_name=>'P277_COD_SUCURSAL'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(64383998029178847)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(67719525058702503)
,p_name=>'P277_COD_EMPRESA_CAB'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(67635281934440407)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(67719689841702504)
,p_name=>'P277_NUM_ENT_SAL_CAB'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(67635281934440407)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(67720029354702508)
,p_name=>'P277_EDIT_DATA'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(67635281934440407)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(67720174537702509)
,p_name=>'P277_DELETE_DATA'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(67635281934440407)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(67720397809702511)
,p_name=>'P277_FECHA_ALTA'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(67635281934440407)
,p_prompt=>'Fecha Alta'
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
 p_id=>wwv_flow_imp.id(67720496703702512)
,p_name=>'P277_HORA_ALTA'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(67635281934440407)
,p_prompt=>'Hora Alta'
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
 p_id=>wwv_flow_imp.id(67720509192702513)
,p_name=>'P277_COD_USUARIO_CAB'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(67635281934440407)
,p_prompt=>'Usuario'
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
 p_id=>wwv_flow_imp.id(67721273884702520)
,p_name=>'P277_EDIT_DATA_DET'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(67638225875440437)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(67721352716702521)
,p_name=>'P277_DELETE_DATA_DET'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(67638225875440437)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(67721675522702524)
,p_name=>'P277_TOTAL'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(67721470602702522)
,p_prompt=>'Total'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_grid_column=>10
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(67722256811702530)
,p_name=>'P277_TIP_ENT_SAL_CAB'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(67722111619702529)
,p_prompt=>'Tipo Comprobante'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
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
 p_id=>wwv_flow_imp.id(67722362169702531)
,p_name=>'P277_SER_ENT_SAL_CAB'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(67722111619702529)
,p_prompt=>'Serie Comprobante'
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
 p_id=>wwv_flow_imp.id(67722401198702532)
,p_name=>'P277_NUM_ENT_SAL_CAB_N'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(67722111619702529)
,p_prompt=>unistr('N\00BA Comprobante')
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
 p_id=>wwv_flow_imp.id(67722569226702533)
,p_name=>'P277_COD_SUCURSAL_CAB'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(67722111619702529)
,p_prompt=>'Sucursal'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_SUCURSALES_SMENTSAL'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cod_sucursal, ',
'       cod_sucursal || '' - '' ||descripcion ',
'  from sucursales',
' where cod_empresa = :P_COD_EMPRESA',
'   and nvl(estado,''N'')=''S'' ',
'order by descripcion',
'',
''))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_begin_on_new_line=>'N'
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
 p_id=>wwv_flow_imp.id(67722699660702534)
,p_name=>'P277_OBSERVACION_CAB'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(67722111619702529)
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
 p_id=>wwv_flow_imp.id(67723043806702538)
,p_name=>'P277_TIPO_ENT_SAL_CAB_R'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(67722111619702529)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(67723140795702539)
,p_name=>'P277_SER_ENT_SAL_CAB_R'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(67722111619702529)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(67723245707702540)
,p_name=>'P277_NUM_ENT_SAL_CAB_R'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(67722111619702529)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(67723319913702541)
,p_name=>'P277_ESTADO_CAB'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(67722111619702529)
,p_prompt=>'Estado'
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
 p_id=>wwv_flow_imp.id(69483593581695105)
,p_name=>'P277_SM_OT_OBRA'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(67722111619702529)
,p_prompt=>'Referencia'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_OBRAS_SMENTSAL'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT TIP_COMPROBANTE||'' - ''||SER_COMPROBANTE||'' - ''||NRO_COMPROBANTE D,',
'       NRO_COMPROBANTE R',
'  FROM SM_OT_OBRA',
' WHERE COD_EMPRESA = :P_COD_EMPRESA'))
,p_lov_display_null=>'YES'
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
 p_id=>wwv_flow_imp.id(69484633240695116)
,p_name=>'P277_COD_ART_DET'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(69484546170695115)
,p_prompt=>unistr('Art\00EDculo')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_ARTICULO_SMENTSAL'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cod_articulo||'' - ''||descripcion d, ',
'       cod_articulo r',
'from st_articulos a ',
'where cod_empresa =  :P_COD_EMPRESA',
'and a.precio_base>0',
'and a.costo_prom>0',
'and a.descripcion is not null',
'and a.cod_rubro in (''RE'',''MU'')',
'AND NVL(A.ESTADO,''N'')=''A''',
'ORDER BY 1'))
,p_lov_display_null=>'YES'
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
 p_id=>wwv_flow_imp.id(69484755967695117)
,p_name=>'P277_CANTIDAD_DET'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(69484546170695115)
,p_prompt=>'Cantidad'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(69484841458695118)
,p_name=>'P277_COSTO_ART_DET'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(69484546170695115)
,p_prompt=>'Costo'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(69484911548695119)
,p_name=>'P277_IMPORTE_DET'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(69484546170695115)
,p_prompt=>'Importe'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(70986675100780605)
,p_name=>'P277_CONTROL_CONFIRM'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(64383998029178847)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(70986994194780608)
,p_name=>'P277_CONTROL_DET'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(64383998029178847)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(70987202775780611)
,p_name=>'P277_MENSAJE_CONFIRM'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(64383998029178847)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(67720694413702514)
,p_name=>'DA_DET_DATA'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P277_NUM_ENT_SAL_CAB'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(67720730208702515)
,p_event_id=>wwv_flow_imp.id(67720694413702514)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P277_NUM_ENT_SAL_CAB'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(67720857527702516)
,p_event_id=>wwv_flow_imp.id(67720694413702514)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'VCOD_EMPRESA VARCHAR2(10);',
'BEGIN',
'    BEGIN',
'        SELECT c001',
'          INTO VCOD_EMPRESA ',
'          FROM APEX_COLLECTIONS',
'         WHERE COLLECTION_NAME = ''COLEC_SM_ENTSAL_CAB''',
'           AND c003 = :P277_NUM_ENT_SAL_CAB;',
'    EXCEPTION',
'        WHEN NO_DATA_FOUND THEN',
'        VCOD_EMPRESA := NULL;',
'    END;',
'',
'    :P277_COD_EMPRESA_CAB := VCOD_EMPRESA;',
'    ',
'    SMENTSAL.OBTENER_DETALLE(pnum_ent_sal => :P277_NUM_ENT_SAL_CAB,',
'                             pcod_empresa => VCOD_EMPRESA,',
'                             pfecha_alta  => :P277_FECHA_ALTA,',
'                             phora_alta   => :P277_HORA_ALTA,',
'                             pcod_usuario => :P277_COD_USUARIO_CAB);',
'    ',
'    :P277_TOTAL := SMENTSAL.CALCULAR_TOTAL(pcod_empresa => VCOD_EMPRESA,',
'                                           pnum_ent_sal => :P277_NUM_ENT_SAL_CAB);',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_DET_DATA ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P277_NUM_ENT_SAL_CAB'
,p_attribute_03=>'P277_FECHA_ALTA,P277_HORA_ALTA,P277_COD_USUARIO_CAB,P277_COD_EMPRESA_CAB,P277_TOTAL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(70986502518780604)
,p_event_id=>wwv_flow_imp.id(67720694413702514)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'VNRO_AJS_REF NUMBER;',
'VESTADO VARCHAR2(10);',
'BEGIN',
'    BEGIN',
'        SELECT c020,',
'               c016',
'          INTO VNRO_AJS_REF,',
'               VESTADO',
'          FROM APEX_COLLECTIONS',
'         WHERE COLLECTION_NAME = ''COLEC_SM_ENTSAL_CAB''',
'           AND c003 = :P277_NUM_ENT_SAL_CAB;',
'    EXCEPTION',
'        WHEN NO_DATA_FOUND THEN',
'        VNRO_AJS_REF := NULL;',
'    END;',
'    ',
'    IF VNRO_AJS_REF IS NULL AND VESTADO = ''C'' THEN',
'        :P277_CONTROL_CONFIRM := 1;',
'    ELSE',
'        :P277_CONTROL_CONFIRM := 0;',
'    END IF;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_DET_DATA GET_NRO_AJS_REF ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P277_NUM_ENT_SAL_CAB'
,p_attribute_03=>'P277_CONTROL_CONFIRM'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(70986714494780606)
,p_event_id=>wwv_flow_imp.id(67720694413702514)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'doDisable_Enable();'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(70986801475780607)
,p_event_id=>wwv_flow_imp.id(67720694413702514)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'VESTADO VARCHAR2(10);',
'VNRO_AJS_REF NUMBER;',
'VNUM_ENT_SAL_REF NUMBER;',
'BEGIN',
'    BEGIN',
'        SELECT c020,',
'               c016,',
'               c019',
'          INTO VNRO_AJS_REF,',
'               VESTADO,',
'               VNUM_ENT_SAL_REF',
'          FROM APEX_COLLECTIONS',
'         WHERE COLLECTION_NAME = ''COLEC_SM_ENTSAL_CAB''',
'           AND c003 = :P277_NUM_ENT_SAL_CAB;',
'',
'    EXCEPTION',
'        WHEN NO_DATA_FOUND THEN',
'        VESTADO := NULL;',
'        VNRO_AJS_REF := NULL;',
'        VNUM_ENT_SAL_REF := NULL;',
'    END;',
'    apex_debug.error(''VESTADO ''||VESTADO);',
'    apex_debug.error(''VNUM_ENT_SAL_REF ''||VNUM_ENT_SAL_REF);',
'    apex_debug.error(''VNRO_AJS_REF ''||VNRO_AJS_REF);',
'    IF NVL(VESTADO,''P'') IN (''P'',''N'',''C'') AND VNUM_ENT_SAL_REF IS NOT NULL AND VNRO_AJS_REF IS NULL THEN',
'        :P277_CONTROL_DET := 1;',
'    ELSE ',
'        :P277_CONTROL_DET := 0;',
'    END IF;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_DET_DATA GET_CONTROL_DET ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P277_NUM_ENT_SAL_CAB'
,p_attribute_03=>'P277_CONTROL_DET'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(70987058414780609)
,p_event_id=>wwv_flow_imp.id(67720694413702514)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'doDisable_Enable_Det();'
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(67720920424702517)
,p_event_id=>wwv_flow_imp.id(67720694413702514)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(67638225875440437)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(67722794599702535)
,p_name=>'DA_ABRIR_MODAL_CAB'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(67722018079702528)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(69483941028695109)
,p_event_id=>wwv_flow_imp.id(67722794599702535)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P277_COD_SUCURSAL_CAB,P277_SM_OT_OBRA,P277_OBSERVACION_CAB,P277_EDIT_DATA'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(67722965772702537)
,p_event_id=>wwv_flow_imp.id(67722794599702535)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P277_TIP_ENT_SAL_CAB := :P277_TIP_ENT_SAL;',
':P277_SER_ENT_SAL_CAB := :P277_SER_ENT_SAL;',
'',
'BEGIN',
'    SELECT NVL(MAX(TO_NUMBER(c003)),0) + 1',
'      INTO :P277_NUM_ENT_SAL_CAB_N',
'      FROM APEX_COLLECTIONS',
'     WHERE COLLECTION_NAME = ''COLEC_SM_ENTSAL_CAB'';',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_ABRIR_MODAL_CAB MAX_NUM ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P277_TIP_ENT_SAL,P277_SER_ENT_SAL'
,p_attribute_03=>'P277_TIP_ENT_SAL_CAB ,P277_SER_ENT_SAL_CAB,P277_NUM_ENT_SAL_CAB_N'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(67723438307702542)
,p_event_id=>wwv_flow_imp.id(67722794599702535)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P277_TIPO_ENT_SAL_CAB_R := ''OBR'';',
':P277_SER_ENT_SAL_CAB_R := ''A'';',
'',
'BEGIN',
'    SELECT NVL(MAX(TO_NUMBER(c019)),0) + 1',
'      INTO :P277_NUM_ENT_SAL_CAB_R',
'      FROM APEX_COLLECTIONS',
'     WHERE COLLECTION_NAME = ''COLEC_SM_ENTSAL_CAB'';',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_ABRIR_MODAL_CAB REF DATA ''||SQLERRM);',
'END;'))
,p_attribute_03=>'P277_TIPO_ENT_SAL_CAB_R ,P277_SER_ENT_SAL_CAB_R ,P277_NUM_ENT_SAL_CAB_R'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(67722821428702536)
,p_event_id=>wwv_flow_imp.id(67722794599702535)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(67722111619702529)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(67723666115702544)
,p_name=>'DA_AGREGAR_EDITAR_CAB'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(67723598647702543)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(67723789386702545)
,p_event_id=>wwv_flow_imp.id(67723666115702544)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P277_TIP_ENT_SAL_CAB,P277_SER_ENT_SAL_CAB,P277_NUM_ENT_SAL_CAB_N,P277_COD_SUCURSAL_CAB,P277_TIPO_ENT_SAL_CAB_R,P277_SER_ENT_SAL_CAB_R,P277_NUM_ENT_SAL_CAB_R,P277_ESTADO_CAB,P277_OBSERVACION_CAB'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(67723857989702546)
,p_event_id=>wwv_flow_imp.id(67723666115702544)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    SMENTSAL.CARGAR_COL_CAB(pcod_empresa     => :P_COD_EMPRESA,',
'                            pcod_usuario     => :P_COD_USUARIO,',
'                            ptip_ent_sal     => :P277_TIP_ENT_SAL_CAB,',
'                            pser_ent_sal     => :P277_SER_ENT_SAL_CAB,',
'                            pnum_ent_sal     => :P277_NUM_ENT_SAL_CAB_N,',
'                            ptip_ent_sal_ref => :P277_TIPO_ENT_SAL_CAB_R,',
'                            pser_ent_sal_ref => :P277_SER_ENT_SAL_CAB_R,',
'                            pnum_ent_sal_ref => :P277_NUM_ENT_SAL_CAB_R,',
'                            pestado          => :P277_ESTADO_CAB,',
'                            pcod_sucursal    => :P277_COD_SUCURSAL_CAB,',
'                            pobservacion     => :P277_OBSERVACION_CAB,',
'                            pcod_modulo      => :P277_COD_MODULO);',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_AGREGAR_EDITAR_CAB ADD_COL ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P_COD_EMPRESA,P_COD_USUARIO,P277_TIP_ENT_SAL_CAB,P277_SER_ENT_SAL_CAB,P277_NUM_ENT_SAL_CAB_N,P277_TIPO_ENT_SAL_CAB_R,P277_SER_ENT_SAL_CAB_R,P277_NUM_ENT_SAL_CAB_R,P277_ESTADO_CAB,P277_COD_SUCURSAL_CAB,P277_OBSERVACION_CAB,P277_COD_MODULO'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P277_EDIT_DATA'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(69484016535695110)
,p_event_id=>wwv_flow_imp.id(67723666115702544)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    SMENTSAL.EDITAR_COL_CAB(pseq_id          => :P277_EDIT_DATA,',
'                            pcod_empresa     => :P_COD_EMPRESA,',
'                            ptip_ent_sal     => :P277_TIP_ENT_SAL_CAB,',
'                            pser_ent_sal     => :P277_SER_ENT_SAL_CAB,',
'                            pnum_ent_sal     => :P277_NUM_ENT_SAL_CAB_N,',
'                            ptip_ent_sal_ref => :P277_TIPO_ENT_SAL_CAB_R,',
'                            pser_ent_sal_ref => :P277_SER_ENT_SAL_CAB_R,',
'                            pnum_ent_sal_ref => :P277_NUM_ENT_SAL_CAB_R,',
'                            pestado          => :P277_ESTADO_CAB,',
'                            pcod_sucursal    => :P277_COD_SUCURSAL_CAB,',
'                            pobservacion     => :P277_OBSERVACION_CAB);',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_AGREGAR_EDITAR_COL_CAB EDIT_COL ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P277_EDIT_DATA,P_COD_EMPRESA,P277_TIP_ENT_SAL_CAB,P277_SER_ENT_SAL_CAB,P277_NUM_ENT_SAL_CAB_N,P277_TIPO_ENT_SAL_CAB_R,P277_SER_ENT_SAL_CAB_R,P277_NUM_ENT_SAL_CAB_R,P277_ESTADO_CAB,P277_COD_SUCURSAL_CAB,P277_OBSERVACION_CAB'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P277_EDIT_DATA'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(67724185632702549)
,p_event_id=>wwv_flow_imp.id(67723666115702544)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'VCOD_EMPRESA VARCHAR2(10);',
'BEGIN',
'    BEGIN',
'        SELECT c001',
'          INTO VCOD_EMPRESA ',
'          FROM APEX_COLLECTIONS',
'         WHERE COLLECTION_NAME = ''COLEC_SM_ENTSAL_CAB''',
'           AND c003 = :P277_NUM_ENT_SAL_CAB_N;',
'    EXCEPTION',
'        WHEN NO_DATA_FOUND THEN',
'        VCOD_EMPRESA := NULL;',
'    END;',
'',
'    :P277_COD_EMPRESA_CAB := VCOD_EMPRESA;',
'    ',
'    SMENTSAL.OBTENER_DETALLE(pnum_ent_sal => :P277_NUM_ENT_SAL_CAB_N,',
'                             pcod_empresa => VCOD_EMPRESA,',
'                             pfecha_alta  => :P277_FECHA_ALTA,',
'                             phora_alta   => :P277_HORA_ALTA,',
'                             pcod_usuario => :P277_COD_USUARIO_CAB);',
'',
'    :P277_NUM_ENT_SAL_CAB := :P277_NUM_ENT_SAL_CAB_N;  ',
'',
'    BEGIN',
'    :P277_TOTAL := SMENTSAL.CALCULAR_TOTAL(pcod_empresa => VCOD_EMPRESA,',
'                                           pnum_ent_sal => :P277_NUM_ENT_SAL_CAB_N); ',
'    EXCEPTION',
'        WHEN NO_DATA_FOUND THEN',
'        :P277_TOTAL := 0;',
'    END;          ',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_DET_DATA_ADD ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P277_NUM_ENT_SAL_CAB_N'
,p_attribute_03=>'P277_FECHA_ALTA,P277_HORA_ALTA,P277_COD_USUARIO_CAB,P277_COD_EMPRESA_CAB,P277_TOTAL,P277_NUM_ENT_SAL_CAB'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(67723965893702547)
,p_event_id=>wwv_flow_imp.id(67723666115702544)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(67722111619702529)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(67724082604702548)
,p_event_id=>wwv_flow_imp.id(67723666115702544)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(67635281934440407)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(67724273153702550)
,p_name=>'DA_EDIT_DATA_CAB'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P277_EDIT_DATA'
,p_condition_element=>'P277_EDIT_DATA'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(69483127573695101)
,p_event_id=>wwv_flow_imp.id(67724273153702550)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P277_EDIT_DATA'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(69483278669695102)
,p_event_id=>wwv_flow_imp.id(67724273153702550)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    SMENTSAL.CARGAR_DATOS_EDIT_CAB(pedit_data       => :P277_EDIT_DATA,',
'                                   ptip_ent_sal     => :P277_TIP_ENT_SAL_CAB,',
'                                   pser_ent_sal     => :P277_SER_ENT_SAL_CAB,',
'                                   pnum_ent_sal     => :P277_NUM_ENT_SAL_CAB_N,',
'                                   ptip_ent_sal_ref => :P277_TIPO_ENT_SAL_CAB_R,',
'                                   pser_ent_sal_ref => :P277_SER_ENT_SAL_CAB_R,',
'                                   pnum_ent_sal_ref => :P277_SM_OT_OBRA,',
'                                   pestado          => :P277_ESTADO_CAB,',
'                                   pcod_sucursal    => :P277_COD_SUCURSAL_CAB,',
'                                   pobservacion     => :P277_OBSERVACION_CAB);',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_EDIT_DATA CARGAR_DATOS ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P277_EDIT_DATA'
,p_attribute_03=>'P277_TIP_ENT_SAL_CAB,P277_SER_ENT_SAL_CAB,P277_NUM_ENT_SAL_CAB_N,P277_TIPO_ENT_SAL_CAB_R,P277_SER_ENT_SAL_CAB_R,P277_SM_OT_OBRA,P277_ESTADO_CAB,P277_COD_SUCURSAL_CAB,P277_OBSERVACION_CAB'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(69483384249695103)
,p_event_id=>wwv_flow_imp.id(67724273153702550)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(67722111619702529)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(69483675196695106)
,p_name=>'DA_OBRA'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P277_SM_OT_OBRA'
,p_condition_element=>'P277_SM_OT_OBRA'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(69483729256695107)
,p_event_id=>wwv_flow_imp.id(69483675196695106)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P277_SM_OT_OBRA'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(69483845713695108)
,p_event_id=>wwv_flow_imp.id(69483675196695106)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    SELECT TIP_COMPROBANTE,',
'           SER_COMPROBANTE,',
'           NRO_COMPROBANTE',
'      INTO :P277_TIPO_ENT_SAL_CAB_R,',
'           :P277_SER_ENT_SAL_CAB_R,',
'           :P277_NUM_ENT_SAL_CAB_R',
'      FROM SM_OT_OBRA',
'     WHERE COD_EMPRESA = :P_COD_EMPRESA',
'       AND NRO_COMPROBANTE = :P277_SM_OT_OBRA;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_OBRA ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P_COD_EMPRESA,P277_SM_OT_OBRA'
,p_attribute_03=>'P277_TIPO_ENT_SAL_CAB_R,P277_SER_ENT_SAL_CAB_R,P277_NUM_ENT_SAL_CAB_R'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(69484191143695111)
,p_name=>'DA_DELETE_DATA'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P277_DELETE_DATA'
,p_condition_element=>'P277_DELETE_DATA'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(69484248732695112)
,p_event_id=>wwv_flow_imp.id(69484191143695111)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P277_DELETE_DATA'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(69484383994695113)
,p_event_id=>wwv_flow_imp.id(69484191143695111)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    SMENTSAL.DELETE_COL(pseq_id   => :P277_DELETE_DATA, ',
'                        p_col     => ''COLEC_SM_ENTSAL_CAB'',',
'                        patributo => 22);',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_DELETE_DATA ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P277_DELETE_DATA'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(69484441470695114)
,p_event_id=>wwv_flow_imp.id(69484191143695111)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(67635281934440407)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(69485248034695122)
,p_name=>'DA_ABRIR_MODAL_DET'
,p_event_sequence=>70
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(69485101309695121)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(69485327140695123)
,p_event_id=>wwv_flow_imp.id(69485248034695122)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P277_COD_ART_DET,P277_CANTIDAD_DET,P277_COSTO_ART_DET,P277_IMPORTE_DET,P277_EDIT_DATA_DET'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(69485481699695124)
,p_event_id=>wwv_flow_imp.id(69485248034695122)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(69484546170695115)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(69485506554695125)
,p_name=>'DA_SOLO_NUMEROS'
,p_event_sequence=>80
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P277_CANTIDAD_DET'
,p_bind_type=>'bind'
,p_bind_event_type=>'keydown'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(69485620846695126)
,p_event_id=>wwv_flow_imp.id(69485506554695125)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'validateNumber(event);'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(69486268926695132)
,p_event_id=>wwv_flow_imp.id(69485506554695125)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P277_CANTIDAD_DET,P277_COSTO_ART_DET'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(69486376111695133)
,p_event_id=>wwv_flow_imp.id(69485506554695125)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    :P277_IMPORTE_DET := NVL((:P277_CANTIDAD_DET * :P277_COSTO_ART_DET),0);',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_CALCULAR_IMPORTE ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P277_CANTIDAD_DET ,P277_COSTO_ART_DET'
,p_attribute_03=>'P277_IMPORTE_DET'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(69485959413695129)
,p_name=>'DA_OBTENER_COSTO'
,p_event_sequence=>90
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P277_COD_ART_DET'
,p_condition_element=>'P277_COD_ART_DET'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(69486057288695130)
,p_event_id=>wwv_flow_imp.id(69485959413695129)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P277_COD_ART_DET'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(69486192446695131)
,p_event_id=>wwv_flow_imp.id(69485959413695129)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    :P277_COSTO_ART_DET := SMENTSAL.OBTENER_COSTO_ART(pcod_articulo => :P277_COD_ART_DET,',
'                                                      pcod_empresa  => :P_COD_EMPRESA);',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_OBTENER_COSTO ''||SQLERRM);',
'END; '))
,p_attribute_02=>'P277_COD_ART_DET,P_COD_EMPRESA'
,p_attribute_03=>'P277_COSTO_ART_DET'
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
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(69486456093695134)
,p_name=>'DA_AGREGAR_EDITAR_DET'
,p_event_sequence=>100
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(69485075840695120)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(69486572011695135)
,p_event_id=>wwv_flow_imp.id(69486456093695134)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P277_COD_ART_DET,P277_CANTIDAD_DET,P277_COSTO_ART_DET,P277_IMPORTE_DET'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(69486646988695136)
,p_event_id=>wwv_flow_imp.id(69486456093695134)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    SMENTSAL.ADD_COL_DET(pcod_empresa     => :P_COD_EMPRESA,',
'                         ptip_ent_sal     => :P277_TIP_ENT_SAL,',
'                         pser_ent_sal     => :P277_SER_ENT_SAL,',
'                         pnum_ent_sal     => :P277_NUM_ENT_SAL_CAB,',
'                         pcod_herramienta => :P277_COD_ART_DET,',
'                         pcantidad        => :P277_CANTIDAD_DET,',
'                         pcosto           => :P277_COSTO_ART_DET,',
'                         pimporte         => :P277_IMPORTE_DET);',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_AGREGAR_EDITAR_DET ADD_COL_DET ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P_COD_EMPRESA,P277_TIP_ENT_SAL,P277_SER_ENT_SAL,P277_NUM_ENT_SAL_CAB,P277_COD_ART_DET,P277_CANTIDAD_DET,P277_COSTO_ART_DET,P277_IMPORTE_DET'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P277_EDIT_DATA_DET'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(69487471171695144)
,p_event_id=>wwv_flow_imp.id(69486456093695134)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    SMENTSAL.EDIT_COL_DET(pseq_id       => :P277_EDIT_DATA_DET,',
'                          pcod_articulo => :P277_COD_ART_DET,',
'                          pcantidad     => :P277_CANTIDAD_DET,',
'                          pcosto        => :P277_COSTO_ART_DET,',
'                          pimporte      => :P277_IMPORTE_DET);',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_AGREGAR_EDITAR_DET EDIT_COL ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P277_EDIT_DATA_DET,P277_COD_ART_DET,P277_CANTIDAD_DET,P277_COSTO_ART_DET,P277_IMPORTE_DET'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P277_EDIT_DATA_DET'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(69486731101695137)
,p_event_id=>wwv_flow_imp.id(69486456093695134)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(69484546170695115)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(69486964602695139)
,p_event_id=>wwv_flow_imp.id(69486456093695134)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'VCOD_EMPRESA VARCHAR2(10);',
'BEGIN',
'    BEGIN',
'        SELECT c001',
'          INTO VCOD_EMPRESA ',
'          FROM APEX_COLLECTIONS',
'         WHERE COLLECTION_NAME = ''COLEC_SM_ENTSAL_CAB''',
'           AND c003 = :P277_NUM_ENT_SAL_CAB;',
'    EXCEPTION',
'        WHEN NO_DATA_FOUND THEN',
'        VCOD_EMPRESA := NULL;',
'    END;',
'',
'    :P277_COD_EMPRESA_CAB := VCOD_EMPRESA;',
'    ',
'    SMENTSAL.OBTENER_DETALLE(pnum_ent_sal => :P277_NUM_ENT_SAL_CAB,',
'                             pcod_empresa => VCOD_EMPRESA,',
'                             pfecha_alta  => :P277_FECHA_ALTA,',
'                             phora_alta   => :P277_HORA_ALTA,',
'                             pcod_usuario => :P277_COD_USUARIO_CAB);',
'    ',
'    :P277_TOTAL := SMENTSAL.CALCULAR_TOTAL(pcod_empresa => VCOD_EMPRESA,',
'                                           pnum_ent_sal => :P277_NUM_ENT_SAL_CAB);',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_DET_DATA_ADD DET_DATA ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P277_NUM_ENT_SAL_CAB'
,p_attribute_03=>'P277_FECHA_ALTA,P277_HORA_ALTA,P277_COD_USUARIO_CAB,P277_TOTAL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(69486890843695138)
,p_event_id=>wwv_flow_imp.id(69486456093695134)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(67638225875440437)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(69487078486695140)
,p_name=>'DA_EDIT_DATA_DET'
,p_event_sequence=>110
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P277_EDIT_DATA_DET'
,p_condition_element=>'P277_EDIT_DATA_DET'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(69487199934695141)
,p_event_id=>wwv_flow_imp.id(69487078486695140)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P277_EDIT_DATA_DET'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(69487236706695142)
,p_event_id=>wwv_flow_imp.id(69487078486695140)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    SMENTSAL.OBTENER_DATOS_DET(pedit_data    => :P277_EDIT_DATA_DET,',
'                               pcod_articulo => :P277_COD_ART_DET,',
'                               pcantidad     => :P277_CANTIDAD_DET,',
'                               pcosto        => :P277_COSTO_ART_DET,',
'                               pimporte      => :P277_IMPORTE_DET);',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_EDIT_DATA_DET ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P277_EDIT_DATA_DET'
,p_attribute_03=>'P277_COD_ART_DET,P277_CANTIDAD_DET,P277_COSTO_ART_DET,P277_IMPORTE_DET'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(69487352992695143)
,p_event_id=>wwv_flow_imp.id(69487078486695140)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(69484546170695115)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(69487646512695146)
,p_name=>'DA_DELETE_DATA_DET'
,p_event_sequence=>120
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P277_DELETE_DATA_DET'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(69487766326695147)
,p_event_id=>wwv_flow_imp.id(69487646512695146)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P277_DELETE_DATA_DET'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(69487851020695148)
,p_event_id=>wwv_flow_imp.id(69487646512695146)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    SMENTSAL.DELETE_COL(pseq_id   => :P277_DELETE_DATA_DET, ',
'                        p_col     => ''COLEC_SM_ENTSAL_DET'',',
'                        patributo => 9);',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_DELETE_DATA_DET ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P277_DELETE_DATA_DET'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(69487941883695149)
,p_event_id=>wwv_flow_imp.id(69487646512695146)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(67638225875440437)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(70986356095780602)
,p_name=>'DA_CONFIRMAR'
,p_event_sequence=>130
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(70986251419780601)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(70986464442780603)
,p_event_id=>wwv_flow_imp.id(70986356095780602)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('Est\00E1 por confirmar el presupuesto &P277_TIP_ENT_SAL. - &P277_SER_ENT_SAL. - &P277_NUM_ENT_SAL_CAB. , \00BFDesea continuar?')
,p_attribute_02=>'Aviso'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(70987106044780610)
,p_event_id=>wwv_flow_imp.id(70986356095780602)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'VTIP_ENT_SAL VARCHAR2(100);',
'VSER_ENT_SAL VARCHAR2(100);',
'VNUM_REF VARCHAR2(100);',
'vresult number;',
'BEGIN',
'    BEGIN',
'        SELECT c004,',
'               c005,',
'               c019',
'          INTO VSER_ENT_SAL,',
'               VTIP_ENT_SAL,',
'               VNUM_REF',
'          FROM APEX_COLLECTIONS',
'         WHERE COLLECTION_NAME = ''COLEC_SM_ENTSAL_CAB''',
'           AND c003 = :P277_NUM_ENT_SAL_CAB;',
'    EXCEPTION',
'        WHEN NO_DATA_FOUND THEN',
'        VTIP_ENT_SAL := NULL;',
'        VSER_ENT_SAL := NULL;',
'        VNUM_REF := NULL;',
'    END;',
'',
'    IF :P277_NUM_ENT_SAL_CAB IS NOT NULL THEN',
'        IF SMENTSAL.VALIDA_STK(pcod_empresa     => :P_COD_EMPRESA,',
'                               ptip_ent_sal     => VTIP_ENT_SAL,',
'                               pser_ent_sal     => VSER_ENT_SAL,',
'                               pnum_ent_sal     => :P277_NUM_ENT_SAL_CAB,',
'                               pnum_ent_sal_ref => VNUM_REF) THEN',
'',
'            begin	',
'				ajuste_presup_obra(:P_COD_EMPRESA,',
'		                           VSER_ENT_SAL,',
'		                           VTIP_ENT_SAL,',
'		                           :P277_NUM_ENT_SAL_CAB,',
'		                           vresult);',
'				if nvl(vresult,0)>0 then',
'                    :P277_MENSAJE_CONFIRM := ''Pedido de materiales generado. Nro: ''||vresult;',
'					',
'                    UPDATE SM_ENTSAL_CAB',
'                       SET NRO_AJS_REF = vresult',
'                     WHERE COD_EMPRESA = :P_COD_EMPRESA',
'                       AND TIP_ENT_SAL = VTIP_ENT_SAL',
'                       AND SER_ENT_SAL = VSER_ENT_SAL',
'                       AND NUM_ENT_SAL = :P277_NUM_ENT_SAL_CAB;',
'',
'						--Set_ITEM_Property(''B_CABECERA.BTN_CONFIRMA'',ENABLED,PROPERTY_FALSE); ',
'				else ',
'                    :P277_MENSAJE_CONFIRM := ''No se ha podido generar el pedido. ''||vresult;	',
'				end if;',
'			exception',
'				when others then',
'                    :P277_MENSAJE_CONFIRM := ''No se ha podido generar el pedido. '';',
'			end;',
'',
'        ELSE',
'            :P277_MENSAJE_CONFIRM := ''No se puede generar el pedido. Cantidad no disponible'';',
'        END IF;',
'    END IF;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_CONFIRMAR ''||SQLERRM);',
'END;'))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(70987314965780612)
,p_name=>'DA_MENSAJE_CONFIRM'
,p_event_sequence=>140
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P277_MENSAJE_CONFIRM'
,p_condition_element=>'P277_MENSAJE_CONFIRM'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(70987479009780613)
,p_event_id=>wwv_flow_imp.id(70987314965780612)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P277_MENSAJE_CONFIRM.'
,p_attribute_02=>'Aviso'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(67721082109702518)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'PR_CLEAR'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(64384142467178849)
,p_process_sequence=>20
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_INIT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P277_COD_MODULO := ''SM'';',
':P277_SER_ENT_SAL := ''A'';',
':P277_TIP_ENT_SAL := ''PRE'';',
':P277_TIPO_ENVIO := BS_BUSCA_PARAMETRO(:P277_COD_MODULO, ''TIPO_ENVIO'');',
':P277_COD_MONEDA_BASE := BS_BUSCA_PARAMETRO(''BS'',''COD_MONEDA_BASE'');',
':P277_COD_MONEDA_US := BS_BUSCA_PARAMETRO(''BS'',''COD_MONEDA_DOL'');',
':P277_COD_SUCURSAL := NVL(:P_COD_SUCURSAL,''01'');',
'APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(''COLEC_SM_ENTSAL_CAB'');',
'APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(''COLEC_SM_ENTSAL_DET'');',
''))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(67719982801702507)
,p_process_sequence=>30
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_CARGAR_DATOS'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    SMENTSAL.CARGAR_COL_CAB(pcod_empresa => :P_COD_EMPRESA);',
'',
'    SMENTSAL.CARGAR_COL_DET(pcod_empresa => :P_COD_EMPRESA);',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''PR_CARGAR_DATOS ''||SQLERRM);',
'END;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(69488089826695150)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_SAVE'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    SMENTSAL.GUARDAR_DATOS(pcod_empresa => :P_COD_EMPRESA);',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''PR_SAVE PAG 277 ''||SQLERRM);',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Error al procesar los datos.'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(69487558588695145)
,p_process_success_message=>'Datos procesados correctamente.'
);
wwv_flow_imp.component_end;
end;
/
