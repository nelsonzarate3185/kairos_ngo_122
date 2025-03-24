prompt --application/pages/page_00280
begin
--   Manifest
--     PAGE: 00280
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
 p_id=>280
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Registro de Capacitaciones - Form'
,p_alias=>'REGISTRO-DE-CAPACITACIONES-FORM'
,p_page_mode=>'MODAL'
,p_step_title=>'Registro de Capacitaciones - Form'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'02'
,p_last_updated_by=>'NZARATE'
,p_last_upd_yyyymmddhh24miss=>'20240920151717'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(63966655743212429)
,p_plug_name=>'Formulario'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'TABLE'
,p_query_table=>'SM_CAPACITACION_MKT'
,p_include_rowid_column=>true
,p_is_editable=>false
,p_plug_source_type=>'NATIVE_FORM'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(68480965983692715)
,p_plug_name=>'Botonera'
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
 p_id=>wwv_flow_imp.id(63968323881212446)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(68480965983692715)
,p_button_name=>'btnCrear'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Guardar Datos'
,p_button_position=>'CREATE'
,p_button_condition=>'P280_ROWID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_icon_css_classes=>'fa-save'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(68479621187692702)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(68480965983692715)
,p_button_name=>'btnEliminar'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Eliminar'
,p_button_position=>'DELETE'
,p_button_condition=>'P280_ROWID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_icon_css_classes=>'fa-remove'
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(63968480292212447)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(68480965983692715)
,p_button_name=>'btnEditar'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Guardar Datos'
,p_button_position=>'EDIT'
,p_button_condition=>'P280_ROWID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_icon_css_classes=>'fa-save'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(63966889204212431)
,p_name=>'P280_COD_EMPRESA'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(63966655743212429)
,p_item_source_plug_id=>wwv_flow_imp.id(63966655743212429)
,p_item_default=>'P_COD_EMPRESA'
,p_item_default_type=>'ITEM'
,p_source=>'COD_EMPRESA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(63966937650212432)
,p_name=>'P280_TIPO_CAPACITACION'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(63966655743212429)
,p_item_source_plug_id=>wwv_flow_imp.id(63966655743212429)
,p_prompt=>'Tipo Capacitacion'
,p_source=>'TIPO_CAPACITACION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>unistr('STATIC:CAPAC. DE PRODUCTOS;CAPAC. DE PRODUCTOS,CAPAC. T\00C9CNICAS Y MOTIVACION;CAPAC. T\00C9CNICAS Y MOTIVACION,CONVENCION;CONVENCION,UBUNTU;UBUNTU,VALORES NGO;VALORES NGO')
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(63967020717212433)
,p_name=>'P280_TIPO_PARTICIPANTE'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(63966655743212429)
,p_item_source_plug_id=>wwv_flow_imp.id(63966655743212429)
,p_prompt=>'Tipo Participante'
,p_source=>'TIPO_PARTICIPANTE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:VENDEDOR;VENDEDOR,PROMOTOR;PROMOTOR,SERV. TEC.;SERV. TEC.,DISTRIB/CLIENTE;DISTRIB/CLIENTE,STAFF;STAFF,STAFF NGO;STAFF NGO,STAFF CPH;STAFF CPH'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(63967134639212434)
,p_name=>'P280_COD_PERSONA'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(63966655743212429)
,p_item_source_plug_id=>wwv_flow_imp.id(63966655743212429)
,p_prompt=>'Participante'
,p_source=>'COD_PERSONA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select p.cod_persona||'' - ''||ltrim(rtrim(nvl(p.nombre, p.nomb_fantasia))) nombre ,  ',
'',
'p.cod_persona ',
'',
' from  personas p  ',
'',
' where p.cod_persona in ( select distinct cod_persona ',
'',
'                             from fv_vendedores ',
'',
'                             where cod_empresa= :P_COD_EMPRESA',
'',
'                             and estado =''A'' ',
'',
'                             and :P280_TIPO_PARTICIPANTE=''VENDEDOR'') ',
'',
'  OR  ',
'',
'p.cod_persona in (   ',
'',
'                      SELECT DISTINCT EE.cod_persona ',
'',
'                      FROM FV_PROMOTORAS PP, ',
'',
'                           RH_EMPLEADOS EE ',
'',
'                      WHERE PP.COD_EMPRESA= :P_COD_EMPRESA ',
'',
'                      AND   PP.COD_EMPRESA=EE.COD_EMPRESA ',
'',
'                      AND   PP.COD_EMPLEADO=EE.COD_EMPLEADO ',
'',
'                      AND   EE.ACTIVO=''S'' ',
'',
'                   and :P280_TIPO_PARTICIPANTE=''PROMOTOR'')                                       ',
'',
'  OR   ',
'',
'p.cod_persona in (   SELECT DISTINCT PP.COD_PERSONA ',
'',
'                         FROM CM_PROVEEDORES  PP ',
'',
'                         WHERE PP.COD_EMPRESA=:P_COD_EMPRESA ',
'',
'                         AND   PP.ESTADO=''A'' ',
'',
'                         and :P280_TIPO_PARTICIPANTE=''SERV.TEC.'')  ',
'',
'  OR   ',
'',
'p.cod_persona in (    SELECT DISTINCT CC.COD_PERSONA ',
'',
'                       FROM CC_CLIENTES  CC ',
'',
'                       ',
'WHERE CC.COD_EMPRESA =:P_COD_EMPRESA ',
'',
'                       AND   CC.ESTADO in(''A'',''C'') ',
'',
'                         and :P280_TIPO_PARTICIPANTE=''DISTRIB/CLIENTE'')    ',
'',
'  OR   ',
'',
'( p.cod_persona in ( ''6101'',''196590'') AND :P280_TIPO_PARTICIPANTE IN(''STAFF'',''STAFF CPH'',''STAFF NGO''))  ',
'',
'order by 1 '))
,p_lov_cascade_parent_items=>'P_COD_EMPRESA,P280_TIPO_PARTICIPANTE'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_cMaxlength=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
,p_attribute_08=>'600'
,p_attribute_09=>'400'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(63967278894212435)
,p_name=>'P280_COD_ART_CORTO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(63966655743212429)
,p_item_source_plug_id=>wwv_flow_imp.id(63966655743212429)
,p_prompt=>'Cod Art Corto'
,p_source=>'COD_ART_CORTO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select (cod_art_corto||''-''||descripcion) AS descripccion, cod_art_corto',
'from st_articulos where cod_empresa = :P_COD_EMPRESA ',
'and COD_RUBRO= ''PR''',
'and estado=''A''',
'order by descripcion'))
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
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
,p_attribute_08=>'600'
,p_attribute_09=>'400'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(63967374823212436)
,p_name=>'P280_FECHA_CAPACITACION'
,p_source_data_type=>'DATE'
,p_is_required=>true
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(63966655743212429)
,p_item_source_plug_id=>wwv_flow_imp.id(63966655743212429)
,p_prompt=>'Fecha Capacitacion'
,p_format_mask=>'DD-MM-RRRR'
,p_source=>'FECHA_CAPACITACION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(63967432809212437)
,p_name=>'P280_CANT_CAPACITADOS'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(63966655743212429)
,p_item_source_plug_id=>wwv_flow_imp.id(63966655743212429)
,p_prompt=>'Cant Capacitados'
,p_source=>'CANT_CAPACITADOS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(63967574381212438)
,p_name=>'P280_CALIFICACION'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(63966655743212429)
,p_item_source_plug_id=>wwv_flow_imp.id(63966655743212429)
,p_prompt=>'Calificacion'
,p_source=>'CALIFICACION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(63967746677212440)
,p_name=>'P280_COD_USUARIO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(63966655743212429)
,p_item_source_plug_id=>wwv_flow_imp.id(63966655743212429)
,p_source=>'COD_USUARIO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(63967853124212441)
,p_name=>'P280_OBSERVACION'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(63966655743212429)
,p_item_source_plug_id=>wwv_flow_imp.id(63966655743212429)
,p_prompt=>'Observacion'
,p_source=>'OBSERVACION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cMaxlength=>500
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(63967957760212442)
,p_name=>'P280_SUC_CLIENTE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(63966655743212429)
,p_item_source_plug_id=>wwv_flow_imp.id(63966655743212429)
,p_prompt=>'Sucursal Cliente'
,p_source=>'SUC_CLIENTE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select p.nombre, ',
'p.cod_sucursal   ',
'from cc_clientes c, ',
'BS_SUCURSAL_CLIENTE p ',
'where c.cod_empresa=:P_COD_EMPRESA',
'and c.cod_persona= :P280_COD_PERSONA ',
'and c.cod_cliente=p.cod_cliente',
'and ''DISTRIB/CLIENTE'' = :P280_TIPO_PARTICIPANTE'))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P280_COD_PERSONA,P280_TIPO_PARTICIPANTE'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_cMaxlength=>10
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
 p_id=>wwv_flow_imp.id(63968098527212443)
,p_name=>'P280_ROWID'
,p_source_data_type=>'ROWID'
,p_is_primary_key=>true
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(63966655743212429)
,p_item_source_plug_id=>wwv_flow_imp.id(63966655743212429)
,p_source=>'ROWID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(68480876507692714)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'OTORGAR_CLAVES'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P280_ROWID is null then',
':P280_COD_EMPRESA := :P_COD_EMPRESA;',
':P280_COD_USUARIO := :APP_USER;',
'end if;',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(63968527080212448)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(63966655743212429)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'prAccion'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'btnCrear, btnEditar,btnEliminar'
,p_process_when_type=>'REQUEST_IN_CONDITION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(63968694113212449)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'close_dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'btnCrear,btnEditar,btnEliminar'
,p_process_when_type=>'REQUEST_IN_CONDITION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(63966760843212430)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(63966655743212429)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Registro de Capacitaciones - Form'
);
wwv_flow_imp.component_end;
end;
/
