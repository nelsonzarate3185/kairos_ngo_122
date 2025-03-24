prompt --application/pages/page_00576
begin
--   Manifest
--     PAGE: 00576
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
 p_id=>576
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Encuestas'
,p_alias=>'ENCUESTAS'
,p_step_title=>'Encuestas'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'17'
,p_last_updated_by=>'CHARBA'
,p_last_upd_yyyymmddhh24miss=>'20230728143801'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(186541406688761303)
,p_plug_name=>'A1'
,p_region_name=>'A2'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>1010
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(186541637956761305)
,p_name=>'P576_PREGUNTA_1'
,p_item_sequence=>1020
,p_item_plug_id=>wwv_flow_imp.id(186541406688761303)
,p_prompt=>unistr(' \00BFEn t\00E9rminos Generales, \00BFQu\00E9 tan satisfecho se encuentra con la experiencia vivida durante su visita a nuestro Showrrom?')
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC:Muy satisfecho;1,Satisfecho;2,Neutro;3'
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'1'
,p_attribute_02=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(186541783567761306)
,p_name=>'P576_PREGUNTA_2'
,p_item_sequence=>1030
,p_item_plug_id=>wwv_flow_imp.id(186541406688761303)
,p_prompt=>unistr('\00BFC\00F3mo califica su experiencia durante la espera para ser atendido en cuanto a tiempo, comodidad/ ambientaci\00F3n, amenities (agua, caf\00E9)?')
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT  a.encuesta, a.nro_encuesta',
'FROM CA_TIPO_ENCUESTA_det a',
'WHERE a.cod_empresa = 1',
'AND a.COD_TIPO_ENCUESTA = 16'))
,p_lov_display_null=>'YES'
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'1'
,p_attribute_02=>'NONE'
);
wwv_flow_imp.component_end;
end;
/
