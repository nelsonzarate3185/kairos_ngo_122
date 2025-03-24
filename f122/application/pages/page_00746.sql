prompt --application/pages/page_00746
begin
--   Manifest
--     PAGE: 00746
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
 p_id=>746
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'consulta_spee'
,p_alias=>'CONSULTA-SPEE'
,p_step_title=>'consulta_spee'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#VISOR{    ',
'  background-color: #00457F  !important;',
'} ',
'',
'#ngo_web,#home,#catalogo,#nosotros {',
'',
'    color: rgb(249, 249, 249);',
'   ',
'',
'}',
'',
'',
'#P746_TITULO_DISPLAY{',
'    font-size: 30px !important;',
'    font-weight: bold;',
'    color: rgb(0, 0, 0);',
'    /*background: #00457F;*/',
'    /*background-color: #0093E9;',
'background-image: linear-gradient(160deg, #0093E9 0%, #80D0C7 100%);*/',
' border: aliceblue;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'02'
,p_last_updated_by=>'CHARBA'
,p_last_upd_yyyymmddhh24miss=>'20240508151822'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(414711050130018571)
,p_plug_name=>'Centro de ayuda'
,p_region_name=>'VISOR'
,p_region_css_classes=>'u-color-1-background'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>10
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'',
''))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(575749848741178684)
,p_plug_name=>'Centro de ayuda'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>30
,p_query_type=>'TABLE'
,p_query_table=>'SPEE_TITULO'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(575754368537178686)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40097820288263654)
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(295295084061970695)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(414711050130018571)
,p_button_name=>'Home'
,p_button_static_id=>'home'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--iconLeft:t-Button--hoverIconPush'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_image_alt=>'Home'
,p_button_redirect_url=>'f?p=&APP_ID.:736:&SESSION.::&DEBUG.:::'
,p_grid_new_row=>'Y'
,p_grid_column=>9
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(295294681575970695)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(414711050130018571)
,p_button_name=>'NGO_web'
,p_button_static_id=>'ngo_web'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--iconLeft:t-Button--hoverIconPush'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_image_alt=>'Ngo Web'
,p_button_redirect_url=>'https://ngosaeca.com.py/'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(295293844909970694)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(414711050130018571)
,p_button_name=>'Catalogo'
,p_button_static_id=>'catalogo'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--iconLeft:t-Button--hoverIconPush'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_image_alt=>'Catalogo'
,p_button_redirect_url=>'f?p=&APP_ID.:126:&SESSION.::&DEBUG.:126::'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(295294218339970695)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(414711050130018571)
,p_button_name=>'Nosotros'
,p_button_static_id=>'nosotros'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--iconLeft:t-Button--hoverIconPush'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_image_alt=>'Nosotros'
,p_button_redirect_url=>'https://ngosaeca.com.py/nosotros'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(295301875520970700)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(575754368537178686)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(286835099165879918)
,p_name=>'P746_VER_DOCUMENTOS_IMAGEN'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(575749848741178684)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(295296643806970696)
,p_name=>'P746_NRO_INTERNO'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(575749848741178684)
,p_item_source_plug_id=>wwv_flow_imp.id(575749848741178684)
,p_source=>'NRO_INTERNO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(295297031068970696)
,p_name=>'P746_COD_EMPRESA'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(575749848741178684)
,p_item_source_plug_id=>wwv_flow_imp.id(575749848741178684)
,p_item_default=>'1'
,p_source=>'COD_EMPRESA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(295297468843970697)
,p_name=>'P746_TITULO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(575749848741178684)
,p_item_source_plug_id=>wwv_flow_imp.id(575749848741178684)
,p_source=>'TITULO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>120
,p_cHeight=>1
,p_tag_attributes=>'style="text-align:center" font-weight:bold; font-size: 50px;"'
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(295297829583970697)
,p_name=>'P746_DETALLES'
,p_source_data_type=>'CLOB'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(575749848741178684)
,p_item_source_plug_id=>wwv_flow_imp.id(575749848741178684)
,p_source=>'DETALLES'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_RICH_TEXT_EDITOR'
,p_cSize=>60
,p_cMaxlength=>100000
,p_cHeight=>10
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_02=>'Intermediate'
,p_attribute_07=>'180'
,p_attribute_09=>'HTML'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(295298264337970697)
,p_name=>'P746_URL'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(575749848741178684)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(295307568174970709)
,p_name=>'P746_TIPO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(575749848741178684)
,p_item_source_plug_id=>wwv_flow_imp.id(575749848741178684)
,p_prompt=>'Tipo'
,p_source=>'TIPO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(295309347369970713)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(295301875520970700)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(295309872258970714)
,p_event_id=>wwv_flow_imp.id(295309347369970713)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(295307978326970712)
,p_name=>'DA_VER_IMAGEN'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P746_VER_DOCUMENTOS_IMAGEN'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(295308491598970713)
,p_event_id=>wwv_flow_imp.id(295307978326970712)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'	SELECT APEX_PAGE.GET_URL (  p_page   => 741,',
'				    p_items  => ''P741_ROW_ID_DOCU'',',
'                    p_values => (''''||:P746_VER_DOCUMENTOS_IMAGEN||'''')) f_url_1',
'		INTO :P746_URL',
'		FROM DUAL;       ',
'	 ',
'    APEX_DEBUG.ERROR(:P746_URL);',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(''Error en DA_VER_IMAGEN - 01.'' || SQLERRM);',
'END;',
'',
''))
,p_attribute_02=>'P746_VER_DOCUMENTOS_IMAGEN'
,p_attribute_03=>'P746_URL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(295308996381970713)
,p_event_id=>wwv_flow_imp.id(295307978326970712)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var url = apex.item("P746_URL").getValue();',
'',
'apex.navigation.redirect(url);'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(295311138903970715)
,p_name=>'DA_REFRESCA'
,p_event_sequence=>50
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(575749848741178684)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosecanceldialog'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(295301142094970700)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(575749848741178684)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Crear_titulo'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(295300746540970699)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(575749848741178684)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Crear_titulo'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp.component_end;
end;
/
