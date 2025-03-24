prompt --application/pages/page_00192
begin
--   Manifest
--     PAGE: 00192
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
 p_id=>192
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'CRSOLRE'
,p_alias=>'CRSOLRE'
,p_page_mode=>'MODAL'
,p_step_title=>'CRSOLRE'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function soloNumeros(e){',
'  var key = e.charCode;',
'    return key >= 48 && key <= 57;',
'}'))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.rotulo{',
'    color: red;',
'}',
'',
''))
,p_step_template=>wwv_flow_imp.id(40080790783263649)
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch'
,p_protection_level=>'C'
,p_page_component_map=>'16'
,p_last_updated_by=>'DFINO'
,p_last_upd_yyyymmddhh24miss=>'20221116152606'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(40690800652230923)
,p_plug_name=>'Solicitudes que Requieren Referencias'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(40690946087230924)
,p_plug_name=>'SALDOS'
,p_parent_plug_id=>wwv_flow_imp.id(40690800652230923)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(42560859388231210)
,p_plug_name=>'CAB1'
,p_parent_plug_id=>wwv_flow_imp.id(40690946087230924)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(42560977706231211)
,p_plug_name=>'CAB2'
,p_parent_plug_id=>wwv_flow_imp.id(40690946087230924)
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
 p_id=>wwv_flow_imp.id(42561139406231213)
,p_plug_name=>'Cliente'
,p_parent_plug_id=>wwv_flow_imp.id(42560977706231211)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(42561350972231215)
,p_plug_name=>'Responsables Legales'
,p_parent_plug_id=>wwv_flow_imp.id(42560977706231211)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(42562379676231225)
,p_plug_name=>'CAB3'
,p_parent_plug_id=>wwv_flow_imp.id(42560977706231211)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(42562429766231226)
,p_plug_name=>'CAB4'
,p_parent_plug_id=>wwv_flow_imp.id(40690946087230924)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(42282733080996631)
,p_plug_name=>'VARIABLES'
,p_parent_plug_id=>wwv_flow_imp.id(40690800652230923)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(42283120894996635)
,p_plug_name=>'PARAMETROS'
,p_parent_plug_id=>wwv_flow_imp.id(40690800652230923)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(42560238620231204)
,p_button_sequence=>610
,p_button_plug_id=>wwv_flow_imp.id(40690800652230923)
,p_button_name=>'GUARDAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Guardar'
,p_button_position=>'EDIT'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'VCONTROL NUMBER;',
'BEGIN',
'    VCONTROL := SEGURIDAD_GRANULAR.RETORNA_PERMISO_BOTON(ppage_id     => :APP_PAGE_ID,',
'                                                         papli0100_id => :P_APLI0100_ID,',
'                                                         pcod_empresa => :P_COD_EMPRESA,',
'                                                         pusua0100_id => :P_USUA0100_ID,',
'                                                         pdm_boto     => 1); ',
'',
'    IF VCONTROL = 0 THEN',
'        RETURN FALSE;',
'    ELSE',
'        RETURN TRUE;',
'    END IF;                                                     ',
'END;'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'FUNCTION_BODY'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(42564103942231243)
,p_button_sequence=>620
,p_button_plug_id=>wwv_flow_imp.id(40690800652230923)
,p_button_name=>'LIMPIAR'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Limpiar'
,p_button_position=>'EDIT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(42564350917231245)
,p_button_sequence=>630
,p_button_plug_id=>wwv_flow_imp.id(40690800652230923)
,p_button_name=>'VOLVER'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Volver'
,p_button_position=>'EDIT'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(40691232283230927)
,p_name=>'P192_NRO_SOLICITUD'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(40690946087230924)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(40691320498230928)
,p_name=>'P192_COD_ENTIDAD'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(42560859388231210)
,p_prompt=>'Entidad'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>30
,p_tag_attributes=>'readonly'
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(40691449906230929)
,p_name=>'P192_COD_CLIENTE'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_imp.id(42561139406231213)
,p_prompt=>unistr('C\00F3digo')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>20
,p_tag_attributes=>'readonly'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(40691538238230930)
,p_name=>'P192_NOMBRE_APELLIDO'
,p_item_sequence=>270
,p_item_plug_id=>wwv_flow_imp.id(42561139406231213)
,p_prompt=>'Nombre '
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>200
,p_tag_attributes=>'readonly'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(40691612492230931)
,p_name=>'P192_TELEFONO'
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_imp.id(42561139406231213)
,p_prompt=>unistr('Tel\00E9fono')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>200
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
 p_id=>wwv_flow_imp.id(40691820343230933)
,p_name=>'P192_MONTO_TOTAL_OPERACION'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(42560859388231210)
,p_prompt=>unistr('Monto Total Operaci\00F3n')
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(40691963490230934)
,p_name=>'P192_CALIFICACION'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_imp.id(42560859388231210)
,p_prompt=>'Calificacion'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(40692073979230935)
,p_name=>'P192_OBSERVACION'
,p_item_sequence=>340
,p_item_plug_id=>wwv_flow_imp.id(42562429766231226)
,p_prompt=>unistr('Observaci\00F3n')
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cMaxlength=>2000
,p_cHeight=>5
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(40692840252230943)
,p_name=>'P192_EN_QUE_TRABAJA'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(42560859388231210)
,p_prompt=>'En que trabaja'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>60
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(40692956213230944)
,p_name=>'P192_DIRECCION'
,p_item_sequence=>280
,p_item_plug_id=>wwv_flow_imp.id(42561139406231213)
,p_prompt=>unistr('Direcci\00F3n')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>200
,p_tag_attributes=>'readonly'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(40693092103230945)
,p_name=>'P192_MENSAJE'
,p_item_sequence=>430
,p_item_plug_id=>wwv_flow_imp.id(42562429766231226)
,p_prompt=>'Mensaje'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cMaxlength=>500
,p_cHeight=>5
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(40693157274230946)
,p_name=>'P192_TIPO'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(42560859388231210)
,p_prompt=>'Tipo'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC2:BANCARIA;B,COMERCIAL;C,PERSONAL;P'
,p_cHeight=>1
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(40693454877230949)
,p_name=>'P192_ANTIGUEDAD_BANCARIA'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(42560859388231210)
,p_prompt=>unistr(' Antig\00FCedad')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(40693597168230950)
,p_name=>'P192_SALARIO'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(42560859388231210)
,p_prompt=>'Salario'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(42280563355996609)
,p_name=>'P192_COD_USUARIO_UTIL'
,p_item_sequence=>540
,p_item_plug_id=>wwv_flow_imp.id(42562379676231225)
,p_prompt=>'Usuario '
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>30
,p_tag_attributes=>'readonly'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(42280966934996613)
,p_name=>'P192_FEC_OPERACION'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(42560859388231210)
,p_prompt=>'Fecha Oper.'
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>30
,p_begin_on_new_line=>'N'
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
 p_id=>wwv_flow_imp.id(42281149697996615)
,p_name=>'P192_ULTIMA_COMPRA'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_imp.id(42560859388231210)
,p_prompt=>'Ultima Compra'
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
 p_id=>wwv_flow_imp.id(42281226236996616)
,p_name=>'P192_PLAZO_BANCO'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(42560859388231210)
,p_prompt=>'Plazo Banco'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>100
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(42281316084996617)
,p_name=>'P192_LINEA_CREDITO'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(42560859388231210)
,p_prompt=>'Linea Credito'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(42281563331996619)
,p_name=>'P192_ENTIDAD_BANCARIA'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(42560859388231210)
,p_prompt=>'&nbsp'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>100
,p_tag_css_classes=>'rotulo'
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
 p_id=>wwv_flow_imp.id(42281696907996620)
,p_name=>'P192_SALDO_COMPRA'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(42560859388231210)
,p_prompt=>'Saldo Compra'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>100
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(42281728029996621)
,p_name=>'P192_CUOTAS_ABONADAS'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_imp.id(42560859388231210)
,p_prompt=>'Cuotas Abonadas'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>100
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(42281828087996622)
,p_name=>'P192_FORMA_PAGO'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(42560859388231210)
,p_prompt=>'Forma Pago'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>100
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(42281917113996623)
,p_name=>'P192_GARANTIA'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(42560859388231210)
,p_prompt=>unistr('Garant\00EDa')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>100
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(42282111715996625)
,p_name=>'P192_ENTIDAD'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(42560859388231210)
,p_prompt=>'Entidad'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>200
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(42282268345996626)
,p_name=>'P192_FECHA_VTO'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_imp.id(42560859388231210)
,p_prompt=>'Fecha Vto'
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
 p_id=>wwv_flow_imp.id(42282347897996627)
,p_name=>'P192_COD_MONEDA'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(42560859388231210)
,p_prompt=>'Moneda'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_MONDEDA_CRSOLRE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  select cod_moneda, siglas, tipo_cambio_dia, descripcion ',
'    from monedas ',
'order by cod_moneda'))
,p_cSize=>30
,p_cMaxlength=>10
,p_begin_on_new_line=>'N'
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
 p_id=>wwv_flow_imp.id(42282416022996628)
,p_name=>'P192_FECHA_CIERRE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(40690946087230924)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(42282564785996629)
,p_name=>'P192_FEC_SOLICITA_REF'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(40690946087230924)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(42282893526996632)
,p_name=>'P192_COD_EMPRESA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(42282733080996631)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(42282970023996633)
,p_name=>'P192_COD_MODULO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(42282733080996631)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(42283002081996634)
,p_name=>'P192_COD_SUCURSAL'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(42282733080996631)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(42283285660996636)
,p_name=>'P192_P_COD_CLIENTE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(42283120894996635)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(42283337873996637)
,p_name=>'P192_P_CONTROL'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(42283120894996635)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(42283510570996639)
,p_name=>'P192_P_TELEFONO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(42283120894996635)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(42283676849996640)
,p_name=>'P192_COD_USUARIO_VAR'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(42282733080996631)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(42284421738996648)
,p_name=>'P192_CONYUGE'
,p_item_sequence=>310
,p_item_plug_id=>wwv_flow_imp.id(42561139406231213)
,p_prompt=>unistr('C\00F3nyuge')
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
 p_id=>wwv_flow_imp.id(42284530286996649)
,p_name=>'P192_COD_PERSONA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(40690946087230924)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(42284682029996650)
,p_name=>'P192_CI'
,p_item_sequence=>300
,p_item_plug_id=>wwv_flow_imp.id(42561139406231213)
,p_prompt=>'C.I.'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
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
 p_id=>wwv_flow_imp.id(42559976305231201)
,p_name=>'P192_RUC'
,p_item_sequence=>290
,p_item_plug_id=>wwv_flow_imp.id(42561139406231213)
,p_prompt=>'RUC'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_tag_attributes=>'readonly'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(42560134456231203)
,p_name=>'P192_DESC_MONEDA'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(42560859388231210)
,p_prompt=>'&nbsp'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(42560509543231207)
,p_name=>'P192_P_TIPO'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(42283120894996635)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(42561526397231217)
,p_name=>'P192_COD_CLIENTE_1'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(42561350972231215)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(42561610325231218)
,p_name=>'P192_COD_PERSONA_REF'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(42561350972231215)
,p_prompt=>'Persona '
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>15
,p_tag_attributes=>'readonly'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(42561707436231219)
,p_name=>'P192_NOMBRE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(42561350972231215)
,p_prompt=>'Nombre'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>100
,p_tag_attributes=>'readonly'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(42561878427231220)
,p_name=>'P192_FEC_NACIMIENTO'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(42561350972231215)
,p_prompt=>'Fec. Nacimiento'
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
 p_id=>wwv_flow_imp.id(42561943884231221)
,p_name=>'P192_NACIONALIDAD'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(42561350972231215)
,p_prompt=>'Nacionalidad'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>20
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
 p_id=>wwv_flow_imp.id(42562009148231222)
,p_name=>'P192_CARGO'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(42561350972231215)
,p_prompt=>'Cargo'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>50
,p_tag_attributes=>'readonly'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(42562154359231223)
,p_name=>'P192_NCI'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(42561350972231215)
,p_prompt=>'Nro. C.I.'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>30
,p_tag_attributes=>'readonly'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(42283777902996641)
,p_name=>'VISUALIZAR'
,p_event_sequence=>10
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(42283872710996642)
,p_event_id=>wwv_flow_imp.id(42283777902996641)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P192_LINEA_CREDITO,P192_SALDO_COMPRA,P192_FORMA_PAGO,P192_PLAZO_BANCO,P192_ULTIMA_COMPRA'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P192_TIPO'
,p_client_condition_expression=>'C'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(42284021971996644)
,p_event_id=>wwv_flow_imp.id(42283777902996641)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P192_EN_QUE_TRABAJA,P192_MENSAJE,P192_MONTO_TOTAL_OPERACION,P192_CUOTAS_ABONADAS,P192_GARANTIA,P192_CALIFICACION,P192_SALARIO,P192_FECHA_VTO,P192_FEC_OPERACION'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P192_TIPO'
,p_client_condition_expression=>'C'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(42284105251996645)
,p_event_id=>wwv_flow_imp.id(42283777902996641)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P192_MENSAJE,P192_MONTO_TOTAL_OPERACION,P192_CUOTAS_ABONADAS,P192_GARANTIA,P192_CALIFICACION,P192_FECHA_VTO,P192_FEC_OPERACION,P192_FORMA_PAGO,P192_PLAZO_BANCO'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P192_TIPO'
,p_client_condition_expression=>'B'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(42283996471996643)
,p_event_id=>wwv_flow_imp.id(42283777902996641)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P192_LINEA_CREDITO,P192_SALDO_COMPRA,P192_ULTIMA_COMPRA,P192_EN_QUE_TRABAJA,P192_SALARIO'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P192_TIPO'
,p_client_condition_expression=>'B'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(42284240282996646)
,p_event_id=>wwv_flow_imp.id(42283777902996641)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P192_EN_QUE_TRABAJA,P192_SALARIO'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P192_TIPO'
,p_client_condition_expression=>'P'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(42284353454996647)
,p_event_id=>wwv_flow_imp.id(42283777902996641)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P192_LINEA_CREDITO,P192_SALDO_COMPRA,P192_ULTIMA_COMPRA,,P192_FEC_OPERACION,P192_MONTO_TOTAL_OPERACION,P192_CUOTAS_ABONADAS,P192_GARANTIA,P192_FECHA_VTO,P192_CALIFICACION,P192_MENSAJE,P192_FORMA_PAGO,P192_PLAZO_BANCO'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P192_TIPO'
,p_client_condition_expression=>'P'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(42562895855231230)
,p_name=>'VISUALIZAR_1'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P192_TIPO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(42562970821231231)
,p_event_id=>wwv_flow_imp.id(42562895855231230)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P192_LINEA_CREDITO,P192_SALDO_COMPRA,P192_FORMA_PAGO,P192_PLAZO_BANCO,P192_ULTIMA_COMPRA'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P192_TIPO'
,p_client_condition_expression=>'C'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(42563095991231232)
,p_event_id=>wwv_flow_imp.id(42562895855231230)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P192_EN_QUE_TRABAJA,P192_MENSAJE,P192_MONTO_TOTAL_OPERACION,P192_CUOTAS_ABONADAS,P192_GARANTIA,P192_CALIFICACION,P192_SALARIO,P192_FECHA_VTO,P192_FEC_OPERACION'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P192_TIPO'
,p_client_condition_expression=>'C'
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
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(42563102335231233)
,p_event_id=>wwv_flow_imp.id(42562895855231230)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P192_MENSAJE,P192_MONTO_TOTAL_OPERACION,P192_CUOTAS_ABONADAS,P192_GARANTIA,P192_CALIFICACION,P192_FECHA_VTO,P192_FEC_OPERACION,P192_FORMA_PAGO,P192_PLAZO_BANCO'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P192_TIPO'
,p_client_condition_expression=>'B'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(42563238667231234)
,p_event_id=>wwv_flow_imp.id(42562895855231230)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P192_LINEA_CREDITO,P192_SALDO_COMPRA,P192_ULTIMA_COMPRA,P192_EN_QUE_TRABAJA,P192_SALARIO'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P192_TIPO'
,p_client_condition_expression=>'B'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(42563323221231235)
,p_event_id=>wwv_flow_imp.id(42562895855231230)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P192_EN_QUE_TRABAJA,P192_SALARIO'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P192_TIPO'
,p_client_condition_expression=>'P'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(42563434300231236)
,p_event_id=>wwv_flow_imp.id(42562895855231230)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P192_LINEA_CREDITO,P192_SALDO_COMPRA,P192_ULTIMA_COMPRA,,P192_FEC_OPERACION,P192_MONTO_TOTAL_OPERACION,P192_CUOTAS_ABONADAS,P192_GARANTIA,P192_FECHA_VTO,P192_CALIFICACION,P192_MENSAJE,P192_FORMA_PAGO,P192_PLAZO_BANCO'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P192_TIPO'
,p_client_condition_expression=>'P'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(42562586940231227)
,p_name=>'DA_GUARDAR'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(42560238620231204)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(42562643701231228)
,p_event_id=>wwv_flow_imp.id(42562586940231227)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\00BFDesea guardar los cambios?')
,p_attribute_06=>'Aceptar'
,p_attribute_07=>'Cancelar'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(42562781536231229)
,p_event_id=>wwv_flow_imp.id(42562586940231227)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_01=>'GUARDAR'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(42563547270231237)
,p_name=>'DA_COD_MONEDA'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P192_COD_MONEDA'
,p_condition_element=>'P192_COD_MONEDA'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(42563690483231238)
,p_event_id=>wwv_flow_imp.id(42563547270231237)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    CRSOLRE.desc_moneda (PI_COD_MONEDA => :P192_COD_MONEDA,',
'                         PO_DESC_MONEDA => :P192_DESC_MONEDA);',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        NULL;',
'END;                                 '))
,p_attribute_02=>'P192_COD_MONEDA'
,p_attribute_03=>'P192_DESC_MONEDA'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(42563704351231239)
,p_event_id=>wwv_flow_imp.id(42563547270231237)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P192_DESC_MONEDA := NULL;'
,p_attribute_03=>'P192_DESC_MONEDA'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(42563910786231241)
,p_name=>'DA_SOLO_NUMEROS'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P192_MONTO_TOTAL_OPERACION,P192_LINEA_CREDITO'
,p_bind_type=>'bind'
,p_bind_event_type=>'keypress'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(42564018733231242)
,p_event_id=>wwv_flow_imp.id(42563910786231241)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if (!soloNumeros(event)){',
'      event.preventDefault();',
'}'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(42564420308231246)
,p_name=>'DA_VOLVER'
,p_event_sequence=>60
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(42564350917231245)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(42564547156231247)
,p_event_id=>wwv_flow_imp.id(42564420308231246)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(42283491059996638)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_INIT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'--PRE-FORM',
':P192_COD_EMPRESA := NVL(:P_COD_EMPRESA, ''1'');',
':P192_COD_USUARIO_VAR := NVL(:P_COD_USUARIO, :APP_USER);',
':P192_COD_SUCURSAL := NVL(:P_COD_SUCURSAL, ''01'');',
'',
':P192_COD_MODULO := ''CR'';',
':P192_P_COD_CLIENTE := ''889'';',
':P192_P_TELEFONO := ''.'';',
'',
'--WHEN CREATE RECORD',
':P192_TIPO:= :P192_P_TIPO;',
':P192_COD_ENTIDAD:= :P192_P_COD_CLIENTE; ',
'',
'',
'--WHEN-NEW-FRM-INSTANCE',
'IF :P192_P_COD_CLIENTE IS NOT NULL THEN',
'    CRSOLRE.BUSCA_REFERENCIAS (PI_COD_EMPRESA         => :P192_COD_EMPRESA,',
'                               PI_P_COD_CLIENTE       => :P192_P_COD_CLIENTE,',
'                               PI_P_TELEFONO          => :P192_P_TELEFONO,',
'                               PI_COD_USUARIO_VAR     => :P192_COD_USUARIO_VAR,',
'                               PO_NRO_SOLICITUD       => :P192_NRO_SOLICITUD,',
'                               PO_COD_ENTIDAD         => :P192_COD_ENTIDAD,',
'                               PO_ENTIDAD             => :P192_ENTIDAD,',
'                               PO_TIPO                => :P192_TIPO,',
'                               PO_COD_CLIENTE         => :P192_COD_CLIENTE,',
'                               PO_NOMBRE_APELLIDO     => :P192_NOMBRE_APELLIDO,',
'                               PO_TELEFONO            => :P192_TELEFONO,',
'                               PO_COD_USUARIO_util    => :P192_COD_USUARIO_UTIL,',
'                               PO_ENTIDAD_BANCARIA	  => :P192_ENTIDAD_BANCARIA,',
'                               PO_DIRECCION			  => :P192_DIRECCION,',
'                               PO_CONYUGE			  => :P192_CONYUGE,',
'                               PO_COD_PERSONA 		  => :P192_COD_PERSONA,',
'                               PO_FEC_SOLICITA_REF    => :P192_FEC_SOLICITA_REF,      ',
'                               PO_CI		          => :P192_CI,',
'                               PO_RUC 		          => :P192_RUC);',
'ELSIF :P192_P_CONTROL IS NOT NULL THEN',
'    :P192_P_COD_CLIENTE := :P192_P_CONTROL;',
'    SELECT NRO_SOLICITUD,COD_ENTIDAD,COD_CLIENTE,NOMBRE_APELLIDO,TELEFONO,MONTO_TOTAL_OPERACION,CALIFICACION,OBSERVACION,',
'           EN_QUE_TRABAJA,DIRECCION,MENSAJE,TIPO,CARGO,SALARIO,',
'           COD_USUARIO_UTIL,FEC_OPERACION,ULTIMA_COMPRA,PLAZO_BANCO,LINEA_CREDITO,ANTIGUEDAD_BANCARIA,ENTIDAD_BANCARIA,SALDO_COMPRA,',
'           CUOTAS_ABONADAS,FORMA_PAGO,GARANTIA,ENTIDAD,FECHA_VTO,COD_MONEDA,FECHA_CIERRE,FEC_SOLICITA_REF',
'      INTO :P192_NRO_SOLICITUD,:P192_ENTIDAD,:P192_COD_CLIENTE,:P192_NOMBRE_APELLIDO,:P192_TELEFONO,:P192_MONTO_TOTAL_OPERACION,:P192_CALIFICACION,:P192_OBSERVACION,           ',
'           :P192_EN_QUE_TRABAJA,:P192_DIRECCION,:P192_MENSAJE,:P192_TIPO,:P192_CARGO,:P192_SALARIO,',
'           :P192_COD_USUARIO_UTIL,:P192_FEC_OPERACION,:P192_ULTIMA_COMPRA,:P192_PLAZO_BANCO,',
'           :P192_LINEA_CREDITO,:P192_ANTIGUEDAD_BANCARIA,:P192_ENTIDAD_BANCARIA,:P192_SALDO_COMPRA,',
'           :P192_CUOTAS_ABONADAS,:P192_FORMA_PAGO,:P192_GARANTIA,:P192_ENTIDAD,:P192_FECHA_VTO,:P192_COD_MONEDA,:P192_FECHA_CIERRE,:P192_FEC_SOLICITA_REF',
'      FROM CR_SOLICITUD_REFERENCIADAS',
'     WHERE COD_EMPRESA = :P192_COD_EMPRESA',
'       AND NVL(ESTADO,''P'') NOT IN (''N'',''V'',''S'') ',
'       AND (COD_ENTIDAD = :P192_P_COD_CLIENTE OR :P192_P_COD_CLIENTE IS NULL ) ',
'       AND cod_entidad IS NOT NULL;',
'END IF;    ',
''))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(42560088418231202)
,p_process_sequence=>20
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_INIT_SALDOS'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P192_TELEFONO := :P192_P_TELEFONO;',
'CRSOLRE.POST_QUERY (PI_COD_EMPRESA        => :P192_COD_EMPRESA,',
'                    PI_COD_CLIENTE        => :P192_COD_CLIENTE,',
'                    PI_COD_MONEDA         => :P192_COD_MONEDA,',
'                    PO_NOMBRE_APELLIDO    => :P192_NOMBRE_APELLIDO, ',
'                    PO_CONYUGE            => :P192_CONYUGE,',
'                    PO_COD_PERSONA        => :P192_COD_PERSONA,',
'                    PO_DESC_MONEDA        => :P192_DESC_MONEDA,',
'                    PO_CI                 => :P192_CI,',
'                    PO_RUC                => :P192_RUC);',
'',
'                       '))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(42563834759231240)
,p_process_sequence=>30
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_INIT_RESPONSABLE'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    SELECT cod_cliente, cod_persona_ref, nombre, fec_nacimiento, nacionalidad, cargo, nci ',
'      INTO :P192_COD_CLIENTE_1, :P192_COD_PERSONA_REF, :P192_NOMBRE, :P192_FEC_NACIMIENTO, :P192_NACIONALIDAD, :P192_CARGO, :P192_NCI',
'      FROM view_responsables',
'     WHERE COD_CLIENTE = :P192_COD_CLIENTE;',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        NULL;',
'END;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(42560350427231205)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'GUARDAR'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    :P192_COD_USUARIO_UTIL:= :P192_COD_USUARIO_VAR;',
'    :P192_FECHA_CIERRE:=sysdate;',
'    CRSOLRE.PRE_INSERT(PI_P_COD_CLIENTE       => :P192_P_COD_CLIENTE,',
'                       PI_P_TIPO              => :P192_P_TIPO,',
'                       PI_COD_ENTIDAD         => :P192_COD_ENTIDAD,',
'                       PI_NOMBRE_APELLIDO     => :P192_NOMBRE_APELLIDO,',
'                       PI_NRO_SOLICITUD       => :P192_NRO_SOLICITUD,',
'                       PI_COD_CLIENTE         => :P192_COD_CLIENTE,',
'                       PI_TIPO                => :P192_TIPO,',
'                       PO_COD_ENTIDAD         => :P192_COD_ENTIDAD,',
'                       PO_NOMBRE_APELLIDO     => :P192_NOMBRE_APELLIDO,',
'                       PO_NRO_SOLICITUD       => :P192_NRO_SOLICITUD,',
'                       PO_COD_CLIENTE         => :P192_COD_CLIENTE,',
'                       PO_TIPO                => :P192_TIPO);',
'                       ',
'    CRSOLRE.GUARDA_SALDOS(:P192_COD_EMPRESA, :P192_NRO_SOLICITUD,:P192_COD_ENTIDAD,:P192_COD_CLIENTE,:P192_NOMBRE_APELLIDO,',
'                          :P192_TELEFONO,:P192_MONTO_TOTAL_OPERACION,:P192_CALIFICACION,:P192_OBSERVACION,',
'                          :P192_EN_QUE_TRABAJA,:P192_DIRECCION,:P192_MENSAJE,:P192_TIPO,:P192_CARGO,:P192_SALARIO,',
'                          :P192_COD_USUARIO_UTIL,:P192_FEC_OPERACION,:P192_ULTIMA_COMPRA,:P192_PLAZO_BANCO,',
'                          :P192_LINEA_CREDITO,:P192_ANTIGUEDAD_BANCARIA,:P192_ENTIDAD_BANCARIA,:P192_SALDO_COMPRA,',
'                          :P192_CUOTAS_ABONADAS,:P192_FORMA_PAGO,:P192_GARANTIA,:P192_ENTIDAD,',
'                          :P192_FECHA_VTO,:P192_COD_MONEDA,:P192_FECHA_CIERRE,:P192_FEC_SOLICITA_REF);',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        RAISE_APPLICATION_ERROR(-20010, sqlerrm);',
'END;        '))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(42560238620231204)
,p_process_success_message=>unistr('El registro se guard\00F3 correctamente.')
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(42564228163231244)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'CLEAR'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(42564627055231248)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'CERRAR'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(42560238620231204)
);
wwv_flow_imp.component_end;
end;
/
