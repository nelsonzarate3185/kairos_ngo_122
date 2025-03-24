prompt --application/pages/page_00094
begin
--   Manifest
--     PAGE: 00094
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
 p_id=>94
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'CCCACAB'
,p_alias=>'CCCACAB'
,p_step_title=>'CCCACAB'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'ANDRESDI'
,p_last_upd_yyyymmddhh24miss=>'20230315134802'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(25542051682706539)
,p_plug_name=>'VARIABLES'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(25542293959706541)
,p_plug_name=>'PARAMETROS'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(25542349762706542)
,p_plug_name=>'Referencias'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>60
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(25956162895589239)
,p_plug_name=>'Reporte'
,p_parent_plug_id=>wwv_flow_imp.id(25542349762706542)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT           ',
'        seq_id p_id,',
'        n001 NRO_REGISTRO, ',
'        d001 FECHA, ',
'        c001 COD_MONEDA,     ',
'        c002 DESC_MONEDA,',
'        n002 MONTO,',
'        n003 PAGO,',
'        n004 COD_ABOGADO,',
'        c003 DESC_ABOGADO,',
'        c004 DETALLE_CASO,',
'        c005 ESTADO_CASO,',
'        c006 COD_USUARIO,',
'        d002 FEC_CARGA,',
'        null Detalle,',
'        null Editar,',
'        null Eliminar',
'FROM APEX_COLLECTIONS',
'WHERE COLLECTION_NAME = ''TOTAL_PAGO_CASOS''',
'AND nvl(c020, ''O'') <> ''B'';'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P94_P_COD_CLIENTE,P94_COD_CLIENTE'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Reporte'
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
 p_id=>wwv_flow_imp.id(25956823418589246)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'JUANASIS'
,p_internal_uid=>25956823418589246
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(26042286763452001)
,p_db_column_name=>'P_ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'P Id'
,p_column_type=>'NUMBER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(26042471476452003)
,p_db_column_name=>'FECHA'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Fecha'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(26043387727452012)
,p_db_column_name=>'COD_MONEDA'
,p_display_order=>40
,p_column_identifier=>'L'
,p_column_label=>unistr('C\00F3digo Moneda')
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(26042522004452004)
,p_db_column_name=>'DESC_MONEDA'
,p_display_order=>50
,p_column_identifier=>'D'
,p_column_label=>'Moneda'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(26046735610452046)
,p_db_column_name=>'COD_ABOGADO'
,p_display_order=>60
,p_column_identifier=>'T'
,p_column_label=>'Cod Abogado'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(26042909974452008)
,p_db_column_name=>'DESC_ABOGADO'
,p_display_order=>70
,p_column_identifier=>'H'
,p_column_label=>'Abogado'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(26043003038452009)
,p_db_column_name=>'DETALLE_CASO'
,p_display_order=>80
,p_column_identifier=>'I'
,p_column_label=>'Detalle Caso'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(26043150460452010)
,p_db_column_name=>'ESTADO_CASO'
,p_display_order=>90
,p_column_identifier=>'J'
,p_column_label=>'Estado Caso'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(26043253218452011)
,p_db_column_name=>'NRO_REGISTRO'
,p_display_order=>100
,p_column_identifier=>'K'
,p_column_label=>'Nro Registro'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(26043478244452013)
,p_db_column_name=>'MONTO'
,p_display_order=>110
,p_column_identifier=>'M'
,p_column_label=>'Monto'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(26043549709452014)
,p_db_column_name=>'PAGO'
,p_display_order=>120
,p_column_identifier=>'N'
,p_column_label=>'Pago'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(26044232995452021)
,p_db_column_name=>'COD_USUARIO'
,p_display_order=>130
,p_column_identifier=>'O'
,p_column_label=>'Codigo Usuario'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(26044335709452022)
,p_db_column_name=>'FEC_CARGA'
,p_display_order=>140
,p_column_identifier=>'P'
,p_column_label=>'Fecha Carga'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(27043188561371707)
,p_db_column_name=>'DETALLE'
,p_display_order=>150
,p_column_identifier=>'Q'
,p_column_label=>'Detalle'
,p_column_link=>'javascript:$s(''P94_SEQ_ID'',#P_ID#);'
,p_column_linktext=>'<span class="fa fa-search" aria-hidden="true"></span>'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(27043233480371708)
,p_db_column_name=>'EDITAR'
,p_display_order=>160
,p_column_identifier=>'R'
,p_column_label=>'Editar'
,p_column_link=>'javascript:$s(''P94_SEQ_ID_EDITAR'',''#P_ID#'');'
,p_column_linktext=>'<span aria-hidden="true" class="fa fa-edit"></span>'
,p_column_type=>'STRING'
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
'END;',
''))
,p_display_condition2=>'PLSQL'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(27043321464371709)
,p_db_column_name=>'ELIMINAR'
,p_display_order=>170
,p_column_identifier=>'S'
,p_column_label=>'Eliminar'
,p_column_link=>'javascript:$s(''P94_SEQ_ID_ELIMINAR'',#P_ID#);'
,p_column_linktext=>'<span class="fa fa-trash" aria-hidden="true"></span>'
,p_column_type=>'STRING'
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
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(26054112569452440)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_type=>'REPORT'
,p_report_alias=>'260542'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'NRO_REGISTRO:FECHA:COD_MONEDA:DESC_MONEDA:MONTO:PAGO:DESC_ABOGADO:DETALLE_CASO:ESTADO_CASO:COD_USUARIO:FEC_CARGA:EDITAR:ELIMINAR'
,p_sort_column_1=>'NRO_REGISTRO'
,p_sort_direction_1=>'DESC'
,p_sort_column_2=>'0'
,p_sort_direction_2=>'ASC'
,p_sort_column_3=>'0'
,p_sort_direction_3=>'ASC'
,p_sort_column_4=>'0'
,p_sort_direction_4=>'ASC'
,p_sort_column_5=>'0'
,p_sort_direction_5=>'ASC'
,p_sort_column_6=>'0'
,p_sort_direction_6=>'ASC'
,p_sum_columns_on_break=>'MONTO:PAGO'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(25542539305706544)
,p_plug_name=>'Personas'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(26044612163452025)
,p_plug_name=>'Agregar/Editar '
,p_region_template_options=>'#DEFAULT#:js-dialog-size720x480'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>70
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(26045054814452029)
,p_button_sequence=>160
,p_button_plug_id=>wwv_flow_imp.id(26044612163452025)
,p_button_name=>'P94_CANCELAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'CANCELAR'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(26044963174452028)
,p_button_sequence=>140
,p_button_plug_id=>wwv_flow_imp.id(26044612163452025)
,p_button_name=>'P94_ACEPTAR_CREAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'ACEPTAR'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(27042737513371703)
,p_button_sequence=>150
,p_button_plug_id=>wwv_flow_imp.id(26044612163452025)
,p_button_name=>'P94_ACEPTAR_EDITAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'ACEPTAR'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(26461466783151539)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_imp.id(25542349762706542)
,p_button_name=>'P94_AGREGAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Agregar'
,p_button_position=>'TOP'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(27360390429584908)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_imp.id(25542539305706544)
,p_button_name=>'P94_BOTON_CONFIRMAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Confirmar'
,p_button_position=>'TOP'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    RETURN SEGURIDAD_GRANULAR.FC_MOSTRAR_CONFIRMAR (pusua0100_id => :P_USUA0100_ID,',
'                                                    ppage_id => :APP_PAGE_ID,',
'                                                    papli0100_id => :P_APLI0100_ID);',
'END;'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'FUNCTION_BODY'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(25542450645706543)
,p_name=>'P94_DERECHOS'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(25542051682706539)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(25542647215706545)
,p_name=>'P94_COD_MODULO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(25542051682706539)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(25542713453706546)
,p_name=>'P94_NOM_MODULO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(25542051682706539)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(25542942212706548)
,p_name=>'P94_COD_FORMA'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(25542051682706539)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(25543010469706549)
,p_name=>'P94_NOM_FORMA'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(25542051682706539)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(25543199651706550)
,p_name=>'P94_COD_EMPRESA'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(25542539305706544)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(25952320905589201)
,p_name=>'P94_NOM_EMPRESA'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(25542051682706539)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(25952463117589202)
,p_name=>'P94_COD_SUCURSAL'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(25542051682706539)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(25952618579589204)
,p_name=>'P94_CODD_IDIOMA'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(25542051682706539)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(25952763079589205)
,p_name=>'P94_CODSISMENU'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(25542051682706539)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(25952845120589206)
,p_name=>'P94_P_COD_PERSONA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(25542293959706541)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(25952923206589207)
,p_name=>'P94_P_COD_CLIENTE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(25542293959706541)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(25953111656589209)
,p_name=>'P94_COD_PERSONA'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(25542539305706544)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(25953369427589211)
,p_name=>'P94_NOMBRE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(25542539305706544)
,p_prompt=>'Nombre'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_named_lov=>'LV_CLIENTES'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT  c.cod_cliente||'' - ''||p.nombre L, ',
'          c.cod_cliente V ',
'    FROM cc_clientes c, personas p, ident_personas i',
'    WHERE c.cod_empresa = :p_cod_empresa',
'      AND c.cod_persona = p.cod_persona',
'      AND c.estado =''A''',
'      AND I.COD_IDENT IN (''RUC'',''CI'')',
'      AND i.cod_persona = c.cod_persona',
' ORDER BY 1'))
,p_begin_on_new_line=>'N'
,p_colspan=>6
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(25953463000589212)
,p_name=>'P94_COD_CLIENTE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(25542539305706544)
,p_prompt=>'Cod Cliente'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(25953588256589213)
,p_name=>'P94_REF_COD_PERSONA'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(25542051682706539)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(25953709144589215)
,p_name=>'P94_REF_COD_EMPRESA'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(25542051682706539)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(25953818601589216)
,p_name=>'P94_REF_COD_CLIENTE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(25542051682706539)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(25953940061589217)
,p_name=>'P94_REF_NRO_REGISTRO'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(25542051682706539)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(25954084391589218)
,p_name=>'P94_REF_FECHA'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(25542051682706539)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(25954106893589219)
,p_name=>'P94_REF_COD_MONEDA'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(25542051682706539)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(25954261360589220)
,p_name=>'P94_REF_MONTO'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(25542051682706539)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(25954313370589221)
,p_name=>'P94_REF_PAGO'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(25542051682706539)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(25954482788589222)
,p_name=>'P94_REF_DESC_ABOGADO'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(25542051682706539)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(25954534280589223)
,p_name=>'P94_REF_COD_USUARIO'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(25542051682706539)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(25954758698589225)
,p_name=>'P94_REF_DESC_MONEDA'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(25542051682706539)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(25954818417589226)
,p_name=>'P94_REF_COD_ABOGADO'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(25542051682706539)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(25954900964589227)
,p_name=>'P94_REF_DETALLE_CASO'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(25542051682706539)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(25955043552589228)
,p_name=>'P94_REF_ESTADO_CASO'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(25542051682706539)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(25955162871589229)
,p_name=>'P94_REF_TOTAL'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(25542051682706539)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(25955241615589230)
,p_name=>'P94_REF_TOTAL_PAGO'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(25542051682706539)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(26044435025452023)
,p_name=>'P94_COD_USUARIO'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(26044612163452025)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(26044530469452024)
,p_name=>'P94_FEC_CARGA'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(26044612163452025)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(26045259954452031)
,p_name=>'P94_FECHA'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(26044612163452025)
,p_prompt=>'Fecha'
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>30
,p_colspan=>3
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
 p_id=>wwv_flow_imp.id(26045388512452032)
,p_name=>'P94_DESC_MONEDA'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(26044612163452025)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(26045516616452034)
,p_name=>'P94_DETALLE_CASO'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(26044612163452025)
,p_prompt=>'Detalle Caso'
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
 p_id=>wwv_flow_imp.id(26045616030452035)
,p_name=>'P94_ESTADO_CASO'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(26044612163452025)
,p_prompt=>'Estado Caso'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'READONLY'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(26045711838452036)
,p_name=>'P94_NRO_REGISTRO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(26044612163452025)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(26045835258452037)
,p_name=>'P94_COD_MONEDA'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(26044612163452025)
,p_prompt=>'Moneda'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_MONEDAS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select descripcion as d,',
'       cod_moneda r',
'  from monedas',
' order by 1'))
,p_lov_display_null=>'YES'
,p_cSize=>30
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
 p_id=>wwv_flow_imp.id(26045986052452038)
,p_name=>'P94_MONTO'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(26044612163452025)
,p_prompt=>'Monto'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(26046020003452039)
,p_name=>'P94_PAGO'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(26044612163452025)
,p_prompt=>'Pago'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(26046864090452047)
,p_name=>'P94_SEQ_ID_ELIMINAR'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(26044612163452025)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(27042540200371701)
,p_name=>'P94_COD_ABOGADO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(26044612163452025)
,p_prompt=>'Abogado'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_ABOGADOS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select descripcion , cod_abogado',
'from cc_abogado',
'where cod_empresa=''1'''))
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
 p_id=>wwv_flow_imp.id(27043415301371710)
,p_name=>'P94_SEQ_ID_EDITAR'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(26044612163452025)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(27360126729584906)
,p_name=>'P94_AUX_CONTROL'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(26044612163452025)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(26044757757452026)
,p_name=>'DA_ABRIR_GUARDAR'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(26461466783151539)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(27359878122584903)
,p_event_id=>wwv_flow_imp.id(26044757757452026)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P94_COD_ABOGADO,P94_DETALLE_CASO,P94_MONTO,P94_PAGO,P94_DESC_MONEDA,P94_COD_MONEDA,P94_FECHA'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(7782824373592932)
,p_event_id=>wwv_flow_imp.id(26044757757452026)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(27042737513371703)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(7782969160592933)
,p_event_id=>wwv_flow_imp.id(26044757757452026)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(26044963174452028)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(26044871344452027)
,p_event_id=>wwv_flow_imp.id(26044757757452026)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(26044612163452025)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(26046328998452042)
,p_name=>'DA_GUARDAR'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(26044963174452028)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(26046432955452043)
,p_event_id=>wwv_flow_imp.id(26046328998452042)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P94_AUX_CONTROL := null;',
'IF :P94_COD_ABOGADO IS NULL THEN',
'    :P94_AUX_CONTROL := ''Debe ingresar el abogado del caso.'';',
' ELSE ',
'  BEGIN',
'     CCCACAB.pr_agregar_miembro_collection (',
'               ',
'           PI_COD_MONEDA    => :P94_COD_MONEDA,',
'           PI_COD_ABOGADO   => :P94_COD_ABOGADO,',
'           PI_DETALLE_CASO  => :P94_DETALLE_CASO,',
'           PI_ESTADO_CASO   => :P94_ESTADO_CASO,',
'           PI_MONTO         => :P94_MONTO,',
'           PI_PAGO          => :P94_PAGO,',
'           PI_COD_USUARIO   => :P94_COD_USUARIO,',
'           PI_FEC_CARGA     => sysdate,',
'           PI_FECHA         => :P94_FECHA                                     ',
'            );',
'',
'    EXCEPTION',
'',
'        WHEN OTHERS THEN',
'            apex_debug.error(sqlerrm);',
'    END;',
'END IF;  '))
,p_attribute_02=>'P94_COD_MONEDA,   P94_COD_ABOGADO,  P94_DETALLE_CASO,  P94_ESTADO_CASO,  P94_MONTO,  P94_PAGO,  P94_COD_USUARIO,P94_FECHA'
,p_attribute_03=>'P94_AUX_CONTROL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(27360269269584907)
,p_event_id=>wwv_flow_imp.id(26046328998452042)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P94_AUX_CONTROL.'
,p_attribute_02=>'Error'
,p_attribute_03=>'warning'
,p_attribute_04=>'fa-warning'
,p_attribute_06=>'ACEPTAR'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P94_AUX_CONTROL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(26046554496452044)
,p_event_id=>wwv_flow_imp.id(26046328998452042)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(25956162895589239)
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P94_AUX_CONTROL'
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
 p_id=>wwv_flow_imp.id(26046619630452045)
,p_event_id=>wwv_flow_imp.id(26046328998452042)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(26044612163452025)
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P94_AUX_CONTROL'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(27043586037371711)
,p_name=>'DA_ABRIR_REG_AGREGAR_EDITAR'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P94_SEQ_ID_EDITAR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(27043676065371712)
,p_event_id=>wwv_flow_imp.id(27043586037371711)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin ',
'    SELECT      ',
'    c001 COD_MONEDA, ',
'    n004 COD_ABOGADO,',
'    c004 DETALLE_CASO,',
'    c005 ESTADO_CASO,',
'    n002 MONTO,',
'    n003 PAGO,',
'    d001 FECHA',
'    ',
'    into',
'    :P94_COD_MONEDA,',
'    :P94_COD_ABOGADO,',
'    :P94_DETALLE_CASO,',
'    :P94_ESTADO_CASO,',
'    :P94_MONTO,',
'    :P94_PAGO,',
'    :P94_FECHA',
'    FROM APEX_COLLECTIONS',
'    WHERE COLLECTION_NAME = ''TOTAL_PAGO_CASOS''',
'    AND SEQ_ID = :P94_SEQ_ID_EDITAR;',
'',
'end;'))
,p_attribute_02=>'P94_SEQ_ID_EDITAR'
,p_attribute_03=>'P94_COD_MONEDA,     P94_COD_ABOGADO,     P94_DETALLE_CASO,     P94_ESTADO_CASO,     P94_MONTO,     P94_PAGO,P94_FECHA'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(27044022174371716)
,p_event_id=>wwv_flow_imp.id(27043586037371711)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(27042737513371703)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(27044134719371717)
,p_event_id=>wwv_flow_imp.id(27043586037371711)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(26044963174452028)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(27043737445371713)
,p_event_id=>wwv_flow_imp.id(27043586037371711)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(26044612163452025)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(27043839643371714)
,p_name=>'DA_GUARDAR_CAMBIOS'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(27042737513371703)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(27043966179371715)
,p_event_id=>wwv_flow_imp.id(27043839643371714)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    CCCACAB.pr_modificar_miembro (  :P94_SEQ_ID_EDITAR,',
'                                    :P94_COD_MONEDA,',
'                                    :P94_COD_ABOGADO,',
'                                    :P94_DETALLE_CASO,',
'                                    :P94_ESTADO_CASO,',
'                                    :P94_MONTO,',
'                                    :P94_PAGO,',
'                                    :P94_FECHA);',
'',
'EXCEPTION',
'',
'    WHEN OTHERS THEN',
'        apex_debug.ERROR(sqlerrm);',
'',
'END;'))
,p_attribute_02=>'P94_SEQ_ID_EDITAR,P94_COD_MONEDA,P94_COD_ABOGADO,P94_DETALLE_CASO,P94_ESTADO_CASO,P94_MONTO,P94_PAGO,P94_FECHA'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(27044289005371718)
,p_event_id=>wwv_flow_imp.id(27043839643371714)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(25956162895589239)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(27044399853371719)
,p_event_id=>wwv_flow_imp.id(27043839643371714)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(26044612163452025)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(26046971249452048)
,p_name=>'DA_ELIMINAR_MIEMBRO'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P94_SEQ_ID_ELIMINAR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(26047021778452049)
,p_event_id=>wwv_flow_imp.id(26046971249452048)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\00BFEsta seguro que desea Eliminar?')
,p_attribute_02=>'Eliminar'
,p_attribute_03=>'danger'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(27359655144584901)
,p_event_id=>wwv_flow_imp.id(26046971249452048)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'CCCACAB.pr_borrar_miembro_collection(:P94_SEQ_ID_ELIMINAR,',
'                                   :P94_COD_MONEDA,',
'                                   :P94_COD_ABOGADO,',
'                                   :P94_DETALLE_CASO,',
'                                   :P94_ESTADO_CASO,',
'                                   :P94_MONTO,',
'                                   :P94_PAGO,',
'                                   :P_COD_USUARIO,',
'                                   :P94_FEC_CARGA,',
'                                   :P94_FECHA',
'    ) ;',
' ',
'EXCEPTION',
'',
'    WHEN OTHERS THEN',
'',
'        apex_debug.ERROR(sqlerrm);',
'',
'END;'))
,p_attribute_02=>'P94_SEQ_ID_ELIMINAR'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(26047197657452050)
,p_event_id=>wwv_flow_imp.id(26046971249452048)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(25956162895589239)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(27360420538584909)
,p_name=>'DA_CONFIRMAR_DATOS'
,p_event_sequence=>60
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(27360390429584908)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(27360523913584910)
,p_event_id=>wwv_flow_imp.id(27360420538584909)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>'Presione para confirmar'
,p_attribute_02=>'CONFIRMAR'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(27360618508584911)
,p_event_id=>wwv_flow_imp.id(27360420538584909)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_01=>'CONFIRMAR'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(27360817678584913)
,p_name=>'DA_REGRESAR'
,p_event_sequence=>70
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(26045054814452029)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(27360937916584914)
,p_event_id=>wwv_flow_imp.id(27360817678584913)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(26044612163452025)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(27361057676584915)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_CONFIRMAR_DATOS'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    CCCACAB.pr_confirmar_accion(:P94_COD_PERSONA, :P94_COD_CLIENTE);',
'',
'',
'    EXCEPTION',
'            WHEN OTHERS THEN',
'                APEX_DEBUG.ERROR(sqlerrm);',
'',
'',
'',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CONFIRMAR'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
,p_process_success_message=>'Los datos se guardaron exitosamente.'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(25955330895589231)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_INIT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  :P_COD_MODULO := ''CC'' ;',
'  --:P_COD_EMPRESA := ''1'' ; ',
'  --:P94_COD_CLIENTE := ''42491'';',
'  -- CREAR LA COLECCION',
'  CCCACAB.pr_crear_collection (:P94_COD_CLIENTE);',
'  --INICIALIZA GLOBALES',
'  -- Asigna los valores por defecto en caso de que no existan las GLOBALES',
'  --Almacena los valores en variables locales',
'  :P94_COD_USUARIO := nvl(:P_COD_USUARIO, :APP_USER);',
'  :P94_COD_EMPRESA := ''1'';',
'  :P94_COD_SUCURSAL:= nvl(:P_COD_SUCURSAL,''01'');',
'  :P94_COD_MODULO  := nvl(:P_COD_MODULO,''B5'');',
'  :P94_ESTADO_CASO := ''EN PROCESO'';',
'  --setear parametros',
' ',
' BEGIN',
'  select nvl(nombre, nomb_fantasia) ',
'  into :P94_NOMBRE',
'    from personas, ',
'    cc_clientes',
'    where personas.cod_persona = cc_clientes.cod_persona ',
'    and cod_cliente = :P94_COD_CLIENTE and cod_empresa = :P94_COD_EMPRESA;    ',
'EXCEPTION',
'  when others then',
'    :P94_NOMBRE := NULL;',
'END;',
'',
'',
'',
''))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp.component_end;
end;
/
