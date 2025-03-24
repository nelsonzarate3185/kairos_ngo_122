prompt --application/pages/page_00228
begin
--   Manifest
--     PAGE: 00228
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
 p_id=>228
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Verificacion de Margenes de Promociones FVMRGPRM'
,p_alias=>'VERIFICACION-DE-MARGENES-DE-PROMOCIONES-FVMRGPRM'
,p_step_title=>'Verificacion de Margenes de Promociones FVMRGPRM'
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
'}'))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.ui-dialog{',
'    width: 1500px !important;',
'    }'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'INV'
,p_last_upd_yyyymmddhh24miss=>'20240110083413'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(51564881267250240)
,p_plug_name=>unistr('Verificaci\00F3n de M\00E1rgenes de Promociones ')
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(51565315510250245)
,p_plug_name=>'COLEC_FV_PROMOS'
,p_parent_plug_id=>wwv_flow_imp.id(51564881267250240)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT seq_id,',
'       to_number(c001) NRO_PROMO,',
'       c002 COD_EMPRESA,',
'       c003 FECHA,',
'       c004 COD_MONEDA,',
'       c005 COD_USUARIO,',
'       c006 FECHA_ALTA,',
'       c007 TIPO_CAMBIO,',
'       c008 EVENTID,',
'       c009 FECHA_AUT_COMERCIAL,',
'       c010 USUARIO_AUT_COMERCIAL,',
'       c011 FECHA_AUT_ADMINISTRACION,',
'       c012 USUARIO_AUT_ADMINISTRACION,',
'       c013 FECHA_RECHAZO,',
'       c014 USUARIO_RECHAZO,',
'       c015 ESTADO,',
'       c016 CONTROL,',
'       c017 DESC_MONEDA,',
'       NULL DETALLE,',
'       NULL EDITAR,',
'       NULL IMPRIMIR',
'  FROM APEX_COLLECTIONS',
' WHERE COLLECTION_NAME = ''COLEC_FV_PROMO''',
'   AND (c016 = ''U'' OR c016 = ''I'' OR c016 IS NULL)',
' ORDER BY 2 DESC'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'COLEC_FV_PROMOS'
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
 p_id=>wwv_flow_imp.id(51565465102250246)
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
,p_internal_uid=>51565465102250246
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(51565557154250247)
,p_db_column_name=>'SEQ_ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Seq Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(51565731830250249)
,p_db_column_name=>'COD_EMPRESA'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Cod Empresa'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(51565893187250250)
,p_db_column_name=>'FECHA'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Fecha'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(52272809208438301)
,p_db_column_name=>'COD_MONEDA'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Cod Moneda'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(52272964084438302)
,p_db_column_name=>'COD_USUARIO'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Cod. Usuario'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(52273084852438303)
,p_db_column_name=>'FECHA_ALTA'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Fecha de Alta'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(52273162352438304)
,p_db_column_name=>'TIPO_CAMBIO'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Tipo de Cambio'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(52273236548438305)
,p_db_column_name=>'EVENTID'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Promo Nro.'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(52273302113438306)
,p_db_column_name=>'FECHA_AUT_COMERCIAL'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Fecha Aut Comercial'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(52273491212438307)
,p_db_column_name=>'USUARIO_AUT_COMERCIAL'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Usuario Aut. Comercial'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(52273525915438308)
,p_db_column_name=>'FECHA_AUT_ADMINISTRACION'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>unistr('Fecha Aut. Administraci\00F3n')
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(52273671843438309)
,p_db_column_name=>'USUARIO_AUT_ADMINISTRACION'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Usuario Aut. Administracion'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(52273700457438310)
,p_db_column_name=>'FECHA_RECHAZO'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Fecha Rechazo'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(52273832396438311)
,p_db_column_name=>'USUARIO_RECHAZO'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Usuario Rechazo'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(52273970038438312)
,p_db_column_name=>'ESTADO'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Estado'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(52274015762438313)
,p_db_column_name=>'CONTROL'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Control'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(52276811116438341)
,p_db_column_name=>'DESC_MONEDA'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'Moneda'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(52276959030438342)
,p_db_column_name=>'DETALLE'
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>'Detalle'
,p_column_link=>'javascript:$s(''P228_NRO_PROMO'',''#NRO_PROMO#'');'
,p_column_linktext=>'<span class="fa fa-search">'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(52958269835847814)
,p_db_column_name=>'EDITAR'
,p_display_order=>200
,p_column_identifier=>'T'
,p_column_label=>'Editar'
,p_column_link=>'javascript:$s(''P228_EDIT_DATA_CAB'',''#SEQ_ID#'');'
,p_column_linktext=>'<span aria-label="Edit"><span class="fa fa-edit" aria-hidden="true" title="Edit"></span></span>'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(58686600213224302)
,p_db_column_name=>'IMPRIMIR'
,p_display_order=>210
,p_column_identifier=>'U'
,p_column_label=>'Imprimir'
,p_column_link=>'f?p=&APP_ID.:242:&SESSION.::&DEBUG.:242:P242_NRO_PROMO:#NRO_PROMO#'
,p_column_linktext=>'<span class="fa fa-print" aria-hidden="true"></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(161538157928493220)
,p_db_column_name=>'NRO_PROMO'
,p_display_order=>220
,p_column_identifier=>'V'
,p_column_label=>'Nro Promo'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(52323491358590766)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'523235'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>5
,p_report_columns=>'NRO_PROMO:FECHA:DESC_MONEDA:EVENTID:TIPO_CAMBIO:ESTADO:COD_USUARIO:FECHA_ALTA:USUARIO_AUT_ADMINISTRACION:FECHA_AUT_ADMINISTRACION:USUARIO_AUT_COMERCIAL:FECHA_AUT_COMERCIAL:USUARIO_RECHAZO:FECHA_RECHAZO:DETALLE:EDITAR:IMPRIMIR:'
,p_sort_column_1=>'NRO_PROMO'
,p_sort_direction_1=>'DESC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(52222833325722161)
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
 p_id=>wwv_flow_imp.id(52274147434438314)
,p_plug_name=>'Detalle'
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>60
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(52274211157438315)
,p_plug_name=>'COLEC_FV_MARGEN_PROMO'
,p_parent_plug_id=>wwv_flow_imp.id(52274147434438314)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT seq_id,',
'       c001 COD_ARTICULO,',
'       c002 COD_ARTICULO_PROMO1,',
'       c003 COD_ARTICULO_PROMO2,',
'       TO_NUMBER(c004) PRECIO,',
'       c005 PORC_DTO,',
'       TO_NUMBER(c006) PRECIO_NETO,',
'       TO_NUMBER(c007) COSTO_ART,',
'       TO_NUMBER(c008) COSTO_PROMO1,',
'       TO_NUMBER(c009) UTILIDAD,',
'       c010 PORC_MARGEN,',
'       TO_NUMBER(c011) COSTO_PROMO2,',
'       c012 NRO_PROMO,',
'       c013 COD_EMPRESA,',
'       c014 COD_ART_CORTO,',
'       c015 PORC_MARGEN_MK,',
'       c016 CANTIDAD_MINIMA_COMPRA,',
'       c017 CANTIDAD_REGALO1,',
'       c018 CANTIDAD_REGALO2,',
'       c019 CONTROL,',
'       c020 ROW_ID,',
'       NULL EDITAR,',
'       NULL BORRAR,',
'       NULL DETALLE',
'  FROM APEX_COLLECTIONS',
' WHERE COLLECTION_NAME = ''COLEC_FV_MARGEN_PROMO''',
'   AND (c019 = ''U'' OR c019 = ''I'' OR c019 IS NULL)',
'   AND c012 = :P228_NRO_PROMO'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P228_NRO_PROMO_CAB'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'COLEC_FV_MARGEN_PROMO'
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
 p_id=>wwv_flow_imp.id(52274367762438316)
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
,p_internal_uid=>52274367762438316
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(52274504440438318)
,p_db_column_name=>'SEQ_ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Seq Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(52274619268438319)
,p_db_column_name=>'COD_ARTICULO'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>unistr('Cod. Art\00EDculo')
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(52274741060438320)
,p_db_column_name=>'COD_ARTICULO_PROMO1'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>unistr('Cod. Art\00EDculo Promo 1')
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(52274840725438321)
,p_db_column_name=>'COD_ARTICULO_PROMO2'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>unistr('Cod. Art\00EDculo Promo 2')
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(52275067180438323)
,p_db_column_name=>'PORC_DTO'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Dto. %'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(52275586742438328)
,p_db_column_name=>'PORC_MARGEN'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Markup Promo'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(52275782334438330)
,p_db_column_name=>'NRO_PROMO'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Nro Promo'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(52275886359438331)
,p_db_column_name=>'COD_EMPRESA'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Cod Empresa'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(52275921150438332)
,p_db_column_name=>'COD_ART_CORTO'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Cod Art Corto'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(52276077878438333)
,p_db_column_name=>'PORC_MARGEN_MK'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Margen Promo'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(52276185665438334)
,p_db_column_name=>'CANTIDAD_MINIMA_COMPRA'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Cantidad Compra'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(52276273318438335)
,p_db_column_name=>'CANTIDAD_REGALO1'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'Cantidad Regalo'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(52276333506438336)
,p_db_column_name=>'CANTIDAD_REGALO2'
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>'Cantidad Regalo 2'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(52276499126438337)
,p_db_column_name=>'CONTROL'
,p_display_order=>200
,p_column_identifier=>'T'
,p_column_label=>'Control'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(52276524129438338)
,p_db_column_name=>'ROW_ID'
,p_display_order=>210
,p_column_identifier=>'U'
,p_column_label=>'Row Id'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(52276662646438339)
,p_db_column_name=>'EDITAR'
,p_display_order=>220
,p_column_identifier=>'V'
,p_column_label=>'Editar'
,p_column_link=>'javascript:$s(''P228_EDIT_DATA_DET'',''#SEQ_ID#'');'
,p_column_linktext=>'<span aria-label="Edit"><span class="fa fa-edit" aria-hidden="true" title="Edit"></span></span>'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(52276733043438340)
,p_db_column_name=>'BORRAR'
,p_display_order=>230
,p_column_identifier=>'W'
,p_column_label=>'Borrar'
,p_column_link=>'javascript:$s(''P228_DELETE_DATA_DET'',''#SEQ_ID#'');'
,p_column_linktext=>'<span class="fa fa-trash-o">'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(58691344761224349)
,p_db_column_name=>'DETALLE'
,p_display_order=>240
,p_column_identifier=>'X'
,p_column_label=>'Detalle'
,p_column_link=>'javascript:$s(''P228_DET_DATA'',''#SEQ_ID#'');'
,p_column_linktext=>'<span class="fa fa-search">'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(208560114256354640)
,p_db_column_name=>'PRECIO_NETO'
,p_display_order=>250
,p_column_identifier=>'Y'
,p_column_label=>'Importe Neto'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(208560298239354641)
,p_db_column_name=>'COSTO_ART'
,p_display_order=>260
,p_column_identifier=>'Z'
,p_column_label=>'Costo Art'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(208560343691354642)
,p_db_column_name=>'COSTO_PROMO1'
,p_display_order=>270
,p_column_identifier=>'AA'
,p_column_label=>'Costo Promo1'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(208560406655354643)
,p_db_column_name=>'UTILIDAD'
,p_display_order=>280
,p_column_identifier=>'AB'
,p_column_label=>'Utilidad'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(208560530471354644)
,p_db_column_name=>'COSTO_PROMO2'
,p_display_order=>290
,p_column_identifier=>'AC'
,p_column_label=>'Costo Promo2'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(208560688924354645)
,p_db_column_name=>'PRECIO'
,p_display_order=>300
,p_column_identifier=>'AD'
,p_column_label=>'Precio Vta.'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(52324037841590775)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'523241'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>5
,p_report_columns=>'COD_ARTICULO:CANTIDAD_MINIMA_COMPRA:COD_ARTICULO_PROMO1:CANTIDAD_REGALO1:COD_ARTICULO_PROMO2:CANTIDAD_REGALO2:PRECIO:PORC_DTO:PRECIO_NETO:COSTO_ART:COSTO_PROMO1:COSTO_PROMO2:UTILIDAD:PORC_MARGEN:PORC_MARGEN_MK:DETALLE:EDITAR:BORRAR:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(208560759649354646)
,p_plug_name=>'resumen_COLEC_FV_MARGEN_PROMO'
,p_parent_plug_id=>wwv_flow_imp.id(52274147434438314)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select total_neto,costo_total_articulo,costo_total_promos,',
'costo_total,utilidad_total,',
'NVL(utilidad_total,0) / NVL(costo_total,1) * 100 markup_total,',
'NVL(utilidad_total,0) / NVL(total_neto,1) * 100 margen_total',
'from (SELECT  ',
'       sum(TO_NUMBER(c006) )total_neto,',
'       sum(TO_NUMBER(c007) )costo_total_articulo,',
'       sum(nvl(TO_NUMBER(c008),0) +nvl(TO_NUMBER(c011),0) )costo_total_promos,',
'sum(NVL( TO_NUMBER(c008),0)+NVL( TO_NUMBER(c011),0) +NVL(TO_NUMBER(c007),0)) costo_total ,',
'       sum(NVL( TO_NUMBER(c009),0))  utilidad_total',
'  FROM APEX_COLLECTIONS',
' WHERE COLLECTION_NAME = ''COLEC_FV_MARGEN_PROMO''',
'   AND (c019 = ''U'' OR c019 = ''I'' OR c019 IS NULL)',
'   AND c012 = :P228_NRO_PROMO)'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P228_NRO_PROMO_CAB'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'resumen_COLEC_FV_MARGEN_PROMO'
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
 p_id=>wwv_flow_imp.id(208560871745354647)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_search_bar=>'N'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_enable_mail_download=>'Y'
,p_owner=>'INV'
,p_internal_uid=>208560871745354647
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(217189460729088123)
,p_db_column_name=>'TOTAL_NETO'
,p_display_order=>10
,p_column_identifier=>'Y'
,p_column_label=>'Importe Total'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(217189522280088124)
,p_db_column_name=>'COSTO_TOTAL_ARTICULO'
,p_display_order=>20
,p_column_identifier=>'Z'
,p_column_label=>'Costo Total Articulo'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(217189621501088125)
,p_db_column_name=>'COSTO_TOTAL_PROMOS'
,p_display_order=>30
,p_column_identifier=>'AA'
,p_column_label=>'Costo Total Promos'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(217189793285088126)
,p_db_column_name=>'COSTO_TOTAL'
,p_display_order=>40
,p_column_identifier=>'AB'
,p_column_label=>'Costo Total'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(217189836345088127)
,p_db_column_name=>'UTILIDAD_TOTAL'
,p_display_order=>50
,p_column_identifier=>'AC'
,p_column_label=>'Utilidad Total'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(217189964954088128)
,p_db_column_name=>'MARKUP_TOTAL'
,p_display_order=>60
,p_column_identifier=>'AD'
,p_column_label=>'Markup Total'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(217190072572088129)
,p_db_column_name=>'MARGEN_TOTAL'
,p_display_order=>70
,p_column_identifier=>'AE'
,p_column_label=>'Margen Total'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(217210862984084574)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'2172109'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'TOTAL_NETO:COSTO_TOTAL_ARTICULO:COSTO_TOTAL_PROMOS:COSTO_TOTAL:UTILIDAD_TOTAL:MARKUP_TOTAL:MARGEN_TOTAL:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(52277592260438348)
,p_plug_name=>'Agregar/Editar Registro Cabecera'
,p_region_template_options=>'#DEFAULT#:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(52960048514847832)
,p_plug_name=>'Agregar/Editar Registro Detalle'
,p_region_template_options=>'#DEFAULT#:js-dialog-autoheight:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>70
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(58690411264224340)
,p_plug_name=>'Contenedor Det'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>80
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(52958089899847812)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_imp.id(52277592260438348)
,p_button_name=>'BTAGREGAR_EDITAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Agregar/Editar Registro'
,p_button_position=>'BOTTOM'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(55167930493894302)
,p_button_sequence=>150
,p_button_plug_id=>wwv_flow_imp.id(52960048514847832)
,p_button_name=>'BTAGREGAR_EDITAR_DET'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Agregar/Editar Registro Detalle'
,p_button_position=>'BOTTOM'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(52960822979847840)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(52274147434438314)
,p_button_name=>'BTABRIR_MODAL_DET'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Crear'
,p_button_position=>'COPY'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'u-color-20-bg'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(52277668508438349)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(51564881267250240)
,p_button_name=>'BTCREAR_CAB'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Crear'
,p_button_position=>'COPY'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'u-color-20-bg'
,p_icon_css_classes=>'fa-plus'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(60227608431608904)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(51564881267250240)
,p_button_name=>'BTGUARDAR_CAMBIOS'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Guardar Cambios'
,p_button_position=>'COPY'
,p_button_css_classes=>'u-color-20-bg'
,p_icon_css_classes=>'fa-save'
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
 p_id=>wwv_flow_imp.id(51564983890250241)
,p_name=>'P228_COD_MODULO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(51564881267250240)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(51565216378250244)
,p_name=>'P228_COD_SUCURSAL'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(51564881267250240)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(52274403232438317)
,p_name=>'P228_NRO_PROMO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(51565315510250245)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(52277317778438346)
,p_name=>'P228_EDIT_DATA_DET'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(52274211157438315)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(52277467890438347)
,p_name=>'P228_DELETE_DATA_DET'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(52274211157438315)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(52957088767847802)
,p_name=>'P228_NRO_PROMO_CAB'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(52277592260438348)
,p_prompt=>'Registro Nro.'
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
 p_id=>wwv_flow_imp.id(52957154605847803)
,p_name=>'P228_FECHA_PROMO_CAB'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(52277592260438348)
,p_item_default=>'TO_CHAR(SYSDATE, ''DD/MM/YYYY'')'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Fecha'
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
 p_id=>wwv_flow_imp.id(52957291471847804)
,p_name=>'P228_EVEN_ID_CAB'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(52277592260438348)
,p_prompt=>'Promo Nro.'
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
 p_id=>wwv_flow_imp.id(52957329674847805)
,p_name=>'P228_COD_MONEDA_CAB'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(52277592260438348)
,p_prompt=>'Cod. Moneda'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_MONEDAS_FVMRGPRM'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cod_moneda, ',
'       descripcion ',
'  from monedas ',
'order by descripcion'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_colspan=>6
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
 p_id=>wwv_flow_imp.id(52957459882847806)
,p_name=>'P228_TIPO_CAMBIO'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(52277592260438348)
,p_prompt=>'Tipo Cambio'
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
 p_id=>wwv_flow_imp.id(52957503271847807)
,p_name=>'P228_SIGNO'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(52277592260438348)
,p_prompt=>'Signo'
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
 p_id=>wwv_flow_imp.id(52957632947847808)
,p_name=>'P228_ESTADO'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(52277592260438348)
,p_item_default=>'CREADO'
,p_prompt=>'Estado'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:CREADO;CREADO,AUTORIZADO ADMINISTRACION;AUTORIZADOADM,AUTORIZADO COMERCIAL;AUTORIZADOCOM,RECHAZADO;RECHAZADO'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(52958190615847813)
,p_name=>'P228_EDIT_DATA_CAB'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(51565315510250245)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(52958528011847817)
,p_name=>'P228_MENSAJE_CAB'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(51565315510250245)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(52958904126847821)
,p_name=>'P228_CONTROL_CAB'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(51565315510250245)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(52960148062847833)
,p_name=>'P228_COD_ARTICULO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(52960048514847832)
,p_prompt=>unistr('Cod. Art\00EDculo')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_ARTICULOS_FVMRGPRM'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cod_articulo,',
'       cod_art_corto, ',
'       TRIM(descripcion)descripcion  ',
'  from st_articulos ',
' where cod_empresa = :P_COD_EMPRESA',
'   and nvl( estado, ''S'' ) <> ''N'' ',
'   and cod_rubro=''PR''',
' order by cod_articulo,descripcion',
'',
''))
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
,p_attribute_10=>'DESCRIPCION'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(52960251230847834)
,p_name=>'P228_CANTIDAD_ART'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(52960048514847832)
,p_prompt=>'Cantidad Compra'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(52960356438847835)
,p_name=>'P228_COD_ARTICULO_PROM_1'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(52960048514847832)
,p_prompt=>'Promo 1 Cod. Art.'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_ARTICULOS_FVMRGPRM'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cod_articulo,',
'       cod_art_corto, ',
'       TRIM(descripcion)descripcion  ',
'  from st_articulos ',
' where cod_empresa = :P_COD_EMPRESA',
'   and nvl( estado, ''S'' ) <> ''N'' ',
'   and cod_rubro=''PR''',
' order by cod_articulo,descripcion',
'',
''))
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
,p_attribute_10=>'DESCRIPCION'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(52960417244847836)
,p_name=>'P228_CANTIDAD_REG_1'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(52960048514847832)
,p_prompt=>'Cantidad Regalo 1'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(52960553441847837)
,p_name=>'P228_COD_ARTICULO_PROM_2'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(52960048514847832)
,p_prompt=>'Promo 2 Cod. Art.'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_ARTICULOS_FVMRGPRM'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cod_articulo,',
'       cod_art_corto, ',
'       TRIM(descripcion)descripcion  ',
'  from st_articulos ',
' where cod_empresa = :P_COD_EMPRESA',
'   and nvl( estado, ''S'' ) <> ''N'' ',
'   and cod_rubro=''PR''',
' order by cod_articulo,descripcion',
'',
''))
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
,p_attribute_10=>'DESCRIPCION'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(52960606757847838)
,p_name=>'P228_CANTIDAD_REG_2'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(52960048514847832)
,p_prompt=>'Cantidad Regalo 2'
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
 p_id=>wwv_flow_imp.id(52961143079847843)
,p_name=>'P228_COSTO_ART'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(52960048514847832)
,p_prompt=>'Costo Art.'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(52961265072847844)
,p_name=>'P228_PRECIO'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(52960048514847832)
,p_prompt=>'Precio Art.'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(52961322033847845)
,p_name=>'P228_MARGEN_PROMO'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(52960048514847832)
,p_prompt=>'Markup Promo'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(52961485843847846)
,p_name=>'P228_MARGEN_PROMO_MK'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(52960048514847832)
,p_prompt=>'Promo Margen'
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
 p_id=>wwv_flow_imp.id(52961876388847850)
,p_name=>'P228_PRECIO_NETO'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(52960048514847832)
,p_prompt=>'Precio Neto'
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
 p_id=>wwv_flow_imp.id(55167866535894301)
,p_name=>'P228_UTILIDAD'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(52960048514847832)
,p_prompt=>'Utilidad'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(55169888982894321)
,p_name=>'P228_CONTROL_DET'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(52274211157438315)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(55169921106894322)
,p_name=>'P228_PORC_DESC'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(52960048514847832)
,p_prompt=>'Dto. %'
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
 p_id=>wwv_flow_imp.id(58687026713224306)
,p_name=>'P228_COSTO_PROM_1'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(52960048514847832)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(58687223718224308)
,p_name=>'P228_COSTO_TOTAL'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(52960048514847832)
,p_prompt=>'Costo Total'
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
 p_id=>wwv_flow_imp.id(58687396302224309)
,p_name=>'P228_COSTO_PROM_2'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(52960048514847832)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(58687489351224310)
,p_name=>'P228_COSTO_PROMOS'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(52960048514847832)
,p_prompt=>'Costo Promos'
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
 p_id=>wwv_flow_imp.id(58688473150224320)
,p_name=>'P228_DESC_ART'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(52960048514847832)
,p_prompt=>unistr('Descripci\00F3n Art.')
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
 p_id=>wwv_flow_imp.id(58688509484224321)
,p_name=>'P228_DESC_ART_PROM_1'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(52960048514847832)
,p_prompt=>unistr('Descripci\00F3n Art. Promo 1')
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
 p_id=>wwv_flow_imp.id(58688641941224322)
,p_name=>'P228_DESC_ART_PROM_2'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(52960048514847832)
,p_prompt=>unistr('Descripci\00F3n Art. Promo 2')
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
 p_id=>wwv_flow_imp.id(58690575492224341)
,p_name=>'P228_DESC_ART_DET'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(58690411264224340)
,p_prompt=>unistr('Desc. Art\00EDculo')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_colspan=>6
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(58690634908224342)
,p_name=>'P228_COD_ART_DET'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(58690411264224340)
,p_prompt=>unistr('Cod. Art\00EDculo')
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
 p_id=>wwv_flow_imp.id(58690707647224343)
,p_name=>'P228_GRAVADA_DET'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(58690411264224340)
,p_prompt=>'Precio s/IVA'
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
 p_id=>wwv_flow_imp.id(58690873602224344)
,p_name=>'P228_DESC_PROM1_DET'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(58690411264224340)
,p_prompt=>'Desc. Art. Promo 1'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_colspan=>6
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(58690903905224345)
,p_name=>'P228_COSTO_PROM1_DET'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(58690411264224340)
,p_prompt=>'Costo Promo 1'
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
 p_id=>wwv_flow_imp.id(58691073444224346)
,p_name=>'P228_IVA_DET'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(58690411264224340)
,p_prompt=>'IVA'
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
 p_id=>wwv_flow_imp.id(58691138159224347)
,p_name=>'P228_DESC_PROM2_DET'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(58690411264224340)
,p_prompt=>'Desc. Art. Promo 2'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_colspan=>6
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(58691286984224348)
,p_name=>'P228_COSTO_PROM2_DET'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(58690411264224340)
,p_prompt=>'Costo Promo 2'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
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
 p_id=>wwv_flow_imp.id(58691485555224350)
,p_name=>'P228_DET_DATA'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(52274211157438315)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(61198937832587502)
,p_name=>'P228_AUTORIZA_COMERCIAL'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(51564881267250240)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(61199021876587503)
,p_name=>'P228_VERIFICACION_BRAND'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(51564881267250240)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(61199110234587504)
,p_name=>'P228_AUTORIZA_MKT'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(51564881267250240)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(61199492738587507)
,p_name=>'P228_MENSAJE_AUT_COM'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(51564881267250240)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(61199567830587508)
,p_name=>'P228_MENSAJE_AUT_MKT'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(51564881267250240)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(161538256000493221)
,p_name=>'P228_STOCK_OPERATIVO'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(58690411264224340)
,p_prompt=>'Stock Operativo'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(161538352057493222)
,p_name=>'P228_STOCK_ZP'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(58690411264224340)
,p_prompt=>'Zona Primaria'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
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
 p_id=>wwv_flow_imp.id(161538483348493223)
,p_name=>'P228_STOCK_TRANSITO'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(58690411264224340)
,p_prompt=>'En Transito'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(52277061432438343)
,p_name=>'DA_REFRESH'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P228_NRO_PROMO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(52277181187438344)
,p_event_id=>wwv_flow_imp.id(52277061432438343)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P228_NRO_PROMO'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(52277249104438345)
,p_event_id=>wwv_flow_imp.id(52277061432438343)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(52274211157438315)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(217189389432088122)
,p_event_id=>wwv_flow_imp.id(52277061432438343)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(208560759649354646)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(52277771422438350)
,p_name=>'DA_ABRIR_MODAL_CAB'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(52277668508438349)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(52959236702847824)
,p_event_id=>wwv_flow_imp.id(52277771422438350)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P228_COD_MONEDA_CAB,P228_MENSAJE_CAB,P228_EDIT_DATA_CAB,P228_CONTROL_CAB'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(52957774054847809)
,p_event_id=>wwv_flow_imp.id(52277771422438350)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    SELECT NVL(MAX(TO_NUMBER(c001)),0) + 1',
'      INTO :P228_NRO_PROMO_CAB',
'      FROM APEX_COLLECTIONS',
'     WHERE COLLECTION_NAME = ''COLEC_FV_PROMO''',
'       AND  c002 = :P_COD_EMPRESA;',
'',
'    SELECT NVL(MAX(TO_NUMBER(c008)),0) + 1',
'      INTO :P228_EVEN_ID_CAB',
'      FROM APEX_COLLECTIONS',
'     WHERE COLLECTION_NAME = ''COLEC_FV_PROMO''',
'       AND  c002 = :P_COD_EMPRESA;   ',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_ABRIR_MODAL_ADD ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P_COD_EMPRESA'
,p_attribute_03=>'P228_NRO_PROMO_CAB,P228_EVEN_ID_CAB'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(52956904827847801)
,p_event_id=>wwv_flow_imp.id(52277771422438350)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(52277592260438348)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(52957851891847810)
,p_name=>'DA_MONEDA'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P228_COD_MONEDA_CAB'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(52957922964847811)
,p_event_id=>wwv_flow_imp.id(52957851891847810)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    SELECT TIPO_CAMBIO_DIA,',
'           SIGLAS',
'      INTO :P228_TIPO_CAMBIO,',
'           :P228_SIGNO',
'      FROM MONEDAS',
'     WHERE COD_MONEDA = :P228_COD_MONEDA_CAB;',
'',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'    :P228_TIPO_CAMBIO := NULL;',
'    :P228_SIGNO := NULL;',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_MONEDA ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P228_COD_MONEDA_CAB'
,p_attribute_03=>'P228_TIPO_CAMBIO,P228_SIGNO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(52958375128847815)
,p_name=>'DA_ABRIR_MODAL_EDIT'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P228_EDIT_DATA_CAB'
,p_condition_element=>'P228_EDIT_DATA_CAB'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(52959145595847823)
,p_event_id=>wwv_flow_imp.id(52958375128847815)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P228_NRO_PROMO_CAB'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(52958421712847816)
,p_event_id=>wwv_flow_imp.id(52958375128847815)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P228_EDIT_DATA_CAB'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(52958685737847818)
,p_event_id=>wwv_flow_imp.id(52958375128847815)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'VESTADO VARCHAR2(100);',
'BEGIN',
'    SELECT c015',
'      INTO VESTADO',
'      FROM APEX_COLLECTIONS',
'     WHERE COLLECTION_NAME = ''COLEC_FV_PROMO''',
'       AND seq_id = :P228_EDIT_DATA_CAB;',
'',
'    IF VESTADO = ''CREADO'' THEN',
'        :P228_MENSAJE_CAB := NULL;',
'        :P228_CONTROL_CAB := 1;',
'',
'        FVMRGPRM.CARGAR_DATOS_EDIT(pedit_data  => :P228_EDIT_DATA_CAB,',
'                                   pnro_promo  => :P228_NRO_PROMO_CAB,',
'                                   pfecha      => :P228_FECHA_PROMO_CAB,',
'                                   pcod_moneda => :P228_COD_MONEDA_CAB,',
'                                   pestado     => :P228_ESTADO);',
'',
'    ELSE',
'        :P228_MENSAJE_CAB := ''No se puede modificar el registro ya que el estado es autorizado y/o rechazado.'';',
'        :P228_CONTROL_CAB := 0;',
'    END IF;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_ABRIR_MODAL_EDIT ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P228_EDIT_DATA_CAB'
,p_attribute_03=>'P228_MENSAJE_CAB,P228_CONTROL_CAB,P228_NRO_PROMO_CAB,P228_FECHA_PROMO_CAB,P228_COD_MONEDA_CAB,P228_ESTADO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(52959060113847822)
,p_event_id=>wwv_flow_imp.id(52958375128847815)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(52277592260438348)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P228_CONTROL_CAB'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(52958756844847819)
,p_name=>'DA_MENSAJE_CAB'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P228_MENSAJE_CAB'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(52958802026847820)
,p_event_id=>wwv_flow_imp.id(52958756844847819)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P228_MENSAJE_CAB.'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P228_MENSAJE_CAB'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(52959306956847825)
,p_name=>'DA_AGREGAR_EDITAR'
,p_event_sequence=>60
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(52958089899847812)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(52959462742847826)
,p_event_id=>wwv_flow_imp.id(52959306956847825)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P228_NRO_PROMO_CAB,P228_EVEN_ID_CAB,P228_COD_MONEDA_CAB,P228_TIPO_CAMBIO,P228_ESTADO'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(52959538535847827)
,p_event_id=>wwv_flow_imp.id(52959306956847825)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    FVMRGPRM.ADD_COL_CAB(pcod_empresa => :P_COD_EMPRESA,',
'                         pnro_promo   => :P228_NRO_PROMO_CAB,',
'                         pcod_moneda  => :P228_COD_MONEDA_CAB,',
'                         pestado      => :P228_ESTADO,',
'                         pcod_usuario => :P_COD_USUARIO,',
'                         ptipo_cambio => :P228_TIPO_CAMBIO,',
'                         pevent_id    => :P228_EVEN_ID_CAB);',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_AGREGAR_EDITAR ADD_COL ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P_COD_EMPRESA,P228_NRO_PROMO_CAB,P228_COD_MONEDA_CAB,P228_ESTADO,P_COD_USUARIO,P228_TIPO_CAMBIO,P228_EVEN_ID_CAB'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P228_EDIT_DATA_CAB'
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
 p_id=>wwv_flow_imp.id(52959806174847830)
,p_event_id=>wwv_flow_imp.id(52959306956847825)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    FVMRGPRM.EDIT_COL_CAB(pseq_id      => :P228_EDIT_DATA_CAB,',
'                          pcod_moneda  => :P228_COD_MONEDA_CAB,',
'                          ptipo_cambio => :P228_TIPO_CAMBIO);',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_AGREGAR_EDITAR EDIT_COL ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P228_EDIT_DATA_CAB,P228_COD_MONEDA_CAB,P228_TIPO_CAMBIO'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P228_EDIT_DATA_CAB'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(61199372248587506)
,p_event_id=>wwv_flow_imp.id(52959306956847825)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'verrorpREPEDIDO EXCEPTION;',
'VERROR EXCEPTION;',
'verrorVERIFICACION EXCEPTION;',
'verrorAUTORIZA_MKT EXCEPTION;',
'verrorAUTORIZA_COMERCIAL EXCEPTION;',
'verrorPresupuesta EXCEPTION;',
'vestado_pasar EXCEPTION;',
'BEGIN',
'    :P228_MENSAJE_AUT_COM := NULL;',
'    :P228_MENSAJE_AUT_MKT := NULL;',
'',
'    IF NVL(:P228_AUTORIZA_COMERCIAL,''N'') <> ''S'' AND NVL(:P228_ESTADO, ''P'') = ''AUTORIZADOCOM'' THEN',
'        RAISE verrorAUTORIZA_COMERCIAL;',
'    END IF;',
'',
'    IF NVL(:P228_AUTORIZA_MKT,''N'') <> ''S'' AND NVL(:P228_ESTADO, ''P'') = ''AUTORIZADOMKT'' THEN',
'        RAISE verrorAUTORIZA_MKT;',
'    END IF;',
'',
'    IF NVL(:P228_AUTORIZA_COMERCIAL,''N'') <> ''S'' AND NVL(:P228_ESTADO, ''P'') = ''VERIFICADO'' THEN',
'        RAISE verrorAUTORIZA_MKT;',
'    END IF;',
'APEX_DEBUG.ERROR(''ENTRA AL PROCESO DE CAMBIAR DE ESTADO CON EL NRO_PROMO ''||:P228_NRO_PROMO_CAB);',
'    FVMRGPRM.CAMBIAR_ESTADO_CAB(pnro_promo => :P228_NRO_PROMO_CAB,',
'                                pestado    => :P228_ESTADO,',
'                                pusuario   => :P_COD_USUARIO);',
'',
'EXCEPTION',
'    WHEN verrorAUTORIZA_COMERCIAL THEN',
'    :P228_MENSAJE_AUT_COM := ''No tiene permismo para cambiar de estado'';',
'    WHEN verrorAUTORIZA_MKT THEN',
'    :P228_MENSAJE_AUT_MKT := ''No tiene permismo para cambiar de estado'';',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_CAMBIA_ESTADO ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P228_ESTADO,P228_NRO_PROMO_CAB,P228_ESTADO,P_COD_USUARIO'
,p_attribute_03=>'P228_MENSAJE_AUT_COM ,P228_MENSAJE_AUT_MKT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P228_EDIT_DATA_CAB'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(52959736332847829)
,p_event_id=>wwv_flow_imp.id(52959306956847825)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(52277592260438348)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(52959633458847828)
,p_event_id=>wwv_flow_imp.id(52959306956847825)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(51565315510250245)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(52960979369847841)
,p_name=>'DA_ABRIR_MODAL_DET'
,p_event_sequence=>70
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(52960822979847840)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(55168722284894310)
,p_event_id=>wwv_flow_imp.id(52960979369847841)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P228_EDIT_DATA_DET,P228_COD_ARTICULO,P228_CANTIDAD_ART,P228_COSTO_ART,P228_PRECIO,P228_PRECIO_NETO,P228_MARGEN_PROMO,P228_MARGEN_PROMO_MK,P228_UTILIDAD,P228_COD_ARTICULO_PROM_1,P228_CANTIDAD_REG_1,P228_COD_ARTICULO_PROM_2,P228_CANTIDAD_REG_2,P228_COS'
||'TO_TOTAL,P228_COSTO_PROM_1,P228_COSTO_PROM_2'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(52961093364847842)
,p_event_id=>wwv_flow_imp.id(52960979369847841)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(52960048514847832)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(52961582721847847)
,p_name=>'DA_CALCULAR'
,p_event_sequence=>80
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P228_COD_ARTICULO'
,p_condition_element=>'P228_COD_ARTICULO'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(52961645348847848)
,p_event_id=>wwv_flow_imp.id(52961582721847847)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P228_COD_ARTICULO'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(52961795651847849)
,p_event_id=>wwv_flow_imp.id(52961582721847847)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    FVMRGPRM.CALCULAR_ART(pcod_articulo   => :P228_COD_ARTICULO,',
'                          pcod_empresa    => :P_COD_EMPRESA,',
'                          pcantidad_min   => :P228_CANTIDAD_ART,',
'                          pnro_promo      => :P228_NRO_PROMO,',
'                          pcosto_prom1    => :P228_COSTO_PROM_1,',
'                          pcosto_prom2    => :P228_COSTO_PROM_2,',
'                                            P_DESCUENTO    => :P228_PORC_DESC,      ',
'                          pcosto_total    => :P228_COSTO_TOTAL,',
'                                  ',
'                          putil           => :P228_UTILIDAD,',
'                          pcosto_art      => :P228_COSTO_ART,',
'                          pprecio         => :P228_PRECIO,',
'                          pprecio_neto    => :P228_PRECIO_NETO,',
'                          pporc_margen    => :P228_MARGEN_PROMO,',
'                          pporc_margen_mk => :P228_MARGEN_PROMO_MK,',
'                          pcosto_promos   => :P228_COSTO_PROMOS);',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_CALCULAR ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P228_COD_ARTICULO,P_COD_EMPRESA,P228_CANTIDAD_ART,P228_NRO_PROMO,P228_COSTO_PROM_1,P228_PORC_DESC'
,p_attribute_03=>'P228_COSTO_ART,P228_PRECIO,P228_PRECIO_NETO,P228_MARGEN_PROMO,P228_MARGEN_PROMO_MK,P228_COSTO_TOTAL,P228_UTILIDAD,P228_COSTO_PROMOS'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(58687584642224311)
,p_name=>'DA_CALCULAR_1'
,p_event_sequence=>90
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P228_CANTIDAD_ART'
,p_condition_element=>'P228_CANTIDAD_ART'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(58687601315224312)
,p_event_id=>wwv_flow_imp.id(58687584642224311)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P228_COD_ARTICULO'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(58687728025224313)
,p_event_id=>wwv_flow_imp.id(58687584642224311)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    FVMRGPRM.CALCULAR_ART(pcod_articulo   => :P228_COD_ARTICULO,',
'                          pcod_empresa    => :P_COD_EMPRESA,',
'                          pcantidad_min   => :P228_CANTIDAD_ART,',
'                          pnro_promo      => :P228_NRO_PROMO,',
'                          pcosto_prom1    => :P228_COSTO_PROM_1,',
'                          pcosto_prom2    => :P228_COSTO_PROM_2,',
'                                P_DESCUENTO    => :P228_PORC_DESC,   ',
'                          pcosto_total    => :P228_COSTO_TOTAL,',
'                       ',
'                          putil           => :P228_UTILIDAD,',
'                          pcosto_art      => :P228_COSTO_ART,',
'                          pprecio         => :P228_PRECIO,',
'                          pprecio_neto    => :P228_PRECIO_NETO,',
'                          pporc_margen    => :P228_MARGEN_PROMO,',
'                          pporc_margen_mk => :P228_MARGEN_PROMO_MK,',
'                          pcosto_promos   => :P228_COSTO_PROMOS);',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_CALCULAR ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P228_COD_ARTICULO,P_COD_EMPRESA,P228_CANTIDAD_ART,P228_NRO_PROMO,P228_COSTO_PROM_1,P228_PORC_DESC'
,p_attribute_03=>'P228_COSTO_ART,P228_PRECIO,P228_PRECIO_NETO,P228_MARGEN_PROMO,P228_MARGEN_PROMO_MK,P228_COSTO_TOTAL,P228_UTILIDAD,P228_COSTO_PROMOS'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(208559867298354637)
,p_name=>'DA_CALCULAR_porc_desc'
,p_event_sequence=>100
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P228_PORC_DESC,P228_PRECIO'
,p_condition_element=>'P228_PRECIO'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(208559971103354638)
,p_event_id=>wwv_flow_imp.id(208559867298354637)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P228_COD_ARTICULO'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(208560018639354639)
,p_event_id=>wwv_flow_imp.id(208559867298354637)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'vprecio number;',
'BEGIN',
'    FVMRGPRM.CALCULAR_ART_DESCUENTO(pcod_articulo   => :P228_COD_ARTICULO,',
'                          pcod_empresa    => :P_COD_EMPRESA,',
'                          pcantidad_min   => :P228_CANTIDAD_ART,',
'                          pnro_promo      => :P228_NRO_PROMO,',
'                          pcosto_prom1    => :P228_COSTO_PROM_1,',
'                          pcosto_prom2    => :P228_COSTO_PROM_2,',
'                                P_DESCUENTO    => nvl(:P228_PORC_DESC,0),   ',
'                          pcosto_total    => :P228_COSTO_TOTAL,',
'                       ',
'                          putil           => :P228_UTILIDAD,',
'                          pcosto_art      => :P228_COSTO_ART,',
'                          pprecio         => :P228_PRECIO,',
'                          pprecio_neto    =>  :P228_PRECIO_NETO,',
'                          pporc_margen    => :P228_MARGEN_PROMO,',
'                          pporc_margen_mk => :P228_MARGEN_PROMO_MK,',
'                          pcosto_promos   => :P228_COSTO_PROMOS);',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_CALCULAR ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P228_COD_ARTICULO,P_COD_EMPRESA,P228_CANTIDAD_ART,P228_NRO_PROMO,P228_COSTO_PROM_1,P228_PORC_DESC,P228_PRECIO'
,p_attribute_03=>'P228_COSTO_ART,P228_PRECIO_NETO,P228_MARGEN_PROMO,P228_MARGEN_PROMO_MK,P228_COSTO_TOTAL,P228_UTILIDAD,P228_COSTO_PROMOS'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(55168269447894305)
,p_name=>'DA_AGREGAR_EDITAR_DET'
,p_event_sequence=>110
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(55167930493894302)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(55168337551894306)
,p_event_id=>wwv_flow_imp.id(55168269447894305)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P228_COD_ARTICULO,P228_CANTIDAD_ART,P228_COSTO_ART,P228_PRECIO,P228_PRECIO_NETO,P228_MARGEN_PROMO,P228_MARGEN_PROMO_MK,P228_UTILIDAD,P228_COD_ARTICULO_PROM_1,P228_CANTIDAD_REG_1,P228_COD_ARTICULO_PROM_2,P228_CANTIDAD_REG_2,P228_COSTO_PROM_1,P228_COST'
||'O_PROM_2'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(55168447189894307)
,p_event_id=>wwv_flow_imp.id(55168269447894305)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    FVMRGPRM.ADD_COL_DET(pcod_articulo       => :P228_COD_ARTICULO,                      ',
'                         pcod_articulo_prom1 => :P228_COD_ARTICULO_PROM_1,',
'                         pcod_articulo_prom2 => :P228_COD_ARTICULO_PROM_2,',
'                         pcod_empresa        => :P_COD_EMPRESA,',
'                         pcantidad_min       => :P228_CANTIDAD_ART,',
'                         pcantidad_reg_1     => :P228_CANTIDAD_REG_1,',
'                         pcantidad_reg_2     => :P228_CANTIDAD_REG_2,',
'                         pnro_promo          => :P228_NRO_PROMO,',
'                         pcosto_total        => NULL,',
'                         putilidad           => :P228_UTILIDAD,',
'                         pcosto_art          => :P228_COSTO_ART,',
'                         pcosto_prom1        => :P228_COSTO_PROM_1,',
'                         pcosto_prom2        => :P228_COSTO_PROM_2,',
'                         pprecio             => :P228_PRECIO,',
'                         pprecio_neto        => :P228_PRECIO_NETO,',
'                         pporc_margen        => :P228_MARGEN_PROMO,',
'                         pporc_margen_mk     => :P228_MARGEN_PROMO_MK,',
'                         pporc_desc          => :P228_PORC_DESC);',
'                         ',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_AGREGAR_EDITAR_DET ADD_COL_DET ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P228_COD_ARTICULO,P228_COD_ARTICULO_PROM_1,P228_COD_ARTICULO_PROM_2,P_COD_EMPRESA,P228_CANTIDAD_ART,P228_CANTIDAD_REG_1,P228_CANTIDAD_REG_2,P228_NRO_PROMO,P228_COSTO_ART,P228_PRECIO,P228_PRECIO_NETO,P228_MARGEN_PROMO,P228_MARGEN_PROMO_MK,P228_UTILIDA'
||'D,P228_PORC_DESC,P228_COSTO_PROM_1,P228_COSTO_PROM_2,P228_PORC_DESC'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P228_EDIT_DATA_DET'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(55170024749894323)
,p_event_id=>wwv_flow_imp.id(55168269447894305)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    FVMRGPRM.EDIT_DATA_DET(pseq_id             => :P228_EDIT_DATA_DET,',
'                           pcod_empresa        => :P_COD_EMPRESA,',
'                           pcod_articulo       => :P228_COD_ARTICULO,',
'                           pcod_articulo_prom1 => :P228_COD_ARTICULO_PROM_1,',
'                           pcod_articulo_prom2 => :P228_COD_ARTICULO_PROM_2,',
'                           pcantidad_min       => :P228_CANTIDAD_ART,',
'                           pcantidad_reg_1     => :P228_CANTIDAD_REG_1,',
'                           pcantidad_reg_2     => :P228_CANTIDAD_REG_2,',
'                           pcosto_art          => :P228_COSTO_ART,',
'                           pprecio             => :P228_PRECIO,',
'                           pprecio_neto        => :P228_PRECIO_NETO,',
'                           pporc_margen        => :P228_MARGEN_PROMO,',
'                           pporc_margen_mk     => :P228_MARGEN_PROMO_MK,',
'                           putilidad           => :P228_UTILIDAD,',
'                           pporc_desc          => :P228_PORC_DESC);',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_EDIT_DATA_DET ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P228_EDIT_DATA_DET,P_COD_EMPRESA,P228_COD_ARTICULO,P228_COD_ARTICULO_PROM_1,P228_COD_ARTICULO_PROM_2,P228_CANTIDAD_ART,P228_CANTIDAD_REG_1,P228_CANTIDAD_REG_2,P228_COSTO_ART,P228_PRECIO,P228_PRECIO_NETO,P228_MARGEN_PROMO,P228_MARGEN_PROMO_MK,P228_UTI'
||'LIDAD,P228_PORC_DESC,P228_PORC_DESC'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P228_EDIT_DATA_DET'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(55168540322894308)
,p_event_id=>wwv_flow_imp.id(55168269447894305)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(52960048514847832)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(55168652646894309)
,p_event_id=>wwv_flow_imp.id(55168269447894305)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(52274211157438315)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(217190153964088130)
,p_event_id=>wwv_flow_imp.id(55168269447894305)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(208560759649354646)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(55169000464894313)
,p_name=>'DA_ABRIR_MODAL_EDIT_DET'
,p_event_sequence=>120
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P228_EDIT_DATA_DET'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(60227820300608906)
,p_event_id=>wwv_flow_imp.id(55169000464894313)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P228_MENSAJE_CAB'
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(55169149586894314)
,p_event_id=>wwv_flow_imp.id(55169000464894313)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P228_EDIT_DATA_DET'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(55169380592894316)
,p_event_id=>wwv_flow_imp.id(55169000464894313)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'VESTADO VARCHAR2(100);',
'BEGIN',
'/*',
'    SELECT c015',
'      INTO VESTADO',
'      FROM APEX_COLLECTIONS',
'     WHERE COLLECTION_NAME = ''COLEC_FV_PROMO''',
'       AND seq_id = :P228_EDIT_DATA_DET;*/',
'',
'   /* IF VESTADO = ''CREADO'' THEN',
'        :P228_MENSAJE_CAB := NULL;',
'        :P228_CONTROL_CAB := 1;*/',
'',
'        FVMRGPRM.CARGAR_DATOS_EDIT_DET(pedit_data          => :P228_EDIT_DATA_DET,',
'                                       pcod_articulo       => :P228_COD_ARTICULO,',
'                                       pcod_articulo_prom1 => :P228_COD_ARTICULO_PROM_1,',
'                                       pcod_articulo_prom2 => :P228_COD_ARTICULO_PROM_2,',
'                                       pcantidad_min       => :P228_CANTIDAD_ART,',
'                                       pcantidad_reg_1     => :P228_CANTIDAD_REG_1,',
'                                       pcantidad_reg_2     => :P228_CANTIDAD_REG_2,',
'                                       pcosto_art          => :P228_COSTO_ART,',
'                                       pprecio             => :P228_PRECIO,',
'                                       pprecio_neto        => :P228_PRECIO_NETO,',
'                                       pporc_margen        => :P228_MARGEN_PROMO,',
'                                       pporc_margen_mk     => :P228_MARGEN_PROMO_MK,',
'                                       putilidad           => :P228_UTILIDAD,',
'                                       pporc_desc          => :P228_PORC_DESC);',
'',
'        :P228_CONTROL_DET := 1;    ',
'   /* ELSE',
'        :P228_MENSAJE_CAB := ''No se puede modificar el registro ya que el estado es autorizado y/o rechazado.'';',
'        :P228_CONTROL_CAB := 0;',
'    END IF;          */                  ',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    :P228_CONTROL_DET := 0; ',
'    APEX_DEBUG.ERROR(''DA_ABRIR_MODAL_EDIT_DATA CARGAR_DATOS_EDIT ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P228_EDIT_DATA_DET'
,p_attribute_03=>'P228_COD_ARTICULO,P228_CANTIDAD_ART,P228_COSTO_ART,P228_PRECIO,P228_PRECIO_NETO,P228_MARGEN_PROMO,P228_MARGEN_PROMO_MK,P228_UTILIDAD,P228_COD_ARTICULO_PROM_1,P228_CANTIDAD_REG_1,P228_COD_ARTICULO_PROM_2,P228_CANTIDAD_REG_2,P228_CONTROL_DET,P228_UTILI'
||'DAD,P228_PORC_DESC,P228_MENSAJE_CAB,P228_CONTROL_CAB'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(55169235585894315)
,p_event_id=>wwv_flow_imp.id(55169000464894313)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(52960048514847832)
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P228_EDIT_DATA_DET'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(55169415165894317)
,p_name=>'DA_DELETE_DATA'
,p_event_sequence=>130
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P228_DELETE_DATA_DET'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(55169503979894318)
,p_event_id=>wwv_flow_imp.id(55169415165894317)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P228_DELETE_DATA_DET'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(55169640302894319)
,p_event_id=>wwv_flow_imp.id(55169415165894317)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    FVMRGPRM.DELETE_COL(pseq_id   => :P228_DELETE_DATA_DET, ',
'                        p_col     => ''COLEC_FV_MARGEN_PROMO'',',
'                        patributo => 19);',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_DELETE_DATA ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P228_DELETE_DATA_DET'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(55169746657894320)
,p_event_id=>wwv_flow_imp.id(55169415165894317)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(52274211157438315)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(58687830499224314)
,p_name=>'DA_SOLO_NUMEROS'
,p_event_sequence=>140
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P228_CANTIDAD_ART'
,p_bind_type=>'bind'
,p_bind_event_type=>'keydown'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(58687930314224315)
,p_event_id=>wwv_flow_imp.id(58687830499224314)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'validateNumber(event);'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(58688050792224316)
,p_name=>'DA_SOLO_NUMEROS_1'
,p_event_sequence=>150
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P228_CANTIDAD_REG_1'
,p_bind_type=>'bind'
,p_bind_event_type=>'keydown'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(58688116086224317)
,p_event_id=>wwv_flow_imp.id(58688050792224316)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'validateNumber(event);'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(58688259890224318)
,p_name=>'DA_SOLO_NUMEROS_1_1'
,p_event_sequence=>160
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P228_CANTIDAD_REG_2'
,p_bind_type=>'bind'
,p_bind_event_type=>'keydown'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(58688313990224319)
,p_event_id=>wwv_flow_imp.id(58688259890224318)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'validateNumber(event);'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(58688701022224323)
,p_name=>'DA_OBTENER_DESC'
,p_event_sequence=>170
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P228_COD_ARTICULO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(58688872843224324)
,p_event_id=>wwv_flow_imp.id(58688701022224323)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P228_COD_ARTICULO'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(58688900813224325)
,p_event_id=>wwv_flow_imp.id(58688701022224323)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    FVMRGPRM.RETORNA_DESC_ART(pcod_articulo => :P228_COD_ARTICULO,',
'                              pcod_empresa  => :P_COD_EMPRESA,',
'                              pdescripcion  => :P228_DESC_ART);',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_OBTENER_DESC ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P228_COD_ARTICULO,P_COD_EMPRESA'
,p_attribute_03=>'P228_DESC_ART'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(58689345058224329)
,p_name=>'DA_OBTENER_DESC_2'
,p_event_sequence=>180
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P228_COD_ARTICULO_PROM_2'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(58689442087224330)
,p_event_id=>wwv_flow_imp.id(58689345058224329)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P228_COD_ARTICULO_PROM_2'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(58689561311224331)
,p_event_id=>wwv_flow_imp.id(58689345058224329)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    FVMRGPRM.RETORNA_DESC_ART(pcod_articulo => :P228_COD_ARTICULO_PROM_2,',
'                              pcod_empresa  => :P_COD_EMPRESA,',
'                              pdescripcion  => :P228_DESC_ART_PROM_2);',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_OBTENER_DESC ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P228_COD_ARTICULO_PROM_2,P_COD_EMPRESA'
,p_attribute_03=>'P228_DESC_ART_PROM_2'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(58689048524224326)
,p_name=>'DA_OBTENER_DESC_1'
,p_event_sequence=>190
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P228_COD_ARTICULO_PROM_1'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(58689127538224327)
,p_event_id=>wwv_flow_imp.id(58689048524224326)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P228_COD_ARTICULO_PROM_1'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(58689254638224328)
,p_event_id=>wwv_flow_imp.id(58689048524224326)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    FVMRGPRM.RETORNA_DESC_ART(pcod_articulo => :P228_COD_ARTICULO_PROM_1,',
'                              pcod_empresa  => :P_COD_EMPRESA,',
'                              pdescripcion  => :P228_DESC_ART_PROM_1);',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_OBTENER_DESC ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P228_COD_ARTICULO_PROM_1,P_COD_EMPRESA'
,p_attribute_03=>'P228_DESC_ART_PROM_1'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(58689684818224332)
,p_name=>'DA_CALCULAR_PROM_1'
,p_event_sequence=>200
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P228_COD_ARTICULO_PROM_1,P228_CANTIDAD_REG_1'
,p_condition_element=>'P228_COD_ARTICULO_PROM_1'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(58689766550224333)
,p_event_id=>wwv_flow_imp.id(58689684818224332)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P228_COD_ARTICULO_PROM_1'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(58689858499224334)
,p_event_id=>wwv_flow_imp.id(58689684818224332)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    FVMRGPRM.CALCULAR_PROM(pcod_articulo => :P228_COD_ARTICULO_PROM_1,',
'                           pcant_reg     => :P228_CANTIDAD_REG_1,',
'                           pnro_promo    => :P228_NRO_PROMO,',
'                           pcosto_prom   => :P228_COSTO_PROM_1);',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_CALCULAR_PROM_1 ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P228_COD_ARTICULO_PROM_1,P228_CANTIDAD_REG_1,P228_NRO_PROMO'
,p_attribute_03=>'P228_COSTO_PROM_1'
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
 p_id=>wwv_flow_imp.id(58689924238224335)
,p_event_id=>wwv_flow_imp.id(58689684818224332)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    FVMRGPRM.CALCULAR_ART(pcod_articulo   => :P228_COD_ARTICULO,',
'                          pcod_empresa    => :P_COD_EMPRESA,',
'                          pcantidad_min   => :P228_CANTIDAD_ART,',
'                          pnro_promo      => :P228_NRO_PROMO,',
'                          pcosto_prom1    => :P228_COSTO_PROM_1,',
'                          pcosto_prom2    => :P228_COSTO_PROM_2,',
'                          P_DESCUENTO    => :P228_PORC_DESC,                            ',
'                          pcosto_total    => :P228_COSTO_TOTAL,',
'                          putil           => :P228_UTILIDAD,',
'                          pcosto_art      => :P228_COSTO_ART,',
'                          pprecio         => :P228_PRECIO,',
'                          pprecio_neto    => :P228_PRECIO_NETO,',
'                          pporc_margen    => :P228_MARGEN_PROMO,',
'                          pporc_margen_mk => :P228_MARGEN_PROMO_MK,',
'                          pcosto_promos   => :P228_COSTO_PROMOS);',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_CALCULAR PROM 1 ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P228_COD_ARTICULO,P_COD_EMPRESA,P228_CANTIDAD_ART,P228_NRO_PROMO,P228_COSTO_PROM_1,P228_PORC_DESC'
,p_attribute_03=>'P228_COSTO_ART,P228_PRECIO,P228_PRECIO_NETO,P228_MARGEN_PROMO,P228_MARGEN_PROMO_MK,P228_COSTO_TOTAL,P228_UTILIDAD,P228_COSTO_PROMOS'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(58690081354224336)
,p_name=>'DA_CALCULAR_PROM_1_1'
,p_event_sequence=>210
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P228_COD_ARTICULO_PROM_2,P228_CANTIDAD_REG_2'
,p_condition_element=>'P228_COD_ARTICULO_PROM_2'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(58690129258224337)
,p_event_id=>wwv_flow_imp.id(58690081354224336)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P228_COD_ARTICULO_PROM_2'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(58690263083224338)
,p_event_id=>wwv_flow_imp.id(58690081354224336)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    FVMRGPRM.CALCULAR_PROM(pcod_articulo => :P228_COD_ARTICULO_PROM_2,',
'                           pcant_reg     => :P228_CANTIDAD_REG_2,',
'                           pnro_promo    => :P228_NRO_PROMO,',
'                           pcosto_prom   => :P228_COSTO_PROM_2);',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_CALCULAR_PROM_1 ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P228_COD_ARTICULO_PROM_2,P228_CANTIDAD_REG_2,P228_NRO_PROMO'
,p_attribute_03=>'P228_COSTO_PROM_2'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(58690336993224339)
,p_event_id=>wwv_flow_imp.id(58690081354224336)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    FVMRGPRM.CALCULAR_ART(pcod_articulo   => :P228_COD_ARTICULO,',
'                          pcod_empresa    => :P_COD_EMPRESA,',
'                          pcantidad_min   => :P228_CANTIDAD_ART,',
'                          pnro_promo      => :P228_NRO_PROMO,',
'                          pcosto_prom1    => :P228_COSTO_PROM_1,',
'                          pcosto_prom2    => :P228_COSTO_PROM_2,',
'P_DESCUENTO    => :P228_PORC_DESC,                              ',
'                          pcosto_total    => :P228_COSTO_TOTAL,',
'                                                  ',
'                          putil           => :P228_UTILIDAD,',
'                          pcosto_art      => :P228_COSTO_ART,',
'                          pprecio         => :P228_PRECIO,',
'                          pprecio_neto    => :P228_PRECIO_NETO,',
'                          pporc_margen    => :P228_MARGEN_PROMO,',
'                          pporc_margen_mk => :P228_MARGEN_PROMO_MK,',
'                          pcosto_promos   => :P228_COSTO_PROMOS);',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_CALCULAR PROM 1 ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P228_COD_ARTICULO,P_COD_EMPRESA,P228_CANTIDAD_ART,P228_NRO_PROMO,P228_COSTO_PROM_1,P228_PORC_DESC'
,p_attribute_03=>'P228_COSTO_ART,P228_PRECIO,P228_PRECIO_NETO,P228_MARGEN_PROMO,P228_MARGEN_PROMO_MK,P228_COSTO_TOTAL,P228_UTILIDAD,P228_COSTO_PROMOS'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(60227313548608901)
,p_name=>'DA_OBTENER_DATA_DET'
,p_event_sequence=>220
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P228_DET_DATA'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(60227457344608902)
,p_event_id=>wwv_flow_imp.id(60227313548608901)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P228_DET_DATA'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(60227557317608903)
,p_event_id=>wwv_flow_imp.id(60227313548608901)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    FVMRGPRM.OBTENER_COL_DET(pseq_id      => :P228_DET_DATA,',
'                             pcod_empresa => :P_COD_EMPRESA,',
'                             pdesc_art    => :P228_DESC_ART_DET,',
'                             pdesc_art_p1 => :P228_DESC_PROM1_DET,',
'                             pdesc_art_p2 => :P228_DESC_PROM2_DET,',
'                             pcod_art     => :P228_COD_ART_DET,',
'                             pcost_p1     => :P228_COSTO_PROM1_DET,',
'                             pcost_p2     => :P228_COSTO_PROM2_DET,',
'                             pgravado     => :P228_GRAVADA_DET,',
'                             piva         => :P228_IVA_DET,',
'                             pstock         => :P228_STOCK_OPERATIVO,',
'                             pzp         => :P228_STOCK_ZP,',
'                             ptransito         => :P228_STOCK_TRANSITO);',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_OBETENER_DATA_DET ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P228_DET_DATA,P_COD_EMPRESA'
,p_attribute_03=>'P228_DESC_ART_DET,P228_DESC_PROM1_DET,P228_DESC_PROM2_DET,P228_COD_ART_DET,P228_COSTO_PROM1_DET,P228_COSTO_PROM2_DET,P228_GRAVADA_DET,P228_IVA_DET,P228_STOCK_OPERATIVO,P228_STOCK_ZP'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(61199784016587510)
,p_name=>'DA_MENSAJE_AUT_COM'
,p_event_sequence=>230
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P228_MENSAJE_AUT_COM'
,p_condition_element=>'P228_MENSAJE_AUT_COM'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(61199805085587511)
,p_event_id=>wwv_flow_imp.id(61199784016587510)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P228_MENSAJE_AUT_COM.'
,p_attribute_02=>'Aviso'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(61200188791587514)
,p_name=>'DA_MENSAJE_AUT_MKT'
,p_event_sequence=>240
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P228_MENSAJE_AUT_MKT'
,p_condition_element=>'P228_MENSAJE_AUT_MKT'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(61200275628587515)
,p_event_id=>wwv_flow_imp.id(61200188791587514)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P228_MENSAJE_AUT_MKT.'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(51565110677250243)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_INIT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P228_COD_MODULO := ''FV'';',
':P228_COD_SUCURSAL := NVL(:P_COD_SUCURSAL, ''01'');',
'',
'APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(''COLEC_FV_PROMO'');',
'APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(''COLEC_FV_MARGEN_PROMO'');',
'',
'BEGIN',
'',
'    FVMRGPRM.CARGAR_COL_CAB(pcod_empresa => :P_COD_EMPRESA);',
'',
'    FVMRGPRM.CARGAR_COL_DET(pcod_empresa => :P_COD_EMPRESA);',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''PR_INIT ''||SQLERRM);',
'END;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(61198832830587501)
,p_process_sequence=>20
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'CLEAR_ITEMS'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(61199200957587505)
,p_process_sequence=>30
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_AUTORIZACIONES'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    :P228_AUTORIZA_COMERCIAL := busca_permiso(:P_COD_EMPRESA,',
'                                              ''FVMRGPRM'', ',
'                                              :P_COD_USUARIO,',
'                                              ''AUTORIZA_COMERCIAL'');',
'    ',
'    :P228_VERIFICACION_BRAND := busca_permiso(:P_COD_EMPRESA,',
'                                              ''FVMRGPRM'', ',
'                                              :P_COD_USUARIO,',
'                                              ''VERIFICACION_BRAND'');',
'',
'    :P228_AUTORIZA_MKT := busca_permiso(:P_COD_EMPRESA,',
'                                        ''FVMRGPRM'', ',
'                                        :P_COD_USUARIO,',
'                                        ''AUTORIZA_MKT'');                                           ',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''PR_AUTORIZACIONES ''||SQLERRM);',
'END;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(60227732128608905)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_SAVE'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    FVMRGPRM.GUARDAR_DATOS(pcod_empresa => :P_COD_EMPRESA);',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''PR_SAVE PAG 228 ''||SQLERRM);',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'sqlerrm'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(60227608431608904)
);
wwv_flow_imp.component_end;
end;
/
