prompt --application/pages/page_00019
begin
--   Manifest
--     PAGE: 00019
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
 p_id=>19
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Ingreso de clave pagina 17'
,p_alias=>'INGRESO-DE-CLAVE-PAGINA-17'
,p_page_mode=>'MODAL'
,p_step_title=>'Clave'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'#P19_MENSAJE {',
'    color: red;',
'    text-align: center;',
'    font-weight: 500;',
'    font-size: 18px;',
'    border: none;',
'}',
'',
'',
'#P19_TITULO {',
'    border: none;',
'    font-size: 18px;',
'    font-weight: 600;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'17'
,p_last_updated_by=>'MILAGROFE'
,p_last_upd_yyyymmddhh24miss=>'20220831154503'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(6431214065430907)
,p_plug_name=>'Principal'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(6431601281430911)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(6431214065430907)
,p_button_name=>'BT_ACEPTAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Aceptar'
,p_button_position=>'BOTTOM'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(6431757872430912)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(6431214065430907)
,p_button_name=>'BT_CANCELAR'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Cancelar'
,p_button_position=>'BOTTOM'
,p_button_alignment=>'LEFT'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(6433090194430925)
,p_branch_name=>'IR_PAGINA_17'
,p_branch_action=>'f?p=&APP_ID.:17:&SESSION.::&DEBUG.:17:P17_COD_PERSONA:&P19_COD_PERSONA.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6431357759430908)
,p_name=>'P19_TITULO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(6431214065430907)
,p_source=>'Por favor, ingrese su clave...'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6431497459430909)
,p_name=>'P19_CLAVE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(6431214065430907)
,p_prompt=>'Clave'
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
 p_id=>wwv_flow_imp.id(6431575416430910)
,p_name=>'P19_COD_PERSONA'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(6431214065430907)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6432046829430915)
,p_name=>'P19_MENSAJE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(6431214065430907)
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(6431818442430913)
,p_name=>'DA_ACEPTAR'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(6431601281430911)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(6431904380430914)
,p_event_id=>wwv_flow_imp.id(6431818442430913)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    :P19_MENSAJE := NULL;',
'    select  cod_persona',
'      into  :P19_COD_PERSONA',
'      from  fv_vendedores',
'     where  cod_empresa = :P_COD_EMPRESA',
'       and  cod_persona = rtrim(ltrim(:P19_CLAVE))',
'       and  rownum       = 1;',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'        :P19_MENSAJE := ''Clave incorrecta'';   ',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_02=>'P19_CLAVE'
,p_attribute_03=>'P19_COD_PERSONA,P19_MENSAJE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(6432145858430916)
,p_name=>'DA_MOSTRAR_MSJ'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P19_MENSAJE'
,p_condition_element=>'P19_MENSAJE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(6432217421430917)
,p_event_id=>wwv_flow_imp.id(6432145858430916)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P19_MENSAJE'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(6432300835430918)
,p_event_id=>wwv_flow_imp.id(6432145858430916)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P19_MENSAJE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(6432770932430922)
,p_name=>'DA_VALIDO'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P19_COD_PERSONA'
,p_condition_element=>'P19_COD_PERSONA'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(6432833297430923)
,p_event_id=>wwv_flow_imp.id(6432770932430922)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_imp.component_end;
end;
/
