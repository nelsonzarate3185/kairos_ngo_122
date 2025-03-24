prompt --application/pages/page_00382
begin
--   Manifest
--     PAGE: 00382
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
 p_id=>382
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>unistr('Edici\00F3n_Colecci\00F3n')
,p_alias=>unistr('EDICI\00D3N-COLECCI\00D3N')
,p_page_mode=>'MODAL'
,p_step_title=>unistr('Edici\00F3n_Colecci\00F3n')
,p_autocomplete_on_off=>'OFF'
,p_step_template=>wwv_flow_imp.id(40080790783263649)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'11'
,p_last_updated_by=>'FPONCE'
,p_last_upd_yyyymmddhh24miss=>'20230217125157'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(114041028382351438)
,p_name=>'P382_TRANS'
,p_item_sequence=>10
,p_prompt=>unistr('Tipo Transacci\00F3n')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select subtipo_trans||''-''||descripcion d, subtipo_trans r ',
'from subtipos_trans ',
'where cod_empresa = :p_cod_empresa ',
'and cod_modulo = :P382_COD_MODULO',
'and tipo_trans = :P382_TIPO_TRAN'))
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(114041358560351441)
,p_name=>'P382_COD_MODULO'
,p_item_sequence=>990
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(114041489724351442)
,p_name=>'P382_TIPO_TRAN'
,p_item_sequence=>1000
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp.component_end;
end;
/
