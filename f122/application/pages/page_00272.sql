prompt --application/pages/page_00272
begin
--   Manifest
--     PAGE: 00272
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
 p_id=>272
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'SMPEDSG'
,p_alias=>'SMPEDSG'
,p_page_mode=>'MODAL'
,p_step_title=>'Mantenimiento/Dpto. SS.GG'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>wwv_flow_imp.id(40080790783263649)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_width=>'1000'
,p_protection_level=>'C'
,p_page_component_map=>'16'
,p_last_updated_by=>'MARIANABLA'
,p_last_upd_yyyymmddhh24miss=>'20221228100918'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(66603028324150409)
,p_plug_name=>'SMPEDSG'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>990
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(66603158177150410)
,p_plug_name=>'VARIABLES'
,p_parent_plug_id=>wwv_flow_imp.id(66603028324150409)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(66604719142150426)
,p_plug_name=>'CABECERA'
,p_parent_plug_id=>wwv_flow_imp.id(66603028324150409)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(66834971012415627)
,p_plug_name=>'CAB1'
,p_parent_plug_id=>wwv_flow_imp.id(66604719142150426)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>10
,p_plug_grid_column_span=>3
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(66835045021415628)
,p_plug_name=>'CAB2'
,p_parent_plug_id=>wwv_flow_imp.id(66604719142150426)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(66835172361415629)
,p_plug_name=>'CAB3'
,p_parent_plug_id=>wwv_flow_imp.id(66604719142150426)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(67098164152295101)
,p_plug_name=>'BOTONES'
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--noPadding:t-ButtonRegion--noBorder'
,p_plug_template=>wwv_flow_imp.id(40097820288263654)
,p_plug_display_sequence=>1000
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(66835724078415635)
,p_button_sequence=>520
,p_button_plug_id=>wwv_flow_imp.id(67098164152295101)
,p_button_name=>'CANCELAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Cancelar'
,p_button_position=>'CLOSE'
,p_button_execute_validations=>'N'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(66835639174415634)
,p_button_sequence=>510
,p_button_plug_id=>wwv_flow_imp.id(67098164152295101)
,p_button_name=>'ACEPTAR'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Aceptar'
,p_button_position=>'CREATE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66603287251150411)
,p_name=>'P272_COD_EMPRESA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(66603158177150410)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66603315917150412)
,p_name=>'P272_COD_SUCURSAL'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(66603158177150410)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66603407750150413)
,p_name=>'P272_COD_MODULO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(66603158177150410)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66603569675150414)
,p_name=>'P272_COD_USUARIO'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(66603158177150410)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66603792414150416)
,p_name=>'P272_TIP_PEDIDO'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(66603158177150410)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66603871193150417)
,p_name=>'P272_CARGA_SUCURSAL'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(66603158177150410)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66603981334150418)
,p_name=>'P272_CONFIRMA_ORDEN'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(66603158177150410)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66604075930150419)
,p_name=>'P272_CAMBIA_ESTADO'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(66603158177150410)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66604197548150420)
,p_name=>'P272_CREA_PENDIENTE'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(66603158177150410)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66604208562150421)
,p_name=>'P272_APROBADO_SECCION'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(66603158177150410)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66604374774150422)
,p_name=>'P272_APROBADO_IT'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(66603158177150410)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66604436157150423)
,p_name=>'P272_RECHAZADO'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(66603158177150410)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66604581925150424)
,p_name=>'P272_FINALIZADO'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(66603158177150410)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66604659571150425)
,p_name=>'P272_CONFIRMADO'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(66603158177150410)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66605176434150430)
,p_name=>'P272_NRO_PEDIDO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(66834971012415627)
,p_prompt=>'Ticket'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66605328163150432)
,p_name=>'P272_FECHA'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(66834971012415627)
,p_prompt=>'Fecha'
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66605606793150435)
,p_name=>'P272_ESTADO'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(66834971012415627)
,p_prompt=>'Estado'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:PENDIENTE;P,APROBADO SECCION;A,APROBADO SSGG;I,RECHAZADO;R,CONCLUIDO SSGG;C,FINALIZADO;F'
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-- Seleccionar --'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66605769527150436)
,p_name=>'P272_COMENTARIO'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(66835172361415629)
,p_prompt=>'Comentario'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cMaxlength=>600
,p_cHeight=>5
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66605853040150437)
,p_name=>'P272_COD_PERSONA'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(66835045021415628)
,p_prompt=>'Solicitado por'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_EMP_SMPEDSG'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select nombre D,p.cod_persona R ',
'  from rh_empleados e, personas p ',
' where e.cod_empresa = :P_COD_EMPRESA',
'   and e.cod_persona = p.cod_persona ',
'   and nvl(e.activo, ''S'') = ''S''',
'UNION ALL',
'select nombre, P.COD_PERSONA',
'  from  personas p',
' where  COD_PERSONA IN(''307020'',''322872'')',
'order by 1'))
,p_cSize=>30
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66605969449150438)
,p_name=>'P272_COD_USUARIO_EST'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(66604719142150426)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66606201962150441)
,p_name=>'P272_COD_SECCION'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(66604719142150426)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66606384094150442)
,p_name=>'P272_COD_EMPLEADO_IT'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(66835045021415628)
,p_prompt=>'Responsable'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_EMPLEADO_IT_SMPEDSG'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select nombre D, p.cod_persona R',
'  from rh_empleados e, personas p ',
' where e.cod_empresa = :P_COD_EMPRESA',
'   and e.cod_persona = p.cod_persona ',
'   and nvl(e.activo, ''S'') = ''S'' ',
'   and cod_cargo in (''229'',''211'',''269'',''312'',''357'',''378'',''377'',''440'',''422'')',
'order by nombre'))
,p_cSize=>30
,p_cMaxlength=>20
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66606412554150443)
,p_name=>'P272_APROBADO_USER'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(66604719142150426)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66606500728150444)
,p_name=>'P272_FECHA_APROBADO'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(66604719142150426)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66606681088150445)
,p_name=>'P272_PENDIENTE_USER'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(66604719142150426)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66606755735150446)
,p_name=>'P272_FECHA_PENDIENTE'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(66604719142150426)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66606841554150447)
,p_name=>'P272_RECHAZADO_USER'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_imp.id(66604719142150426)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66606962689150448)
,p_name=>'P272_FECHA_RECHAZADO'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_imp.id(66604719142150426)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66607098946150449)
,p_name=>'P272_FINALIZADO_USER'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_imp.id(66604719142150426)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66607165352150450)
,p_name=>'P272_FECHA_FINALIZADO'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_imp.id(66604719142150426)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66832393970415601)
,p_name=>'P272_FECHA_PLAZO'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(66834971012415627)
,p_prompt=>'Fecha Requerida'
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66832492235415602)
,p_name=>'P272_COMENTARIO_IT'
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_imp.id(66604719142150426)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66833007499415608)
,p_name=>'P272_CONFIRMADO_USER'
,p_item_sequence=>320
,p_item_plug_id=>wwv_flow_imp.id(66604719142150426)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66833167933415609)
,p_name=>'P272_FECHA_CONFIRMADO'
,p_item_sequence=>330
,p_item_plug_id=>wwv_flow_imp.id(66604719142150426)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66833523114415613)
,p_name=>'P272_COD_CAMBIO'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(66835045021415628)
,p_prompt=>'Motivo'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_ARTICULO_SMPEDSG'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cod_CAMBIO R, descripcion  D',
'from  sm_CAMBIOS_ssgg ',
'order by descripcion'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--Seleccionar--'
,p_cSize=>30
,p_cMaxlength=>30
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66833690148415614)
,p_name=>'P272_MODULO'
,p_item_sequence=>380
,p_item_plug_id=>wwv_flow_imp.id(66604719142150426)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66833765911415615)
,p_name=>'P272_SECCION'
,p_item_sequence=>390
,p_item_plug_id=>wwv_flow_imp.id(66604719142150426)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66833892222415616)
,p_name=>'P272_FORMULARIO'
,p_item_sequence=>400
,p_item_plug_id=>wwv_flow_imp.id(66604719142150426)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66833933698415617)
,p_name=>'P272_URGENTE'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(66834971012415627)
,p_prompt=>'Prioridad'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC2:Baja;B,Media;M,Alta;A'
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-- Seleccionar --'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66835229068415630)
,p_name=>'P272_NOMBRE'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(66835045021415628)
,p_prompt=>'&nbsp'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66835318899415631)
,p_name=>'P272_DESC_SECCION'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(66835045021415628)
,p_prompt=>unistr('Secci\00F3n')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66835402935415632)
,p_name=>'P272_DESC_ARTICULO'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(66835045021415628)
,p_prompt=>'&nbsp'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66835516655415633)
,p_name=>'P272_DESC_EMPLEADO_IT'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(66835045021415628)
,p_prompt=>'&nbsp'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(68939654336359516)
,p_name=>'P272_AUX_ACCION'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(66603158177150410)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(66835869632415636)
,p_validation_name=>'VA_FECHA_PLAZO'
,p_validation_sequence=>10
,p_validation=>'P272_FECHA_PLAZO'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Debe cargar una Fecha o Plazo al pedido.'
,p_associated_item=>wwv_flow_imp.id(66832393970415601)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(66835989739415637)
,p_validation_name=>'VA_COD_EMPLEADO_IT'
,p_validation_sequence=>20
,p_validation=>'P272_COD_EMPLEADO_IT'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Debe seleccionar un posible responsable al pedido.'
,p_associated_item=>wwv_flow_imp.id(66606384094150442)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(66836002257415638)
,p_validation_name=>'VA_COD_PERSONA'
,p_validation_sequence=>30
,p_validation=>'P272_COD_PERSONA'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Debe cargar el solicitante.'
,p_associated_item=>wwv_flow_imp.id(66605853040150437)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(66836174986415639)
,p_validation_name=>'VA_URGENTE'
,p_validation_sequence=>40
,p_validation=>'P272_URGENTE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Debe seleccionar el tipo de prioridad.'
,p_associated_item=>wwv_flow_imp.id(66833933698415617)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(66836370631415641)
,p_name=>'DA_URGENTE'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P272_URGENTE'
,p_condition_element=>'P272_URGENTE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(66836406738415642)
,p_event_id=>wwv_flow_imp.id(66836370631415641)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P272_URGENTE=''A'' THEN',
'	:P272_FECHA_PLAZO:=SYSDATE+1;',
'ELSIF :P272_URGENTE=''M'' THEN',
'	:P272_FECHA_PLAZO:=SYSDATE+3;',
'ELSIF :P272_URGENTE=''B'' THEN',
'	:P272_FECHA_PLAZO:=SYSDATE+5;',
'END IF;'))
,p_attribute_02=>'P272_URGENTE'
,p_attribute_03=>'P272_FECHA_PLAZO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(66836594213415643)
,p_name=>'DA_COD_PERSONA'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P272_COD_PERSONA'
,p_condition_element=>'P272_COD_PERSONA'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(66836667227415644)
,p_event_id=>wwv_flow_imp.id(66836594213415643)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SMPEDSG.PR_DATOS_PERSONA(PI_COD_EMPRESA    => :P272_COD_EMPRESA,',
'                         PI_COD_USUARIO    => :P272_COD_USUARIO,',
'                         PI_COD_PERSONA    => :P272_COD_PERSONA,',
'                         PO_NOMBRE         => :P272_NOMBRE,',
'                         PO_COD_SECCION    => :P272_COD_SECCION,',
'                         PO_DESC_SECCION   => :P272_DESC_SECCION);  '))
,p_attribute_02=>'P272_COD_EMPRESA,P272_COD_USUARIO,P272_COD_PERSONA'
,p_attribute_03=>'P272_NOMBRE,P272_COD_SECCION,P272_DESC_SECCION'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(66836700512415645)
,p_name=>'DA_COD_CAMBIO'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P272_COD_CAMBIO'
,p_condition_element=>'P272_COD_CAMBIO'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(66836856377415646)
,p_event_id=>wwv_flow_imp.id(66836700512415645)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SMPEDSG.PR_COD_CAMBIO(PI_COD_EMPRESA    => :P272_COD_EMPRESA,',
'                      PI_COD_CAMBIO     => :P272_COD_CAMBIO,',
'                      PO_DESC_ARTICULO  => :P272_DESC_ARTICULO);'))
,p_attribute_02=>'P272_COD_EMPRESA,P272_COD_CAMBIO'
,p_attribute_03=>'P272_DESC_ARTICULO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(66836907115415647)
,p_name=>'DA_COD_EMPLEADO_IT'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P272_COD_EMPLEADO_IT'
,p_condition_element=>'P272_COD_EMPLEADO_IT'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(66837015586415648)
,p_event_id=>wwv_flow_imp.id(66836907115415647)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SMPEDSG.PR_EMPLEADO_IT(PI_COD_EMPRESA       => :P272_COD_EMPRESA,',
'                       PI_COD_EMPLEADO_IT   => :P272_COD_EMPLEADO_IT,',
'                       PO_DESC_EMPLEADO_IT  => :P272_DESC_EMPLEADO_IT);'))
,p_attribute_02=>'P272_COD_EMPRESA,P272_COD_EMPLEADO_IT'
,p_attribute_03=>'P272_DESC_EMPLEADO_IT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(66837148133415649)
,p_name=>'DA_ESTADO'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P272_ESTADO'
,p_condition_element=>'P272_ESTADO'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(66837275607415650)
,p_event_id=>wwv_flow_imp.id(66837148133415649)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SMPEDSG.PR_VALIDA_ESTADO(PI_ESTADO            => :P272_ESTADO,  ',
'                         PI_CAMBIA_ESTADO     => :P272_CAMBIA_ESTADO,',
'                         PI_APROBADO_SECCION  => :P272_APROBADO_SECCION,',
'                         PI_APROBADO_IT       => :P272_APROBADO_IT,',
'                         PI_FINALIZADO        => :P272_FINALIZADO,',
'                         PI_RECHAZADO         => :P272_RECHAZADO,',
'                         PI_CONFIRMADO        => :P272_CONFIRMADO,',
'                         PI_CREA_PENDIENTE    => :P272_CREA_PENDIENTE,',
'                         PI_PENDIENTE_USER    => :P272_PENDIENTE_USER,',
'                         PI_APROBADO_USER     => :P272_APROBADO_USER);',
'',
'IF :P272_ESTADO=''P''  THEN',
'	:P272_PENDIENTE_USER:=USER; ',
'	:P272_FECHA_PENDIENTE:=SYSDATE;		',
'ELSIF :P272_ESTADO=''R''  THEN',
'	:P272_RECHAZADO_USER :=USER ;',
'	:P272_FECHA_RECHAZADO:=SYSDATE;',
'ELSIF :P272_ESTADO=''A''  THEN',
'	:P272_APROBADO_USER :=USER ;',
'	:P272_FECHA_APROBADO:=SYSDATE;',
'ELSIF :P272_ESTADO=''F''  THEN',
'	:P272_FINALIZADO_USER:=USER;',
'	:P272_FECHA_FINALIZADO:=SYSDATE;	 ',
'ELSIF :P272_ESTADO=''C''  THEN',
'	:P272_CONFIRMADO_USER:=USER;',
'	:P272_FECHA_CONFIRMADO:=SYSDATE;		 ',
'END IF;'))
,p_attribute_02=>'P272_ESTADO,P272_CAMBIA_ESTADO,P272_APROBADO_SECCION,P272_APROBADO_IT,P272_FINALIZADO,P272_RECHAZADO,P272_CONFIRMADO,P272_CREA_PENDIENTE,P272_PENDIENTE_USER,P272_APROBADO_USER'
,p_attribute_03=>'P272_CONFIRMADO_USER,P272_FECHA_CONFIRMADO,P272_PENDIENTE_USER,P272_FECHA_PENDIENTE,P272_RECHAZADO_USER,P272_FECHA_RECHAZADO,P272_FINALIZADO_USER,P272_FECHA_FINALIZADO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(67098415772295104)
,p_name=>'DA_CANCELAR'
,p_event_sequence=>60
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(66835724078415635)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(67098595191295105)
,p_event_id=>wwv_flow_imp.id(67098415772295104)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(66603655822150415)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_INIT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'--PRE FORM',
':P_COD_MODULO := ''SM'';',
'',
':P272_COD_EMPRESA := NVL(:P_COD_EMPRESA,''1'');',
':P272_COD_MODULO := :P_COD_MODULO;',
':P272_COD_USUARIO := NVL(:P_COD_USUARIO, :APP_USER);',
':P272_COD_SUCURSAL := NVL(:P_COD_SUCURSAL, ''01'');',
':P276_NRO_PEDIDO := NULL;',
':P276_AUX_ACCION := NULL;',
':P272_TIP_PEDIDO:= ''PED'';',
'',
':P272_CARGA_SUCURSAL := busca_permiso(:P272_COD_EMPRESA,',
'                                      ''SMPEDSG'',',
'                                      :P272_COD_USUARIO,',
'                                      ''CARGA SUCURSAL'' );',
'',
':P272_CONFIRMA_ORDEN:= busca_permiso(:P272_COD_EMPRESA,',
'                                     ''SMPEDSG'',',
'                                     :P272_COD_USUARIO,',
'                                     ''CONFIRMA_ORDEN'' );',
'--:variables.MAXIMIZADO:=''N'';                                        ',
'                                               ',
':P272_CAMBIA_ESTADO := busca_permiso(:P272_COD_EMPRESA,',
'                                     ''SMPEDSG'',',
'                                     :P272_COD_USUARIO,',
'                                     ''CAMBIA_ESTADO'' );',
'                                               ',
'/*:P272_REVIERTE_ESTADO := busca_permiso( :P272_COD_EMPRESA,',
'                                      ''SMPEDSG'',',
'                                       :P272_COD_USUARIO,',
'                                               ''REVIERTE_ESTADO'' );*/                                               ',
'                                              ',
':P272_CREA_PENDIENTE := busca_permiso(:P272_COD_EMPRESA,',
'                                      ''SMPEDSG'',',
'                                      :P272_COD_USUARIO,',
'                                      ''CREA_PENDIENTE'' );                                               ',
'                                               ',
'                                               ',
':P272_APROBADO_SECCION:= busca_permiso(:P272_COD_EMPRESA,',
'                                       ''SMPEDSG'',',
'                                       :P272_COD_USUARIO,',
'                                       ''APROBADO_SECCION'' );      ',
'                                               ',
':P272_APROBADO_IT:= busca_permiso(:P272_COD_EMPRESA,',
'                                  ''SMPEDSG'',',
'                                  :P272_COD_USUARIO,',
'                                  ''APROBADO_IT'' );  ',
'',
':P272_RECHAZADO := busca_permiso(:P272_COD_EMPRESA,',
'                                 ''SMPEDSG'',',
'                                 :P272_COD_USUARIO,',
'                                 ''RECHAZADO'' ); ',
'                                               ',
':P272_FINALIZADO := busca_permiso(:P272_COD_EMPRESA,',
'                                  ''SMPEDSG'',',
'                                  :P272_COD_USUARIO,',
'                                  ''FINALIZADO'' );                                                ',
'                                                                    ',
':P272_CONFIRMADO := busca_permiso(:P272_COD_EMPRESA,',
'                                  ''SMPEDSG'',',
'                                  :P272_COD_USUARIO,',
'                                  ''CONFIRMADO'' );',
'',
'--WHEN CREATE RECORD B_CABECERA',
':P272_FECHA := sysdate;',
':P272_ESTADO := ''P'';',
':P272_URGENTE := NULL;',
':P272_PENDIENTE_USER:=:P272_COD_USUARIO;',
':P272_FECHA_PENDIENTE:=SYSDATE;	',
'',
'SMPEDSG.PR_CARGA_DATOS (PI_COD_EMPRESA    => :P272_COD_EMPRESA,',
'                        PI_COD_USUARIO    => :P272_COD_USUARIO,',
'                        PO_NOMBRE         => :P272_NOMBRE,',
'                        PO_COD_SECCION    => :P272_COD_SECCION,',
'                        PO_DESC_SECCION   => :P272_DESC_SECCION,',
'                        PO_COD_PERSONA    => :P272_COD_PERSONA);   ',
'',
'     ',
'',
'',
'',
'',
'',
'',
'',
'',
'',
''))
,p_process_clob_language=>'PLSQL'
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
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(66836247856415640)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_GUARDAR'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SMPEDSG.PR_GUARDA_PEDIDO (PI_COD_EMPRESA      => :P272_COD_EMPRESA,',
'                          PI_TIP_PEDIDO       => :P272_TIP_PEDIDO,',
'                          PI_COD_SUCURSAL     => :P272_COD_SUCURSAL,',
'                          PI_FECHA            => TO_DATE(:P272_FECHA,''DD/MM/YYYY''),',
'                          PI_URGENTE          => :P272_URGENTE,',
'                          PI_FECHA_PLAZO      => TO_DATE(:P272_FECHA_PLAZO,''DD/MM/YYYY''),',
'                          PI_COD_PERSONA      => :P272_COD_PERSONA,',
'                          PI_COD_USUARIO_EST  => :P272_COD_USUARIO_EST,',
'                          PI_COD_SECCION      => :P272_COD_SECCION,',
'                          PI_COD_CAMBIO       => :P272_COD_CAMBIO,',
'                          PI_COD_EMPLEADO_IT  => :P272_COD_EMPLEADO_IT,',
'                          PI_COMENTARIO       => :P272_COMENTARIO,',
'                          PI_APROBADO_USER    => :P272_APROBADO_USER,',
'                          PI_FECHA_APROBADO   => TO_DATE(:P272_FECHA_APROBADO,''DD/MM/YYYY''),',
'                          PI_PENDIENTE_USER   => :P272_PENDIENTE_USER,',
'                          PI_FECHA_PENDIENTE  => TO_DATE(:P272_FECHA_PENDIENTE,''DD/MM/YYYY''),',
'                          PI_RECHAZADO_USER   => :P272_RECHAZADO_USER,',
'                          PI_FECHA_RECHAZADO  => TO_DATE(:P272_FECHA_RECHAZADO,''DD/MM/YYYY''),',
'                          PI_FINALIZADO_USER  => :P272_FINALIZADO_USER,',
'                          PI_FECHA_FINALIZADO => TO_DATE(:P272_FECHA_FINALIZADO,''DD/MM/YYYY''),',
'                          PI_COMENTARIO_IT    => :P272_COMENTARIO_IT,',
'                          PI_CONFIRMADO_USER  => :P272_CONFIRMADO_USER,',
'                          PI_FECHA_CONFIRMADO => TO_DATE(:P272_FECHA_CONFIRMADO,''DD/MM/YYYY''),',
'                          PI_MODULO           => :P272_MODULO,',
'                          PI_SECCION          => :P272_SECCION,',
'                          PI_FORMULARIO       => :P272_FORMULARIO,',
'                          PI_ESTADO           => :P272_ESTADO,',
'                          PO_NRO_PEDIDO       => :P272_NRO_PEDIDO);',
unistr(':P272_AUX_ACCION := ''guard\00F3'';                          ')))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(66835639174415634)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(67098610874295106)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'CLOSE_DIALOG'
,p_attribute_01=>'P272_NRO_PEDIDO,P272_AUX_ACCION'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(66835639174415634)
);
wwv_flow_imp.component_end;
end;
/
