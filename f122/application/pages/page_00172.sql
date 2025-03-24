prompt --application/pages/page_00172
begin
--   Manifest
--     PAGE: 00172
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
 p_id=>172
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'BSSUCDIS Sucursal Distribuidores (Modal)'
,p_alias=>'BSSUCDIS-SUCURSAL-DISTRIBUIDORES-MODAL'
,p_page_mode=>'MODAL'
,p_step_title=>'Sucursal Distribuidores (Modal)'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'02'
,p_last_updated_by=>'OSCARGO'
,p_last_upd_yyyymmddhh24miss=>'20221110102338'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(69250875586658622)
,p_plug_name=>'Sucursal Distribuidores'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT SEQ_ID SEQ_ID,',
'       c001 COD_PERSONA,',
'       c002 COD_SUCURSAL,',
'       c003 NOMBRE,',
'       c004 COD_PAIS,',
'       c005 COD_CIUDAD,',
'       c006 COD_BARRIO,',
'       c007 TELEFONO,',
'       c008 DIRECCION,',
'       c009 TIPO_SUCURSAL,',
'       c010 HORARIO_HABILES,',
'       c011 HORARIO_SABADOS,',
'       c012 COD_EMPRESA,',
'       c013 OBSERVACION,',
'       c014 HORA_HAB_INI,',
'       c015 HORA_HAB_FIN,',
'       c016 HORA_SAB_INI,',
'       c017 HORA_SAB_FIN,',
'       c018 COD_PROVINCIA,',
'       c019 LATITUD,',
'       c020 LONGITUD',
'  from APEX_COLLECTIONS',
' where COLLECTION_NAME = ''COLEC_BS_SUCURSAL_CLIENTE''',
' order by SEQ_ID desc'))
,p_is_editable=>false
,p_plug_source_type=>'NATIVE_FORM'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(35824172379140107)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(69250875586658622)
,p_button_name=>'Actualizar'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_image_alt=>'Actualizar'
,p_button_position=>'CHANGE'
,p_confirm_message=>'Confirmas que quieres actualizar los datos para luego registrarlos.'
,p_button_condition=>'P172_SEQ_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_icon_css_classes=>'fa-window-edit'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(35823758360140106)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(69250875586658622)
,p_button_name=>'BTN_AGREGAR'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_image_alt=>'Agregar'
,p_button_position=>'CREATE'
,p_confirm_message=>'Confirmas que quieres agregar nuevos datos para luego registrarlos'
,p_button_condition=>'P172_SEQ_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_icon_css_classes=>'fa-window-new'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(35824560927140108)
,p_name=>'P172_SEQ_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(69250875586658622)
,p_item_source_plug_id=>wwv_flow_imp.id(69250875586658622)
,p_source=>'SEQ_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(35824927000140108)
,p_name=>'P172_COD_PERSONA'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(69250875586658622)
,p_item_source_plug_id=>wwv_flow_imp.id(69250875586658622)
,p_source=>'COD_PERSONA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(35825329504140108)
,p_name=>'P172_COD_SUCURSAL'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(69250875586658622)
,p_item_source_plug_id=>wwv_flow_imp.id(69250875586658622)
,p_source=>'COD_SUCURSAL'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(35825793136140109)
,p_name=>'P172_NOMBRE'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(69250875586658622)
,p_item_source_plug_id=>wwv_flow_imp.id(69250875586658622)
,p_prompt=>'Nombre'
,p_source=>'NOMBRE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>400
,p_colspan=>9
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(35826157307140109)
,p_name=>'P172_TIPO_SUCURSAL'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(69250875586658622)
,p_item_source_plug_id=>wwv_flow_imp.id(69250875586658622)
,p_prompt=>'TIPO'
,p_source=>'TIPO_SUCURSAL'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>unistr('STATIC:Sucursal;S,Dep\00F3sito;D')
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_cMaxlength=>4000
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(35826557440140109)
,p_name=>'P172_COD_PAIS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(69250875586658622)
,p_item_source_plug_id=>wwv_flow_imp.id(69250875586658622)
,p_prompt=>unistr('Pa\00EDs')
,p_source=>'COD_PAIS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_PAISES'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select descripcion',
'			, cod_pais',
'			    from paises'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_cMaxlength=>4000
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(35826933763140109)
,p_name=>'P172_COD_PROVINCIA'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(69250875586658622)
,p_item_source_plug_id=>wwv_flow_imp.id(69250875586658622)
,p_prompt=>'Provincia'
,p_source=>'COD_PROVINCIA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>'select descripcion, cod_provincia from inv.provincias where cod_pais = :P172_COD_PAIS;'
,p_lov_cascade_parent_items=>'P172_COD_PAIS'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_cMaxlength=>4000
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(35827365577140109)
,p_name=>'P172_COD_CIUDAD'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(69250875586658622)
,p_item_source_plug_id=>wwv_flow_imp.id(69250875586658622)
,p_prompt=>'Ciudad'
,p_source=>'COD_CIUDAD'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>'select descripcion, cod_ciudad from inv.ciudades where cod_pais = :P172_COD_PAIS and cod_provincia = :P172_COD_PROVINCIA;'
,p_lov_cascade_parent_items=>'P172_COD_PAIS,P172_COD_PROVINCIA'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_cMaxlength=>4000
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(35827799581140110)
,p_name=>'P172_COD_BARRIO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(69250875586658622)
,p_item_source_plug_id=>wwv_flow_imp.id(69250875586658622)
,p_prompt=>'Barrio'
,p_source=>'COD_BARRIO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select descripcion, cod_barrio from inv.barrios where cod_pais = :P172_COD_PAIS and cod_provincia = :P172_COD_PROVINCIA',
'    and cod_ciudad = :P172_COD_CIUDAD;'))
,p_lov_cascade_parent_items=>'P172_COD_PAIS,P172_COD_PROVINCIA,P172_COD_CIUDAD'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_cMaxlength=>4000
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(35828141812140111)
,p_name=>'P172_LATITUD'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(69250875586658622)
,p_item_source_plug_id=>wwv_flow_imp.id(69250875586658622)
,p_prompt=>'Latitud'
,p_source=>'LATITUD'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>40
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(35828578606140111)
,p_name=>'P172_LONGITUD'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(69250875586658622)
,p_item_source_plug_id=>wwv_flow_imp.id(69250875586658622)
,p_prompt=>'Longitud'
,p_source=>'LONGITUD'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>40
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(35828973073140111)
,p_name=>'P172_DIRECCION'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(69250875586658622)
,p_item_source_plug_id=>wwv_flow_imp.id(69250875586658622)
,p_prompt=>'Direccion'
,p_source=>'DIRECCION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>200
,p_colspan=>8
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(35829364579140111)
,p_name=>'P172_TELEFONO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(69250875586658622)
,p_item_source_plug_id=>wwv_flow_imp.id(69250875586658622)
,p_prompt=>'Telefono'
,p_source=>'TELEFONO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>60
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(35829714794140112)
,p_name=>'P172_HORA_HAB_INI'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(69250875586658622)
,p_item_source_plug_id=>wwv_flow_imp.id(69250875586658622)
,p_prompt=>unistr('Horario h\00E1bil desde')
,p_source=>'HORA_HAB_INI'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>10
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(35830147755140112)
,p_name=>'P172_HORA_HAB_FIN'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(69250875586658622)
,p_item_source_plug_id=>wwv_flow_imp.id(69250875586658622)
,p_prompt=>unistr('Horario h\00E1bil hasta')
,p_source=>'HORA_HAB_FIN'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>10
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(35830502140140112)
,p_name=>'P172_HORARIO_HABILES'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(69250875586658622)
,p_item_source_plug_id=>wwv_flow_imp.id(69250875586658622)
,p_source=>'HORARIO_HABILES'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(35830956438140112)
,p_name=>'P172_HORARIO_SABADOS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(69250875586658622)
,p_item_source_plug_id=>wwv_flow_imp.id(69250875586658622)
,p_source=>'HORARIO_SABADOS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(35831321937140112)
,p_name=>'P172_COD_EMPRESA'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(69250875586658622)
,p_item_source_plug_id=>wwv_flow_imp.id(69250875586658622)
,p_source=>'COD_EMPRESA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(35831736885140112)
,p_name=>'P172_HORA_SAB_INI'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_imp.id(69250875586658622)
,p_item_source_plug_id=>wwv_flow_imp.id(69250875586658622)
,p_prompt=>unistr('Horario S\00E1bado desde')
,p_source=>'HORA_SAB_INI'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>10
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(35832142006140113)
,p_name=>'P172_HORA_SAB_FIN'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_imp.id(69250875586658622)
,p_item_source_plug_id=>wwv_flow_imp.id(69250875586658622)
,p_prompt=>unistr('Horario S\00E1bado hasta')
,p_source=>'HORA_SAB_FIN'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>10
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(35832544555140113)
,p_name=>'P172_OBSERVACION'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_imp.id(69250875586658622)
,p_item_source_plug_id=>wwv_flow_imp.id(69250875586658622)
,p_prompt=>'Observacion'
,p_source=>'OBSERVACION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>500
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(35840125543140118)
,p_validation_name=>'New'
,p_validation_sequence=>10
,p_validation=>'P172_NOMBRE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Indique el nombre de la sucursal'
,p_associated_item=>wwv_flow_imp.id(35825793136140109)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(35841748733140119)
,p_name=>'ActualizaRegistro'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(35824172379140107)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(35842260234140119)
,p_event_id=>wwv_flow_imp.id(35841748733140119)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    APEX_COLLECTION.update_member(p_collection_name => ''COLEC_BS_SUCURSAL_CLIENTE'',',
'                                  p_seq  => :P172_SEQ_ID,',
'                                  p_c001 => :P172_COD_PERSONA,',
'                                  p_c002 => :P172_COD_SUCURSAL,',
'                                  p_c003 => :P172_NOMBRE,',
'                                  p_c004 => :P172_COD_PAIS,',
'                                  p_c005 => :P172_COD_CIUDAD,',
'                                  p_c006 => :P172_COD_BARRIO,',
'                                  p_c007 => :P172_TELEFONO,',
'                                  p_c008 => :P172_DIRECCION,',
'                                  p_c009 => :P172_TIPO_SUCURSAL,',
'                                  p_c010 => :P172_HORA_HAB_INI||'' a ''||:P172_HORA_HAB_FIN,',
'                                  p_c011 => :P172_HORA_SAB_INI||'' a ''||:P172_HORA_SAB_FIN,',
'                                  p_c012 => :P172_COD_EMPRESA,',
'                                  p_c013 => :P172_OBSERVACION,',
'                                  p_c014 => :P172_HORA_HAB_INI,',
'                                  p_c015 => :P172_HORA_HAB_FIN,',
'                                  p_c016 => :P172_HORA_SAB_INI,',
'                                  p_c017 => :P172_HORA_SAB_FIN,',
'                                  p_c018 => :P172_COD_PROVINCIA,',
'                                  p_c019 => :P172_LATITUD,',
'                                  p_c020 => :P172_LONGITUD,',
'                                  p_c050 => ''U'');',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'     APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_02=>'P172_SEQ_ID,P172_COD_PERSONA,P172_COD_SUCURSAL,P172_NOMBRE,P172_DIRECCION,P172_COD_PAIS,P172_COD_CIUDAD,P172_COD_BARRIO,P172_TELEFONO,P172_TIPO_SUCURSAL,P172_HORA_HAB_INI,P172_HORA_HAB_FIN,P172_HORA_SAB_INI,P172_HORA_SAB_FIN,P172_OBSERVACION,P172_COD'
||'_PROVINCIA,P172_LATITUD,P172_LONGITUD'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(35840803703140118)
,p_name=>'DA_AGREGAR'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(35823758360140106)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(35841368469140119)
,p_event_id=>wwv_flow_imp.id(35840803703140118)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'APEX_COLLECTION.add_member(p_collection_name => ''COLEC_BS_SUCURSAL_CLIENTE'',',
'                                       p_c001 => :P172_COD_PERSONA,',
'                                       p_c002 => :P172_COD_SUCURSAL, ',
'                                       p_c003 => :P172_NOMBRE, ',
'                                       p_c004 => :P172_COD_PAIS,',
'                                       p_c005 => :P172_COD_CIUDAD,',
'                                       p_c006 => :P172_COD_BARRIO,',
'                                       p_c007 => :P172_TELEFONO,',
'                                       p_c008 => :P172_DIRECCION,',
'                                       p_c009 => :P172_TIPO_SUCURSAL,',
'                                       p_c010 => :P172_HORA_HAB_INI||'' a ''||:P172_HORA_HAB_FIN,',
'                                       p_c011 => :P172_HORA_SAB_INI||'' a ''||:P172_HORA_SAB_FIN,',
'                                       p_c012 => :P_COD_EMPRESA,',
'                                       p_c013 => :P172_OBSERVACION,',
'                                       p_c014 => :P172_HORA_HAB_INI,',
'                                       P_c015 => :P172_HORA_HAB_FIN,',
'                                       p_c016 => :P172_HORA_SAB_INI,',
'                                       p_c017 => :P172_HORA_SAB_FIN,',
'                                       p_c018 => :P172_COD_PROVINCIA,',
'                                       p_c019 => :P172_LATITUD,',
'                                       p_c020 => :P172_LONGITUD,',
'                                       p_c050 => ''I'');',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'     APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_02=>'P172_COD_PERSONA,P172_COD_SUCURSAL,P172_NOMBRE,P172_COD_PAIS,P172_COD_PROVINCIA,P172_COD_CIUDAD,P172_COD_BARRIO,P172_DIRECCION,P172_TELEFONO,P172_TIPO_SUCURSAL,P172_HORA_HAB_INI,P172_HORA_HAB_FIN,P172_COD_EMPRESA,P172_HORA_SAB_INI,P172_HORA_SAB_FIN,P'
||'172_OBSERVACION,P172_LATITUD,P172_LONGITUD'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(35839225725140117)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(69250875586658622)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'procesamiento'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(35824172379140107)
,p_process_success_message=>'actualizacion correcta'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(35840475774140118)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Nuevo'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(35839688078140117)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(69250875586658622)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Sucursal Distribuidores (Modal Collection)'
);
wwv_flow_imp.component_end;
end;
/
