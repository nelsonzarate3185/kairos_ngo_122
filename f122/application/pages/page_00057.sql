prompt --application/pages/page_00057
begin
--   Manifest
--     PAGE: 00057
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
 p_id=>57
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Imagen Gastos'
,p_alias=>'IMAGEN-GASTOS'
,p_page_mode=>'MODAL'
,p_step_title=>'Imagen Gastos'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#P38_IMAGEN {',
'    width: 100%;',
'}'))
,p_step_template=>wwv_flow_imp.id(40080790783263649)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_height=>'600'
,p_dialog_width=>'800'
,p_page_component_map=>'17'
,p_last_updated_by=>'INV'
,p_last_upd_yyyymmddhh24miss=>'20220926123637'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(85086583475563454)
,p_plug_name=>'Imagen'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12671624990468785)
,p_name=>'P57_IMAGEN'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(85086583475563454)
,p_display_as=>'NATIVE_DISPLAY_IMAGE'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'SQL'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT   ARCHIVO_ADJUNTO',
'       FROM CP_ADJUNTO_GASTOS G',
'       WHERE G.COD_EMPRESA=''1''',
'       AND G.ID_CARGA=:P57_REGID',
'     ',
'       '))
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12672092973468785)
,p_name=>'P57_REGID'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(85086583475563454)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp.component_end;
end;
/
