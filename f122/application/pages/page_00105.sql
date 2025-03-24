prompt --application/pages/page_00105
begin
--   Manifest
--     PAGE: 00105
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
 p_id=>105
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Alta Seguridad Granular'
,p_alias=>'ALTA-SEGURIDAD-GRANULAR1'
,p_page_mode=>'MODAL'
,p_step_title=>'Alta Seguridad Granular'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'16'
,p_last_updated_by=>'CHARBA'
,p_last_upd_yyyymmddhh24miss=>'20230811073525'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(18331193135230318)
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
 p_id=>wwv_flow_imp.id(18331539068230322)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(18331193135230318)
,p_button_name=>'BTCREAR'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Crear'
,p_button_position=>'BELOW_BOX'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18331248548230319)
,p_name=>'P105_PAGE_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(18331193135230318)
,p_prompt=>unistr('P\00E1gina')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'ASP$MODU0300'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT NOMB || '' - ''|| PAGE_ID NOMB ,',
'       PAGE_ID, nomb nombre',
'  FROM INV.ASP$MODU0300',
' WHERE PAGE_ID IS NOT NULL',
'   AND DM$ACTI = 1',
'   AND APLI0100$ID = :P_APLI0100_ID'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'Y'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18331376554230320)
,p_name=>'P105_ROLE0100_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(18331193135230318)
,p_prompt=>'Rol'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'ASP$ROLE0100.NOMB'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ID V,',
'       nvl(descripcion_rol,nomb)||''(''||nomb||'')'' L',
'FROM ASP$ROLE0100',
'ORDER BY nomb     '))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18331453275230321)
,p_name=>'P105_DM_ACTI'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(18331193135230318)
,p_prompt=>'Activo'
,p_source=>'1'
,p_source_type=>'STATIC'
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
 p_id=>wwv_flow_imp.id(18331636001230323)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_SAVE'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    SEGURIDAD_GRANULAR.PR_SAVE_SEG_GRANU(pcod_empresa => :P_COD_EMPRESA,',
'                                         ppage_id     => :P105_PAGE_ID,',
'                                         prole_id     => :P105_ROLE0100_ID,',
'                                         papli0100_id => :P_APLI0100_ID,',
'                                         pdm_acti     => 1);',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(18331775941230324)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Dialog_Close'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp.component_end;
end;
/
