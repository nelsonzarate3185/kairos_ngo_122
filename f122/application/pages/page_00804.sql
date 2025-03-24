prompt --application/pages/page_00804
begin
--   Manifest
--     PAGE: 00804
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
 p_id=>804
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'casos_reapertura'
,p_alias=>'CASOS-REAPERTURA'
,p_page_mode=>'MODAL'
,p_step_title=>'casos_reapertura'
,p_allow_duplicate_submissions=>'N'
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
'#P141_OBSERVACION, #P791_CLIENTE, #P141_ESTADO, ',
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
,p_last_upd_yyyymmddhh24miss=>'20250208092941'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(914230881396273773)
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
 p_id=>wwv_flow_imp.id(970746868914989663)
,p_plug_name=>'Contenido'
,p_region_name=>'regconten'
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40108275410263656)
,p_plug_display_sequence=>50
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'NEVER'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(431755068221315454)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(914230881396273773)
,p_button_name=>'Guardar'
,p_button_static_id=>'btn'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft:t-Button--gapBottom'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Guardar'
,p_button_position=>'CREATE'
,p_icon_css_classes=>'fa fa-save'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(431768626098315459)
,p_branch_name=>'go_to_page_140'
,p_branch_action=>'f?p=&APP_ID.:140:&SESSION.::&DEBUG.:RR,::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(431755068221315454)
,p_branch_sequence=>10
,p_branch_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(431747175010315450)
,p_name=>'P804_P_ID_CASO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(914230881396273773)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(431747568204315451)
,p_name=>'P804_CLIENTE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(914230881396273773)
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
 p_id=>wwv_flow_imp.id(431747900181315451)
,p_name=>'P804_ESTADO'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(914230881396273773)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(431748327738315451)
,p_name=>'P804_CANAL'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(914230881396273773)
,p_prompt=>'Canal'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LV_CX_REFERENCIA_CANAL'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select c.cod_referencia, c.descripcion_referencia',
' from CX_REFERENCIAS c',
' where  c.cod_empresa = :P_COD_EMPRESA',
' and C.COD_TIPO_REFERENCIA = ''10'';'))
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
 p_id=>wwv_flow_imp.id(431748702159315451)
,p_name=>'P804_VOZ_CLIENTE'
,p_is_required=>true
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(914230881396273773)
,p_prompt=>'Voz del Cliente'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LV_CX_VOZ_CLIENTE '
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select c.cod_referencia, c.descripcion_referencia',
' from CX_REFERENCIAS c',
' where  c.cod_empresa = :P_COD_EMPRESA',
' AND C.COD_TIPO_REFERENCIA = ''11'';'))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P804_CANAL'
,p_ajax_items_to_submit=>'P804_CANAL,P804_P_ID_CASO'
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
 p_id=>wwv_flow_imp.id(431749183624315452)
,p_name=>'P804_ESTADO_CONTACTO'
,p_is_required=>true
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(914230881396273773)
,p_prompt=>'Estado Contacto'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:Derivado;D,Gestionado;G,Rechazado;R,Finalizado;F'
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
 p_id=>wwv_flow_imp.id(431749532417315452)
,p_name=>'P804_ESTADO_CASO'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(914230881396273773)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(431749968963315452)
,p_name=>'P804_TIPO_REF'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(914230881396273773)
,p_prompt=>'Tipo '
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LV_CX_TIPO_REFERENCIA'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select c.cod_referencia, c.descripcion_referencia',
' from CX_REFERENCIAS c',
' where  c.cod_empresa = :P_COD_EMPRESA',
' and C.COD_TIPO_REFERENCIA = ''13'';'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(431750316685315452)
,p_name=>'P804_NRO_REF'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(914230881396273773)
,p_prompt=>'Nro Comprobante'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(431750751761315452)
,p_name=>'P804_AREA_DERIVAVION'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(914230881396273773)
,p_prompt=>'Area Derivacion'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LV_CX_AREA_DERIVACION'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select c.cod_referencia, c.descripcion_referencia',
' from CX_REFERENCIAS c',
' where  C.COD_TIPO_REFERENCIA = ''12''',
' and c.cod_empresa = :P_COD_EMPRESA',
' --AND ''D'' = :P791_ESTADO_CONTACTO',
' ;'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(431751121053315452)
,p_name=>'P804_NRO_QUALTRICS'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(914230881396273773)
,p_prompt=>'Nro Qualtrics'
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
 p_id=>wwv_flow_imp.id(431751570363315452)
,p_name=>'P804_NRO_CONTACTO'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(914230881396273773)
,p_prompt=>'Contacto'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(431751928454315453)
,p_name=>'P804_FECHA_HORA'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(914230881396273773)
,p_prompt=>'Fecha Hora'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(431752321836315453)
,p_name=>'P804_ASESOR'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(914230881396273773)
,p_prompt=>'Asesor'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(431753169645315453)
,p_name=>'P804_PROXIMO_CONTACTO'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(914230881396273773)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(431753513452315453)
,p_name=>'P804_CAMPANIA'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(914230881396273773)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(431753945728315453)
,p_name=>'P804_MOTIVO'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(914230881396273773)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(431754374688315454)
,p_name=>'P804_GARANTIA'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_imp.id(914230881396273773)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(431755435252315454)
,p_name=>'P804_ARTICULO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(970746868914989663)
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
,p_attribute_10=>'DESCRIPCION:P804_DESCRIPCION_ART'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(431755818984315454)
,p_name=>'P804_DESCRIPCION_ART'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(970746868914989663)
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
 p_id=>wwv_flow_imp.id(431756221598315455)
,p_name=>'P804_DISTRIBUIDOR'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(970746868914989663)
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
 p_id=>wwv_flow_imp.id(431756645672315455)
,p_name=>'P804_FECHA_COMPRA'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(970746868914989663)
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
 p_id=>wwv_flow_imp.id(431757025095315455)
,p_name=>'P804_FECHA_AGENDA'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(970746868914989663)
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
 p_id=>wwv_flow_imp.id(431757408269315455)
,p_name=>'P804_HORA_AGENDA'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(970746868914989663)
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
 p_id=>wwv_flow_imp.id(431757865610315455)
,p_name=>'P804_NRO_TELEF_RECEPCIONA'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(970746868914989663)
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
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(431758242747315455)
,p_name=>'P804_DIRECCION'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(970746868914989663)
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
 p_id=>wwv_flow_imp.id(431758692977315456)
,p_name=>'P804_REFERENCIA_UBICACION'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(970746868914989663)
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
 p_id=>wwv_flow_imp.id(431759073189315456)
,p_name=>'P804_INFORME_CLIENTE'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(970746868914989663)
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
 p_id=>wwv_flow_imp.id(433038565849904225)
,p_name=>'P804_IND_URGENTE'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_imp.id(914230881396273773)
,p_prompt=>'Urgente'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(433038660796904226)
,p_name=>'P804_OBSERVACION'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_imp.id(914230881396273773)
,p_prompt=>'Observacion'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(431759995371315456)
,p_validation_name=>'va_cliente'
,p_validation_sequence=>30
,p_validation=>'P804_CLIENTE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Debe seleccionar el Cliente.'
,p_associated_item=>wwv_flow_imp.id(431747568204315451)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(431760322401315456)
,p_validation_name=>'va_campania'
,p_validation_sequence=>40
,p_validation=>'P804_CANAL'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>unistr('Debe seleccionar la Campa\00F1a.')
,p_associated_item=>wwv_flow_imp.id(431748327738315451)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(431760766482315457)
,p_validation_name=>'va_motivo'
,p_validation_sequence=>50
,p_validation=>'P804_VOZ_CLIENTE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Debe seleccionar el Motivo.'
,p_associated_item=>wwv_flow_imp.id(431748702159315451)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(431761109966315457)
,p_validation_name=>'Va_OT_Garantia'
,p_validation_sequence=>60
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF  TRIM(:P804_NRO_REF) IS NULL AND TRIM(:P804_GARANTIA) IS NULL  THEN',
'        RETURN '' Debe cargar el Nro OT y/o Nro Garantia'';',
'END IF;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_always_execute=>'Y'
,p_validation_condition=>'P804_CANAL'
,p_validation_condition2=>'15'
,p_validation_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_when_button_pressed=>wwv_flow_imp.id(431755068221315454)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(431761572739315457)
,p_validation_name=>'va_fecha_compra'
,p_validation_sequence=>80
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF nvl(to_date(:P804_FECHA_COMPRA,''DD/MM/YYYY''),sysdate+1)>trunc(sysdate) THEN',
'    RETURN ''Debe cargar correctamente la Fecha de Compra.'';',
'END IF;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_validation_condition=>'P804_FECHA_COMPRA'
,p_validation_condition_type=>'ITEM_IS_NOT_NULL'
,p_associated_item=>wwv_flow_imp.id(431756645672315455)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(431759554389315456)
,p_validation_name=>'P_791_Valida_derivacion'
,p_validation_sequence=>90
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
' varea varchar2(100);',
'begin',
'   select area_derivacion',
'    into varea',
'   from  CRM_CAM_CAN_MOT',
'   where cod_empresa = ''1''',
'     and voz_cliente = :P804_VOZ_CLIENTE',
'     and tipo_contacto = :P804_TIPO_REF;',
'',
' :P804_AREA_DERIVAVION := varea;',
' exception',
'  when others then',
'raise_application_error(-20001,sqlerrm);',
'end;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_validation_condition_type=>'NEVER'
,p_associated_item=>wwv_flow_imp.id(431749968963315452)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(431764435102315458)
,p_name=>'DA_ID_CASO'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P804_P_ID_CASO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(431764902043315458)
,p_event_id=>wwv_flow_imp.id(431764435102315458)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'select   cod_estado, proximo_contacto----,cod_cliente,cod_campania, cod_motivo',
'INTO :P804_ESTADO,:P804_PROXIMO_CONTACTO',
'    ---,:P804_CLIENTE, :P804_CAMPANIA, :P804_MOTIVO',
'from inv.crm_casos',
'WHERE COD_EMPRESA=:P_COD_EMPRESA',
'AND id_caso= :P804_P_ID_CASO',
';',
'EXCEPTION ',
'WHEN OTHERS THEN',
'/*',
'    :P804_CLIENTE:=NULL;',
'    :P804_CAMPANIA:=NULL;',
'    :P804_MOTIVO:=NULL;',
'    */',
'    :P804_OBSERVACION:=null;',
'    :P804_PROXIMO_CONTACTO:=NULL;',
'    :P804_ESTADO:=NULL;',
'',
'END;'))
,p_attribute_02=>'P804_P_ID_CASO'
,p_attribute_03=>'P804_ESTADO,P804_INFORME_CLIENTE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(431765476505315458)
,p_event_id=>wwv_flow_imp.id(431764435102315458)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(914230881396273773)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(431765850992315458)
,p_name=>'da_bloquea_cab'
,p_event_sequence=>30
,p_condition_element=>'P804_P_ID_CASO'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(431766355023315459)
,p_event_id=>wwv_flow_imp.id(431765850992315458)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
' ',
'',
'',
'/*$("#P804_OBSERVACION").attr(''readOnly'', true);',
'/*$("#P804_GARANTIA").attr(''readOnly'', true);*/',
'$("#P804_NRO_REF").attr(''readOnly'', true); ',
'',
'$("#P804_CLIENTE").attr(''readOnly'', true);',
'$("#P804_PROXIMO_CONTACTO").attr(''readOnly'', true); ',
'',
'',
'/*$("#P804_MOTIVO").css(''pointer-events'',''none'');',
'$("#P804_CAMPANIA").css(''pointer-events'',''none'');*/',
'$("#P804_ESTADO").css(''pointer-events'',''none'');',
'$("#P804_TIPO_REF").css(''pointer-events'',''none'');',
' ',
' /*',
'  $("#REGCASOS").addClass(''apex_disabled'');',
'*/',
' '))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(431767610599315459)
,p_name=>'da_bloquea_derivaciones'
,p_event_sequence=>40
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(431768146372315459)
,p_event_id=>wwv_flow_imp.id(431767610599315459)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P804_AREA_DERIVAVION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(431766722418315459)
,p_name=>'da_validar_tipo'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P804_TIPO_REF'
,p_condition_element=>'P804_TIPO_REF'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'ORT'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(431767205619315459)
,p_event_id=>wwv_flow_imp.id(431766722418315459)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'//$(''#P804_NRO_REF'').attr("required", "true");',
'',
'var numero_ref = $(''#P804_NRO_REF'').val();',
'var numero_garantia = $(''#P804_GARANTIA'').val();',
'',
'if((numero_ref == "")&&(numero_garantia == "")){',
'//alert("seeee");',
'}else{',
'',
'}',
'',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(431762685110315457)
,p_name=>'da_derivacion'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P804_TIPO_REF'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(431763100692315457)
,p_event_id=>wwv_flow_imp.id(431762685110315457)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if nvl(:P804_ESTADO_CONTACTO,''A'') = ''D'' then',
'    declare',
'     varea varchar2(100);',
'    begin',
'       select area_derivacion',
'        into :P804_AREA_DERIVAVION',
'       from  CRM_CAM_CAN_MOT',
'       where cod_empresa = :P_COD_EMPRESA',
'         and voz_cliente = :P804_VOZ_CLIENTE',
'         and tipo_contacto = :P804_TIPO_REF;',
'     exception',
'      when others then',
'    raise_application_error(-20001,sqlerrm);',
'    end;',
'end if;'))
,p_attribute_02=>'P804_VOZ_CLIENTE,P804_TIPO_REF,P804_ESTADO_CONTACTO'
,p_attribute_03=>'P804_AREA_DERIVAVION'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(431763586925315458)
,p_name=>'New'
,p_event_sequence=>70
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P804_ESTADO_CONTACTO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(431764069679315458)
,p_event_id=>wwv_flow_imp.id(431763586925315458)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if (nvl(:P804_ESTADO_CONTACTO,''A'') = ''D'' and :P804_TIPO_REF is not null) then',
'    declare',
'     varea varchar2(100);',
'    begin',
'       select area_derivacion',
'        into :P804_AREA_DERIVAVION',
'       from  CRM_CAM_CAN_MOT',
'       where cod_empresa = :P_COD_EMPRESA',
'         and voz_cliente = :P804_VOZ_CLIENTE',
'         and tipo_contacto = :P804_TIPO_REF;',
'     exception',
'      when others then',
'    raise_application_error(-20001,sqlerrm);',
'    end;',
'end if;'))
,p_attribute_02=>'P804_TIPO_REF,P804_VOZ_CLIENTE,P804_ESTADO_CONTACTO'
,p_attribute_03=>'P804_AREA_DERIVAVION'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(433038224250904222)
,p_name=>'da_completa'
,p_event_sequence=>80
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P804_CLIENTE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(433038369634904223)
,p_event_id=>wwv_flow_imp.id(433038224250904222)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'    declare',
'     varea varchar2(100);',
'    begin',
'       select area_derivacion,voz_cliente,tipo_comp_ref,canal',
'        into :P804_AREA_DERIVAVION,:P804_VOZ_CLIENTE, :P804_TIPO_REF, :P804_CANAL',
'       from  crm_casos',
'       where cod_empresa = :P_COD_EMPRESA',
'         and id_caso     = :P804_P_ID_CASO;',
'     exception',
'      when others then',
'    raise_application_error(-20001,sqlerrm);',
'    end;',
''))
,p_attribute_02=>'P804_P_ID_CASO'
,p_attribute_03=>'P804_AREA_DERIVAVION,P804_VOZ_CLIENTE,P804_TIPO_REF,P804_CANAL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(431761803672315457)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'crea_caso'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_id_caso NUMBER; ',
'    VRESP   VARCHAR2(3200);',
'begin',
'  inv.crmcasocontac.REABRIR_CASO(p_cod_empresa => :p_cod_empresa,',
'                                  p_campania => :P804_CAMPANIA,',
'                                  p_motivo => :P804_MOTIVO,',
'                                  p_cliente => :P804_CLIENTE,',
'                                  p_observacion => :P804_OBSERVACION,',
'                                  p_proximo_contacto => :P804_PROXIMO_CONTACTO,',
'                                  p_tipo_ref => :P804_TIPO_REF,',
'                                  p_nro_ref => :P804_NRO_REF,',
'                                  p_garantia => :P804_GARANTIA,',
'                                  p_id_caso => v_id_caso,',
'                                  p_canal => :P804_CANAL,',
'                                  P_VOZ_CLIENTE => :P804_VOZ_CLIENTE,',
'                                  P_AREA_DERIVACION => :P804_AREA_DERIVAVION,',
'                                  P_NRO_QUALTRICS => :P804_NRO_QUALTRICS,',
'                                  P_NRO_CONTACTO => :P804_NRO_CONTACTO,',
'                                  P_ASESOR => :P804_ASESOR,',
'                                  P_ESTADO_CONTACTO => :P804_ESTADO_CONTACTO,',
'                                  P_IND_URGENTE => :P804_IND_URGENTE,',
'                                  P_id_caso2 => :P804_P_ID_CASO,',
'                                  P_RESULTADO =>VRESP);',
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
'end;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'No se ha podido generar el Caso.'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(431755068221315454)
,p_process_when=>'P804_P_ID_CASO'
,p_process_when_type=>'ITEM_IS_NOT_NULL'
,p_process_success_message=>'Caso generado.'
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
 p_id=>wwv_flow_imp.id(433039151799904231)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'CLOSE_DIALOG'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(431762262399315457)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'crea_contacto'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_id_contacto NUMBER;',
'    VRESP   VARCHAR2(3200);',
'begin',
'',
'  inv.crmcasocontac.crea_contacto(p_id_caso => :P804_P_ID_CASO,',
'                                  p_canal => :P804_CANAL,',
'                                  p_comentario => :P804_COMENTARIO,',
'                                  p_num_telefono => :P804_NUM_TELEFONO,',
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
,p_process_when_button_id=>wwv_flow_imp.id(431755068221315454)
,p_process_when_type=>'NEVER'
,p_process_success_message=>'Contacto generado.'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(433038445655904224)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'INI'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'    declare',
'     varea varchar2(100);',
'    begin',
'       select area_derivacion,voz_cliente,cx_tipo_contacto,canal',
'        into :P804_AREA_DERIVAVION,:P804_VOZ_CLIENTE, :P804_TIPO_REF, :P804_CANAL',
'       from  crm_casos',
'       where cod_empresa = :P_COD_EMPRESA',
'         and id_caso     = :P804_P_ID_CASO;',
'     exception',
'      when others then',
'    raise_application_error(-20001,sqlerrm);',
'    end;',
''))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp.component_end;
end;
/
