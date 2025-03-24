prompt --application/pages/page_00141
begin
--   Manifest
--     PAGE: 00141
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
 p_id=>141
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Casos'
,p_alias=>'CASOS1'
,p_page_mode=>'MODAL'
,p_step_title=>'Casos'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#APP_IMAGES#inputmask.js ',
'#APP_FILES#util_generico#MIN#.js'))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#btn {',
'        margin-top: 15px;',
'        display: flex;',
'        background:white;',
'        background-image: linear-gradient(180deg, #ffee00e4  0%, #fff890 100%);',
'        color:  darkblue;',
'        justify-content: center;',
'        align-items: center; ',
'        box-shadow: #6585af 1px 1px 5px 1px; ',
'        border-style: solid;',
'        border-width: 0.5px;',
'        border-color:  yellow;',
'/*',
'    background-image: linear-gradient(180deg, darkblue  0%, #003a85 100%);',
'    margin-top: 15px;',
'    border-radius: 0.5rem;',
'    border-style: solid;',
'    border-width: 0.5px;',
'    border-color:  darkblue;',
'    ',
'    box-shadow: #6585af 1px 1px 5px 1px; ',
'    */',
'}',
'',
'',
'',
'.t-Form-label{',
'    color:  darkblue !important;',
'    font-weight: bold !important;;',
'    }',
'',
'#REGCONTAC, #REGCASOS, #regconten{',
'      background-color: #487ab8 !important;',
'      box-shadow: black 1px 1px 5px 1px;}',
'',
'#P141_CAMPANIA, #P141_MOTIVO , #P141_OBSERVACION, #P141_CLIENTE, #P141_ESTADO, ',
'#P141_PROXIMO_CONTACTO , #P141_CANAL, #P141_COMENTARIO, #P141_CLIENTE_DISPLAY,',
'#P141_GARANTIA, #P141_TIPO_REF, #P141_NRO_REF {',
'    background: white;',
'    border-color: yellow; ',
'    color: darkblue;',
'}      ',
'',
'',
'',
'.apex_disabled{background-color: #003a8500 !important;} '))
,p_step_template=>wwv_flow_imp.id(40080790783263649)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'16'
,p_last_updated_by=>'CHARBA'
,p_last_upd_yyyymmddhh24miss=>'20240923090657'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(62413928440138234)
,p_plug_name=>'Casos'
,p_region_name=>'REGCASOS'
,p_region_template_options=>'t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(62414986165138245)
,p_plug_name=>'Contacto'
,p_region_name=>'REGCONTAC'
,p_region_template_options=>'t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>40
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(118929915958854124)
,p_plug_name=>'Contenido'
,p_region_name=>'regconten'
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40108275410263656)
,p_plug_display_sequence=>50
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(19649697720538234)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(118929915958854124)
,p_button_name=>'Guardar'
,p_button_static_id=>'btn'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft:t-Button--gapBottom'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Guardar'
,p_button_position=>'EDIT'
,p_icon_css_classes=>'fa fa-save'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(19654798620538237)
,p_branch_name=>'go_to_page_140'
,p_branch_action=>'f?p=&APP_ID.:140:&SESSION.::&DEBUG.:RR,::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(19649697720538234)
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(19645390829538231)
,p_name=>'P141_P_ID_CASO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(62413928440138234)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(19645734906538231)
,p_name=>'P141_CLIENTE'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(62413928440138234)
,p_prompt=>'Cliente'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_CLIENTES'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT  c.cod_cliente||'' - ''||p.nombre L, ',
'          c.cod_cliente V ',
'    FROM cc_clientes c, personas p, ident_personas i',
'    WHERE c.cod_empresa = :p_cod_empresa',
'      AND c.cod_persona = p.cod_persona',
'      AND c.estado =''A''',
'      AND I.COD_IDENT IN (''RUC'',''CI'')',
'      AND i.cod_persona = c.cod_persona',
' ORDER BY 1'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(19646114638538232)
,p_name=>'P141_ESTADO'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(62413928440138234)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(19646507990538232)
,p_name=>'P141_CAMPANIA'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(62413928440138234)
,p_prompt=>unistr('Campa\00F1a')
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select  descripcion,cod_campania ',
'from crm_campania ',
'where activo=''S'' ',
'and cod_empresa = :P_COD_EMPRESA',
'and :P141_P_ID_CASO IS NULL ',
'union ',
'select  descripcion,cod_campania ',
'from crm_campania ',
'where :P141_P_ID_CASO IS NOT NULL',
'and cod_empresa = :P_COD_EMPRESA',
'union all',
'SELECT descripcion_referencia, to_char(cod_referencia)',
'FROM cx_referencias ',
'WHERE cod_empresa = :P_COD_EMPRESA',
'AND cod_tipo_referencia = 10',
'AND estado = ''A''',
'order by 1 asc'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_icon_css_classes=>'fa-angle-double-down'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(19646998795538232)
,p_name=>'P141_MOTIVO'
,p_is_required=>true
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(62413928440138234)
,p_prompt=>'Motivo'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct m.descripcion, m.cod_motivo ',
'from crm_motivo m,',
'     crm_cam_can_mot d',
'where m.activo=''S''',
'and  m.cod_motivo=d.cod_motivo',
'AND  d.COD_CAMPANIA = :P141_CAMPANIA',
'and m.cod_empresa = :P_COD_EMPRESA',
'and :P141_P_ID_CASO IS NULL ',
'',
'union all',
'select distinct m.descripcion, m.cod_motivo ',
'from crm_motivo m ',
'where  :P141_P_ID_CASO IS not NULL ',
'and m.cod_empresa = :P_COD_EMPRESA',
'union all  ',
'SELECT descripcion_referencia, to_char(cod_referencia)',
'FROM cx_referencias ',
'WHERE cod_empresa = :P_COD_EMPRESA',
'AND cod_tipo_referencia = 11',
'AND estado = ''A''',
'order by 1 asc',
'',
'',
''))
,p_lov_cascade_parent_items=>'P141_CAMPANIA'
,p_ajax_items_to_submit=>'P141_CAMPANIA,P141_P_ID_CASO'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_icon_css_classes=>'fa-angle-double-down'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(19647389673538232)
,p_name=>'P141_PROXIMO_CONTACTO'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(62413928440138234)
,p_prompt=>'Proximo Contacto'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>10
,p_tag_css_classes=>'allow_only_numbers'
,p_tag_attributes=>'onfocusout="this.value= isValidDate(this.value);" onkeyup = "setDateFormat(this);"'
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(19647743102538232)
,p_name=>'P141_TIPO_REF'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(62413928440138234)
,p_prompt=>'Tipo Comprobante'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:ORDEN DE TRABAJO;ORT,PEDIDO;PED,NOTA DE CREDITO;NCR,FACTURA CREDITO;FCR,FACTURA CONTADO;FCO,SOLICITUD NO CONFORME;SNC,FACTURA DISTRIBUIDOR;FAC_DIST'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(19648110628538233)
,p_name=>'P141_NRO_REF'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(62413928440138234)
,p_prompt=>'Nro Comprobante'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(19648561902538233)
,p_name=>'P141_GARANTIA'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(62413928440138234)
,p_prompt=>unistr('Nro. de Garant\00EDa')
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
 p_id=>wwv_flow_imp.id(19648988271538233)
,p_name=>'P141_OBSERVACION'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(62413928440138234)
,p_prompt=>'Observacion'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>500
,p_cHeight=>2
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(19650091570538234)
,p_name=>'P141_CANAL'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(62414986165138245)
,p_prompt=>'Canal'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct m.descripcion, m.cod_canal',
'from crm_canal m ',
'where activo=''S'''))
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
 p_id=>wwv_flow_imp.id(19650420329538234)
,p_name=>'P141_COMENTARIO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(62414986165138245)
,p_prompt=>'Comentario'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>500
,p_cHeight=>3
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(60907443975885910)
,p_name=>'P141_NUM_TELEFONO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(62414986165138245)
,p_prompt=>unistr('Tel\00E9fono Contacto')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(118930055698854125)
,p_name=>'P141_ARTICULO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(118929915958854124)
,p_prompt=>unistr('C\00F3digo Art\00EDculo')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_ARTI_CRM_CONTENIDO'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select descripcion, cod_articulo,cod_art_corto ',
'from st_articulos ',
'where cod_empresa = :P_COD_EMPRESA',
'AND COD_RUBRO=''PR''',
'order by decode(nvl(estado,''A''),''A'',1,2), descripcion'))
,p_cSize=>30
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
,p_attribute_08=>'600'
,p_attribute_09=>'400'
,p_attribute_10=>'DESCRIPCION:P141_DESCRIPCION_ART'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(118930108667854126)
,p_name=>'P141_DISTRIBUIDOR'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(118929915958854124)
,p_prompt=>'DISTRIBUIDOR'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_DISTRIBUIDOR'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select c.cod_cliente||'' - ''||ltrim( rtrim( nvl( p.nombre, p.nomb_fantasia ) ) ) D, ',
'        c.cod_cliente R',
'  from cc_clientes c, personas p ',
' where c.cod_empresa = :P_COD_EMPRESA',
'   and c.cod_persona = p.cod_persona',
'order by 1'))
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(118930252905854127)
,p_name=>'P141_FECHA_COMPRA'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(118929915958854124)
,p_prompt=>'Fecha Compra'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>10
,p_tag_css_classes=>'allow_only_numbers'
,p_tag_attributes=>'onfocusout="this.value= isValidDate(this.value);" onkeyup = "setDateFormat(this);"'
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(118930320874854128)
,p_name=>'P141_FECHA_AGENDA'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(118929915958854124)
,p_prompt=>'Fecha Agendada'
,p_format_mask=>'DD/MM/YYYY'
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
 p_id=>wwv_flow_imp.id(118930441632854129)
,p_name=>'P141_HORA_AGENDA'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(118929915958854124)
,p_prompt=>'Hora agendada'
,p_format_mask=>'HH24:MI'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4
,p_tag_css_classes=>'allow_only_numbers'
,p_tag_attributes=>'onfocusout="this.value=valida_hora_1(this.value) "'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(118930539871854130)
,p_name=>'P141_DIRECCION'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(118929915958854124)
,p_prompt=>'Direccion'
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
 p_id=>wwv_flow_imp.id(118930656282854131)
,p_name=>'P141_REFERENCIA_UBICACION'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(118929915958854124)
,p_prompt=>'Referencia Ubicacion'
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
 p_id=>wwv_flow_imp.id(118930710533854132)
,p_name=>'P141_INFORME_CLIENTE'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(118929915958854124)
,p_prompt=>'Reclamo Cliente'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cMaxlength=>300
,p_cHeight=>2
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(118931235975854137)
,p_name=>'P141_DESCRIPCION_ART'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(118929915958854124)
,p_prompt=>unistr('Descripci\00F3n del Articulo')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>200
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(118931330355854138)
,p_name=>'P141_NRO_TELEF_RECEPCIONA'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(118929915958854124)
,p_prompt=>unistr('N\00BA Telef. Recepciona')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>15
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(19650966529538235)
,p_validation_name=>'va_canal'
,p_validation_sequence=>10
,p_validation=>'P141_CANAL'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Debe seleccionar un canal.'
,p_associated_item=>wwv_flow_imp.id(19650091570538234)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(19651321332538235)
,p_validation_name=>'va_cliente'
,p_validation_sequence=>30
,p_validation=>'P141_CLIENTE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Debe seleccionar el Cliente.'
,p_associated_item=>wwv_flow_imp.id(19645734906538231)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(19651772132538235)
,p_validation_name=>'va_campania'
,p_validation_sequence=>40
,p_validation=>'P141_CAMPANIA'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>unistr('Debe seleccionar la Campa\00F1a.')
,p_associated_item=>wwv_flow_imp.id(19646507990538232)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(19652164288538235)
,p_validation_name=>'va_motivo'
,p_validation_sequence=>50
,p_validation=>'P141_MOTIVO'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Debe seleccionar el Motivo.'
,p_associated_item=>wwv_flow_imp.id(19646998795538232)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(19653248539538236)
,p_name=>'DA_ID_CASO'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P141_P_ID_CASO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(19653753828538237)
,p_event_id=>wwv_flow_imp.id(19653248539538236)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'select   cod_estado, observacion, proximo_contacto----,cod_cliente,cod_campania, cod_motivo',
'INTO :P141_ESTADO,:P141_OBSERVACION,:P141_PROXIMO_CONTACTO',
'    ---,:P141_CLIENTE, :P141_CAMPANIA, :P141_MOTIVO',
'from inv.crm_casos',
'WHERE COD_EMPRESA=''1''',
'AND id_caso= :P141_P_ID_CASO',
';',
'EXCEPTION ',
'WHEN OTHERS THEN',
'/*',
'    :P141_CLIENTE:=NULL;',
'    :P141_CAMPANIA:=NULL;',
'    :P141_MOTIVO:=NULL;',
'    */',
'    :P141_OBSERVACION:=null;',
'    :P141_PROXIMO_CONTACTO:=NULL;',
'    :P141_ESTADO:=NULL;',
'',
'END;'))
,p_attribute_02=>'P141_P_ID_CASO'
,p_attribute_03=>'P141_ESTADO,P141_PROXIMO_CONTACTO,P141_INFORME_CLIENTE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(19654295099538237)
,p_event_id=>wwv_flow_imp.id(19653248539538236)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(62413928440138234)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(54421868309716937)
,p_name=>'da_bloquea_cab'
,p_event_sequence=>30
,p_condition_element=>'P141_P_ID_CASO'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(54421978580716938)
,p_event_id=>wwv_flow_imp.id(54421868309716937)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
' ',
'',
'',
'$("#P141_OBSERVACION").attr(''readOnly'', true);',
'$("#P141_GARANTIA").attr(''readOnly'', true);',
'$("#P141_NRO_REF").attr(''readOnly'', true); ',
'',
'$("#P141_CLIENTE").attr(''readOnly'', true);',
'$("#P141_PROXIMO_CONTACTO").attr(''readOnly'', true); ',
'',
'',
'$("#P141_MOTIVO").css(''pointer-events'',''none'');',
'$("#P141_CAMPANIA").css(''pointer-events'',''none'');',
'$("#P141_ESTADO").css(''pointer-events'',''none'');',
'$("#P141_TIPO_REF").css(''pointer-events'',''none'');',
' ',
' /*',
'  $("#REGCASOS").addClass(''apex_disabled'');',
'*/',
' '))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(68483360712692739)
,p_name=>'da_validar_tipo'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P141_TIPO_REF'
,p_condition_element=>'P141_TIPO_REF'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'ORT'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(68483460155692740)
,p_event_id=>wwv_flow_imp.id(68483360712692739)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'//$(''#P141_NRO_REF'').attr("required", "true");',
'',
'var numero_ref = $(''#P141_NRO_REF'').val();',
'var numero_garantia = $(''#P141_GARANTIA'').val();',
'',
'if((numero_ref == "")&&(numero_garantia == "")){',
'//alert("roberto");',
'}else{',
'',
'}',
'',
''))
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(19652488584538235)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'crea_caso'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_id_caso NUMBER; ',
'    VRESP   VARCHAR2(3200);',
'begin',
'  inv.crmcasocontac.crea_caso(p_cod_empresa => :p_cod_empresa,',
'                              p_campania => :P141_CAMPANIA,',
'                              p_motivo => :P141_MOTIVO,',
'                              p_cliente => :P141_CLIENTE,',
'                              p_observacion => :P141_OBSERVACION,',
'                              p_proximo_contacto => :P141_PROXIMO_CONTACTO,',
'                              p_tipo_ref => :P141_TIPO_REF,',
'                              p_nro_ref => :P141_NRO_REF,',
'                              p_garantia => :P141_GARANTIA,',
'                              p_id_caso => v_id_caso,',
'                              P_RESULTADO =>VRESP);',
'  IF VRESP IS NULL THEN',
'      inv.crmcasocontac.crea_contacto(p_id_caso => v_id_caso,',
'                                      p_canal => :P141_CANAL,',
'                                      p_comentario => :P141_COMENTARIO,',
'                                      p_num_telefono => :P141_NUM_TELEFONO,',
'                                      P_RESULTADO =>VRESP);',
'',
'        IF VRESP IS NULL THEN',
'                  inv.crmcasocontac.crea_contenido(p_cod_empresa => :p_cod_empresa,',
'                                                   p_id_caso => v_id_caso,',
'                                                   p_cod_articulo => :P141_ARTICULO,',
'                                                   p_cod_distribuidor => :P141_distribuidor,',
'                                                   p_fecha_compra => :p141_fecha_compra,',
'                                                   p_fecha_agenda => :p141_fecha_agenda,',
'                                                   p_hora_agenda => :p141_hora_agenda,',
'                                                   p_direccion => :p141_direccion,',
'                                                   p_referencia_ubi => :P141_REFERENCIA_UBICACION,',
'                                                   p_observacion => :P141_INFORME_CLIENTE,',
'                                                   p_nro_telefono => :P141_NRO_TELEF_RECEPCIONA,',
'                                                   p_descripcion_art => :P141_DESCRIPCION_ART ,',
'                                                   P_RESULTADO =>VRESP                                  ',
'                                                   );',
'        ELSE',
'            RAISE_APPLICATION_ERROR(-20000,''Error al intentar crear el Contacto: '' || VRESP); ',
'        END IF ;',
'    ELSE',
'         RAISE_APPLICATION_ERROR(-20000,''Error al intentar crear el Caso: '' || VRESP); ',
'    END IF;',
' ',
'      apex_application.g_print_success_message := ''<span class="notification">Nro: ''||v_id_caso||'' - </span>'';',
'',
'exception',
'when others then',
'        RAISE_APPLICATION_ERROR(-20000,''Error al intentar crear el Caso: '' || SQLERRM);',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'No se ha podido generar el Caso.'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(19649697720538234)
,p_process_when=>'P141_P_ID_CASO'
,p_process_when_type=>'ITEM_IS_NULL'
,p_process_success_message=>'Caso generado.'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(19652804962538236)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'crea_contacto'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_id_contacto NUMBER;',
'    VRESP   VARCHAR2(3200);',
'begin',
'',
'  inv.crmcasocontac.crea_contacto(p_id_caso => :P141_P_ID_CASO,',
'                                  p_canal => :P141_CANAL,',
'                                  p_comentario => :P141_COMENTARIO,',
'                                  p_num_telefono => :P141_NUM_TELEFONO,',
'                                  P_RESULTADO => VRESP);',
'         ',
'                 COMMIT;',
'       ',
'        IF VRESP   IS NULL THEN',
'            apex_application.g_print_success_message := ''<span class="notification"> </span>''; ',
'        ELSE',
'            RAISE_APPLICATION_ERROR(-20000,''Error al intentar crear el Contacto: '' || VRESP); ',
'        END IF ; ',
'exception',
'when others then',
'        RAISE_APPLICATION_ERROR(-20000,''Error al intentar crear el Contacto: '' || SQLERRM);',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'No se ha podido generar el Contacto.'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(19649697720538234)
,p_process_when=>'P141_P_ID_CASO'
,p_process_when_type=>'ITEM_IS_NOT_NULL'
,p_process_success_message=>'Contacto generado.'
);
wwv_flow_imp.component_end;
end;
/
