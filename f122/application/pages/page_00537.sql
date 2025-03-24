prompt --application/pages/page_00537
begin
--   Manifest
--     PAGE: 00537
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
 p_id=>537
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'TUR- Rechazo OT'
,p_alias=>'RECHAZO-OT'
,p_page_mode=>'MODAL'
,p_step_title=>'Rechazo OT'
,p_allow_duplicate_submissions=>'N'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'document.getElementById("P537_SER_COMPROBANTE").readOnly = true;',
'document.getElementById("P537_NRO_COMPROBANTE").readOnly = true;',
'document.getElementById("P537_COD_USUARIO_PED").readOnly = true;',
'document.getElementById("P537_FEC_ALTA").readOnly = true;',
'document.getElementById("P537_HORA_ALTA").readOnly = true;',
'document.getElementById("P537_ESTADO").readOnly = true;',
'document.getElementById("P537_COD_USUARIO_PROC").readOnly = true;',
'document.getElementById("P537_FEC_PROCESO").readOnly = true;',
'document.getElementById("P537_HORA_PROCESO").readOnly = true;',
'document.getElementById("P537_OBSERVACION").readOnly = true;',
'document.getElementById("P537_COD_GRUPO").readOnly = true;',
'document.getElementById("P537_TIPO").readOnly = true;',
'document.getElementById("P537_ORIGEN").readOnly = true;',
'document.getElementById("P537_PROCESADO").readOnly = true;',
'document.getElementById("P537_SOLICITUD_CREADO_POR").readOnly = true;',
'document.getElementById("P537_COD_MOTIVO").readOnly = true;',
'document.getElementById("P537_COD_ARTICULO").readOnly = true;',
'document.getElementById("P537_CONDICION_OT").readOnly = true;',
'document.getElementById("P537_RECHAZADO").readOnly = true;',
'',
'document.getElementById("P537_COD_CLIENTE").readOnly = true;',
'document.getElementById("P537_NOMBRE_CLIENTE").readOnly = true;',
'document.getElementById("P537_FEC_MOVIMIENTO").readOnly = true;',
'document.getElementById("P537_HORA_LLAMADA").readOnly = true;',
'document.getElementById("P537_COD_USUARIO").readOnly = true;',
'',
''))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'02'
,p_last_updated_by=>'CHARBA'
,p_last_upd_yyyymmddhh24miss=>'20250210170244'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(186467933991258126)
,p_plug_name=>'Rechazo OT'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select s.COD_EMPRESA,',
'       s.TIP_COMPROBANTE,',
'       s.SER_COMPROBANTE,',
'       s.NRO_COMPROBANTE,',
'       s.COD_USUARIO_PED,',
'       s.FEC_ALTA,',
'       s.HORA_ALTA,',
'       s.ESTADO,',
'       s.COD_USUARIO_PROC,',
'       s.FEC_PROCESO,',
'       s.HORA_PROCESO,',
'       s.OBSERVACION,',
'       s.COD_GRUPO,',
'       s.TIPO,',
'       s.ORIGEN,',
'       s.PROCESADO,',
'       s.SOLICITUD_CREADO_POR,',
'       s.COD_MOTIVO,',
'       s.ID_SOLICITUD,',
'       --s.ARTICULO_OT,',
'       o.cod_articulo,',
'       s.CONDICION_OT,',
'       s.IND_MIGRADO_DM,',
'       s.FECHA_MIGRADO,',
'       NVL(s.RECHAZADO,''S'') RECHAZADO',
'  from CA_SOLICITUD_OT s,',
'       vt_ordenes_trabajo o',
' where s.cod_empresa = o.cod_empresa',
'   and s.tip_comprobante = o.tip_comprobante',
'   and s.ser_comprobante = o.ser_comprobante',
'   and s.nro_comprobante = o.nro_comprobante',
'   and s.ID_SOLICITUD = :P537_ID_SOLICITUD;'))
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_ajax_items_to_submit=>'P537_ID_SOLICITUD'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(186483835944258645)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40097820288263654)
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(193595986644248286)
,p_plug_name=>'Movimiento OT'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ROWID,',
'       TIP_MOVIMIENTO,',
'       NRO_MOVIMIENTO,',
'       FEC_MOVIMIENTO,',
'       COD_CLIENTE,',
'       NRO_CUOTA,',
'       COD_MONEDA,',
'       SALDO_RECLAMADO,',
'       OBSERVACION OBS,',
'       COD_SECTOR_ANT,',
'       COD_SECTOR,',
'       COD_USUARIO,',
'       NRO_ORDEN,',
'       CALIFICACION,',
'       COD_MOTIVO MOTIVO,',
'       NRO_TELEFONO,',
'       NOMBRE,',
'       NRO_LLAMADA,',
'       EMPRESA,',
'       HORA_LLAMADA,',
'       MOVIMIENTO,',
'       FECHA_REAGENDADA,',
'       HORA_REAGENDADA,',
'       HORA_FIN,',
'       MOTIVO_SECUNDARIO,',
'       MOTIVO_PRINCIPAL',
'  from CA_LLAMADAS_SALIENTES'))
,p_is_editable=>true
,p_edit_operations=>'i'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(160940407809717815)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(186483835944258645)
,p_button_name=>'Confirmar'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Confirmar'
,p_button_position=>'BELOW_BOX'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(160940863335717814)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(186483835944258645)
,p_button_name=>'Cancelar'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Cancelar'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(160921403785717830)
,p_name=>'P537_ID_SOLICITUD'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(186467933991258126)
,p_item_source_plug_id=>wwv_flow_imp.id(186467933991258126)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Id Solicitud'
,p_source=>'ID_SOLICITUD'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(160921804616717827)
,p_name=>'P537_COD_EMPRESA'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(186467933991258126)
,p_item_source_plug_id=>wwv_flow_imp.id(186467933991258126)
,p_source=>'COD_EMPRESA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(160922207515717827)
,p_name=>'P537_TIP_COMPROBANTE'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(186467933991258126)
,p_item_source_plug_id=>wwv_flow_imp.id(186467933991258126)
,p_prompt=>'Tip Comprobante'
,p_source=>'TIP_COMPROBANTE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>20
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_imp.id(40186937130263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(160922634949717827)
,p_name=>'P537_SER_COMPROBANTE'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(186467933991258126)
,p_item_source_plug_id=>wwv_flow_imp.id(186467933991258126)
,p_prompt=>'Ser Comprobante'
,p_source=>'SER_COMPROBANTE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>20
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186937130263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(160923069511717827)
,p_name=>'P537_NRO_COMPROBANTE'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(186467933991258126)
,p_item_source_plug_id=>wwv_flow_imp.id(186467933991258126)
,p_prompt=>'Nro Comprobante'
,p_source=>'NRO_COMPROBANTE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(160923422025717826)
,p_name=>'P537_COD_USUARIO_PED'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(186467933991258126)
,p_item_source_plug_id=>wwv_flow_imp.id(186467933991258126)
,p_source=>'COD_USUARIO_PED'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(160923814274717826)
,p_name=>'P537_FEC_ALTA'
,p_source_data_type=>'DATE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(186467933991258126)
,p_item_source_plug_id=>wwv_flow_imp.id(186467933991258126)
,p_source=>'FEC_ALTA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(160924203876717826)
,p_name=>'P537_HORA_ALTA'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(186467933991258126)
,p_item_source_plug_id=>wwv_flow_imp.id(186467933991258126)
,p_source=>'HORA_ALTA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(160924617940717826)
,p_name=>'P537_ESTADO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(186467933991258126)
,p_item_source_plug_id=>wwv_flow_imp.id(186467933991258126)
,p_source=>'ESTADO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(160925052594717826)
,p_name=>'P537_COD_USUARIO_PROC'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(186467933991258126)
,p_item_source_plug_id=>wwv_flow_imp.id(186467933991258126)
,p_source=>'COD_USUARIO_PROC'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(160925488116717825)
,p_name=>'P537_FEC_PROCESO'
,p_source_data_type=>'DATE'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(186467933991258126)
,p_item_source_plug_id=>wwv_flow_imp.id(186467933991258126)
,p_source=>'FEC_PROCESO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(160925846155717825)
,p_name=>'P537_HORA_PROCESO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(186467933991258126)
,p_item_source_plug_id=>wwv_flow_imp.id(186467933991258126)
,p_source=>'HORA_PROCESO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(160926277534717825)
,p_name=>'P537_PROCESADO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(186467933991258126)
,p_item_source_plug_id=>wwv_flow_imp.id(186467933991258126)
,p_source=>'PROCESADO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(160926640290717825)
,p_name=>'P537_COD_ARTICULO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(186467933991258126)
,p_item_source_plug_id=>wwv_flow_imp.id(186467933991258126)
,p_source=>'COD_ARTICULO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(160927006618717825)
,p_name=>'P537_OBSERVACION'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(186467933991258126)
,p_item_source_plug_id=>wwv_flow_imp.id(186467933991258126)
,p_source=>'OBSERVACION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(160927474030717825)
,p_name=>'P537_COD_GRUPO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(186467933991258126)
,p_item_source_plug_id=>wwv_flow_imp.id(186467933991258126)
,p_source=>'COD_GRUPO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(160927825718717824)
,p_name=>'P537_TIPO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(186467933991258126)
,p_item_source_plug_id=>wwv_flow_imp.id(186467933991258126)
,p_source=>'TIPO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(160928238196717824)
,p_name=>'P537_ORIGEN'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(186467933991258126)
,p_item_source_plug_id=>wwv_flow_imp.id(186467933991258126)
,p_source=>'ORIGEN'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(160928663096717824)
,p_name=>'P537_SOLICITUD_CREADO_POR'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(186467933991258126)
,p_item_source_plug_id=>wwv_flow_imp.id(186467933991258126)
,p_source=>'SOLICITUD_CREADO_POR'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(160929027089717824)
,p_name=>'P537_COD_MOTIVO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(186467933991258126)
,p_item_source_plug_id=>wwv_flow_imp.id(186467933991258126)
,p_source=>'COD_MOTIVO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(160929393006717824)
,p_name=>'P537_CONDICION_OT'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_imp.id(186467933991258126)
,p_item_source_plug_id=>wwv_flow_imp.id(186467933991258126)
,p_source=>'CONDICION_OT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(160929727029717824)
,p_name=>'P537_IND_MIGRADO_DM'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_imp.id(186467933991258126)
,p_item_source_plug_id=>wwv_flow_imp.id(186467933991258126)
,p_source=>'IND_MIGRADO_DM'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(160930193403717823)
,p_name=>'P537_FECHA_MIGRADO'
,p_source_data_type=>'DATE'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_imp.id(186467933991258126)
,p_item_source_plug_id=>wwv_flow_imp.id(186467933991258126)
,p_source=>'FECHA_MIGRADO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(160930580679717823)
,p_name=>'P537_RECHAZADO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_imp.id(186467933991258126)
,p_item_source_plug_id=>wwv_flow_imp.id(186467933991258126)
,p_source=>'RECHAZADO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(160930943243717823)
,p_name=>'P537_ESTADO_RECLAMO'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_imp.id(186467933991258126)
,p_prompt=>'Estado Reclamo'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:CREADO;CREADO,PROCESADO;PROCESADO,FINALIZADO;FINALIZADO'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(160931396920717822)
,p_name=>'P537_COD_PROBLEMA_RECLAMO'
,p_is_required=>true
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_imp.id(186467933991258126)
,p_prompt=>'Cod. Problema'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LOV_PROBLEMAS_RECLAMO'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT P.COD_PROBLEMA, ',
'       P.DESCRIPCION',
'  FROM CA_PROBLEMAS P, ',
'       CA_PROBLEMAS_ARTICULOS A',
' WHERE P.COD_EMPRESA  = A.COD_EMPRESA',
'   AND P.COD_PROBLEMA = A.COD_PROBLEMA',
'   AND P.COD_EMPRESA  = :P537_COD_EMPRESA',
'   AND A.COD_ARTICULO = :P537_COD_ARTICULO; '))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P537_COD_EMPRESA,P537_COD_ARTICULO'
,p_ajax_items_to_submit=>'P537_COD_EMPRESA,P537_COD_ARTICULO'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(160931761994717821)
,p_name=>'P537_COMENTARIO_RECLAMO'
,p_item_sequence=>290
,p_item_plug_id=>wwv_flow_imp.id(186467933991258126)
,p_prompt=>'Comentarios'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cHeight=>5
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(160932196370717821)
,p_name=>'P537_USUARIO'
,p_item_sequence=>310
,p_item_plug_id=>wwv_flow_imp.id(186467933991258126)
,p_item_default=>'v(''app_user'')'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(160941559347717814)
,p_name=>'P537_FEC_MOVIMIENTO'
,p_source_data_type=>'DATE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(193595986644248286)
,p_item_source_plug_id=>wwv_flow_imp.id(193595986644248286)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'',
'select to_date(to_char(sysdate,''DD/MM/YYYY''),''DD/MM/YYYY'') FECHA FROM DUAL;'))
,p_item_default_type=>'SQL_QUERY'
,p_prompt=>'Fec Movimiento'
,p_source=>'FEC_MOVIMIENTO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(160941905269717812)
,p_name=>'P537_HORA_LLAMADA'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(193595986644248286)
,p_item_source_plug_id=>wwv_flow_imp.id(193595986644248286)
,p_item_default=>'SELECT to_char(sysdate,''HH24:MI:SS'') HOR FROM DUAL;'
,p_item_default_type=>'SQL_QUERY'
,p_prompt=>'Hora Llamada'
,p_source=>'HORA_LLAMADA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>20
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
 p_id=>wwv_flow_imp.id(160942398763717812)
,p_name=>'P537_COD_USUARIO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(193595986644248286)
,p_item_source_plug_id=>wwv_flow_imp.id(193595986644248286)
,p_item_default=>'RETURN(:APP_USER);'
,p_item_default_type=>'FUNCTION_BODY'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Cod Usuario'
,p_source=>'COD_USUARIO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>40
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
 p_id=>wwv_flow_imp.id(160942792259717812)
,p_name=>'P537_COD_CLIENTE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(193595986644248286)
,p_item_source_plug_id=>wwv_flow_imp.id(193595986644248286)
,p_prompt=>'Cod Cliente'
,p_source=>'COD_CLIENTE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>15
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
 p_id=>wwv_flow_imp.id(160943178493717812)
,p_name=>'P537_NOMBRE_CLIENTE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(193595986644248286)
,p_prompt=>'Nombre Cliente'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(160943584980717812)
,p_name=>'P537_NOMBRE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(193595986644248286)
,p_item_source_plug_id=>wwv_flow_imp.id(193595986644248286)
,p_prompt=>'Nombre'
,p_source=>'NOMBRE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>400
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
 p_id=>wwv_flow_imp.id(160943924663717811)
,p_name=>'P537_EMPRESA'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(193595986644248286)
,p_item_source_plug_id=>wwv_flow_imp.id(193595986644248286)
,p_prompt=>'Empresa'
,p_source=>'EMPRESA'
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
 p_id=>wwv_flow_imp.id(160944385022717811)
,p_name=>'P537_MOTIVO'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(193595986644248286)
,p_item_source_plug_id=>wwv_flow_imp.id(193595986644248286)
,p_prompt=>'Motivo'
,p_source=>'MOTIVO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC2:Reclamo Mostrador;RMO,Reclamo SPP;RSPP,Reclamo Reingreso;RRE,Reclamo STA;RSTA'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(160944774816717811)
,p_name=>'P537_OBS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(193595986644248286)
,p_item_source_plug_id=>wwv_flow_imp.id(193595986644248286)
,p_prompt=>'Obs'
,p_source=>'OBS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>5
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(160945119812717811)
,p_name=>'P537_NRO_TELEFONO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(193595986644248286)
,p_item_source_plug_id=>wwv_flow_imp.id(193595986644248286)
,p_prompt=>'Nro Telefono'
,p_source=>'NRO_TELEFONO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>400
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
 p_id=>wwv_flow_imp.id(160945550227717811)
,p_name=>'P537_MOVIMIENTO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(193595986644248286)
,p_item_source_plug_id=>wwv_flow_imp.id(193595986644248286)
,p_prompt=>'Movimiento'
,p_source=>'MOVIMIENTO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(160945911587717810)
,p_name=>'P537_CALIFICACION'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(193595986644248286)
,p_item_source_plug_id=>wwv_flow_imp.id(193595986644248286)
,p_prompt=>'Calificacion'
,p_source=>'CALIFICACION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_STAR_RATING'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'5'
,p_attribute_02=>'N'
,p_attribute_03=>'fa-star-o'
,p_attribute_04=>'#F7FF00'
,p_attribute_05=>'#000000'
,p_attribute_06=>'#VALUE#'
,p_attribute_07=>'N'
,p_attribute_08=>'N'
,p_attribute_09=>'STARS'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(160946337284717810)
,p_name=>'P537_TIP_MOVIMIENTO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(193595986644248286)
,p_item_source_plug_id=>wwv_flow_imp.id(193595986644248286)
,p_source=>'TIP_MOVIMIENTO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(160946736037717810)
,p_name=>'P537_NRO_MOVIMIENTO'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(193595986644248286)
,p_item_source_plug_id=>wwv_flow_imp.id(193595986644248286)
,p_source=>'NRO_MOVIMIENTO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(160947158534717810)
,p_name=>'P537_NRO_CUOTA'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(193595986644248286)
,p_item_source_plug_id=>wwv_flow_imp.id(193595986644248286)
,p_source=>'NRO_CUOTA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(160947528777717810)
,p_name=>'P537_COD_MONEDA'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(193595986644248286)
,p_item_source_plug_id=>wwv_flow_imp.id(193595986644248286)
,p_source=>'COD_MONEDA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(160947976354717810)
,p_name=>'P537_SALDO_RECLAMADO'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(193595986644248286)
,p_item_source_plug_id=>wwv_flow_imp.id(193595986644248286)
,p_source=>'SALDO_RECLAMADO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(160948349442717809)
,p_name=>'P537_COD_SECTOR_ANT'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(193595986644248286)
,p_item_source_plug_id=>wwv_flow_imp.id(193595986644248286)
,p_source=>'COD_SECTOR_ANT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(160948736498717809)
,p_name=>'P537_COD_SECTOR'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(193595986644248286)
,p_item_source_plug_id=>wwv_flow_imp.id(193595986644248286)
,p_source=>'COD_SECTOR'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(160949165992717809)
,p_name=>'P537_NRO_ORDEN'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(193595986644248286)
,p_item_source_plug_id=>wwv_flow_imp.id(193595986644248286)
,p_source=>'NRO_ORDEN'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp.component_end;
end;
/
begin
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.04.12'
,p_release=>'22.1.0'
,p_default_workspace_id=>2715162693355865
,p_default_application_id=>122
,p_default_id_offset=>0
,p_default_owner=>'INV'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(160949541185717809)
,p_name=>'P537_NRO_LLAMADA'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_imp.id(193595986644248286)
,p_item_source_plug_id=>wwv_flow_imp.id(193595986644248286)
,p_source=>'NRO_LLAMADA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(160949955993717809)
,p_name=>'P537_FECHA_REAGENDADA'
,p_source_data_type=>'DATE'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_imp.id(193595986644248286)
,p_item_source_plug_id=>wwv_flow_imp.id(193595986644248286)
,p_source=>'FECHA_REAGENDADA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(160950310950717809)
,p_name=>'P537_HORA_REAGENDADA'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_imp.id(193595986644248286)
,p_item_source_plug_id=>wwv_flow_imp.id(193595986644248286)
,p_source=>'HORA_REAGENDADA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(160950796268717808)
,p_name=>'P537_HORA_FIN'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_imp.id(193595986644248286)
,p_item_source_plug_id=>wwv_flow_imp.id(193595986644248286)
,p_source=>'HORA_FIN'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(160951135765717808)
,p_name=>'P537_MOTIVO_SECUNDARIO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_imp.id(193595986644248286)
,p_item_source_plug_id=>wwv_flow_imp.id(193595986644248286)
,p_source=>'MOTIVO_SECUNDARIO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(160951507144717808)
,p_name=>'P537_MOTIVO_PRINCIPAL'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_imp.id(193595986644248286)
,p_item_source_plug_id=>wwv_flow_imp.id(193595986644248286)
,p_source=>'MOTIVO_PRINCIPAL'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(160951920811717808)
,p_name=>'P537_ROWID'
,p_source_data_type=>'ROWID'
,p_is_primary_key=>true
,p_item_sequence=>270
,p_item_plug_id=>wwv_flow_imp.id(193595986644248286)
,p_item_source_plug_id=>wwv_flow_imp.id(193595986644248286)
,p_source=>'ROWID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(160961793102717793)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(160940863335717814)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(160962216729717792)
,p_event_id=>wwv_flow_imp.id(160961793102717793)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(160962649360717792)
,p_name=>'Nuevo_cliente'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P537_COD_CLIENTE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(160963181618717792)
,p_event_id=>wwv_flow_imp.id(160962649360717792)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P537_NOMBRE_CLIENTE'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select nvl(p.nombre,''No existe'')',
'  from cc_clientes c,',
'       personas p',
' where c.cod_persona = p.cod_persona',
'   and c.cod_cliente = :P537_COD_CLIENTE',
'   and c.cod_empresa = ''1'';'))
,p_attribute_07=>'P537_COD_CLIENTE'
,p_attribute_08=>'N'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(160961301737717794)
,p_process_sequence=>60
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'RECHAZO_OT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  update vt_ordenes_trabajo',
'     set estado_reclamo             = :P537_ESTADO_RECLAMO,',
'         cod_problema_reclamo       = :P537_COD_PROBLEMA_RECLAMO,',
'         comentario_reclamo         = :P537_COMENTARIO_RECLAMO, ',
'         tipo_reclamo               = ''RMO'',',
'         ind_reclamo = ''S''',
'   where cod_empresa     = :P537_COD_EMPRESA',
'     and tip_comprobante = :P537_TIP_COMPROBANTE',
'     and ser_comprobante = :P537_SER_COMPROBANTE',
'     and nro_comprobante = :P537_NRO_COMPROBANTE;',
'end;',
'',
'begin',
'    update ca_solicitud_ot',
'       set rechazado = ''S''',
'     where id_solicitud = :P537_ID_SOLICITUD;',
'end;',
'',
'begin',
'    sp_solicita_ot(:P_COD_EMPRESA,',
'                   :P537_USUARIO,',
'                   :P537_TIP_COMPROBANTE,--apex_application.G_F03(i).',
'                   :P537_SER_COMPROBANTE,--apex_application.G_F04(i),',
'                   :P537_NRO_COMPROBANTE,--apex_application.G_F05(i),',
'                   ''S'',',
'                   :P537_COMENTARIO_RECLAMO);',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(160940407809717815)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(160960958376717794)
,p_process_sequence=>70
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'Cancelar, Confirmar'
,p_process_when_type=>'REQUEST_IN_CONDITION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(160960591632717804)
,p_process_sequence=>80
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(193595986644248286)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Movimiento OT'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(160939701516717816)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(186467933991258126)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Rechazo OT'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(160960161958717804)
,p_process_sequence=>20
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(193595986644248286)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Movimiento OT'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp.component_end;
end;
/
