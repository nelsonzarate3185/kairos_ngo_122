prompt --application/pages/page_00310
begin
--   Manifest
--     PAGE: 00310
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
 p_id=>310
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Carga de tipos de Cambio por Moneda BSTIPCAM'
,p_alias=>'CARGA-DE-TIPOS-DE-CAMBIO-POR-MONEDA-BSTIPCAM'
,p_step_title=>'Carga de tipos de Cambio por Moneda BSTIPCAM'
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
'    width: 1000px !important;',
'    }'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'DFINO'
,p_last_upd_yyyymmddhh24miss=>'20230104170342'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(74632976127703842)
,p_plug_name=>'Carga de tipos de Cambio por Moneda BSTIPCAM'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>990
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(74633088152703843)
,p_plug_name=>'COLEC_TIPOS_CAMBIO'
,p_parent_plug_id=>wwv_flow_imp.id(74632976127703842)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT seq_id SEQ_ID,',
'       c001 COD_MONEDA,',
'       c002 TIPO_CAMBIO,',
'       c003 FEC_TIPO_CAMBIO,',
'       TO_NUMBER(c004) VAL_VENTA,',
'       TO_NUMBER(c005) VAL_COMPRA,',
'       c006 ALTA_POR,',
'       c007 FEC_ALTA,',
'       c008 ACTUALIZADO_POR,',
'       c009 FEC_ACTUALIZADO,',
'       TO_NUMBER(c010) TIPO_CAMBIO_CONTADO,',
'       TO_NUMBER(c011) TIPO_CAMBIO_CREDITO,',
'       c012 COD_EMPRESA,',
'       TO_NUMBER(c013) RECARGO_DOLAR,',
'       TO_NUMBER(c014) CAMBIO_PARA_DOLAR,',
'       c015 ROW_ID,',
'       c016 CONTROL,',
'       c017 DESC_MONEDA,',
'       c018 DESC_TIPO_CAMBIO,',
'       NULL EDITAR,',
'       NULL BORRAR',
'  FROM APEX_COLLECTIONS',
' WHERE COLLECTION_NAME = ''COLEC_TIPOS_CAMBIO''',
'   AND (c016 = ''U'' OR c016 = ''I'' OR c016 IS NULL)',
'ORDER BY SEQ_ID DESC',
'',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'COLEC_TIPOS_CAMBIO'
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
 p_id=>wwv_flow_imp.id(74633159445703844)
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
,p_internal_uid=>74633159445703844
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(74633299081703845)
,p_db_column_name=>'SEQ_ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Seq Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(74633363118703846)
,p_db_column_name=>'COD_MONEDA'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Cod Moneda'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(74633407634703847)
,p_db_column_name=>'TIPO_CAMBIO'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Tipo Cambio'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(74633546388703848)
,p_db_column_name=>'FEC_TIPO_CAMBIO'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Fecha'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(75878220920663901)
,p_db_column_name=>'ALTA_POR'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Alta Por'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(75878300450663902)
,p_db_column_name=>'FEC_ALTA'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Fec Alta'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(75878458562663903)
,p_db_column_name=>'ACTUALIZADO_POR'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Actualizado Por'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(75878574175663904)
,p_db_column_name=>'FEC_ACTUALIZADO'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Fec Actualizado'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(75878894740663907)
,p_db_column_name=>'COD_EMPRESA'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Cod Empresa'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(75879144112663910)
,p_db_column_name=>'ROW_ID'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Row Id'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(75879271550663911)
,p_db_column_name=>'CONTROL'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Control'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(75879364718663912)
,p_db_column_name=>'EDITAR'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'Editar'
,p_column_link=>'javascript:$s(''P310_EDIT_DATA'',''#SEQ_ID#'');'
,p_column_linktext=>'<span aria-label="Edit"><span class="fa fa-edit" aria-hidden="true" title="Edit"></span></span>'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
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
'    END IF;                                                       ',
'END;'))
,p_display_condition2=>'PLSQL'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(75879475571663913)
,p_db_column_name=>'BORRAR'
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>'Borrar'
,p_column_link=>'javascript:$s(''P310_DELETE_DATA'',''#SEQ_ID#'');'
,p_column_linktext=>'<span class="fa fa-trash-o">'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
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
'    END IF;  ',
'    ',
'END;'))
,p_display_condition2=>'PLSQL'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(75879755439663916)
,p_db_column_name=>'DESC_MONEDA'
,p_display_order=>200
,p_column_identifier=>'T'
,p_column_label=>'Moneda'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(75879861149663917)
,p_db_column_name=>'DESC_TIPO_CAMBIO'
,p_display_order=>210
,p_column_identifier=>'U'
,p_column_label=>'Tipo'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(75880340831663922)
,p_db_column_name=>'VAL_VENTA'
,p_display_order=>220
,p_column_identifier=>'V'
,p_column_label=>'Venta'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_format_mask=>'999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(75880469816663923)
,p_db_column_name=>'VAL_COMPRA'
,p_display_order=>230
,p_column_identifier=>'W'
,p_column_label=>'Compra'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_format_mask=>'999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(75880505087663924)
,p_db_column_name=>'TIPO_CAMBIO_CONTADO'
,p_display_order=>240
,p_column_identifier=>'X'
,p_column_label=>'Contado'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_format_mask=>'999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(75880627594663925)
,p_db_column_name=>'TIPO_CAMBIO_CREDITO'
,p_display_order=>250
,p_column_identifier=>'Y'
,p_column_label=>unistr('Cr\00E9dito')
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_format_mask=>'999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(75880777698663926)
,p_db_column_name=>'RECARGO_DOLAR'
,p_display_order=>260
,p_column_identifier=>'Z'
,p_column_label=>'Recargo para Precio US$'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_format_mask=>'999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(75880889890663927)
,p_db_column_name=>'CAMBIO_PARA_DOLAR'
,p_display_order=>270
,p_column_identifier=>'AA'
,p_column_label=>'Cambio Para  Precio US$'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_format_mask=>'999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(75891908979690207)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'758920'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>10
,p_report_columns=>'DESC_MONEDA:DESC_TIPO_CAMBIO:FEC_TIPO_CAMBIO:VAL_VENTA:VAL_COMPRA:TIPO_CAMBIO_CONTADO:TIPO_CAMBIO_CREDITO:CAMBIO_PARA_DOLAR:RECARGO_DOLAR:ALTA_POR:FEC_ALTA:EDITAR:BORRAR:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(75872582317628833)
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
 p_id=>wwv_flow_imp.id(75880919447663928)
,p_plug_name=>'Agregar/Editar Registro'
,p_region_template_options=>'#DEFAULT#:js-dialog-autoheight:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>1000
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(75881849377663937)
,p_button_sequence=>90
,p_button_plug_id=>wwv_flow_imp.id(75880919447663928)
,p_button_name=>'BTAGREGAR_EDITAR_REG'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Agregar/Editar Registro'
,p_button_position=>'BELOW_BOX'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(75880114831663920)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(74632976127703842)
,p_button_name=>'BTCREAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Crear'
,p_button_position=>'COPY'
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
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(75880288740663921)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(74632976127703842)
,p_button_name=>'BTGUARDAR_CAMBIOS'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Guardar Cambios'
,p_button_position=>'COPY'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(75879961859663918)
,p_name=>'P310_EDIT_DATA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(74633088152703843)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(75880058917663919)
,p_name=>'P310_DELETE_DATA'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(74633088152703843)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(75881048375663929)
,p_name=>'P310_COD_MONEDA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(75880919447663928)
,p_prompt=>'Moneda'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LV_MONEDAS_BSTIPCAM'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cod_moneda||'' - ''||descripcion d,',
'       cod_moneda r',
'  from monedas',
' --order by d',
''))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(75881152355663930)
,p_name=>'P310_TIPO_CAMBIO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(75880919447663928)
,p_item_default=>'SELECT ''D'' FROM DUAL'
,p_item_default_type=>'SQL_QUERY'
,p_prompt=>'Tipo'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>unistr('STATIC:DEFECTO;D,FACTURACI\00D3N;F,CONTABILIDAD;C')
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(75881252469663931)
,p_name=>'P310_VAL_VENTA'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(75880919447663928)
,p_prompt=>'Venta'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(75881301689663932)
,p_name=>'P310_VAL_COMPRA'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(75880919447663928)
,p_prompt=>'Compra'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(75881433252663933)
,p_name=>'P310_TIPO_CAMBIO_CONTADO'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(75880919447663928)
,p_prompt=>'Contado'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(75881584593663934)
,p_name=>'P310_TIPO_CAMBIO_CREDITO'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(75880919447663928)
,p_prompt=>unistr('Cr\00E9dito')
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(75881613263663935)
,p_name=>'P310_CAMBIO_PARA_DOLAR'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(75880919447663928)
,p_prompt=>'Cambio Para  Precio US$'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(75881729405663936)
,p_name=>'P310_RECARGO_DOLAR'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(75880919447663928)
,p_prompt=>'Recargo para Precio US$'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(75882451131663943)
,p_name=>'P310_FEC_TIPO_CAMBIO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(75880919447663928)
,p_prompt=>'Fecha'
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
 p_id=>wwv_flow_imp.id(76022793019236008)
,p_name=>'P310_CONTROL'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(74632976127703842)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(75881937958663938)
,p_name=>'DA_SOLO_NUMEROS'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P310_VAL_VENTA,P310_VAL_COMPRA,P310_TIPO_CAMBIO_CONTADO,P310_TIPO_CAMBIO_CREDITO,P310_CAMBIO_PARA_DOLAR,P310_RECARGO_DOLAR'
,p_bind_type=>'bind'
,p_bind_event_type=>'keydown'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(75882078482663939)
,p_event_id=>wwv_flow_imp.id(75881937958663938)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'validateNumber(event);'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(75882155143663940)
,p_name=>'DA_ABRIR_MODAL'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(75880114831663920)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(75882229445663941)
,p_event_id=>wwv_flow_imp.id(75882155143663940)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P310_COD_MONEDA,P310_TIPO_CAMBIO,P310_VAL_VENTA,P310_VAL_COMPRA,P310_TIPO_CAMBIO_CONTADO,P310_TIPO_CAMBIO_CREDITO,P310_CAMBIO_PARA_DOLAR,P310_RECARGO_DOLAR,P310_EDIT_DATA,P310_FEC_TIPO_CAMBIO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(75882322434663942)
,p_event_id=>wwv_flow_imp.id(75882155143663940)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(75880919447663928)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(75882525318663944)
,p_name=>'DA_DELETE_DATA'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P310_DELETE_DATA'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(75882681551663945)
,p_event_id=>wwv_flow_imp.id(75882525318663944)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P310_DELETE_DATA'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(75882714487663946)
,p_event_id=>wwv_flow_imp.id(75882525318663944)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    BSTIPCAM.DELETE_COL(pseq_id   => :P310_DELETE_DATA, ',
'                        p_col     => ''COLEC_TIPOS_CAMBIO'',',
'                        patributo => 16);',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_DELETE_DATA_DET ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P310_DELETE_DATA'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(75882845512663947)
,p_event_id=>wwv_flow_imp.id(75882525318663944)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(74633088152703843)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(75882989207663948)
,p_name=>'DA_AGREGAR_EDITAR_REG'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(75881849377663937)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(75883000442663949)
,p_event_id=>wwv_flow_imp.id(75882989207663948)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P310_COD_MONEDA,P310_TIPO_CAMBIO,P310_FEC_TIPO_CAMBIO,P310_VAL_VENTA,P310_VAL_COMPRA,P310_TIPO_CAMBIO_CONTADO,P310_TIPO_CAMBIO_CREDITO,P310_CAMBIO_PARA_DOLAR,P310_RECARGO_DOLAR,P310_CONTROL'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(75883158774663950)
,p_event_id=>wwv_flow_imp.id(75882989207663948)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    CASE',
'        WHEN :P310_COD_MONEDA IS NULL THEN :P310_CONTROL := 1;',
'        WHEN :P310_TIPO_CAMBIO IS NULL THEN :P310_CONTROL := 2;',
'        WHEN :P310_FEC_TIPO_CAMBIO IS NULL THEN :P310_CONTROL := 3;',
'        WHEN (:P310_VAL_VENTA IS NULL OR :P310_VAL_VENTA = 0) THEN :P310_CONTROL := 4;',
'        WHEN (:P310_VAL_COMPRA IS NULL OR :P310_VAL_COMPRA = 0) THEN :P310_CONTROL := 5;',
'        WHEN (:P310_TIPO_CAMBIO_CONTADO IS NULL OR :P310_TIPO_CAMBIO_CONTADO = 0) THEN :P310_CONTROL := 6;',
'        WHEN (:P310_TIPO_CAMBIO_CREDITO IS NULL OR :P310_TIPO_CAMBIO_CREDITO = 0) THEN :P310_CONTROL := 7;',
'        WHEN (:P310_CAMBIO_PARA_DOLAR IS NULL OR :P310_CAMBIO_PARA_DOLAR = 0) THEN :P310_CONTROL := 8;',
'        WHEN (:P310_RECARGO_DOLAR IS NULL OR :P310_RECARGO_DOLAR = 0) THEN :P310_CONTROL := 9;',
'        ELSE :P310_CONTROL := 0;',
'    END CASE;',
'',
'    IF :P310_CONTROL = 0 THEN',
'        BSTIPCAM.ADD_COL(pcod_empresa         => :P_COD_EMPRESA,',
'                         pcod_moneda          => :P310_COD_MONEDA,',
'                         ptipo_cambio         => :P310_TIPO_CAMBIO,',
'                         pfec_tipo_cambio     => :P310_FEC_TIPO_CAMBIO,',
'                         pval_venta           => :P310_VAL_VENTA,',
'                         pval_compra          => :P310_VAL_COMPRA,',
'                         ptipo_cambio_contado => :P310_TIPO_CAMBIO_CONTADO,',
'                         ptipo_cambio_credito => :P310_TIPO_CAMBIO_CREDITO,',
'                         pcabio_para_dolar    => :P310_CAMBIO_PARA_DOLAR,',
'                         precargo_dolar       => :P310_RECARGO_DOLAR,',
'                         pcod_usuario         => :P_COD_USUARIO);',
'    END IF;',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_AGREGAR_EDITAR_REG ADD_COL ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P_COD_EMPRESA,P_COD_USUARIO,P310_COD_MONEDA,P310_TIPO_CAMBIO,P310_FEC_TIPO_CAMBIO,P310_VAL_VENTA,P310_VAL_COMPRA,P310_TIPO_CAMBIO_CONTADO,P310_TIPO_CAMBIO_CREDITO,P310_CAMBIO_PARA_DOLAR,P310_RECARGO_DOLAR'
,p_attribute_03=>'P310_CONTROL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P310_EDIT_DATA'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(76022665691236007)
,p_event_id=>wwv_flow_imp.id(75882989207663948)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    CASE',
'        WHEN :P310_COD_MONEDA IS NULL THEN :P310_CONTROL := 1;',
'        WHEN :P310_TIPO_CAMBIO IS NULL THEN :P310_CONTROL := 2;',
'        WHEN :P310_FEC_TIPO_CAMBIO IS NULL THEN :P310_CONTROL := 3;',
'        WHEN (:P310_VAL_VENTA IS NULL OR :P310_VAL_VENTA = 0) THEN :P310_CONTROL := 4;',
'        WHEN (:P310_VAL_COMPRA IS NULL OR :P310_VAL_COMPRA = 0) THEN :P310_CONTROL := 5;',
'        WHEN (:P310_TIPO_CAMBIO_CONTADO IS NULL OR :P310_TIPO_CAMBIO_CONTADO = 0) THEN :P310_CONTROL := 5;',
'        WHEN (:P310_TIPO_CAMBIO_CREDITO IS NULL OR :P310_TIPO_CAMBIO_CREDITO = 0) THEN :P310_CONTROL := 6;',
'        WHEN (:P310_CAMBIO_PARA_DOLAR IS NULL OR :P310_CAMBIO_PARA_DOLAR = 0) THEN :P310_CONTROL := 7;',
'        WHEN (:P310_RECARGO_DOLAR IS NULL OR :P310_RECARGO_DOLAR = 0) THEN :P310_CONTROL := 8;',
'        ELSE :P310_CONTROL := 0;',
'    END CASE;',
'',
'    IF :P310_CONTROL = 0 THEN',
'        BSTIPCAM.EDIT_COL(pseq_id              => :P310_EDIT_DATA,',
'                          pcod_usuario         => :P_COD_USUARIO,',
'                          pcod_empresa         => :P_COD_EMPRESA,',
'                          pcod_moneda          => :P310_COD_MONEDA,',
'                          ptipo_cambio         => :P310_TIPO_CAMBIO,',
'                          pfec_tipo_cambio     => :P310_FEC_TIPO_CAMBIO,',
'                          pval_venta           => :P310_VAL_VENTA,',
'                          pval_compra          => :P310_VAL_COMPRA,',
'                          ptipo_cambio_contado => :P310_TIPO_CAMBIO_CONTADO,',
'                          ptipo_cambio_credito => :P310_TIPO_CAMBIO_CREDITO,',
'                          pcabio_para_dolar    => :P310_CAMBIO_PARA_DOLAR,',
'                          precargo_dolar       => :P310_RECARGO_DOLAR);',
'    END IF;                 ',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_AGREGAR_EDITAR_REG EDIT_COL ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P310_EDIT_DATA,P_COD_USUARIO,P_COD_EMPRESA,P310_COD_MONEDA,P310_TIPO_CAMBIO,P310_FEC_TIPO_CAMBIO,P310_VAL_VENTA,P310_VAL_COMPRA,P310_TIPO_CAMBIO_CONTADO,P310_TIPO_CAMBIO_CREDITO,P310_CAMBIO_PARA_DOLAR,P310_RECARGO_DOLAR'
,p_attribute_03=>'P310_CONTROL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P310_EDIT_DATA'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(76022882798236009)
,p_event_id=>wwv_flow_imp.id(75882989207663948)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'Debe seleccionar la moneda.'
,p_attribute_02=>'Aviso'
,p_attribute_03=>'warning'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P310_CONTROL'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(76023528724236016)
,p_event_id=>wwv_flow_imp.id(75882989207663948)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'Debe seleccionar el tipo de cambio.'
,p_attribute_02=>'Aviso'
,p_attribute_03=>'warning'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P310_CONTROL'
,p_client_condition_expression=>'2'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(76023434276236015)
,p_event_id=>wwv_flow_imp.id(75882989207663948)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'Debe seleccionar la fecha.'
,p_attribute_02=>'Aviso'
,p_attribute_03=>'warning'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P310_CONTROL'
,p_client_condition_expression=>'3'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(76023347526236014)
,p_event_id=>wwv_flow_imp.id(75882989207663948)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'Debe ingresar un valor distinto de cero para el tipo de cambio.'
,p_attribute_02=>'Aviso'
,p_attribute_03=>'warning'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P310_CONTROL'
,p_client_condition_expression=>'4'
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
 p_id=>wwv_flow_imp.id(76023200843236013)
,p_event_id=>wwv_flow_imp.id(75882989207663948)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'Debe ingresar un valor distinto de cero para el tipo de cambio.'
,p_attribute_02=>'Aviso'
,p_attribute_03=>'warning'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P310_CONTROL'
,p_client_condition_expression=>'5'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(76023100066236012)
,p_event_id=>wwv_flow_imp.id(75882989207663948)
,p_event_result=>'TRUE'
,p_action_sequence=>90
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'Debe ingresar un valor distinto de cero para el tipo de cambio.'
,p_attribute_02=>'Aviso'
,p_attribute_03=>'warning'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P310_CONTROL'
,p_client_condition_expression=>'6'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(76023047571236011)
,p_event_id=>wwv_flow_imp.id(75882989207663948)
,p_event_result=>'TRUE'
,p_action_sequence=>100
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'Debe ingresar un valor distinto de cero para el tipo de cambio.'
,p_attribute_02=>'Aviso'
,p_attribute_03=>'warning'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P310_CONTROL'
,p_client_condition_expression=>'7'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(76022941194236010)
,p_event_id=>wwv_flow_imp.id(75882989207663948)
,p_event_result=>'TRUE'
,p_action_sequence=>110
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'Debe ingresar un valor distinto de cero para el tipo de cambio.'
,p_attribute_02=>'Aviso'
,p_attribute_03=>'warning'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P310_CONTROL'
,p_client_condition_expression=>'8'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(76023693355236017)
,p_event_id=>wwv_flow_imp.id(75882989207663948)
,p_event_result=>'TRUE'
,p_action_sequence=>120
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'Debe ingresar un valor distinto de cero para el tipo de cambio.'
,p_attribute_02=>'Aviso'
,p_attribute_03=>'warning'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P310_CONTROL'
,p_client_condition_expression=>'9'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(76022043790236001)
,p_event_id=>wwv_flow_imp.id(75882989207663948)
,p_event_result=>'TRUE'
,p_action_sequence=>130
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(75880919447663928)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P310_CONTROL'
,p_client_condition_expression=>'0'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(76022153181236002)
,p_event_id=>wwv_flow_imp.id(75882989207663948)
,p_event_result=>'TRUE'
,p_action_sequence=>140
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(74633088152703843)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P310_CONTROL'
,p_client_condition_expression=>'0'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(76022215033236003)
,p_name=>'DA_EDIT_DATA'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P310_EDIT_DATA'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(76022398887236004)
,p_event_id=>wwv_flow_imp.id(76022215033236003)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P310_EDIT_DATA'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(76022438888236005)
,p_event_id=>wwv_flow_imp.id(76022215033236003)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    BSTIPCAM.CARGAR_DATOS_EDIT(pedit_data           => :P310_EDIT_DATA,',
'                               pcod_moneda          => :P310_COD_MONEDA,',
'                               ptipo_cambio         => :P310_TIPO_CAMBIO,',
'                               pfec_tipo_cambio     => :P310_FEC_TIPO_CAMBIO,',
'                               pval_venta           => :P310_VAL_VENTA,',
'                               pval_compra          => :P310_VAL_COMPRA,',
'                               ptipo_cambio_contado => :P310_TIPO_CAMBIO_CONTADO,',
'                               ptipo_cambio_credito => :P310_TIPO_CAMBIO_CREDITO,',
'                               pcabio_para_dolar    => :P310_CAMBIO_PARA_DOLAR,',
'                               precargo_dolar       => :P310_RECARGO_DOLAR);',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_EDIT_DATA CARGAR_DATOS_EDIT ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P310_EDIT_DATA'
,p_attribute_03=>'P310_COD_MONEDA,P310_TIPO_CAMBIO,P310_FEC_TIPO_CAMBIO,P310_VAL_VENTA,P310_VAL_COMPRA,P310_TIPO_CAMBIO_CONTADO,P310_TIPO_CAMBIO_CREDITO,P310_CAMBIO_PARA_DOLAR,P310_RECARGO_DOLAR'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P310_EDIT_DATA'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(76022575728236006)
,p_event_id=>wwv_flow_imp.id(76022215033236003)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(75880919447663928)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(75879599960663914)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_INIT'
,p_process_sql_clob=>'APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(''COLEC_TIPOS_CAMBIO'');'
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(75879643983663915)
,p_process_sequence=>20
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_CARGAR_DATOS'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    BSTIPCAM.CARGAR_DATOS(pcod_empresa => :P_COD_EMPRESA);',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''PR_CARGAR_DATOS ''||SQLERRM);',
'END;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(76023752875236018)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_SAVE'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    BSTIPCAM.GUARDAR_DATOS;',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''PR_SAVE PAG 310 ''||SQLERRM);',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Error al procesar los datos.'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(75880288740663921)
,p_process_success_message=>'Datos procesados correctamente.'
);
wwv_flow_imp.component_end;
end;
/
