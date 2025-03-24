prompt --application/pages/page_00316
begin
--   Manifest
--     PAGE: 00316
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
 p_id=>316
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Preguntas OTS Cerradas'
,p_alias=>'CAPREGOT'
,p_step_title=>'Preguntas OTS Cerradas'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'JOSEFINAGU'
,p_last_upd_yyyymmddhh24miss=>'20230106094602'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(306085667090538939)
,p_plug_name=>'Preguntas OTS Cerradas'
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>990
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ROWID ROW_ID,',
'       COD_EMPRESA,',
'       COD_PREGUNTA,',
'       DESCRIPCION,',
'       COD_USUARIO,',
'       FEC_ALTA,',
'       ESTADO,',
'       NULL EDITAR,',
'       NULL ELIMINAR    ',
'  FROM ca_preguntas_ot'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P316_VBLE_COD_EMPRESA'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Preguntas OTS Cerradas'
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
 p_id=>wwv_flow_imp.id(306085762002538940)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'JOSEFINAGU'
,p_internal_uid=>306085762002538940
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(77021501682750821)
,p_db_column_name=>'ROW_ID'
,p_display_order=>10
,p_column_identifier=>'J'
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
,p_rpt_show_filter_lov=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(76008166690170048)
,p_db_column_name=>'COD_EMPRESA'
,p_display_order=>250
,p_column_identifier=>'S'
,p_column_label=>'Cod Empresa'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(76008246752170049)
,p_db_column_name=>'COD_PREGUNTA'
,p_display_order=>260
,p_column_identifier=>'T'
,p_column_label=>'Pregunta'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(76008305338170050)
,p_db_column_name=>'DESCRIPCION'
,p_display_order=>270
,p_column_identifier=>'U'
,p_column_label=>unistr('Descripci\00F3n')
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(77044470656763402)
,p_db_column_name=>'ESTADO'
,p_display_order=>280
,p_column_identifier=>'W'
,p_column_label=>'Estado'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(77044345436763401)
,p_db_column_name=>'FEC_ALTA'
,p_display_order=>290
,p_column_identifier=>'V'
,p_column_label=>'Fec Alta'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(77020323398750820)
,p_db_column_name=>'COD_USUARIO'
,p_display_order=>310
,p_column_identifier=>'F'
,p_column_label=>'Usuario'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(77020707654750820)
,p_db_column_name=>'EDITAR'
,p_display_order=>320
,p_column_identifier=>'H'
,p_column_label=>'Editar'
,p_column_link=>'javascript:$s(''P316_AUX_ID_EDITAR'',''#ROW_ID#'');'
,p_column_linktext=>'<span aria-hidden="true" class="fa fa-pencil-square-o"></span>'
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
 p_id=>wwv_flow_imp.id(77021142554750821)
,p_db_column_name=>'ELIMINAR'
,p_display_order=>330
,p_column_identifier=>'I'
,p_column_label=>'Eliminar'
,p_column_link=>'javascript:$s(''P316_AUX_ID_ELIMINAR'',''#ROW_ID#'');'
,p_column_linktext=>'<span aria-hidden="true" class="fa fa-trash-o"></span>'
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
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(77927056461357738)
,p_application_user=>'APXWS_ALTERNATIVE'
,p_name=>'Principal'
,p_report_seq=>10
,p_report_alias=>'779271'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>10
,p_report_columns=>'COD_PREGUNTA:DESCRIPCION:EDITAR:ELIMINAR:'
,p_sort_column_1=>'FEC_ALTA'
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
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(306467204888182574)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'760628'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>10
,p_report_columns=>'COD_PREGUNTA:DESCRIPCION:EDITAR:ELIMINAR:'
,p_sort_column_1=>'FEC_ALTA'
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
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(306408331082979501)
,p_plug_name=>'AGREGAR/EDITAR'
,p_region_template_options=>'#DEFAULT#:js-dialog-size480x320'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>1000
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(375766100850088843)
,p_plug_name=>'VARIABLES'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>20
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(77023382492750824)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(306408331082979501)
,p_button_name=>'BT_CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(77022994225750823)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(306408331082979501)
,p_button_name=>'BT_GUARDAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Guardar'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(77022244285750822)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(306085667090538939)
,p_button_name=>'BT_AGREGAR'
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
 p_id=>wwv_flow_imp.id(77023755864750824)
,p_name=>'P316_COD_PREGUNTA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(306408331082979501)
,p_prompt=>'Pregunta'
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
 p_id=>wwv_flow_imp.id(77024121032750824)
,p_name=>'P316_DESCRIPCION'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(306408331082979501)
,p_prompt=>unistr('Descripci\00F3n')
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
 p_id=>wwv_flow_imp.id(77025206287750825)
,p_name=>'P316_VBLE_COD_MODULO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(375766100850088843)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(77025652246750826)
,p_name=>'P316_NOM_MODULO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(375766100850088843)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(77026027706750826)
,p_name=>'P316_COD_FORMA'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(375766100850088843)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(77026492706750826)
,p_name=>'P316_NOM_FORMA'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(375766100850088843)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(77026838876750827)
,p_name=>'P316_VBLE_COD_EMPRESA'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(375766100850088843)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(77027270263750827)
,p_name=>'P316_NOM_EMPRESA'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(375766100850088843)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(77027674341750827)
,p_name=>'P316_COD_SUCURSAL'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(375766100850088843)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(77028037283750828)
,p_name=>'P316_NOM_SUCURSAL'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(375766100850088843)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(77028461763750828)
,p_name=>'P316_VBLE_COD_USUARIO'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(375766100850088843)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(77028876332750828)
,p_name=>'P316_AUX_ID_EDITAR'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(375766100850088843)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(77029287132750828)
,p_name=>'P316_AUX_ID_ELIMINAR'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(375766100850088843)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(77029654115750829)
,p_name=>'P316_MSJE_SUCCES'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(375766100850088843)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(77045367415763411)
,p_name=>'P316_MSJE_ERROR'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(375766100850088843)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(77037539616750835)
,p_name=>'DA_EDITAR'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P316_AUX_ID_EDITAR'
,p_condition_element=>'P316_AUX_ID_EDITAR'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(77039013666750836)
,p_event_id=>wwv_flow_imp.id(77037539616750835)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT COD_PREGUNTA,',
'       DESCRIPCION',
'  INTO :P316_COD_PREGUNTA,',
'       :P316_DESCRIPCION',
'  FROM ca_preguntas_ot',
' WHERE ROWID = :P316_AUX_ID_EDITAR;'))
,p_attribute_02=>'P316_AUX_ID_EDITAR'
,p_attribute_03=>'P316_COD_PREGUNTA,P316_DESCRIPCION'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(77038078944750836)
,p_event_id=>wwv_flow_imp.id(77037539616750835)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(306408331082979501)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(77038537925750836)
,p_event_id=>wwv_flow_imp.id(77037539616750835)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(306408331082979501)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(77035634557750834)
,p_name=>'DA_ELIMINAR'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P316_AUX_ID_ELIMINAR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(77036174724750834)
,p_event_id=>wwv_flow_imp.id(77035634557750834)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\00BFDesea eliminar este registro?')
,p_attribute_02=>unistr('\00A1Atenci\00F3n!')
,p_attribute_03=>'warning'
,p_attribute_04=>'fa-warning'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(77036629907750835)
,p_event_id=>wwv_flow_imp.id(77035634557750834)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    DELETE FROM ca_preguntas_ot',
'     WHERE ROWID = :P316_AUX_ID_ELIMINAR;',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_02=>'P316_AUX_ID_ELIMINAR'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(77037138068750835)
,p_event_id=>wwv_flow_imp.id(77035634557750834)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(306085667090538939)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(77030468435750830)
,p_name=>'DA_CANCEL'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(77023382492750824)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(77030927570750831)
,p_event_id=>wwv_flow_imp.id(77030468435750830)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(306408331082979501)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(77031326640750831)
,p_name=>'DA_GUARDAR'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(77022994225750823)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(77031811156750831)
,p_event_id=>wwv_flow_imp.id(77031326640750831)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    IF :P316_AUX_ID_EDITAR IS NOT NULL THEN',
'        UPDATE ca_preguntas_ot',
'           SET COD_PREGUNTA = :P316_COD_PREGUNTA,',
'               DESCRIPCION = :P316_DESCRIPCION',
'         WHERE ROWID = :P316_AUX_ID_EDITAR;',
'        :P316_MSJE_SUCCES := 2;',
'    ELSE',
'        INSERT INTO ca_preguntas_ot (COD_EMPRESA,',
'                                    COD_PREGUNTA,',
'                                    DESCRIPCION,',
'                                    FEC_ALTA,',
'                                    COD_USUARIO,',
'                                    ESTADO)',
'                             VALUES (:P316_VBLE_COD_EMPRESA,',
'                                     :P316_COD_PREGUNTA,',
'                                     :P316_DESCRIPCION,',
'                                     SYSDATE,',
'                                     :APP_USER,',
'                                     ''S'');',
'        :P316_MSJE_SUCCES := 1;',
'    END IF;',
'',
'END;'))
,p_attribute_02=>'P316_AUX_ID_EDITAR,P316_COD_PREGUNTA,P316_DESCRIPCION,P316_VBLE_COD_EMPRESA'
,p_attribute_03=>'P316_MSJE_SUCCES'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(77032327781750832)
,p_event_id=>wwv_flow_imp.id(77031326640750831)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'El registro fue creado correctamente.'
,p_attribute_02=>unistr('Operaci\00F3n existosa')
,p_attribute_03=>'success'
,p_attribute_04=>'fa-check-circle'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P316_MSJE_SUCCES'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(77032884536750832)
,p_event_id=>wwv_flow_imp.id(77031326640750831)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'Los cambios fueron guardados correctamente.'
,p_attribute_02=>unistr('Operaci\00F3n existosa')
,p_attribute_03=>'success'
,p_attribute_04=>'fa-check-circle'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P316_MSJE_SUCCES'
,p_client_condition_expression=>'2'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(77033355940750833)
,p_event_id=>wwv_flow_imp.id(77031326640750831)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(306085667090538939)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(77033861708750833)
,p_event_id=>wwv_flow_imp.id(77031326640750831)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(306408331082979501)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(77034215191750833)
,p_name=>'DA_AGREGAR'
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(77022244285750822)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(77034777358750833)
,p_event_id=>wwv_flow_imp.id(77034215191750833)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P316_AUX_ID_EDITAR,P316_COD_PREGUNTA,P316_DESCRIPCION'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(77044555640763403)
,p_event_id=>wwv_flow_imp.id(77034215191750833)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    SELECT MAX(TO_NUMBER(COD_PREGUNTA)) + 1',
'      INTO :P316_COD_PREGUNTA',
'      FROM CA_PREGUNTAS_OT;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        :P316_COD_PREGUNTA := ''1'';',
'END;'))
,p_attribute_03=>'P316_COD_PREGUNTA'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(77044620342763404)
,p_event_id=>wwv_flow_imp.id(77034215191750833)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(306408331082979501)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(77035212462750834)
,p_event_id=>wwv_flow_imp.id(77034215191750833)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(306408331082979501)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(77045147011763409)
,p_name=>'DA_PREGUNTA_NOT_NULL'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P316_COD_PREGUNTA'
,p_condition_element=>'P316_COD_PREGUNTA'
,p_triggering_condition_type=>'NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'focusout'
,p_display_when_type=>'ITEM_IS_NULL'
,p_display_when_cond=>'P316_COD_PREGUNTA'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(77045274932763410)
,p_event_id=>wwv_flow_imp.id(77045147011763409)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P316_COD_PREGUNTA IS NULL THEN',
'    :P316_MSJE_ERROR := 1;',
'END IF;'))
,p_attribute_02=>'P316_COD_PREGUNTA'
,p_attribute_03=>'P316_MSJE_ERROR'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P316_COD_PREGUNTA'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(77045425423763412)
,p_event_id=>wwv_flow_imp.id(77045147011763409)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>unistr('Debe ingresar un c\00F3digo de pregunta.')
,p_attribute_02=>unistr('\00A1Atenci\00F3n!')
,p_attribute_03=>'warning'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P316_MSJE_ERROR'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(77030058132750829)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_INIT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P_COD_EMPRESA := ''1'';',
'',
':P_COD_MODULO := ''CA'';',
'',
':P316_VBLE_COD_USUARIO := NVL(:P_COD_USUARIO, :APP_USER);',
':P316_VBLE_COD_EMPRESA := NVL(:P_COD_EMPRESA,''1'');',
':P316_NOM_EMPRESA := :P_NOM_EMPRESA;',
':P316_COD_SUCURSAL := :P_COD_SUCURSAL;',
':P316_NOM_SUCURSAL := :P_NOM_SUCURSAL;',
':P316_VBLE_COD_MODULO := NVL(:P_COD_MODULO,''CA'');',
'',
'LIBRERIA_FORMAS.RUTINA_INICIAL(PI_COD_MODULO => :P316_VBLE_COD_MODULO,',
'                               PI_COD_FORMA  => :P316_COD_FORMA,',
'                               PI_NOM_MODULO => :P316_NOM_MODULO,',
'                               PI_NOM_FORMA  => :P316_NOM_FORMA,',
'            				   PO_NOM_MODULO => :P316_NOM_MODULO,',
'            				   PO_NOM_FORMA  => :P316_NOM_FORMA);'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp.component_end;
end;
/
