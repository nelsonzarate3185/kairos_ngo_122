prompt --application/pages/page_00323
begin
--   Manifest
--     PAGE: 00323
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
 p_id=>323
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>unistr('Notas de Env\00EDo')
,p_alias=>'STENVIO'
,p_step_title=>unistr('Notas de Env\00EDo')
,p_autocomplete_on_off=>'OFF'
,p_javascript_file_urls=>'#APP_FILES#util_generico#MIN#.js'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function soloNumeros(e){',
'  var key = e.charCode;',
'    return key >= 48 && key <= 57;',
'}',
'',
'function doDescarga(p_cod_empresa, p_cod_sucursal_ent, p_cod_sucursal_sal, p_ser_envio, p_nro_envio){',
'   var vURL = ''https://ngosaeca.com.py/reportes/rest_v2/reports/reports/STENVIO.pdf?''',
'            + ''P_SER_ENVIO='' + p_ser_envio + ''&P_COD_SUCURSAL_SAL='' + p_cod_sucursal_sal + ''&P_COD_EMPRESA='' + p_cod_empresa + ''&P_COD_SUCURSAL_ENT='' + p_cod_sucursal_ent   ',
'            + ''&P_NRO_ENVIO='' + p_nro_envio +''&j_username=jasperadmin&j_password=jasperadmin'';',
'    console.log(vURL);',
'    window.open(unescape(vURL.replace(/&amp;/g,''g'')),''_blank''); ',
'}    ',
'',
''))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#btn_limpiar{',
'    border: 1px solid darkblue;',
'}',
'',
'',
' ',
'  .a-IRR-header  a , #checktext {color: yellow; }',
' .a-IRR-header {    background: #003a85!important;}',
'',
'',
'.t-Body-mainContent  { ',
'    background: #082b642f!important;',
'} ',
'  ',
'  .t-Form-label{',
'    color:  darkblue  !important; ',
'    } ',
''))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'JUANSA'
,p_last_upd_yyyymmddhh24miss=>'20250320090207'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(78229977149554121)
,p_plug_name=>'VARIABLES'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>990
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(79827286927496735)
,p_plug_name=>'Series'
,p_parent_plug_id=>wwv_flow_imp.id(78229977149554121)
,p_region_template_options=>'#DEFAULT#:js-dialog-autoheight:js-dialog-size480x320'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(79251159485252718)
,p_plug_name=>unistr('Notas de Env\00EDo')
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>1010
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(79251523903252722)
,p_plug_name=>'CABECERA'
,p_parent_plug_id=>wwv_flow_imp.id(79251159485252718)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>1000
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(79825580519496718)
,p_plug_name=>'CAB1'
,p_parent_plug_id=>wwv_flow_imp.id(79251523903252722)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_grid_column_span=>3
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(79825697126496719)
,p_plug_name=>'CAB2'
,p_parent_plug_id=>wwv_flow_imp.id(79251523903252722)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>5
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(80622759489136622)
,p_plug_name=>'CAB3'
,p_parent_plug_id=>wwv_flow_imp.id(79251523903252722)
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
 p_id=>wwv_flow_imp.id(79825816297496721)
,p_plug_name=>'REPORTE'
,p_parent_plug_id=>wwv_flow_imp.id(79251159485252718)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>1020
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT SEQ_ID,',
'       C001 cod_articulo,',
'       C002 desc_articulo, ',
'       C003 nro_lote,',
'       C004 origen,',
'       C015 cod_unidad_medida,',
'       C006 cor_art_corto,',
'       C007 descripcion,',
'       N001 cantidad,',
'       NULL editar,',
'       NULL eliminar',
'  FROM APEX_COLLECTIONS',
' WHERE COLLECTION_NAME = ''DETALLE_STENVIO''',
'   AND (C013 IS NULL OR C013 IN (''I'', ''U''));'))
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
 p_id=>wwv_flow_imp.id(80051336564183111)
,p_max_row_count=>'1000000'
,p_no_data_found_message=>'No se han encontrado datos.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'MARIANABLA'
,p_internal_uid=>80051336564183111
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(80051432269183112)
,p_db_column_name=>'COD_ARTICULO'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>unistr('Art\00EDculo')
,p_column_link=>'javascript:$s(''P323_VER_DATOS'',''#SEQ_ID#'');'
,p_column_linktext=>'#COD_ARTICULO#'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(80051513285183113)
,p_db_column_name=>'DESC_ARTICULO'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>unistr('Descripci\00F3n')
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(80051680658183114)
,p_db_column_name=>'NRO_LOTE'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Lote'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(80051797244183115)
,p_db_column_name=>'ORIGEN'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Origen'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(80051901476183117)
,p_db_column_name=>'CANTIDAD'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Cantidad'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(80052153594183119)
,p_db_column_name=>'COR_ART_CORTO'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>unistr('C\00F3digo Corto')
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(80052294434183120)
,p_db_column_name=>'DESCRIPCION'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Descripcion'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(80052325404183121)
,p_db_column_name=>'EDITAR'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Editar'
,p_column_link=>'javascript:$s(''P323_EDITAR_REGISTRO'',''#SEQ_ID#'');'
,p_column_linktext=>'<span class="fa fa-edit" aria-hidden="true"></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_display_condition_type=>'FUNCTION_BODY'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'VCONTROL NUMBER;',
'BEGIN',
'',
'    VCONTROL := SEGURIDAD_GRANULAR.RETORNA_PERMISO_BOTON(ppage_id     => :APP_PAGE_ID,',
'                                                         papli0100_id => :P_APLI0100_ID,',
'                                                         pcod_empresa => :P_COD_EMPRESA,',
'                                                         pusua0100_id => :P_USUA0100_ID,',
'                                                         pdm_boto     => 2); ',
'',
'    IF VCONTROL = 0 THEN',
'        RETURN FALSE;',
'    ELSE',
'        RETURN TRUE;',
'    END IF;                                                     ',
'END;'))
,p_display_condition2=>'PLSQL'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(80052419697183122)
,p_db_column_name=>'ELIMINAR'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Eliminar'
,p_column_link=>'javascript:$s(''P323_ELIMINAR_REGISTRO'',''#SEQ_ID#'');'
,p_column_linktext=>'<span aria-hidden="true" class="fa fa-trash"></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_display_condition_type=>'FUNCTION_BODY'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'VCONTROL NUMBER;',
'BEGIN',
'',
'    VCONTROL := SEGURIDAD_GRANULAR.RETORNA_PERMISO_BOTON(ppage_id     => :APP_PAGE_ID,',
'                                                         papli0100_id => :P_APLI0100_ID,',
'                                                         pcod_empresa => :P_COD_EMPRESA,',
'                                                         pusua0100_id => :P_USUA0100_ID,',
'                                                         pdm_boto     => 3); ',
'',
'    IF VCONTROL = 0 THEN',
'        RETURN FALSE;',
'    ELSE',
'        RETURN TRUE;',
'    END IF;                                                     ',
'END;'))
,p_display_condition2=>'PLSQL'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(80052760050183125)
,p_db_column_name=>'SEQ_ID'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Seq Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(81073420022397139)
,p_db_column_name=>'COD_UNIDAD_MEDIDA'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'U.M.'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(80435671856934433)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'804357'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'COR_ART_CORTO:COD_ARTICULO:DESC_ARTICULO:COD_UNIDAD_MEDIDA:NRO_LOTE:CANTIDAD:EDITAR:ELIMINAR:'
,p_sum_columns_on_break=>'CANTIDAD'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(79825947008496722)
,p_plug_name=>'CABECERA'
,p_parent_plug_id=>wwv_flow_imp.id(79251159485252718)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>1010
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(79826018056496723)
,p_plug_name=>'PIE'
,p_parent_plug_id=>wwv_flow_imp.id(79251159485252718)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>1030
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(80625165641136646)
,p_plug_name=>unistr('Agregar/Editar art\00EDculo')
,p_parent_plug_id=>wwv_flow_imp.id(79251159485252718)
,p_region_template_options=>'#DEFAULT#:js-dialog-autoheight:js-dialog-size720x480'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>1040
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(79827576082496738)
,p_plug_name=>unistr('PAR\00C1METROS')
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>1000
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(178749714789121449)
,p_button_sequence=>120
,p_button_plug_id=>wwv_flow_imp.id(79827286927496735)
,p_button_name=>'New'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--gapRight:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(40187078917263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'New'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-check'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>2
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(81071004280397115)
,p_button_sequence=>140
,p_button_plug_id=>wwv_flow_imp.id(80625165641136646)
,p_button_name=>'CANCELAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Cancelar'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(81072523282397130)
,p_button_sequence=>150
,p_button_plug_id=>wwv_flow_imp.id(80625165641136646)
,p_button_name=>'GUARDAR_DET'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Guardar '
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(79251320645252720)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(79251159485252718)
,p_button_name=>'LIMPIAR'
,p_button_static_id=>'btn_limpiar'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Limpiar'
,p_button_position=>'EDIT'
,p_button_execute_validations=>'N'
,p_button_css_classes=>'u-color-21-bg u-color-43-text'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(79825486987496717)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(79251159485252718)
,p_button_name=>'BUSCAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Buscar'
,p_button_position=>'EDIT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'u-color-21-bg u-color-43-text'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(80050826777183106)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(79251159485252718)
,p_button_name=>'GUARDAR'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Guardar'
,p_button_position=>'EDIT'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'VCONTROL NUMBER;',
'BEGIN',
'',
'    VCONTROL := SEGURIDAD_GRANULAR.RETORNA_PERMISO_BOTON(ppage_id     => :APP_PAGE_ID,',
'                                                         papli0100_id => :P_APLI0100_ID,',
'                                                         pcod_empresa => :P_COD_EMPRESA,',
'                                                         pusua0100_id => :P_USUA0100_ID,',
'                                                         pdm_boto     => 1); ',
'',
'    IF VCONTROL = 0 THEN',
'        RETURN FALSE;',
'    ELSE',
'        RETURN TRUE;',
'    END IF;                                                     ',
'END;'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'FUNCTION_BODY'
,p_button_css_classes=>'u-color-21-bg u-color-43-text'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(80050969930183107)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(79251159485252718)
,p_button_name=>'ACTUALIZAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Actualizar'
,p_button_position=>'EDIT'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'VCONTROL NUMBER;',
'BEGIN',
'',
'    VCONTROL := SEGURIDAD_GRANULAR.RETORNA_PERMISO_BOTON(ppage_id     => :APP_PAGE_ID,',
'                                                         papli0100_id => :P_APLI0100_ID,',
'                                                         pcod_empresa => :P_COD_EMPRESA,',
'                                                         pusua0100_id => :P_USUA0100_ID,',
'                                                         pdm_boto     => 2); ',
'',
'    IF VCONTROL = 0 THEN',
'        RETURN FALSE;',
'    ELSE',
'        RETURN TRUE;',
'    END IF;                                                     ',
'END;'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'FUNCTION_BODY'
,p_button_css_classes=>'u-color-21-bg u-color-43-text'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(80050621025183104)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(79251159485252718)
,p_button_name=>'IMPRIMIR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Imprimir'
,p_button_position=>'EDIT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'u-color-21-bg u-color-43-text'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(80050721260183105)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_imp.id(79251159485252718)
,p_button_name=>'ELIMINAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Eliminar'
,p_button_position=>'EDIT'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'VCONTROL NUMBER;',
'BEGIN',
'',
'    VCONTROL := SEGURIDAD_GRANULAR.RETORNA_PERMISO_BOTON(ppage_id     => :APP_PAGE_ID,',
'                                                         papli0100_id => :P_APLI0100_ID,',
'                                                         pcod_empresa => :P_COD_EMPRESA,',
'                                                         pusua0100_id => :P_USUA0100_ID,',
'                                                         pdm_boto     => 3); ',
'',
'    IF VCONTROL = 0 THEN',
'        RETURN FALSE;',
'    ELSE',
'        RETURN TRUE;',
'    END IF;                                                     ',
'END;'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'FUNCTION_BODY'
,p_button_css_classes=>'u-color-21-bg u-color-43-text'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(80051026645183108)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(79825816297496721)
,p_button_name=>'BUSCAR_PEDIDO'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Buscar Pedido'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_warn_on_unsaved_changes=>null
,p_button_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(80624993800136644)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(79825816297496721)
,p_button_name=>'AGREGAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Agregar'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'VCONTROL NUMBER;',
'BEGIN',
'',
'    VCONTROL := SEGURIDAD_GRANULAR.RETORNA_PERMISO_BOTON(ppage_id     => :APP_PAGE_ID,',
'                                                         papli0100_id => :P_APLI0100_ID,',
'                                                         pcod_empresa => :P_COD_EMPRESA,',
'                                                         pusua0100_id => :P_USUA0100_ID,',
'                                                         pdm_boto     => 1); ',
'',
'    IF VCONTROL = 0 THEN',
'        RETURN FALSE;',
'    ELSE',
'        RETURN TRUE;',
'    END IF;                                                     ',
'END;'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'FUNCTION_BODY'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(78230082576554122)
,p_name=>'P323_COD_EMPRESA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(78229977149554121)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(79250335325252710)
,p_name=>'P323_COD_SUCURSAL'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(78229977149554121)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(79250417241252711)
,p_name=>'P323_COD_USUARIO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(78229977149554121)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(79250560825252712)
,p_name=>'P323_COD_MODULO'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(78229977149554121)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(79250692749252713)
,p_name=>'P323_SER_ENVIO'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(78229977149554121)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(79250751021252714)
,p_name=>'P323_TIP_ENVIO'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(78229977149554121)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(79250869027252715)
,p_name=>'P323_CARGA_SUCURSAL'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(78229977149554121)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(79250946384252716)
,p_name=>'P323_RECEPCIONA_SUCURSAL'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(78229977149554121)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(79251054789252717)
,p_name=>'P323_LINEAS_MAX'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(78229977149554121)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(79251787054252724)
,p_name=>'P323_COD_EMPRESA_1'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(79251523903252722)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(79251818413252725)
,p_name=>'P323_CAB_TIP_ENVIO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(79251523903252722)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(79251965593252726)
,p_name=>'P323_CAB_NRO_ENVIO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(79825580519496718)
,p_prompt=>unistr('N\00FAmero')
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(79252043323252727)
,p_name=>'P323_CAB_COD_SUCURSAL'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(79825697126496719)
,p_prompt=>'Suc. de salida'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_SUCURSAL_STENVIO'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cod_sucursal R, descripcion D',
'from sucursales ',
'where cod_empresa = :P_COD_EMPRESA',
'order by descripcion'))
,p_cSize=>30
,p_cMaxlength=>5
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(79252173181252728)
,p_name=>'P323_CAB_COD_SUCURSAL_ENT'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(79825697126496719)
,p_prompt=>'Suc. de entrada'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_SUCURSAL_ENT_STENVIO'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cod_sucursal R, descripcion D',
'from sucursales ',
'where cod_empresa = :P_COD_EMPRESA',
'and cod_sucursal <> :P323_CAB_COD_SUCURSAL',
'order by descripcion'))
,p_lov_cascade_parent_items=>'P323_CAB_COD_SUCURSAL'
,p_ajax_items_to_submit=>'P323_CAB_COD_SUCURSAL'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_cMaxlength=>5
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(79252291915252729)
,p_name=>'P323_CAB_FECHA'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(79825580519496718)
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
 p_id=>wwv_flow_imp.id(79252305507252730)
,p_name=>'P323_ESTADO'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(79251523903252722)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(79252402295252731)
,p_name=>'P323_IND_RECEPCION'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(79251523903252722)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(79252583729252732)
,p_name=>'P323_CAB_COD_USUARIO_REC'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(79826018056496723)
,p_prompt=>'Usuario'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>10
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
 p_id=>wwv_flow_imp.id(79252647097252733)
,p_name=>'P323_COMENTARIO'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(79251523903252722)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(79252759251252734)
,p_name=>'P323_CAB_SER_ENVIO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(79825580519496718)
,p_prompt=>'Serie'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>6
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(79252881196252735)
,p_name=>'P323_CAB_HORA'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(79826018056496723)
,p_prompt=>'Hora'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>20
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_colspan=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(79252916265252736)
,p_name=>'P323_CAB_OBS'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_imp.id(79825580519496718)
,p_prompt=>unistr('Observaci\00F3n')
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cMaxlength=>400
,p_cHeight=>3
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(79253071457252737)
,p_name=>'P323_CAB_REPOSICION'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(79826018056496723)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(79253140328252738)
,p_name=>'P323_CAB_DEVOLUCION'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(79826018056496723)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(79253250870252739)
,p_name=>'P323_CAB_CAMBIO_DIRECTO'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(79826018056496723)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(79253391700252740)
,p_name=>'P323_CAB_TIP_COMPROBANTE_REF'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(79825580519496718)
,p_item_default=>'ORT'
,p_prompt=>'O.T. Pres.'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(79253487375252741)
,p_name=>'P323_CAB_SER_COMPROBANTE_REF'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(79825580519496718)
,p_prompt=>'&nbsp'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>10
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
,p_attribute_06=>'UPPER'
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
 p_id=>wwv_flow_imp.id(79253591344252742)
,p_name=>'P323_CAB_NRO_COMPROBANTE_REF'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(79825580519496718)
,p_prompt=>'&nbsp'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(79253655242252743)
,p_name=>'P323_CAB_MARCA_TRANS'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_imp.id(79825580519496718)
,p_prompt=>'Marca Transp.'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>100
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(79253791918252744)
,p_name=>'P323_TRANSPORTISTA'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_imp.id(79251523903252722)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(79253899717252745)
,p_name=>'P323_CAB_CONDUCTOR'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_imp.id(80622759489136622)
,p_prompt=>'Conductor'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>100
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(79253911494252746)
,p_name=>'P323_CAB_DIRECC_CONDUC'
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_imp.id(80622759489136622)
,p_prompt=>'Dir. del conduc.'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>200
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(79254087684252747)
,p_name=>'P323_CAB_CHAPA'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_imp.id(80622759489136622)
,p_prompt=>'Chapa'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>100
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(79254119603252748)
,p_name=>'P323_CAB_RUC_TRANS'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_imp.id(80622759489136622)
,p_prompt=>'Ruc'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>80
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(79254252495252749)
,p_name=>'P323_CAB_CED_COND'
,p_item_sequence=>270
,p_item_plug_id=>wwv_flow_imp.id(80622759489136622)
,p_prompt=>'C.I.'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>80
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(79254317566252750)
,p_name=>'P323_CAB_TECNICO'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(79826018056496723)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(79823844269496701)
,p_name=>'P323_CAB_DEPOSITERO'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(79826018056496723)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(79823921873496702)
,p_name=>'P323_CAB_REFERENCIA'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_imp.id(79825580519496718)
,p_prompt=>'Nro. Pedido Env.'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_cMaxlength=>12
,p_tag_attributes=>'onkeydown="return isNumber(event);"'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(79824021496496703)
,p_name=>'P323_CAB_TIPO_ENVIO'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(79825580519496718)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(79824129712496704)
,p_name=>'P323_DESC_USUARIO'
,p_item_sequence=>310
,p_item_plug_id=>wwv_flow_imp.id(79251523903252722)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(79824253045496705)
,p_name=>'P323_CAB_FEC_VENCIMIENTO'
,p_item_sequence=>300
,p_item_plug_id=>wwv_flow_imp.id(80622759489136622)
,p_prompt=>unistr('Fecha L\00EDmite')
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
 p_id=>wwv_flow_imp.id(79824333797496706)
,p_name=>'P323_CAB_COD_USUARIO_RESERVA'
,p_item_sequence=>280
,p_item_plug_id=>wwv_flow_imp.id(80622759489136622)
,p_prompt=>'Responsable'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_RESPONSABLE_STENVIO'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ltrim( p.nombre) D, e.cod_empleado R, e.cod_persona ',
'  from rh_empleados e, personas p ',
' where e.cod_empresa = :P_COD_EMPRESA',
'   and nvl( p.es_fisica, ''N'' ) = ''S'' ',
'   and e.cod_persona = p.cod_persona ',
'   AND NVL(e.activo,''S'')=''S'' ',
'order by 1'))
,p_cSize=>30
,p_cMaxlength=>20
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(79824491309496707)
,p_name=>'P323_IND_RESERVA'
,p_item_sequence=>340
,p_item_plug_id=>wwv_flow_imp.id(79251523903252722)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(79824567114496708)
,p_name=>'P323_CORREO_PROCESADO'
,p_item_sequence=>350
,p_item_plug_id=>wwv_flow_imp.id(79251523903252722)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(79824636631496709)
,p_name=>'P323_CAB_COD_REPARTIDOR'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(79825697126496719)
,p_prompt=>'Repartidor'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_REPARTIDOR_STENVIO'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ltrim( rtrim( nvl( p.nombre, p.nomb_fantasia ) ) ) D, r.cod_repartidor R',
'from rp_repartidores r, personas p ',
'where r.cod_empresa = :P_COD_EMPRESA ',
'and r.cod_persona = p.cod_persona ',
'order by 1'))
,p_cSize=>30
,p_cMaxlength=>10
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(79824796755496710)
,p_name=>'P323_CAB_COD_VEHICULO'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(79825697126496719)
,p_prompt=>unistr('Veh\00EDculo')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_VEHICULOS_STENVIO'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select descripcion D, cod_vehiculo R',
'  from rp_vehiculos ',
' where cod_empresa = :P_COD_EMPRESA',
'order by descripcion'))
,p_cSize=>30
,p_cMaxlength=>10
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(79824800069496711)
,p_name=>'P323_CAB_NRO_REMISION'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_imp.id(79825580519496718)
,p_prompt=>unistr('Nro. Remisi\00F3n')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>60
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(79824928995496712)
,p_name=>'P323_FEC_ALTA'
,p_item_sequence=>390
,p_item_plug_id=>wwv_flow_imp.id(79251523903252722)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(79825092160496713)
,p_name=>'P323_SER_REFERENCIA'
,p_item_sequence=>400
,p_item_plug_id=>wwv_flow_imp.id(79251523903252722)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(79825168504496714)
,p_name=>'P323_CAB_COD_AYUDANTE_2'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(79825697126496719)
,p_prompt=>'Ayudante'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_AYU1_STENVIO'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select nombre D, e.cod_empleado R ',
'  from rh_empleados e, personas p ',
' where e.cod_empresa = :P_COD_EMPRESA ',
'   and e.cod_persona = p.cod_persona ',
'   and nvl(e.activo, ''S'') = ''S'' ',
'   and COD_CARGO=''222''',
'order by nvl(nomb_fantasia, nombre)'))
,p_cSize=>30
,p_cMaxlength=>10
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(79825237664496715)
,p_name=>'P323_CAB_COD_AYUDANTE_1'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(79825697126496719)
,p_prompt=>'Ayudante '
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_AYU1_STENVIO'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select nombre D, e.cod_empleado R ',
'  from rh_empleados e, personas p ',
' where e.cod_empresa = :P_COD_EMPRESA ',
'   and e.cod_persona = p.cod_persona ',
'   and nvl(e.activo, ''S'') = ''S'' ',
'   and COD_CARGO=''222''',
'order by nvl(nomb_fantasia, nombre)'))
,p_cSize=>30
,p_cMaxlength=>10
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(79825352730496716)
,p_name=>'P323_CAB_COD_ZONA_REPARTO'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(79825697126496719)
,p_prompt=>'Zona'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_ZONAS_STENVIO'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select descripcion D, cod_zona_reparto R',
'  from rp_zonas_reparto ',
'order by descripcion'))
,p_cSize=>30
,p_cMaxlength=>10
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(79826150078496724)
,p_name=>'P323_DET_DESCRIPCION'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(79826018056496723)
,p_prompt=>'Unidad de medida'
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
 p_id=>wwv_flow_imp.id(79826275962496725)
,p_name=>'P323_CAB_DESC_USUARIO'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(79826018056496723)
,p_prompt=>'&nbsp'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>10
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
 p_id=>wwv_flow_imp.id(79826324127496726)
,p_name=>'P323_DET_REFERENCIA'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(79826018056496723)
,p_prompt=>'Nro. Ref.'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(79826509539496728)
,p_name=>'P323_SHOW_LOV'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(78229977149554121)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(79826694540496729)
,p_name=>'P323_LV_SERIES'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(79827286927496735)
,p_prompt=>'Series'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_SERIES_STENVIO'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select tip_comprobante, ser_comprobante ',
'  from series_comprob s ',
' where s.tip_comprobante =:P323_TIP_ENVIO ',
'   and cod_empresa=:P_COD_EMPRESA'))
,p_lov_cascade_parent_items=>'P323_TIP_ENVIO'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
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
 p_id=>wwv_flow_imp.id(79827608422496739)
,p_name=>'P323_P_ENVIO_PEND'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(79827576082496738)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(79827744812496740)
,p_name=>'P323_ANT_CANTIDAD'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(78229977149554121)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(79827868857496741)
,p_name=>'P323_CARGA_DETALLE'
,p_item_sequence=>410
,p_item_plug_id=>wwv_flow_imp.id(79251523903252722)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(79828118268496744)
,p_name=>'P323_P_COD_VEHICULO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(79827576082496738)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(79828277651496745)
,p_name=>'P323_P_COD_REPARTIDOR'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(79827576082496738)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(79828327803496746)
,p_name=>'P323_P_COD_ZONA'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(79827576082496738)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(79828423658496747)
,p_name=>'P323_P_COD_AYUDANTE_1'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(79827576082496738)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(79828595937496748)
,p_name=>'P323_P_COD_AYUDANTE_2'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(79827576082496738)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(79828675514496749)
,p_name=>'P323_P_TIP_OT'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(79827576082496738)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(79828744315496750)
,p_name=>'P323_P_NRO_OT'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(79827576082496738)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(80050393948183101)
,p_name=>'P323_P_SER_OT'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(79827576082496738)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(80050455710183102)
,p_name=>'P323_CAB_DESC_SUCURSAL'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(79825697126496719)
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
 p_id=>wwv_flow_imp.id(80050504011183103)
,p_name=>'P323_DESC_SUCURSAL_ENT'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(79825697126496719)
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
 p_id=>wwv_flow_imp.id(80052536110183123)
,p_name=>'P323_ELIMINAR_REGISTRO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(79825816297496721)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(80052680615183124)
,p_name=>'P323_EDITAR_REGISTRO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(79825816297496721)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(80052879836183126)
,p_name=>'P323_SER_ARTICULO'
,p_item_sequence=>420
,p_item_plug_id=>wwv_flow_imp.id(79251523903252722)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(80054314143183141)
,p_name=>'P323_AUX_MENSAJE'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(79827576082496738)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(80054864755183146)
,p_name=>'P323_CAB_DESC_ZONA_REPARTO'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(79825697126496719)
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
 p_id=>wwv_flow_imp.id(80054966797183147)
,p_name=>'P323_CAB_NOM_VEHICULO'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(79825697126496719)
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
 p_id=>wwv_flow_imp.id(80055027598183148)
,p_name=>'P323_CAB_NOM_REPARTIDOR'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(79825697126496719)
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
 p_id=>wwv_flow_imp.id(80055109559183149)
,p_name=>'P323_CAB_DESC_AYUDANTE_1'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(79825697126496719)
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
 p_id=>wwv_flow_imp.id(80055290137183150)
,p_name=>'P323_CAB_DESC_AYUDANTE_2'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_imp.id(79825697126496719)
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
 p_id=>wwv_flow_imp.id(80620672591136601)
,p_name=>'P323_CAB_DESC_USUARIO_RESERVA'
,p_item_sequence=>290
,p_item_plug_id=>wwv_flow_imp.id(80622759489136622)
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
 p_id=>wwv_flow_imp.id(81069628635397101)
,p_name=>'P323_COD_ARTICULO'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(80625165641136646)
,p_prompt=>unistr('Art\00EDculo')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_ARTICULO_STENVIO'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cod_articulo R, descripcion D ',
'from st_articulos ',
'where cod_empresa = :P_COD_EMPRESA ',
'and nvl( estado, ''S'' ) <> ''N''',
'--and cod_rubro = :b_cabecera.tipo_envio ',
'order by descripcion'))
,p_cSize=>30
,p_cMaxlength=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(81069783466397102)
,p_name=>'P323_CANTIDAD'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(80625165641136646)
,p_prompt=>'Cantidad'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(81069841619397103)
,p_name=>'P323_IND_RECEPCION_1'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(80625165641136646)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(81070021108397105)
,p_name=>'P323_NRO_LOTE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(80625165641136646)
,p_prompt=>'Nro Lote'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_LOTES_STENVIO'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select to_char( l.fec_vencimiento, ''DD/MM/YYYY'' ) fec_vencimiento, l.nro_lote, sum( nvl( e.cant_dispon, 0 ) ) existencia ',
'  from st_lotes l, st_existencia_art e ',
' where l.cod_empresa = :P_COD_EMPRESA ',
'   and l.cod_articulo = :P323_COD_ARTICULO',
'   and l.cod_empresa = e.cod_empresa (+) ',
'   and :P323_CAB_COD_SUCURSAL = e.cod_sucursal (+) ',
'   and l.cod_articulo = e.cod_articulo (+) ',
'   and l.nro_lote = e.nro_lote (+)',
'   and e.cant_dispon > 0 ',
' group by to_char( l.fec_vencimiento, ''DD/MM/YYYY'' ), l.nro_lote ',
'order by 1'))
,p_lov_cascade_parent_items=>'P323_COD_ARTICULO'
,p_ajax_items_to_submit=>'P323_COD_ARTICULO,P323_CAB_COD_SUCURSAL'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_cMaxlength=>20
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(81070144114397106)
,p_name=>'P323_CANTIDAD_UB'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(80625165641136646)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(81070289053397107)
,p_name=>'P323_COD_UNIDAD_MEDIDA'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(80625165641136646)
,p_prompt=>'Cod Unidad Medida'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_RELACIONES_STENVIO'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select u.cod_unidad_medida||'' - ''|| u.descripcion d, r.cod_relacion_um, r.cod_unidad_rel R',
'from st_relaciones r, st_unidades_medida u ',
'where r.cod_relacion_um =:P323_COD_RELACION_UM',
'and r.cod_unidad_rel = u.cod_unidad_medida ',
'order by descripcion'))
,p_lov_cascade_parent_items=>'P323_COD_RELACION_UM'
,p_ajax_items_to_submit=>'P323_COD_RELACION_UM'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_cMaxlength=>5
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(81070356546397108)
,p_name=>'P323_ORIGEN'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(80625165641136646)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(81070456322397109)
,p_name=>'P323_DESC_ARTICULO'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(80625165641136646)
,p_prompt=>unistr('Descripci\00F3n')
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
 p_id=>wwv_flow_imp.id(81070995524397114)
,p_name=>'P323_COD_RELACION_UM'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(80625165641136646)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(81071633706397121)
,p_name=>'P323_DIV'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(78229977149554121)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(81071754698397122)
,p_name=>'P323_MULT'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(78229977149554121)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(81072099440397125)
,p_name=>'P323_DESCRIPCION'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(80625165641136646)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(81074055770397145)
,p_name=>'P323_VER_DATOS'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(79825816297496721)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(81887680308037615)
,p_name=>'P323_AUX_BUSCA'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(79827576082496738)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(80622254412136617)
,p_validation_name=>'VA_CAB_FEC_VENCIMIENTO'
,p_validation_sequence=>10
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF NVL(:P323_IND_RESERVA,''N'')=''S'' AND :P323_CAB_FEC_VENCIMIENTO IS NULL THEN',
'	RETURN FALSE;',
'ELSE',
'    RETURN TRUE;',
'END IF;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>unistr('Para el dep\00F3sito reserva la fecha no puede quedar en blanco.')
,p_associated_item=>wwv_flow_imp.id(79824253045496705)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(80622330706136618)
,p_validation_name=>'VA_CAB_COD_USUARIO_RESERVA'
,p_validation_sequence=>20
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF  NVL(:P323_IND_RESERVA,''N'')=''S'' AND :P323_CAB_COD_USUARIO_RESERVA IS NULL THEN',
'    RETURN FALSE;',
'ELSE',
'    RETURN TRUE; ',
'END IF;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>unistr('Para el dep\00F3sito reserva el responsable no puede quedar en blanco.')
,p_associated_item=>wwv_flow_imp.id(79824333797496706)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(81886463698037603)
,p_validation_name=>'VA_CAB_COD_SUCURSAL'
,p_validation_sequence=>30
,p_validation=>'P323_CAB_COD_SUCURSAL'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Debe seleccionar una sucursal de salida.'
,p_associated_item=>wwv_flow_imp.id(79252043323252727)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(81886559964037604)
,p_validation_name=>'VA_CAB_COD_SUCURSAL_ENT'
,p_validation_sequence=>40
,p_validation=>'P323_CAB_COD_SUCURSAL_ENT'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Debe seleccionar una sucursal de salida.'
,p_associated_item=>wwv_flow_imp.id(79252173181252728)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(81886804236037607)
,p_validation_name=>'VA_CAB_SER_ENVIO'
,p_validation_sequence=>50
,p_validation=>'P323_CAB_SER_ENVIO'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Debe ingresar la serie.'
,p_associated_item=>wwv_flow_imp.id(79252759251252734)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(81886942940037608)
,p_validation_name=>'VA_CAB_NRO_ENVIO'
,p_validation_sequence=>60
,p_validation=>'P323_CAB_NRO_ENVIO'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>unistr('Debe ingresar un n\00FAmero.')
,p_associated_item=>wwv_flow_imp.id(79251965593252726)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(81887099511037609)
,p_validation_name=>'VA_CAB_FECHA'
,p_validation_sequence=>70
,p_validation=>'P323_CAB_FECHA'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Debe seleccionar una fecha.'
,p_associated_item=>wwv_flow_imp.id(79252291915252729)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(806118843347294949)
,p_validation_name=>'va_nro_env_pend'
,p_validation_sequence=>80
,p_validation=>'P323_CAB_REFERENCIA'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Debe cargar el numero de Nota de Envio Pendiente'
,p_associated_item=>wwv_flow_imp.id(79823921873496702)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(79826794917496730)
,p_name=>'DA_SHOW_LOV'
,p_event_sequence=>10
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
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
 p_id=>wwv_flow_imp.id(209703321027309503)
,p_event_id=>wwv_flow_imp.id(79826794917496730)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P323_LV_SERIES'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(79826809492496731)
,p_event_id=>wwv_flow_imp.id(79826794917496730)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(79827286927496735)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P323_SHOW_LOV'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(79827057038496733)
,p_name=>'DA_LOV_SERIES'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P323_LV_SERIES'
,p_condition_element=>'P323_LV_SERIES'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(79827120890496734)
,p_event_id=>wwv_flow_imp.id(79827057038496733)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P323_CAB_SER_ENVIO := :P323_LV_SERIES;'
,p_attribute_02=>'P323_LV_SERIES'
,p_attribute_03=>'P323_CAB_SER_ENVIO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(79827369956496736)
,p_name=>'DA_SER_ENVIO'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P323_CAB_SER_ENVIO'
,p_condition_element=>'P323_CAB_SER_ENVIO'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(80052944366183127)
,p_event_id=>wwv_flow_imp.id(79827369956496736)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'STENVIO.PR_VALIDA_SER_ENVIO(PI_COD_EMPRESA   => :P323_COD_EMPRESA,',
'                            PI_SER_ENVIO     => :P323_CAB_SER_ENVIO,',
'                            PO_SER_ARTICULO  => :P323_SER_ARTICULO);'))
,p_attribute_02=>'P323_COD_EMPRESA,P323_CAB_SER_ENVIO'
,p_attribute_03=>'P323_SER_ARTICULO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(79827435501496737)
,p_event_id=>wwv_flow_imp.id(79827369956496736)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'STENVIO.PR_NRO_ENVIO(PI_COD_EMPRESA => :P323_COD_EMPRESA,',
'                     PI_TIP_ENVIO   => :P323_TIP_ENVIO,',
'                     PI_SER_ENVIO   => :P323_CAB_SER_ENVIO,',
'                     PO_NRO_ENVIO   => :P323_CAB_NRO_ENVIO);'))
,p_attribute_02=>'P323_COD_EMPRESA,P323_TIP_ENVIO,P323_CAB_SER_ENVIO'
,p_attribute_03=>'P323_CAB_NRO_ENVIO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(79827922269496742)
,p_name=>'DA_BUSCAR'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(79825486987496717)
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'apex.item(''P323_CAB_TIP_ENVIO'').getValue() != '''' && apex.item(''P323_CAB_SER_ENVIO'').getValue() != '''' && apex.item(''P323_CAB_NRO_ENVIO'').getValue() != '''''
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(80622668854136621)
,p_event_id=>wwv_flow_imp.id(79827922269496742)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>unistr('Debe ingresar la serie y n\00FAmero del env\00EDo para la b\00FAsqueda.')
,p_attribute_02=>'Error'
,p_attribute_03=>'information'
,p_attribute_06=>'Aceptar'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(81887744329037616)
,p_event_id=>wwv_flow_imp.id(79827922269496742)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P323_AUX_BUSCA := 1;'
,p_attribute_03=>'P323_AUX_BUSCA'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(79828032096496743)
,p_event_id=>wwv_flow_imp.id(79827922269496742)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'STENVIO.PR_BUSCA_NOTA(PI_COD_EMPRESA          => :P323_COD_EMPRESA,',
'                      PI_TIP_ENVIO            => :P323_CAB_TIP_ENVIO,',
'                      PI_SER_ENVIO            => :P323_CAB_SER_ENVIO,',
'                      PI_NRO_ENVIO            => TO_NUMBER(:P323_CAB_NRO_ENVIO),',
'                      PO_COD_SUCURSAL         => :P323_CAB_COD_SUCURSAL,',
'                      PO_COD_SUCURSAL_ENT     => :P323_CAB_COD_SUCURSAL_ENT,',
'                      PO_FECHA                => :P323_CAB_FECHA,',
'                      PO_ESTADO               => :P323_ESTADO,',
'                      --PO_IND_RECEPCION        => :P323_IND_RECEPCION,',
'                      PO_COD_USUARIO_REC      => :P323_CAB_COD_USUARIO_REC,',
'                      PO_HORA                 => :P323_CAB_HORA,',
'                      PO_OBS                  => :P323_CAB_OBS,',
'                      --PO_REPOSICION           => :P323_CAB_REPOSICION,',
'                      --PO_DEVOLUCION           => :P323_CAB_DEVOLUCION,',
'                      --PO_CAMBIO_DIRECTO       => :P323_CAB_CAMBIO_DIRECTO,',
'                      PO_TIP_COMPROBANTE_REF  => :P323_CAB_TIP_COMPROBANTE_REF,',
'                      PO_SER_COMPROBANTE_REF  => :P323_CAB_SER_COMPROBANTE_REF,',
'                      PO_NRO_COMPROBANTE_REF  => :P323_CAB_NRO_COMPROBANTE_REF,',
'                      PO_MARCA_TRANS          => :P323_CAB_MARCA_TRANS,',
'                      PO_TRANSPORTISTA        => :P323_TRANSPORTISTA,',
'                      PO_CONDUCTOR            => :P323_CAB_CONDUCTOR,',
'                      PO_DIRECC_CONDUC        => :P323_CAB_DIRECC_CONDUC,',
'                      PO_CHAPA                => :P323_CAB_CHAPA,',
'                      PO_RUC_TRANS            => :P323_CAB_RUC_TRANS,',
'                      PO_CED_COND             => :P323_CAB_CED_COND,',
'                      --PO_TECNICO              => :P323_CAB_TECNICO,',
'                      --PO_DEPOSITERO           => :P323_CAB_DEPOSITERO,',
'                      PO_REFERENCIA           => :P323_CAB_REFERENCIA,',
'                      PO_TIPO_ENVIO           => :P323_CAB_TIPO_ENVIO,',
'                      PO_DESC_USUARIO         => :P323_CAB_DESC_USUARIO,',
'                      PO_FEC_VENCIMIENTO      => :P323_CAB_FEC_VENCIMIENTO,',
'                      PO_COD_USUARIO_RESERVA  => :P323_CAB_COD_USUARIO_RESERVA,',
'                      PO_IND_RESERVA          => :P323_IND_RESERVA,',
'                      PO_COD_REPARTIDOR       => :P323_CAB_COD_REPARTIDOR,',
'                      PO_COD_VEHICULO         => :P323_CAB_COD_VEHICULO,',
'                      PO_NRO_REMISION         => :P323_CAB_NRO_REMISION,',
'                      PO_FEC_ALTA             => :P323_FEC_ALTA,',
'                      PO_SER_REFERENCIA       => :P323_SER_REFERENCIA,',
'                      PO_COD_AYUDANTE_2       => :P323_CAB_COD_AYUDANTE_1,',
'                      PO_COD_AYUDANTE_1       => :P323_CAB_COD_AYUDANTE_2,',
'                      PO_COD_ZONA_REPARTO     => :P323_CAB_COD_ZONA_REPARTO);',
'',
''))
,p_attribute_02=>'P323_COD_EMPRESA,P323_CAB_TIP_ENVIO,P323_CAB_SER_ENVIO,P323_CAB_NRO_ENVIO'
,p_attribute_03=>'P323_CAB_COD_SUCURSAL, P323_CAB_COD_SUCURSAL_ENT, P323_CAB_FECHA, P323_ESTADO, P323_IND_RECEPCION, P323_CAB_COD_USUARIO_REC, P323_CAB_HORA, P323_CAB_OBS, P323_CAB_REPOSICION, P323_CAB_DEVOLUCION, P323_CAB_CAMBIO_DIRECTO, P323_CAB_TIP_COMPROBANTE_REF,'
||' P323_CAB_SER_COMPROBANTE_REF, P323_CAB_NRO_COMPROBANTE_REF, P323_CAB_MARCA_TRANS, P323_TRANSPORTISTA, P323_CAB_CONDUCTOR, P323_CAB_DIRECC_CONDUC, P323_CAB_CHAPA, P323_CAB_RUC_TRANS, P323_CAB_CED_COND, P323_CAB_TECNICO, P323_CAB_DEPOSITERO, P323_CAB_'
||'REFERENCIA, P323_CAB_TIPO_ENVIO, P323_CAB_DESC_USUARIO, P323_CAB_FEC_VENCIMIENTO, P323_CAB_COD_USUARIO_RESERVA, P323_IND_RESERVA, P323_CAB_COD_REPARTIDOR, P323_CAB_COD_VEHICULO, P323_CAB_NRO_REMISION, P323_FEC_ALTA, P323_SER_REFERENCIA, P323_CAB_COD_'
||'AYUDANTE_1, P323_CAB_COD_AYUDANTE_2, P323_CAB_COD_ZONA_REPARTO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(80622462291136619)
,p_event_id=>wwv_flow_imp.id(79827922269496742)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'--post-query',
'STENVIO.PR_POST_QUERY_CAB(PI_COD_EMPRESA          => :P323_COD_EMPRESA,',
'                          PI_SER_ENVIO            => :P323_CAB_SER_ENVIO,',
'                          PI_COD_SUCURSAL         => :P323_CAB_COD_SUCURSAL,',
'                          PI_COD_SUCURSAL_ENT     => :P323_CAB_COD_SUCURSAL_ENT,',
'                          PI_TIP_ENVIO            => :P323_CAB_TIP_ENVIO,',
'                          PI_NRO_ENVIO            => TO_NUMBER(:P323_CAB_NRO_ENVIO),',
'                          PI_COD_USUARIO_RESERVA  => :P323_CAB_COD_USUARIO_RESERVA,',
'                          PI_COD_VEHICULO         => :P323_CAB_COD_VEHICULO,',
'                          PI_COD_REPARTIDOR       => :P323_CAB_COD_REPARTIDOR,',
'                          PI_COD_ZONA_REPARTO     => :P323_CAB_COD_ZONA_REPARTO,',
'                          PI_COD_AYUDANTE_1       => :P323_CAB_COD_AYUDANTE_1,',
'                          PI_COD_AYUDANTE_2       => :P323_CAB_COD_AYUDANTE_2,',
'                          PO_CARGA_DETALLE        => :P323_CARGA_DETALLE,',
'                          PO_SER_ARTICULO         => :P323_SER_ARTICULO,',
'                          PO_DESC_SUCURSAL        => :P323_CAB_DESC_SUCURSAL,',
'                          PO_DESC_SUCURSAL_ENT    => :P323_DESC_SUCURSAL_ENT,',
'                          PO_DESC_USUARIO_RESERVA => :P323_CAB_DESC_USUARIO_RESERVA,',
'                          PO_NOM_VEHICULO         => :P323_CAB_NOM_VEHICULO,',
'                          PO_NOM_REPARTIDOR       => :P323_CAB_NOM_REPARTIDOR,',
'                          PO_DESC_ZONA            => :P323_CAB_DESC_ZONA_REPARTO,',
'                          PO_DESC_AYUDANTE_1      => :P323_CAB_DESC_AYUDANTE_1,',
'                          PO_DESC_AYUDANTE_2      => :P323_CAB_DESC_AYUDANTE_2);'))
,p_attribute_02=>'P323_COD_EMPRESA,P323_CAB_SER_ENVIO,P323_CAB_COD_SUCURSAL,P323_CAB_COD_SUCURSAL_ENT,P323_CAB_TIP_ENVIO,P323_CAB_NRO_ENVIO, P323_CAB_COD_USUARIO_RESERVA,P323_CAB_COD_VEHICULO,P323_CAB_COD_REPARTIDOR,P323_CAB_COD_ZONA_REPARTO,P323_CAB_COD_ZONA_REPARTO,'
||' P323_CAB_COD_AYUDANTE_1,P323_CAB_COD_AYUDANTE_2'
,p_attribute_03=>'P323_CARGA_DETALLE,P323_SER_ARTICULO,P323_CAB_DESC_SUCURSAL,P323_DESC_SUCURSAL_ENT,P323_CAB_DESC_USUARIO_RESERVA, P323_CAB_NOM_VEHICULO,P323_CAB_NOM_REPARTIDOR,P323_CAB_DESC_ZONA_REPARTO,P323_CAB_DESC_AYUDANTE_1,P323_CAB_DESC_AYUDANTE_2'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(80622809345136623)
,p_event_id=>wwv_flow_imp.id(79827922269496742)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P323_CAB_COD_USUARIO_RESERVA'
,p_client_condition_type=>'NOT_EQUALS'
,p_client_condition_element=>'P323_IND_RESERVA'
,p_client_condition_expression=>'S'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(80623045773136625)
,p_event_id=>wwv_flow_imp.id(79827922269496742)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P323_CAB_COD_USUARIO_RESERVA'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P323_IND_RESERVA'
,p_client_condition_expression=>'S'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(80622921172136624)
,p_event_id=>wwv_flow_imp.id(79827922269496742)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P323_CAB_FEC_VENCIMIENTO'
,p_client_condition_type=>'NOT_EQUALS'
,p_client_condition_element=>'P323_IND_RESERVA'
,p_client_condition_expression=>'S'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(80623111262136626)
,p_event_id=>wwv_flow_imp.id(79827922269496742)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P323_CAB_FEC_VENCIMIENTO'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P323_IND_RESERVA'
,p_client_condition_expression=>'S'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(80623469308136629)
,p_event_id=>wwv_flow_imp.id(79827922269496742)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P323_CAB_COD_SUCURSAL,P323_CAB_COD_SUCURSAL_ENT'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(80623291887136627)
,p_event_id=>wwv_flow_imp.id(79827922269496742)
,p_event_result=>'TRUE'
,p_action_sequence=>90
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'STENVIO.PR_BUSCA_DETALLE(PI_COD_EMPRESA   => :P323_COD_EMPRESA,',
'                         PI_TIP_ENVIO     => :P323_CAB_TIP_ENVIO,',
'                         PI_SER_ENVIO     => :P323_CAB_SER_ENVIO,',
'                         PI_NRO_ENVIO     => TO_NUMBER(:P323_CAB_NRO_ENVIO));'))
,p_attribute_02=>'P323_COD_EMPRESA,P323_CAB_TIP_ENVIO,P323_CAB_SER_ENVIO,P323_CAB_NRO_ENVIO'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(80623332981136628)
,p_event_id=>wwv_flow_imp.id(79827922269496742)
,p_event_result=>'TRUE'
,p_action_sequence=>110
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(79825816297496721)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(80624259826136637)
,p_event_id=>wwv_flow_imp.id(79827922269496742)
,p_event_result=>'TRUE'
,p_action_sequence=>120
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(80050969930183107)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(80624371521136638)
,p_event_id=>wwv_flow_imp.id(79827922269496742)
,p_event_result=>'TRUE'
,p_action_sequence=>130
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(80050621025183104)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(80624429934136639)
,p_event_id=>wwv_flow_imp.id(79827922269496742)
,p_event_result=>'TRUE'
,p_action_sequence=>140
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(80050721260183105)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(80624579330136640)
,p_event_id=>wwv_flow_imp.id(79827922269496742)
,p_event_result=>'TRUE'
,p_action_sequence=>150
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(80050826777183106)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(80624615840136641)
,p_event_id=>wwv_flow_imp.id(79827922269496742)
,p_event_result=>'TRUE'
,p_action_sequence=>160
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(80051026645183108)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(80051107067183109)
,p_name=>'DA_BUSCAR_PEDIDO'
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(80051026645183108)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(80051245809183110)
,p_event_id=>wwv_flow_imp.id(80051107067183109)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'STENVIO.PR_CARGA_COL_DETALLE(PI_COD_EMPRESA           => :P323_COD_EMPRESA,',
'                             PI_CARGA_DETALLE         => :P323_CARGA_DETALLE,',
'                             PI_REFERENCIA            => :P323_CAB_REFERENCIA,',
'                             PI_TIP_COMPROBANTE_REF   => :P323_CAB_TIP_COMPROBANTE_REF,',
'                             PI_SER_COMPROBANTE_REF   => :P323_CAB_SER_COMPROBANTE_REF,',
'                             PI_NRO_COMPROBANTE_REF   => TO_NUMBER(:P323_CAB_NRO_COMPROBANTE_REF),',
'                             PO_CARGA_DETALLE         => :P323_CARGA_DETALLE);'))
,p_attribute_02=>'P323_COD_EMPRESA,P323_CARGA_DETALLE,P323_CAB_REFERENCIA,P323_CAB_TIP_COMPROBANTE_REF,P323_CAB_SER_COMPROBANTE_REF,P323_CAB_NRO_COMPROBANTE_REF'
,p_attribute_03=>'P323_CARGA_DETALLE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(80052075714183118)
,p_event_id=>wwv_flow_imp.id(80051107067183109)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(79825816297496721)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(80053067356183128)
,p_name=>'DA_TIP_COMPROBANTE_REF'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P323_CAB_TIP_COMPROBANTE_REF'
,p_condition_element=>'P323_CAB_TIP_COMPROBANTE_REF'
,p_triggering_condition_type=>'NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(80053116178183129)
,p_event_id=>wwv_flow_imp.id(80053067356183128)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P323_CAB_SER_COMPROBANTE_REF := NULL;',
':P323_CAB_NRO_COMPROBANTE_REF := NULL;',
''))
,p_attribute_03=>'P323_CAB_SER_COMPROBANTE_REF,P323_CAB_NRO_COMPROBANTE_REF'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(80053280820183130)
,p_name=>'DA_SER_COMPROBANTE_REF'
,p_event_sequence=>70
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P323_CAB_SER_COMPROBANTE_REF'
,p_condition_element=>'P323_CAB_TIP_COMPROBANTE_REF'
,p_triggering_condition_type=>'NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'focusin'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(80053346486183131)
,p_event_id=>wwv_flow_imp.id(80053280820183130)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_FOCUS'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P323_CAB_REFERENCIA'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(80053620817183134)
,p_name=>'DA_REFERENCIA'
,p_event_sequence=>90
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P323_CAB_REFERENCIA'
,p_condition_element=>'P323_CAB_REFERENCIA'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(80053724583183135)
,p_event_id=>wwv_flow_imp.id(80053620817183134)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'STENVIO.PR_VALIDA_REFERENCIA(PI_COD_EMPRESA           => :P323_COD_EMPRESA,',
'                             PI_REFERENCIA            => TO_NUMBER(:P323_CAB_REFERENCIA),',
'                             PI_COD_USUARIO           => :P323_COD_USUARIO,',
'                             PO_COD_SUCURSAL          => :P323_CAB_COD_SUCURSAL,',
'                             PO_COD_SUCURSAL_ENT      => :P323_CAB_COD_SUCURSAL_ENT,',
'                             PO_FEC_VENCIMIENTO       => :P323_CAB_FEC_VENCIMIENTO, ',
'                             PO_COD_USUARIO_RESERVA   => :P323_CAB_COD_USUARIO_RESERVA, ',
'                             PO_IND_RESERVA           => :P323_IND_RESERVA,',
'                             PO_NRO_REMISION          => :P323_CAB_NRO_REMISION);',
''))
,p_attribute_02=>'P323_COD_EMPRESA,P323_CAB_REFERENCIA,P323_COD_USUARIO'
,p_attribute_03=>'P323_CAB_COD_SUCURSAL,P323_CAB_COD_SUCURSAL_ENT,P323_CAB_FEC_VENCIMIENTO,P323_CAB_COD_USUARIO_RESERVA,P323_IND_RESERVA,P323_CAB_NRO_REMISION'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P323_AUX_BUSCA'
,p_client_condition_expression=>'2'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(80625045318136645)
,p_event_id=>wwv_flow_imp.id(80053620817183134)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'STENVIO.PR_CARGA_COL_DETALLE(PI_COD_EMPRESA           => :P323_COD_EMPRESA,',
'                             PI_CARGA_DETALLE         => ''N'',',
'                             PI_REFERENCIA            => :P323_CAB_REFERENCIA,',
'                             PI_TIP_COMPROBANTE_REF   => :P323_CAB_TIP_COMPROBANTE_REF,',
'                             PI_SER_COMPROBANTE_REF   => :P323_CAB_SER_COMPROBANTE_REF,',
'                             PI_NRO_COMPROBANTE_REF   => TO_NUMBER(:P323_CAB_NRO_COMPROBANTE_REF),',
'                             PO_CARGA_DETALLE         => :P323_CARGA_DETALLE);'))
,p_attribute_02=>'P323_COD_EMPRESA,P323_CARGA_DETALLE,P323_CAB_REFERENCIA,P323_CAB_TIP_COMPROBANTE_REF,P323_CAB_SER_COMPROBANTE_REF,P323_CAB_NRO_COMPROBANTE_REF'
,p_attribute_03=>'P323_CARGA_DETALLE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P323_AUX_BUSCA'
,p_client_condition_expression=>'2'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(81887533280037614)
,p_event_id=>wwv_flow_imp.id(80053620817183134)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(79825816297496721)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P323_AUX_BUSCA'
,p_client_condition_expression=>'2'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(80053831584183136)
,p_name=>'DA_CAB_COD_SUCURSAL'
,p_event_sequence=>100
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P323_CAB_COD_SUCURSAL'
,p_condition_element=>'P323_CARGA_SUCURSAL'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'N'
,p_bind_type=>'bind'
,p_bind_event_type=>'focusin'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(80053978145183137)
,p_event_id=>wwv_flow_imp.id(80053831584183136)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_FOCUS'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P323_CAB_COD_SUCURSAL_ENT'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(80054032992183138)
,p_name=>'DA_CAB_COD_SUCURSAL1'
,p_event_sequence=>110
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P323_CAB_COD_SUCURSAL'
,p_condition_element=>'P323_CAB_COD_SUCURSAL'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(80054161017183139)
,p_event_id=>wwv_flow_imp.id(80054032992183138)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P323_AUX_MENSAJE := NULL;',
'STENVIO.PR_VALIDA_COD_SUCURSAL(PI_COD_EMPRESA     => :P323_COD_EMPRESA,',
'                               PI_COD_USUARIO     => :P323_COD_USUARIO,',
'                               PI_COD_SUCURSAL    => :P323_CAB_COD_SUCURSAL,',
'                               PO_DESC_SUCURSAL   => :P323_CAB_DESC_SUCURSAL,',
'                               PO_MENSAJE         => :P323_AUX_MENSAJE);'))
,p_attribute_02=>'P323_COD_EMPRESA,P323_COD_USUARIO,P323_CAB_COD_SUCURSAL'
,p_attribute_03=>'P323_AUX_MENSAJE,P323_CAB_DESC_SUCURSAL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(80621235644136607)
,p_event_id=>wwv_flow_imp.id(80054032992183138)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P323_CAB_DESC_SUCURSAL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(80054277260183140)
,p_event_id=>wwv_flow_imp.id(80054032992183138)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P323_AUX_MENSAJE.'
,p_attribute_02=>'Error'
,p_attribute_03=>'information'
,p_attribute_06=>'Aceptar'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P323_AUX_MENSAJE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(80054437007183142)
,p_name=>'DA_CAB_COD_SUCURSAL_ENT'
,p_event_sequence=>120
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P323_CAB_COD_SUCURSAL_ENT'
,p_condition_element=>'P323_CAB_COD_SUCURSAL_ENT'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(80054514735183143)
,p_event_id=>wwv_flow_imp.id(80054437007183142)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'STENVIO.PR_VALIDA_COD_SUC_ENT(PI_COD_EMPRESA          => :P323_COD_EMPRESA,',
'                              PI_COD_USUARIO          => :P323_COD_USUARIO,',
'                              PI_COD_SUCURSAL         => :P323_CAB_COD_SUCURSAL,',
'                              PI_COD_SUCURSAL_ENT     => :P323_CAB_COD_SUCURSAL_ENT,',
'                              PO_DESC_SUCURSAL_ENT    => :P323_DESC_SUCURSAL_ENT,',
'                              PO_IND_RESERVA          => :P323_IND_RESERVA);'))
,p_attribute_02=>'P323_COD_EMPRESA,P323_COD_USUARIO,P323_CAB_COD_SUCURSAL,P323_CAB_COD_SUCURSAL_ENT'
,p_attribute_03=>'P323_DESC_SUCURSAL_ENT,P323_IND_RESERVA'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(80621196456136606)
,p_event_id=>wwv_flow_imp.id(80054437007183142)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P323_DESC_SUCURSAL_ENT'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(80054676097183144)
,p_name=>'DA_COD_ZONA_REPARTO'
,p_event_sequence=>130
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P323_CAB_COD_ZONA_REPARTO'
,p_condition_element=>'P323_CAB_COD_ZONA_REPARTO'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(80054737056183145)
,p_event_id=>wwv_flow_imp.id(80054676097183144)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'STENVIO.PR_DESC_ZONA(PI_COD_ZONA_REPARTO  => :P323_CAB_COD_ZONA_REPARTO,',
'                       PO_DESC_ZONA       => :P323_CAB_DESC_ZONA_REPARTO);'))
,p_attribute_02=>'P323_CAB_COD_ZONA_REPARTO'
,p_attribute_03=>'P323_CAB_DESC_ZONA_REPARTO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(80621043714136605)
,p_event_id=>wwv_flow_imp.id(80054676097183144)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P323_CAB_DESC_ZONA_REPARTO'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(80620770696136602)
,p_name=>'DA_CAB_COD_VEHICULO'
,p_event_sequence=>140
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P323_CAB_COD_VEHICULO'
,p_condition_element=>'P323_CAB_COD_VEHICULO'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(80620863037136603)
,p_event_id=>wwv_flow_imp.id(80620770696136602)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'STENVIO.PR_NOM_VEHICULO(PI_COD_EMPRESA   => :P323_COD_EMPRESA,',
'                        PI_COD_VEHICULO  => :P323_CAB_COD_VEHICULO,',
'                        PO_NOM_VEHICULO  => :P323_CAB_NOM_VEHICULO);'))
,p_attribute_02=>'P323_COD_EMPRESA,P323_CAB_COD_VEHICULO'
,p_attribute_03=>'P323_CAB_NOM_VEHICULO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(80620948616136604)
,p_event_id=>wwv_flow_imp.id(80620770696136602)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P323_CAB_NOM_VEHICULO'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(80621319871136608)
,p_name=>'DA_CAB_COD_REPARTIDOR'
,p_event_sequence=>150
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P323_CAB_COD_REPARTIDOR'
,p_condition_element=>'P323_CAB_COD_REPARTIDOR'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(80621469022136609)
,p_event_id=>wwv_flow_imp.id(80621319871136608)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'STENVIO.PR_NOM_REPARTIDOR(PI_COD_EMPRESA     => :P323_COD_EMPRESA,',
'                          PI_COD_REPARTIDOR  => :P323_CAB_COD_REPARTIDOR,',
'                          PO_NOM_REPARTIDOR  => :P323_CAB_NOM_REPARTIDOR);'))
,p_attribute_02=>'P323_COD_EMPRESA,P323_CAB_COD_REPARTIDOR'
,p_attribute_03=>'P323_CAB_NOM_REPARTIDOR'
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
 p_id=>wwv_flow_imp.id(80621537212136610)
,p_event_id=>wwv_flow_imp.id(80621319871136608)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P323_CAB_NOM_REPARTIDOR'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(80621644876136611)
,p_name=>'DA_CAB_COD_AYUDANTE_1'
,p_event_sequence=>160
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P323_CAB_COD_AYUDANTE_1'
,p_condition_element=>'P323_CAB_COD_AYUDANTE_1'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(80621705543136612)
,p_event_id=>wwv_flow_imp.id(80621644876136611)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'STENVIO.PR_DESC_AYUDANTE(PI_COD_EMPRESA    => :P323_COD_EMPRESA,',
'                         PI_COD_AYUDANTE   => :P323_CAB_COD_AYUDANTE_1,',
'                         PO_DESC_AYUDANTE  => :P323_CAB_DESC_AYUDANTE_1);'))
,p_attribute_02=>'P323_COD_EMPRESA,P323_CAB_COD_AYUDANTE_1'
,p_attribute_03=>'P323_CAB_DESC_AYUDANTE_1'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(80621814342136613)
,p_name=>'DA_CAB_COD_AYUDANTE_2'
,p_event_sequence=>170
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P323_CAB_COD_AYUDANTE_2'
,p_condition_element=>'P323_CAB_COD_AYUDANTE_2'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(80621923022136614)
,p_event_id=>wwv_flow_imp.id(80621814342136613)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF nvl(:P323_CAB_COD_AYUDANTE_2,''03'') = nvl(:P323_CAB_COD_AYUDANTE_1,''05'') THEN ',
'	RAISE_APPLICATION_ERROR(-20010, ''Error no se puede cargar el mismo ayudante dos veces '' );  ',
'ELSE',
'    STENVIO.PR_DESC_AYUDANTE(PI_COD_EMPRESA    => :P323_COD_EMPRESA,',
'                             PI_COD_AYUDANTE   => :P323_CAB_COD_AYUDANTE_2,',
'                             PO_DESC_AYUDANTE  => :P323_CAB_DESC_AYUDANTE_2);',
'END IF;                         '))
,p_attribute_02=>'P323_COD_EMPRESA,P323_CAB_COD_AYUDANTE_2,P323_CAB_COD_AYUDANTE_1'
,p_attribute_03=>'P323_CAB_DESC_AYUDANTE_2'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(80622014093136615)
,p_name=>'DA_CAB_COD_USUARIO_RESERVA'
,p_event_sequence=>180
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P323_CAB_COD_USUARIO_RESERVA'
,p_condition_element=>'P323_CAB_COD_USUARIO_RESERVA'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(80622155976136616)
,p_event_id=>wwv_flow_imp.id(80622014093136615)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'STENVIO.PR_USUARIO_RESERVA(PI_COD_EMPRESA           => :P323_COD_EMPRESA,',
'                           PI_COD_USUARIO_RESERVA   => :P323_CAB_COD_USUARIO_RESERVA,',
'                           PO_DESC_USUARIO_RESERVA  => :P323_CAB_DESC_USUARIO_RESERVA);',
'                               '))
,p_attribute_02=>'P323_COD_EMPRESA,P323_CAB_COD_USUARIO_RESERVA'
,p_attribute_03=>'P323_CAB_DESC_USUARIO_RESERVA'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(80623576461136630)
,p_name=>'DA_ENABLE_DISABLE'
,p_event_sequence=>190
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(80623682461136631)
,p_event_id=>wwv_flow_imp.id(80623576461136630)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P323_CAB_COD_SUCURSAL,P323_CAB_COD_SUCURSAL_ENT'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(80623887909136633)
,p_event_id=>wwv_flow_imp.id(80623576461136630)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(80050621025183104)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(80623942680136634)
,p_event_id=>wwv_flow_imp.id(80623576461136630)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(80050969930183107)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(80624167098136636)
,p_event_id=>wwv_flow_imp.id(80623576461136630)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(80050721260183105)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(80624059049136635)
,p_event_id=>wwv_flow_imp.id(80623576461136630)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(80050826777183106)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(80624895514136643)
,p_event_id=>wwv_flow_imp.id(80623576461136630)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(80051026645183108)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(81070562114397110)
,p_name=>'DA_CANTIDAD'
,p_event_sequence=>200
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P323_CANTIDAD'
,p_condition_element=>'P323_CANTIDAD'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(81070660686397111)
,p_event_id=>wwv_flow_imp.id(81070562114397110)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'STENVIO.PR_VALIDA_CANTIDAD(PI_CANTIDAD        => TO_NUMBER(:P323_CANTIDAD),',
'                           PI_COD_EMPRESA     => :P323_COD_EMPRESA,',
'                           PI_COD_SUCURSAL    => :P323_CAB_COD_SUCURSAL,',
'                           PI_COD_ARTICULO    => :P323_COD_ARTICULO,',
'                           PI_NRO_LOTE        => :P323_NRO_LOTE,',
'                           PI_DIV             => TO_NUMBER(:P323_DIV),',
'                           PI_MULT            => TO_NUMBER(:P323_MULT),        ',
'                           PO_CANTIDAD_UB     => :P323_CANTIDAD_UB);'))
,p_attribute_02=>'P323_CANTIDAD,P323_COD_EMPRESA,P323_CAB_COD_SUCURSAL,P323_COD_ARTICULO,P323_NRO_LOTE,P323_DIV,P323_MULT'
,p_attribute_03=>'P323_CANTIDAD_UB'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(81070711889397112)
,p_name=>'DA_COD_ARTICULO'
,p_event_sequence=>210
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P323_COD_ARTICULO'
,p_condition_element=>'P323_COD_ARTICULO'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(81070821619397113)
,p_event_id=>wwv_flow_imp.id(81070711889397112)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'STENVIO.PR_VALIDA_ARTICULO(PI_COD_EMPRESA         => :P323_COD_EMPRESA,',
'                           PI_COD_ARTICULO        => :P323_COD_ARTICULO,',
'                           PI_COD_SUCURSAL        => :P323_CAB_COD_SUCURSAL,',
'                           PO_DESC_ARTICULO       => :P323_DESC_ARTICULO, ',
'                           PO_ORIGEN              => :P323_ORIGEN, ',
'                           PO_COD_RELACION_UM     => :P323_COD_RELACION_UM, ',
'                           PO_COD_UNIDAD_MEDIDA   => :P323_COD_UNIDAD_MEDIDA);'))
,p_attribute_02=>'P323_COD_EMPRESA,P323_COD_ARTICULO,P323_CAB_COD_SUCURSAL'
,p_attribute_03=>'P323_DESC_ARTICULO,P323_ORIGEN,P323_COD_RELACION_UM,P323_COD_UNIDAD_MEDIDA'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(81071159191397116)
,p_name=>'DA_CANCELAR'
,p_event_sequence=>220
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(81071004280397115)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(81071253479397117)
,p_event_id=>wwv_flow_imp.id(81071159191397116)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(80625165641136646)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(81071330684397118)
,p_name=>'DA_AGREGAR'
,p_event_sequence=>230
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(80624993800136644)
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.item(''P323_CAB_NRO_COMPROBANTE_REF'').getValue()==='''' && apex.item(''P323_CAB_REFERENCIA'').getValue()===''''',
'',
''))
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(81071441663397119)
,p_event_id=>wwv_flow_imp.id(81071330684397118)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P323_EDITAR_REGISTRO,P323_COD_ARTICULO,P323_CANTIDAD,P323_IND_RECEPCION_1,P323_NRO_LOTE,P323_CANTIDAD_UB,P323_COD_UNIDAD_MEDIDA,P323_ORIGEN,P323_DESC_ARTICULO,P323_COD_RELACION_UM'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(209703460241309504)
,p_event_id=>wwv_flow_imp.id(81071330684397118)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'No se pueden agregar detalles.'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(81071597387397120)
,p_event_id=>wwv_flow_imp.id(81071330684397118)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(80625165641136646)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(81071800769397123)
,p_name=>'DA_COD_UNIDAD_MEDIDA'
,p_event_sequence=>240
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P323_COD_UNIDAD_MEDIDA'
,p_condition_element=>'P323_COD_UNIDAD_MEDIDA'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(81071934595397124)
,p_event_id=>wwv_flow_imp.id(81071800769397123)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'STENVIO.PR_VALIDA_UNIDAD_MEDIDA(PI_COD_EMPRESA         => :P323_COD_EMPRESA,',
'                                PI_COD_ARTICULO        => :P323_COD_ARTICULO,',
'                                PI_COD_RELACION_UM     => :P323_COD_RELACION_UM,',
'                                PI_COD_UNIDAD_MEDIDA   => :P323_COD_UNIDAD_MEDIDA, ',
'                                PO_DESCRIPCION         => :P323_DESCRIPCION, ',
'                                PO_MULT                => :P323_MULT, ',
'                                PO_DIV                 => :P323_DIV);'))
,p_attribute_02=>'P323_COD_EMPRESA,P323_COD_ARTICULO,P323_COD_RELACION_UM,P323_COD_UNIDAD_MEDIDA'
,p_attribute_03=>'P323_DESCRIPCION,P323_MULT,P323_DIV'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(81072131789397126)
,p_name=>'DA_NRO_LOTE'
,p_event_sequence=>250
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P323_NRO_LOTE'
,p_condition_element=>'P323_NRO_LOTE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(81072255224397127)
,p_event_id=>wwv_flow_imp.id(81072131789397126)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'STENVIO.PR_VALIDA_LOTE(PI_COD_EMPRESA         => :P323_COD_EMPRESA,',
'                       PI_COD_ARTICULO        => :P323_COD_ARTICULO,',
'                       PI_NRO_LOTE            => :P323_NRO_LOTE);'))
,p_attribute_02=>'P323_COD_EMPRESA,P323_COD_ARTICULO,P323_NRO_LOTE'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(81072664691397131)
,p_name=>'DA_GUARDAR_DET'
,p_event_sequence=>260
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(81072523282397130)
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'apex.item(''P323_COD_ARTICULO'').getValue() != '''' && apex.item(''P323_NRO_LOTE'').getValue() != '''' && apex.item(''P323_CANTIDAD'').getValue() != '''' && apex.item(''P323_COD_UNIDAD_MEDIDA'').getValue() != '''''
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(81072832835397133)
,p_event_id=>wwv_flow_imp.id(81072664691397131)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'STENVIO.PR_AGREGAR_DETALLE(PI_COD_ARTICULO          => :P323_COD_ARTICULO,',
'                           PI_DESC_ARTICULO         => :P323_DESC_ARTICULO,',
'                           PI_NRO_LOTE              => :P323_NRO_LOTE,',
'                           PI_ORIGEN                => :P323_ORIGEN,',
'                           PI_COD_RELACION_UM       => :P323_COD_RELACION_UM,',
'                           PI_DESCRIPCION           => :P323_DESCRIPCION,',
'                           PI_CANTIDAD              => TO_NUMBER(:P323_CANTIDAD),',
'                           PI_COD_EMPRESA           => :P323_COD_EMPRESA,',
'                           PI_TIP_ENVIO             => :P323_CAB_TIP_ENVIO,',
'                           PI_SER_ENVIO             => :P323_CAB_SER_ENVIO,',
'                           PI_NRO_ENVIO             => :P323_CAB_NRO_ENVIO,',
'                           PI_COD_UNIDAD_MEDIDA     => :P323_COD_UNIDAD_MEDIDA,',
'                           PI_CANTIDAD_UB           => :P323_CANTIDAD_UB);'))
,p_attribute_02=>'P323_CANTIDAD_UB,P323_COD_UNIDAD_MEDIDA,P323_COD_ARTICULO,P323_DESC_ARTICULO,P323_NRO_LOTE,P323_ORIGEN,P323_COD_RELACION_UM,P323_DESCRIPCION,P323_CANTIDAD,P323_COD_EMPRESA,P323_CAB_TIP_ENVIO,P323_CAB_SER_ENVIO,P323_CAB_NRO_ENVIO'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P323_EDITAR_REGISTRO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(81886623454037605)
,p_event_id=>wwv_flow_imp.id(81072664691397131)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>unistr('Debe completar todos los campos para ingresar el art\00EDculo.')
,p_attribute_02=>'Error'
,p_attribute_03=>'information'
,p_attribute_06=>'Aceptar'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(81073587265397140)
,p_event_id=>wwv_flow_imp.id(81072664691397131)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'STENVIO.PR_ACTUALIZA_DETALLE(PI_SEQ_ID                => :P323_EDITAR_REGISTRO,  ',
'                             PI_COD_ARTICULO          => :P323_COD_ARTICULO,',
'                             PI_DESC_ARTICULO         => :P323_DESC_ARTICULO,',
'                             PI_NRO_LOTE              => :P323_NRO_LOTE,',
'                             PI_ORIGEN                => :P323_ORIGEN,',
'                             PI_COD_RELACION_UM       => :P323_COD_RELACION_UM,',
'                             PI_DESCRIPCION           => :P323_DESCRIPCION,',
'                             PI_CANTIDAD              => TO_NUMBER(:P323_CANTIDAD),                           ',
'                             PI_COD_UNIDAD_MEDIDA     => :P323_COD_UNIDAD_MEDIDA,',
'                             PI_CANTIDAD_UB           => :P323_CANTIDAD_UB,',
'                             PI_COD_EMPRESA           => :P323_COD_EMPRESA);',
''))
,p_attribute_02=>'P323_COD_EMPRESA,P323_EDITAR_REGISTRO,P323_CANTIDAD_UB,P323_COD_UNIDAD_MEDIDA,P323_COD_ARTICULO,P323_DESC_ARTICULO,P323_NRO_LOTE,P323_ORIGEN,P323_COD_RELACION_UM,P323_DESCRIPCION,P323_CANTIDAD'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P323_EDITAR_REGISTRO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(81072741879397132)
,p_event_id=>wwv_flow_imp.id(81072664691397131)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(80625165641136646)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(81072949972397134)
,p_event_id=>wwv_flow_imp.id(81072664691397131)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>unistr('apex.message.showPageSuccess( "El registro se guard\00F3 correctamente." );')
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(81073086454397135)
,p_event_id=>wwv_flow_imp.id(81072664691397131)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(79825816297496721)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(81073149429397136)
,p_name=>'DA_EDITAR_REGISTRO'
,p_event_sequence=>270
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P323_EDITAR_REGISTRO'
,p_condition_element=>'P323_EDITAR_REGISTRO'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(81073318425397138)
,p_event_id=>wwv_flow_imp.id(81073149429397136)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT C001, C002, C003, N001, C004, C005, C007, C015, C016',
'  INTO :P323_COD_ARTICULO, :P323_DESC_ARTICULO, :P323_NRO_LOTE, :P323_CANTIDAD, :P323_ORIGEN, :P323_COD_RELACION_UM, :P323_DESCRIPCION, :P323_COD_UNIDAD_MEDIDA, :P323_CANTIDAD_UB',
'  FROM APEX_COLLECTIONS',
' WHERE COLLECTION_NAME = ''DETALLE_STENVIO'' ',
'   AND SEQ_ID = :P323_EDITAR_REGISTRO;',
'',
'',
'',
'',
''))
,p_attribute_02=>'P323_EDITAR_REGISTRO'
,p_attribute_03=>'P323_COD_ARTICULO,P323_DESCRIPCION,P323_CANTIDAD_UB,P323_ORIGEN,P323_COD_RELACION_UM,P323_DESC_ARTICULO,P323_NRO_LOTE,P323_CANTIDAD,P323_COD_UNIDAD_MEDIDA'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(81073214982397137)
,p_event_id=>wwv_flow_imp.id(81073149429397136)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(80625165641136646)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(81073689201397141)
,p_name=>'DA_ELIMINAR_REGISTRO'
,p_event_sequence=>280
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P323_ELIMINAR_REGISTRO'
,p_condition_element=>'P323_ELIMINAR_REGISTRO'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(81073748082397142)
,p_event_id=>wwv_flow_imp.id(81073689201397141)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\00BFDesea eliminar el registro?')
,p_attribute_02=>unistr('Atenci\00F3n')
,p_attribute_03=>'warning'
,p_attribute_06=>'Aceptar'
,p_attribute_07=>'Cancelar'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(81073886821397143)
,p_event_id=>wwv_flow_imp.id(81073689201397141)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'STENVIO.PR_ELIMINA_REGISTRO(PI_SEQ_ID  => :P323_ELIMINAR_REGISTRO);'
,p_attribute_02=>'P323_ELIMINAR_REGISTRO'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(81073935768397144)
,p_event_id=>wwv_flow_imp.id(81073689201397141)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(79825816297496721)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(81074132197397146)
,p_name=>'DA_VER_DATOS'
,p_event_sequence=>290
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P323_VER_DATOS'
,p_condition_element=>'P323_VER_DATOS'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(81074220098397147)
,p_event_id=>wwv_flow_imp.id(81074132197397146)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    SELECT C007, C017',
'      INTO :P323_DET_DESCRIPCION, :P323_DET_REFERENCIA',
'      FROM APEX_COLLECTIONS',
'     WHERE COLLECTION_NAME = ''DETALLE_STENVIO''',
'       AND SEQ_ID = :P323_VER_DATOS;   ',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        NULL;',
'END;               '))
,p_attribute_02=>'P323_VER_DATOS'
,p_attribute_03=>'P323_DET_DESCRIPCION,P323_DET_REFERENCIA'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(81074395696397148)
,p_name=>'DA_ELIMINAR'
,p_event_sequence=>300
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(80050721260183105)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(81074470884397149)
,p_event_id=>wwv_flow_imp.id(81074395696397148)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\00BFDesea eliminar la Nota de Env\00EDo?')
,p_attribute_02=>unistr('Atenci\00F3n')
,p_attribute_03=>'information'
,p_attribute_06=>'Aceptar'
,p_attribute_07=>'Cancelar'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(81887483399037613)
,p_event_id=>wwv_flow_imp.id(81074395696397148)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P323_CAB_COD_SUCURSAL,P323_CAB_COD_SUCURSAL_ENT'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(81074521029397150)
,p_event_id=>wwv_flow_imp.id(81074395696397148)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_01=>'ELIMINAR'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(81887136515037610)
,p_name=>'DA_ACTUALIZAR'
,p_event_sequence=>310
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(80050969930183107)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(81887243723037611)
,p_event_id=>wwv_flow_imp.id(81887136515037610)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P323_CAB_COD_SUCURSAL,P323_CAB_COD_SUCURSAL_ENT'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(81887310692037612)
,p_event_id=>wwv_flow_imp.id(81887136515037610)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_01=>'ACTUALIZAR'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(81888095594037619)
,p_name=>'DA_CAB_NRO_COMPROBANTE_REF'
,p_event_sequence=>320
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P323_CAB_NRO_COMPROBANTE_REF'
,p_condition_element=>'P323_CAB_NRO_COMPROBANTE_REF'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(81887808033037617)
,p_event_id=>wwv_flow_imp.id(81888095594037619)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    :P323_CARGA_DETALLE := ''N''; ',
'    STENVIO.PR_CARGA_COL_DETALLE(PI_COD_EMPRESA           => NVL(:P323_COD_EMPRESA,:P_COD_EMPRESA),',
'                                 PI_CARGA_DETALLE         => ''N'',',
'                                 PI_REFERENCIA            => :P323_CAB_REFERENCIA,',
'                                 PI_TIP_COMPROBANTE_REF   => :P323_CAB_TIP_COMPROBANTE_REF,',
'                                 PI_SER_COMPROBANTE_REF   => :P323_CAB_SER_COMPROBANTE_REF,',
'                                 PI_NRO_COMPROBANTE_REF   => TO_NUMBER(:P323_CAB_NRO_COMPROBANTE_REF),',
'                                 PO_CARGA_DETALLE         => :P323_CARGA_DETALLE);',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'          raise_application_error(-20000, sqlerrm );   ',
'END;'))
,p_attribute_02=>'P323_COD_EMPRESA,P323_CARGA_DETALLE,P323_CAB_REFERENCIA,P323_CAB_TIP_COMPROBANTE_REF,P323_CAB_SER_COMPROBANTE_REF,P323_CAB_NRO_COMPROBANTE_REF'
,p_attribute_03=>'P323_CARGA_DETALLE,P323_AUX_BUSCA'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P323_AUX_BUSCA'
,p_client_condition_expression=>'2'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(81887925594037618)
,p_event_id=>wwv_flow_imp.id(81888095594037619)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(79825816297496721)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P323_AUX_BUSCA'
,p_client_condition_expression=>'2'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(81888324784037622)
,p_name=>'DA_IMPRIMIR'
,p_event_sequence=>330
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(80050621025183104)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(81888401559037623)
,p_event_id=>wwv_flow_imp.id(81888324784037622)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'doDescarga(apex.item(''P323_COD_EMPRESA'').getValue(), apex.item(''P323_CAB_COD_SUCURSAL_ENT'').getValue(), ',
'           apex.item(''P323_CAB_COD_SUCURSAL'').getValue(),apex.item(''P323_CAB_SER_ENVIO'').getValue(), apex.item(''P323_CAB_NRO_ENVIO'').getValue())'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(178749854459121450)
,p_name=>'da_ser_ok'
,p_event_sequence=>340
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(178749714789121449)
,p_condition_element=>'P323_CAB_SER_ENVIO'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(180064889773113201)
,p_event_id=>wwv_flow_imp.id(178749854459121450)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(79827286927496735)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(209703213536309502)
,p_event_id=>wwv_flow_imp.id(178749854459121450)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'Debe seleccionar una Serie.'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(79250221851252709)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_INIT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P_COD_MODULO := ''ST'';',
'',
':P323_COD_EMPRESA := NVL(:P_COD_EMPRESA,''1'');',
'IF :P323_P_ENVIO_PEND IS NULL THEN',
'    :P323_COD_SUCURSAL := NVL(:P_COD_SUCURSAL, ''01'');',
'END IF;',
':P323_COD_USUARIO := NVL(:P_COD_USUARIO, :APP_USER);',
':P323_COD_MODULO := :P_COD_MODULO;',
'',
':P323_SER_ENVIO := bs_busca_parametro( :P323_COD_MODULO, ''SERIE_ENVIO'' );',
':P323_TIP_ENVIO := bs_busca_parametro( :P323_COD_MODULO, ''TIPO_ENVIO'' );',
':P323_CARGA_SUCURSAL := busca_permiso(:P323_COD_EMPRESA,',
'                                      ''STENVIO'',',
'                                      :P323_COD_USUARIO,',
'                                      ''CARGA SUCURSAL'' );',
':P323_RECEPCIONA_SUCURSAL := busca_permiso(:P323_COD_EMPRESA,',
'                                           ''STENVIO'',',
'                                           :P323_COD_USUARIO,',
'                                           ''RECEPCIONA_SUCURSAL'' );  ',
':P323_LINEAS_MAX := STENVIO.FN_LINEAS_MAX(PI_TIP_ENVIO => :P323_TIP_ENVIO);',
'',
':P323_AUX_BUSCA := 2;',
' '))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(79826419924496727)
,p_process_sequence=>20
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_INIT_CABECERA'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'--WHEN CREATE RECORD',
'IF :P323_P_ENVIO_PEND IS NOT NULL THEN',
'-----	:P323_CAB_TIPO_ENVIO:=''PR'';',
'	:P323_CAB_REFERENCIA:=:P323_P_ENVIO_PEND;',
'	:P323_CAB_COD_VEHICULO:=nvl(:P323_P_COD_VEHICULO,''100'');',
'	:P323_CAB_COD_REPARTIDOR:=nvl(:P323_P_COD_REPARTIDOR,''94'');',
'	:P323_CAB_COD_ZONA_REPARTO:=nvl(:P323_P_COD_ZONA,''01'');',
'	:P323_CAB_COD_AYUDANTE_1:= (:P323_P_COD_AYUDANTE_1);',
'	:P323_CAB_COD_AYUDANTE_2:= (:P323_P_COD_AYUDANTE_2);',
'',
'    STENVIO.PR_CARGA_COL_DETALLE(PI_COD_EMPRESA           => :P323_COD_EMPRESA,',
'                                 PI_CARGA_DETALLE         => :P323_CARGA_DETALLE,',
'                                 PI_REFERENCIA            => :P323_P_ENVIO_PEND,',
'                                 PI_TIP_COMPROBANTE_REF   => :P323_CAB_TIP_COMPROBANTE_REF,',
'                                 PI_SER_COMPROBANTE_REF   => :P323_CAB_SER_COMPROBANTE_REF,',
'                                 PI_NRO_COMPROBANTE_REF   => TO_NUMBER(:P323_CAB_NRO_COMPROBANTE_REF),',
'                                 PO_CARGA_DETALLE         => :P323_CARGA_DETALLE);',
'',
'',
'',
'END IF;',
'',
':P323_CARGA_DETALLE := ''N'';',
'--:b_cabecera.cod_empresa := :variables.cod_empresa;',
':P323_CAB_COD_SUCURSAL := :P323_COD_SUCURSAL;',
':P323_CAB_TIP_ENVIO := :P323_TIP_ENVIO;',
':P323_CAB_SER_ENVIO := :P323_SER_ENVIO;',
':P323_CAB_FECHA := sysdate;',
':P323_CAB_HORA := to_char(sysdate, ''HH24:MI:SS'');',
':P323_CAB_COD_USUARIO_REC := :P323_COD_USUARIO;',
':P323_CAB_COD_ZONA_REPARTO:=''01'';',
'',
'STENVIO.PR_DESC_ZONA(PI_COD_ZONA_REPARTO  => :P323_CAB_COD_ZONA_REPARTO,',
'                     PO_DESC_ZONA       => :P323_CAB_DESC_ZONA_REPARTO);',
'',
':P323_CAB_COD_VEHICULO:=''95'';',
'',
'STENVIO.PR_NOM_VEHICULO(PI_COD_EMPRESA   => :P323_COD_EMPRESA,',
'                        PI_COD_VEHICULO  => :P323_CAB_COD_VEHICULO,',
'                        PO_NOM_VEHICULO  => :P323_CAB_NOM_VEHICULO);',
'                        ',
':P323_CAB_COD_REPARTIDOR:=''11'';',
'',
'STENVIO.PR_NOM_REPARTIDOR(PI_COD_EMPRESA     => :P323_COD_EMPRESA,',
'                          PI_COD_REPARTIDOR  => :P323_CAB_COD_REPARTIDOR,',
'                          PO_NOM_REPARTIDOR  => :P323_CAB_NOM_REPARTIDOR);',
'',
'IF :P323_P_NRO_OT IS NOT NULL THEN',
'	:P323_CAB_TIP_COMPROBANTE_REF := :P323_P_TIP_OT;',
'	:P323_CAB_SER_COMPROBANTE_REF := :P323_P_SER_OT;',
'	:P323_CAB_NRO_COMPROBANTE_REF := :P323_P_NRO_OT;',
'END IF;	',
'',
'STENVIO.PR_DESC_SUCURSAL(PI_COD_EMPRESA   => :P323_COD_EMPRESA,',
'                         PI_COD_SUCURSAL  => :P323_CAB_COD_SUCURSAL,',
'                         PO_DESC_SUCURSAL => :P323_CAB_DESC_SUCURSAL);',
'                           ',
'STENVIO.PR_DESC_USUARIO(PI_COD_EMPRESA           => :P323_COD_EMPRESA,',
'                        PI_COD_COD_USUARIO_REC   => :P323_CAB_COD_USUARIO_REC,',
'                        PO_DESC_USUARIO          => :P323_CAB_DESC_USUARIO);  ',
'',
'--WHEN NEW FORM INSTANCE',
'',
'STENVIO.PR_SER_ENVIO(PI_COD_EMPRESA => :P323_COD_EMPRESA,',
'                     PI_TIP_ENVIO   => :P323_TIP_ENVIO,',
'                     PI_COD_MODULO  => :P323_COD_MODULO,',
'                     PO_SER_ENVIO   => :P323_CAB_SER_ENVIO,',
'                     PO_SHOW_LOV    => :P323_SHOW_LOV);'))
,p_process_clob_language=>'PLSQL'
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
 p_id=>wwv_flow_imp.id(81886382505037602)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_GUARDAR'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    VCANTIDAD NUMBER;',
'    vexiste varchar2(1);',
'    verror exception;',
'BEGIN',
'	begin',
'    		select ''S''',
'    		 into vexiste',
'    		from st_notas_envio_cab  A',
'    		where cod_empresa=:P_COD_EMPRESA		 ',
'    		 and a.REFERENCIA = nvl(:P323_CAB_REFERENCIA,0)',
'    		 and rownum=1;',
'      exception ',
'      	when others then ',
'      	   vexiste:=''N'';',
'    end;',
'',
'      if nvl(vexiste,''N'')=''S'' then  ',
'      	 raise verror;		  	  ',
'      end if;	',
'',
'    VCANTIDAD := APEX_COLLECTION.COLLECTION_MEMBER_COUNT( p_collection_name => ''DETALLE_STENVIO'');',
'    IF VCANTIDAD > 0 THEN',
'        STENVIO.PR_GUARDA_CABECERA(PI_COD_EMPRESA => :P323_COD_EMPRESA, PI_TIP_ENVIO => :P323_CAB_TIP_ENVIO, PI_SER_ENVIO => :P323_CAB_SER_ENVIO, PI_NRO_ENVIO => :P323_CAB_NRO_ENVIO, PI_COD_SUCURSAL => :P323_CAB_COD_SUCURSAL,',
'                                   PI_COD_SUCURSAL_ENT => :P323_CAB_COD_SUCURSAL_ENT,PI_FECHA => TO_DATE(:P323_CAB_FECHA,''DD/MM/YYYY''),PI_ESTADO => :P323_ESTADO,PI_COD_USUARIO_REC => :P323_CAB_COD_USUARIO_REC,',
'                                   PI_HORA => :P323_CAB_HORA,PI_OBS => :P323_CAB_OBS,PI_TIP_COMPROBANTE_REF => :P323_CAB_TIP_COMPROBANTE_REF,PI_SER_COMPROBANTE_REF => :P323_CAB_SER_COMPROBANTE_REF,PI_NRO_COMPROBANTE_REF => :P323_CAB_NRO_COMPROBANTE_R'
||'EF,PI_MARCA_TRANS => :P323_CAB_MARCA_TRANS,',
'                                   PI_TRANSPORTISTA => :P323_TRANSPORTISTA,PI_CONDUCTOR => :P323_CAB_CONDUCTOR,PI_DIRECC_CONDUC => :P323_CAB_DIRECC_CONDUC,PI_CHAPA => :P323_CAB_CHAPA,PI_RUC_TRANS => :P323_CAB_RUC_TRANS,PI_CED_COND => :P323_CAB_CED_CO'
||'ND,',
'                                   PI_REFERENCIA => :P323_CAB_REFERENCIA,PI_DESC_USUARIO => :P323_CAB_DESC_USUARIO,PI_FEC_VENCIMIENTO => TO_DATE(:P323_CAB_FEC_VENCIMIENTO ,''DD/MM/YYYY''),PI_COD_USUARIO_RESERVA => :P323_CAB_COD_USUARIO_RESERVA,',
'                                   PI_IND_RESERVA => :P323_IND_RESERVA,PI_COD_REPARTIDOR => :P323_CAB_COD_REPARTIDOR,PI_COD_VEHICULO => :P323_CAB_COD_VEHICULO,PI_NRO_REMISION => :P323_CAB_NRO_REMISION,PI_FEC_ALTA => TO_DATE(:P323_FEC_ALTA ,''DD/MM/YYY'
||'Y''),PI_SER_REFERENCIA => :P323_SER_REFERENCIA,',
'                                   PI_COD_AYUDANTE_2 => :P323_CAB_COD_AYUDANTE_2,PI_COD_AYUDANTE_1 => :P323_CAB_COD_AYUDANTE_1,PI_COD_ZONA_REPARTO => :P323_CAB_COD_ZONA_REPARTO);',
'        STENVIO.PR_GUARDA_DET(PI_COD_EMPRESA => :P323_COD_EMPRESA, PI_TIP_ENVIO => :P323_CAB_TIP_ENVIO, PI_SER_ENVIO => :P323_CAB_SER_ENVIO, PI_NRO_ENVIO => TO_NUMBER(:P323_CAB_NRO_ENVIO));',
'    ELSE',
unistr('        RAISE_APPLICATION_ERROR(-20010,''Debe ingresar al menos un art\00EDculo para continuar.'');'),
'    END IF;    ',
'EXCEPTION',
'    when verror then',
'        RAISE_APPLICATION_ERROR(-20010,''El numero de remision seleccionado ya fue cargado'');',
'    WHEN OTHERS THEN',
'        RAISE_APPLICATION_ERROR(-20010,sqlerrm);',
'END;        '))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(80050826777183106)
,p_process_success_message=>unistr('La Nota de Env\00EDo Nro. &P323_CAB_NRO_ENVIO. se guard\00F3 correctamente.')
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(81886222621037601)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_ACTUALIZAR'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    VCANTIDAD NUMBER;',
'BEGIN',
'    VCANTIDAD := APEX_COLLECTION.COLLECTION_MEMBER_COUNT( p_collection_name => ''DETALLE_STENVIO'');',
'    IF VCANTIDAD > 0 THEN',
'    STENVIO.PR_ACTUALIZA_CABECERA(PI_COD_EMPRESA => :P323_COD_EMPRESA, PI_TIP_ENVIO => :P323_CAB_TIP_ENVIO, PI_SER_ENVIO => :P323_CAB_SER_ENVIO, PI_NRO_ENVIO => :P323_CAB_NRO_ENVIO, PI_COD_SUCURSAL => :P323_CAB_COD_SUCURSAL,',
'                                    PI_COD_SUCURSAL_ENT => :P323_CAB_COD_SUCURSAL_ENT,PI_FECHA => TO_DATE(:P323_CAB_FECHA,''DD/MM/YYYY''),PI_ESTADO => :P323_ESTADO,PI_COD_USUARIO_REC => :P323_CAB_COD_USUARIO_REC,',
'                                    PI_HORA => :P323_CAB_HORA,PI_OBS => :P323_CAB_OBS,PI_TIP_COMPROBANTE_REF => :P323_CAB_TIP_COMPROBANTE_REF,PI_SER_COMPROBANTE_REF => :P323_CAB_SER_COMPROBANTE_REF,PI_NRO_COMPROBANTE_REF => :P323_CAB_NRO_COMPROBANTE_'
||'REF,PI_MARCA_TRANS => :P323_CAB_MARCA_TRANS,',
'                                    PI_TRANSPORTISTA => :P323_TRANSPORTISTA,PI_CONDUCTOR => :P323_CAB_CONDUCTOR,PI_DIRECC_CONDUC => :P323_CAB_DIRECC_CONDUC,PI_CHAPA => :P323_CAB_CHAPA,PI_RUC_TRANS => :P323_CAB_RUC_TRANS,PI_CED_COND => :P323_CAB_CED_C'
||'OND,',
'                                    PI_REFERENCIA => :P323_CAB_REFERENCIA,PI_DESC_USUARIO => :P323_CAB_DESC_USUARIO,PI_FEC_VENCIMIENTO => TO_DATE(:P323_CAB_FEC_VENCIMIENTO ,''DD/MM/YYYY''),PI_COD_USUARIO_RESERVA => :P323_CAB_COD_USUARIO_RESERVA,',
'                                    PI_IND_RESERVA => :P323_IND_RESERVA,PI_COD_REPARTIDOR => :P323_CAB_COD_REPARTIDOR,PI_COD_VEHICULO => :P323_CAB_COD_VEHICULO,PI_NRO_REMISION => :P323_CAB_NRO_REMISION,PI_FEC_ALTA => TO_DATE(:P323_FEC_ALTA ,''DD/MM/YY'
||'YY''),PI_SER_REFERENCIA => :P323_SER_REFERENCIA,',
'                                    PI_COD_AYUDANTE_2 => :P323_CAB_COD_AYUDANTE_2,PI_COD_AYUDANTE_1 => :P323_CAB_COD_AYUDANTE_1,PI_COD_ZONA_REPARTO => :P323_CAB_COD_ZONA_REPARTO);',
'',
'    STENVIO.PR_ACTUALIZA_DET(PI_COD_EMPRESA => :P323_COD_EMPRESA, PI_TIP_ENVIO => :P323_CAB_TIP_ENVIO, PI_SER_ENVIO => :P323_CAB_SER_ENVIO, PI_NRO_ENVIO => TO_NUMBER(:P323_CAB_NRO_ENVIO));  ',
'    ELSE',
unistr('        RAISE_APPLICATION_ERROR(-20010,''Debe ingresar al menos un art\00EDculo para continuar.'');'),
'    END IF;    ',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        RAISE_APPLICATION_ERROR(-20010,sqlerrm);',
'END;        '))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'ACTUALIZAR'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
,p_process_success_message=>unistr('La Nota de Env\00EDo Nro. &P323_CAB_NRO_ENVIO. se actualiz\00F3 correctamente.')
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(81886709542037606)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_ELIMINAR'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'STENVIO.PR_ELIMINA_NOTA(PI_COD_EMPRESA => :P323_COD_EMPRESA, ',
'                        PI_TIP_ENVIO   => :P323_CAB_TIP_ENVIO, ',
'                        PI_SER_ENVIO   => :P323_CAB_SER_ENVIO, ',
'                        PI_NRO_ENVIO   => :P323_CAB_NRO_ENVIO);'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'ELIMINAR'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
,p_process_success_message=>unistr('La Nota de Env\00EDo se elimin\00F3 correctamente.')
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(79251434999252721)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'PR_CLEAR'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(80623780229136632)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_CLEAR_COLLECTION'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF APEX_COLLECTION.COLLECTION_EXISTS (P_COLLECTION_NAME => ''DETALLE_STENVIO'') THEN',
'    APEX_COLLECTION.TRUNCATE_COLLECTION(P_COLLECTION_NAME => ''DETALLE_STENVIO'');',
'END IF; ',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp.component_end;
end;
/
