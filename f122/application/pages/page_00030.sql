prompt --application/pages/page_00030
begin
--   Manifest
--     PAGE: 00030
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
 p_id=>30
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>unistr('Registro de Garant\00EDa')
,p_alias=>unistr('REGISTRO-DE-GARANT\00CDA')
,p_step_title=>unistr('Registro de Garant\00EDa')
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function doDescarga(p_cod_empresa, p_nro_planilla, p_cod_cliente){',
'   var vURL = ''https://ngosaeca.com.py/reportes/rest_v2/reports/reports/STGARPROCER.pdf?''',
'            + ''P_COD_EMPRESA='' + p_cod_empresa + ''&P_NRO_PLANILLA='' + p_nro_planilla  + ''&P_COD_CLIENTE=''+ p_cod_cliente;',
'',
'    console.log(vURL);',
'    window.open(unescape(vURL.replace(/&amp;/g,''g'')),''_blank'');',
'}',
'',
'function doDescarga1(p_cod_empresa, p_tip_comprobante, p_ser_comprobante, p_nro_comprobante){',
'   var vURL = ''https://ngosaeca.com.py/reportes/rest_v2/reports/reports/VTCNDPRT.pdf?''',
'            + ''P_COD_EMPRESA='' + p_cod_empresa + ''&P_TIP_COMPROBANTE='' + p_tip_comprobante  + ''&P_SER_COMPROBANTE=''+ p_ser_comprobante  + ''&P_NRO_COMPROBANTE=''+ p_nro_comprobante;',
'',
'    console.log(vURL);',
'    window.open(unescape(vURL.replace(/&amp;/g,''g'')),''_blank'');',
'}',
'',
'function doDescarga2(p_cod_empresa, p_tip_comprobante, p_ser_comprobante, p_nro_comprobante){',
'   var vURL = ''https://ngosaeca.com.py/reportes/rest_v2/reports/reports/VTREMPREST.pdf?''',
'            + ''P_COD_EMPRESA='' + p_cod_empresa + ''&P_TIP_COMPROBANTE='' + p_tip_comprobante  + ''&P_SER_COMPROBANTE=''+ p_ser_comprobante  + ''&P_NRO_COMPROBANTE=''+ p_nro_comprobante;',
'',
'    console.log(vURL);',
'    window.open(unescape(vURL.replace(/&amp;/g,''g'')),''_blank'');',
'}'))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.btn_nuevo_registro{',
'    margin-top: 15px;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'MARIANABLA'
,p_last_upd_yyyymmddhh24miss=>'20220929164809'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10056020015544116)
,p_plug_name=>unistr('Registro de Garant\00EDa')
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(9696135224292703)
,p_plug_name=>'CABECERA'
,p_parent_plug_id=>wwv_flow_imp.id(10056020015544116)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(9700433782292746)
,p_plug_name=>'REPORTE'
,p_parent_plug_id=>wwv_flow_imp.id(9696135224292703)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT SEQ_ID,',
'       C001 cod_articulo,  ',
'       C002 CANTIDAD,   ',
'       C003 cod_art_corto,',
'       C004 descripcion,  ',
'       C005 COD_SUCURSAL,  ',
'       C006 fec_vencimiento, ',
'       C007 duracion_garantia,',
'       C008 TIP_COMPROBANTE,  ',
'       C009 SER_COMPROBANTE,  ',
'       C010 NRO_COMPROBANTE, ',
'       C011 cod_ean_real,',
'       C012 cant_prod,',
'       C013 nro_garantia,',
'       C014 cod_ean',
'   FROM APEX_COLLECTIONS',
'  WHERE COLLECTION_NAME = ''DETALLE_GAR''; '))
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
 p_id=>wwv_flow_imp.id(9700777266292749)
,p_max_row_count=>'1000000'
,p_no_data_found_message=>'No se han encontrado datos.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'javascript:$s(''P30_AUX_SEQ_ID'',''#SEQ_ID#'');'
,p_detail_link_text=>'<span aria-hidden="true" class="fa fa-edit"></span>'
,p_owner=>'MARIANABLA'
,p_internal_uid=>9700777266292749
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9700801535292750)
,p_db_column_name=>'SEQ_ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Seq Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10054562618544101)
,p_db_column_name=>'COD_ARTICULO'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>unistr('C\00F3digo Articulo')
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10054618963544102)
,p_db_column_name=>'CANTIDAD'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Cant. Art.'
,p_column_type=>'STRING'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10054758350544103)
,p_db_column_name=>'COD_ART_CORTO'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Cod Art Corto'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10054872132544104)
,p_db_column_name=>'DESCRIPCION'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>unistr('Descripci\00F3n Art\00EDculo')
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10054990117544105)
,p_db_column_name=>'COD_SUCURSAL'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Cod Sucursal'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10055078481544106)
,p_db_column_name=>'FEC_VENCIMIENTO'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Fec Vencimiento'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10055136680544107)
,p_db_column_name=>'DURACION_GARANTIA'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Duracion Garantia'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10055246979544108)
,p_db_column_name=>'TIP_COMPROBANTE'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Tip Comprobante'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10055330966544109)
,p_db_column_name=>'SER_COMPROBANTE'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Ser Comprobante'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10055424246544110)
,p_db_column_name=>'NRO_COMPROBANTE'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Nro Comprobante'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10055584853544111)
,p_db_column_name=>'COD_EAN'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>unistr('C\00F3digo EAN')
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10057686117544132)
,p_db_column_name=>'CANT_PROD'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Cant. Prod.'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10057712971544133)
,p_db_column_name=>'NRO_GARANTIA'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>unistr('Nro. Garant\00EDa')
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10506039214236710)
,p_db_column_name=>'COD_EAN_REAL'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Cod Ean Real'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(10064773215547309)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'100648'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'CANTIDAD:CANT_PROD:COD_ARTICULO:DESCRIPCION:'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(10870067050654758)
,p_report_id=>wwv_flow_imp.id(10064773215547309)
,p_name=>'Producto sin EAN'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'COD_EAN_REAL'
,p_operator=>'is null'
,p_condition_sql=>' (case when ("COD_EAN_REAL" is null) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# #APXWS_OP_NAME#'
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_row_font_color=>'#f44336'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(9697669854292718)
,p_plug_name=>'VARIABLES'
,p_parent_plug_id=>wwv_flow_imp.id(10056020015544116)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>40
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10057884221544134)
,p_plug_name=>'ING_CODIGO'
,p_parent_plug_id=>wwv_flow_imp.id(10056020015544116)
,p_region_template_options=>'#DEFAULT#:js-dialog-autoheight:js-dialog-size720x480'
,p_plug_template=>wwv_flow_imp.id(40120082745263659)
,p_plug_display_sequence=>50
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10059161943544147)
,p_plug_name=>'Ingresar Datos'
,p_parent_plug_id=>wwv_flow_imp.id(10057884221544134)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(14596683383343818)
,p_plug_name=>'Detalle'
,p_parent_plug_id=>wwv_flow_imp.id(10057884221544134)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT C001 EAN,',
'       C002 NRO_GARANTIA,',
'       C003 COD_ARTICULO',
'  FROM APEX_COLLECTIONS',
' WHERE COLLECTION_NAME = ''DETALLE_ARTICULO''',
'   AND C003 = :P30_AUX_COD_ARTICULO;       '))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P30_AUX_COD_ARTICULO'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Detalle'
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
 p_id=>wwv_flow_imp.id(14596756655343819)
,p_max_row_count=>'1000000'
,p_no_data_found_message=>unistr('No se han registrado garant\00EDas para el art\00EDculo &P30_AUX_COD_ARTICULO..')
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_search_bar=>'N'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_enable_mail_download=>'Y'
,p_owner=>'MARIANABLA'
,p_internal_uid=>14596756655343819
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14596832784343820)
,p_db_column_name=>'EAN'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'EAN'
,p_column_type=>'STRING'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14596983127343821)
,p_db_column_name=>'NRO_GARANTIA'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>unistr('N\00FAmero de Garantia')
,p_column_type=>'STRING'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14597034469343822)
,p_db_column_name=>'COD_ARTICULO'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>unistr('Art\00EDculo')
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(15149704412994447)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'151498'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'COD_ARTICULO:EAN:NRO_GARANTIA:'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(9699537793292737)
,p_button_sequence=>200
,p_button_plug_id=>wwv_flow_imp.id(9696135224292703)
,p_button_name=>'BUSCAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Buscar'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'btn_nuevo_registro'
,p_grid_new_row=>'N'
,p_grid_column=>12
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(10058274964544138)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(10057884221544134)
,p_button_name=>'CERRAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Cerrar'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(9697404661292716)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(10056020015544116)
,p_button_name=>'NUEVO_REGISTRO'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Nuevo Registro'
,p_button_position=>'EDIT'
,p_button_execute_validations=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(10508381602236733)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(10056020015544116)
,p_button_name=>'IMPRIMIR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Certificado'
,p_button_position=>'EDIT'
,p_button_execute_validations=>'N'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(9699684846292738)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(10056020015544116)
,p_button_name=>'GUARDAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Guardar'
,p_button_position=>'EDIT'
,p_warn_on_unsaved_changes=>null
,p_button_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(9699808848292740)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(10056020015544116)
,p_button_name=>'VOLVER'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Volver'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:22:&SESSION.::&DEBUG.:::'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9696270470292704)
,p_name=>'P30_COD_SUCURSAL'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(9696135224292703)
,p_prompt=>'Sucursal'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9696306604292705)
,p_name=>'P30_NRO_PLANILLA'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(9696135224292703)
,p_prompt=>'Nro. Planilla'
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
 p_id=>wwv_flow_imp.id(9696433647292706)
,p_name=>'P30_FECHA_SALIDA'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(9696135224292703)
,p_prompt=>'Fecha Salida'
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
 p_id=>wwv_flow_imp.id(9696514217292707)
,p_name=>'P30_FECHA_FACTURA'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(9696135224292703)
,p_prompt=>'Fecha Factura'
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
 p_id=>wwv_flow_imp.id(9696672568292708)
,p_name=>'P30_TIP_COMPROBANTE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(9696135224292703)
,p_prompt=>'Factura'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC2:FCR;FCR,ORT;ORT,FCO;FCO,REM;REM'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9696720880292709)
,p_name=>'P30_SER_COMPROBANTE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(9696135224292703)
,p_prompt=>'Serie'
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
 p_id=>wwv_flow_imp.id(9696805954292710)
,p_name=>'P30_NRO_COMPROBANTE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(9696135224292703)
,p_prompt=>unistr('N\00FAmero')
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
 p_id=>wwv_flow_imp.id(9696911168292711)
,p_name=>'P30_TIP_REMISION'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(9696135224292703)
,p_prompt=>unistr('Remisi\00F3n')
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC2:REM;REM,NIN;NIN'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9697079406292712)
,p_name=>'P30_SER_REMISION'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(9696135224292703)
,p_prompt=>'Serie'
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
 p_id=>wwv_flow_imp.id(9697143079292713)
,p_name=>'P30_NRO_REMISION'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(9696135224292703)
,p_prompt=>unistr('N\00FAmero')
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
 p_id=>wwv_flow_imp.id(9697252972292714)
,p_name=>'P30_COD_CLIENTE'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(9696135224292703)
,p_prompt=>'Cliente'
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
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9697337061292715)
,p_name=>'P30_COD_EMPLEADO'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(9696135224292703)
,p_prompt=>'Empleado'
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
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9697737248292719)
,p_name=>'P30_COD_EMPRESA'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(9697669854292718)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9697824923292720)
,p_name=>'P30_COD_USUARIO'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(9697669854292718)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9698290922292724)
,p_name=>'P30_COD_SUCURSAL_VAR'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(9697669854292718)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9698355986292725)
,p_name=>'P30_COD_USUARIO_NGO'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(9697669854292718)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9698439356292726)
,p_name=>'P30_COD_MODULO'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(9697669854292718)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9698501678292727)
,p_name=>'P30_COD_CLIENTE_OCA'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(9697669854292718)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9698611971292728)
,p_name=>'P30_TIP_REFERENCIAS'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(9697669854292718)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9698757378292729)
,p_name=>'P30_VENDEDOR_SERVICIOS'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(9697669854292718)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9698823822292730)
,p_name=>'P30_MENSAJE_CONTADO'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(9697669854292718)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9698913915292731)
,p_name=>'P30_MENSAJE_CREDITO'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(9697669854292718)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9699200969292734)
,p_name=>'P30_AUX_MSJ'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(9697669854292718)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9700565412292747)
,p_name=>'P30_NUMERO_INICIAL_6'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(9696135224292703)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9700671035292748)
,p_name=>'P30_NUMERO_INICIAL_12'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(9696135224292703)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10055771904544113)
,p_name=>'P30_ULTIMA_GARANTIA'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(9696135224292703)
,p_prompt=>unistr('\00DAltima Garant\00EDa')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10055907776544115)
,p_name=>'P30_OBSERVACION'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(9697669854292718)
,p_item_default=>'Producto sin EAN (texto rojo).'
,p_prompt=>unistr('Observaci\00F3n')
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
 p_id=>wwv_flow_imp.id(10056352940544119)
,p_name=>'P30_IG'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(9697669854292718)
,p_prompt=>'&nbsp'
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
 p_id=>wwv_flow_imp.id(10056844636544124)
,p_name=>'P30_NOM_EMPLEADO'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(9696135224292703)
,p_prompt=>'&nbsp'
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
 p_id=>wwv_flow_imp.id(10057401278544130)
,p_name=>'P30_NOM_SUCURSAL'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(9696135224292703)
,p_prompt=>'&nbsp'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
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
 p_id=>wwv_flow_imp.id(10057980934544135)
,p_name=>'P30_CODIGO_EAN'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(10059161943544147)
,p_prompt=>unistr('C\00F3digo EAN')
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
 p_id=>wwv_flow_imp.id(10058030499544136)
,p_name=>'P30_NRO_GARANTIA'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(10059161943544147)
,p_prompt=>unistr('Nro. Garant\00EDa')
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
 p_id=>wwv_flow_imp.id(10059212571544148)
,p_name=>'P30_AUX_SEQ_ID'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(10059161943544147)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10059417212544150)
,p_name=>'P30_AUX_CANTIDAD'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(10059161943544147)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10505183700236701)
,p_name=>'P30_AUX_CANT_REGISTRADOS'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(10059161943544147)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10505438871236704)
,p_name=>'P30_REGISTRADO'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(9697669854292718)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10505597476236705)
,p_name=>'P30_AUX_COD_ART_CORTO'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(10059161943544147)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10505683944236706)
,p_name=>'P30_AUX_COD_ARTICULO'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(10059161943544147)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10505861317236708)
,p_name=>'P30_AUX_MENSAJE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(10059161943544147)
,p_prompt=>'Mensaje'
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
 p_id=>wwv_flow_imp.id(10505966929236709)
,p_name=>'P30_AUX_COD_EAN_REAL'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(10059161943544147)
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
 p_id=>wwv_flow_imp.id(10506781589236717)
,p_name=>'P30_NOM_CLIENTE'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(9696135224292703)
,p_prompt=>'&nbsp'
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
 p_id=>wwv_flow_imp.id(10508632976236736)
,p_name=>'P30_AUX_IMPRIME_CERT'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(9697669854292718)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10508779131236737)
,p_name=>'P30_AUX_IMPRIME_REPS'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(9697669854292718)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10509198341236741)
,p_name=>'P30_AUX_VOLVER'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(9697669854292718)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(9699053660292732)
,p_name=>'DA_NRO_PLANILLA'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(9699684846292738)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9699139437292733)
,p_event_id=>wwv_flow_imp.id(9699053660292732)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P30_NRO_PLANILLA IS NULL THEN',
'    :P30_NRO_PLANILLA := INV.STGARPCE.nro_planilla(P_COD_EMPRESA => :P30_COD_EMPRESA);',
'END IF;    '))
,p_attribute_02=>'P30_NRO_PLANILLA,P30_COD_EMPRESA'
,p_attribute_03=>'P30_NRO_PLANILLA'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(9699328924292735)
,p_name=>'DA_MENSAJE'
,p_event_sequence=>20
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9699403934292736)
,p_event_id=>wwv_flow_imp.id(9699328924292735)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P30_AUX_MSJ.'
,p_attribute_02=>'Error'
,p_attribute_03=>'warning'
,p_attribute_04=>'fa-warning'
,p_attribute_06=>'Aceptar'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(9700231107292744)
,p_name=>'DA_BUSCAR'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(9699537793292737)
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'apex.item(''P30_COD_EMPLEADO'').getValue() !== '''' && apex.item(''P30_COD_SUCURSAL'').getValue() !== '''' && apex.item(''P30_SER_COMPROBANTE'').getValue() !== '''' && apex.item(''P30_NRO_COMPROBANTE'').getValue() !== '''''
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9700306190292745)
,p_event_id=>wwv_flow_imp.id(9700231107292744)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P30_TIP_COMPROBANTE IN ( ''FCR'',''FCO'') AND :P30_TIP_REMISION = ''NIN'' THEN		',
'        inv.stgarpce.busca_articulos(P_COD_EMPRESA       => :P30_COD_EMPRESA,',
'                                     P_COD_SUCURSAL      => :P30_COD_SUCURSAL,',
'                                     P_TIP_COMPROBANTE   => :P30_TIP_COMPROBANTE,',
'                                     P_SER_COMPROBANTE   => :P30_SER_COMPROBANTE,',
'                                     P_NRO_COMPROBANTE   => to_number(:P30_NRO_COMPROBANTE),',
'                                     P_NUMERO_INICIAL_6  => to_number(:P30_NUMERO_INICIAL_6),',
'                                     P_NUMERO_INICIAL_12 => to_number(:P30_NUMERO_INICIAL_12));',
'	ELSIF :P30_TIP_COMPROBANTE IN( ''FCR'',''FCO'')	AND :P30_TIP_REMISION =''REM'' THEN',
'	   inv.stgarpce.busca_articulos_rem_V2(P_COD_EMPRESA       => :P30_COD_EMPRESA,',
'                                           P_COD_SUCURSAL      => :P30_COD_SUCURSAL,',
'                                           P_TIP_COMPROBANTE   => :P30_TIP_COMPROBANTE,',
'                                           P_SER_COMPROBANTE   => :P30_SER_COMPROBANTE,',
'                                           P_NRO_COMPROBANTE   => to_number(:P30_NRO_COMPROBANTE),',
'                                           P_TIP_REMISION      => :P30_TIP_REMISION,',
'                                           P_SER_REMISION      => :P30_SER_REMISION,',
'                                           P_NRO_REMISION      => to_number(:P30_NRO_REMISION),',
'                                           P_NUMERO_INICIAL_6  => to_number(:P30_NUMERO_INICIAL_6),',
'                                           P_NUMERO_INICIAL_12 => to_number(:P30_NUMERO_INICIAL_12));',
'ELSIF :P30_TIP_COMPROBANTE = ''ORT'' THEN',
'	inv.stgarpce.busca_articulos_ot(P_COD_EMPRESA       => :P30_COD_EMPRESA,',
'                                    P_COD_SUCURSAL      => :P30_COD_SUCURSAL,',
'                                    P_TIP_COMPROBANTE   => :P30_TIP_COMPROBANTE,',
'                                    P_SER_COMPROBANTE   => :P30_SER_COMPROBANTE,',
'                                    P_NRO_COMPROBANTE   => to_number(:P30_NRO_COMPROBANTE));                        ',
'ELSIF :P30_TIP_COMPROBANTE = ''REM'' THEN',
'	inv.stgarpce.busca_articulos_rem(P_COD_EMPRESA       => :P30_COD_EMPRESA,',
'                                     P_COD_SUCURSAL      => :P30_COD_SUCURSAL,',
'                                     P_TIP_COMPROBANTE   => :P30_TIP_COMPROBANTE,',
'                                     P_SER_COMPROBANTE   => :P30_SER_COMPROBANTE,',
'                                     P_NRO_COMPROBANTE   => to_number(:P30_NRO_COMPROBANTE),',
'                                     P_NUMERO_INICIAL_6  => to_number(:P30_NUMERO_INICIAL_6),',
'                                     P_NUMERO_INICIAL_12 => to_number(:P30_NUMERO_INICIAL_12));',
'END IF;'))
,p_attribute_02=>'P30_TIP_COMPROBANTE,P30_TIP_REMISION'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10057531585544131)
,p_event_id=>wwv_flow_imp.id(9700231107292744)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>unistr('Debe ingresar un c\00F3digo de empleado.')
,p_attribute_02=>'Error'
,p_attribute_03=>'warning'
,p_attribute_04=>'fa-warning'
,p_attribute_06=>'Aceptar'
,p_client_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_client_condition_expression=>'apex.item(''P30_COD_EMPLEADO'').getValue() === '''' && apex.item(''P30_COD_SUCURSAL'').getValue() !== '''''
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10055638323544112)
,p_event_id=>wwv_flow_imp.id(9700231107292744)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(9700433782292746)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10506460771236714)
,p_event_id=>wwv_flow_imp.id(9700231107292744)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>unistr('Debe ingresar un c\00F3digo de sucursal.')
,p_attribute_02=>'Error'
,p_attribute_03=>'warning'
,p_attribute_04=>'fa-warning'
,p_attribute_06=>'Aceptar'
,p_client_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_client_condition_expression=>'apex.item(''P30_COD_EMPLEADO'').getValue() !== '''' && apex.item(''P30_COD_SUCURSAL'').getValue() === '''''
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10506586389236715)
,p_event_id=>wwv_flow_imp.id(9700231107292744)
,p_event_result=>'FALSE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>unistr('Debe ingresar un c\00F3digo de sucursal y un c\00F3digo de empleado.')
,p_attribute_02=>'Error'
,p_attribute_03=>'warning'
,p_attribute_04=>'fa-warning'
,p_attribute_06=>'Aceptar'
,p_client_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_client_condition_expression=>'apex.item(''P30_COD_EMPLEADO'').getValue() === '''' && apex.item(''P30_COD_SUCURSAL'').getValue() === '''''
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10960418545152804)
,p_event_id=>wwv_flow_imp.id(9700231107292744)
,p_event_result=>'FALSE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>unistr('Debe ingresar serie y n\00FAmero de comprobante.')
,p_attribute_02=>'Error'
,p_attribute_03=>'warning'
,p_attribute_04=>'fa-warning'
,p_attribute_06=>'Aceptar'
,p_client_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_client_condition_expression=>'apex.item(''P30_SER_COMPROBANTE'').getValue() === '''' || apex.item(''P30_NRO_COMPROBANTE'').getValue() === '''''
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(10056560660544121)
,p_name=>'DA_DESC_SUCURSAL'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P30_COD_SUCURSAL'
,p_bind_type=>'bind'
,p_bind_event_type=>'focusout'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10056630537544122)
,p_event_id=>wwv_flow_imp.id(10056560660544121)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    :P30_NOM_SUCURSAL := inv.stgarpce.desc_sucursal1(P_COD_EMPRESA  => :P30_COD_EMPRESA,',
'                                                     P_COD_SUCURSAL => :P30_COD_SUCURSAL);',
'END;                                                  '))
,p_attribute_02=>'P30_COD_EMPRESA,P30_COD_SUCURSAL'
,p_attribute_03=>'P30_NOM_SUCURSAL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(10056993553544125)
,p_name=>'DA_RECUPERA_FACTURA'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P30_NRO_COMPROBANTE'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'$v(''P30_SER_COMPROBANTE'') !== "" && $v(''P30_NRO_COMPROBANTE'') !== ""'
,p_bind_type=>'bind'
,p_bind_event_type=>'focusout'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10057084493544126)
,p_event_id=>wwv_flow_imp.id(10056993553544125)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    INV.STGARPCE.recupera_factura(P_NRO_COMPROBANTE => TO_NUMBER(:P30_NRO_COMPROBANTE), ',
'                                  P_TIP_COMPROBANTE => :P30_TIP_COMPROBANTE, ',
'                                  P_IG              => :P30_IG,',
'                                  P_COD_CLIENTE     => :P30_COD_CLIENTE,',
'                                  P_NOM_CLIENTE     => :P30_NOM_CLIENTE,',
'                                  P_FECHA_FACTURA   => :P30_FECHA_FACTURA,',
'                                  P_COD_EMPRESA     => :P30_COD_EMPRESA,',
'                                  P_SER_COMPROBANTE => :P30_SER_COMPROBANTE);',
'END;'))
,p_attribute_02=>'P30_NRO_COMPROBANTE,P30_TIP_COMPROBANTE,P30_COD_EMPRESA,P30_SER_COMPROBANTE,P30_IG,P30_COD_CLIENTE,P30_FECHA_FACTURA'
,p_attribute_03=>'P30_NOM_CLIENTE,P30_TIP_COMPROBANTE,P30_COD_CLIENTE,P30_FECHA_FACTURA,P30_IG'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10057151889544127)
,p_event_id=>wwv_flow_imp.id(10056993553544125)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>unistr('Debe ingresar serie y n\00FAmero de comprobante.')
,p_attribute_02=>'Error'
,p_attribute_03=>'warning'
,p_attribute_04=>'fa-warning'
,p_attribute_06=>'Aceptar'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(10057276700544128)
,p_name=>'DA_NOM_EMPLEADO'
,p_event_sequence=>70
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P30_COD_EMPLEADO'
,p_bind_type=>'bind'
,p_bind_event_type=>'focusout'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10057316055544129)
,p_event_id=>wwv_flow_imp.id(10057276700544128)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    :P30_NOM_EMPLEADO := inv.stgarpce.nom_empleado(P_COD_EMPRESA  => :P30_COD_EMPRESA,',
'                                                   P_COD_EMPLEADO => :P30_COD_EMPLEADO);',
'END;'))
,p_attribute_02=>'P30_COD_EMPRESA,P30_COD_EMPLEADO'
,p_attribute_03=>'P30_NOM_EMPLEADO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(10058400811544140)
,p_name=>'DA_ABRIR_REGION'
,p_event_sequence=>80
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P30_AUX_SEQ_ID'
,p_condition_element=>'P30_AUX_SEQ_ID'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10059328196544149)
,p_event_id=>wwv_flow_imp.id(10058400811544140)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    VEXISTE BOOLEAN;',
'BEGIN',
'    SELECT C001, -- cod_Articulo',
'           C002, -- cantidad',
'           C003, -- cod_Art_corto',
'           C011, -- cod_ean_real',
'           c012,  -- cant_reg',
'           c014',
'      INTO :P30_AUX_COD_ARTICULO,',
'           :P30_AUX_CANTIDAD,',
'           :P30_AUX_COD_ART_CORTO,',
'           :P30_AUX_COD_EAN_REAL,',
'           :P30_AUX_CANT_REGISTRADOS,',
'           :P30_CODIGO_EAN ',
'      FROM APEX_COLLECTIONS ',
'     WHERE COLLECTION_NAME = ''DETALLE_GAR''',
'       AND SEQ_ID = :P30_AUX_SEQ_ID;',
'',
'    VEXISTE := APEX_COLLECTION.COLLECTION_EXISTS (p_collection_name => ''DETALLE_ARTICULO'');',
'    IF VEXISTE THEN',
'        IF :P30_AUX_CANTIDAD = :P30_AUX_CANT_REGISTRADOS THEN',
'            :P30_AUX_MENSAJE := ''PRODUCTOS YA REGISTRADOS EN SU TOTALIDAD2'';',
'        ELSE',
'            :P30_AUX_MENSAJE := NULL;    ',
'        END IF;    ',
'    ELSE',
'        APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(P_COLLECTION_NAME => ''DETALLE_ARTICULO'');   ',
'        :P30_AUX_MENSAJE := NULL;  ',
'    END IF;    ',
'END;   '))
,p_attribute_02=>'P30_AUX_SEQ_ID,P30_AUX_CANTIDAD,P30_AUX_CANT_REGISTRADOS'
,p_attribute_03=>'P30_AUX_MENSAJE,P30_CODIGO_EAN,P30_AUX_COD_EAN_REAL,P30_AUX_CANTIDAD,P30_AUX_CANT_REGISTRADOS,P30_AUX_COD_ARTICULO,P30_AUX_COD_ART_CORTO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10058509719544141)
,p_event_id=>wwv_flow_imp.id(10058400811544140)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(10057884221544134)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14597284637343824)
,p_event_id=>wwv_flow_imp.id(10058400811544140)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(14596683383343818)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(10058625320544142)
,p_name=>'DA_CERRAR_REGION'
,p_event_sequence=>90
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(10058274964544138)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10508146708236731)
,p_event_id=>wwv_flow_imp.id(10058625320544142)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
' /*   FOR CC IN (SELECT SEQ_ID,',
'                       C001,  ',
'                       C002,   ',
'                       C003,',
'                       C004,  ',
'                       C005,  ',
'                       C006, ',
'                       C007,',
'                       C008,  ',
'                       C009,  ',
'                       C010, ',
'                       C011,',
'                       C012,',
'                       C013,',
'                       C014 ',
'                   FROM APEX_COLLECTIONS',
'                  WHERE COLLECTION_NAME = ''DETALLE_GAR''  ',
'                    AND SEQ_ID = :P30_AUX_SEQ_ID)',
'    LOOP                ',
'        APEX_COLLECTION.UPDATE_MEMBER(P_COLLECTION_NAME  => ''DETALLE_GAR'',',
'                                                  P_SEQ  =>  :P30_AUX_SEQ_ID,',
'                                                  P_C001 => CC.C001,',
'                                                  P_C002 => CC.C002, ',
'                                                  P_C003 => CC.C003,',
'                                                  P_C004 => CC.C004,',
'                                                  P_C005 => CC.C005,',
'                                                  P_C006 => CC.C006,',
'                                                  P_C007 => CC.C007,',
'                                                  P_C008 => CC.C008,',
'                                                  P_C009 => CC.C009,',
'                                                  P_C010 => CC.C010,',
'                                                  P_C011 => CC.C011,',
'                                         	      P_C012 => NVL(TO_NUMBER(CC.C012), 0) + TO_NUMBER(:P30_AUX_CANT_REGISTRADOS),',
'                                                  P_C013 => CC.C013,',
'                                                  P_C014 => CC.C014);                                          ',
'    END LOOP; */  ',
'    :P30_AUX_MENSAJE := NULL;                                        ',
'END;',
'',
''))
,p_attribute_02=>'P30_AUX_CANT_REGISTRADOS,P30_AUX_SEQ_ID'
,p_attribute_03=>'P30_AUX_MENSAJE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10058714114544143)
,p_event_id=>wwv_flow_imp.id(10058625320544142)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(10057884221544134)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10508235771236732)
,p_event_id=>wwv_flow_imp.id(10058625320544142)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(9700433782292746)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10960580616152805)
,p_event_id=>wwv_flow_imp.id(10058625320544142)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P30_AUX_CANT_REGISTRADOS'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(10058830217544144)
,p_name=>'DA_REGIONES'
,p_event_sequence=>100
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10058970122544145)
,p_event_id=>wwv_flow_imp.id(10058830217544144)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(10057884221544134)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10509600018236746)
,p_event_id=>wwv_flow_imp.id(10058830217544144)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(9699808848292740)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(10505280079236702)
,p_name=>'DA_COD_EAN'
,p_event_sequence=>110
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P30_CODIGO_EAN'
,p_bind_type=>'bind'
,p_bind_event_type=>'focusout'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10505371064236703)
,p_event_id=>wwv_flow_imp.id(10505280079236702)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    --WHEN NEW ITEM INSTANTE',
'    IF :P30_REGISTRADO = ''N'' THEN',
'        :P30_REGISTRADO := ''S'';',
'    END IF;',
'',
'    --KEY NEXT ITEM',
'    inv.stgarpce.corrobora_ean(P_CANTIDAD_REGISTRADOS => :P30_AUX_CANT_REGISTRADOS,',
'                               P_CANTIDAD             => :P30_AUX_CANTIDAD,',
'                               P_COD_EMPRESA          => :P30_COD_EMPRESA,',
'                               P_COD_ARTICULO         => :P30_AUX_COD_ARTICULO, ',
'                               P_COD_EAN              => :P30_CODIGO_EAN,',
'                               P_COD_ART_CORTO        => :P30_AUX_COD_ART_CORTO,',
'                               P_MENSAJE              => :P30_AUX_MENSAJE,',
'                               P_REGISTRADO           => :P30_REGISTRADO,',
'                               P_ALERT                => :P30_AUX_MSJ); ',
'END; '))
,p_attribute_02=>'P30_AUX_CANT_REGISTRADOS,P30_AUX_CANTIDAD,P30_COD_EMPRESA,P30_AUX_COD_ARTICULO,P30_CODIGO_EAN,P30_AUX_COD_ART_CORTO,P30_REGISTRADO'
,p_attribute_03=>'P30_CODIGO_EAN,P30_AUX_MENSAJE,P30_REGISTRADO,P30_AUX_MSJ'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10505754680236707)
,p_event_id=>wwv_flow_imp.id(10505280079236702)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P30_AUX_MSJ.'
,p_attribute_02=>'Error'
,p_attribute_03=>'warning'
,p_attribute_04=>'fa-warning'
,p_attribute_06=>'Aceptar'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P30_AUX_MSJ'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(10506203251236712)
,p_name=>'DA_NRO_GARANTIA'
,p_event_sequence=>120
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P30_NRO_GARANTIA'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'apex.item(''P30_AUX_CANT_REGISTRADOS'').getValue() < apex.item(''P30_AUX_CANTIDAD'').getValue() && apex.item(''P30_NRO_GARANTIA'').getValue() != '''''
,p_bind_type=>'bind'
,p_bind_event_type=>'focusout'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10506308396236713)
,p_event_id=>wwv_flow_imp.id(10506203251236712)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
unistr('    --Corrobora el nro de garant\00EDa y guarda el registro.'),
'    --APEX_DEBUG.ERROR(''GUARDE ''|| :P30_NRO_GARANTIA);',
'    inv.stgarpce.corrobora_nro_garantia(P_COD_EMPRESA          => :P30_COD_EMPRESA,',
'                                        P_TIP_COMPROBANTE      => :P30_TIP_COMPROBANTE,',
'                                        P_SER_COMPROBANTE      => :P30_SER_COMPROBANTE,',
'                                        P_NRO_COMPROBANTE      => TO_NUMBER(:P30_NRO_COMPROBANTE),',
'                                        P_TIP_REMISION         => :P30_TIP_REMISION,',
'                                        P_SER_REMISION         => :P30_SER_REMISION,',
'                                        P_NRO_REMISION         => TO_NUMBER(:P30_NRO_REMISION),',
'                                        P_COD_SUCURSAL         => :P30_COD_SUCURSAL,',
'                                        P_COD_EMPLEADO         => :P30_COD_EMPLEADO,',
'                                        P_COD_ARTICULO         => :P30_AUX_COD_ARTICULO,',
'                                        P_NRO_GARANTIA         => :P30_NRO_GARANTIA,',
'                                        P_COD_EAN_REAL         => :P30_AUX_COD_EAN_REAL,',
'                                        P_COD_EAN              => :P30_CODIGO_EAN,',
'                                        P_CANTIDAD             => TO_NUMBER(:P30_AUX_CANTIDAD),',
'                                        P_CANTIDAD_REGISTRADOS => :P30_AUX_CANT_REGISTRADOS,',
'                                        P_MENSAJE              => :P30_AUX_MENSAJE,',
'                                        P_ALERT                => :P30_AUX_MSJ,',
'                                        P_ULTIMA_GARANTIA      => :P30_ULTIMA_GARANTIA,',
'                                        P_REGISTRADO           => :P30_REGISTRADO,',
'                                        P_AUX_SEQ_ID           => :P30_AUX_SEQ_ID);  ',
'                                        ',
'END; '))
,p_attribute_02=>'P30_COD_EMPRESA,P30_TIP_COMPROBANTE,P30_SER_COMPROBANTE,P30_NRO_COMPROBANTE,P30_TIP_REMISION,P30_SER_REMISION,P30_NRO_REMISION,P30_COD_SUCURSAL,P30_COD_EMPLEADO,P30_AUX_COD_ARTICULO,P30_NRO_GARANTIA,P30_AUX_COD_EAN_REAL,P30_CODIGO_EAN,P30_AUX_CANTIDA'
||'D,P30_AUX_CANT_REGISTRADOS'
,p_attribute_03=>'P30_NRO_GARANTIA,P30_CODIGO_EAN,P30_AUX_CANT_REGISTRADOS,P30_AUX_MENSAJE,P30_AUX_MSJ,P30_ULTIMA_GARANTIA,P30_REGISTRADO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14597387486343825)
,p_event_id=>wwv_flow_imp.id(10506203251236712)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P30_AUX_MENSAJE := ''PRODUCTOS YA REGISTRADOS EN SU TOTALIDAD1'';'
,p_attribute_03=>'P30_AUX_MENSAJE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_client_condition_expression=>'apex.item(''P30_AUX_CANT_REGISTRADOS'').getValue() == apex.item(''P30_AUX_CANTIDAD'').getValue()'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14597175335343823)
,p_event_id=>wwv_flow_imp.id(10506203251236712)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(14596683383343818)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14597552207343827)
,p_event_id=>wwv_flow_imp.id(10506203251236712)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>unistr(':P30_AUX_MENSAJE := ''DEBE INGRESAR UN N\00DAMERO DE GARANT\00CDA'';')
,p_attribute_03=>'P30_AUX_MENSAJE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P30_NRO_GARANTIA'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14597491925343826)
,p_event_id=>wwv_flow_imp.id(10506203251236712)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(9700433782292746)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14597652386343828)
,p_event_id=>wwv_flow_imp.id(10506203251236712)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_FOCUS'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P30_CODIGO_EAN'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(10506815422236718)
,p_name=>'DA_TIP_COMPROBANTE'
,p_event_sequence=>130
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P30_TIP_COMPROBANTE'
,p_bind_type=>'bind'
,p_bind_event_type=>'focusout'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10506947425236719)
,p_event_id=>wwv_flow_imp.id(10506815422236718)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P30_AUX_MSJ := NULL;',
'IF :P30_TIP_COMPROBANTE = ''REM'' THEN',
unistr('	:P30_AUX_MSJ := ''No esta habilitado para el tipo de comprobante remisi\00F3n.'';'),
'END IF;    '))
,p_attribute_02=>'P30_TIP_COMPROBANTE'
,p_attribute_03=>'P30_AUX_MSJ'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10507054085236720)
,p_event_id=>wwv_flow_imp.id(10506815422236718)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P30_AUX_MSJ.'
,p_attribute_02=>unistr('Atenci\00F3n')
,p_attribute_03=>'information'
,p_attribute_04=>'fa-info-circle-o'
,p_attribute_06=>'Aceptar'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P30_AUX_MSJ'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(10507199888236721)
,p_name=>'DA_RECUPERA_REMISION'
,p_event_sequence=>140
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P30_NRO_REMISION'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'$v(''P30_SER_REMISION'') !== "" && $v(''P30_NRO_REMISION'') !== ""'
,p_bind_type=>'bind'
,p_bind_event_type=>'focusout'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10507258243236722)
,p_event_id=>wwv_flow_imp.id(10507199888236721)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    INV.STGARPCE.recupera_remision(P_COD_EMPRESA     => :P30_COD_EMPRESA,',
'                                   P_TIP_COMPROBANTE => :P30_TIP_COMPROBANTE,',
'                                   P_sER_COMPROBANTE => :P30_SER_COMPROBANTE,',
'                                   P_NRO_COMPROBANTE => TO_NUMBER(:P30_NRO_COMPROBANTE), ',
'                                   P_TIP_REMISION    => :P30_TIP_REMISION, ',
'                                   P_SER_REMISION    => :P30_SER_REMISION, ',
'                                   P_NRO_REMISION    => TO_NUMBER(:P30_NRO_REMISION), ',
'                                   P_IG              => :P30_IG,',
'                                   P_COD_CLIENTE     => :P30_COD_CLIENTE,',
'                                   P_NOM_CLIENTE     => :P30_NOM_CLIENTE,',
'                                   P_FECHA_FACTURA   => :P30_FECHA_FACTURA);',
'END;',
'',
''))
,p_attribute_02=>'P30_COD_EMPRESA,P30_NRO_COMPROBANTE,P30_TIP_REMISION,P30_SER_REMISION,P30_NRO_REMISION'
,p_attribute_03=>'P30_IG,P30_COD_CLIENTE,P30_NOM_CLIENTE,P30_FECHA_FACTURA'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10507359077236723)
,p_event_id=>wwv_flow_imp.id(10507199888236721)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>unistr('Debe ingresar serie y n\00FAmero de remisi\00F3n.')
,p_attribute_02=>'Error'
,p_attribute_03=>'warning'
,p_attribute_04=>'fa-warning'
,p_attribute_06=>'Aceptar'
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
 p_id=>wwv_flow_imp.id(10507498552236724)
,p_name=>'DA_ENABLE'
,p_event_sequence=>150
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P30_TIP_REMISION'
,p_condition_element=>'P30_TIP_REMISION'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'REM'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10507561597236725)
,p_event_id=>wwv_flow_imp.id(10507498552236724)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P30_SER_REMISION'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10507917587236729)
,p_event_id=>wwv_flow_imp.id(10507498552236724)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P30_NRO_REMISION'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10507655298236726)
,p_event_id=>wwv_flow_imp.id(10507498552236724)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P30_NRO_REMISION'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10507880882236728)
,p_event_id=>wwv_flow_imp.id(10507498552236724)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P30_SER_REMISION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(10508458468236734)
,p_name=>'DA_IMPRIMIR'
,p_event_sequence=>160
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(10508381602236733)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10508566154236735)
,p_event_id=>wwv_flow_imp.id(10508458468236734)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'	VTIPO varchar2(10);',
'	VCODVEND VARCHAR2(10);',
'BEGIN',
'    :P30_AUX_MSJ := NULL;',
'    :P30_AUX_IMPRIME_CERT := 2; ',
'    :P30_AUX_IMPRIME_REPS := 2; ',
'',
'    VTIPO := inv.stgarpce.cliente_final(P_COD_EMPRESA     => :P30_COD_EMPRESA,',
'                                        P_TIP_COMPROBANTE => :P30_TIP_COMPROBANTE,',
'                                        P_SER_COMPROBANTE => :P30_SER_COMPROBANTE,',
'                                        P_NRO_COMPROBANTE => TO_NUMBER(:P30_NRO_COMPROBANTE));',
'    VCODVEND := inv.stgarpce.COD_VEND(P_COD_EMPRESA     => :P30_COD_EMPRESA,',
'                                      P_TIP_COMPROBANTE => :P30_TIP_COMPROBANTE,',
'                                      P_SER_COMPROBANTE => :P30_SER_COMPROBANTE,',
'                                      P_NRO_COMPROBANTE => :P30_NRO_COMPROBANTE);',
'',
'    IF VTIPO = ''S'' THEN',
'        IF :P30_NRO_PLANILLA IS NULL THEN',
'            :P30_NRO_PLANILLA := inv.stgarpce.nro_planilla(P_COD_EMPRESA     => :P30_COD_EMPRESA,',
'                                                           P_TIP_COMPROBANTE => :P30_TIP_COMPROBANTE,',
'                                                           P_SER_COMPROBANTE => :P30_SER_COMPROBANTE,',
'                                                           P_NRO_COMPROBANTE => TO_NUMBER(:P30_NRO_COMPROBANTE));',
'        ',
'            IF :P30_NRO_PLANILLA IS NOT NULL THEN ',
'                :P30_AUX_IMPRIME_CERT := 1;  ',
'            ELSE ',
unistr('                :P30_AUX_MSJ := ''No se ha encontrado un n\00FAmero de planilla para ese pedido.'';'),
unistr('                --NULL;--RAISE_APPLICATION_ERROR(-20000, ''No se ha encontrado un n\00FAmero de planilla para ese pedido.'');'),
'            END IF;  ',
'        ELSE ',
'            :P30_AUX_IMPRIME_CERT := 1;    ',
'        END IF; ',
'',
'        IF VCODVEND IN (''193'',''194'',''196'',''197'') THEN',
'            DECLARE',
'            	DUMMY CHAR;',
'            BEGIN',
'                SELECT DISTINCT ''1''',
'                  INTO DUMMY',
'            	  FROM  inv.st_prestamo_prod',
'            	 WHERE cod_empresa = :P30_COD_EMPRESA',
'            	   AND tip_comprobante_ref = :P30_TIP_COMPROBANTE',
'            	   AND ser_comprobante_ref = :P30_SER_COMPROBANTE',
'            	   AND nro_comprobante_ref = :P30_NRO_COMPROBANTE; ',
'',
'                :P22_AUX_IMPRIME_REPS := 1;--LLAMA A LOS REPORTES vtremprest Y vtcndprt     ',
'            EXCEPTION',
'                WHEN OTHERS THEN',
'                    NULL;',
'            END;',
'        END IF;                                                   ',
'    ELSE ',
'        :P30_AUX_MSJ := ''Certificado solo para cliente final'';  ',
'    END IF;                                  ',
'EXCEPTION',
'    WHEN OTHERS THEN',
unistr('        :P30_AUX_MSJ := ''Ha ocurrido un error en la ejecuci\00F3n de reportes.'';   '),
'END; ',
''))
,p_attribute_02=>'P30_COD_EMPRESA,P30_TIP_COMPROBANTE,P30_SER_COMPROBANTE,P30_NRO_COMPROBANTE,P30_NRO_PLANILLA'
,p_attribute_03=>'P30_NRO_PLANILLA,P30_AUX_MSJ,P30_AUX_IMPRIME_CERT,P30_AUX_IMPRIME_REPS'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10508891057236738)
,p_event_id=>wwv_flow_imp.id(10508458468236734)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P30_AUX_MSJ.'
,p_attribute_02=>'Error'
,p_attribute_03=>'warning'
,p_attribute_04=>'fa-warning'
,p_attribute_06=>'Aceptar'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P30_AUX_MSJ'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10508998233236739)
,p_event_id=>wwv_flow_imp.id(10508458468236734)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'//REPORTE STGARPROCER',
'doDescarga(apex.item(''P30_COD_EMPRESA'').getValue(),apex.item(''P30_NRO_PLANILLA'').getValue(),apex.item(''P30_COD_CLIENTE'').getValue());'))
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P30_AUX_IMPRIME_CERT'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10509042127236740)
,p_event_id=>wwv_flow_imp.id(10508458468236734)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'//reporte VTCNDPRT  ',
'doDescarga1(apex.item(''P30_COD_EMPRESA'').getValue(),apex.item(''P30_TIP_COMPROBANTE'').getValue(),apex.item(''P30_SER_COMPROBANTE'').getValue(),apex.item(''P30_NRO_COMPROBANTE'').getValue());',
'',
'//REPORTES VTREMPREST ',
'doDescarga2(apex.item(''P30_COD_EMPRESA'').getValue(),apex.item(''P30_TIP_COMPROBANTE'').getValue(),apex.item(''P30_SER_COMPROBANTE'').getValue(),apex.item(''P30_NRO_COMPROBANTE'').getValue());',
''))
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P30_AUX_IMPRIME_REPS'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(10509250146236742)
,p_name=>'DA_ENABLE_VOLVER'
,p_event_sequence=>170
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P30_AUX_VOLVER'
,p_condition_element=>'P30_AUX_VOLVER'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'1'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10509396920236743)
,p_event_id=>wwv_flow_imp.id(10509250146236742)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(9699808848292740)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10509459039236744)
,p_event_id=>wwv_flow_imp.id(10509250146236742)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(9699808848292740)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(9697528977292717)
,p_process_sequence=>20
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_INIT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('--SI ES LLAMADO POR LA P\00C1GINA 22, USA LOS DATOS DE LA COLECCI\00D3N REGISTRO_GARANT\00CDA.'),
'DECLARE',
'    VCOD_SUCURSAL VARCHAR(10);',
'    VCOUNT NUMBER;',
'    VEXISTS BOOLEAN;',
'BEGIN ',
'    VEXISTS := APEX_COLLECTION.COLLECTION_EXISTS ( p_collection_name => ''REGISTRO_GARANTIA'');',
'',
'    IF VEXISTS THEN',
'        VCOUNT :=  APEX_COLLECTION.COLLECTION_MEMBER_COUNT( p_collection_name => ''REGISTRO_GARANTIA'');',
'        IF VCOUNT = 1 THEN ',
'            SELECT C001,',
'                   C002,',
'                   C003,',
'                   C004 ',
'              INTO :P30_TIP_COMPROBANTE,',
'                   :P30_SER_COMPROBANTE,',
'                   :P30_NRO_COMPROBANTE,',
'                   VCOD_SUCURSAL                    ',
'              FROM APEX_COLLECTIONS',
'             WHERE COLLECTION_NAME = ''REGISTRO_GARANTIA'';      ',
'',
'            :P30_COD_EMPLEADO := inv.stgarpce.buscar_empleado(P_COD_EMPRESA => :P30_COD_EMPRESA,',
'                                                              P_COD_USUARIO => :P30_COD_USUARIO); ',
'            :P30_COD_SUCURSAL := VCOD_SUCURSAL;',
'            :P30_NOM_SUCURSAL := inv.stgarpce.desc_sucursal(P_COD_EMPRESA  => :P30_COD_EMPRESA,',
'                                                            P_COD_SUCURSAL => VCOD_SUCURSAL);',
'',
'            INV.STGARPCE.recupera_factura(P_NRO_COMPROBANTE => TO_NUMBER(:P30_NRO_COMPROBANTE), ',
'                                          P_TIP_COMPROBANTE => :P30_TIP_COMPROBANTE, ',
'                                          P_IG              => :P30_IG,',
'                                          P_COD_CLIENTE     => :P30_COD_CLIENTE,',
'                                          P_NOM_CLIENTE     => :P30_NOM_CLIENTE,',
'                                          P_FECHA_FACTURA   => :P30_FECHA_FACTURA,',
'                                          P_COD_EMPRESA     => :P30_COD_EMPRESA,',
'                                          P_SER_COMPROBANTE => :P30_SER_COMPROBANTE);      ',
'            :P30_AUX_VOLVER := 1;                                                                                              ',
'        ELSE',
'            :P30_COD_EMPRESA := NVL(:P_COD_EMPRESA, ''1'');',
'            :P30_COD_USUARIO := NVL(:P_COD_USUARIO, :APP_USER);    ',
'            :P30_AUX_VOLVER := 2;    ',
'        END IF;',
'    ELSE',
'        :P30_COD_EMPRESA := NVL(:P_COD_EMPRESA, ''1'');',
'        :P30_COD_USUARIO := NVL(:P_COD_USUARIO, :APP_USER);',
'        :P30_AUX_VOLVER := 2;',
'    END IF;',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        NULL;                                                      ',
'END;',
'',
'--PRE_FORM',
'BEGIN',
'    :P_COD_MODULO := ''ST'';',
'    ',
'    --INICIALIZA GLOBALES',
'    :P30_COD_MODULO := :P_COD_MODULO;',
'    :P30_COD_SUCURSAL_VAR := :P_COD_SUCURSAL;',
'',
'    --PARAMETROS',
'    :P30_COD_CLIENTE_OCA    := INV.BS_BUSCA_PARAMETRO(:P30_COD_MODULO, ''COD_CLIENTE_OCASION'');',
'    :P30_TIP_REFERENCIAS    := INV.BS_BUSCA_PARAMETRO(:P30_COD_MODULO, ''TIP_REFERENCIAS'');',
'    :P30_VENDEDOR_SERVICIOS := INV.BS_BUSCA_PARAMETRO(:P30_COD_MODULO, ''VENDEDOR_SERVICIOS'');',
'    :P30_MENSAJE_CONTADO    := INV.BS_BUSCA_PARAMETRO(:P30_COD_MODULO, ''LEYENDA_CONTADO'');',
'    :P30_MENSAJE_CREDITO    := INV.BS_BUSCA_PARAMETRO(:P30_COD_MODULO, ''LEYENDA_CREDITO'');',
'END;',
'',
'--WHEN-CREATE-RECORD BLOQUE CABECERA',
'BEGIN',
'    :P30_TIP_REMISION := ''NIN'';',
'    :P30_FECHA_SALIDA := SYSDATE;',
'    IF :P30_TIP_COMPROBANTE IS NULL THEN',
'        :P30_TIP_COMPROBANTE := ''FCR'';',
'    END IF;    ',
'',
unistr('    --POST_QUERY BLOQUE CABECERA --> ESTO NO VA AC\00C1--\00BFSE EJECUTA CUANDO VIENE DE LA P 22?'),
'    /*inv.stgarpce.obtiene_cliente_fec_factura(P_COD_EMPRESA     => :P30_COD_EMPRESA,',
'                                             P_TIP_COMPROBANTE => :P30_TIP_COMPROBANTE,',
'                                             P_SER_COMPROBANTE => :P30_SER_COMPROBANTE,',
'                                             P_NRO_COMPROBANTE => to_number(:P30_NRO_COMPROBANTE),',
'                                             P_CLIENTE         => :P30_COD_CLIENTE,',
'                                             P_FECHA_FACTURA   => :P30_FECHA_FACTURA,',
'                                             P_MENSAJE         => :P30_AUX_MSJ);*/',
'END;',
'',
'',
''))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(10509907004236749)
,p_process_sequence=>30
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'CLEAR_COLLECTION_INIT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'   VEXISTS BOOLEAN;',
'BEGIN ',
'    VEXISTS := APEX_COLLECTION.COLLECTION_EXISTS ( p_collection_name => ''DETALLE_GAR'');',
'    IF VEXISTS THEN',
'        APEX_COLLECTION.TRUNCATE_COLLECTION(p_collection_name => ''DETALLE_GAR'');',
'    END IF;',
'END;  ',
'',
'DECLARE',
'   VEXISTE BOOLEAN;',
'BEGIN   ',
'    VEXISTE := APEX_COLLECTION.COLLECTION_EXISTS (p_collection_name => ''DETALLE_ARTICULO'');',
'    IF VEXISTE THEN',
'        APEX_COLLECTION.TRUNCATE_COLLECTION(p_collection_name => ''DETALLE_ARTICULO'');',
'    END IF;    ',
'END;        '))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(10056143549544117)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'CLEAR_SESSION'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(9697404661292716)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(10056275766544118)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'CLEAR_COLLECTION'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'   VEXISTS1 BOOLEAN;',
'   VEXISTS2 BOOLEAN;',
'BEGIN ',
'    VEXISTS1 := APEX_COLLECTION.COLLECTION_EXISTS ( p_collection_name => ''DETALLE_GAR'');',
'    VEXISTS2 := APEX_COLLECTION.COLLECTION_EXISTS ( p_collection_name => ''REGISTRO_GARANTIA'');',
'    ',
'    IF VEXISTS1 THEN',
'        APEX_COLLECTION.TRUNCATE_COLLECTION(p_collection_name => ''DETALLE_GAR'');',
'    END IF;',
'',
'    IF VEXISTS2 THEN',
'        APEX_COLLECTION.TRUNCATE_COLLECTION(p_collection_name => ''REGISTRO_GARANTIA'');',
'    END IF;',
'END;        ',
'',
'',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(9697404661292716)
);
wwv_flow_imp.component_end;
end;
/
