prompt --application/pages/page_00760
begin
--   Manifest
--     PAGE: 00760
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
 p_id=>760
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Ver Comprobante'
,p_alias=>'VER-COMPROBANTE'
,p_page_mode=>'NON_MODAL'
,p_step_title=>'Ver Comprobante'
,p_media_type=>'application/pdf'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_height=>'900'
,p_dialog_width=>'900'
,p_protection_level=>'C'
,p_page_component_map=>'11'
,p_last_updated_by=>'KOVE'
,p_last_upd_yyyymmddhh24miss=>'20240718112621'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(352747795382033403)
,p_name=>'P760_COD_EMPRESA'
,p_item_sequence=>940
,p_prompt=>'Cod Empresa'
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
 p_id=>wwv_flow_imp.id(352747802228033404)
,p_name=>'P760_TIP_COMPROBANTE'
,p_item_sequence=>950
,p_prompt=>'Tip Comprobante'
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
 p_id=>wwv_flow_imp.id(352747981272033405)
,p_name=>'P760_SER_COMPROBANTE'
,p_item_sequence=>960
,p_prompt=>'Ser Comprobante'
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
 p_id=>wwv_flow_imp.id(352748011857033406)
,p_name=>'P760_NRO_COMPROBANTE'
,p_item_sequence=>970
,p_prompt=>'Nro Comprobante'
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
 p_id=>wwv_flow_imp.id(352748166258033407)
,p_name=>'P760_REIMPRESO'
,p_item_sequence=>1000
,p_prompt=>'Reimpreso'
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
 p_id=>wwv_flow_imp.id(352748270450033408)
,p_name=>'P760_COD_CLIENTE'
,p_item_sequence=>990
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
 p_id=>wwv_flow_imp.id(352748380883033409)
,p_name=>'P760_USUARIO'
,p_item_sequence=>1020
,p_prompt=>'Usuario'
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
 p_id=>wwv_flow_imp.id(352748475337033410)
,p_name=>'P760_IMPRIME_CONDICION'
,p_item_sequence=>1010
,p_prompt=>'Imprime Condicion'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(352747585374033401)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Pdf'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE ',
'  v_archivo BLOB;',
'BEGIN ',
'    inv.pr_kv_invoca_serv_comprobante(',
'        P_COD_EMPRESA       => :P760_COD_EMPRESA,',
'        P_TIP_COMPROBANTE   => :P760_TIP_COMPROBANTE,',
'        P_SER_COMPROBANTE   => :P760_SER_COMPROBANTE,',
'        P_NRO_COMPROBANTE   => :P760_NRO_COMPROBANTE,',
'        P_COD_CLIENTE       => :P760_COD_CLIENTE,',
'        P_REIMPRESO         => :P760_REIMPRESO,',
'        P_IMPRIME_CONDICION => :P760_IMPRIME_CONDICION,',
'        P_USUARIO           => :P760_USUARIO,',
'        po_archivo          => v_archivo',
'    );',
'    inv.PR_kv_SHOW_REPORT(v_archivo);',
'END ;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp.component_end;
end;
/
