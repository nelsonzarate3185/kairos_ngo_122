prompt --application/pages/page_00360
begin
--   Manifest
--     PAGE: 00360
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
 p_id=>360
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Favoritos'
,p_alias=>'FAVORITOS'
,p_step_title=>'Favoritos'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'MARIANABLA'
,p_last_upd_yyyymmddhh24miss=>'20230203103912'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(103903708083744601)
,p_plug_name=>'Favoritos'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>990
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(103906184812744625)
,p_name=>'REPORTE'
,p_parent_plug_id=>wwv_flow_imp.id(103903708083744601)
,p_template=>wwv_flow_imp.id(40100032401263654)
,p_display_sequence=>20
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:u-colors:t-Cards--featured t-Cards--block force-fa-lg:t-Cards--displayInitials:t-Cards--5cols:t-Cards--hideBody:t-Cards--animRaiseCard'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT F100.PAGE card_initials,',
'       M300.NOMB card_title,',
'       APEX_PAGE.GET_URL(p_page => F100.PAGE) card_link,',
'       NULL card_color,',
'       NULL card_icon,',
'       NULL card_subtext,',
'       NULL card_text,',
'       NULL card_subtitle',
'  FROM ASP$FAVO0100 F100,',
'       ASP$MODU0300 M300',
' WHERE F100.USRN = :APP_USER',
'   AND F100.APLI0100$ID = :P_APLI0100_ID',
'   AND F100.PAGE = M300.PAGE_ID',
'   AND F100.MODU0300$ID = M300.ID',
'ORDER BY  F100.ID; '))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(40141194770263665)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>unistr('A\00FAn no tienes favoritos.')
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(103906487466744628)
,p_query_column_id=>1
,p_column_alias=>'CARD_INITIALS'
,p_column_display_sequence=>10
,p_column_heading=>'Card Initials'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(103906581611744629)
,p_query_column_id=>2
,p_column_alias=>'CARD_TITLE'
,p_column_display_sequence=>20
,p_column_heading=>'Card Title'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(103906692588744630)
,p_query_column_id=>3
,p_column_alias=>'CARD_LINK'
,p_column_display_sequence=>30
,p_column_heading=>'Card Link'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(103906751895744631)
,p_query_column_id=>4
,p_column_alias=>'CARD_COLOR'
,p_column_display_sequence=>40
,p_column_heading=>'Card Color'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(103906838063744632)
,p_query_column_id=>5
,p_column_alias=>'CARD_ICON'
,p_column_display_sequence=>50
,p_column_heading=>'Card Icon'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(103906978653744633)
,p_query_column_id=>6
,p_column_alias=>'CARD_SUBTEXT'
,p_column_display_sequence=>60
,p_column_heading=>'Card Subtext'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(103907097969744634)
,p_query_column_id=>7
,p_column_alias=>'CARD_TEXT'
,p_column_display_sequence=>70
,p_column_heading=>'Card Text'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(103907116129744635)
,p_query_column_id=>8
,p_column_alias=>'CARD_SUBTITLE'
,p_column_display_sequence=>80
,p_column_heading=>'Card Subtitle'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(103907749177744641)
,p_plug_name=>'Administrar Favoritos'
,p_parent_plug_id=>wwv_flow_imp.id(103903708083744601)
,p_region_template_options=>'#DEFAULT#:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(103907820336744642)
,p_plug_name=>'REPORTE_ADMIN'
,p_parent_plug_id=>wwv_flow_imp.id(103907749177744641)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT F100.ID,',
'       F100.PAGE,',
'       M300.NOMB,',
'       NULL ELIMINAR',
'  FROM ASP$FAVO0100 F100,',
'       ASP$MODU0300 M300',
' WHERE F100.USRN = :APP_USER',
'   AND F100.APLI0100$ID = :P_APLI0100_ID',
'   AND F100.PAGE = M300.PAGE_ID',
'   AND F100.MODU0300$ID = M300.ID',
'ORDER BY F100.ID; '))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'REPORTE_ADMIN'
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
 p_id=>wwv_flow_imp.id(103908069665744644)
,p_max_row_count=>'1000000'
,p_no_data_found_message=>unistr('A\00FAn no tienes favoritos.  ')
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_search_bar=>'N'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_enable_mail_download=>'Y'
,p_owner=>'MARIANABLA'
,p_internal_uid=>103908069665744644
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(103908149594744645)
,p_db_column_name=>'PAGE'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Page'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(103908278983744646)
,p_db_column_name=>'NOMB'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>unistr('P\00E1gina')
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(104067060638455401)
,p_db_column_name=>'ELIMINAR'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Eliminar'
,p_column_link=>'javascript:$s(''P360_ID'',''#ID#'');'
,p_column_linktext=>'<span class="fa fa-trash" aria-hidden="true"></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(104067140472455402)
,p_db_column_name=>'ID'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(104075343460456218)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1040754'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'PAGE:NOMB:ELIMINAR'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(103907225474744636)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(103903708083744601)
,p_button_name=>'ELIMINAR_TODOS'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Eliminar Todos'
,p_button_position=>'EDIT'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(103908429878744648)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(103903708083744601)
,p_button_name=>'ADMINISTRAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Administrar'
,p_button_position=>'EDIT'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(104067292654455403)
,p_name=>'P360_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(103907820336744642)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(103907331567744637)
,p_name=>'DA_ELIMINAR_TODOS'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(103907225474744636)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(103907438898744638)
,p_event_id=>wwv_flow_imp.id(103907331567744637)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\00BFDesea eliminar todos sus favoritos?')
,p_attribute_02=>unistr('Atenci\00F3n')
,p_attribute_03=>'warning'
,p_attribute_06=>'Aceptar'
,p_attribute_07=>'Cancelar'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(103907535740744639)
,p_event_id=>wwv_flow_imp.id(103907331567744637)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_01=>'ELIMINAR_TODO'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(103908516579744649)
,p_name=>'DA_ADMINISTRAR'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(103908429878744648)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(103908646815744650)
,p_event_id=>wwv_flow_imp.id(103908516579744649)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(103907749177744641)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(104067340542455404)
,p_name=>'DA_ELIMINAR'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P360_ID'
,p_condition_element=>'P360_ID'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(104067472239455405)
,p_event_id=>wwv_flow_imp.id(104067340542455404)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    DELETE FROM ASP$FAVO0100 WHERE ID = :P360_ID;',
'EXCEPTION   ',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;            '))
,p_attribute_02=>'P360_ID'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(104067568508455406)
,p_event_id=>wwv_flow_imp.id(104067340542455404)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(103907820336744642)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(104067678917455407)
,p_event_id=>wwv_flow_imp.id(104067340542455404)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(103906184812744625)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(103907622916744640)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_ELIMINAR_TODO'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    DELETE FROM ASP$FAVO0100',
'          WHERE USRN = :APP_USER;',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_dEBUG.ERROR(SQLERRM);',
'END;        '))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'ELIMINAR_TODO'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
,p_process_success_message=>'Se han eliminado todos los favoritos. '
);
wwv_flow_imp.component_end;
end;
/
