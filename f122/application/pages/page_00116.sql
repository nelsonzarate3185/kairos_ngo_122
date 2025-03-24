prompt --application/pages/page_00116
begin
--   Manifest
--     PAGE: 00116
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
 p_id=>116
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'BSDATAUD'
,p_alias=>'BSDATAUD'
,p_page_mode=>'MODAL'
,p_step_title=>'BSDATAUD'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'17'
,p_last_updated_by=>'JUANASIS'
,p_last_upd_yyyymmddhh24miss=>'20221028171909'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(25540988276706528)
,p_plug_name=>'VARIABLES'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>20
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(25541143294706530)
,p_plug_name=>'Parametros'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(25541869539706537)
,p_plug_name=>unistr('Control de modificaci\00F3n de datos')
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(25539185676706510)
,p_plug_name=>unistr('Datos de creaci\00F3n')
,p_parent_plug_id=>wwv_flow_imp.id(25541869539706537)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(25539831256706517)
,p_plug_name=>unistr('Datos de modificaci\00F3n')
,p_parent_plug_id=>wwv_flow_imp.id(25541869539706537)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>40
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(25848556820807099)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(25541869539706537)
,p_button_name=>'P116_BOTON_VOLVER'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'VOLVER'
,p_button_position=>'CREATE'
,p_button_redirect_url=>'f?p=&APP_ID.:102:&SESSION.::&DEBUG.:::'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(25539245528706511)
,p_name=>'P116_COD_USUARIO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(25539185676706510)
,p_prompt=>'Usuario'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(25539393189706512)
,p_name=>'P116_NOM_USUARIO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(25539185676706510)
,p_prompt=>'Nombre usuario'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(25539485677706513)
,p_name=>'P116_FEC_ALTA'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(25539185676706510)
,p_prompt=>'Fecha'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(25539943761706518)
,p_name=>'P116_COD_USUARIO_MOD'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(25539831256706517)
,p_prompt=>'Usuario'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(25540034676706519)
,p_name=>'P116_FEC_ULT_MODIFICACION'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(25539831256706517)
,p_prompt=>'Fecha'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(25540149281706520)
,p_name=>'P116_NOM_USUARIO_MOD'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(25539831256706517)
,p_prompt=>'Nombre Usuario'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(25540495634706523)
,p_name=>'P116_COD_EMPRESA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(25540988276706528)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(25540575451706524)
,p_name=>'P116_COD_SUCURSAL'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(25540988276706528)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(25540787180706526)
,p_name=>'P116_NOM_SUCURSAL'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(25540988276706528)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(25540831177706527)
,p_name=>'P116_COD_MODULO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(25540988276706528)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(25541088686706529)
,p_name=>'P116_NOM_EMPRESA'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(25540988276706528)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(25541208642706531)
,p_name=>'P116_P_COD_USUARIO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(25541143294706530)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(25541317059706532)
,p_name=>'P116_P_FEC_ALTA'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(25541143294706530)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(25541467659706533)
,p_name=>'P116_P_COD_USUARIO_MOD'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(25541143294706530)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(25541546276706534)
,p_name=>'P116_P_FEC_ULT_MODIFICACION'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(25541143294706530)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(25541628533706535)
,p_name=>'P116_P_NOM_FORMA'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(25541143294706530)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(25541956060706538)
,p_name=>'P116_NOM_FORMA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(25541869539706537)
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(25540398587706522)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_INIT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  --Almacena los valores en variables locales',
'  :P116_COD_USUARIO  := nvl( :P_COD_USUARIO ,:APP_USER);',
'  :P116_COD_EMPRESA := nvl(:P_COD_EMPRESA,''1'' );',
'  :P116_NOM_EMPRESA  := :P_NOM_EMPRESA;',
'  :P116_COD_SUCURSAL := nvl(:P_COD_SUCURSAL,''01'' );',
'  :P116_NOM_SUCURSAL := :P_NOM_SUCURSAL;',
'  :P116_COD_MODULO :=  :P_COD_MODULO;',
'',
' ',
'--setear parametros',
':P116_COD_USUARIO := :P116_P_COD_USUARIO;',
':P116_FEC_ALTA := :P116_P_FEC_ALTA;',
':P116_COD_USUARIO_MOD := :P116_P_COD_USUARIO_MOD;',
':P116_FEC_ULT_MODIFICACION  := :P116_P_FEC_ULT_MODIFICACION;',
':P116_NOM_FORMA := :P116_P_NOM_FORMA;',
'',
'--OBTENER VALORES DE LA BD',
'BEGIN',
'  select ltrim( rtrim( nvl( p.nombre, p.nomb_fantasia ) ) )',
'    into :P116_NOM_USUARIO',
'    from usuarios u, personas p',
'   where u.cod_empresa = :P116_COD_EMPRESA',
'     and u.cod_usuario = :P116_COD_USUARIO',
'     and u.cod_persona = p.cod_persona;',
'EXCEPTION',
'  when others then',
'    :P116_NOM_USUARIO := NULL;',
'END;',
'BEGIN',
'  select ltrim( rtrim( nvl( p.nombre, p.nomb_fantasia ) ) )',
'    into :P116_NOM_USUARIO_MOD',
'    from usuarios u, personas p',
'   where u.cod_empresa = :P116_COD_EMPRESA',
'     and u.cod_usuario = :P116_COD_USUARIO_MOD',
'     and u.cod_persona = p.cod_persona;',
'EXCEPTION',
'  when others then',
'    :P116_NOM_USUARIO_MOD := NULL;',
'END;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp.component_end;
end;
/
