prompt --application/pages/page_00652
begin
--   Manifest
--     PAGE: 00652
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
 p_id=>652
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Crear Visita'
,p_alias=>'CREAR-VISITA2'
,p_page_mode=>'MODAL'
,p_step_title=>'Crear Visita'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'16'
,p_last_updated_by=>'NZARATE'
,p_last_upd_yyyymmddhh24miss=>'20240906152611'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(616441309378802587)
,p_plug_name=>'Map'
,p_region_name=>'mymap'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_item_display_point=>'BELOW'
,p_plug_source_type=>'PLUGIN_COM.JK64.SIMPLE_GOOGLE_MAP'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'-25,-57'
,p_attribute_02=>'8'
,p_attribute_03=>'350'
,p_attribute_04=>'P652_LAT_LONG'
,p_attribute_05=>'16'
,p_attribute_07=>'Y'
,p_attribute_11=>'P652_ADDRESS'
,p_attribute_12=>'Y'
,p_attribute_13=>'13'
,p_attribute_17=>'greedy'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2185857548546967758)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40097820288263654)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(9410053123540910947)
,p_plug_name=>'Event'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>30
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(227197044949076966)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(2185857548546967758)
,p_button_name=>'DELETE2'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--simple:t-Button--danger'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Delete'
,p_button_position=>'CLOSE'
,p_button_execute_validations=>'N'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P652_EVENT_ID is not null and',
':P652_SERIES_ID is not null'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(227197468701076966)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(2185857548546967758)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Cancel'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:&LAST_VIEW.:&SESSION.::&DEBUG.:::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(227197892661076967)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(2185857548546967758)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--simple:t-Button--danger'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Delete'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P652_EVENT_ID is not null and',
':P652_SERIES_ID is null'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(227198224949076967)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(2185857548546967758)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--gapLeft'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_button_condition=>'P652_EVENT_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(227198665961076967)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(2185857548546967758)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--gapLeft'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Guardar Visita'
,p_button_position=>'NEXT'
,p_button_condition=>'P652_EVENT_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(227219273757076978)
,p_branch_name=>'Go To Page 50'
,p_branch_action=>'f?p=&APP_ID.:50:&SESSION.::&DEBUG.:50::'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(227198665961076967)
,p_branch_sequence=>20
,p_save_state_before_branch_yn=>'Y'
,p_branch_comment=>'Created 08-SEP-2010 20:10 by SBKENNED'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(227219690042076979)
,p_branch_action=>'f?p=&APP_ID.:&LAST_VIEW.:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>30
,p_branch_condition_type=>'EXPRESSION'
,p_branch_condition=>':REQUEST not in (''DELETE'',''DELETE2'')'
,p_branch_condition_text=>'PLSQL'
,p_save_state_before_branch_yn=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(227193214335076964)
,p_name=>'P652_INFO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(616441309378802587)
,p_prompt=>'P652_INFO'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(40186463825263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(227193572544076964)
,p_name=>'P652_LAT_LONG'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(616441309378802587)
,p_prompt=>'Posicion'
,p_placeholder=>'lat,long'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186463825263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(227193987928076965)
,p_name=>'P652_ADDRESS'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(616441309378802587)
,p_prompt=>'Direccion'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186463825263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(227194323913076965)
,p_name=>'P652_STREET_NUMBER'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(616441309378802587)
,p_prompt=>'Calle Numero'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(40186463825263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(227194726319076965)
,p_name=>'P652_ROUTE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(616441309378802587)
,p_prompt=>'Ruta'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(40186463825263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(227195103398076965)
,p_name=>'P652_LOCALITY'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(616441309378802587)
,p_prompt=>'Localidad'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(40186463825263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(227195566100076965)
,p_name=>'P652_AREA'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(616441309378802587)
,p_prompt=>'Departamento'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186463825263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(227195966554076965)
,p_name=>'P652_COUNTRY'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(616441309378802587)
,p_prompt=>'Pais'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186463825263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(227196362552076965)
,p_name=>'P652_POSTAL_CODE'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(616441309378802587)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(227199368261076967)
,p_name=>'P652_EVENT_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(9410053123540910947)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(227199760843076968)
,p_name=>'P652_NRO_MOVIMIENTO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(9410053123540910947)
,p_prompt=>'Nro Movimiento'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186463825263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(227200112656076968)
,p_name=>'P652_COD_CLIENTE'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(9410053123540910947)
,p_prompt=>'Cliente'
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
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186463825263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(227200507044076968)
,p_name=>'P652_NOMBRE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(9410053123540910947)
,p_prompt=>'Nombre'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(227200960077076968)
,p_name=>'P652_COD_MOTIVO_VISITA'
,p_is_required=>true
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(9410053123540910947)
,p_prompt=>'Motivo'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select DESCRIPCION as d,',
'       COD_MOTIVO as r',
'  from CA_MOTIVO_VISITA',
' order by 1'))
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(40186748652263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Name of the event.'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(227201821197076969)
,p_name=>'P652_COD_COBRADOR'
,p_is_required=>true
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(9410053123540910947)
,p_item_default=>':P0_COD_COBRADOR'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Cobrador'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select NOMBRE as d,',
'       C.COD_COBRADOR as r ',
'  from CC_COBRADORES C, PERSONAS P',
'WHERE C.COD_EMPRESA=''1''',
'AND C.COD_PERSONA=P.COD_PERSONA',
'and activo=''S''',
' order by 1'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(40186748652263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(227202271818076969)
,p_name=>'P652_EVENT_DATE_D'
,p_is_required=>true
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(9410053123540910947)
,p_item_default=>'SYSDATE'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Fecha'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>15
,p_cMaxlength=>30
,p_field_template=>wwv_flow_imp.id(40186748652263678)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Select the event date.'
,p_encrypt_session_state_yn=>'N'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(227203139172076969)
,p_name=>'P652_EVENT_START_TIME_D'
,p_is_required=>true
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(9410053123540910947)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
' ',
' to_char(sysdate,''HH12'')+1||'':00''|| CASE WHEN TO_NUMBER(to_char(sysdate,''HH24''))<=12 THEN ''AM'' ELSE ''PM'' END',
' ',
'  '))
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Hora'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select to_char(trunc(sysdate)+((i-1)/48),(''HH:MIam'')) d,',
'       to_char(trunc(sysdate)+((i-1)/48),(''HH:MIam'')) r',
'  from wwv_flow_dual100',
' where i < 49',
'order by i'))
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186748652263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Start time of the event.'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(227204011239076970)
,p_name=>'P652_CONTACTO'
,p_is_required=>true
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(9410053123540910947)
,p_prompt=>'Contacto'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>64
,p_cMaxlength=>255
,p_field_template=>wwv_flow_imp.id(40186463825263678)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Person to contact for more information.'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(227204985912076971)
,p_name=>'P652_OBSERVACION'
,p_is_required=>true
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(9410053123540910947)
,p_prompt=>'Observacion'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>64
,p_cMaxlength=>255
,p_cHeight=>5
,p_field_template=>wwv_flow_imp.id(40186463825263678)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Person to contact for more information.'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(227205994864076973)
,p_computation_sequence=>10
,p_computation_item=>'P652_EVENT_DATE_D'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'EXPRESSION'
,p_computation_language=>'PLSQL'
,p_computation=>'to_char(to_date(:P652_EVENT_DATE_D,''&APP_DATE_TIME_FORMAT.''),''&APP_NLS_DATE_FORMAT.'')'
,p_compute_when=>'P652_EVENT_ID'
,p_compute_when_type=>'ITEM_IS_NULL'
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(227206312766076973)
,p_computation_sequence=>10
,p_computation_item=>'P652_EVENT_START_TIME_D'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'QUERY'
,p_computation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select to_char(trunc(to_date(to_char(current_timestamp,''&APP_TIME_FORMAT.''),''&APP_TIME_FORMAT.''),''HH'')+1/24,''&APP_TIME_FORMAT.'') from dual',
''))
,p_compute_when=>'P652_EVENT_ID'
,p_compute_when_type=>'ITEM_IS_NULL'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(227207882772076974)
,p_name=>'save duration'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P652_DURATION'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(227208366850076974)
,p_event_id=>wwv_flow_imp.id(227207882772076974)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P652_DURATION_S'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'$v("P652_DURATION")'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(227208751961076974)
,p_name=>'reset duration after refresh'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P652_DURATION'
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterrefresh'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(227209246218076974)
,p_event_id=>wwv_flow_imp.id(227208751961076974)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P652_DURATION'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'$v("P652_DURATION_S")'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(227209635804076974)
,p_name=>'display recurrence region'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P652_RECUR_FLAG'
,p_condition_element=>'P652_RECUR_FLAG'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'Y'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(227210080186076975)
,p_name=>'show/hide new event type'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P652_TYPE_ID'
,p_condition_element=>'P652_TYPE_ID'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'-1'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(227210513839076975)
,p_event_id=>wwv_flow_imp.id(227210080186076975)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P652_NEW_EVENT_TYPE,P652_NEW_COLOR_PREF_ID,P652_NEW_INTERNAL_YN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(227211076829076975)
,p_event_id=>wwv_flow_imp.id(227210080186076975)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P652_NEW_EVENT_TYPE,P652_NEW_COLOR_PREF_ID,P652_NEW_INTERNAL_YN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(227211447959076975)
,p_name=>'redefault recur end date'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P652_EVENT_DATE_D'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'EXPRESSION'
,p_display_when_cond=>'(:P652_EVENT_ID is null or :P652_RECUR_FLAG is null) and regexp_like(:P652_EVENT_DATE_D,''^[:digit:]+\-[:alpha:]+\-[:digit:]+$'')'
,p_display_when_cond2=>'PLSQL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(227211962607076976)
,p_event_id=>wwv_flow_imp.id(227211447959076975)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P652_RECUR_END_DATE'
,p_attribute_01=>'PLSQL_EXPRESSION'
,p_attribute_04=>'to_date(:P652_EVENT_DATE_D,''&APP_DATE_FORMAT.'')+7'
,p_attribute_07=>'P652_EVENT_DATE_D'
,p_attribute_08=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(227212318685076976)
,p_name=>'Hide time if All Day event'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P652_SUPPRESS_TIME'
,p_condition_element=>'P652_SUPPRESS_TIME'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'Y'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(227212809085076976)
,p_event_id=>wwv_flow_imp.id(227212318685076976)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P652_EVENT_START_TIME_D,P652_DURATION'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(227213372774076976)
,p_event_id=>wwv_flow_imp.id(227212318685076976)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P652_EVENT_START_TIME_D,P652_DURATION'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(227213741203076976)
,p_name=>'Cancel Dialog'
,p_event_sequence=>70
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(227197468701076966)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(227214263598076976)
,p_event_id=>wwv_flow_imp.id(227213741203076976)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(227214609849076977)
,p_name=>'CARGA_INICIAL'
,p_event_sequence=>80
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(227215185795076977)
,p_event_id=>wwv_flow_imp.id(227214609849076977)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'VCOORDENADAS VARCHAR2(100);',
'BEGIN',
'begin',
'select cod_cliente, COORDENADAS, direccion, observacion, contacto',
' into :P652_COD_CLIENTE,VCOORDENADAS,:p652_addresS,:P652_OBSERVACION,:P652_CONTACTO',
'from cc_gestiones_visitas',
'WHERE COD_EMPRESA= ''1''',
'AND NRO_MOVIMIENTO = :P652_NRO_MOVIMIENTO;',
'EXCEPTION',
'WHEN OTHERS THEN',
'NULL;',
'end;',
'VCOORDENADAS:=REPLACE(VCOORDENADAS,''('',NULL);',
'VCOORDENADAS:=REPLACE(VCOORDENADAS,'')'',NULL);',
'IF LENGTH(VCOORDENADAS)<10 THEN',
':P652_LAT_LONG :=''-25.274736360624846,-57.60732650756836'';',
'',
'ELSE ',
':P652_LAT_LONG :=VCOORDENADAS;',
'END IF;',
'END ;',
''))
,p_attribute_02=>'P652_NRO_MOVIMIENTO'
,p_attribute_03=>'P652_COD_CLIENTE,P652_LAT_LONG,P652_ADDRESS,P652_CONTACTO,P652_OBSERVACION'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(227215590006076977)
,p_name=>'map click'
,p_event_sequence=>90
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(616441309378802587)
,p_bind_type=>'bind'
,p_bind_event_type=>'PLUGIN_COM.JK64.SIMPLE_GOOGLE_MAP|REGION TYPE|mapclick'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(227216011007076977)
,p_event_id=>wwv_flow_imp.id(227215590006076977)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$s("P652_INFO", "You clicked at: " + this.data.lat + "," + this.data.lng);'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(227216400757076977)
,p_name=>'address'
,p_event_sequence=>100
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(616441309378802587)
,p_bind_type=>'bind'
,p_bind_event_type=>'PLUGIN_COM.JK64.SIMPLE_GOOGLE_MAP|REGION TYPE|address'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(227216903169076977)
,p_event_id=>wwv_flow_imp.id(227216400757076977)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.debug("address_components found: "+this.data.result.address_components.length);',
'',
'$s("P652_STREET_NUMBER","");',
'$s("P652_ROUTE","");',
'$s("P652_LOCALITY","");',
'$s("P652_AREA","");',
'$s("P652_COUNTRY","");',
'$s("P652_POSTAL_CODE","");',
'',
'var components = this.data.result.address_components;',
'for (i=0; i<components.length; i++) {',
'  switch (components[i].types[0]) {',
'  case "street_number" : $s("P652_STREET_NUMBER", components[i].short_name); break;',
'  case "route" : $s("P652_ROUTE", components[i].short_name); break;',
'  case "locality" : $s("P652_LOCALITY", components[i].short_name); break;',
'  case "administrative_area_level_1" : $s("P652_AREA", components[i].short_name); break;',
'  case "country" : $s("P652_COUNTRY", components[i].short_name); break;',
'  case "postal_code" : $s("P652_POSTAL_CODE", components[i].short_name); break;',
'  }',
'}'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(227217322860076978)
,p_name=>'geolocate'
,p_event_sequence=>110
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(616441309378802587)
,p_bind_type=>'bind'
,p_bind_event_type=>'PLUGIN_COM.JK64.SIMPLE_GOOGLE_MAP|REGION TYPE|geolocate'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(227217881048076978)
,p_event_id=>wwv_flow_imp.id(227217322860076978)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$s("P652_INFO", "Geolocate says you are here: " + this.data.lat + "," + this.data.lng);'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(227218284894076978)
,p_name=>'nombre_cliente'
,p_event_sequence=>120
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P652_COD_CLIENTE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(227218769036076978)
,p_event_id=>wwv_flow_imp.id(227218284894076978)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P652_NOMBRE'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select nombre',
'from cc_clientes c, personas p',
'where c.cod_empresa = ''1''',
'and c.cod_persona = p.cod_persona',
'',
'',
'and c.cod_cliente=:P652_COD_CLIENTE',
'AND ROWNUM=1',
'order by nombre'))
,p_attribute_07=>'P652_COD_CLIENTE'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(227207090599076973)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Load Data'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'for c1 in (',
'   select event_name,',
'          calendar_id,',
'          type_id,',
'          event_date_time,',
'          duration,',
'          event_desc,',
'          contact_person,',
'          case when display_time = ''Y'' then null',
'               when display_time = ''N'' then ''Y''',
'               end suppress_time,',
'          location,',
'          link_name_1, link_url_1, link_name_2, link_url_2, link_name_3, link_url_3,',
'          series_id,',
'          created_on, ',
'          created_by, ',
'          last_updated_on, ',
'          last_updated_by, ',
'          tags,',
'          contact_email',
'     from EBA_ca_events',
'   where event_id = :P652_EVENT_ID )',
'loop',
'   :P652_EVENT_NAME         := c1.event_name;	',
'   :P652_CALENDAR_ID        := c1.calendar_id;',
'   :P652_TYPE_ID	           := c1.type_id;	',
'   :P652_EVENT_DATE_TIME	   := to_char(c1.event_date_time,''&APP_DATE_FORMAT.&APP_TIME_FORMAT.'');		',
'   :P652_EVENT_DATE_D	   := to_char(c1.event_date_time,''&APP_DATE_FORMAT.'');	',
'   :P652_EVENT_START_TIME_D := to_char(c1.event_date_time,''&APP_TIME_FORMAT.'');	',
'   :P652_DURATION           := c1.duration;	',
'   :P652_EVENT_DESC	   := c1.event_desc;	',
'   :P652_CONTACT_PERSON	   := c1.contact_person;',
'   if c1.contact_email is null and ',
'      instr(c1.contact_person,''@'') > 0 and ',
'      instr(c1.contact_person,''.'') > 0 then',
'      :P652_CONTACT_EMAIL      := c1.contact_person;',
'   else',
'      :P652_CONTACT_EMAIL      := c1.contact_email;',
'   end if;',
'   ',
'   :P652_SUPPRESS_TIME      := c1.suppress_time;',
'   :P652_LOCATION           := c1.location;',
'   :P652_LINK_NAME_1        := c1.link_name_1;',
'   :P652_LINK_URL_1         := c1.link_url_1;',
'   :P652_LINK_NAME_2        := c1.link_name_2;',
'   :P652_LINK_URL_2         := c1.link_url_2;',
'   :P652_LINK_NAME_3        := c1.link_name_3;',
'   :P652_LINK_URL_3         := c1.link_url_3;',
'   :P652_TAGS               := c1.tags;',
'   :P652_SERIES_ID          := c1.series_id;	',
'',
'   :P652_CREATED_ON	   := apex_util.get_since(c1.created_on);	',
'   :P652_CREATED_BY	   := c1.created_by;	',
'   :P652_LAST_UPDATED_ON	   := apex_util.get_since(c1.last_updated_on);	',
'   :P652_LAST_UPDATED_BY	   := c1.last_updated_by;	',
'',
'   if c1.series_id is not null then',
'      for c2 in (',
'         select recur_freq,',
'                end_date',
'           from EBA_ca_series',
'         where series_id = c1.series_id )',
'      loop',
'         :P652_RECUR_FLAG	:= ''Y'';',
'         :P652_RECUR_FREQ	:= c2.recur_freq;	',
'         :P652_RECUR_END_DATE	:= to_char(c2.end_date,''&APP_DATE_FORMAT.'');	',
'      end loop;',
'   end if;',
'end loop;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'failed to load data'
,p_process_when=>'P652_EVENT_ID'
,p_process_when_type=>'ITEM_IS_NOT_NULL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(227207402499076973)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Create'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'   vnumero         number; ',
'   VHORA_AGENDADA VARCHAR2(400);',
'   vdireccion varchar2(800);',
'begin',
'BEGIN',
'  Select max( nro_movimiento )',
'    into vnumero',
'    from CC_GESTIONES_VISITAS',
'   where cod_empresa =''1'';',
'   vnumero := nvl( vnumero, 0 ) + 1;',
'  ',
'EXCEPTION',
'  when no_data_found then  ',
'    vnumero := 1;',
'END;',
'vdireccion := :P652_ADDRESS;',
'VHORA_AGENDADA:=  REPLACE(:P652_EVENT_START_TIME_D,'':'',NULL) ;',
'VHORA_AGENDADA:= REPLACE(VHORA_AGENDADA,''AM'',NULL);',
'VHORA_AGENDADA:= REPLACE(VHORA_AGENDADA,''PM'',NULL);',
'begin ',
'insert into cc_gestiones_visitas(',
'COD_EMPRESA,NRO_MOVIMIENTO, FEC_AGENDADA,HORA_AGENDADA,FEC_CONTACTO,HORA_CONTACTO,',
'ES_REAGENDA,COORDENADAS,CONTACTO,OBSERVACION,COD_MOTIVO_VISITA,',
'REALIZADO,DIRECCION,COD_CLIENTE,COD_COBRADOR,COD_USUARIO,UPDATED,',
'FEC_VISITA, HORA_VISITA)',
'',
'values(''1'',vnumero,sysdate, TO_CHAR(sysdate,''HH24:MI''),TRUNC(sysdate), TO_CHAR(sysdate,''HH24:MI''),',
'       ''S'',:P652_LAT_LONG,:P652_CONTACTO,:P652_OBSERVACION,:P652_COD_MOTIVO_VISITA,',
'       ''P'',vdireccion, :P652_COD_CLIENTE, :P652_COD_COBRADOR, :P_COD_USUARIO, SYSTIMESTAMP,',
'     :P652_EVENT_DATE_D,',
'     VHORA_AGENDADA',
'       ',
'      );',
'',
':P652_NRO_MOVIMIENTO:=vnumero;',
'end;',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(227198665961076967)
,p_process_success_message=>'Event created.'
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
 p_id=>wwv_flow_imp.id(227206625143076973)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
);
null;
wwv_flow_imp.component_end;
end;
/
