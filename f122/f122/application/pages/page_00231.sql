prompt --application/pages/page_00231
begin
--   Manifest
--     PAGE: 00231
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
 p_id=>231
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'FVGRUVEN'
,p_alias=>'FVGRUVEN'
,p_step_title=>'FVGRUVEN'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'NZARATE'
,p_last_upd_yyyymmddhh24miss=>'20240906152611'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(52576816348271018)
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
 p_id=>wwv_flow_imp.id(52577351510271023)
,p_plug_name=>'CABECERA'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(52578270082271032)
,p_plug_name=>'DETALLES'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>60
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'        seq_id  SEQ_ID,',
'        c001    VENDEDORES_RELACIONADOS,',
'        n001    PORC_VTA,',
'        n002    PORC_COMISION,',
'        NULL    EDITAR,',
'        NULL    ELIMINAR',
'FROM APEX_COLLECTIONS',
'WHERE COLLECTION_NAME = ''VENDEDOR_REL''',
'AND :P231_INDICADOR_REPORT = ''1''',
'AND nvl(c021, ''O'') <> ''B''',
'ORDER BY SEQ_ID;',
'            '))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P231_INDICADOR_REPORT'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'DETALLES'
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
 p_id=>wwv_flow_imp.id(52578412006271034)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'EMILIANOP'
,p_internal_uid=>52578412006271034
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(52578525042271035)
,p_db_column_name=>'VENDEDORES_RELACIONADOS'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Vendedores Relacionados'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'CENTER'
,p_rpt_named_lov=>wwv_flow_imp.id(6512217793593966)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(52578695151271036)
,p_db_column_name=>'PORC_VTA'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Porc Vta'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(52578742711271037)
,p_db_column_name=>'PORC_COMISION'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Porc Comision'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(52578875761271038)
,p_db_column_name=>'EDITAR'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Editar'
,p_column_link=>'javascript:$s(''P231_SEQ_ID_EDITAR'',''#SEQ_ID#'');'
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
 p_id=>wwv_flow_imp.id(52578931323271039)
,p_db_column_name=>'ELIMINAR'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Eliminar'
,p_column_link=>'javascript:$s(''P231_SEQ_ID_ELIMINAR'',''#SEQ_ID#'');'
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
'END;',
''))
,p_display_condition2=>'PLSQL'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(52579546644271045)
,p_db_column_name=>'SEQ_ID'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Seq Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(53888141760624558)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'538882'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'VENDEDORES_RELACIONADOS:PORC_VTA:PORC_COMISION:EDITAR:ELIMINAR'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(53898560124760406)
,p_plug_name=>'DETALLES CLIENTE'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>70
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'        seq_id  SEQ_ID_CLI,',
'        c001    CLIENTES_ESPECIALES,',
'        n001    PORC_COMISION,',
'        NULL    EDITAR,',
'        NULL    ELIMINAR',
'FROM APEX_COLLECTIONS',
'WHERE COLLECTION_NAME = ''VENDEDOR_CLI''',
'AND :P231_INDICADOR_REPORT = ''1''',
'AND nvl(c021, ''O'') <> ''B''',
'ORDER BY SEQ_ID_CLI;'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P231_INDICADOR_REPORT'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'DETALLES CLIENTE'
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
 p_id=>wwv_flow_imp.id(53898831286760409)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'EMILIANOP'
,p_internal_uid=>53898831286760409
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(53899091698760411)
,p_db_column_name=>'CLIENTES_ESPECIALES'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Clientes Especiales'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'CENTER'
,p_rpt_named_lov=>wwv_flow_imp.id(6220104513588210)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(53899198009760412)
,p_db_column_name=>'PORC_COMISION'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Porc Comision'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(53899260333760413)
,p_db_column_name=>'EDITAR'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Editar'
,p_column_link=>'javascript:$s(''P231_SEQ_ID_EDITAR_CLI'',''#SEQ_ID_CLI#'');'
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
 p_id=>wwv_flow_imp.id(53899302128760414)
,p_db_column_name=>'ELIMINAR'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Eliminar'
,p_column_link=>'javascript:$s(''P231_SEQ_ID_ELIMINAR_CLI'',''#SEQ_ID_CLI#'');'
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
'END;',
''))
,p_display_condition2=>'PLSQL'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(54524218529231701)
,p_db_column_name=>'SEQ_ID_CLI'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Seq Id Cli'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(53927302029341268)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'539274'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'CLIENTES_ESPECIALES:PORC_COMISION:EDITAR:ELIMINAR'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(53898644064760407)
,p_plug_name=>'CREAR/EDITAR VENDEDOR'
,p_region_template_options=>'#DEFAULT#:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>80
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(54524318166231702)
,p_plug_name=>'CREAR/EDITAR CLIENTE'
,p_region_template_options=>'#DEFAULT#:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>90
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(53902863977760449)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(52577351510271023)
,p_button_name=>'P231_BOTON_CONFIRMAR_CAMBIOS'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--gapLeft:t-Button--gapRight:t-Button--gapTop:t-Button--gapBottom'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Confirmar Cambios'
,p_button_position=>'BELOW_BOX'
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
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(54525518276231714)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(54524318166231702)
,p_button_name=>'P231_BOTON_ACEPTAR_ED_CLI'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Aceptar'
,p_button_position=>'BOTTOM'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(54525606487231715)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(54524318166231702)
,p_button_name=>'P231_BOTON_ACEPTAR_CR_CLI'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Aceptar'
,p_button_position=>'BOTTOM'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(54525765150231716)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(54524318166231702)
,p_button_name=>'P231_BOTON_CANCELAR_CLI'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Cancelar'
,p_button_position=>'BOTTOM'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(53900285403760423)
,p_button_sequence=>90
,p_button_plug_id=>wwv_flow_imp.id(53898644064760407)
,p_button_name=>'P231_BOTON_ACEPTAR_ED'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Aceptar'
,p_button_position=>'BOTTOM'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(53900321455760424)
,p_button_sequence=>110
,p_button_plug_id=>wwv_flow_imp.id(53898644064760407)
,p_button_name=>'P231_BOTON_ACEPTAR_CR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Aceptar'
,p_button_position=>'BOTTOM'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(53900443501760425)
,p_button_sequence=>130
,p_button_plug_id=>wwv_flow_imp.id(53898644064760407)
,p_button_name=>'P231_BOTON_CANCELAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Cancelar'
,p_button_position=>'BOTTOM'
,p_button_alignment=>'LEFT'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(53902944183760450)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(53898560124760406)
,p_button_name=>'P231_BOTON_AGREGAR_CLIENTE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Agregar Cliente'
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
 p_id=>wwv_flow_imp.id(53901613006760437)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(52578270082271032)
,p_button_name=>'P231_BOTON_AGREGAR_VENDEDOR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Agregar Vendedor Relacionado'
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
 p_id=>wwv_flow_imp.id(52576987456271019)
,p_name=>'P231_COD_USUARIO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(52576816348271018)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(52577031110271020)
,p_name=>'P231_COD_EMPRESA'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(52576816348271018)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(52577113245271021)
,p_name=>'P231_COD_SUCURSAL_GLOB'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(52576816348271018)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(52577449804271024)
,p_name=>'P231_COD_GRUPO_VEN'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(52577351510271023)
,p_prompt=>'Grupo Vendedor'
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
 p_id=>wwv_flow_imp.id(52577564069271025)
,p_name=>'P231_COD_VENDEDOR'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(52577351510271023)
,p_prompt=>'Vendedor'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_VENDEDOR'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'--LV PARA VTFAPECO  ',
'  select cod_vendedor || '' - '' || ltrim( rtrim( nvl( p.nombre, p.nomb_fantasia ) ) ) D,',
'         cod_vendedor R',
'    from fv_vendedores u,',
'          personas p',
'   where u.cod_empresa = :p_cod_empresa',
'     and u.cod_persona = p.cod_persona;',
''))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186937130263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(52577616315271026)
,p_name=>'P231_COD_TIPO_GRUPO'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(52577351510271023)
,p_prompt=>'Tipo de Grupo'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_TIPOS_GRUPOS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT cod_tipo_grupo || '' - '' || descripcion D, cod_tipo_grupo R ',
'FROM fv_tipos_grupos_vendedores ',
'WHERE cod_empresa = :p_cod_empresa ',
'ORDER BY 1'))
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
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(52577762995271027)
,p_name=>'P231_COD_SUCURSAL'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(52577351510271023)
,p_prompt=>'Sucursal'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LVSUCURSALES'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT cod_sucursal||'' - '' ||descripcion D, ',
'         cod_sucursal R',
'    FROM sucursales',
'    WHERE COD_EMPRESA = :P_COD_EMPRESA',
'ORDER BY descripcion;'))
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
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(52577851627271028)
,p_name=>'P231_ESTADO'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(52577351510271023)
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
 p_id=>wwv_flow_imp.id(52578109446271031)
,p_name=>'P231_DESCRIPCION'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(52577351510271023)
,p_prompt=>'Descripcion'
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
 p_id=>wwv_flow_imp.id(52578358748271033)
,p_name=>'P231_INDICADOR_REPORT'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(52576816348271018)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(52579311636271043)
,p_name=>'P231_SEQ_ID_EDITAR'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(52576816348271018)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(52579491319271044)
,p_name=>'P231_SEQ_ID_ELIMINAR'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(52576816348271018)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(53899418865760415)
,p_name=>'P231_SEQ_ID_EDITAR_CLI'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(52576816348271018)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(53899575071760416)
,p_name=>'P231_SEQ_ID_ELIMINAR_CLI'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(52576816348271018)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(53899631353760417)
,p_name=>'P231_COD_VENDEDOR_CR_ED'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(53898644064760407)
,p_prompt=>'Cod Vendedor'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_VENDEDOR'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'--LV PARA VTFAPECO  ',
'  select cod_vendedor || '' - '' || ltrim( rtrim( nvl( p.nombre, p.nomb_fantasia ) ) ) D,',
'         cod_vendedor R',
'    from fv_vendedores u,',
'          personas p',
'   where u.cod_empresa = :p_cod_empresa',
'     and u.cod_persona = p.cod_persona;',
''))
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
 p_id=>wwv_flow_imp.id(53899742586760418)
,p_name=>'P231_PORC_VTA_CR_ED'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(53898644064760407)
,p_prompt=>'Porc Vta '
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
 p_id=>wwv_flow_imp.id(53899887472760419)
,p_name=>'P231_PORC_COMISION_CR_ED'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(53898644064760407)
,p_prompt=>'Porc Vta'
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
 p_id=>wwv_flow_imp.id(54525811870231717)
,p_name=>'P231_CLIENTES_ESPECIALES_CR_ED'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(54524318166231702)
,p_prompt=>'Clientes Especiales'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_CLIENTES1'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT nombre,',
'       nomb_fantasia,',
'       cod_cliente,',
'       codigo_area,',
'       num_telefono,',
'       cod_ident,',
'       numero,',
'       cod_ident||'' - ''||nombre DESCRI,',
'       c.cod_cliente codi',
'  FROM cc_clientes c, personas p, telef_personas pt, ident_personas pi',
' WHERE c.cod_empresa = :P_COD_EMPRESA',
'   AND c.cod_persona = p.cod_persona',
'   AND p.cod_persona = pt.cod_persona(+)',
'   AND p.cod_persona = pi.cod_persona(+)',
'   AND nvl(c.estado, ''X'') in(''A'',''B'',''C'')',
' ORDER BY nombre'))
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
 p_id=>wwv_flow_imp.id(54525922545231718)
,p_name=>'P231_PORC_COMISION_CLI_CR_ED'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(54524318166231702)
,p_prompt=>unistr('Porc Comisi\00F3n')
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
 p_id=>wwv_flow_imp.id(54528426709231743)
,p_name=>'P231_INDICADOR_ALERT'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(52576816348271018)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(52577981354271029)
,p_name=>'DA_SETEAR_GRUP_VEN'
,p_event_sequence=>10
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(52578094193271030)
,p_event_id=>wwv_flow_imp.id(52577981354271029)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    vnumero number(8) ;',
'BEGIN',
'  SELECT max(to_number( cod_grupo_ven))',
'  INTO vnumero',
'  FROM fv_grupos_vendedores',
'  WHERE cod_empresa = :P_COD_EMPRESA;',
'',
'  :P231_COD_GRUPO_VEN := ltrim(rtrim(to_char( nvl(vnumero,0) + 1 )));',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'        :P231_COD_GRUPO_VEN := ''1'' ;',
'END;'))
,p_attribute_02=>'P_COD_EMPRESA'
,p_attribute_03=>'P231_COD_GRUPO_VEN'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(52579098296271040)
,p_name=>'DA_CARGAR_REPORTE'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P231_COD_VENDEDOR'
,p_condition_element=>'P231_COD_VENDEDOR'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(52579166920271041)
,p_event_id=>wwv_flow_imp.id(52579098296271040)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    :P231_INDICADOR_REPORT := ''1'';',
'    FVGRUVEN.pr_crear_col_ven (:P_COD_EMPRESA,',
'                               :P231_COD_GRUPO_VEN);',
'',
'    IF  APEX_COLLECTION.COLLECTION_MEMBER_COUNT(''VENDEDOR_REL'') = 0 THEN',
'        FVGRUVEN.pr_crear_col_ven_cer (:P231_COD_VENDEDOR);',
'    ELSE',
'        FVGRUVEN.pr_crear_col_cli (:P_COD_EMPRESA,',
'                                   :P231_COD_GRUPO_VEN);',
'    END IF;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_02=>'P231_INDICADOR_REPORT,P231_COD_GRUPO_VEN,P_COD_EMPRESA,P231_COD_VENDEDOR'
,p_attribute_03=>'P231_INDICADOR_REPORT'
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
 p_id=>wwv_flow_imp.id(52579286407271042)
,p_event_id=>wwv_flow_imp.id(52579098296271040)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(52578270082271032)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(53898709521760408)
,p_event_id=>wwv_flow_imp.id(52579098296271040)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(53898560124760406)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(52580074403271050)
,p_name=>'DA_ELIMINAR_MIEM_COL'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P231_SEQ_ID_ELIMINAR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(53898353169760404)
,p_event_id=>wwv_flow_imp.id(52580074403271050)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\00BFDesea eliminar el registro?')
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(53898064007760401)
,p_event_id=>wwv_flow_imp.id(52580074403271050)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    FVGRUVEN.pr_borrar_miem_col_ven (:P231_SEQ_ID_ELIMINAR);',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_02=>'P231_SEQ_ID_ELIMINAR'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(53898457368760405)
,p_event_id=>wwv_flow_imp.id(52580074403271050)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(52578270082271032)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(53898187797760402)
,p_name=>'DA_SETEAR_DATOS'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P231_COD_GRUPO_VEN'
,p_condition_element=>'P231_COD_GRUPO_VEN'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(54529121066231750)
,p_event_id=>wwv_flow_imp.id(53898187797760402)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'',
'    V_EXISTE VARCHAR2(10);',
'',
'BEGIN',
'',
'    SELECT COD_GRUPO_VEN',
'    INTO V_EXISTE',
'    FROM FV_GRUPOS_VENDEDORES',
'    WHERE COD_EMPRESA = :P_COD_EMPRESA',
'    AND COD_GRUPO_VEN = :P231_COD_GRUPO_VEN;',
'',
'EXCEPTION',
'    ',
'    WHEN NO_DATA_FOUND THEN',
'        APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(P_COLLECTION_NAME => ''VENDEDOR_REL'');',
'        APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(P_COLLECTION_NAME => ''VENDEDOR_CLI'');',
'    ',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_02=>'P_COD_EMPRESA,P231_COD_GRUPO_VEN'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(53898275483760403)
,p_event_id=>wwv_flow_imp.id(53898187797760402)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    SELECT DESCRIPCION, COD_VENDEDOR, COD_TIPO_GRUPO, COD_SUCURSAL, ESTADO',
'    INTO :P231_DESCRIPCION, :P231_COD_VENDEDOR, :P231_COD_TIPO_GRUPO,',
'         :P231_COD_SUCURSAL, :P231_ESTADO',
'    FROM FV_GRUPOS_VENDEDORES',
'    WHERE COD_EMPRESA = :P_COD_EMPRESA',
'    AND COD_GRUPO_VEN = :P231_COD_GRUPO_VEN;',
'',
'EXCEPTION',
'    ',
'    WHEN NO_DATA_FOUND THEN',
'        :P231_DESCRIPCION := NULL;',
'        :P231_COD_VENDEDOR := NULL;',
'        :P231_COD_TIPO_GRUPO := NULL;',
'        :P231_COD_SUCURSAL := NULL;',
'        :P231_ESTADO  := ''A'';',
'    ',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_02=>'P231_COD_GRUPO_VEN,P_COD_EMPRESA'
,p_attribute_03=>'P231_DESCRIPCION,P231_COD_VENDEDOR,P231_COD_TIPO_GRUPO,P231_COD_SUCURSAL,P231_ESTADO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(54528269733231741)
,p_event_id=>wwv_flow_imp.id(53898187797760402)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(52578270082271032)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(54528329776231742)
,p_event_id=>wwv_flow_imp.id(53898187797760402)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(53898560124760406)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(53899967996760420)
,p_name=>'DA_ABRIR_REGION_ED'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P231_SEQ_ID_EDITAR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(53901428211760435)
,p_event_id=>wwv_flow_imp.id(53899967996760420)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(53900285403760423)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(53901848283760439)
,p_event_id=>wwv_flow_imp.id(53899967996760420)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(53900321455760424)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(53901902797760440)
,p_event_id=>wwv_flow_imp.id(53899967996760420)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(53898644064760407)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(53902089298760441)
,p_event_id=>wwv_flow_imp.id(53899967996760420)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    SELECT c001,',
'           n001,',
'           n002',
'    INTO :P231_COD_VENDEDOR_CR_ED, :P231_PORC_VTA_CR_ED, :P231_PORC_COMISION_CR_ED',
'    FROM APEX_COLLECTIONS',
'    WHERE COLLECTION_NAME = ''VENDEDOR_REL''',
'    AND SEQ_ID = :P231_SEQ_ID_EDITAR;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_02=>'P231_SEQ_ID_EDITAR'
,p_attribute_03=>'P231_COD_VENDEDOR_CR_ED,P231_PORC_VTA_CR_ED,P231_PORC_COMISION_CR_ED'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(53900570488760426)
,p_name=>'DA_CERRAR_REGION_CR_ED'
,p_event_sequence=>60
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(53900443501760425)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(53900668392760427)
,p_event_id=>wwv_flow_imp.id(53900570488760426)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(53898644064760407)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(53900795830760428)
,p_name=>'OCULTAR_BOTONES_CR_ED'
,p_event_sequence=>70
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(53900875683760429)
,p_event_id=>wwv_flow_imp.id(53900795830760428)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(53900321455760424)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(53900924397760430)
,p_event_id=>wwv_flow_imp.id(53900795830760428)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(53900285403760423)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(54526041213231719)
,p_event_id=>wwv_flow_imp.id(53900795830760428)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(54525606487231715)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(54526139684231720)
,p_event_id=>wwv_flow_imp.id(53900795830760428)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(54525518276231714)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(53901022041760431)
,p_name=>'DA_MODIFICAR_MIEM_VEN'
,p_event_sequence=>80
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(53900285403760423)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(53901189362760432)
,p_event_id=>wwv_flow_imp.id(53901022041760431)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN ',
'APEX_DEBUG.ERROR(''entra'');',
'        FVGRUVEN.pr_modificar_miem_ven (:P231_SEQ_ID_EDITAR,',
'                                        :P231_COD_VENDEDOR_CR_ED,',
'                                        :P231_PORC_VTA_CR_ED,',
'                                        :P231_PORC_COMISION_CR_ED);',
'APEX_DEBUG.ERROR(''sale'');',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;',
'',
''))
,p_attribute_02=>'P231_SEQ_ID_EDITAR,P231_COD_VENDEDOR_CR_ED,P231_PORC_VTA_CR_ED,P231_PORC_COMISION_CR_ED'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(53901353986760434)
,p_event_id=>wwv_flow_imp.id(53901022041760431)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(52578270082271032)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(53901256011760433)
,p_event_id=>wwv_flow_imp.id(53901022041760431)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(53898644064760407)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(53902183499760442)
,p_name=>'DA_ABRIR_REGION_CR'
,p_event_sequence=>90
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(53901613006760437)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(54528554762231744)
,p_event_id=>wwv_flow_imp.id(53902183499760442)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    IF :P231_COD_GRUPO_VEN IS NULL OR',
'       :P231_COD_VENDEDOR IS NULL THEN',
'            :P231_INDICADOR_ALERT := ''1'';',
'    ELSE',
'            :P231_INDICADOR_ALERT := ''0'';',
'    END IF;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_02=>'P231_COD_GRUPO_VEN,P231_COD_VENDEDOR'
,p_attribute_03=>'P231_INDICADOR_ALERT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(54528679705231745)
,p_event_id=>wwv_flow_imp.id(53902183499760442)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>unistr('Compruebe que los datos obligatorios no se encuentran vac\00EDos.')
,p_attribute_02=>'DATOS VACIOS'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P231_INDICADOR_ALERT'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(53901784014760438)
,p_event_id=>wwv_flow_imp.id(53902183499760442)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(53900321455760424)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P231_INDICADOR_ALERT'
,p_client_condition_expression=>'0'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(53901547766760436)
,p_event_id=>wwv_flow_imp.id(53902183499760442)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(53900285403760423)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P231_INDICADOR_ALERT'
,p_client_condition_expression=>'0'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(53900058335760421)
,p_event_id=>wwv_flow_imp.id(53902183499760442)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(53898644064760407)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P231_INDICADOR_ALERT'
,p_client_condition_expression=>'0'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(53900155542760422)
,p_event_id=>wwv_flow_imp.id(53902183499760442)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P231_COD_VENDEDOR_CR_ED,P231_PORC_VTA_CR_ED,P231_PORC_COMISION_CR_ED'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P231_INDICADOR_ALERT'
,p_client_condition_expression=>'0'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(53902331478760444)
,p_name=>'DA_CREAR_MIEM_VEN'
,p_event_sequence=>100
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(53900321455760424)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(53902537359760446)
,p_event_id=>wwv_flow_imp.id(53902331478760444)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN ',
'',
'        FVGRUVEN.pr_agregar_miem_col_ven (',
'                                          :P231_COD_VENDEDOR_CR_ED,',
'                                          :P231_PORC_VTA_CR_ED,',
'                                          :P231_PORC_COMISION_CR_ED);',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_02=>'P231_COD_VENDEDOR_CR_ED,P231_PORC_VTA_CR_ED,P231_PORC_COMISION_CR_ED'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(53902672094760447)
,p_event_id=>wwv_flow_imp.id(53902331478760444)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(52578270082271032)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(53902715813760448)
,p_event_id=>wwv_flow_imp.id(53902331478760444)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(53898644064760407)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(54524474121231703)
,p_name=>'DA_ELIMINAR_MIEM_CLI'
,p_event_sequence=>110
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P231_SEQ_ID_ELIMINAR_CLI'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(54524636027231705)
,p_event_id=>wwv_flow_imp.id(54524474121231703)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\00BFDesea eliminar el registro?')
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(54524701048231706)
,p_event_id=>wwv_flow_imp.id(54524474121231703)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    FVGRUVEN.pr_borrar_miem_col_cli (:P231_SEQ_ID_ELIMINAR_CLI);',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_02=>'P231_SEQ_ID_ELIMINAR_CLI'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(54524816318231707)
,p_event_id=>wwv_flow_imp.id(54524474121231703)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(53898560124760406)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(54524902091231708)
,p_name=>'DA_EDITAR_MIEM_CLI'
,p_event_sequence=>120
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P231_SEQ_ID_EDITAR_CLI'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(54525135647231710)
,p_event_id=>wwv_flow_imp.id(54524902091231708)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(54525518276231714)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(54525224488231711)
,p_event_id=>wwv_flow_imp.id(54524902091231708)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(54525606487231715)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(54525327498231712)
,p_event_id=>wwv_flow_imp.id(54524902091231708)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(54524318166231702)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(54525441633231713)
,p_event_id=>wwv_flow_imp.id(54524902091231708)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    SELECT c001,',
'           n001',
'    INTO :P231_CLIENTES_ESPECIALES_CR_ED, :P231_PORC_COMISION_CLI_CR_ED',
'    FROM APEX_COLLECTIONS',
'    WHERE COLLECTION_NAME = ''VENDEDOR_CLI''',
'    AND SEQ_ID = :P231_SEQ_ID_EDITAR_CLI;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_02=>'P231_SEQ_ID_EDITAR_CLI'
,p_attribute_03=>'P231_CLIENTES_ESPECIALES_CR_ED,P231_CLIENTES_ESPECIALES_CR_ED'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(54526280825231721)
,p_name=>'DA_MODIFICAR_MIEM_CLI'
,p_event_sequence=>130
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(54525518276231714)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(54526429274231723)
,p_event_id=>wwv_flow_imp.id(54526280825231721)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN ',
'',
'        FVGRUVEN.pr_modificar_miem_cli (  :P231_SEQ_ID_EDITAR_CLI,',
'                                          :P231_CLIENTES_ESPECIALES_CR_ED,',
'                                          :P231_PORC_COMISION_CLI_CR_ED);',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_02=>'P231_SEQ_ID_EDITAR_CLI,P231_CLIENTES_ESPECIALES_CR_ED,P231_PORC_COMISION_CLI_CR_ED'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(54526578966231724)
,p_event_id=>wwv_flow_imp.id(54526280825231721)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(53898560124760406)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(54526660926231725)
,p_event_id=>wwv_flow_imp.id(54526280825231721)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(54524318166231702)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(54526721186231726)
,p_name=>'DA_ABRIR_CREAR_VEN'
,p_event_sequence=>140
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(53902944183760450)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(54528761055231746)
,p_event_id=>wwv_flow_imp.id(54526721186231726)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    IF :P231_COD_GRUPO_VEN IS NULL OR',
'       :P231_COD_VENDEDOR IS NULL THEN',
'            :P231_INDICADOR_ALERT := ''1'';',
'    ELSE',
'            :P231_INDICADOR_ALERT := ''0'';',
'    END IF;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_02=>'P231_COD_GRUPO_VEN,P231_COD_VENDEDOR'
,p_attribute_03=>'P231_INDICADOR_ALERT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(54528823597231747)
,p_event_id=>wwv_flow_imp.id(54526721186231726)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>unistr('Compruebe que los datos obligatorios no se encuentran vac\00EDos.')
,p_attribute_02=>'DATOS VACIOS'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P231_INDICADOR_ALERT'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(54526941379231728)
,p_event_id=>wwv_flow_imp.id(54526721186231726)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(54525606487231715)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P231_INDICADOR_ALERT'
,p_client_condition_expression=>'0'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(54527000033231729)
,p_event_id=>wwv_flow_imp.id(54526721186231726)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(54525518276231714)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P231_INDICADOR_ALERT'
,p_client_condition_expression=>'0'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(54527165974231730)
,p_event_id=>wwv_flow_imp.id(54526721186231726)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(54524318166231702)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P231_INDICADOR_ALERT'
,p_client_condition_expression=>'0'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(54527297122231731)
,p_event_id=>wwv_flow_imp.id(54526721186231726)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P231_CLIENTES_ESPECIALES_CR_ED,,P231_PORC_COMISION_CLI_CR_ED'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P231_INDICADOR_ALERT'
,p_client_condition_expression=>'0'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(54527382988231732)
,p_name=>'DA_AGREGAR_MIEM_VEN'
,p_event_sequence=>150
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(54525606487231715)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(54527578373231734)
,p_event_id=>wwv_flow_imp.id(54527382988231732)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN ',
'',
'        FVGRUVEN.pr_agregar_miem_col_cli ( :P231_CLIENTES_ESPECIALES_CR_ED,',
'                                           :P231_PORC_COMISION_CLI_CR_ED);',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_02=>'P231_CLIENTES_ESPECIALES_CR_ED,P231_PORC_COMISION_CLI_CR_ED'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(54527622723231735)
,p_event_id=>wwv_flow_imp.id(54527382988231732)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(53898560124760406)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(54527750646231736)
,p_event_id=>wwv_flow_imp.id(54527382988231732)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(54524318166231702)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(54527865426231737)
,p_name=>'DA_GUARDAR_EN_BD'
,p_event_sequence=>160
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(53902863977760449)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(54528980635231748)
,p_event_id=>wwv_flow_imp.id(54527865426231737)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    IF :P231_COD_GRUPO_VEN IS NULL OR',
'       :P231_COD_VENDEDOR IS NULL THEN',
'            :P231_INDICADOR_ALERT := ''1'';',
'    ELSE',
'            :P231_INDICADOR_ALERT := ''0'';',
'    END IF;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_02=>'P231_COD_GRUPO_VEN,P231_COD_VENDEDOR'
,p_attribute_03=>'P231_INDICADOR_ALERT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(54529048048231749)
,p_event_id=>wwv_flow_imp.id(54527865426231737)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>unistr('Compruebe que los datos obligatorios no se encuentran vac\00EDos.')
,p_attribute_02=>'DATOS VACIOS'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P231_INDICADOR_ALERT'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(54527933427231738)
,p_event_id=>wwv_flow_imp.id(54527865426231737)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\00BFGuardar cambios?')
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P231_INDICADOR_ALERT'
,p_client_condition_expression=>'0'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(54528012381231739)
,p_event_id=>wwv_flow_imp.id(54527865426231737)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_01=>'CONFIRMAR'
,p_attribute_02=>'Y'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P231_INDICADOR_ALERT'
,p_client_condition_expression=>'0'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(52579995249271049)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'PR_LIMPIAR_CAMPOS'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(52577260713271022)
,p_process_sequence=>20
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_INIT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    :P231_COD_USUARIO := :P_COD_USUARIO;',
'    :P231_COD_EMPRESA := :P_COD_EMPRESA;',
'    :P231_COD_SUCURSAL_GLOB := :P_COD_SUCURSAL;',
'',
'    :P231_ESTADO := ''A'';',
'',
'    :P231_INDICADOR_REPORT := ''0'';',
'    :P231_INDICADOR_ALERT := ''0'';',
'',
'    ',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(54528186305231740)
,p_process_sequence=>10
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_GUARDAR_BD'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    -- GUARDAR CABECERA EN BD --',
'    FVGRUVEN.pr_confirmar_accion_grup_ven ( :P_COD_EMPRESA,',
'                                            :P231_COD_GRUPO_VEN,',
'                                            :P231_DESCRIPCION,',
'                                            :P231_COD_VENDEDOR,',
'                                            :P231_COD_TIPO_GRUPO,',
'                                            :P231_COD_SUCURSAL,',
'                                            :P231_ESTADO);',
'',
'    -- GUARDAR COLLECTION VENDEDORES RELACIONADOS EN BD --',
'    FVGRUVEN.pr_confirmar_accion_ven ( :P_COD_EMPRESA,',
'                                       :P231_COD_GRUPO_VEN);',
'',
'',
'    -- GUARDAR COLLECTION CLIENTES EN BD --',
'    FVGRUVEN.pr_confirmar_accion_cli ( :P_COD_EMPRESA,',
'                                       :P231_COD_GRUPO_VEN);',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>unistr('\00A1Ups! Ocurri\00F3 un error.')
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CONFIRMAR'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
,p_process_success_message=>unistr('\00A1Los cambios se guardaron exitosamente!')
);
wwv_flow_imp.component_end;
end;
/
