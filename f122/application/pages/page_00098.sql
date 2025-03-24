prompt --application/pages/page_00098
begin
--   Manifest
--     PAGE: 00098
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
 p_id=>98
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'CASOS'
,p_alias=>'CASOS'
,p_page_mode=>'MODAL'
,p_step_title=>'CASOS'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'17'
,p_last_updated_by=>'JUANSA'
,p_last_upd_yyyymmddhh24miss=>'20230203102021'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(24976455879669726)
,p_plug_name=>'casos'
,p_region_template_options=>'t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(24976614122669727)
,p_plug_name=>'contactos'
,p_region_template_options=>'t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(24977401761669735)
,p_plug_name=>'PARAMETROS'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>10
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(17083326701247826)
,p_name=>'P98_CLIENTE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(24976455879669726)
,p_prompt=>'Cliente'
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
 p_id=>wwv_flow_imp.id(17083706499247827)
,p_name=>'P98_ESTADO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(24976455879669726)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(17084161263247827)
,p_name=>'P98_CAMPANIA'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(24976455879669726)
,p_prompt=>unistr('Campa\00F1a')
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select  descripcion,cod_campania',
'from crm_campania',
'where activo=''S''',
'and  (:P98_P_CAMPANIA is null or cod_campania=:P98_P_CAMPANIA)',
'order by 1 asc'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(17084567211247827)
,p_name=>'P98_MOTIVO'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(24976455879669726)
,p_prompt=>'Motivo'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct m.descripcion, m.cod_motivo ',
'from crm_motivo m,',
'     crm_cam_can_mot d',
'where m.activo=''S''',
'and m.cod_motivo=d.cod_motivo',
'and ( :P98_CAMPANIA is null  or d.cod_campania = :P98_CAMPANIA)',
'and ( :P98_P_MOTIVO is null or d.cod_motivo = :P98_P_MOTIVO  )',
'',
'order by 1 asc'))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P98_CAMPANIA'
,p_ajax_items_to_submit=>'P98_CAMPANIA'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(17084914839247828)
,p_name=>'P98_OBSERVACION'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(24976455879669726)
,p_prompt=>'Observacion'
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
 p_id=>wwv_flow_imp.id(17085307949247828)
,p_name=>'P98_PROXIMO_CONTACTO'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(24976455879669726)
,p_item_default=>'sysdate'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Proximo Contacto'
,p_format_mask=>'DD/MM/YYYY'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(17086042204247828)
,p_name=>'P98_CANAL'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(24976614122669727)
,p_prompt=>'Canal'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct m.descripcion, m.cod_canal',
'from crm_canal m ',
'where m.activo=''S''',
'/*cod_canal=d.cod_canal',
'and ( :P98_CAMPANIA is null  or d.cod_campania = :P98_CAMPANIA)',
'and ( :P98_MOTIVO is null  or d.cod_MOTIVO = :P98_MOTIVO)',
'*/'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(17086440712247829)
,p_name=>'P98_COMENTARIO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(24976614122669727)
,p_prompt=>'Comentario'
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
 p_id=>wwv_flow_imp.id(17087156971247829)
,p_name=>'P98_ID_CASO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(24977401761669735)
,p_prompt=>'New'
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
 p_id=>wwv_flow_imp.id(17087541413247829)
,p_name=>'P98_P_CAMPANIA'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(24977401761669735)
,p_prompt=>'New'
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
 p_id=>wwv_flow_imp.id(17087952706247829)
,p_name=>'P98_P_MOTIVO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(24977401761669735)
,p_prompt=>'New'
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
 p_id=>wwv_flow_imp.id(17088315222247830)
,p_name=>'P98_P_CLIENTE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(24977401761669735)
,p_prompt=>'New'
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
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(17089125584247830)
,p_name=>'trae_datos'
,p_event_sequence=>50
,p_condition_element=>'P98_ID_CASO'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(17089693335247831)
,p_event_id=>wwv_flow_imp.id(17089125584247830)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'   select   cod_campania, cod_motivo, cod_cliente, cod_estado, observacion, proximo_contacto ',
'   into :P98_P_campania, :P98_P_motivo, :P98_P_cliente, :P98_estado, :P98_observacion, :P98_proximo_contacto ',
'   from inv.crm_casos',
'  where id_caso = :P98_ID_CASO',
'    and cod_empresa = ''1'';',
'exception ',
'    when others then',
'    :P98_P_campania:=null;',
'    :P98_P_motivo:=null;',
'    :P98_P_cliente:=null;',
'    :P98_estado:=null;',
'    :P98_observacion:=null;',
'    :P98_proximo_contacto :=null;',
'',
'end;'))
,p_attribute_02=>'P98_ID_CASO'
,p_attribute_03=>'P98_P_CLIENTE,P98_ESTADO,P98_P_CAMPANIA,P98_P_MOTIVO,P98_PROXIMO_CONTACTO,P98_OBSERVACION'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(17090172719247831)
,p_event_id=>wwv_flow_imp.id(17089125584247830)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(24976614122669727)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(17088777449247830)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'LimpiarPagina'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp.component_end;
end;
/
