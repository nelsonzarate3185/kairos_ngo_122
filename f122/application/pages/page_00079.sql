prompt --application/pages/page_00079
begin
--   Manifest
--     PAGE: 00079
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
 p_id=>79
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Hoja Ruta'
,p_alias=>'HOJA-RUTA'
,p_step_title=>'Hoja Ruta'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'03'
,p_last_updated_by=>'INV'
,p_last_upd_yyyymmddhh24miss=>'20220926163642'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(203270808221922643)
,p_name=>'Hoja Ruta'
,p_template=>wwv_flow_imp.id(40125238939263661)
,p_display_sequence=>10
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ROWID,',
'       COD_EMPRESA,',
'       COD_VENDEDOR,',
'       FECHA,',
'       COD_CLIENTE,',
'       NOM_CLIENTE,',
'       DIA,',
'       CIUDAD,',
'       ASUNTO,',
'       FECHA_ALTA,',
'       COD_USUARIO,',
'       COMENTARIO,',
'       COD_SUCURSAL_DISTRIBUIDOR,',
'       ID_VISITA_SF',
'  from FV_HOJA_RUTA_VENDEDOR',
'   where cod_vendedor= :P79_COD_VENDEDOR',
'  /*AND COD_CLIENTE = :P79_COD_CLIENTE*/',
'  AND FECHA between  :P79_FECHA and :P79_FECHA_HASTA',
'  order by fecha'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P79_COD_CLIENTE,P79_FECHA,P79_COD_VENDEDOR,P79_FECHA_HASTA'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(40147995650263667)
,p_query_num_rows=>200
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'Y'
,p_csv_output_link_text=>'Download'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(13348863742909285)
,p_query_column_id=>1
,p_column_alias=>'ROWID'
,p_column_display_sequence=>0
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:98:&SESSION.::&DEBUG.:RP:P98_ROWID:\#ROWID#\'
,p_column_linktext=>'<span aria-label="Edit"><span class="fa fa-edit" aria-hidden="true" title="Edit"></span></span>'
,p_heading_alignment=>'LEFT'
,p_include_in_export=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(13349265427909286)
,p_query_column_id=>2
,p_column_alias=>'COD_EMPRESA'
,p_column_display_sequence=>2
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(13349638403909286)
,p_query_column_id=>3
,p_column_alias=>'COD_VENDEDOR'
,p_column_display_sequence=>3
,p_column_heading=>'Cod Vendedor'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_imp.id(12299613844963402)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(13350038078909286)
,p_query_column_id=>4
,p_column_alias=>'FECHA'
,p_column_display_sequence=>4
,p_column_heading=>'Fecha'
,p_use_as_row_header=>'N'
,p_column_format=>'DD-MM-YYYY'
,p_column_alignment=>'CENTER'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(13350471795909286)
,p_query_column_id=>5
,p_column_alias=>'COD_CLIENTE'
,p_column_display_sequence=>5
,p_column_heading=>'Cod Cliente'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(13350858118909286)
,p_query_column_id=>6
,p_column_alias=>'NOM_CLIENTE'
,p_column_display_sequence=>6
,p_column_heading=>'Nom Cliente'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(13351211504909287)
,p_query_column_id=>7
,p_column_alias=>'DIA'
,p_column_display_sequence=>7
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(13351658228909287)
,p_query_column_id=>8
,p_column_alias=>'CIUDAD'
,p_column_display_sequence=>8
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(13352089022909287)
,p_query_column_id=>9
,p_column_alias=>'ASUNTO'
,p_column_display_sequence=>9
,p_column_heading=>'Asunto'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(13352480447909287)
,p_query_column_id=>10
,p_column_alias=>'FECHA_ALTA'
,p_column_display_sequence=>10
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(13352870970909287)
,p_query_column_id=>11
,p_column_alias=>'COD_USUARIO'
,p_column_display_sequence=>11
,p_column_heading=>'Cod Usuario'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(13353258034909288)
,p_query_column_id=>12
,p_column_alias=>'COMENTARIO'
,p_column_display_sequence=>12
,p_column_heading=>'Comentario'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(13353648434909288)
,p_query_column_id=>13
,p_column_alias=>'COD_SUCURSAL_DISTRIBUIDOR'
,p_column_display_sequence=>13
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(13354008513909288)
,p_query_column_id=>14
,p_column_alias=>'ID_VISITA_SF'
,p_column_display_sequence=>14
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(13354402100909288)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(203270808221922643)
,p_button_name=>'Volver'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Volver'
,p_button_position=>'COPY'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13354877300909289)
,p_name=>'P79_COD_CLIENTE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(203270808221922643)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13355201170909289)
,p_name=>'P79_FECHA'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(203270808221922643)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13355621282909289)
,p_name=>'P79_FECHA_HASTA'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(203270808221922643)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13356082672909289)
,p_name=>'P79_COD_VENDEDOR'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(203270808221922643)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(13356471088909290)
,p_name=>'Volver'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(13354402100909288)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(13356926962909290)
,p_event_id=>wwv_flow_imp.id(13356471088909290)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>' history.back()'
);
wwv_flow_imp.component_end;
end;
/
