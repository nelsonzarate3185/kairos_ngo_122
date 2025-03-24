prompt --application/pages/page_00803
begin
--   Manifest
--     PAGE: 00803
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
 p_id=>803
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'ABM Finalizar Casos'
,p_alias=>'ABM-FINALIZAR-CASOS'
,p_page_mode=>'MODAL'
,p_step_title=>'ABM Finalizar Casos'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'02'
,p_last_updated_by=>'VGAMARRA'
,p_last_upd_yyyymmddhh24miss=>'20250108142503'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(861875908117211143)
,p_plug_name=>'abm_casos_modal'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'CRM_DERIVACIONES_CONTACTO'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(861890877140211158)
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
 p_id=>wwv_flow_imp.id(255219848399587309)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(861890877140211158)
,p_button_name=>'REABRIR'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Reabrir'
,p_button_position=>'CHANGE'
,p_button_condition=>'P803_ID_DERIVACION'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(433012380822659598)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(861890877140211158)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Cancelar'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(433012792342659600)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(861890877140211158)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Borrar'
,p_button_position=>'DELETE'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P803_ID_CASO'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_security_scheme=>wwv_flow_imp.id(197610112326084282)
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(433013122912659600)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(861890877140211158)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Actualizar'
,p_button_position=>'NEXT'
,p_button_condition=>'P803_ESTADO_CASOS'
,p_button_condition2=>'D'
,p_button_condition_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(433013536319659600)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(861890877140211158)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'NEXT'
,p_button_condition=>'P803_ID_CASO'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(255220458473587315)
,p_name=>'P803_IND_URGENTE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(861875908117211143)
,p_item_source_plug_id=>wwv_flow_imp.id(861875908117211143)
,p_prompt=>'URGENTE'
,p_source=>'IND_URGENTE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(432333504650966541)
,p_name=>'P803_OPERADOR_FIN'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(861875908117211143)
,p_item_source_plug_id=>wwv_flow_imp.id(861875908117211143)
,p_source=>'OPERADOR_FIN'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(432333683816966542)
,p_name=>'P803_FECHA_FIN'
,p_source_data_type=>'DATE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(861875908117211143)
,p_item_source_plug_id=>wwv_flow_imp.id(861875908117211143)
,p_prompt=>'Fecha Fin'
,p_format_mask=>'DD/MM/YYYY HH24:MI:SS'
,p_source=>'FECHA_FIN'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(432333790916966543)
,p_name=>'P803_OBS_FIN'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(861875908117211143)
,p_item_source_plug_id=>wwv_flow_imp.id(861875908117211143)
,p_prompt=>'Obs Fin'
,p_source=>'OBS_FIN'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cMaxlength=>150
,p_cHeight=>5
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(432993718713659586)
,p_name=>'P803_ID_CASO'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(861875908117211143)
,p_item_source_plug_id=>wwv_flow_imp.id(861875908117211143)
,p_source=>'ID_CASO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(432994199328659590)
,p_name=>'P803_COD_EMPRESA'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(861875908117211143)
,p_item_source_plug_id=>wwv_flow_imp.id(861875908117211143)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Cod Empresa'
,p_source=>'COD_EMPRESA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(40186937130263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(432994537890659591)
,p_name=>'P803_COD_CLIENTE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(861875908117211143)
,p_item_source_plug_id=>wwv_flow_imp.id(861875908117211143)
,p_prompt=>'Cliente'
,p_source=>'COD_CLIENTE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_CLIENTES_CASOS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select CLIENTE,',
'       COD_CLIENTE,',
'       NCI,',
'       RUC,',
'       TELEFONO       ',
' from INV.VW_CLIENTES_CASOS',
'     ORDER BY 1 ASC'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_cMaxlength=>15
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
 p_id=>wwv_flow_imp.id(432994901564659591)
,p_name=>'P803_ESTADO_CASOS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(861875908117211143)
,p_item_source_plug_id=>wwv_flow_imp.id(861875908117211143)
,p_prompt=>'Estado Casos'
,p_source=>'ESTADO_CASOS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_CX_ESTADOS'
,p_lov=>'.'||wwv_flow_imp.id(982026788644398085)||'.'
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_cMaxlength=>10
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
 p_id=>wwv_flow_imp.id(432995396875659591)
,p_name=>'P803_FECHA_REC'
,p_source_data_type=>'DATE'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(861875908117211143)
,p_item_source_plug_id=>wwv_flow_imp.id(861875908117211143)
,p_format_mask=>'DD/MM/YYYY HH24:MI:SS'
,p_source=>'FECHA_REC'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(432995746849659591)
,p_name=>'P803_OBS_REC'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(861875908117211143)
,p_item_source_plug_id=>wwv_flow_imp.id(861875908117211143)
,p_prompt=>'Analisis  de la Gestion'
,p_source=>'OBS_REC'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(432996116995659591)
,p_name=>'P803_FECHA_DERIV'
,p_source_data_type=>'DATE'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(861875908117211143)
,p_item_source_plug_id=>wwv_flow_imp.id(861875908117211143)
,p_format_mask=>'DD/MM/YYYY HH24:MI:SS'
,p_source=>'FECHA_DERIV'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(432996554965659591)
,p_name=>'P803_OPERADOR_REC'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(861875908117211143)
,p_item_source_plug_id=>wwv_flow_imp.id(861875908117211143)
,p_source=>'OPERADOR_REC'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(432996934328659592)
,p_name=>'P803_OBS_DERIVADA'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(861875908117211143)
,p_item_source_plug_id=>wwv_flow_imp.id(861875908117211143)
,p_source=>'OBS_DERIVADA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(432997339893659592)
,p_name=>'P803_CANAL'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(861875908117211143)
,p_item_source_plug_id=>wwv_flow_imp.id(861875908117211143)
,p_source=>'CANAL'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(432997791598659592)
,p_name=>'P803_VOZ_CLIENTE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(861875908117211143)
,p_item_source_plug_id=>wwv_flow_imp.id(861875908117211143)
,p_source=>'VOZ_CLIENTE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(432998179851659592)
,p_name=>'P803_ID_CONTACTO'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(861875908117211143)
,p_item_source_plug_id=>wwv_flow_imp.id(861875908117211143)
,p_source=>'ID_CONTACTO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(432998570249659592)
,p_name=>'P803_ID_DERIVACION'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(861875908117211143)
,p_item_source_plug_id=>wwv_flow_imp.id(861875908117211143)
,p_source=>'ID_DERIVACION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(432998918665659592)
,p_name=>'P803_ID_DERIVACION_PADRE'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(861875908117211143)
,p_item_source_plug_id=>wwv_flow_imp.id(861875908117211143)
,p_source=>'ID_DERIVACION_PADRE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(432999355505659593)
,p_name=>'P803_AREA_DERIVADA'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(861875908117211143)
,p_item_source_plug_id=>wwv_flow_imp.id(861875908117211143)
,p_source=>'AREA_DERIVADA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(432999793651659593)
,p_name=>'P803_OPER_DERIV'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_imp.id(861875908117211143)
,p_item_source_plug_id=>wwv_flow_imp.id(861875908117211143)
,p_source=>'OPER_DERIV'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(433000130857659593)
,p_name=>'P803_ESTADO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_imp.id(861875908117211143)
,p_item_source_plug_id=>wwv_flow_imp.id(861875908117211143)
,p_source=>'ESTADO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(433000594028659593)
,p_name=>'P803_SUCURSAL_DERIVADA'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_imp.id(861875908117211143)
,p_item_source_plug_id=>wwv_flow_imp.id(861875908117211143)
,p_source=>'SUCURSAL_DERIVADA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(433000996170659593)
,p_name=>'P803_SUCURSA_ORIGEN'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_imp.id(861875908117211143)
,p_item_source_plug_id=>wwv_flow_imp.id(861875908117211143)
,p_source=>'SUCURSA_ORIGEN'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(433001340732659593)
,p_name=>'P803_AREA_ORIGEN'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_imp.id(861875908117211143)
,p_item_source_plug_id=>wwv_flow_imp.id(861875908117211143)
,p_source=>'AREA_ORIGEN'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(433001765951659594)
,p_name=>'P803_DPTO_DERIVADO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_imp.id(861875908117211143)
,p_item_source_plug_id=>wwv_flow_imp.id(861875908117211143)
,p_source=>'DPTO_DERIVADO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(433002197866659594)
,p_name=>'P803_DPTO_ORIGEN'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>270
,p_item_plug_id=>wwv_flow_imp.id(861875908117211143)
,p_item_source_plug_id=>wwv_flow_imp.id(861875908117211143)
,p_source=>'DPTO_ORIGEN'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(433002518579659594)
,p_name=>'P803_ID_TICKET'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>280
,p_item_plug_id=>wwv_flow_imp.id(861875908117211143)
,p_item_source_plug_id=>wwv_flow_imp.id(861875908117211143)
,p_source=>'ID_TICKET'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(433002940480659594)
,p_name=>'P803_EMPLEADO_DERIVADO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>290
,p_item_plug_id=>wwv_flow_imp.id(861875908117211143)
,p_item_source_plug_id=>wwv_flow_imp.id(861875908117211143)
,p_source=>'EMPLEADO_DERIVADO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(433003336667659594)
,p_name=>'P803_TIPO_REFERENCIA'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>300
,p_item_plug_id=>wwv_flow_imp.id(861875908117211143)
,p_item_source_plug_id=>wwv_flow_imp.id(861875908117211143)
,p_source=>'TIPO_REFERENCIA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(433015231189659603)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(433012380822659598)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(433015798139659605)
,p_event_id=>wwv_flow_imp.id(433015231189659603)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(433014382824659603)
,p_name=>'carga_valores'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P803_OBS_FIN,P803_ESTADO_CASOS'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(433014860080659603)
,p_event_id=>wwv_flow_imp.id(433014382824659603)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P803_ESTADO_CASOS = ''F'' then',
'begin',
'select to_char(sysdate,''DD/MM/YYYY HH24:MI:SS'') ,coalesce(sys_context(''APEX$SESSION'', ''APP_USER''), USER)',
' into :P803_FECHA_FIN, :P803_OPERADOR_FIN',
'from dual ;',
'exception',
' when others then',
'   null;',
'end;',
'end if;',
'',
''))
,p_attribute_03=>'P803_FECHA_FIN,P803_OPERADOR_FIN'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(251289410381714721)
,p_name=>'validacion'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P803_ESTADO_CASOS'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(251289533286714722)
,p_event_id=>wwv_flow_imp.id(251289410381714721)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P803_ESTADO_CASOS = ''F'' then',
':P803_FECHA_FIN := to_char(sysdate,''DD/MM/YYYY HH24:MI:SS'');',
':P803_OPERADOR_FIN := coalesce(sys_context(''APEX$SESSION'', ''APP_USER''), USER);',
'end if;'))
,p_attribute_02=>'P803_ESTADO_CASOS'
,p_attribute_03=>'P803_FECHA_FIN,P803_OPERADOR_FIN,P803_OBS_FIN'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(255222361543587334)
,p_name=>'validacion_1'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P803_OBSSERVACION'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(255222409743587335)
,p_event_id=>wwv_flow_imp.id(255222361543587334)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
':P803_OBS_FIN := :P803_obsservacion;',
'',
''))
,p_attribute_02=>'P803_OBSSERVACION'
,p_attribute_03=>'P803_OBS_FIN'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(255219964908587310)
,p_name=>'Da_estado_change'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P803_ESTADO_CASOS'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(255220036171587311)
,p_event_id=>wwv_flow_imp.id(255219964908587310)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(255219848399587309)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P803_ESTADO_CASOS'
,p_client_condition_expression=>'D'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(255220178877587312)
,p_event_id=>wwv_flow_imp.id(255219964908587310)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(255219848399587309)
,p_client_condition_type=>'NOT_EQUALS'
,p_client_condition_element=>'P803_ESTADO_CASOS'
,p_client_condition_expression=>'D'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(255220297858587313)
,p_event_id=>wwv_flow_imp.id(255219964908587310)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(433013122912659600)
,p_client_condition_type=>'NOT_EQUALS'
,p_client_condition_element=>'P803_ESTADO_CASOS'
,p_client_condition_expression=>'D'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(255220313049587314)
,p_event_id=>wwv_flow_imp.id(255219964908587310)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(433013122912659600)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P803_ESTADO_CASOS'
,p_client_condition_expression=>'D'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(433011654991659598)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(861875908117211143)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form abm_casos_modal'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(255219759825587308)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Reabrircasos'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_id_caso NUMBER; ',
'    VRESP   VARCHAR2(3200);',
'    vid_caso VARCHAR2(300);',
'    vid_contacto VARCHAR2(300);',
'    vcod_empresa VARCHAR2(300);',
'    vid_derivacion VARCHAR2(300);',
'    vid_derivacion_padre VARCHAR2(300);',
'    varea_derivada VARCHAR2(300);',
'    voperador_rec VARCHAR2(300);',
'    vfecha_rec VARCHAR2(300);',
'    vobs_rec VARCHAR2(300);',
'    voper_deriv VARCHAR2(300);',
'    vfecha_deriv VARCHAR2(300);',
'    vobs_derivada VARCHAR2(300);',
'    vestado VARCHAR2(300);',
'    vsucursal_derivada VARCHAR2(300);',
'    vsucursa_origen VARCHAR2(300);',
'    varea_origen VARCHAR2(300);',
'    vdpto_derivado VARCHAR2(300);',
'    vdpto_origen VARCHAR2(300);',
'    vid_ticket VARCHAR2(300);',
'    vempleado_derivado VARCHAR2(300);',
'    vvoz_cliente VARCHAR2(300);',
'    vtipo_referencia VARCHAR2(300);',
'    vcanal VARCHAR2(300);',
'    vcod_cliente VARCHAR2(300);',
'    vestado_casos VARCHAR2(300);',
'    voperador_fin VARCHAR2(300);',
'    vfecha_fin VARCHAR2(300);',
'    vobs_fin VARCHAR2(300);',
'    vind_urgente VARCHAR2(300);',
'begin',
' begin',
'  select c.id_caso,',
'       c.id_contacto,',
'       c.cod_empresa,',
'       c.id_derivacion,',
'       c.id_derivacion_padre,',
'       c.area_derivada,',
'       c.operador_rec,',
'       c.fecha_rec,',
'       c.obs_rec,',
'       c.oper_deriv,',
'       c.fecha_deriv,',
'       c.obs_derivada,',
'       c.estado,',
'       c.sucursal_derivada,',
'       c.sucursa_origen,',
'       c.area_origen,',
'       c.dpto_derivado,',
'       c.dpto_origen,',
'       c.id_ticket,',
'       c.empleado_derivado,',
'       c.voz_cliente,',
'       c.tipo_referencia,',
'       c.canal,',
'       c.cod_cliente,',
'       c.estado_casos,',
'       c.operador_fin,',
'       c.fecha_fin,',
'       c.obs_fin,',
'       c.ind_urgente',
' into   vid_caso,',
'    vid_contacto,',
'    vcod_empresa,',
'    vid_derivacion,',
'    vid_derivacion_padre,',
'    varea_derivada,',
'    voperador_rec,',
'    vfecha_rec,',
'    vobs_rec,',
'    voper_deriv,',
'    vfecha_deriv,',
'    vobs_derivada,',
'    vestado,',
'    vsucursal_derivada,',
'    vsucursa_origen,',
'    varea_origen,',
'    vdpto_derivado,',
'    vdpto_origen,',
'    vid_ticket,',
'    vempleado_derivado,',
'    vvoz_cliente,',
'    vtipo_referencia,',
'    vcanal,',
'    vcod_cliente,',
'    vestado_casos,',
'    voperador_fin,',
'    vfecha_fin,',
'    vobs_fin,',
'    vind_urgente',
'from inv.CRM_DERIVACIONES_CONTACTO c',
'where c.id_caso = :P803_ID_CASO',
' and c.id_derivacion = :P803_ID_DERIVACION;',
'    begin',
'     UPDATE inv.CRM_DERIVACIONES_CONTACTO',
'    SET operador_fin = COALESCE(sys_context(''APEX$SESSION'', ''APP_USER''), USER),',
'        fecha_fin = SYSDATE,',
'        estado_casos = ''F'',',
'        obs_fin = ''Caso reabierto''',
'    WHERE id_caso = :P803_ID_CASO',
'      AND id_derivacion = :P803_ID_DERIVACION;',
'    exception ',
'     when others then',
'      RAISE_APPLICATION_ERROR(-20000,''Error al actualizar contacto anterior: '' || :P803_ID_CASO); ',
'    end;',
'',
'',
'',
'',
'',
'  inv.crmcasocontac.REABRIR_CASO(p_cod_empresa => vcod_empresa,',
'                                  p_campania => null,',
'                                  p_motivo => :P804_MOTIVO,',
'                                  p_cliente => vcod_cliente,',
'                                  p_observacion => :P803_OBS_FIN,',
'                                  p_proximo_contacto => null,',
'                                  p_tipo_ref => vtipo_referencia,',
'                                  p_nro_ref => null,',
'                                  p_garantia => null,',
'                                  p_id_caso => :P803_ID_CASO,',
'                                  p_canal => vcanal,',
'                                  P_VOZ_CLIENTE => vvoz_cliente,',
'                                  P_AREA_DERIVACION => varea_derivada,',
'                                  P_NRO_QUALTRICS => null,',
'                                  P_NRO_CONTACTO => null,',
'                                  P_ASESOR => null,',
'                                  P_ESTADO_CONTACTO => ''D'',',
'                                  P_IND_URGENTE => :P803_IND_URGENTE,',
'                                  P_id_caso2 => :P803_ID_CASO,',
'                                  P_RESULTADO =>VRESP);',
'',
'  /*IF VRESP IS NULL THEN',
'      inv.crmcasocontac.crea_contacto(p_id_caso => v_id_caso,',
'                                      p_canal => :P804_CANAL,',
'                                      p_comentario => :P804_COMENTARIO,',
'                                      p_num_telefono => :P804_NUM_TELEFONO,',
'                                      P_RESULTADO =>VRESP);',
'',
'        IF VRESP IS NULL THEN',
'                  inv.crmcasocontac.crea_contenido(p_cod_empresa => :p_cod_empresa,',
'                                                   p_id_caso => v_id_caso,',
'                                                   p_cod_articulo => :P804_ARTICULO,',
'                                                   p_cod_distribuidor => :P804_distribuidor,',
'                                                   p_fecha_compra => :p804_fecha_compra,',
'                                                   p_fecha_agenda => :p804_fecha_agenda,',
'                                                   p_hora_agenda => :p804_hora_agenda,',
'                                                   p_direccion => :p804_direccion,',
'                                                   p_referencia_ubi => :P804_REFERENCIA_UBICACION,',
'                                                   p_observacion => :P804_INFORME_CLIENTE,',
'                                                   p_nro_telefono => :P804_NRO_TELEF_RECEPCIONA,',
'                                                   p_descripcion_art => :P804_DESCRIPCION_ART ,',
'                                                   P_RESULTADO =>VRESP                                  ',
'                                                   );',
'        ELSE',
'            RAISE_APPLICATION_ERROR(-20000,''Error al intentar crear el Contacto: '' || VRESP); ',
'        END IF ;',
'    ELSE',
'         RAISE_APPLICATION_ERROR(-20000,''Error al intentar crear el Caso: '' || VRESP); ',
'    END IF;*/',
' ',
'      apex_application.g_print_success_message := ''<span class="notification">Nro: ''||v_id_caso||'' - </span>'';',
'',
'exception',
'when others then',
'        RAISE_APPLICATION_ERROR(-20000,''Error al intentar crear el Caso: '' || SQLERRM);',
'end;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(255219848399587309)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(433013917152659603)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE,REABRIR'
,p_process_when_type=>'REQUEST_IN_CONDITION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(433011233507659598)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(861875908117211143)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form abm_casos_modal'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp.component_end;
end;
/
