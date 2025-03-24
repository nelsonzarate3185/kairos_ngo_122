prompt --application/pages/page_00798
begin
--   Manifest
--     PAGE: 00798
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
 p_id=>798
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Seguimientos Prospecto'
,p_alias=>'SEGUIMIENTOS-PROSPECTO'
,p_page_mode=>'MODAL'
,p_step_title=>'Seguimientos Prospecto'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'16'
,p_last_updated_by=>'NZARATE'
,p_last_upd_yyyymmddhh24miss=>'20241108100914'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(453997768852575234)
,p_plug_name=>'Agregar Seguimiento'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(429446363484980018)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(453997768852575234)
,p_button_name=>'Cancelar'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Volver'
,p_button_position=>'CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:51:&SESSION.::&DEBUG.:RP,:P51_ID_PROSPECTO:&P798_NRO_TICKET.'
,p_icon_css_classes=>'fa-angle-left'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(429446714325980019)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(453997768852575234)
,p_button_name=>'Crear'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--gapLeft'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Crear Comentario'
,p_button_position=>'CREATE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(429447155538980020)
,p_name=>'P798_NRO_TICKET'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(453997768852575234)
,p_prompt=>'Nro Ticket'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(40186748652263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(429447599853980023)
,p_name=>'P798_COMENTARIO'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(453997768852575234)
,p_prompt=>'Comentario'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cHeight=>5
,p_field_template=>wwv_flow_imp.id(40186748652263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(429447982573980025)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'inserta_seguimiento'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'INSERT INTO cc_SEGUIMIENTO_prospecto (COD_EMPRESA, COMENTARIO, id_prospecto,',
'                       COD_USUARIO, FECHA, HORA )',
'     VALUES (''1'', :P798_COMENTARIO, :P798_NRO_TICKET, nvl(htmldb_application.g_user,user), SYSDATE,',
'     TO_CHAR(SYSDATE,''hh24:mi:ss'') ) ;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(429446714325980019)
,p_process_success_message=>'Seguimiento Creado'
);
wwv_flow_imp.component_end;
end;
/
