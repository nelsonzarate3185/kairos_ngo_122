prompt --application/pages/page_00006
begin
--   Manifest
--     PAGE: 00006
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
 p_id=>6
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Mantenimiento de Usuarios'
,p_alias=>'MANTENIMIENTO-DE-USUARIOS'
,p_page_mode=>'MODAL'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'02'
,p_last_updated_by=>'NZARATE'
,p_last_upd_yyyymmddhh24miss=>'20250107082107'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(40226555403418321)
,p_plug_name=>'Mantenimiento de Usuarios'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT A100.ID,',
'       A100.USRN,',
'       A100.APEL,',
'       A100.NOMB,',
'       A100.DM$ACTI,',
'       A100.MAIL,',
'       A100.DM$PADM,',
'       A100.DM$IMPR,',
'       A100.PASS,',
'       A100.CREATION_DATE,',
'       A100.CREATION_BY,',
'       A100.LAST_UPDATE_DATE,',
'       A100.LAST_UPDATED_BY,',
'       (select ROLE0100$ID',
'        from ASP$USUA0130',
'        where USUA0100$ID = A100.ID',
'        and rownum=1) ROLE0100$ID ,',
'				a100.cod_persona, a100.cod_sucursal, a100.cod_custodio',
'FROM ASP$USUA0100 A100'))
,p_is_editable=>false
,p_plug_source_type=>'NATIVE_FORM'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(40306653471094505)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40097820288263654)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(40228666533418342)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(40306653471094505)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Cancelar'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(40229004378418346)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(40306653471094505)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Crear'
,p_button_position=>'NEXT'
,p_button_condition=>'P6_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(40228909253418345)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(40306653471094505)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Guardar'
,p_button_position=>'NEXT'
,p_button_condition=>'P6_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12524833840514410)
,p_name=>'P6_ROLE0100$ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(40226555403418321)
,p_item_source_plug_id=>wwv_flow_imp.id(40226555403418321)
,p_prompt=>'Role0100$id'
,p_source=>'ROLE0100$ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12524987189514411)
,p_name=>'P6_COD_PERSONA'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(40226555403418321)
,p_item_source_plug_id=>wwv_flow_imp.id(40226555403418321)
,p_prompt=>'CodPersona'
,p_source=>'COD_PERSONA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT  E.NOMBRE||'' ''||E.COD_PERSONA D, E.COD_PERSONA R',
'  FROM PERSONAS e',
'  where COD_SECTOR=''8'''))
,p_lov_display_null=>'YES'
,p_cSize=>30
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
 p_id=>wwv_flow_imp.id(12525029066514412)
,p_name=>'P6_COD_SUCURSAL'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(40226555403418321)
,p_item_source_plug_id=>wwv_flow_imp.id(40226555403418321)
,p_item_default=>'01'
,p_prompt=>'Cod Sucursal'
,p_source=>'COD_SUCURSAL'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_SUCURSALES'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT cod_sucursal||'' - ''||descripcion L, ',
'         cod_sucursal V',
'    FROM sucursales ',
'   WHERE cod_empresa = :P_COD_EMPRESA',
'ORDER BY descripcion'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_begin_on_new_line=>'N'
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
 p_id=>wwv_flow_imp.id(12525122770514413)
,p_name=>'P6_COD_CUSTODIO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(40226555403418321)
,p_item_source_plug_id=>wwv_flow_imp.id(40226555403418321)
,p_prompt=>'Cod Custodio'
,p_source=>'COD_CUSTODIO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_CUSTODIOS'
,p_lov=>'select descripcion||'' - ''||cod_custodio DESCRIPCION, cod_custodio from cc_custodios where cod_empresa =''1''order by descripcion'
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_begin_on_new_line=>'N'
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
 p_id=>wwv_flow_imp.id(40226720390418323)
,p_name=>'P6_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(40226555403418321)
,p_item_source_plug_id=>wwv_flow_imp.id(40226555403418321)
,p_source=>'ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(40226888333418324)
,p_name=>'P6_USRN'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(40226555403418321)
,p_item_source_plug_id=>wwv_flow_imp.id(40226555403418321)
,p_prompt=>'Nombre de Usuario'
,p_source=>'USRN'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>100
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(40226912901418325)
,p_name=>'P6_APEL'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(40226555403418321)
,p_item_source_plug_id=>wwv_flow_imp.id(40226555403418321)
,p_prompt=>'Apellido'
,p_source=>'APEL'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>200
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(40227082131418326)
,p_name=>'P6_NOMB'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(40226555403418321)
,p_item_source_plug_id=>wwv_flow_imp.id(40226555403418321)
,p_prompt=>'Nombre'
,p_source=>'NOMB'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>200
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(40227140162418327)
,p_name=>'P6_DM_ACTI'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(40226555403418321)
,p_item_source_plug_id=>wwv_flow_imp.id(40226555403418321)
,p_prompt=>unistr('\00BFActivo?')
,p_source=>'DM$ACTI'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'DM_SINO'
,p_lov=>'.'||wwv_flow_imp.id(40303239801928454)||'.'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(40227250217418328)
,p_name=>'P6_MAIL'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(40226555403418321)
,p_item_source_plug_id=>wwv_flow_imp.id(40226555403418321)
,p_prompt=>'E-Mail'
,p_source=>'MAIL'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>2000
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(40227392533418329)
,p_name=>'P6_DM_PADM'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(40226555403418321)
,p_item_source_plug_id=>wwv_flow_imp.id(40226555403418321)
,p_source=>'DM$PADM'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(40227489642418330)
,p_name=>'P6_DM_IMPR'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(40226555403418321)
,p_item_source_plug_id=>wwv_flow_imp.id(40226555403418321)
,p_source=>'DM$IMPR'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(40227550713418331)
,p_name=>'P6_PASS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(40226555403418321)
,p_item_source_plug_id=>wwv_flow_imp.id(40226555403418321)
,p_source=>'PASS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(40227631511418332)
,p_name=>'P6_CREATION_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(40226555403418321)
,p_item_source_plug_id=>wwv_flow_imp.id(40226555403418321)
,p_source=>'CREATION_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(40227793090418333)
,p_name=>'P6_CREATION_BY'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(40226555403418321)
,p_item_source_plug_id=>wwv_flow_imp.id(40226555403418321)
,p_source=>'CREATION_BY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(40227813379418334)
,p_name=>'P6_LAST_UPDATE_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(40226555403418321)
,p_item_source_plug_id=>wwv_flow_imp.id(40226555403418321)
,p_source=>'LAST_UPDATE_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(40227910520418335)
,p_name=>'P6_LAST_UPDATED_BY'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(40226555403418321)
,p_item_source_plug_id=>wwv_flow_imp.id(40226555403418321)
,p_source=>'LAST_UPDATED_BY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(40229126666418347)
,p_name=>'P6_TITULO'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_imp.id(40226555403418321)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(40229264326418348)
,p_name=>'P6_ROLE0100_ID'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(40226555403418321)
,p_prompt=>'Rol'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ROLE0100$ID ',
'  FROM ASP$USUA0130',
' WHERE USUA0100$ID = :P6_ID;'))
,p_source_type=>'QUERY_COLON'
,p_display_as=>'NATIVE_SHUTTLE'
,p_named_lov=>'ASP$ROLE0100.NOMB'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ID V,',
'       nvl(descripcion_rol,nomb)||''(''||nomb||'')'' L',
'FROM ASP$ROLE0100',
'ORDER BY nomb     '))
,p_cHeight=>5
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'ALL'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(373233063020924247)
,p_name=>'P6_EMPRESA_PERMITIDA'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(40226555403418321)
,p_prompt=>'Empresas'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT cod_empresa',
'  FROM EMPRESAS_USUARIOS',
' WHERE COD_USUARIO = :P6_USRN;'))
,p_source_type=>'QUERY_COLON'
,p_display_as=>'NATIVE_SHUTTLE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select DESCRIPCION||''(''||COD_EMPRESA||'')'' D, COD_EMPRESA from empresas a ',
'where activo_erp=''S''',
'and cod_empresa not in (''15'')'))
,p_cHeight=>5
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'ALL'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(40228012552418336)
,p_validation_name=>'VA_NOMB'
,p_validation_sequence=>10
,p_validation=>'P6_NOMB'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Debe ingresar un nombre.'
,p_associated_item=>wwv_flow_imp.id(40227082131418326)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(40228258338418338)
,p_validation_name=>'VA_APEL'
,p_validation_sequence=>30
,p_validation=>'P6_APEL'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Debe ingresar un apellido.'
,p_associated_item=>wwv_flow_imp.id(40226912901418325)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(40228528148418341)
,p_validation_name=>'VA_USRN'
,p_validation_sequence=>50
,p_validation=>'P6_USRN'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Debe ingresar un usuario.'
,p_associated_item=>wwv_flow_imp.id(40226888333418324)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(40306758153094506)
,p_validation_name=>'VA_MAIL_FORMATO'
,p_validation_sequence=>60
,p_validation=>'P6_MAIL'
,p_validation2=>'^[a-zA-Z0-9][a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,3}$'
,p_validation_type=>'REGULAR_EXPRESSION'
,p_error_message=>unistr('Debe ingresar un e-mail v\00E1lido.')
,p_associated_item=>wwv_flow_imp.id(40227250217418328)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(40306845412094507)
,p_validation_name=>'VA_MAIL'
,p_validation_sequence=>70
,p_validation=>'P6_MAIL'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Debe ingresar un e-mail.'
,p_associated_item=>wwv_flow_imp.id(40227250217418328)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(40228727368418343)
,p_name=>'DA_CANCEL'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(40228666533418342)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(40228800294418344)
,p_event_id=>wwv_flow_imp.id(40228727368418343)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(40229379340418349)
,p_name=>'DA_TITULO'
,p_event_sequence=>20
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(40229415996418350)
,p_event_id=>wwv_flow_imp.id(40229379340418349)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.util.getTopApex().jQuery(".ui-dialog-content").dialog("option", "title", $v("P6_TITULO"));'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(40306388344094502)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(40226555403418321)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Mantenimiento de Usuarios'
,p_attribute_01=>'PLSQL_CODE'
,p_attribute_04=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'VID NUMBER;',
'VCLAVE VARCHAR2(4000);',
'--tab apex_application_global.vc_arr2;',
'begin',
'    case :APEX$ROW_STATUS',
'    when ''C'' then',
'        VID := ASP$USUA0100$SEQ.NEXTVAL;',
unistr('        VCLAVE := SEGURIDAD.FB_ENCRIPTAR(UPPER(translate(:P6_NOMB||:P6_APEL,''\00C1\00E1\00C9\00E9\00CD\00ED\00D3\00F3\00DAu'',''AaEeIiOoUu'')));'),
'        --APEX_DEBUG.ERROR(vclave);',
'        insert into ASP$USUA0100 (ID, ',
'                                  USRN, ',
'                                  APEL,                                   ',
'                                  NOMB,                                   ',
'                                  DM$ACTI,',
'                                  MAIL,',
'                                  DM$PADM,',
'                                  DM$IMPR, ',
'                                  PASS, ',
'                                  CREATION_DATE,',
'                                  CREATION_BY,',
'                                  LAST_UPDATE_DATE,',
'                                  LAST_UPDATED_BY,',
'																		COD_PERSONA,',
'								COD_CUSTODIO,COD_SUCURSAL)',
'        values (VID, ',
'                UPPER(:P6_USRN),  ',
'                UPPER(:P6_APEL),                ',
'                UPPER(:P6_NOMB), ',
'                :P6_DM_ACTI, ',
'                :P6_MAIL,',
'                :P6_DM_PADM,',
'                :P6_DM_IMPR,',
'                VCLAVE, ',
'                SYSDATE, ',
'                :APP_USER,',
'                SYSDATE, ',
'                :APP_USER,',
'								:P6_COD_PERSONA,',
'								:P6_COD_CUSTODIO,:P6_COD_SUCURSAL) ',
'        returning ID into :P6_ID;',
'',
'       for c in (SELECT TO_NUMBER(Column_value) role0100_id',
'                FROM TABLE(UTILS.ARRAY_VARCHARS(:P6_ROLE0100_ID,'':'')))',
'       loop       ',
'            insert into ASP$USUA0130(USUA0100$ID,',
'                                     ROLE0100$ID) ',
'            values (VID, c.role0100_id);',
'       end loop;',
'  for c in (SELECT TO_NUMBER(Column_value) COD_EMPRESA',
'                FROM TABLE(UTILS.ARRAY_VARCHARS(:P6_EMPRESA_PERMITIDA,'':'')))',
'       loop       ',
'            insert into EMPRESAS_USUARIOS(COD_EMPRESA,COD_USUARIO,ID_USUARIO_KAIROS ) ',
'            values (C.COD_EMPRESA, UPPER(:P6_USRN),VID);',
'       end loop;',
'',
'    when ''U'' then',
'        update  ASP$USUA0100',
'            set USRN = UPPER(:P6_USRN),',
'                APEL = UPPER(:P6_APEL),',
'                NOMB  = UPPER(:P6_NOMB),                ',
'                DM$ACTI = :P6_DM_ACTI,',
'                MAIL = :P6_MAIL,',
'                LAST_UPDATE_DATE = SYSDATE,',
'                LAST_UPDATED_BY = :APP_USER , ',
'								COD_PERSONA= :P6_COD_PERSONA ,',
'								COD_SUCURSAL= :P6_COD_SUCURSAL,',
'								COD_CUSTODIO= :P6_COD_CUSTODIO',
'',
'          where ID  = :P6_ID;                     ',
'    when ''D'' then',
'        null;',
'    end case;',
'end;'))
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(40306473914094503)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_EDITAR_ROL'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    DELETE FROM ASP$USUA0130',
'          WHERE USUA0100$ID = :P6_ID;',
'',
'    FOR C IN (SELECT TO_NUMBER(Column_value) role0100_id',
'                FROM TABLE(UTILS.ARRAY_VARCHARS(:P6_ROLE0100_ID,'':'')))',
'    LOOP    ',
'        INSERT INTO ASP$USUA0130(USUA0100$ID,',
'                                 ROLE0100$ID) ',
'             VALUES (:P6_ID, c.role0100_id);',
'    END LOOP;  ',
'END;',
'',
'',
'',
'BEGIN',
'    DELETE FROM EMPRESAS_USUARIOS',
'          WHERE COD_USUARIO = UPPER(:P6_USRN);',
'',
'    for c in (SELECT TO_NUMBER(Column_value) COD_EMPRESA',
'                FROM TABLE(UTILS.ARRAY_VARCHARS(:P6_EMPRESA_PERMITIDA,'':'')))',
'       loop       ',
'            insert into EMPRESAS_USUARIOS(COD_EMPRESA,COD_USUARIO,ID_USUARIO_KAIROS ) ',
'            values (C.COD_EMPRESA, UPPER(:P6_USRN),:P6_ID);',
'       end loop;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'SAVE'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(40306508087094504)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'CLOSE DIALOG'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(40226655312418322)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(40226555403418321)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Mantenimiento de Usuarios'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp.component_end;
end;
/
