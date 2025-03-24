prompt --application/pages/page_00218
begin
--   Manifest
--     PAGE: 00218
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
 p_id=>218
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'FVAGRVEN'
,p_alias=>'FVAGRVEN'
,p_step_title=>'FVAGRVEN'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'EMILIANOP'
,p_last_upd_yyyymmddhh24miss=>'20221129171023'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(50662759784952011)
,p_plug_name=>'CABECERA'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>70
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(50662861346952012)
,p_plug_name=>'DATOS VENDEDOR'
,p_parent_plug_id=>wwv_flow_imp.id(50662759784952011)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(50662994585952013)
,p_plug_name=>unistr('COMISI\00D3N')
,p_parent_plug_id=>wwv_flow_imp.id(50662759784952011)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ROWID ROW_ID_COM, MARGEN_INI, MARGEN_FIN, PORC_COM, NULL EDITAR, NULL ELIMINAR',
'FROM FV_AGRUPACION_VENDEDORES_PORC',
'WHERE COD_EMPRESA = :P_COD_EMPRESA',
'AND COD_VENDEDOR = :P218_COD_VENDEDOR',
'AND :P218_INDICADOR_REPORTE = ''1''',
'ORDER BY ROWID;'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P218_INDICADOR_REPORTE,P_COD_EMPRESA,P218_COD_VENDEDOR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>unistr('COMISI\00D3N')
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
 p_id=>wwv_flow_imp.id(50664475737952028)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_search_bar=>'N'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_enable_mail_download=>'Y'
,p_owner=>'EMILIANOP'
,p_internal_uid=>50664475737952028
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(50664562434952029)
,p_db_column_name=>'MARGEN_INI'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Margen Ini'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(50664658591952030)
,p_db_column_name=>'MARGEN_FIN'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Margen Fin'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(50664779701952031)
,p_db_column_name=>'PORC_COM'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Porc Com'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(51035637514560249)
,p_db_column_name=>'EDITAR'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Editar'
,p_column_link=>'javascript:$s(''P218_ROW_ID_EDITAR_COM'',''#ROW_ID_COM#'');'
,p_column_linktext=>'<span aria-hidden="true" class="fa fa-edit"></span>'
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
 p_id=>wwv_flow_imp.id(51035726213560250)
,p_db_column_name=>'ELIMINAR'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Eliminar'
,p_column_link=>'javascript:$s(''P218_ROW_ID_ELIMINAR_COM'',''#ROW_ID_COM#'');'
,p_column_linktext=>'<span class="fa fa-trash" aria-hidden="true"></span>'
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
 p_id=>wwv_flow_imp.id(51069178961339701)
,p_db_column_name=>'ROW_ID_COM'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Row Id Com'
,p_column_type=>'OTHER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(50995209123330043)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'509953'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>5
,p_report_columns=>'MARGEN_INI:MARGEN_FIN:PORC_COM:EDITAR:ELIMINAR'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(50663170294952015)
,p_plug_name=>'VARIABLES'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(50664051606952024)
,p_plug_name=>'VENDEDORES RELACIONADOS'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>80
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT  fv.ROWID ROW_ID, fv.COD_VENDEDOR_REL, nvl(v.descripcion, p.nombre) nombre, ',
'        v.cod_vendedor, NULL EDITAR, NULL ELIMINAR',
'FROM FV_AGRUPACION_VENDEDORES_VEN fv,',
'      FV_VENDEDORES v,',
'      PERSONAS p',
'',
'WHERE fv.COD_EMPRESA = v.cod_empresa',
'AND v.cod_empresa = :P_COD_EMPRESA',
'AND fv.COD_VENDEDOR_REL = v.cod_vendedor',
'AND fv.COD_VENDEDOR = :P218_COD_VENDEDOR',
'AND V.COD_PERSONA = P.COD_PERSONA',
'AND :P218_INDICADOR_REPORTE = ''1''',
'order by fv.ROWID desc;',
'',
'',
'',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P218_INDICADOR_REPORTE ,P218_COD_VENDEDOR,P_COD_EMPRESA'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'VENDEDORES RELACIONADOS'
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
 p_id=>wwv_flow_imp.id(50665252964952036)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_search_bar=>'N'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_enable_mail_download=>'Y'
,p_owner=>'EMILIANOP'
,p_internal_uid=>50665252964952036
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(50665441922952038)
,p_db_column_name=>'COD_VENDEDOR_REL'
,p_display_order=>10
,p_column_identifier=>'B'
,p_column_label=>'Cod Vendedor Rel'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(50665641798952040)
,p_db_column_name=>'EDITAR'
,p_display_order=>20
,p_column_identifier=>'C'
,p_column_label=>'Editar'
,p_column_link=>'javascript:$s(''P218_ROW_ID_EDITAR'',''#ROW_ID#'');'
,p_column_linktext=>'<span aria-hidden="true" class="fa fa-edit"></span>'
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
 p_id=>wwv_flow_imp.id(50665783858952041)
,p_db_column_name=>'ELIMINAR'
,p_display_order=>30
,p_column_identifier=>'D'
,p_column_label=>'Eliminar'
,p_column_link=>'javascript:$s(''P218_ROW_ID_ELIMINAR'',''#ROW_ID#'');'
,p_column_linktext=>'<span class="fa fa-trash" aria-hidden="true"></span>'
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
 p_id=>wwv_flow_imp.id(50666109139952045)
,p_db_column_name=>'ROW_ID'
,p_display_order=>40
,p_column_identifier=>'E'
,p_column_label=>'Row Id'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_column_type=>'OTHER'
,p_column_alignment=>'CENTER'
,p_rpt_show_filter_lov=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(51158089110134712)
,p_db_column_name=>'NOMBRE'
,p_display_order=>50
,p_column_identifier=>'F'
,p_column_label=>'Nombre'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(51158113449134713)
,p_db_column_name=>'COD_VENDEDOR'
,p_display_order=>60
,p_column_identifier=>'G'
,p_column_label=>'Cod Vendedor'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(51008050474426200)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'510081'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>10
,p_report_columns=>'COD_VENDEDOR_REL:NOMBRE:EDITAR:ELIMINAR:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(50666212577952046)
,p_plug_name=>'AGREGAR/EDITAR VENDEDOR'
,p_region_template_options=>'#DEFAULT#:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(40120082745263659)
,p_plug_display_sequence=>100
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(51069251286339702)
,p_plug_name=>unistr('AGREGAR/EDITAR COMISI\00D3N')
,p_region_template_options=>'#DEFAULT#:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(40120082745263659)
,p_plug_display_sequence=>110
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(51070597403339715)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(51069251286339702)
,p_button_name=>'P218_BOTON_ACEPTAR_CREAR_COM'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Aceptar'
,p_button_position=>'BOTTOM'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(51070635054339716)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(51069251286339702)
,p_button_name=>'P218_BOTON_ACEPTAR_EDITAR_COM'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Aceptar'
,p_button_position=>'BOTTOM'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(51070760355339717)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(51069251286339702)
,p_button_name=>'P218_BOTON_CERRAR_CR_ED_COM'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Cerrar'
,p_button_position=>'BOTTOM'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(51031482717560207)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_imp.id(50666212577952046)
,p_button_name=>'P218_BOTON_ACEPTAR_CREAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Aceptar'
,p_button_position=>'BOTTOM'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(51031530942560208)
,p_button_sequence=>90
,p_button_plug_id=>wwv_flow_imp.id(50666212577952046)
,p_button_name=>'P218_BOTON_ACEPTAR_EDITAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Aceptar '
,p_button_position=>'BOTTOM'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(51031606163560209)
,p_button_sequence=>100
,p_button_plug_id=>wwv_flow_imp.id(50666212577952046)
,p_button_name=>'P218_BOTON_CERRAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Cerrar'
,p_button_position=>'BOTTOM'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(51033114874560224)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(50664051606952024)
,p_button_name=>'P218_BOTON_AGREGAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Agregar Vendedor'
,p_button_position=>'TOP'
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
 p_id=>wwv_flow_imp.id(51035230889560245)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(50662994585952013)
,p_button_name=>'P218_BOTON_AGREGAR_COMISION'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Agregar Comision'
,p_button_position=>'TOP'
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
 p_id=>wwv_flow_imp.id(50663221138952016)
,p_name=>'P218_COD_EMPRESA'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(50663170294952015)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(50663332501952017)
,p_name=>'P218_COD_SUCURSAL'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(50663170294952015)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(50663408787952018)
,p_name=>'P218_COD_USUARIO'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(50663170294952015)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(50663504270952019)
,p_name=>'P218_COD_VENDEDOR'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(50662861346952012)
,p_prompt=>'Vendedor'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT cod_vendedor || '' - '' || nvl(v.descripcion, p.nombre) D , cod_vendedor R ',
'FROM fv_vendedores v, personas p ',
'WHERE v.cod_empresa = :P_COD_EMPRESA',
'AND v.cod_persona = p.cod_persona'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186937130263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(50663672445952020)
,p_name=>'P218_DESCRIPCION'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(50662861346952012)
,p_prompt=>unistr('T\00EDtulo de grupo')
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
 p_id=>wwv_flow_imp.id(50663773211952021)
,p_name=>'P218_BASE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(50662861346952012)
,p_prompt=>'Monto Bse. Vta.'
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
 p_id=>wwv_flow_imp.id(50663804849952022)
,p_name=>'P218_PORC_COM'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(50662861346952012)
,p_prompt=>unistr('Porc. Comisi\00F3n')
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
 p_id=>wwv_flow_imp.id(50663992273952023)
,p_name=>'P218_ESTADO'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(50662861346952012)
,p_prompt=>'Activo'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'A'
,p_attribute_03=>'I'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(50664829558952032)
,p_name=>'P218_INDICADOR_REPORTE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(50663170294952015)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(50665922014952043)
,p_name=>'P218_ROW_ID_EDITAR'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(50663170294952015)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(50666036968952044)
,p_name=>'P218_ROW_ID_ELIMINAR'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(50663170294952015)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(51032201610560215)
,p_name=>'P218_COD_VENDEDOR_CR_ED'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(50666212577952046)
,p_prompt=>'Vendedor'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT cod_vendedor || '' - '' || nvl(v.descripcion, p.nombre) D , cod_vendedor R ',
'FROM fv_vendedores v, personas p ',
'WHERE v.cod_empresa = :P_COD_EMPRESA',
'AND v.cod_persona = p.cod_persona'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186937130263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(51035100363560244)
,p_name=>'P218_INDICADOR_ALERT'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(50663170294952015)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(51035347452560246)
,p_name=>'P218_ROW_ID_EDITAR_COM'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(50663170294952015)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(51035440647560247)
,p_name=>'P218_ROW_ID_ELIMINAR_COM'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(50663170294952015)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(51069390169339703)
,p_name=>'P218_MARGEN_INI_CR_ED'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(51069251286339702)
,p_prompt=>'Margen Ini'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186937130263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(51069467944339704)
,p_name=>'P218_MARGEN_FIN_CR_ED'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(51069251286339702)
,p_prompt=>'Margen Fin'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186937130263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(51069517407339705)
,p_name=>'P218_PORC_COM_CR_ED'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(51069251286339702)
,p_prompt=>'Porc Com'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186937130263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(50664141301952025)
,p_name=>'DA_LLENAR_DATOS'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P218_COD_VENDEDOR'
,p_condition_element=>'P218_COD_VENDEDOR'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(50664261455952026)
,p_event_id=>wwv_flow_imp.id(50664141301952025)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    SELECT DESCRIPCION, ESTADO, PORC_COM, BASE',
'    INTO :P218_DESCRIPCION, :P218_ESTADO, :P218_PORC_COM, :P218_BASE',
'    FROM FV_AGRUPACION_VENDEDORES',
'    WHERE COD_EMPRESA = :P_COD_EMPRESA',
'    AND COD_VENDEDOR = :P218_COD_VENDEDOR;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_02=>'P_COD_EMPRESA,P218_COD_VENDEDOR'
,p_attribute_03=>'P218_DESCRIPCION,P218_ESTADO,P218_PORC_COM,P218_BASE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(50664978555952033)
,p_event_id=>wwv_flow_imp.id(50664141301952025)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    :P218_INDICADOR_REPORTE := ''1'';',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_03=>'P218_INDICADOR_REPORTE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(50665085852952034)
,p_event_id=>wwv_flow_imp.id(50664141301952025)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(50662994585952013)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(50665881237952042)
,p_event_id=>wwv_flow_imp.id(50664141301952025)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(50664051606952024)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(50666516853952049)
,p_name=>'DA_EDITAR_VENDEDOR'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P218_ROW_ID_EDITAR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(51032829488560221)
,p_event_id=>wwv_flow_imp.id(50666516853952049)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(51031482717560207)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(51032910130560222)
,p_event_id=>wwv_flow_imp.id(50666516853952049)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(51031530942560208)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(50666649977952050)
,p_event_id=>wwv_flow_imp.id(50666516853952049)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    SELECT COD_VENDEDOR_REL',
'    INTO :P218_COD_VENDEDOR_CR_ED',
'    FROM FV_AGRUPACION_VENDEDORES_VEN        ',
'    WHERE ROWID = :P218_ROW_ID_EDITAR;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_02=>'P218_ROW_ID_EDITAR,P218_COD_VENDEDOR,P_COD_EMPRESA'
,p_attribute_03=>'P218_COD_VENDEDOR_CR_ED'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(51030867398560201)
,p_event_id=>wwv_flow_imp.id(50666516853952049)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(50666212577952046)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(51030920974560202)
,p_name=>'DA_ELIMINAR_VENDEDOR_REL'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P218_ROW_ID_ELIMINAR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(51031017383560203)
,p_event_id=>wwv_flow_imp.id(51030920974560202)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\00BFDesea eliminar el vendedor?')
,p_attribute_02=>unistr('\00BFDesea eliminar el vendedor?')
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
 p_id=>wwv_flow_imp.id(51031102292560204)
,p_event_id=>wwv_flow_imp.id(51030920974560202)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    DELETE FV_AGRUPACION_VENDEDORES_VEN',
'    WHERE ROWID = :P218_ROW_ID_ELIMINAR;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_02=>'P218_ROW_ID_ELIMINAR'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(51031262529560205)
,p_event_id=>wwv_flow_imp.id(51030920974560202)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(50664051606952024)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(51031790986560210)
,p_name=>'DA_CERRAR_CR_ED'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(51031606163560209)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(51031811246560211)
,p_event_id=>wwv_flow_imp.id(51031790986560210)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(50666212577952046)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(51031952572560212)
,p_name=>'DA_OCULTAR_BTN_CR_ED'
,p_event_sequence=>50
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(51032041216560213)
,p_event_id=>wwv_flow_imp.id(51031952572560212)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(51031482717560207)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(51032180176560214)
,p_event_id=>wwv_flow_imp.id(51031952572560212)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(51031530942560208)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(51071089326339720)
,p_event_id=>wwv_flow_imp.id(51031952572560212)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(51070597403339715)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(51071110684339721)
,p_event_id=>wwv_flow_imp.id(51031952572560212)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(51070635054339716)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(51032581225560218)
,p_name=>'DA_EDITAR_VENDEDOR_BD'
,p_event_sequence=>60
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(51031530942560208)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(51032623030560219)
,p_event_id=>wwv_flow_imp.id(51032581225560218)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'',
'    IF :P218_COD_VENDEDOR_CR_ED IS NULL THEN',
'        :P218_INDICADOR_ALERT := ''1'';',
'    ELSE',
'        :P218_INDICADOR_ALERT := ''0'';',
'        UPDATE FV_AGRUPACION_VENDEDORES_VEN',
'        SET COD_VENDEDOR_REL = :P218_COD_VENDEDOR_CR_ED',
'        WHERE ROWID = :P218_ROW_ID_EDITAR;',
'    END IF;',
'',
'',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_02=>'P218_ROW_ID_EDITAR,P218_COD_VENDEDOR_CR_ED'
,p_attribute_03=>'P218_INDICADOR_ALERT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(51158352721134715)
,p_event_id=>wwv_flow_imp.id(51032581225560218)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'Compruebe que los campos obligatorios no se encuentren vacios.'
,p_attribute_02=>'COMPRUEBE LOS CAMPOS'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P218_INDICADOR_ALERT'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(51032716377560220)
,p_event_id=>wwv_flow_imp.id(51032581225560218)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(50664051606952024)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P218_INDICADOR_ALERT'
,p_client_condition_expression=>'0'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(51033095433560223)
,p_event_id=>wwv_flow_imp.id(51032581225560218)
,p_event_result=>'TRUE'
,p_action_sequence=>90
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(50666212577952046)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P218_INDICADOR_ALERT'
,p_client_condition_expression=>'0'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(51033228212560225)
,p_name=>'DA_AGREGAR_VENDEDOR'
,p_event_sequence=>70
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(51033114874560224)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(51073031667339740)
,p_event_id=>wwv_flow_imp.id(51033228212560225)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    IF :P218_COD_VENDEDOR IS NULL THEN',
'        :P218_INDICADOR_ALERT := ''1'';',
'    ELSE ',
'        :P218_INDICADOR_ALERT := ''0'';',
'    END IF;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_02=>'P218_COD_VENDEDOR'
,p_attribute_03=>'P218_INDICADOR_ALERT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(51073185816339741)
,p_event_id=>wwv_flow_imp.id(51033228212560225)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>unistr('Compruebe que el c\00F3digo de vendedor no sea nulo.')
,p_attribute_02=>'VENDEDOR NULO'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P218_INDICADOR_ALERT'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(51033303780560226)
,p_event_id=>wwv_flow_imp.id(51033228212560225)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(51031482717560207)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(51033623865560229)
,p_event_id=>wwv_flow_imp.id(51033228212560225)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(51031530942560208)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(51033703074560230)
,p_event_id=>wwv_flow_imp.id(51033228212560225)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P218_COD_VENDEDOR_CR_ED'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(51033878195560231)
,p_event_id=>wwv_flow_imp.id(51033228212560225)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(50666212577952046)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P218_INDICADOR_ALERT'
,p_client_condition_expression=>'0'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(51033917230560232)
,p_name=>'DA_CREAR_VENDEDOR_BD'
,p_event_sequence=>80
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(51031482717560207)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(51034097551560233)
,p_event_id=>wwv_flow_imp.id(51033917230560232)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    IF :P218_COD_VENDEDOR_CR_ED IS NULL THEN',
'        :P218_INDICADOR_ALERT := ''1'';',
'    ELSE',
'        :P218_INDICADOR_ALERT := ''0'';',
'        INSERT INTO FV_AGRUPACION_VENDEDORES_VEN (COD_EMPRESA, COD_VENDEDOR, COD_VENDEDOR_REL)',
'        VALUES (:P_COD_EMPRESA, :P218_COD_VENDEDOR, :P218_COD_VENDEDOR_CR_ED);',
'    END IF;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_02=>'P_COD_EMPRESA,P218_COD_VENDEDOR,P218_COD_VENDEDOR_CR_ED'
,p_attribute_03=>'P218_INDICADOR_ALERT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(51158248264134714)
,p_event_id=>wwv_flow_imp.id(51033917230560232)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'Compruebe que los campos obligatorios no se encuentren vacios.'
,p_attribute_02=>'COMPRUEBE LOS CAMPOS'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P218_INDICADOR_ALERT'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(51034167917560234)
,p_event_id=>wwv_flow_imp.id(51033917230560232)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(50666212577952046)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P218_INDICADOR_ALERT'
,p_client_condition_expression=>'0'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(51034230186560235)
,p_event_id=>wwv_flow_imp.id(51033917230560232)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(50664051606952024)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P218_INDICADOR_ALERT'
,p_client_condition_expression=>'0'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(51034345973560236)
,p_name=>'DA_CAMBIAR_ESTADO'
,p_event_sequence=>90
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P218_ESTADO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(51034443169560237)
,p_event_id=>wwv_flow_imp.id(51034345973560236)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    UPDATE FV_AGRUPACION_VENDEDORES',
'    SET ESTADO = :P218_ESTADO',
'    WHERE COD_VENDEDOR = :P218_COD_VENDEDOR',
'    AND COD_EMPRESA = :P_COD_EMPRESA;',
'',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_02=>'P218_ESTADO,P218_COD_VENDEDOR,COD_EMPRESA'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(51034563790560238)
,p_name=>'DA_CAMBIAR_PORC_COM'
,p_event_sequence=>100
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P218_PORC_COM'
,p_condition_element=>'P218_COD_VENDEDOR'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(51035089130560243)
,p_event_id=>wwv_flow_imp.id(51034563790560238)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    UPDATE FV_AGRUPACION_VENDEDORES',
'    SET PORC_COM = :P218_PORC_COM',
'    WHERE COD_VENDEDOR = :P218_COD_VENDEDOR',
'    AND COD_EMPRESA = :P_COD_EMPRESA;',
'',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_02=>'P218_PORC_COM,P218_COD_VENDEDOR,COD_EMPRESA'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(51034704810560240)
,p_name=>'DA_CAMBIAR_BASE'
,p_event_sequence=>110
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P218_BASE'
,p_condition_element=>'P218_COD_VENDEDOR'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(51034985098560242)
,p_event_id=>wwv_flow_imp.id(51034704810560240)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    UPDATE FV_AGRUPACION_VENDEDORES',
'    SET BASE = :P218_BASE',
'    WHERE COD_VENDEDOR = :P218_COD_VENDEDOR',
'    AND COD_EMPRESA = :P_COD_EMPRESA;',
'',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_02=>'P218_BASE,P218_COD_VENDEDOR,COD_EMPRESA'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(51069623338339706)
,p_name=>'DA_EDITAR_COM'
,p_event_sequence=>120
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P218_ROW_ID_EDITAR_COM'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(51069852878339708)
,p_event_id=>wwv_flow_imp.id(51069623338339706)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    SELECT MARGEN_INI, MARGEN_FIN, PORC_COM',
'    INTO :P218_MARGEN_INI_CR_ED, :P218_MARGEN_FIN_CR_ED, :P218_PORC_COM_CR_ED',
'    FROM FV_AGRUPACION_VENDEDORES_PORC        ',
'    WHERE ROWID = :P218_ROW_ID_EDITAR_COM;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_02=>'P218_ROW_ID_EDITAR_COM'
,p_attribute_03=>'P218_MARGEN_INI_CR_ED,P218_MARGEN_FIN_CR_ED,P218_PORC_COM_CR_ED'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(51069977762339709)
,p_event_id=>wwv_flow_imp.id(51069623338339706)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(51069251286339702)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(51070048413339710)
,p_name=>'DA_ELIMINAR_COM'
,p_event_sequence=>130
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P218_ROW_ID_ELIMINAR_COM'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(51070251557339712)
,p_event_id=>wwv_flow_imp.id(51070048413339710)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('\00BFDesea eliminar la comisi\00F3n?'),
''))
,p_attribute_02=>unistr('\00BFDesea eliminar la comisi\00F3n?')
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(51070309571339713)
,p_event_id=>wwv_flow_imp.id(51070048413339710)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    DELETE FV_AGRUPACION_VENDEDORES_PORC',
'    WHERE ROWID = :P218_ROW_ID_ELIMINAR_COM;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_02=>'P218_ROW_ID_ELIMINAR_COM'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(51070434543339714)
,p_event_id=>wwv_flow_imp.id(51070048413339710)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(50662994585952013)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(51070888696339718)
,p_name=>'DA_CERRAR_CR_ED_COM'
,p_event_sequence=>140
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(51070760355339717)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(51070923846339719)
,p_event_id=>wwv_flow_imp.id(51070888696339718)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(51069251286339702)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(51071282578339722)
,p_name=>'DA_EDITAR_COM_BD'
,p_event_sequence=>150
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(51070635054339716)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(51071401623339724)
,p_event_id=>wwv_flow_imp.id(51071282578339722)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(51070597403339715)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(51071526735339725)
,p_event_id=>wwv_flow_imp.id(51071282578339722)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(51070635054339716)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(51071662236339726)
,p_event_id=>wwv_flow_imp.id(51071282578339722)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    IF :P218_MARGEN_INI_CR_ED IS NULL OR',
'       :P218_MARGEN_FIN_CR_ED IS NULL OR',
'       :P218_PORC_COM_CR_ED IS NULL THEN',
'',
'            :P218_INDICADOR_ALERT := ''1'';',
'    ',
'    ELSE',
'            :P218_INDICADOR_ALERT := ''0'';',
'               UPDATE FV_AGRUPACION_VENDEDORES_PORC',
'            SET MARGEN_INI = :P218_MARGEN_INI_CR_ED,',
'                MARGEN_FIN = :P218_MARGEN_FIN_CR_ED,',
'                PORC_COM = :P218_PORC_COM_CR_ED',
'',
'            WHERE ROWID = :P218_ROW_ID_EDITAR_COM;',
'    END IF;',
'',
' ',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_02=>'P218_MARGEN_INI_CR_ED,P218_MARGEN_FIN_CR_ED,P218_PORC_COM_CR_ED,P218_ROW_ID_EDITAR_COM'
,p_attribute_03=>'P218_INDICADOR_ALERT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(51158707503134719)
,p_event_id=>wwv_flow_imp.id(51071282578339722)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'Compruebe que los campos obligatorios no se encuentren vacios.'
,p_attribute_02=>'COMPRUEBE LOS CAMPOS'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P218_INDICADOR_ALERT'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(51071708560339727)
,p_event_id=>wwv_flow_imp.id(51071282578339722)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(51069251286339702)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(51071823413339728)
,p_event_id=>wwv_flow_imp.id(51071282578339722)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(50662994585952013)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(51071970235339729)
,p_name=>'DA_CREAR_COM_BD'
,p_event_sequence=>160
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(51070597403339715)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(51072184794339731)
,p_event_id=>wwv_flow_imp.id(51071970235339729)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    IF :P218_MARGEN_INI_CR_ED IS NULL OR',
'       :P218_MARGEN_FIN_CR_ED IS NULL OR',
'       :P218_PORC_COM_CR_ED IS NULL THEN',
'',
'            :P218_INDICADOR_ALERT := ''1'';',
'    ',
'    ELSE',
'            :P218_INDICADOR_ALERT := ''0'';',
'            INSERT INTO FV_AGRUPACION_VENDEDORES_PORC (COD_EMPRESA, COD_VENDEDOR, MARGEN_INI,',
'                                                        MARGEN_FIN, PORC_COM)',
'            VALUES (:P_COD_EMPRESA, :P218_COD_VENDEDOR, :P218_MARGEN_INI_CR_ED,',
'                    :P218_MARGEN_FIN_CR_ED, :P218_PORC_COM_CR_ED);',
'    END IF;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_02=>'P_COD_EMPRESA,P218_COD_VENDEDOR,P218_MARGEN_INI_CR_ED,P218_MARGEN_FIN_CR_ED,P218_PORC_COM_CR_ED'
,p_attribute_03=>'P218_INDICADOR_ALERT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(51158692550134718)
,p_event_id=>wwv_flow_imp.id(51071970235339729)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'Compruebe que los campos obligatorios no se encuentren vacios.'
,p_attribute_02=>'COMPRUEBE LOS CAMPOS'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P218_INDICADOR_ALERT'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(51072202647339732)
,p_event_id=>wwv_flow_imp.id(51071970235339729)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(51069251286339702)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P218_INDICADOR_ALERT'
,p_client_condition_expression=>'0'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(51072346070339733)
,p_event_id=>wwv_flow_imp.id(51071970235339729)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(50662994585952013)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P218_INDICADOR_ALERT'
,p_client_condition_expression=>'0'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(51072491602339734)
,p_name=>'DA_AGREGAR_COM'
,p_event_sequence=>170
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(51035230889560245)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(51073204073339742)
,p_event_id=>wwv_flow_imp.id(51072491602339734)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    IF :P218_COD_VENDEDOR IS NULL THEN',
'        :P218_INDICADOR_ALERT := ''1'';',
'    ELSE ',
'        :P218_INDICADOR_ALERT := ''0'';',
'    END IF;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_02=>'P218_COD_VENDEDOR'
,p_attribute_03=>'P218_INDICADOR_ALERT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(51073383905339743)
,p_event_id=>wwv_flow_imp.id(51072491602339734)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>unistr('Compruebe que el c\00F3digo de vendedor no sea nulo.')
,p_attribute_02=>'VENDEDOR NULO'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P218_INDICADOR_ALERT'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(51072657135339736)
,p_event_id=>wwv_flow_imp.id(51072491602339734)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(51070597403339715)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(51072751769339737)
,p_event_id=>wwv_flow_imp.id(51072491602339734)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(51070635054339716)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(51072890814339738)
,p_event_id=>wwv_flow_imp.id(51072491602339734)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P218_MARGEN_INI_CR_ED,P218_MARGEN_FIN_CR_ED,P218_PORC_COM_CR_ED'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(51072914280339739)
,p_event_id=>wwv_flow_imp.id(51072491602339734)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(51069251286339702)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P218_INDICADOR_ALERT'
,p_client_condition_expression=>'0'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(50665113437952035)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'PR_LIMPIAR_CAMPOS'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(50663018275952014)
,p_process_sequence=>20
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_INIT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    :P218_COD_USUARIO := :P_COD_USUARIO;',
'    :P218_COD_EMPRESA := :P_COD_EMPRESA;',
'    :P218_COD_SUCURSAL := :P_COD_SUCURSAL;',
'    :P218_INDICADOR_REPORTE := ''0''',
'',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp.component_end;
end;
/
