prompt --application/pages/page_00394
begin
--   Manifest
--     PAGE: 00394
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
 p_id=>394
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Carga de recibos - CCRECIBO'
,p_alias=>'CARGA-DE-RECIBOS-CCRECIBO'
,p_step_title=>'Carga de recibos - CCRECIBO'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function doDescarga(p_cod_empresa, p_tip_recibo,p_ser_comprobante, p_nro_comprobante){',
'   var vURL = ''https://ngosaeca.com.py/reportes/rest_v2/reports/reports/CCRECIBO_ALT_OFICIO_V3.pdf?''',
'             + ''P_COD_EMPRESA='' + p_cod_empresa+ ''&P_TIP_RECIBO='' + p_tip_recibo + ''&P_SER_RECIBO='' + p_ser_comprobante + ''&P_NRO_RECIBO='' + p_nro_comprobante + ''&j_username=jasperadmin&j_password=jasperadmin'';',
'',
'    console.log(vURL);',
'    ',
'   ',
'     window.open(vURL,"Pagina Child","width=1800,height=1000,scrollbars=NO") ;',
'}',
'',
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
'}'))
,p_javascript_code_onload=>'document.getElementById("BTNUEV").disabled = true;'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
' .t-Body-contentInner{    background: #c0d0e6!important;}',
' ',
'',
'.t-Form-label, .t-Form-itemText--pre{',
'    color:  #003A85 !important;     ',
'    font-weight: bold;',
'    } ',
'',
'',
'',
'    .a-IRR-toolbar, .a-IRR-content',
'    {    background: #d0e0f783!important;}',
'',
'',
'.t-Report-colHead, .a-IRR-headerLink {',
'      background: #003a85!important;',
'       color: yellow; ',
' }'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'INV'
,p_last_upd_yyyymmddhh24miss=>'20230927121043'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(228286338147152127)
,p_plug_name=>'Recibo'
,p_region_name=>'cabecera'
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(228287352098152137)
,p_plug_name=>'New'
,p_parent_plug_id=>wwv_flow_imp.id(228286338147152127)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>10
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(228287519603152139)
,p_plug_name=>'New'
,p_parent_plug_id=>wwv_flow_imp.id(228286338147152127)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>30
,p_plug_new_grid_row=>false
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(229037132380478305)
,p_plug_name=>'Datos del Recibo'
,p_parent_plug_id=>wwv_flow_imp.id(228286338147152127)
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>40
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(229041043400478344)
,p_plug_name=>'Comprobantes'
,p_parent_plug_id=>wwv_flow_imp.id(228286338147152127)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>50
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(228933973341878037)
,p_plug_name=>'COL_DETA_CCRECIBO'
,p_parent_plug_id=>wwv_flow_imp.id(229041043400478344)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT seq_id SEQ_ID,',
'       c001 Empresa, --COD_EMPRESA',
'       c002 Nro, --NRO_COMPROBANTE',
'       c003 Ser, --SER_COMPROBANTE',
'       c004 Tip, --TIP_COMPROBANTE',
'       c005 Cuota,',
'       TO_NUMBER(c006) Monto,',
'       c007 Moneda,',
'       c008 Vencimiento,',
'       c009 Tipo_Transac,',
'       c010 Cambio,',
'       TO_NUMBER(c011) Importe,',
'       c012 Nom_moneda,',
'       c013 Nom_Transac,',
'       c014 CONTROL,',
'       NULL EDITAR,',
'       NULL ELIMINAR,',
'       NULL DETALLE',
'  FROM APEX_COLLECTIONS',
' WHERE COLLECTION_NAME = ''COL_DETA_CCRECIBO''',
'   AND (c014 = ''U'' OR c014 = ''I'' OR c014 IS NULL)'))
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
 p_id=>wwv_flow_imp.id(228934053751878038)
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
,p_internal_uid=>228934053751878038
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(116815104670812551)
,p_db_column_name=>'SEQ_ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Seq Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(116815546415812551)
,p_db_column_name=>'EMPRESA'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Empresa'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(116815971563812551)
,p_db_column_name=>'NRO'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Nro'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(116816371234812552)
,p_db_column_name=>'SER'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Ser'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(116816745490812552)
,p_db_column_name=>'TIP'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Tip'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(116817138381812552)
,p_db_column_name=>'CUOTA'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Cuota'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(116817935461812552)
,p_db_column_name=>'MONEDA'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Moneda'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(116818378680812552)
,p_db_column_name=>'VENCIMIENTO'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Vencimiento'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(116818782416812553)
,p_db_column_name=>'TIPO_TRANSAC'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Tipo Transac'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(116819103419812553)
,p_db_column_name=>'CAMBIO'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Cambio'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(116819945841812553)
,p_db_column_name=>'NOM_MONEDA'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Nom Moneda'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(116820390710812553)
,p_db_column_name=>'NOM_TRANSAC'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Nom Transac'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(116820730716812554)
,p_db_column_name=>'CONTROL'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Control'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(116821106147812554)
,p_db_column_name=>'ELIMINAR'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Eliminar'
,p_column_link=>'javascript:$s(''P394_DELETE_DATA_DET'',''#SEQ_ID#'');'
,p_column_linktext=>'<span class="fa fa-trash-o">'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(116515449581245042)
,p_db_column_name=>'EDITAR'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Editar'
,p_column_link=>'javascript:$s(''P394_EDIT_DATA_DET'',''#SEQ_ID#'');'
,p_column_linktext=>'<span aria-label="Edit"><span class="fa fa-edit" aria-hidden="true" title="Edit"></span></span>'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(116516187894245049)
,p_db_column_name=>'DETALLE'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'Detalle'
,p_column_link=>'javascript:$s(''P394_DET_DATA_DET'',''#SEQ_ID#'');'
,p_column_linktext=>'<span class="fa fa-search">'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(117368199278768809)
,p_db_column_name=>'MONTO'
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>'Monto'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'CENTER'
,p_format_mask=>'999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(117368279540768810)
,p_db_column_name=>'IMPORTE'
,p_display_order=>200
,p_column_identifier=>'T'
,p_column_label=>'Importe'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'CENTER'
,p_format_mask=>'999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(233285824654057963)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1165217'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'TIPO_TRANSAC:TIP:SER:NRO:CUOTA:VENCIMIENTO:MONEDA:CAMBIO:MONTO:IMPORTE:DETALLE:EDITAR:ELIMINAR:'
,p_sum_columns_on_break=>'IMPORTE:MONTO'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(229041102815478345)
,p_plug_name=>'New'
,p_parent_plug_id=>wwv_flow_imp.id(229041043400478344)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>30
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(229129582545761499)
,p_plug_name=>'Datos Administrativos'
,p_parent_plug_id=>wwv_flow_imp.id(228286338147152127)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(229129878095761502)
,p_plug_name=>unistr('Datos de Anulaci\00F3n')
,p_parent_plug_id=>wwv_flow_imp.id(228286338147152127)
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
 p_id=>wwv_flow_imp.id(229129936380761503)
,p_plug_name=>'Estado del Recibo'
,p_parent_plug_id=>wwv_flow_imp.id(228286338147152127)
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
 p_id=>wwv_flow_imp.id(229706893298446209)
,p_plug_name=>unistr('Comprobantes a a\00F1adir')
,p_region_template_options=>'#DEFAULT#:js-dialog-autoheight:t-DialogRegion--noPadding:js-dialog-size720x480'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>20
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(231266344345595828)
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
 p_id=>wwv_flow_imp.id(116788432940812531)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(229037132380478305)
,p_button_name=>'BTN_BUSCAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_image_alt=>'Buscar'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'u-color-21-bg u-color-13-text'
,p_icon_css_classes=>'fa-search'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(116822998701812557)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_imp.id(229041102815478345)
,p_button_name=>'BTN_FORM_COBRO'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--iconRight:t-Button--gapLeft:t-Button--gapTop:t-Button--padBottom'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_image_alt=>'Forma de Cobro'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'u-color-21-bg u-color-13-text'
,p_icon_css_classes=>'fa-money'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(116825624417812559)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(231266344345595828)
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
 p_id=>wwv_flow_imp.id(116825270745812559)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(231266344345595828)
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
 p_id=>wwv_flow_imp.id(116774991048812525)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(228286338147152127)
,p_button_name=>'BTN_GUARDAR_CAMBIOS'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Guardar'
,p_button_position=>'EDIT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'u-color-21-bg u-color-13-text'
,p_icon_css_classes=>'fa-save'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(117371504779768843)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(228286338147152127)
,p_button_name=>'BTVOLVER'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_image_alt=>'Volver'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:395:&SESSION.::&DEBUG.:395::'
,p_icon_css_classes=>'fa-arrow-left-alt'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(116515544408245043)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(228286338147152127)
,p_button_name=>'BTNUEVO_RECIBO'
,p_button_static_id=>'BTNUEV'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Nuevo Recibo'
,p_button_position=>'EDIT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'u-color-21-bg u-color-13-text'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(208556340569354602)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(228286338147152127)
,p_button_name=>'BTVER_RECIBO'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_image_alt=>'Ver Recibo'
,p_button_position=>'EDIT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'u-color-21-bg u-color-13-text'
,p_icon_css_classes=>'fa-materialized-view'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(123213932713722847)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(228286338147152127)
,p_button_name=>'BTIMPRIMIR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_image_alt=>'Imprimir'
,p_button_position=>'EDIT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'u-color-1-border'
,p_icon_css_classes=>'fa-print'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(116804640761812539)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(229041043400478344)
,p_button_name=>'BTN_AGREGAR_COMPROBANTE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_image_alt=>'Agregar Comprobantes'
,p_button_position=>'NEXT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'u-color-21-bg u-color-13-text'
,p_icon_css_classes=>'fa-plus'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(116764891803812506)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(229706893298446209)
,p_button_name=>'BTAGREGAR_EDITAR_DET'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Agregar/Editar Detalle'
,p_button_position=>'NEXT'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(118479503341648233)
,p_branch_name=>'GO_TO_95_1'
,p_branch_action=>'f?p=&APP_ID.:95:&SESSION.::&DEBUG.:95:P95_P_TIP_MOV_CAJ,P95_P_SER_MOV_CAJ,P95_P_NRO_MOV_CAJ:&P394_TIP_MOV_CAJ_AUX.,&P394_SER_MOV_CAJ_AUX.,&P394_NRO_MOV_CAJ_AUX.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
,p_branch_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_branch_condition=>'P394_CONTROL_BRUNCH'
,p_branch_condition_text=>'1'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(118479674048648234)
,p_branch_name=>'GO_TO_95_2'
,p_branch_action=>'f?p=&APP_ID.:95:&SESSION.::&DEBUG.:95:P95_TIPO_COMPROBANTE,P95_COD_SUCURSAL,P95_SER_COMPROBANTE,P95_NRO_COMPROBANTE,P95_P_COD_CLIENTE,P95_COD_CUSTODIO,P95_COD_CUSTODIO_ENT,P95_P_IND_GENERA_MD,P95_P_SER_ORT,P95_P_NRO_ORT,P95_P_FECHA:REC,&P394_SUCURSAL.,&P394_SER_RECIBO.,&P394_NRO_RECIBO.,&P394_CLIENTE.,&P394_CUSTODIO.,&P394_V_COD_CUSTODIO_ENT.,S,&P394_SER_COMPROBANTE_REF.,&P394_NRO_COMPROBANTE_REF.,&P394_FECHA_RECIBO.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>20
,p_branch_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_branch_condition=>'P394_CONTROL_BRUNCH'
,p_branch_condition_text=>'2'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(118481097782648248)
,p_branch_name=>'GO_TO_95_3'
,p_branch_action=>'f?p=&APP_ID.:95:&SESSION.::&DEBUG.:95:P95_TIPO_COMPROBANTE,P95_COD_SUCURSAL,P95_SER_COMPROBANTE,P95_NRO_COMPROBANTE,P95_P_COD_CLIENTE,P95_COD_CUSTODIO,P95_COD_CUSTODIO_ENT,P95_P_IND_GENERA_MD,P95_P_FECHA:REC,&P394_SUCURSAL.,&P394_SER_RECIBO.,&P394_NRO_RECIBO.,&P394_CLIENTE.,&P394_CUSTODIO.,&P394_V_COD_CUSTODIO_ENT.,S,&P394_FECHA_RECIBO.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>30
,p_branch_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_branch_condition=>'P394_CONTROL_BRUNCH'
,p_branch_condition_text=>'3'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(116512789429245015)
,p_name=>'P394_TIP_FACTURA_REF_ADD'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(229706893298446209)
,p_prompt=>'Referencia'
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
,p_lov_cascade_parent_items=>'P394_CLIENTE,P394_CUSTODIO'
,p_ajax_items_to_submit=>'P394_CLIENTE,P394_CUSTODIO'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'Y'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
,p_attribute_08=>'1200'
,p_attribute_09=>'400'
,p_attribute_10=>'ROW_ID:P394_ROW_ID_DET'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(116512991329245017)
,p_name=>'P394_MENSAJE_CLIENTE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(228287519603152139)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(116513335180245021)
,p_name=>'P394_SER_FACTURA_REF_ADD'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(229706893298446209)
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
 p_id=>wwv_flow_imp.id(116513434807245022)
,p_name=>'P394_NRO_FACTURA_REF_ADD'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(229706893298446209)
,p_prompt=>unistr('N\00FAmero')
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
 p_id=>wwv_flow_imp.id(116513570790245023)
,p_name=>'P394_NRO_CUOTA_ADD'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(229706893298446209)
,p_prompt=>'Cuota'
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
 p_id=>wwv_flow_imp.id(116513660497245024)
,p_name=>'P394_FEC_VENCIMIENTO_ADD'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(229706893298446209)
,p_prompt=>'Vencimiento'
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
 p_id=>wwv_flow_imp.id(116513704969245025)
,p_name=>'P394_COD_MONEDA_CUOTA_ADD'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(229706893298446209)
,p_prompt=>'Moneda'
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
 p_id=>wwv_flow_imp.id(116513877290245026)
,p_name=>'P394_TIP_CAMBIO_ADD'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(229706893298446209)
,p_prompt=>'Tipo de Cambio'
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
 p_id=>wwv_flow_imp.id(116513904025245027)
,p_name=>'P394_MONTO_CUOTA_ADD'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(229706893298446209)
,p_prompt=>'Monto Cuota'
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
 p_id=>wwv_flow_imp.id(116514071460245028)
,p_name=>'P394_IMPORTE_ADD'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(229706893298446209)
,p_prompt=>'Importe'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(116514315197245031)
,p_name=>'P394_TIP_FACTURA_REF_ADD_AUX'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(229706893298446209)
,p_prompt=>'Tipo'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:REC;REC,FCR;FCR,NCR;NCR,PG;PG,CH;CH,CHE;CHE,ND;ND,NC;NC,AC;AC'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_tag_attributes=>'readonly'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(116516220863245050)
,p_name=>'P394_DET_DATA_DET'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(228933973341878037)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(116765610642812509)
,p_name=>'P394_TIPO_TRANSAC'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(229706893298446209)
,p_item_default=>'1'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(116775354562812525)
,p_name=>'P394_V_COD_CUSTODIO'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(228286338147152127)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(116775774961812525)
,p_name=>'P394_V_COD_MODULO'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(228286338147152127)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(116776144494812525)
,p_name=>'P394_V_TIPO_TRAN'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(228286338147152127)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(116776579857812525)
,p_name=>'P394_V_SUB_TIPO_TRANS'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(228286338147152127)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(116776952299812526)
,p_name=>'P394_V_TIPO_RECIBO'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(228286338147152127)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(116777375972812526)
,p_name=>'P394_V_SER_RECIBO'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(228286338147152127)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(116777720985812526)
,p_name=>'P394_V_TIPO_CHEQUE'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(228286338147152127)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
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
 p_id=>wwv_flow_imp.id(116778143193812526)
,p_name=>'P394_P_TIP_COMPROBANTE'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(228286338147152127)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(116778577606812526)
,p_name=>'P394_V_TIPO_TALON_FACTURA'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(228286338147152127)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(116778948527812527)
,p_name=>'P394_V_GENERA_MD'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(228286338147152127)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(116779390148812527)
,p_name=>'P394_V_COD_CUSTODIO_ENT'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(228286338147152127)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(116779716901812527)
,p_name=>'P394_V_TIP_ANTICIPO'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(228286338147152127)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(116780137673812527)
,p_name=>'P394_V_CLIENTE_CONTADO_CREDITO'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_imp.id(228286338147152127)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(116780559283812527)
,p_name=>'P394_V_REIMPRIME'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_imp.id(228286338147152127)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(116780962366812527)
,p_name=>'P394_V_MODIFICA_CAMBIO'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_imp.id(228286338147152127)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(116781373620812527)
,p_name=>'P394_V_PERMITE_ANULAR'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_imp.id(228286338147152127)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(116781768725812528)
,p_name=>'P394_V_CARGA_SUCURSAL'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_imp.id(228286338147152127)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(116782106445812528)
,p_name=>'P394_V_CARGA_TIP_CAMBIO'
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_imp.id(228286338147152127)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(116782552455812528)
,p_name=>'P394_V_CARGA_SUB_TIPO_TRANS'
,p_item_sequence=>270
,p_item_plug_id=>wwv_flow_imp.id(228286338147152127)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(116782939178812528)
,p_name=>'P394_V_MODIFICA_FECHA_ANT'
,p_item_sequence=>280
,p_item_plug_id=>wwv_flow_imp.id(228286338147152127)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(116783366641812528)
,p_name=>'P394_V_CAMBIA_FECHA'
,p_item_sequence=>290
,p_item_plug_id=>wwv_flow_imp.id(228286338147152127)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(116783727294812528)
,p_name=>'P394_V_CARGA_SENIA'
,p_item_sequence=>300
,p_item_plug_id=>wwv_flow_imp.id(228286338147152127)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(116784197806812529)
,p_name=>'P394_V_NRO_INICIAL'
,p_item_sequence=>310
,p_item_plug_id=>wwv_flow_imp.id(228286338147152127)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(116784548900812529)
,p_name=>'P394_V_NRO_FINAL'
,p_item_sequence=>320
,p_item_plug_id=>wwv_flow_imp.id(228286338147152127)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(116784958270812529)
,p_name=>'P394_V_SERIE'
,p_item_sequence=>330
,p_item_plug_id=>wwv_flow_imp.id(228286338147152127)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(116785359413812529)
,p_name=>'P394_V_FEC_ESTADO'
,p_item_sequence=>340
,p_item_plug_id=>wwv_flow_imp.id(228286338147152127)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(116785789326812529)
,p_name=>'P394_V_ESTADO'
,p_item_sequence=>350
,p_item_plug_id=>wwv_flow_imp.id(228286338147152127)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(116786123330812529)
,p_name=>'P394_V_P_REQUIERE_DETALLE'
,p_item_sequence=>360
,p_item_plug_id=>wwv_flow_imp.id(228286338147152127)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(116786550080812530)
,p_name=>'P394_V_SER_CAMBIO'
,p_item_sequence=>370
,p_item_plug_id=>wwv_flow_imp.id(228286338147152127)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(116786955575812530)
,p_name=>'P394_NRO_SELECT'
,p_item_sequence=>380
,p_item_plug_id=>wwv_flow_imp.id(228286338147152127)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(116787389516812530)
,p_name=>'P394_SER_SELECT'
,p_item_sequence=>390
,p_item_plug_id=>wwv_flow_imp.id(228286338147152127)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(116787782083812530)
,p_name=>'P394_TIP_SELECT'
,p_item_sequence=>400
,p_item_plug_id=>wwv_flow_imp.id(228286338147152127)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(116788866907812531)
,p_name=>'P394_GEN_DOC'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(229037132380478305)
,p_prompt=>'Gen. tras de documentos'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(116789248065812531)
,p_name=>'P394_NRO_PLANILLA'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(229037132380478305)
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
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(116789632541812531)
,p_name=>'P394_FEC_VENC_D'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(229037132380478305)
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
 p_id=>wwv_flow_imp.id(116790022803812531)
,p_name=>'P394_FEC_VENC_H'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(229037132380478305)
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
 p_id=>wwv_flow_imp.id(116790491340812531)
,p_name=>'P394_IMP_S_FP'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(229037132380478305)
,p_prompt=>'Imprimir sin fo. Pago'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(116790837350812532)
,p_name=>'P394_FEC_EMISION_D'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(229037132380478305)
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
 p_id=>wwv_flow_imp.id(116791250214812532)
,p_name=>'P394_FEC_EMI_HASTA'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(229037132380478305)
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
 p_id=>wwv_flow_imp.id(116791630097812532)
,p_name=>'P394_CUSTODIO_ENT'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(229037132380478305)
,p_prompt=>'Custodio Destino'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cod_custodio||''-''||descripcion d, cod_custodio r',
'from cc_custodios ',
'where cod_empresa = :P_COD_EMPRESA',
'and cod_custodio <> :P394_CUSTODIO ',
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
 p_id=>wwv_flow_imp.id(116792367052812532)
,p_name=>'P394_USUARIO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(229129582545761499)
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
 p_id=>wwv_flow_imp.id(116792718534812533)
,p_name=>'P394_MOV_DE_CAJA'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(229129582545761499)
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
 p_id=>wwv_flow_imp.id(116793434211812533)
,p_name=>'P394_SUCURSAL'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(228287352098152137)
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
 p_id=>wwv_flow_imp.id(116794276902812533)
,p_name=>'P394_NRO_RECIBO'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(228287352098152137)
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
 p_id=>wwv_flow_imp.id(116794668812812533)
,p_name=>'P394_FECHA_RECIBO'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(228287352098152137)
,p_prompt=>'Fecha Recibo'
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>30
,p_read_only_when_type=>'ALWAYS'
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
 p_id=>wwv_flow_imp.id(116795038289812534)
,p_name=>'P394_TIP_COMPROBANTE_REF'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(228287352098152137)
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
 p_id=>wwv_flow_imp.id(116795451930812534)
,p_name=>'P394_SER_COMPROBANTE_REF'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(228287352098152137)
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
 p_id=>wwv_flow_imp.id(116795866321812534)
,p_name=>'P394_NRO_COMPROBANTE_REF'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(228287352098152137)
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
 p_id=>wwv_flow_imp.id(116796259570812534)
,p_name=>'P394_ANUL_REAL'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(228287352098152137)
,p_prompt=>'Anulado Real'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_colspan=>4
,p_grid_column=>4
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(116796616815812534)
,p_name=>'P394_ANULACION_INICIAL'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(228287352098152137)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(116797028452812534)
,p_name=>'P394_TIP_RECIBO'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(228287352098152137)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(116797733522812535)
,p_name=>'P394_CLIENTE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(228287519603152139)
,p_prompt=>'Cliente'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_CLIENTE_CCRECIBO'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select nvl( ltrim(p.nombre), ltrim( p.nomb_fantasia ) ) NOMBRE, ',
'       c.cod_cliente CODIGO',
'from cc_clientes c, personas p ',
'where c.cod_empresa = :P_cod_empresa',
'and c.cod_persona = p.cod_persona ',
'order by 2'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'Seleccione'
,p_cSize=>30
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'Y'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
,p_attribute_10=>'NOMBRE:P394_NOMB_CLIENTE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(116798191763812535)
,p_name=>'P394_COBRADOR'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(228287519603152139)
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
 p_id=>wwv_flow_imp.id(116798509735812535)
,p_name=>'P394_COD_MONEDA'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(228287519603152139)
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
 p_id=>wwv_flow_imp.id(116798960223812536)
,p_name=>'P394_TIP_CAMBIO'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(228287519603152139)
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
 p_id=>wwv_flow_imp.id(116799338642812536)
,p_name=>'P394_CUSTODIO'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(228287519603152139)
,p_prompt=>'Custodio'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select c.cod_custodio||''-''||c.descripcion d,',
'       c.cod_custodio r',
'  from usuarios_custodios u,',
'       cc_custodios c ',
' where u.cod_empresa = :P_COD_EMPRESA ',
'   and u.cod_usuario = :P_COD_USUARIO ',
'   and u.cod_empresa = c.cod_empresa ',
'   and u.cod_custodio = c.cod_custodio ',
'   and u.cod_custodio <> :P394_COD_CUSTODIO ',
'union all ',
'select c.cod_custodio||''-''||c.descripcion d,',
'       c.cod_custodio r',
'  from cc_custodios c ',
' where c.cod_empresa = :P_COD_EMPRESA ',
'   and ((:P394_CONTROL_ORIGEN = 0 AND  c.cod_custodio = :P394_COD_CUSTODIO) ',
'       or (:P394_CONTROL_ORIGEN = 1 AND c.cod_custodio = :P394_CUSTODIO))',
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
 p_id=>wwv_flow_imp.id(116799750498812536)
,p_name=>'P394_DECIMALES'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(228287519603152139)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(116800155617812536)
,p_name=>'P394_COD_CUSTODIO'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(228287519603152139)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(116800890495812537)
,p_name=>'P394_ANULADO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(229129878095761502)
,p_prompt=>'Anulado'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(116801251814812537)
,p_name=>'P394_USUARIO_ANUL'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(229129878095761502)
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
 p_id=>wwv_flow_imp.id(116801667532812537)
,p_name=>'P394_FEC_ANUL'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(229129878095761502)
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
 p_id=>wwv_flow_imp.id(116802037569812537)
,p_name=>'P394_MOTIVO_ANUL'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(229129878095761502)
,p_prompt=>unistr('Motivo Anulaci\00F3n')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select descripcion d, cod_motivo_anu r',
'from vt_motivo_anulacion',
' where cod_empresa = :p_cod_empresa ',
' and tip_motivo = ''4'' ',
' order by 1'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_read_only_when_type=>'ALWAYS'
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
 p_id=>wwv_flow_imp.id(116802733883812538)
,p_name=>'P394_ESTADO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(229129936380761503)
,p_prompt=>'Estado'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:PENDIENTE COBRO;P,EN PLANILLA DE INGRESO;I,COBRADO;C,ANULADO;A'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_tag_attributes=>'readonly'
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(116803123258812538)
,p_name=>'P394_ASIENTO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(229129936380761503)
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
 p_id=>wwv_flow_imp.id(116803584759812538)
,p_name=>'P394_FEC_ESTADO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(229129936380761503)
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
 p_id=>wwv_flow_imp.id(116803900799812538)
,p_name=>'P394_ASIENTO_ANUL'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(229129936380761503)
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
 p_id=>wwv_flow_imp.id(116821860564812556)
,p_name=>'P394_EDIT_DATA_DET'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(228933973341878037)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(116822291865812556)
,p_name=>'P394_DELETE_DATA_DET'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(228933973341878037)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(116823326669812558)
,p_name=>'P394_TRANSACCION'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(229041102815478345)
,p_prompt=>unistr('Transacci\00F3n')
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(116823715450812558)
,p_name=>'P394_MONEDA'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(229041102815478345)
,p_prompt=>'Moneda'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(116824195796812558)
,p_name=>'P394_TOTAL'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(229041102815478345)
,p_prompt=>'Total'
,p_format_mask=>'999G999G999G999G990D00'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(116824516079812558)
,p_name=>'P394_COMENTARIO'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(229041102815478345)
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
 p_id=>wwv_flow_imp.id(116826044454812559)
,p_name=>'P394_MOTIVO_ANULA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(231266344345595828)
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
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(117367917802768807)
,p_name=>'P394_V_IMPORTE_ANT'
,p_item_sequence=>410
,p_item_plug_id=>wwv_flow_imp.id(228286338147152127)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(117368998052768817)
,p_name=>'P394_MENSAJE_BUSCAR'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(229037132380478305)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(118476451239648202)
,p_name=>'P394_CONTROL_ORIGEN'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(228287352098152137)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(118476783676648205)
,p_name=>'P394_ROWID'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(228287352098152137)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(118476885107648206)
,p_name=>'P394_SER_RECIBO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(228287352098152137)
,p_prompt=>'Ser Recibo'
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
 p_id=>wwv_flow_imp.id(118476924447648207)
,p_name=>'P394_REFENCIA'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(228287352098152137)
,p_prompt=>'Refencia'
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
 p_id=>wwv_flow_imp.id(118477013858648208)
,p_name=>'P394_MENSAJE_EDICION'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(229706893298446209)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(118477492728648212)
,p_name=>'P394_MENSAJE_BORRADO'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(229706893298446209)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(118477861098648216)
,p_name=>'P394_TOTAL_AUX'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(229041102815478345)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(118478241658648220)
,p_name=>'P394_CONTROL_ANUL'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(229129878095761502)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(118478456460648222)
,p_name=>'P394_MENSAJE_GUARDAR_CAMBIOS'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(228287352098152137)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(118478846284648226)
,p_name=>'P394_CONTROL_GUARDADO'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(228287352098152137)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(118478939577648227)
,p_name=>'P394_MENSAJE_GUARDAR_CAMBIOS_1'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(228287352098152137)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(118479749383648235)
,p_name=>'P394_CONTROL_BRUNCH'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(228287352098152137)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(118480116405648239)
,p_name=>'P394_TIP_MOV_CAJ_AUX'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(228287352098152137)
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
 p_id=>wwv_flow_imp.id(118480221166648240)
,p_name=>'P394_NRO_MOV_CAJ_AUX'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_imp.id(228287352098152137)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(118480353844648241)
,p_name=>'P394_SER_MOV_CAJ_AUX'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(228287352098152137)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(126306022837686805)
,p_name=>'P394_MENSAJE_MONTO'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(229706893298446209)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(126306179692686806)
,p_name=>'P394_GENERA_CREDITO_ADD'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(229706893298446209)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(126306875196686813)
,p_name=>'P394_SALDO_AUX'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(229706893298446209)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(132544571409400123)
,p_name=>'P394_NOMB_CLIENTE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(228287519603152139)
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
 p_id=>wwv_flow_imp.id(132545177487400129)
,p_name=>'P394_MENSAJE_TIP_COMP'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(229706893298446209)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(132545686664400134)
,p_name=>'P394_ROW_ID_DET'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_imp.id(229706893298446209)
,p_prompt=>'New'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(132546456191400142)
,p_name=>'P394_URL'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_imp.id(228287352098152137)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(202410424808397801)
,p_name=>'P394_FORMA_COBRO'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_imp.id(228287352098152137)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(194844326953616046)
,p_validation_name=>'valida_RECIBO'
,p_validation_sequence=>10
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE ',
'VMONTO NUMBER:=0;',
' begin',
'    	  IF :P394_COD_MONEDA IS NULL  THEN',
'		    	 ',
'			      RETURN(''Debe cargar la moneda del recibo.'' );',
'			      ',
'			   END IF; ',
'',
'BEGIN',
'SELECT  ',
'       TO_NUMBER(c006) Monto ',
'       INTO VMONTO',
'  FROM APEX_COLLECTIONS',
' WHERE COLLECTION_NAME = ''COL_DETA_CCRECIBO''',
'   AND (c014 = ''U'' OR c014 = ''I'' OR c014 IS NULL);',
'',
'END;',
'IF NVL(VMONTO,0)=0 THEN',
'  RETURN(''El total del recibo no puede ser 0.'' );',
'END IF;',
'end;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_when_button_pressed=>wwv_flow_imp.id(116774991048812525)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(116829374965812563)
,p_name=>'DA_V_COD_MODULO'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P394_V_COD_MODULO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(116829835475812564)
,p_event_id=>wwv_flow_imp.id(116829374965812563)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P394_V_COD_MODULO'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(116833818907812565)
,p_name=>'DA_V_COD_CUSTODIO'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P394_V_COD_CUSTODIO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(116834374851812565)
,p_event_id=>wwv_flow_imp.id(116833818907812565)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'null;'
,p_attribute_02=>'P394_V_COD_CUSTODIO'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(116842989717812568)
,p_name=>'DA_V_TIPO_TRAN'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P394_V_TIPO_TRAN'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(116843462918812568)
,p_event_id=>wwv_flow_imp.id(116842989717812568)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P394_V_TIPO_TRAN'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(116843874915812569)
,p_name=>'DA_P_TIP_COMPROBANTE'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P394_P_TIP_COMPROBANTE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(116844376961812569)
,p_event_id=>wwv_flow_imp.id(116843874915812569)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P394_P_TIP_COMPROBANTE'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(116844727985812569)
,p_name=>'DA_V_TIPO_CHEQUE'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P394_V_TIPO_CHEQUE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(116845237190812569)
,p_event_id=>wwv_flow_imp.id(116844727985812569)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P394_V_TIPO_CHEQUE'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(116845601426812569)
,p_name=>'DA_V_SER_RECIBO'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P394_V_SER_RECIBO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(116846154347812569)
,p_event_id=>wwv_flow_imp.id(116845601426812569)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P394_V_SER_RECIBO'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(116846558932812569)
,p_name=>'DA_V_TIPO_RECIBO'
,p_event_sequence=>70
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P394_V_TIPO_RECIBO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(116847012043812570)
,p_event_id=>wwv_flow_imp.id(116846558932812569)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P394_V_TIPO_RECIBO'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(116847496350812570)
,p_name=>'DA_V_SUB_TIPO_TRANS'
,p_event_sequence=>80
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P394_V_SUB_TIPO_TRANS'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(116847904385812570)
,p_event_id=>wwv_flow_imp.id(116847496350812570)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P394_V_SUB_TIPO_TRANS'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(116879369878812583)
,p_name=>'DA_V_TIPO_TALON_FACTURA'
,p_event_sequence=>90
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P394_V_TIPO_TALON_FACTURA'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(116879867145812583)
,p_event_id=>wwv_flow_imp.id(116879369878812583)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P394_V_TIPO_TALON_FACTURA'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(116848327939812570)
,p_name=>'DA_V_COD_CUSTODIO_ENT'
,p_event_sequence=>100
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P394_V_COD_CUSTODIO_ENT'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(116848893636812570)
,p_event_id=>wwv_flow_imp.id(116848327939812570)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P394_V_COD_CUSTODIO_ENT'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(116849225117812570)
,p_name=>'DA_V_GENERA_MD'
,p_event_sequence=>110
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P394_V_GENERA_MD'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(116849735712812571)
,p_event_id=>wwv_flow_imp.id(116849225117812570)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P394_V_GENERA_MD'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(116850187674812571)
,p_name=>'DA_V_TIP_ANTICIPO'
,p_event_sequence=>120
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P394_V_TIP_ANTICIPO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(116850673693812571)
,p_event_id=>wwv_flow_imp.id(116850187674812571)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P394_V_TIP_ANTICIPO'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(116880254850812583)
,p_name=>'DA_V_CLIENTE_CONTADO_CREDITO'
,p_event_sequence=>130
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P394_V_CLIENTE_CONTADO_CREDITO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(116880783579812583)
,p_event_id=>wwv_flow_imp.id(116880254850812583)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P394_V_CLIENTE_CONTADO_CREDITO'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(116834748602812565)
,p_name=>'DA_V_REIMPRIME'
,p_event_sequence=>140
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P394_V_REIMPRIME'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(116835282401812566)
,p_event_id=>wwv_flow_imp.id(116834748602812565)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P394_V_REIMPRIME'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(116835690651812566)
,p_name=>'DA_V_MODIFICA_CAMBIO'
,p_event_sequence=>150
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P394_V_MODIFICA_CAMBIO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(116836113608812566)
,p_event_id=>wwv_flow_imp.id(116835690651812566)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P394_V_MODIFICA_CAMBIO'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(116836590894812566)
,p_name=>'DA_V_PERMITE_ANULAR'
,p_event_sequence=>160
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P394_V_PERMITE_ANULAR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(116837089773812566)
,p_event_id=>wwv_flow_imp.id(116836590894812566)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'null;'
,p_attribute_02=>'P394_V_PERMITE_ANULAR'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(116837489486812566)
,p_name=>'DA_V_CARGA_SUCURSAL'
,p_event_sequence=>170
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P394_V_CARGA_SUCURSAL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(116837911602812567)
,p_event_id=>wwv_flow_imp.id(116837489486812566)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'null;'
,p_attribute_02=>'P394_V_CARGA_SUCURSAL'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(116838463929812567)
,p_event_id=>wwv_flow_imp.id(116837489486812566)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P394_SUCURSAL'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P394_V_CARGA_SUCURSAL'
,p_client_condition_expression=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(116838890569812567)
,p_name=>'DA_V_CARGA_TIP_CAMBIO'
,p_event_sequence=>180
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P394_V_CARGA_TIP_CAMBIO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(116839343029812567)
,p_event_id=>wwv_flow_imp.id(116838890569812567)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'null;'
,p_attribute_02=>'P394_V_CARGA_TIP_CAMBIO'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(116839878667812567)
,p_event_id=>wwv_flow_imp.id(116838890569812567)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P394_TIP_CAMBIO'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P394_V_CARGA_TIP_CAMBIO'
,p_client_condition_expression=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(116840234859812567)
,p_name=>'DA_V_CARGA_SUB_TIPO_TRANS'
,p_event_sequence=>190
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P394_V_CARGA_SUB_TIPO_TRANS'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(116840732897812567)
,p_event_id=>wwv_flow_imp.id(116840234859812567)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'null;'
,p_attribute_02=>'P394_V_CARGA_SUB_TIPO_TRANS'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(116851081967812571)
,p_name=>'DA_V_MODIFICA_FECHA_ANT'
,p_event_sequence=>200
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P394_V_MODIFICA_FECHA_ANT'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(116851549755812571)
,p_event_id=>wwv_flow_imp.id(116851081967812571)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'null;'
,p_attribute_02=>'P394_V_MODIFICA_FECHA_ANT'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(116841138078812568)
,p_name=>'DA_V_CAMBIA_FECHA'
,p_event_sequence=>210
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P394_V_CAMBIA_FECHA'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(116841693692812568)
,p_event_id=>wwv_flow_imp.id(116841138078812568)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'null;'
,p_attribute_02=>'P394_V_CAMBIA_FECHA'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(116842054056812568)
,p_name=>'DA_V_CARGA_SENIA'
,p_event_sequence=>220
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P394_V_CARGA_SENIA'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(116842516382812568)
,p_event_id=>wwv_flow_imp.id(116842054056812568)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'null;'
,p_attribute_02=>'P394_V_CARGA_SENIA'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(116874883748812581)
,p_name=>'DA_V_NRO_INICIAL'
,p_event_sequence=>230
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P394_V_NRO_INICIAL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(116875339049812581)
,p_event_id=>wwv_flow_imp.id(116874883748812581)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'null;'
,p_attribute_02=>'P394_V_NRO_INICIAL'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(116875729255812581)
,p_name=>'DA_V_NRO_FINAL'
,p_event_sequence=>240
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P394_V_NRO_FINAL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(116876270476812582)
,p_event_id=>wwv_flow_imp.id(116875729255812581)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P394_V_NRO_FINAL'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(116876617498812582)
,p_name=>'DA_V_SERIE'
,p_event_sequence=>250
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P394_V_SERIE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(116877110232812582)
,p_event_id=>wwv_flow_imp.id(116876617498812582)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P394_V_SERIE'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(116830243577812564)
,p_name=>'DA_SER_RECIBO'
,p_event_sequence=>260
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P394_SER_RECIBO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(116830750751812564)
,p_event_id=>wwv_flow_imp.id(116830243577812564)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P394_SER_RECIBO'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(116831150209812564)
,p_name=>'DA_NRO_RECIBO'
,p_event_sequence=>270
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P394_NRO_RECIBO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(116831612148812564)
,p_event_id=>wwv_flow_imp.id(116831150209812564)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'null;'
,p_attribute_02=>'P394_NRO_RECIBO'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(116878476455812582)
,p_name=>'DA_TRANSACCION'
,p_event_sequence=>280
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P394_TRANSACCION'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(116878927717812583)
,p_event_id=>wwv_flow_imp.id(116878476455812582)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'null;'
,p_attribute_02=>'P394_TRANSACCION'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(116856171508812574)
,p_name=>'DA_MOSTRAR_REPORTE'
,p_event_sequence=>310
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P394_MOSTRAR_REPORTE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(116856651412812574)
,p_event_id=>wwv_flow_imp.id(116856171508812574)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'null;'
,p_attribute_02=>'P394_MOSTRAR_REPORTE'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(116859996609812575)
,p_name=>'DA_ROW_ID_SELECT'
,p_event_sequence=>340
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P394_ROW_ID_SELECT'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(116860453041812576)
,p_event_id=>wwv_flow_imp.id(116859996609812575)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'null;'
,p_attribute_02=>'P394_ROW_ID_SELECT'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(116862625228812576)
,p_name=>'DA_SER_SELEC'
,p_event_sequence=>370
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P394_SER_SELEC'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(116863103177812576)
,p_event_id=>wwv_flow_imp.id(116862625228812576)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'null;'
,p_attribute_02=>'P394_SER_SELEC'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(116863531334812577)
,p_name=>'DA_TIP_SELEC'
,p_event_sequence=>380
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P394_TIP_SELEC'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(116864051632812577)
,p_event_id=>wwv_flow_imp.id(116863531334812577)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'null;'
,p_attribute_02=>'P394_TIP_SELEC'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(116864490512812577)
,p_name=>'DA_NRO_SELEC'
,p_event_sequence=>390
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P394_NRO_SELEC'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(116864967655812577)
,p_event_id=>wwv_flow_imp.id(116864490512812577)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'null;'
,p_attribute_02=>'P394_NRO_SELEC'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(116860846233812576)
,p_name=>'DA_CLIENTE'
,p_event_sequence=>400
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P394_CLIENTE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(116861367313812576)
,p_event_id=>wwv_flow_imp.id(116860846233812576)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'null;'
,p_attribute_02=>'P394_CLIENTE'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(116512854799245016)
,p_event_id=>wwv_flow_imp.id(116860846233812576)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    CCRECIBO.VALIDATE_COD_CLIENTE(pcod_cliente           => :P394_CLIENTE,',
'                                  pcod_cliente_cont_cred => :P394_V_CLIENTE_CONTADO_CREDITO,',
'                                  pcod_empresa           => :P_COD_EMPRESA,',
'                                  pcod_cobrador          => :P394_COBRADOR,',
'                                  pmensaje               => :P394_MENSAJE_CLIENTE,',
'                                  pcod_cobrador_out      => :P394_COBRADOR);',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_CLIENTE ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P394_CLIENTE,P394_V_CLIENTE_CONTADO_CREDITO,P_COD_EMPRESA,P394_COBRADOR'
,p_attribute_03=>'P394_MENSAJE_CLIENTE,P394_COBRADOR'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P394_CLIENTE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(116865340176812577)
,p_name=>'DA_NRO_EM_SELECT'
,p_event_sequence=>410
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P394_NRO_EM_SELEC'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(116865811556812577)
,p_event_id=>wwv_flow_imp.id(116865340176812577)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'null;'
,p_attribute_02=>'P394_NRO_EM_SELEC'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(116866209976812578)
,p_name=>'DA_NRO_SELECT'
,p_event_sequence=>420
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P394_NRO_SELECT'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(116866757195812578)
,p_event_id=>wwv_flow_imp.id(116866209976812578)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'null;'
,p_attribute_02=>'P394_NRO_SELECT'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(116868093848812578)
,p_name=>'DA_DECIMALES'
,p_event_sequence=>450
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P394_DECIMALES'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(116868532515812578)
,p_event_id=>wwv_flow_imp.id(116868093848812578)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P394_DECIMALES'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(116867151349812578)
,p_name=>'DA_COD_MONEDA'
,p_event_sequence=>460
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P394_COD_MONEDA'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(116867697583812578)
,p_event_id=>wwv_flow_imp.id(116867151349812578)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'select TIPO_CAMBIO_DIA, decimales',
'    into :p394_tip_cambio, :p394_decimales',
'    from monedas',
'   where cod_moneda = :p394_cod_moneda;',
'exception when others then null;',
'end;'))
,p_attribute_02=>'P394_COD_MONEDA'
,p_attribute_03=>'P394_TIP_CAMBIO,P394_DECIMALES'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(116828414545812562)
,p_name=>'DA_COD_CUSTODIO'
,p_event_sequence=>470
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P394_COD_CUSTODIO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(116828908839812563)
,p_event_id=>wwv_flow_imp.id(116828414545812562)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P394_COD_CUSTODIO'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(116851951383812571)
,p_name=>'DA_SEQ_ID_BORRAR'
,p_event_sequence=>480
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P394_DELETE_DATA_DET'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(208559592169354634)
,p_event_id=>wwv_flow_imp.id(116851951383812571)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
' ',
'    	  IF :P394_CONTROL_ORIGEN=1  THEN',
'		    	 ',
'			            RAISE_APPLICATION_ERROR(-20010,''No se puede eliminar el detalle.'');',
'			   END IF; ',
'',
' '))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(116852423823812572)
,p_event_id=>wwv_flow_imp.id(116851951383812571)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P394_DELETE_DATA_DET'
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
 p_id=>wwv_flow_imp.id(116852920878812572)
,p_event_id=>wwv_flow_imp.id(116851951383812571)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    IF :P394_CONTROL_ORIGEN = 1 THEN',
'        :P394_MENSAJE_BORRADO := ''No puede eliminar el detalle.'';',
'    ELSE',
'        :P394_MENSAJE_BORRADO := NULL;',
'',
'        CCRECIBO.DELETE_COL(pseq_id   => :P394_DELETE_DATA_DET, ',
'                            p_col     => ''COL_DETA_CCRECIBO'',',
'                            patributo => 14,',
'p_ser_recibo => :P394_SER_RECIBO,',
'                         p_nro_recibo => :P394_NRO_RECIBO);',
'                          ',
'    END IF;                    ',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_DELETE_DATA_DET ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P394_DELETE_DATA_DET,P394_CONTROL_ORIGEN'
,p_attribute_03=>'P394_MENSAJE_BORRADO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(117368054624768808)
,p_event_id=>wwv_flow_imp.id(116851951383812571)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(228933973341878037)
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P394_MENSAJE_BORRADO'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(116861722041812576)
,p_name=>'DA_COD_MONE_SELECT'
,p_event_sequence=>490
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P394_COD_MONE_SELECT'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(116862238502812576)
,p_event_id=>wwv_flow_imp.id(116861722041812576)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P394_COD_MONE_SELECT'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(116868920432812579)
,p_name=>'DA_TIP_TRAN_SELECT'
,p_event_sequence=>500
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P394_TIP_TRAN_SELECT'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(116869447183812579)
,p_event_id=>wwv_flow_imp.id(116868920432812579)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P394_TIP_TRAN_SELECT'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(116881146459812583)
,p_name=>'DA_ANULADO'
,p_event_sequence=>520
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P394_ANULADO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(118478104411648219)
,p_event_id=>wwv_flow_imp.id(116881146459812583)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    IF :P394_CONTROL_ORIGEN = 0 THEN',
'        :P394_CONTROL_ANUL := 0;',
'    ELSE',
'        :P394_CONTROL_ANUL := 1;',
'    END IF;',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_ANULADO ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P394_CONTROL_ORIGEN'
,p_attribute_03=>'P394_CONTROL_ANUL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(116881680560812584)
,p_event_id=>wwv_flow_imp.id(116881146459812583)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(231266344345595828)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P394_CONTROL_ANUL'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(118478343666648221)
,p_event_id=>wwv_flow_imp.id(116881146459812583)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'Antes de anular el documento debe actualizar los cambios realizados.'
,p_attribute_02=>'Aviso'
,p_attribute_03=>'warning'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P394_CONTROL_ANUL'
,p_client_condition_expression=>'0'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(116882066049812584)
,p_name=>'DA_BTN_CANCELAR'
,p_event_sequence=>530
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(116825624417812559)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(116883026340812584)
,p_event_id=>wwv_flow_imp.id(116882066049812584)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P394_ANULADO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(116882597304812584)
,p_event_id=>wwv_flow_imp.id(116882066049812584)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(231266344345595828)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(116877597492812582)
,p_name=>'DA_BTN_ACEPTAR'
,p_event_sequence=>540
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(116825270745812559)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(116878036275812582)
,p_event_id=>wwv_flow_imp.id(116877597492812582)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'BEGIN',
'  update CC_RECIBOS',
'  SET cod_motivo_anu = :P394_MOTIVO_ANULA,',
'  cod_usuario_anu = :P_COD_USUARIO,',
'  fec_anulacion = sysdate,',
'  anulado = ''S''',
'  where cod_Empresa = :P_COD_EMPRESA',
'  AND nro_recibo = :P394_NRO_RECIBO',
'  AND ser_recibo = :P394_SER_RECIBO',
'  AND cod_sucursal = :P394_SUCURSAL;',
'  :P394_MOTIVO_ANUL:=:P394_MOTIVO_ANULA;',
'END;'))
,p_attribute_02=>'P394_MOTIVO_ANULA,P394_NRO_RECIBO,P394_SUCURSAL'
,p_attribute_03=>'P394_MOTIVO_ANUL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P394_MOTIVO_ANULA'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(208559111656354630)
,p_event_id=>wwv_flow_imp.id(116877597492812582)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(231266344345595828)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(116871259119812579)
,p_name=>'DA_BT_GUARDAR_CAMBIOS'
,p_event_sequence=>550
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(116774991048812525)
,p_condition_element=>'P394_NRO_RECIBO'
,p_triggering_condition_type=>'NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(194844444045616047)
,p_event_id=>wwv_flow_imp.id(116871259119812579)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE ',
'VMONTO NUMBER:=0;',
' begin',
'    	  IF :P394_COD_MONEDA IS NULL  THEN',
'		    	 ',
'			            RAISE_APPLICATION_ERROR(-20010,''Debe cargar la moneda del recibo.'');',
'			   END IF; ',
'',
'BEGIN',
'SELECT  ',
'       sum(TO_NUMBER(c006)) Monto ',
'       INTO VMONTO',
'  FROM APEX_COLLECTIONS',
' WHERE COLLECTION_NAME = ''COL_DETA_CCRECIBO''',
'   AND (c014 = ''U'' OR c014 = ''I'' OR c014 IS NULL);',
'exception when others then ',
'VMONTO:=0;',
'END;',
'IF NVL(VMONTO,0)=0 THEN',
'  ',
'        RAISE_APPLICATION_ERROR(-20010,''El total del recibo no puede ser 0.'');',
'END IF;',
'end;'))
,p_attribute_02=>'P394_SER_RECIBO,P_COD_EMPRESA,P394_V_TIPO_RECIBO,P394_V_NRO_INICIAL,P394_V_NRO_FINAL,P394_NRO_RECIBO'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(116871773099812579)
,p_event_id=>wwv_flow_imp.id(116871259119812579)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'VERROR BOOLEAN;',
'BEGIN',
'    CCRECIBO.VERIFICA_RECIBO(pser_recibo      => :P394_SER_RECIBO,',
'                             pcod_empresa     => :P_COD_EMPRESA,',
'                             ptipo_recibo     => :P394_V_TIPO_RECIBO,',
'                             pnro_inicial     => :P394_V_NRO_INICIAL,',
'                             pnro_final       => :P394_V_NRO_FINAL,',
'                             pnro_recibo      => :P394_NRO_RECIBO,',
'                             pnro_inicial_out => :P394_V_NRO_INICIAL,',
'                             pnro_final_out   => :P394_V_NRO_FINAL,',
'                             perror           => VERROR,',
'                             pmensaje         => :P394_MENSAJE_GUARDAR_CAMBIOS);',
'',
'    IF VERROR = TRUE THEN',
'        :P394_CONTROL_GUARDADO := 0;',
'        :P394_MENSAJE_GUARDAR_CAMBIOS_1 := ''No se ha insertado el registro actual.'';',
'    ELSE',
'        :P394_CONTROL_GUARDADO := 1;',
'',
'        FOR CC IN(SELECT seq_id SEQ_ID',
'                    FROM APEX_COLLECTIONS',
'                   WHERE COLLECTION_NAME = ''COL_DETA_CCRECIBO''',
'                     AND c004 = ''REC'')',
'        LOOP',
'            APEX_COLLECTION.UPDATE_MEMBER_ATTRIBUTE(p_collection_name => ''COL_DETA_CCRECIBO'',',
'                                                    p_seq             => CC.SEQ_ID,',
'                                                    p_attr_number     => 2,',
'                                                    p_attr_value      => :P394_NRO_RECIBO);',
'        END LOOP;',
'    END IF;',
'',
'',
'',
'',
'',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_BT_GUARDAR_CAMBIOS ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P394_SER_RECIBO,P_COD_EMPRESA,P394_V_TIPO_RECIBO,P394_V_NRO_INICIAL,P394_V_NRO_FINAL,P394_NRO_RECIBO'
,p_attribute_03=>'P394_NRO_RECIBO,P394_V_NRO_INICIAL,P394_V_NRO_FINAL,P394_MENSAJE_GUARDAR_CAMBIOS,P394_MENSAJE_GUARDAR_CAMBIOS_1,P394_CONTROL_GUARDADO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(132546298712400140)
,p_event_id=>wwv_flow_imp.id(116871259119812579)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    CCRECIBO.GUARDAR_DATOS(pcod_sucursal        => :P394_SUCURSAL,',
'                           pser_recibo          => :P394_SER_RECIBO,',
'                           pnro_recibo          => :P394_NRO_RECIBO,',
'                           pfec_recibo          => :P394_FECHA_RECIBO,',
'                           pcod_cliente         => :P394_CLIENTE,',
'                           pcod_cobrador        => :P394_COBRADOR,',
'                           pcod_moneda          => :P394_COD_MONEDA,',
'                           ptip_cambio          => :P394_TIP_CAMBIO,',
'                           pcod_usuario         => :P394_USUARIO,',
'                           panulado             => :P394_ANULADO,',
'                           pfec_anulacion       => :P394_FEC_ANUL,',
'                           pestado              => :P394_ESTADO,',
'                           pcod_custodio        => :P394_CUSTODIO,',
'                           preferencia          => :P394_REFENCIA,',
'                           pcod_empresa         => :P_COD_EMPRESA,',
'                           pnro_mov_caj         => :P394_MOV_DE_CAJA,',
'                           ptip_recibo          => :P394_TIP_RECIBO,',
'                           ptip_comprobante_ref => :P394_TIP_COMPROBANTE_REF,',
'                           pser_comprobante_ref => :P394_SER_COMPROBANTE_REF,',
'                           pnro_comprobante_ref => :P394_NRO_COMPROBANTE_REF,',
'                           pcod_usuario_anu     => :P394_USUARIO_ANUL,',
'                           pcod_motivo_anu      => :P394_MOTIVO_ANUL,',
'                           pcomentario_recibo   => :P394_COMENTARIO);',
'',
'    declare ',
'    vexiste varchar2(1) ;',
'    vtipcaj varchar2(3) ; ',
'    vsercaj varchar2(3) ;',
'    vnrocaj number(8) ;',
'    begin',
'        begin',
'            select ''S''',
'              into vexiste',
'              from cc_recibos c',
'             where c.cod_empresa =  :P_COD_EMPRESA',
'               and c.tip_recibo = :P394_TIP_RECIBO',
'               and c.ser_recibo = :P394_SER_RECIBO',
'               and c.nro_recibo = :P394_NRO_RECIBO',
'               and nvl(c.anulado,''N'') <> ''S'';',
'        exception',
'            when others then',
'            vexiste := ''N'';',
'        end ;',
'',
'        if nvl( vexiste,''N'') = ''S'' then   ',
'             begin',
'               select m.tip_mov_caj, m.ser_mov_caj, m.nro_mov_caj',
'                 into vtipcaj, vsercaj, vnrocaj',
'                 from cc_movimientos_comp m, cc_movimientos_cajas c',
'                where m.cod_empresa = :P_COD_EMPRESA',
'                  and m.tipo_comprobante = :P394_TIP_RECIBO',
'                  and m.ser_comprobante = :P394_SER_RECIBO',
'                  and m.nro_comprobante = :P394_NRO_RECIBO ',
'                  and m.cod_empresa = c.cod_empresa',
'                  and m.tip_mov_caj = c.tip_mov_caj',
'                  and m.ser_mov_caj = c.ser_mov_caj',
'                  and m.nro_mov_caj = c.nro_mov_caj;',
'             exception  ',
'                 when others then  ',
'                 vnrocaj := null ;',
'             end ;',
'             ',
'             if vnrocaj is not null then',
'',
'                 :P394_CONTROL_BRUNCH := 1;',
'                 :P394_TIP_MOV_CAJ_AUX := vtipcaj;',
'                 :P394_SER_MOV_CAJ_AUX := vsercaj;',
'                 :P394_NRO_MOV_CAJ_AUX := vnrocaj;',
'             else ',
'                                                   ',
'                   if :P394_TIP_COMPROBANTE_REF = ''ORT'' then',
'                  		:P394_CONTROL_BRUNCH := 2;',
'                   end if;',
'                   ',
'                   :P394_CONTROL_BRUNCH := 3;',
'                                  ',
'             end if;',
'             ',
'           end if;',
'        end;',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    RAISE_APPLICATION_ERROR(-20000, ''PR_SAVE. ''||sqlerrm);',
'     APEX_DEBUG.ERROR(''PR_SAVE ''||SQLERRM);',
'    ',
'END;'))
,p_attribute_02=>'P394_SUCURSAL,P394_SER_RECIBO,P394_NRO_RECIBO,P394_FECHA_RECIBO,P394_CLIENTE,P394_COBRADOR,P394_COD_MONEDA,P394_TIP_CAMBIO,P394_USUARIO,P394_ANULADO,P394_FEC_ANUL,P394_ESTADO,P394_CUSTODIO,P394_REFENCIA,P_COD_EMPRESA,P394_MOV_DE_CAJA,P394_TIP_RECIBO,'
||'P394_TIP_COMPROBANTE_REF,P394_SER_COMPROBANTE_REF,P394_NRO_COMPROBANTE_REF,P394_USUARIO_ANUL,P394_MOTIVO_ANUL,P394_COMENTARIO'
,p_attribute_03=>'P394_CONTROL_BRUNCH,P394_TIP_MOV_CAJ_AUX,P394_SER_MOV_CAJ_AUX,P394_NRO_MOV_CAJ_AUX'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P394_CONTROL_GUARDADO'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(202410875836397805)
,p_event_id=>wwv_flow_imp.id(116871259119812579)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
' ',
'IF :P394_SER_RECIBO IS NOT NULL AND :P394_NRO_RECIBO IS NOT NULL   THEN',
'    begin',
'        CCRECIBO.col_mov_caj(PI_COD_EMPRESA            => :P_COD_EMPRESA,',
'                             PI_SER_COMPROBANTE        => :P394_SER_RECIBO,',
'                             PI_NRO_COMPROBANTE        => TO_NUMBER(:P394_NRO_RECIBO),',
'                             PI_TIP_COMPROBANTE        => ''REC'',',
'                             PI_COD_SUCURSAL           => :P_COD_SUCURSAL,',
'                             PI_COD_CLIENTE            => :P394_CLIENTE,',
'                             PI_COD_CUSTODIO           => :P394_CUSTODIO,',
'                             PI_COD_CUSTODIO_ENT       => :P394_CUSTODIO,',
'                             PI_GENERA_MD              => :P394_V_GENERA_MD,',
'                             PI_FEC_COMPROBANTE        => TO_DATE(:P394_FECHA_RECIBO, ''DD/MM/YYYY''),',
'                             PI_TIP_COMPROBANTE_REF    => NULL,',
'                             PI_SER_COMPROBANTE_REF    => NULL,',
'                             PI_NRO_COMPROBANTE_REF    =>NULL,',
'                             pi_llamar                 =>  :P394_FORMA_COBRO);',
'--                             :P394_URL:=''95'';',
'/*BEGIN',
'     ',
'    SELECT APEX_PAGE.GET_URL (p_page => 95,',
'				              p_items  => ''P95_P_TIP_MOV_CAJ,P95_P_SER_MOV_CAJ,P95_P_NRO_MOV_CAJ'', ',
'				              p_values => ''''||:P394_TIP_MOV_CAJ_AUX||'',''||:P394_SER_MOV_CAJ_AUX||'',''||:P394_NRO_MOV_CAJ_AUX||'''') f_url_1',
'	INTO :P394_URL',
'	FROM DUAL;',
'',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(''DA_TIP_MOV_CAJ_AUX ''||SQLERRM);',
'END;*/',
'             exception when others then',
'          null;--    RAISE_APPLICATION_ERROR(-20000, ''error col_mov_caj. ''||sqlerrm);',
'              end ;',
'                               ',
'END IF;',
''))
,p_attribute_02=>'P394_SUCURSAL,P394_SER_RECIBO,P394_NRO_RECIBO,P394_FECHA_RECIBO,P394_CLIENTE,P394_COBRADOR,P394_COD_MONEDA,P394_TIP_CAMBIO,P394_USUARIO,P394_ANULADO,P394_FEC_ANUL,P394_ESTADO,P394_CUSTODIO,P394_REFENCIA,P_COD_EMPRESA,P394_MOV_DE_CAJA,P394_TIP_RECIBO,'
||'P394_TIP_COMPROBANTE_REF,P394_SER_COMPROBANTE_REF,P394_NRO_COMPROBANTE_REF,P394_USUARIO_ANUL,P394_MOTIVO_ANUL,P394_COMENTARIO'
,p_attribute_03=>'P394_FORMA_COBRO,P394_URL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P394_CONTROL_GUARDADO'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(208556266989354601)
,p_event_id=>wwv_flow_imp.id(116871259119812579)
,p_event_result=>'TRUE'
,p_action_sequence=>90
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var url = apex.item("P394_URL").getValue();',
'apex.navigation.redirect (url);',
' '))
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(116869843876812579)
,p_name=>'DA_CUSTODIO'
,p_event_sequence=>570
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P394_CUSTODIO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(116870363387812579)
,p_event_id=>wwv_flow_imp.id(116869843876812579)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P394_CUSTODIO'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(116870898103812579)
,p_event_id=>wwv_flow_imp.id(116869843876812579)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    IF :P394_CUSTODIO IN(''221'',''225'') THEN',
'        :P394_COBRADOR := ''75'';',
'    ELSIF :P394_CUSTODIO IN(''203'',''227'') THEN',
'        :P394_COBRADOR := ''74'';',
'    ELSIF :P394_CUSTODIO IN(''289'') THEN',
'        :P394_COBRADOR := ''81'';',
'    END IF;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_CUSTODIO ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P394_CUSTODIO'
,p_attribute_03=>'P394_COBRADOR'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(116873047577812580)
,p_name=>'DA_EDIT_DATA_DET'
,p_event_sequence=>580
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P394_EDIT_DATA_DET'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(208559678762354635)
,p_event_id=>wwv_flow_imp.id(116873047577812580)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
' ',
'    	  IF :P394_CONTROL_ORIGEN=1  THEN',
'		    	 ',
'			            RAISE_APPLICATION_ERROR(-20010,''No se puede editarel detalle.'');',
'			   END IF; ',
'',
' '))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(116873568614812580)
,p_event_id=>wwv_flow_imp.id(116873047577812580)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P394_EDIT_DATA_DET'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(117368411349768812)
,p_event_id=>wwv_flow_imp.id(116873047577812580)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare vmonto number;',
'BEGIN',
'    ',
'    IF :P394_CONTROL_ORIGEN = 1 THEN',
'        :P394_MENSAJE_EDICION := ''No se puede editar el detalle.'';',
'    ELSE',
'        :P394_MENSAJE_EDICION := NULL;',
'',
'        CCRECIBO.GET_EDIT_DATA(pedit_data           => :P394_EDIT_DATA_DET,',
'                               ptrans               => :P394_TIPO_TRANSAC,',
'                               ptip_comprobante_aux => :P394_TIP_FACTURA_REF_ADD_AUX,',
'                               pser_comprobante     => :P394_SER_FACTURA_REF_ADD,',
'                               pnro_comprobante     => :P394_NRO_FACTURA_REF_ADD,',
'                               ptip_nro_comprobante => :P394_TIP_FACTURA_REF_ADD,',
'                               pnro_cuota           => :P394_NRO_CUOTA_ADD,',
'                               pmonto_cuota         => :P394_MONTO_CUOTA_ADD,',
'                               pimporte             => :P394_IMPORTE_ADD,',
'                               ptip_cambio          => :P394_TIP_CAMBIO_ADD,',
'                               pfec_vencimiento     => :P394_FEC_VENCIMIENTO_ADD,',
'                               pcod_moneda =>:P394_COD_MONEDA_CUOTA_ADD  );',
'                               :P394_ROW_ID_DET:=:P394_TIP_FACTURA_REF_ADD;',
'    END IF;',
'    ',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_EDIT_DATA_DET ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P394_EDIT_DATA_DET,P394_CONTROL_ORIGEN'
,p_attribute_03=>'P394_TIPO_TRANSAC,P394_TIP_FACTURA_REF_ADD,P394_SER_FACTURA_REF_ADD,P394_NRO_FACTURA_REF_ADD,P394_NRO_CUOTA_ADD,P394_FEC_VENCIMIENTO_ADD,P394_COD_MONEDA_CUOTA_ADD,P394_TIP_CAMBIO_ADD,P394_MONTO_CUOTA_ADD,P394_IMPORTE_ADD,P394_TIP_FACTURA_REF_ADD_AUX,'
||'P394_MENSAJE_EDICION,P394_NRO_CUOTA_ADD,P394_ROW_ID_DET'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(117368560752768813)
,p_event_id=>wwv_flow_imp.id(116873047577812580)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(229706893298446209)
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P394_MENSAJE_EDICION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(116873907895812580)
,p_name=>'DA_ABRIR_MODAL'
,p_event_sequence=>590
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(116804640761812539)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(202412854624397825)
,p_event_id=>wwv_flow_imp.id(116873907895812580)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P394_COD_MONEDA IS NULL THEN',
' RAISE_APPLICATION_ERROR(-20000, ''Codigo de Moneda no pueda quedar Nulo. ''||sqlerrm);',
'END IF;',
'if :P394_COBRADOR IS NULL THEN',
' RAISE_APPLICATION_ERROR(-20000, ''Cobrador no puede quedar nulo. ''||sqlerrm);',
'END IF;',
'if :P394_COD_CUSTODIO IS NULL THEN',
' RAISE_APPLICATION_ERROR(-20000, ''Codigo de Custodio no puede ser nulo. ''||sqlerrm);',
'END IF;'))
,p_attribute_02=>'P394_COBRADOR,P394_COD_MONEDA,P394_MONEDA,P394_COD_CUSTODIO'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(116515393693245041)
,p_event_id=>wwv_flow_imp.id(116873907895812580)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P394_TIPO_TRANSAC,P394_TIP_FACTURA_REF_ADD,P394_SER_FACTURA_REF_ADD,P394_NRO_FACTURA_REF_ADD,P394_NRO_CUOTA_ADD,P394_FEC_VENCIMIENTO_ADD,P394_COD_MONEDA_CUOTA_ADD,P394_TIP_CAMBIO_ADD,P394_MONTO_CUOTA_ADD,P394_IMPORTE_ADD,P394_TIP_FACTURA_REF_ADD_AUX,'
||'P394_EDIT_DATA_DET,P394_MENSAJE_MONTO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(116874430609812581)
,p_event_id=>wwv_flow_imp.id(116873907895812580)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(229706893298446209)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(116513017137245018)
,p_name=>'DA_MENSAJE_CLIENTE'
,p_event_sequence=>600
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P394_MENSAJE_CLIENTE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(116513137791245019)
,p_event_id=>wwv_flow_imp.id(116513017137245018)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P394_MENSAJE_CLIENTE'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(116513283992245020)
,p_event_id=>wwv_flow_imp.id(116513017137245018)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P394_MENSAJE_CLIENTE.'
,p_attribute_02=>'Aviso'
,p_attribute_03=>'warning'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P394_MENSAJE_CLIENTE'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(132545939209400137)
,p_event_id=>wwv_flow_imp.id(116513017137245018)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P394_MENSAJE_CLIENTE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(116514197694245029)
,p_name=>'DA_TIP_FACTURA_REF_ADD_2'
,p_event_sequence=>610
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P394_NRO_CUOTA_ADD'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(116514274609245030)
,p_event_id=>wwv_flow_imp.id(116514197694245029)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P394_TIP_FACTURA_REF_ADD,P394_NRO_CUOTA_ADD'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(116514469652245032)
,p_event_id=>wwv_flow_imp.id(116514197694245029)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'vmonto number;',
'BEGIN',
'    IF :P394_TIP_FACTURA_REF_ADD <> ''REC'' THEN',
'    CCRECIBO.GET_INGO_TIP_COMPROBANTE(pnro_comprobante_in  => :P394_TIP_FACTURA_REF_ADD,',
'                                      pcod_empresa         => :P_COD_EMPRESA,',
'                                      pcod_cliente         => :P394_CLIENTE,',
'                                      pcod_custodio        => :P394_CUSTODIO,',
'                                      pcod_usuario         => :P_COD_USUARIO,',
'                                      pnro_cuota           => :P394_NRO_CUOTA_ADD,',
'                                      ptip_comprobante_aux => :P394_TIP_FACTURA_REF_ADD_AUX,',
'                                      pser_comprobante     => :P394_SER_FACTURA_REF_ADD,',
'                                      pnro_comprobante     => :P394_NRO_FACTURA_REF_ADD,                                      ',
'                                      pfec_vencimiento     => :P394_FEC_VENCIMIENTO_ADD,',
'                                      pcod_moneda          => :P394_COD_MONEDA_CUOTA_ADD,',
'                                      ptip_cambio          => :P394_TIP_CAMBIO_ADD,',
'                                      pmonto_cuota         => :P394_MONTO_CUOTA_ADD,',
'                                      pimporte             =>  :P394_IMPORTE_ADD);',
'    END IF;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_TIP_FACTURA_REF_ADD ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P394_TIP_FACTURA_REF_ADD,P_COD_EMPRESA,P394_CLIENTE,P394_CUSTODIO,P_COD_USUARIO,P394_NRO_CUOTA_ADD'
,p_attribute_03=>'P394_TIP_FACTURA_REF_ADD_AUX,P394_SER_FACTURA_REF_ADD,P394_NRO_FACTURA_REF_ADD,P394_FEC_VENCIMIENTO_ADD,P394_COD_MONEDA_CUOTA_ADD,P394_TIP_CAMBIO_ADD,P394_MONTO_CUOTA_ADD,,P394_IMPORTE_ADD'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P394_NRO_CUOTA_ADD'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(202412723408397824)
,p_event_id=>wwv_flow_imp.id(116514197694245029)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'VMENSAJE VARCHAR2(4000);',
'VERROR EXCEPTION;',
'VSALDO NUMBER;',
'BEGIN',
':P394_MENSAJE_MONTO := NULL;    ',
' ',
' IF :P394_COD_MONEDA_CUOTA_ADD <> :P394_COD_MONEDA THEN',
'        :P394_IMPORTE_ADD := NVL(to_number(:P394_MONTO_CUOTA_ADD),0) * NVL(to_number(:P394_TIP_CAMBIO_ADD),1) / NVL(to_number(:P394_TIP_CAMBIO),1);',
'   ',
'    ELSE ',
'        :P394_IMPORTE_ADD := NVL(:P394_MONTO_CUOTA_ADD,0);',
'    END IF;',
'           APEX_DEBUG.ERROR(''DA_TIP_FACTURA_REF_ADD_2 entro ''||:P394_IMPORTE_ADD);',
'SELECT  ',
'       ',
'      sum( TO_NUMBER(c006)) Monto ,',
'       sum(TO_NUMBER(c011)) Importe ',
'       into :P394_TOTAL,:P394_TOTAL',
'  FROM APEX_COLLECTIONS',
' WHERE COLLECTION_NAME = ''COL_DETA_CCRECIBO''',
'   AND (c014 = ''U'' OR c014 = ''I'' OR c014 IS NULL);',
'',
' ',
'',
'EXCEPTION',
'    WHEN VERROR THEN',
'    :P394_MENSAJE_MONTO := VMENSAJE;',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_MONTO_CUOTA_ADD coll ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P394_COD_MONEDA_CUOTA_ADD,P394_COD_MONEDA,P394_MONTO_CUOTA_ADD,P394_TIP_CAMBIO_ADD,P394_TIP_CAMBIO'
,p_attribute_03=>'P394_TOTAL,P394_IMPORTE_ADD'
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
 p_id=>wwv_flow_imp.id(116514537325245033)
,p_name=>'DA_AGREGAR_EDITAR_DET'
,p_event_sequence=>620
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(116764891803812506)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(116514684677245034)
,p_event_id=>wwv_flow_imp.id(116514537325245033)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P394_TIP_FACTURA_REF_ADD,P394_SER_FACTURA_REF_ADD,P394_NRO_FACTURA_REF_ADD,P394_NRO_CUOTA_ADD,P394_FEC_VENCIMIENTO_ADD,P394_COD_MONEDA_CUOTA_ADD,P394_TIP_CAMBIO_ADD,P394_MONTO_CUOTA_ADD,P394_IMPORTE_ADD,P394_TIP_FACTURA_REF_ADD_AUX'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(116514754143245035)
,p_event_id=>wwv_flow_imp.id(116514537325245033)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
' IF :P394_COD_MONEDA_CUOTA_ADD <> :P394_COD_MONEDA THEN',
'                :P394_IMPORTE_ADD := round(NVL(to_number(:P394_MONTO_CUOTA_ADD),0) * NVL(to_number(:P394_TIP_CAMBIO_ADD),1) / NVL(to_number(:P394_TIP_CAMBIO),1),2);',
'    ELSE         ',
'         :P394_IMPORTE_ADD := to_number(NVL(:P394_MONTO_CUOTA_ADD,0));',
'    END IF;  ',
'',
'    CCRECIBO.ADD_COL_DET(ptipo_transac      => :P394_V_TIPO_TRAN,',
'                         ptip_comprobante   => :P394_TIP_FACTURA_REF_ADD_AUX,',
'                         pser_comprobante   => :P394_SER_FACTURA_REF_ADD,',
'                         pnro_comprobante   => :P394_NRO_FACTURA_REF_ADD,',
'                         pnro_cuota         => :P394_NRO_CUOTA_ADD,',
'                         pcod_moneda_cuota  => NVL(:P394_COD_MONEDA_CUOTA_ADD,:P394_COD_MONEDA),',
'                         pmonto_cuota       => :P394_MONTO_CUOTA_ADD,',
'                         pimporte           => NVL(:P394_IMPORTE_ADD,:P394_MONTO_CUOTA_ADD),',
'                         pfec_vencimiento   => :P394_FEC_VENCIMIENTO_ADD,',
'                         pcod_empresa       => :P_COD_EMPRESA,',
'                         ptip_cambio        => NVL(:P394_TIP_CAMBIO_ADD,:P394_TIP_CAMBIO),',
'                         pcod_modulo        => :P394_V_COD_MODULO,',
'                         psubtipo_trans     => nvl(:P394_TIPO_TRANSAC,''1''),',
'                         ptip_comprobante_2 => :P394_TIP_FACTURA_REF_ADD,',
'                         p_cod_sucursal => :P394_SUCURSAL,',
'                         p_ser_recibo => :P394_SER_RECIBO,',
'                         p_nro_recibo => :P394_NRO_RECIBO',
'                         );',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_AGREGAR_EDITAR_DET ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P394_TIPO_TRANSAC,P394_TIP_FACTURA_REF_ADD_AUX,P394_SER_FACTURA_REF_ADD,P394_NRO_FACTURA_REF_ADD,P394_NRO_CUOTA_ADD,P394_FEC_VENCIMIENTO_ADD,P394_COD_MONEDA_CUOTA_ADD,P394_TIP_CAMBIO_ADD,P394_MONTO_CUOTA_ADD,P394_IMPORTE_ADD,P394_V_COD_MODULO,P_COD_E'
||'MPRESA,P394_V_TIPO_TRAN,P394_TIP_FACTURA_REF_ADD,P394_SUCURSAL,P394_SER_RECIBO,P394_NRO_RECIBO,P394_COD_MONEDA,P394_TIP_CAMBIO'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P394_EDIT_DATA_DET'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(118478061797648218)
,p_event_id=>wwv_flow_imp.id(116514537325245033)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    CCRECIBO.EDIT_COL_DET(pseq_id          => :P394_EDIT_DATA_DET,',
'                          ptipo_transac     => :P394_V_TIPO_TRAN,',
'                          ptip_comprobante  => :P394_TIP_FACTURA_REF_ADD_AUX,',
'                          pser_comprobante  => :P394_SER_FACTURA_REF_ADD,',
'                          pnro_comprobante  => :P394_NRO_FACTURA_REF_ADD,',
'                          pnro_cuota        => :P394_NRO_CUOTA_ADD,',
'                          pcod_moneda_cuota => :P394_COD_MONEDA_CUOTA_ADD,',
'                          pmonto_cuota      => :P394_MONTO_CUOTA_ADD,',
'                          pimporte          => :P394_IMPORTE_ADD,',
'                          pfec_vencimiento  => :P394_FEC_VENCIMIENTO_ADD,',
'                          pcod_empresa      => :P_COD_EMPRESA,',
'                          ptip_cambio       => :P394_TIP_CAMBIO_ADD,',
'                          pcod_modulo       => :P394_V_COD_MODULO,',
'                          psubtipo_trans    => :P394_TIPO_TRANSAC,',
'                           p_cod_sucursal => :P394_SUCURSAL,',
'                         p_ser_recibo => :P394_SER_RECIBO,',
'                         p_nro_recibo => :P394_NRO_RECIBO);',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_AGREGAR_EDITAR_DET ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P394_TIPO_TRANSAC,P394_TIP_FACTURA_REF_ADD_AUX,P394_SER_FACTURA_REF_ADD,P394_NRO_FACTURA_REF_ADD,P394_NRO_CUOTA_ADD,P394_FEC_VENCIMIENTO_ADD,P394_COD_MONEDA_CUOTA_ADD,P394_TIP_CAMBIO_ADD,P394_MONTO_CUOTA_ADD,P394_IMPORTE_ADD,P394_V_COD_MODULO,P_COD_E'
||'MPRESA,P394_V_TIPO_TRAN,P394_EDIT_DATA_DET,P394_SUCURSAL,P394_SER_RECIBO,P394_NRO_RECIBO'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P394_EDIT_DATA_DET'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(202412611197397823)
,p_event_id=>wwv_flow_imp.id(116514537325245033)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'VMENSAJE VARCHAR2(4000);',
'VERROR EXCEPTION;',
'VSALDO NUMBER;',
'BEGIN',
'   ',
' ',
'',
'SELECT  ',
'       ',
'      sum( TO_NUMBER(c006)) Monto ,',
'       sum(TO_NUMBER(c011)) Importe ',
'       into :P394_TOTAL,:P394_TOTAL',
'  FROM APEX_COLLECTIONS',
' WHERE COLLECTION_NAME = ''COL_DETA_CCRECIBO''',
'   AND (c014 = ''U'' OR c014 = ''I'' OR c014 IS NULL);',
'',
' ',
'',
'EXCEPTION',
'   ',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_MONTO_CUOTA_ADD coll ''||SQLERRM);',
'END;'))
,p_attribute_03=>'P394_TOTAL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(116514858177245036)
,p_event_id=>wwv_flow_imp.id(116514537325245033)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(229706893298446209)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(116514949171245037)
,p_event_id=>wwv_flow_imp.id(116514537325245033)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(228933973341878037)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(116515695635245044)
,p_name=>'DA_LIMPIAR'
,p_event_sequence=>640
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(116515544408245043)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(116515776168245045)
,p_event_id=>wwv_flow_imp.id(116515695635245044)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P394_CLIENTE,P394_COBRADOR,P394_COD_MONEDA,P394_CUSTODIO,P394_MENSAJE_GUARDAR_CAMBIOS,P394_MENSAJE_CLIENTE,P394_MENSAJE_BUSCAR,P394_MENSAJE_EDICION,P394_MENSAJE_BORRADO,P394_MENSAJE_GUARDAR_CAMBIOS_1'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(116515851347245046)
,p_name=>'DA_COD_MONEDA_CUOTA_ADD'
,p_event_sequence=>650
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P394_COD_MONEDA_CUOTA_ADD'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(116515931471245047)
,p_event_id=>wwv_flow_imp.id(116515851347245046)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P394_COD_MONEDA_CUOTA_ADD'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(116516081176245048)
,p_event_id=>wwv_flow_imp.id(116515851347245046)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    BEGIN',
'        SELECT TIPO_CAMBIO_DIA',
'          INTO :P394_TIP_CAMBIO_ADD',
'          FROM MONEDAS',
'         WHERE COD_MONEDA = :P394_COD_MONEDA_CUOTA_ADD;',
'    EXCEPTION',
'        WHEN NO_DATA_FOUND THEN',
'        :P394_TIP_CAMBIO_ADD := NULL;',
'    END;',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_COD_MONEDA_CUOTA_ADD ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P394_COD_MONEDA_CUOTA_ADD'
,p_attribute_03=>'P394_TIP_CAMBIO_ADD'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(117367389200768801)
,p_name=>'DA_DET_DATA_DET'
,p_event_sequence=>660
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P394_DET_DATA_DET'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(117367457463768802)
,p_event_id=>wwv_flow_imp.id(117367389200768801)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P394_DET_DATA_DET'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(117367556919768803)
,p_event_id=>wwv_flow_imp.id(117367389200768801)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    BEGIN',
'        SELECT c012,',
'               c013',
'          INTO :P394_MONEDA,',
'               :P394_TRANSACCION',
'          FROM APEX_COLLECTIONS',
'         WHERE COLLECTION_NAME = ''COL_DETA_CCRECIBO''',
'           AND seq_id = :P394_DET_DATA_DET;',
'    EXCEPTION',
'        WHEN NO_DATA_FOUND THEN',
'        :P394_MONEDA := NULL;',
'        :P394_TRANSACCION := NULL;',
'    END;',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_DET_DATA_DET ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P394_DET_DATA_DET'
,p_attribute_03=>'P394_MONEDA,P394_TRANSACCION'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(117367642145768804)
,p_name=>'DA_TIP_CAMBIO_ADD'
,p_event_sequence=>670
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P394_TIP_CAMBIO_ADD'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(117367767900768805)
,p_event_id=>wwv_flow_imp.id(117367642145768804)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P394_TIP_CAMBIO_ADD'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(117367876751768806)
,p_event_id=>wwv_flow_imp.id(117367642145768804)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    IF :P394_COD_MONEDA_CUOTA_ADD <> :P394_MONEDA THEN',
'        :P394_IMPORTE_ADD := to_number(NVL(:P394_MONTO_CUOTA_ADD,0)) * to_number(NVL(:P394_TIP_CAMBIO_ADD,1)) / to_number(NVL(:P394_TIP_CAMBIO,1));',
'    ELSE',
'        :P394_IMPORTE_ADD := NVL(:P394_MONTO_CUOTA_ADD,0);',
'    END IF;',
'    ',
'    :P394_TOTAL_AUX :=  :P394_TOTAL_AUX ;',
'',
'    :P394_TOTAL_AUX := NVL(:P394_TOTAL_AUX,0) + NVL(:P394_IMPORTE_ADD,0) - NVL(:P394_V_IMPORTE_ANT,0);',
'',
'    :P394_V_IMPORTE_ANT := NVL(:P394_IMPORTE_ADD,0);',
'',
'    :P394_TOTAL := round(:P394_TOTAL_AUX,2);',
'',
'    :P394_TOTAL := round(:P394_TOTAL,2);',
'    ',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_TIP_CAMBIO_ADD ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P394_COD_MONEDA_CUOTA_ADD,P394_MONEDA,P394_MONTO_CUOTA_ADD,P394_TIP_CAMBIO_ADD,P394_TIP_CAMBIO,P394_V_IMPORTE_ANT,P394_TOTAL_AUX'
,p_attribute_03=>'P394_IMPORTE_ADD,P394_TOTAL,P394_V_IMPORTE_ANT,P394_TOTAL_AUX'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P394_TIP_CAMBIO_ADD'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(117368621655768814)
,p_name=>'DA_BUSCAR'
,p_event_sequence=>680
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(116788432940812531)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(117368728098768815)
,p_event_id=>wwv_flow_imp.id(117368621655768814)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P394_FEC_EMISION_D,P394_FEC_EMI_HASTA,P394_FEC_VENC_D,P394_FEC_VENC_H,P_COD_EMPRESA,P394_CLIENTE,P_COD_USUARIO,P394_CUSTODIO,P394_V_COD_MODULO'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(117368815342768816)
,p_event_id=>wwv_flow_imp.id(117368621655768814)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    CCRECIBO.BUSCAR(pfecha_ini     => :P394_FEC_EMISION_D,',
'                    pfecha_fin     => :P394_FEC_EMI_HASTA,',
'                    pfecha_ven_ini => :P394_FEC_VENC_D,',
'                    pfecha_ven_fin => :P394_FEC_VENC_H,',
'                    pcod_empresa   => :P_COD_EMPRESA,',
'                    pcod_cliente   => :P394_CLIENTE,',
'                    pcod_usuario   => :P_COD_USUARIO,',
'                    pcod_custodio  => :P394_CUSTODIO,',
'                    pcod_modulo    => :P394_V_COD_MODULO,',
'                    pmensaje       => :P394_MENSAJE_BUSCAR,',
'                    ptotal         => :P394_TOTAL);',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_BUSCAR ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P394_FEC_EMISION_D,P394_FEC_EMI_HASTA,P394_FEC_VENC_D,P394_FEC_VENC_H,P_COD_EMPRESA,P394_CLIENTE,P_COD_USUARIO,P394_CUSTODIO,P394_V_COD_MODULO'
,p_attribute_03=>'P394_MENSAJE_BUSCAR,P394_TOTAL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(117369529605768823)
,p_event_id=>wwv_flow_imp.id(117368621655768814)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(228933973341878037)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(117369077983768818)
,p_name=>'DA_MENSAJE_BUSCAR'
,p_event_sequence=>690
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P394_MENSAJE_BUSCAR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(117369126722768819)
,p_event_id=>wwv_flow_imp.id(117369077983768818)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P394_MENSAJE_BUSCAR'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(117369250529768820)
,p_event_id=>wwv_flow_imp.id(117369077983768818)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P394_MENSAJE_BUSCAR.'
,p_attribute_02=>'Aviso'
,p_attribute_03=>'warning'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P394_MENSAJE_BUSCAR'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(118477153299648209)
,p_name=>'DA_MENSAJE_EDICION'
,p_event_sequence=>710
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P394_MENSAJE_EDICION'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(118477291916648210)
,p_event_id=>wwv_flow_imp.id(118477153299648209)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P394_MENSAJE_EDICION'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(118477398917648211)
,p_event_id=>wwv_flow_imp.id(118477153299648209)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P394_MENSAJE_EDICION.'
,p_attribute_02=>'Aviso'
,p_attribute_03=>'warning'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P394_MENSAJE_EDICION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(118477504805648213)
,p_name=>'DA_MENSAJE_BORRADO'
,p_event_sequence=>720
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P394_MENSAJE_BORRADO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(118477623161648214)
,p_event_id=>wwv_flow_imp.id(118477504805648213)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P394_MENSAJE_BORRADO'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(118477708772648215)
,p_event_id=>wwv_flow_imp.id(118477504805648213)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P394_MENSAJE_BORRADO.'
,p_attribute_02=>'Aviso'
,p_attribute_03=>'warning'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P394_MENSAJE_BORRADO'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(118478522158648223)
,p_name=>'DA_MENSAJE_GUARDAR_CAMBIOS'
,p_event_sequence=>730
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P394_MENSAJE_GUARDAR_CAMBIOS'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(118478633813648224)
,p_event_id=>wwv_flow_imp.id(118478522158648223)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P394_MENSAJE_GUARDAR_CAMBIOS'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(118478772633648225)
,p_event_id=>wwv_flow_imp.id(118478522158648223)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P394_MENSAJE_GUARDAR_CAMBIOS.'
,p_attribute_02=>'Aviso'
,p_attribute_03=>'warning'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P394_MENSAJE_GUARDAR_CAMBIOS'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(118479008720648228)
,p_name=>'DA_MENSAJE_GUARDAR_CAMBIOS_1'
,p_event_sequence=>740
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P394_MENSAJE_GUARDAR_CAMBIOS_1'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(118479104985648229)
,p_event_id=>wwv_flow_imp.id(118479008720648228)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P394_MENSAJE_GUARDAR_CAMBIOS_1'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(118479273370648230)
,p_event_id=>wwv_flow_imp.id(118479008720648228)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P394_MENSAJE_GUARDAR_CAMBIOS_1.'
,p_attribute_02=>'Aviso'
,p_attribute_03=>'warning'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P394_MENSAJE_GUARDAR_CAMBIOS_1'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(118479928973648237)
,p_name=>'DA_CONTROL_BRANCHE'
,p_event_sequence=>750
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P394_CONTROL_BRUNCH'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(118480047368648238)
,p_event_id=>wwv_flow_imp.id(118479928973648237)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P394_CONTROL_BRUNCH'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(132546388481400141)
,p_event_id=>wwv_flow_imp.id(118479928973648237)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'     ',
'    SELECT APEX_PAGE.GET_URL (p_page => 95,',
'				              p_items  => ''P95_P_TIP_MOV_CAJ,P95_P_SER_MOV_CAJ,P95_P_NRO_MOV_CAJ'', ',
'				              p_values => ''''||:P394_TIP_MOV_CAJ_AUX||'',''||:P394_SER_MOV_CAJ_AUX||'',''||:P394_NRO_MOV_CAJ_AUX||'''') f_url_1',
'	INTO :P394_URL',
'	FROM DUAL;',
'',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(''DA_TIP_MOV_CAJ_AUX ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P394_TIP_MOV_CAJ_AUX,P394_SER_MOV_CAJ_AUX,P394_NRO_MOV_CAJ_AUX'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P394_CONTROL_BRUNCH'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(132546865502400146)
,p_event_id=>wwv_flow_imp.id(118479928973648237)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'     ',
'    SELECT APEX_PAGE.GET_URL (p_page => 95,',
'				              p_items  => ''P95_TIPO_COMPROBANTE,P95_COD_SUCURSAL,P95_SER_COMPROBANTE,P95_NRO_COMPROBANTE,P95_P_COD_CLIENTE,P95_COD_CUSTODIO,P95_COD_CUSTODIO_ENT,P95_P_IND_GENERA_MD,P95_P_SER_ORT,P95_P_NRO_ORT,P95_P_FECHA'', ',
'				              p_values => ''''||''REC''||'',''||:P394_SUCURSAL||'',''||:P394_SER_RECIBO||'',''||:P394_NRO_RECIBO||'',''||:P394_CLIENTE||'',''||:P394_CUSTODIO||'',''||:P394_CUSTODIO_ENT||'',''||''S''||'',''||:P394_SER_COMPROBANTE_REF||'',''||:P394_NRO_COMPROBANTE_REF||'','
||'''||:P394_FECHA_RECIBO||'''') f_url_1',
'	INTO :P394_URL',
'	FROM DUAL;',
'',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(''DA_SER_MOV_CAJ_AUX ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P394_SUCURSAL,P394_SER_RECIBO,P394_NRO_RECIBO,P394_CLIENTE,P394_CUSTODIO,P394_CUSTODIO_ENT,P394_SER_COMPROBANTE_REF,P394_NRO_COMPROBANTE_REF,P394_FECHA_RECIBO'
,p_attribute_03=>'P394_URL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P394_CONTROL_BRUNCH'
,p_client_condition_expression=>'2'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(132547075333400148)
,p_event_id=>wwv_flow_imp.id(118479928973648237)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'     ',
'    SELECT APEX_PAGE.GET_URL (p_page => 95,',
'				              p_items  => ''P95_TIPO_COMPROBANTE,P95_COD_SUCURSAL,P95_SER_COMPROBANTE,P95_NRO_COMPROBANTE,P95_P_COD_CLIENTE,P95_COD_CUSTODIO,P95_COD_CUSTODIO_ENT,P95_P_IND_GENERA_MD,P95_P_FECHA'', ',
'				              p_values => ''''||''REC''||'',''||:P394_SUCURSAL||'',''||:P394_SER_RECIBO||'',''||:P394_NRO_RECIBO||'',''||:P394_CLIENTE||'',''||:P394_CUSTODIO||'',''||:P394_CUSTODIO_ENT||'',''||''S''||'',''||:P394_FECHA_RECIBO||'''') f_url_1',
'	INTO :P394_URL',
'	FROM DUAL;',
'APEX_DEBUG.ERROR(''P394_URL ''||:P394_URL);',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(''DA_NRO_MOV_CAJ_AUX ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P394_SUCURSAL,P394_SER_RECIBO,P394_NRO_RECIBO,P394_CLIENTE,P394_CUSTODIO,P394_CUSTODIO_ENT,P394_SER_COMPROBANTE_REF,P394_NRO_COMPROBANTE_REF,P394_FECHA_RECIBO'
,p_attribute_03=>'P394_URL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P394_CONTROL_BRUNCH'
,p_client_condition_expression=>'3'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(132547111460400149)
,p_event_id=>wwv_flow_imp.id(118479928973648237)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var url = apex.item("P394_URL").getValue();',
'apex.navigation.redirect(url);',
'',
''))
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P394_CONTROL_BRUNCH'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(118480452789648242)
,p_name=>'DA_TIP_MOV_CAJ_AUX'
,p_event_sequence=>760
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P394_TIP_MOV_CAJ_AUX'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(118480575916648243)
,p_event_id=>wwv_flow_imp.id(118480452789648242)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P394_TIP_MOV_CAJ_AUX'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(118480653173648244)
,p_name=>'DA_SER_MOV_CAJ_AUX'
,p_event_sequence=>770
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P394_SER_MOV_CAJ_AUX'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(118480758278648245)
,p_event_id=>wwv_flow_imp.id(118480653173648244)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P394_SER_MOV_CAJ_AUX'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(118480830080648246)
,p_name=>'DA_NRO_MOV_CAJ_AUX'
,p_event_sequence=>780
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P394_NRO_MOV_CAJ_AUX'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(118480977657648247)
,p_event_id=>wwv_flow_imp.id(118480830080648246)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P394_NRO_MOV_CAJ_AUX'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(123214039001722848)
,p_name=>'DA_BTIMPRIMIR'
,p_event_sequence=>790
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(123213932713722847)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(123214180133722849)
,p_event_id=>wwv_flow_imp.id(123214039001722848)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'doDescarga(apex.item(''P_COD_EMPRESA'').getValue(),apex.item(''P394_V_TIPO_RECIBO'').getValue(),apex.item(''P394_SER_RECIBO'').getValue(), apex.item(''P394_NRO_RECIBO'').getValue());'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(123214269697722850)
,p_name=>'DA_SOLO_NUMEROS'
,p_event_sequence=>800
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P394_MONTO_CUOTA_ADD'
,p_bind_type=>'bind'
,p_bind_event_type=>'keydown'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(126305675058686801)
,p_event_id=>wwv_flow_imp.id(123214269697722850)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'validateNumber(event);'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(126305726108686802)
,p_name=>'DA_MONTO_CUOTA_ADD'
,p_event_sequence=>810
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P394_MONTO_CUOTA_ADD'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(126305876236686803)
,p_event_id=>wwv_flow_imp.id(126305726108686802)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P394_MONTO_CUOTA_ADD'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(126305956042686804)
,p_event_id=>wwv_flow_imp.id(126305726108686802)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'VMENSAJE VARCHAR2(4000);',
'VERROR EXCEPTION;',
'VSALDO NUMBER;',
'BEGIN',
':P394_MENSAJE_MONTO := NULL;    ',
'IF :P394_TIP_FACTURA_REF_ADD IS NOT NULL AND :P394_TIP_COMPROBANTE_REF <>''GIF'' AND :P394_SER_FACTURA_REF_ADD IS NOT NULL',
' AND :P394_NRO_FACTURA_REF_ADD IS NOT NULL AND :P394_NRO_CUOTA_ADD IS NOT NULL THEN',
'    BEGIN',
'        select saldo_cuota',
'          into :P394_SALDO_AUX',
'          from cc_saldos',
'         where cod_empresa = :P_COD_EMPRESA',
'           and tipo_comprobante = :P394_TIP_FACTURA_REF_ADD_AUX',
'           and ser_comprobante = :P394_SER_FACTURA_REF_ADD',
'           and nro_comprobante = :P394_NRO_FACTURA_REF_ADD',
'           and nro_cuota = :P394_NRO_CUOTA_ADD;',
'    EXCEPTION',
'        WHEN NO_DATA_FOUND THEN',
'        IF NVL(:P394_GENERA_CREDITO_ADD,''N'') <> ''S'' THEN',
unistr('            VMENSAJE := ''No se encuentra n\00FAmero de factura en saldos..'';'),
'            RAISE VERROR;',
'        END IF;',
'        WHEN OTHERS THEN',
'        VMENSAJE := ''Error en la tabla de Saldos.'';',
'        RAISE VERROR;',
'    END;',
'    IF :P394_MONTO_CUOTA_ADD > 0 THEN',
'        IF :P394_MONTO_CUOTA_ADD > :P394_SALDO_AUX THEN',
'            VMENSAJE := ''El monto a cobrar es mayor que el saldo del cliente.'';',
'            RAISE VERROR;',
'        END IF;',
'    ELSE',
'        IF ABS(:P394_MONTO_CUOTA_ADD) > :P394_SALDO_AUX THEN',
'            VMENSAJE := ''El monto a cobrar es mayor que el saldo del cliente.'';',
'            RAISE VERROR;',
'        END IF;',
'    END IF;',
'    IF :P394_COD_MONEDA_CUOTA_ADD <> :P394_COD_MONEDA THEN',
'        :P394_IMPORTE_ADD := NVL(to_number(:P394_MONTO_CUOTA_ADD),0) * NVL(to_number(:P394_TIP_CAMBIO_ADD),1) / NVL(to_number(:P394_TIP_CAMBIO),1);',
'    ELSE ',
'        :P394_IMPORTE_ADD := to_number(NVL(:P394_MONTO_CUOTA_ADD,0));',
'    END IF;',
'    :P394_TOTAL_AUX := NVL(:P394_TOTAL_AUX,0) + NVL(to_number(:P394_IMPORTE_ADD),0) - NVL(:P394_V_IMPORTE_ANT,0);',
'    :P394_V_IMPORTE_ANT := to_number(NVL(:P394_IMPORTE_ADD,0));',
'    :P394_TOTAL := :P394_TOTAL_AUX;',
'        :P394_TOTAL := (:P394_TOTAL);    ',
'ELSIF :P394_TIP_FACTURA_REF_ADD IS NOT NULL AND :P394_SER_FACTURA_REF_ADD IS NOT NULL AND :P394_MONTO_CUOTA_ADD > 0 ',
'and :P394_NRO_CUOTA_ADD is not null THEN',
'BEGIN',
'    select saldo_cuota',
'      into :P394_SALDO_AUX',
'      from cc_saldos',
'     where cod_empresa = :P_COD_EMPRESA',
'       and tipo_comprobante = :P394_TIP_FACTURA_REF_ADD_AUX',
'       and ser_comprobante = :P394_SER_FACTURA_REF_ADD',
'       and nro_comprobante = :P394_NRO_FACTURA_REF_ADD',
'       and nro_cuota = :P394_NRO_CUOTA_ADD;',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'    IF NVL(:P394_GENERA_CREDITO_ADD,''N'') <> ''S'' THEN',
unistr('        VMENSAJE := ''No se encuentra n\00FAmero de factura en saldos...''||:P394_TIP_FACTURA_REF_ADD_AUX||''-''||:P394_SER_FACTURA_REF_ADD||''-''||:P394_NRO_FACTURA_REF_ADD||''-''||:P394_NRO_CUOTA_ADD;'),
'        RAISE VERROR;',
'    END IF;',
'    WHEN OTHERS THEN',
'    VMENSAJE := ''Error en la tabla de Saldos.'';',
'    RAISE VERROR;',
'END;',
'    IF :P394_MONTO_CUOTA_ADD > 0 THEN',
'        IF :P394_MONTO_CUOTA_ADD > :P394_SALDO_AUX THEN',
'            VMENSAJE := ''El monto a cobrar es mayor que el saldo del cliente.'';',
'            RAISE VERROR;',
'        END IF;',
'    ELSE',
'        IF ABS(:P394_MONTO_CUOTA_ADD) > :P394_SALDO_AUX THEN',
'            VMENSAJE := ''El monto a cobrar es mayor que el saldo del cliente.'';',
'            RAISE VERROR;',
'        END IF;',
'    END IF;',
'    IF :P394_COD_MONEDA_CUOTA_ADD <> :P394_COD_MONEDA THEN',
'                :P394_IMPORTE_ADD := NVL(to_number(:P394_MONTO_CUOTA_ADD),0) * NVL(to_number(:P394_TIP_CAMBIO_ADD),1) / NVL(to_number(:P394_TIP_CAMBIO),1);',
'    ELSE         ',
'         :P394_IMPORTE_ADD := to_number(NVL(:P394_MONTO_CUOTA_ADD,0));',
'    END IF;  ',
'     :P394_TOTAL_AUX := NVL(:P394_TOTAL_AUX,0) + NVL(:P394_IMPORTE_ADD,0) - NVL(:P394_V_IMPORTE_ANT,0);',
'    :P394_V_IMPORTE_ANT := NVL(:P394_IMPORTE_ADD,0);',
'    :P394_TOTAL := :P394_TOTAL_AUX;',
'        :P394_TOTAL :=  (:P394_TOTAL );',
'END IF;',
'EXCEPTION',
'    WHEN VERROR THEN',
'    :P394_MENSAJE_MONTO := VMENSAJE;',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_MONTO_CUOTA_ADD''||SQLERRM);',
'END;'))
,p_attribute_02=>'P394_MENSAJE_MONTO,P394_TIP_FACTURA_REF_ADD,P394_TIP_COMPROBANTE_REF,P394_SER_FACTURA_REF_ADD,P394_NRO_FACTURA_REF_ADD,P394_NRO_CUOTA_ADD,P_COD_EMPRESA,P394_TIP_FACTURA_REF_ADD_AUX,P394_GENERA_CREDITO_ADD,P394_IMPORTE_ADD,P394_TIP_CAMBIO_ADD,P394_TIP'
||'_CAMBIO,P394_IMPORTE_ADD,P394_V_IMPORTE_ANT,P394_TOTAL,P394_TOTAL_AUX,P394_SALDO_AUX'
,p_attribute_03=>'P394_IMPORTE_ADD,P394_V_IMPORTE_ANT,P394_TOTAL,P394_MENSAJE_MONTO,P394_TOTAL_AUX,P394_SALDO_AUX'
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
 p_id=>wwv_flow_imp.id(202412554888397822)
,p_event_id=>wwv_flow_imp.id(126305726108686802)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'VMENSAJE VARCHAR2(4000);',
'VERROR EXCEPTION;',
'VSALDO NUMBER;',
'BEGIN',
':P394_MENSAJE_MONTO := NULL;    ',
' ',
' IF :P394_COD_MONEDA_CUOTA_ADD <> :P394_COD_MONEDA THEN',
'        :P394_IMPORTE_ADD := round(NVL(to_number(:P394_MONTO_CUOTA_ADD),0) * NVL(to_number(:P394_TIP_CAMBIO_ADD),1) / NVL(to_number(:P394_TIP_CAMBIO),1),2);',
'   ',
'    ELSE ',
'        :P394_IMPORTE_ADD := NVL(:P394_MONTO_CUOTA_ADD,0);',
'    END IF;',
'           APEX_DEBUG.ERROR(''DA_MONTO_CUOTA_ADD entro ''||:P394_IMPORTE_ADD);',
'SELECT  ',
'       ',
'      sum( TO_NUMBER(c006)) Monto ,',
'       sum(TO_NUMBER(c011)) Importe ',
'       into :P394_TOTAL,:P394_TOTAL',
'  FROM APEX_COLLECTIONS',
' WHERE COLLECTION_NAME = ''COL_DETA_CCRECIBO''',
'   AND (c014 = ''U'' OR c014 = ''I'' OR c014 IS NULL);',
'',
' ',
'',
'EXCEPTION',
'    WHEN VERROR THEN',
'    :P394_MENSAJE_MONTO := VMENSAJE;',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_MONTO_CUOTA_ADD coll ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P394_COD_MONEDA_CUOTA_ADD,P394_COD_MONEDA,P394_MONTO_CUOTA_ADD,P394_TIP_CAMBIO_ADD,P394_TIP_CAMBIO'
,p_attribute_03=>'P394_TOTAL,P394_IMPORTE_ADD'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(126306259471686807)
,p_name=>'DA_MENSAJE_MONTO'
,p_event_sequence=>820
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P394_MENSAJE_MONTO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(126306398640686808)
,p_event_id=>wwv_flow_imp.id(126306259471686807)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P394_MENSAJE_MONTO'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(126306405147686809)
,p_event_id=>wwv_flow_imp.id(126306259471686807)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P394_MENSAJE_MONTO.'
,p_attribute_02=>'Aviso'
,p_attribute_03=>'warning'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P394_MENSAJE_MONTO'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(126306500346686810)
,p_name=>'DA_TIP_FACTURA_REF_ADD_AUX'
,p_event_sequence=>830
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P394_TIP_FACTURA_REF_ADD_AUX'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(126306655477686811)
,p_event_id=>wwv_flow_imp.id(126306500346686810)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P394_TIP_FACTURA_REF_ADD_AUX'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(126306710703686812)
,p_event_id=>wwv_flow_imp.id(126306500346686810)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'VEXISTE VARCHAR2(100);',
'BEGIN',
'    IF :P394_TIP_FACTURA_REF_ADD_AUX = :P394_V_TIP_ANTICIPO  THEN',
'        BEGIN',
'            select ''S''',
'              into VEXISTE',
'              from cc_saldos',
'             where cod_empresa = :P_COD_EMPRESA',
'               and tipo_comprobante = :P394_TIP_FACTURA_REF_ADD_AUX',
'               and ser_comprobante = :P394_SER_FACTURA_REF_ADD',
'               and nro_comprobante = :P394_NRO_FACTURA_REF_ADD',
'               and nro_cuota = :P394_NRO_CUOTA_ADD',
'               and cod_cliente = :P394_CLIENTE;',
'        EXCEPTION',
'            WHEN OTHERS THEN',
'            VEXISTE := ''N'';',
'        END;',
'',
'        IF 	VEXISTE = ''N'' THEN ',
'    	    :P394_SER_FACTURA_REF_ADD := :P394_SER_RECIBO;',
'    	ELSE',
'    	    :P394_GENERA_CREDITO_ADD := ''N'';',
'    	End If;',
'    END IF;',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_TIP_FACTURA_REF_ADD_AUX ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P394_TIP_FACTURA_REF_ADD_AUX,P394_V_TIP_ANTICIPO,P_COD_EMPRESA,P394_SER_FACTURA_REF_ADD,P394_NRO_FACTURA_REF_ADD,P394_NRO_CUOTA_ADD,P394_CLIENTE,P394_SER_RECIBO'
,p_attribute_03=>'P394_SER_FACTURA_REF_ADD ,P394_GENERA_CREDITO_ADD'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P394_NRO_CUOTA_ADD'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(126306902489686814)
,p_name=>'DA_SALDO_AUX'
,p_event_sequence=>840
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P394_SALDO_AUX'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(126307011600686815)
,p_event_id=>wwv_flow_imp.id(126306902489686814)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P394_SALDO_AUX'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(126307123393686816)
,p_name=>'DA_IMPORTE_ADD'
,p_event_sequence=>850
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P394_IMPORTE_ADD'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(126307211182686817)
,p_event_id=>wwv_flow_imp.id(126307123393686816)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P394_IMPORTE_ADD'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(132544822509400126)
,p_name=>'DA_TIP_FACTURA_REF_ADD'
,p_event_sequence=>860
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P394_TIP_FACTURA_REF_ADD'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(132544903737400127)
,p_event_id=>wwv_flow_imp.id(132544822509400126)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P394_TIP_FACTURA_REF_ADD'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(132545095076400128)
,p_event_id=>wwv_flow_imp.id(132544822509400126)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'VCONTROL NUMBER;',
'BEGIN',
'    IF :P394_TIP_FACTURA_REF_ADD = :P394_V_TIP_ANTICIPO THEN',
'        BEGIN',
'            SELECT COUNT(1)',
'              INTO VCONTROL',
'              FROM APEX_COLLECTIONS',
'             WHERE COLLECTION_NAME = ''COL_DETA_CCRECIBO''',
'               AND c004 = :P394_TIP_FACTURA_REF_ADD',
'               AND (c014 = ''U'' OR c014 = ''I'' OR c014 IS NULL);',
'        EXCEPTION',
'            WHEN OTHERS THEN',
'            VCONTROL := 0;',
'        END;',
'        ',
'        IF VCONTROL > 0 THEN',
'            :P394_MENSAJE_TIP_COMP := ''No puede agregar dos comprobantes tipo REC para un mismo recibo.'';',
'        ELSE',
'            DECLARE ',
'    	 	VEXISTE VARCHAR2(50); ',
'            BEGIN ',
'              BEGIN',
'                select ''S''',
'                  into VEXISTE',
'                  from cc_saldos',
'                 where cod_empresa = :P_COD_EMPRESA',
'                   and ROWID = :P394_TIP_FACTURA_REF_ADD',
'                   /*and ser_comprobante = :P394_SER_FACTURA_REF_ADD',
'                   and nro_comprobante = :P394_NRO_FACTURA_REF_ADD',
'                   and nro_cuota = :P394_NRO_CUOTA_ADD',
'                   and cod_cliente = :P394_CLIENTE*/;',
'            EXCEPTION ',
'          	    WHEN OTHERS THEN  ',
'        		VEXISTE := ''N''; ',
'        	END; ',
'',
'            IF VEXISTE = ''N'' THEN ',
'        	  :P394_GENERA_CREDITO_ADD := ''S'';',
'             -- :P394_SER_FACTURA_REF_ADD := :P394_SER_RECIBO;',
'        	  --:b_detalle.nro_factura_ref := :b_detalle.nro_recibo ;',
'        	   :P394_NRO_CUOTA_ADD := 1;',
'              :P394_FEC_VENCIMIENTO_ADD := :P394_FECHA_RECIBO;',
'              :P394_COD_MONEDA_CUOTA_ADD := ''1'';',
'        	ELSE',
'        	  :P394_GENERA_CREDITO_ADD := ''N'';',
'        	End If;',
'        end; ',
'        END IF;',
'    ELSE',
'        BEGIN',
'            select  ',
'                   c.nro_cuota',
'              into :P394_NRO_CUOTA_ADD',
'              from cc_saldos c',
'             where c.cod_empresa = :P_COD_EMPRESA',
'               and c.cod_cliente = :P394_CLIENTE',
'               AND C.FEC_VENCIMIENTO > ADD_MONTHS(SYSDATE, -900)',
'               and nvl(c.saldo_cuota, 0) - nvl(rec_pendientes, 0) <> 0',
'               and (c.cod_custodio = :P394_CUSTODIO or',
'                   c.cod_custodio in',
'                   (select cod_custodio',
'                       from usuarios_custodios',
'                      where cod_empresa = :P_COD_EMPRESA',
'                        and cod_usuario = :P_COD_USUARIO))',
'               and rowid = :P394_ROW_ID_DET;',
'        EXCEPTION',
'            WHEN NO_DATA_FOUND THEN',
'            :P394_NRO_CUOTA_ADD := NULL;',
'        END;',
'    END IF;',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_TIP_FACTURA_REF_ADD ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P394_TIP_FACTURA_REF_ADD,P394_V_TIP_ANTICIPO,P_COD_EMPRESA,P394_SER_FACTURA_REF_ADD,P394_NRO_FACTURA_REF_ADD,P394_NRO_CUOTA_ADD,P394_CLIENTE,P394_SER_RECIBO,P394_FECHA_RECIBO,P394_ROW_ID_DET,P_COD_USUARIO'
,p_attribute_03=>'P394_GENERA_CREDITO_ADD,P394_FEC_VENCIMIENTO_ADD,P394_COD_MONEDA_CUOTA_ADD,P394_MENSAJE_TIP_COMP,P394_NRO_CUOTA_ADD'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(132545232586400130)
,p_name=>'DA_MENSAJE_TIP_COMP'
,p_event_sequence=>870
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P394_MENSAJE_TIP_COMP'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(132545379324400131)
,p_event_id=>wwv_flow_imp.id(132545232586400130)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P394_MENSAJE_TIP_COMP'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(132545466647400132)
,p_event_id=>wwv_flow_imp.id(132545232586400130)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P394_MENSAJE_TIP_COMP.'
,p_attribute_02=>'Aviso'
,p_attribute_03=>'warning'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P394_MENSAJE_TIP_COMP'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(132545507494400133)
,p_event_id=>wwv_flow_imp.id(132545232586400130)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(229706893298446209)
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P394_MENSAJE_TIP_COMP'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(132545761919400135)
,p_name=>'DA_ROW_ID_DET'
,p_event_sequence=>880
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P394_ROW_ID_DET'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(132545856709400136)
,p_event_id=>wwv_flow_imp.id(132545761919400135)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P394_ROW_ID_DET'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(132546550541400143)
,p_name=>'DA_URL'
,p_event_sequence=>890
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P394_URL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(132546674826400144)
,p_event_id=>wwv_flow_imp.id(132546550541400143)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P394_URL'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(149490823424830917)
,p_name=>'DA_BTNUEVO_RECIBO'
,p_event_sequence=>900
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(116515544408245043)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(149491012333830919)
,p_event_id=>wwv_flow_imp.id(149490823424830917)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P394_CONTROL_ORIGEN := 0;'
,p_attribute_02=>'P394_CONTROL_ORIGEN'
,p_attribute_03=>'P394_CONTROL_ORIGEN'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(149490980926830918)
,p_event_id=>wwv_flow_imp.id(149490823424830917)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(194844666180616049)
,p_name=>'DA_MOV_CAJ'
,p_event_sequence=>910
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(116822998701812557)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(194844792012616050)
,p_event_id=>wwv_flow_imp.id(194844666180616049)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
' ',
'IF :P394_SER_RECIBO IS NOT NULL AND :P394_NRO_RECIBO IS NOT NULL   THEN',
'    begin',
'        CCRECIBO.col_mov_caj(PI_COD_EMPRESA            => :P_COD_EMPRESA,',
'                             PI_SER_COMPROBANTE        => :P394_SER_RECIBO,',
'                             PI_NRO_COMPROBANTE        => TO_NUMBER(:P394_NRO_RECIBO),',
'                             PI_TIP_COMPROBANTE        => ''REC'',',
'                             PI_COD_SUCURSAL           => :P_COD_SUCURSAL,',
'                             PI_COD_CLIENTE            => :P394_CLIENTE,',
'                             PI_COD_CUSTODIO           => :P394_CUSTODIO,',
'                             PI_COD_CUSTODIO_ENT       => :P394_CUSTODIO,',
'                             PI_GENERA_MD              => :P394_V_GENERA_MD,',
'                             PI_FEC_COMPROBANTE        => TO_DATE(:P394_FECHA_RECIBO, ''DD/MM/YYYY''),',
'                             PI_TIP_COMPROBANTE_REF    => NULL,',
'                             PI_SER_COMPROBANTE_REF    => NULL,',
'                             PI_NRO_COMPROBANTE_REF    =>NULL,',
'                             pi_llamar                 =>  :P394_FORMA_COBRO);',
'--                             :P394_URL:=''95'';',
'BEGIN',
'     ',
'    SELECT APEX_PAGE.GET_URL (p_page => 95,',
'				              p_items  => ''P95_P_TIP_MOV_CAJ,P95_P_SER_MOV_CAJ,P95_P_NRO_MOV_CAJ'', ',
'				              p_values => ''''||:P394_TIP_MOV_CAJ_AUX||'',''||:P394_SER_MOV_CAJ_AUX||'',''||:P394_NRO_MOV_CAJ_AUX||'''') f_url_1',
'	INTO :P394_URL',
'	FROM DUAL;',
'',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(''DA_TIP_MOV_CAJ_AUX ''||SQLERRM);',
'END;',
'             exception when others then',
'              RAISE_APPLICATION_ERROR(-20000, ''error col_mov_caj. ''||sqlerrm);',
'              end ;',
'                               ',
'END IF;',
''))
,p_attribute_02=>'P394_SER_RECIBO,P394_NRO_RECIBO,P394_CLIENTE,P394_CUSTODIO,P394_FECHA_RECIBO,P_COD_EMPRESA'
,p_attribute_03=>'P394_FORMA_COBRO,P394_URL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(202410512285397802)
,p_event_id=>wwv_flow_imp.id(194844666180616049)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var url = apex.item("P394_URL").getValue();',
'apex.navigation.redirect (url);',
' ',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(208556469253354603)
,p_name=>'DA_RECIBO'
,p_event_sequence=>920
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(208556340569354602)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(208556539142354604)
,p_event_id=>wwv_flow_imp.id(208556469253354603)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'var comprobante = document.getElementById("P394_NRO_RECIBO").value; ',
'var params = []',
'var empresa = apex.item("P_COD_EMPRESA").getValue();',
'var tip_comprobante = apex.item("P394_V_TIPO_RECIBO").getValue();',
'var ser_comprobante = apex.item("P394_SER_RECIBO").getValue();',
'var nro_comprobante = apex.item("P394_NRO_RECIBO").getValue();',
'var cliente = ''&P394_COD_CLIENTE.'';',
'var usuario = ''&APP_USER.'';',
'var vfacnom = "CCRECIBO_ALT_OFICIO_V3";',
'params.push({ name: ''P_COD_EMPRESA'', value: empresa})',
'params.push({ name: ''P_TIP_RECIBO'', value: tip_comprobante})',
'params.push({ name: ''P_SER_RECIBO'', value: ser_comprobante}) ',
'params.push({ name: ''P_NRO_RECIBO'', value: nro_comprobante}) ',
'params.push({ name: ''P_COD_CLIENTE'', value: cliente}) ',
'',
'createReportUrl(vfacnom, params)',
' '))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(208559286112354631)
,p_name=>'da_edita_numero'
,p_event_sequence=>930
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P394_CONTROL_ORIGEN'
,p_condition_element=>'P394_CONTROL_ORIGEN'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'1'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(208559350304354632)
,p_event_id=>wwv_flow_imp.id(208559286112354631)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P394_NRO_RECIBO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(208559445286354633)
,p_event_id=>wwv_flow_imp.id(208559286112354631)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P394_NRO_RECIBO'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(118479487545648232)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_SAVE'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    CCRECIBO.GUARDAR_DATOS(pcod_sucursal        => :P394_SUCURSAL,',
'                           pser_recibo          => :P394_SER_RECIBO,',
'                           pnro_recibo          => :P394_NRO_RECIBO,',
'                           pfec_recibo          => :P394_FECHA_RECIBO,',
'                           pcod_cliente         => :P394_CLIENTE,',
'                           pcod_cobrador        => :P394_COBRADOR,',
'                           pcod_moneda          => :P394_COD_MONEDA,',
'                           ptip_cambio          => :P394_TIP_CAMBIO,',
'                           pcod_usuario         => :P394_USUARIO,',
'                           panulado             => :P394_ANULADO,',
'                           pfec_anulacion       => :P394_FEC_ANUL,',
'                           pestado              => :P394_ESTADO,',
'                           pcod_custodio        => :P394_CUSTODIO,',
'                           preferencia          => :P394_REFENCIA,',
'                           pcod_empresa         => :P_COD_EMPRESA,',
'                           pnro_mov_caj         => :P394_MOV_DE_CAJA,',
'                           ptip_recibo          => :P394_TIP_RECIBO,',
'                           ptip_comprobante_ref => :P394_TIP_COMPROBANTE_REF,',
'                           pser_comprobante_ref => :P394_SER_COMPROBANTE_REF,',
'                           pnro_comprobante_ref => :P394_NRO_COMPROBANTE_REF,',
'                           pcod_usuario_anu     => :P394_USUARIO_ANUL,',
'                           pcod_motivo_anu      => :P394_MOTIVO_ANUL,',
'                           pcomentario_recibo   => :P394_COMENTARIO);',
'',
'    declare ',
'    vexiste varchar2(1) ;',
'    vtipcaj varchar2(3) ; ',
'    vsercaj varchar2(3) ;',
'    vnrocaj number(8) ;',
'    begin',
'        begin',
'            select ''S''',
'              into vexiste',
'              from cc_recibos c',
'             where c.cod_empresa =  :P_COD_EMPRESA',
'               and c.tip_recibo = :P394_TIP_RECIBO',
'               and c.ser_recibo = :P394_SER_RECIBO',
'               and c.nro_recibo = :P394_NRO_RECIBO',
'               and nvl(c.anulado,''N'') <> ''S'';',
'        exception',
'            when others then',
'            vexiste := ''N'';',
'        end ;',
'',
'        if nvl( vexiste,''N'') = ''S'' then   ',
'             begin',
'               select m.tip_mov_caj, m.ser_mov_caj, m.nro_mov_caj',
'                 into vtipcaj, vsercaj, vnrocaj',
'                 from cc_movimientos_comp m, cc_movimientos_cajas c',
'                where m.cod_empresa = :P_COD_EMPRESA',
'                  and m.tipo_comprobante = :P394_TIP_RECIBO',
'                  and m.ser_comprobante = :P394_SER_RECIBO',
'                  and m.nro_comprobante = :P394_NRO_RECIBO ',
'                  and m.cod_empresa = c.cod_empresa',
'                  and m.tip_mov_caj = c.tip_mov_caj',
'                  and m.ser_mov_caj = c.ser_mov_caj',
'                  and m.nro_mov_caj = c.nro_mov_caj;',
'             exception  ',
'                 when others then  ',
'                 vnrocaj := null ;',
'             end ;',
'             ',
'             if vnrocaj is not null then',
'',
'                 :P394_CONTROL_BRUNCH := 1;',
'                 :P394_TIP_MOV_CAJ_AUX := vtipcaj;',
'                 :P394_SER_MOV_CAJ_AUX := vsercaj;',
'                 :P394_NRO_MOV_CAJ_AUX := vnrocaj;',
'             else ',
'                                                   ',
'                   if :P394_TIP_COMPROBANTE_REF = ''ORT'' then',
'                  		:P394_CONTROL_BRUNCH := 2;',
'                   end if;',
'                   ',
'                   :P394_CONTROL_BRUNCH := 3;',
'                                  ',
'             end if;',
'             ',
'           end if;',
'        end;',
'        apex_debug.error(''P394_CONTROL_BRUNCH ''||:P394_CONTROL_BRUNCH);',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''PR_SAVE ''||SQLERRM);',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(116827699171812562)
,p_process_sequence=>20
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_INIT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(p_collection_name => ''COL_DETA_CCRECIBO'');',
'APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(p_collection_name => ''COL_COMPR_CCRECIBO'');',
':P394_V_COD_MODULO := ''CC'';',
':P394_V_TIPO_TRAN := inv.bs_busca_parametro( :P394_V_COD_MODULO, ''TRANS_COBRO'');',
':P394_V_SUB_TIPO_TRANS := inv.bs_busca_parametro( :P394_V_COD_MODULO, ''SUB_TRANS_COBRO'');',
':P394_V_SER_RECIBO := inv.bs_busca_parametro( :P394_V_COD_MODULO, ''SERIE_RECIBO''||:P_COD_SUCURSAL);',
':P394_V_TIPO_RECIBO := inv.bs_busca_parametro( :P394_V_COD_MODULO, ''TIPO_RECIBO'');',
':P394_V_TIPO_CHEQUE := ''CH'' ;',
':P394_V_TIPO_TALON_FACTURA := inv.bs_busca_parametro( :P394_V_COD_MODULO, ''TIPO_RECIBO'');',
':P394_V_GENERA_MD := ''N'';',
':P394_V_COD_CUSTODIO_ENT := null ;',
':P394_V_TIP_ANTICIPO := inv.bs_busca_parametro( :P394_V_COD_MODULO, ''TIPO_ANTICIPO_REC'');',
':P394_V_CLIENTE_CONTADO_CREDITO := inv.bs_busca_parametro( ''VT'', ''CLIENTE_CONTADO'');',
':P394_COD_MONEDA :=null;',
':P394_TIP_CAMBIO := null;',
':p394_cod_custodio := null;',
':P394_CLIENTE :=null;',
':P394_TOTAL :=null;',
':P394_TIPO_TRANSAC :=null;',
'',
':P394_MOTIVO_ANULA :=null;',
'',
':P394_MONEDA :=null;',
':P394_TRANSACCION :=null;',
'',
':P394_USUARIO:= :P_COD_USUARIO;',
'begin',
'     select cod_custodio',
'        into :P394_COD_CUSTODIO',
'        from usuarios',
'        where cod_empresa = :P_COD_EMPRESA',
'          and cod_usuario = :p_cod_usuario ;',
'         -- APEX_DEBUG.ERROR(''P394_CUSTODIO ''||:P394_CUSTODIO);',
'  exception',
'     when others then',
'        :p394_cod_custodio := null ;',
'  end ;',
'  :P394_CUSTODIO := :P394_COD_CUSTODIO;',
'/*Permisos*/',
'begin',
'    :P394_V_PERMITE_ANULAR := busca_permiso( :p_cod_empresa,',
'                                                ''CCRECIBO'',',
'                                                :p_cod_usuario,',
'                                                ''ANULA RECIBOS'' );',
'',
'',
'    :P394_V_CARGA_SUCURSAL := busca_permiso( :p_cod_empresa,',
'                                              ''CCRECIBO'',',
'                                              :p_cod_usuario,',
'                                              ''CARGA SUCURSAL'' );',
'    ',
'   :P394_V_CARGA_TIP_CAMBIO := busca_permiso( :p_cod_empresa,',
'                                                 ''CCRECIBO'',',
'                                                 :p_cod_usuario,',
'                                                 ''CARGA TIPO CAMBIO'' );',
'                                                 ',
'   :P394_V_CARGA_SUB_TIPO_TRANS := busca_permiso( :p_cod_empresa,',
'                                                     ''CCRECIBO'',',
'                                                     :p_cod_usuario,',
'                                                     ''CARGA TRANSACCION'' );',
'                                                     ',
'  :P394_V_MODIFICA_FECHA_ANT := busca_permiso( :p_cod_empresa,',
'                                                  ''CCRECIBO'',',
'                                                  :p_cod_usuario,',
'                                                  ''MODIFICA FECHA ANTERIOR'' );',
'',
'  :P394_V_CAMBIA_FECHA       := busca_permiso( :p_cod_empresa,',
'                                                  ''CCRECIBO'',',
'                                                  :p_cod_usuario,',
'                                                  ''CAMBIA_FECHA'' );',
'',
unistr('  -- PARA CASO DE SE\00D1A DE TRATO --'),
'  :P394_V_CARGA_SENIA := busca_permiso( :p_cod_empresa,',
'                                           ''CCRECIBO'',',
'                                           :p_cod_usuario,',
'                                           ''PERMITE_CARGA_SENIA'' );',
'',
'end;',
'/*Fin Permisos*/',
'',
'begin',
' select cod_custodio',
'    into :P394_V_COD_CUSTODIO',
'    from usuarios',
'    where cod_empresa = :P_cod_empresa',
'      and cod_usuario = :P_cod_usuario ;',
'exception',
' when others then',
'    :P394_V_COD_CUSTODIO := null ;',
'end ;',
'  ',
':P394_V_REIMPRIME := busca_permiso( :P_cod_empresa, ',
'                                                  ''CCRECIBO'', ',
'                                                  :P_COD_USUARIO, ',
'                                                  ''REIMPRIME'' ) ; ',
'                                                  ',
':P394_V_modifica_cambio := busca_permiso( :P_cod_empresa, ',
'                                                  ''CCRECIBO'', ',
'                                                  :P_COD_USUARIO, ',
'                                                  ''MODIFICA_CAMBIO'' ) ;                                                                                              ',
'begin',
'  select decode(nvl(:P394_P_TIP_COMPROBANTE,''NN''),''GIF'',''GC'', SERie_recibo)',
'    into :P394_V_SER_RECIBO ',
'    from USUARIOS',
'   where cod_empresa = :P_cod_empresa',
'     and COD_USUARIO = :P_COD_USUARIO;',
'exception',
'  when others then',
'     :P394_V_SER_RECIBO :=NULL;',
'end;',
'',
'if :P394_V_SER_RECIBO is null then',
' ',
'	 :P394_V_SER_RECIBO := inv.bs_busca_parametro( :P394_V_COD_MODULO, ''SERIE_RECIBO''    ) ;',
'end if;',
'',
'begin',
'   select descripcion',
'      into :p394_transaccion',
'      from subtipos_trans',
'      where cod_empresa   = :p_cod_empresa',
'        and cod_modulo    = :P394_V_COD_MODULO',
'        and tipo_trans    = :P394_V_TIPO_TRAN',
'        and subtipo_trans = :P394_V_SUB_TIPO_TRANS;',
'exception',
'   when others then',
'      :p394_transaccion := null ;',
'end ;',
'',
':P394_SUCURSAL := NVL(:P_COD_SUCURSAL,''01'');'))
,p_process_clob_language=>'PLSQL'
,p_process_when=>'P394_CONTROL_ORIGEN'
,p_process_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_process_when2=>'0'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(118476509717648203)
,p_process_sequence=>30
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_INIT_EDIT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(p_collection_name => ''COL_DETA_CCRECIBO'');',
'APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(p_collection_name => ''COL_COMPR_CCRECIBO'');',
':P394_V_COD_MODULO := ''CC'';',
':P394_V_TIPO_TRAN := inv.bs_busca_parametro( :P394_V_COD_MODULO, ''TRANS_COBRO'');',
':P394_V_SUB_TIPO_TRANS := inv.bs_busca_parametro( :P394_V_COD_MODULO, ''SUB_TRANS_COBRO'');',
':P394_V_SER_RECIBO := inv.bs_busca_parametro( :P394_V_COD_MODULO, ''SERIE_RECIBO''||:P_COD_SUCURSAL);',
':P394_V_TIPO_RECIBO := inv.bs_busca_parametro( :P394_V_COD_MODULO, ''TIPO_RECIBO'');',
':P394_V_TIPO_CHEQUE := ''CH'' ;',
':P394_V_TIPO_TALON_FACTURA := inv.bs_busca_parametro( :P394_V_COD_MODULO, ''TIPO_RECIBO'');',
':P394_V_GENERA_MD := ''N'';',
':P394_V_COD_CUSTODIO_ENT := null ;',
':P394_V_TIP_ANTICIPO := inv.bs_busca_parametro( :P394_V_COD_MODULO, ''TIPO_ANTICIPO_REC'');',
':P394_V_CLIENTE_CONTADO_CREDITO := inv.bs_busca_parametro( ''VT'', ''CLIENTE_CONTADO'');',
'/*Permisos*/',
'begin',
'    :P394_V_PERMITE_ANULAR := busca_permiso( :p_cod_empresa,',
'                                                ''CCRECIBO'',',
'                                                :p_cod_usuario,',
'                                                ''ANULA RECIBOS'' );',
'',
'',
'    :P394_V_CARGA_SUCURSAL := busca_permiso( :p_cod_empresa,',
'                                              ''CCRECIBO'',',
'                                              :p_cod_usuario,',
'                                              ''CARGA SUCURSAL'' );',
'    ',
'   :P394_V_CARGA_TIP_CAMBIO := busca_permiso( :p_cod_empresa,',
'                                                 ''CCRECIBO'',',
'                                                 :p_cod_usuario,',
'                                                 ''CARGA TIPO CAMBIO'' );',
'                                                 ',
'   :P394_V_CARGA_SUB_TIPO_TRANS := busca_permiso( :p_cod_empresa,',
'                                                     ''CCRECIBO'',',
'                                                     :p_cod_usuario,',
'                                                     ''CARGA TRANSACCION'' );',
'                                                     ',
'  :P394_V_MODIFICA_FECHA_ANT := busca_permiso( :p_cod_empresa,',
'                                                  ''CCRECIBO'',',
'                                                  :p_cod_usuario,',
'                                                  ''MODIFICA FECHA ANTERIOR'' );',
'',
'  :P394_V_CAMBIA_FECHA       := busca_permiso( :p_cod_empresa,',
'                                                  ''CCRECIBO'',',
'                                                  :p_cod_usuario,',
'                                                  ''CAMBIA_FECHA'' );',
'',
unistr('  -- PARA CASO DE SE\00D1A DE TRATO --'),
'  :P394_V_CARGA_SENIA := busca_permiso( :p_cod_empresa,',
'                                           ''CCRECIBO'',',
'                                           :p_cod_usuario,',
'                                           ''PERMITE_CARGA_SENIA'' );',
'',
'end;',
'/*Fin Permisos*/',
'BEGIN',
'    CCRECIBO.CARGAR_CAB(prow_id           => :P394_ROWID,',
'                        pcod_sucursal     => :P394_SUCURSAL,',
'                        pser_recibo       => :P394_SER_RECIBO,',
'                        pnro_recibo       => :P394_NRO_RECIBO,',
'                        pfec_recibo       => :P394_FECHA_RECIBO,',
'                        pcod_cliente      => :P394_CLIENTE,',
'                        pcod_cobrador     => :P394_COBRADOR,',
'                        pcod_moneda       => :P394_COD_MONEDA,',
'                        ptip_cambio       => :P394_TIP_CAMBIO,',
'                        pcod_usuario      => :P394_USUARIO,',
'                        panulado          => :P394_ANULADO,',
'                        pfec_anulacion    => :P394_FEC_ANUL,',
'                        pestado           => :P394_ESTADO,',
'                        pcod_custodio     => :P394_CUSTODIO,',
'                        preferencia       => :P394_REFENCIA,',
'                        pnro_mov_caj      => :P394_MOV_DE_CAJA,',
'                        pcod_usuario_anul => :P394_USUARIO_ANUL,',
'                        pcod_movito_anul  => :P394_MOTIVO_ANUL);',
'',
'    CCRECIBO.CARGAR_COL_DETA(pcod_empresa => :P_COD_EMPRESA,',
'                             pser_recibo  => :P394_SER_RECIBO,',
'                             pnro_recibo  => :P394_NRO_RECIBO,',
'                             pcod_modulo  => :P394_V_COD_MODULO,',
'                             ptotal       => :P394_TOTAL); ',
'    ',
'    BEGIN',
'        select nvl(ltrim(p.nombre), ltrim(p.nomb_fantasia))',
'          into :P394_NOMB_CLIENTE',
'          from cc_clientes c,',
'               personas p ',
'         where c.cod_empresa = :P_COD_EMPRESA',
'           and c.cod_persona = p.cod_persona',
'           and c.cod_cliente = :P394_CLIENTE;',
'    EXCEPTION',
'        WHEN NO_DATA_FOUND THEN',
'        :P394_NOMB_CLIENTE := NULL;',
'    END;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''PR_INIT_EDIT ''||SQLERRM);',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_process_when=>'P394_CONTROL_ORIGEN'
,p_process_when_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_process_when2=>'0'
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
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(116826479636812561)
,p_process_sequence=>40
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
':P394_V_ESTADO := :P394_ESTADO;',
':P394_V_FEC_ESTADO := :P394_FEC_ESTADO;',
'',
' '))
,p_process_clob_language=>'PLSQL'
,p_process_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(116828073002812562)
,p_process_sequence=>50
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
'     and tip_talonario = :p394_v_tipo_talon_factura',
'     and cod_sucursal = :P394_SUCURSAL',
'     and nvl(activo, ''S'') <> ''N'';',
'',
'  IF nvl(vnro_ini, 0) = 1 then',
'    BEGIN',
'      select numero_inicial, numero_final, serie',
'        into :P394_V_NRO_INICIAL, :P394_V_NRO_FINAL, :P394_V_SERIE',
'        from talonarios',
'       where cod_empresa = :p_cod_empresa',
'         and tip_talonario = :p394_v_tipo_talon_factura',
'         and cod_sucursal = :P394_SUCURSAL',
'         and nvl(activo, ''S'') <> ''N'';',
'    EXCEPTION',
'      when others then',
'        :P394_V_NRO_INICIAL := NULL;',
'        :P394_V_NRO_FINAL := NULL;',
'        NULL;--alerta(''no se ha podido cargar el talonario existente ''||sqlerrm,'''',3,valerta);',
'    END;',
'  ELSIF nvl(vnro_ini, 0) > 1 THEN',
'  /*  seleccion := Show_Lov(''LV_TALONARIOS''); ',
'    IF NOT seleccion THEN ',
'      :P394_V_SERIE := NULL;',
'      :P394_V_NRO_INICIAL := NULL;',
'      :P394_V_NRO_FINAL := NULL;',
unistr('      alerta(''Debe seleccionar un valor de la lista para poder realizar una nueva transacci\00F3n.'','''',2,valerta); '),
'      Bell;',
'      raise alg_err;',
'    END IF; */NULL;',
'',
'  ELSIF nvl(vnro_ini, 0) = 0 THEN',
'    :P394_V_SERIE := NULL;',
'    :P394_V_NRO_INICIAL := NULL;',
'    :P394_V_NRO_FINAL := NULL;',
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
'    IF :P394_NRO_RECIBO IS NULL AND :P394_TIP_COMPROBANTE_REF <>''GIF'' THEN',
'      IF :P394_V_NRO_INICIAL IS NOT NULL AND :P394_V_NRO_FINAL IS NOT NULL THEN',
'        BEGIN',
'          Select nvl(max(nro_recibo), 0)',
'            into nro_recibo',
'            from cc_recibos',
'           where cod_empresa = :P_COD_EMPRESA',
'             and cod_sucursal = :P394_SUCURSAL  ',
'             and ser_recibo = :P394_V_SER_RECIBO',
'              and nro_recibo between :P394_V_NRO_INICIAL and :P394_V_NRO_FINAL',
'            and nro_recibo not in (14511400, 14511401); -- sacar esta linea luego.',
'          ',
'          IF nro_recibo >= :P394_V_NRO_FINAL THEN',
'            :P394_NRO_RECIBO := NULL;',
unistr('            /*alerta(''El n\00FAmero de recibo ha llegado hasta el final del talonario. ''||'),
unistr('                   ''Seleccione un nuevo talonario o comun\00EDquese con el ''||'),
'                   ''administrador del sistema para crear un nuevo talonario.'','''',2,valerta);',
'            raise algun_error;*/',
'          ELSIF nro_recibo <= :P394_V_NRO_INICIAL THEN',
'            :P394_NRO_RECIBO := :P394_V_NRO_INICIAL;',
'          ELSE',
'            :P394_NRO_RECIBO := nvl(:P394_NRO_RECIBO, :P394_V_NRO_INICIAL) + 1;',
'          END IF;',
'        EXCEPTION',
'          when algun_error then',
'            NULL;--raise algun_error;',
'          when others then',
'            :P394_NRO_RECIBO := 1;',
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
 p_id=>wwv_flow_imp.id(116826815495812561)
,p_process_sequence=>60
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_POST_QUERY_CAB'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P394_ANULACION_INICIAL := :P394_ANUL_REAL;',
':P394_V_P_REQUIERE_DETALLE := ''S'';',
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
 p_id=>wwv_flow_imp.id(116827217307812561)
,p_process_sequence=>70
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_WHEN_CREATE_RECORD'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P394_V_GENERA_MD := ''S'';',
':P394_ESTADO := ''P'';',
':P394_FECHA_RECIBO := SYSDATE;',
':P394_ANULADO := ''N'';',
':P394_V_P_REQUIERE_DETALLE := ''S'';',
':P394_TOTAL := 0;',
':P394_V_SER_CAMBIO := ''N'';',
'',
':P394_SER_RECIBO := :P394_V_SER_RECIBO;',
' ',
'',
':P394_TIP_RECIBO := :P394_V_TIPO_RECIBO;',
'',
'',
'',
'',
'',
' '))
,p_process_clob_language=>'PLSQL'
,p_process_when=>'P394_CONTROL_ORIGEN'
,p_process_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_process_when2=>'0'
);
wwv_flow_imp.component_end;
end;
/
