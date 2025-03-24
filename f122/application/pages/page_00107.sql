prompt --application/pages/page_00107
begin
--   Manifest
--     PAGE: 00107
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
 p_id=>107
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>unistr('Edici\00F3n Seguridad Granular')
,p_alias=>unistr('EDICI\00D3N-SEGURIDAD-GRANULAR')
,p_page_mode=>'MODAL'
,p_step_title=>unistr('Edici\00F3n Seguridad Granular')
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'16'
,p_last_updated_by=>'DFINO'
,p_last_upd_yyyymmddhh24miss=>'20221011110352'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(18329963593230306)
,p_plug_name=>'Contenedor'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(18332420321230331)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(18329963593230306)
,p_button_name=>'BTGUARDAR'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Guardar'
,p_button_position=>'BELOW_BOX'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18330016557230307)
,p_name=>'P107_BOTO0100_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(18329963593230306)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18332241956230329)
,p_name=>'P107_DM_BOTO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(18329963593230306)
,p_prompt=>unistr('Acciones de Bot\00F3n')
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DM$BOTO',
'  FROM ITG$BOTO0110',
' WHERE BOTO0100$ID = :P107_BOTO0100_ID'))
,p_source_type=>'QUERY_COLON'
,p_display_as=>'NATIVE_SHUTTLE'
,p_named_lov=>'DM_BOTO'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT RV_LOW_VALUE,',
'       RV_MEANING',
'  FROM CG_REF_CODES',
' WHERE RV_DOMAIN = ''DM$BOTO''     '))
,p_cHeight=>5
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'ALL'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18332343337230330)
,p_name=>'P107_DM_ACTI'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(18329963593230306)
,p_prompt=>'Activo'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'DM_SINO'
,p_lov=>'.'||wwv_flow_imp.id(40303239801928454)||'.'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(18332537511230332)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_INIT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    SELECT DM$ACTI',
'      INTO :P107_DM_ACTI',
'      FROM ITG$BOTO0100',
'     WHERE ID = :P107_BOTO0100_ID;',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'    :P107_DM_ACTI := NULL;',
'END;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(18332605028230333)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_SAVE'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    SEGURIDAD_GRANULAR.PR_SAVE_DM_BOTO(pboto0100_id => :P107_BOTO0100_ID,',
'                                       pdm_boto     => :P107_DM_BOTO);',
'',
'    SEGURIDAD_GRANULAR.DM_ACTI_BOTO0100(pboto0100_id => :P107_BOTO0100_ID,',
'                                        pdm_acti     => :P107_DM_ACTI);',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''PAG. 107 ''||SQLERRM);',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(18332740106230334)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Dialog_Close'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp.component_end;
end;
/
