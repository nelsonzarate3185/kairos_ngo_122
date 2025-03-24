prompt --application/pages/page_00791
begin
--   Manifest
--     PAGE: 00791
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
 p_id=>791
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'casos_v1'
,p_alias=>'CASOS-V1'
,p_page_mode=>'MODAL'
,p_step_title=>unistr('Generaci\00F3n de contacto')
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
'.apex_disabled{background-color: #003a8500 !important;} ',
'',
'/* Ocultar el checkbox original */',
'#P791_IND_URGENTE {',
'  //  display: none;',
'}',
'',
'/* Estilizar el label para parecer un switch */',
'#P791_IND_URGENTE_LABEL {',
'    display: inline-block;',
'    background-color: white;',
'    color: darkblue;',
'    /*border: 2px solid darkblue;',
'    padding: 20px 15px 15px 15px;*/',
'    //border-radius: 15px;',
'    cursor: pointer;',
'    transition: all 0.3s ease-in-out;',
'	font-weight: bold;',
'}',
'',
unistr('/* Cambiar color cuando el checkbox est\00E1 marcado */'),
'#P791_IND_URGENTE:checked + #P791_IND_URGENTE_LABEL {',
'    background-color: red;',
'    color: white;',
'}',
''))
,p_step_template=>wwv_flow_imp.id(40080790783263649)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'16'
,p_last_updated_by=>'CHARBA'
,p_last_upd_yyyymmddhh24miss=>'20250215092810'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(482484312952958324)
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
 p_id=>wwv_flow_imp.id(539000300471674214)
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
 p_id=>wwv_flow_imp.id(420076633567820096)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(482484312952958324)
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
 p_id=>wwv_flow_imp.id(420087951978820105)
,p_branch_name=>'go_to_page_140'
,p_branch_action=>'f?p=&APP_ID.:140:&SESSION.::&DEBUG.:RR,::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(420076633567820096)
,p_branch_sequence=>10
,p_branch_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(259354228088445503)
,p_name=>'P791_UTILIDAD'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_imp.id(482484312952958324)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(259354470543445505)
,p_name=>'P791_IND_DERIVADO'
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_imp.id(482484312952958324)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(259355667788445517)
,p_name=>'P791_ADJUNTO'
,p_item_sequence=>270
,p_item_plug_id=>wwv_flow_imp.id(482484312952958324)
,p_prompt=>'Adjunto'
,p_display_as=>'NATIVE_FILE'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'APEX_APPLICATION_TEMP_FILES'
,p_attribute_09=>'SESSION'
,p_attribute_10=>'Y'
,p_attribute_11=>'image/png,image/jpg,image/jpeg,application/pdf'
,p_attribute_12=>'DROPZONE_BLOCK'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(420053065355119609)
,p_name=>'P791_ESTADO_CONTACTO'
,p_is_required=>true
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(482484312952958324)
,p_prompt=>'Estado Contacto'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_CX_ESTADOS_DINAMICO'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select C.COD_EMPRESA,',
'       C.COD_ESTADO,',
'       C.DESC_ESTADO,',
'       C.UTILIDAD,',
'       C.DERIVADO,',
'       C.FINALIZADO,',
'       C.REABRIR,',
'       C.GESTIONADO ',
'from inv.CC_ESTADOS_CX c',
'WHERE c.cod_empresa = :p_cod_empresa',
'AND (C.DERIVADO = :P791_IND_DERIVADO) '))
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_icon_css_classes=>'fa-angle-double-down'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(420053185085119610)
,p_name=>'P791_ESTADO_CASO'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(482484312952958324)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(420053248331119611)
,p_name=>'P791_NRO_QUALTRICS'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(482484312952958324)
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
 p_id=>wwv_flow_imp.id(420053368718119612)
,p_name=>'P791_CLIENTE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(482484312952958324)
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
 p_id=>wwv_flow_imp.id(420053461248119613)
,p_name=>'P791_NRO_CONTACTO'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(482484312952958324)
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
 p_id=>wwv_flow_imp.id(420053542175119614)
,p_name=>'P791_FECHA_HORA'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(482484312952958324)
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
 p_id=>wwv_flow_imp.id(420053622319119615)
,p_name=>'P791_ASESOR'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(482484312952958324)
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
 p_id=>wwv_flow_imp.id(420053762459119616)
,p_name=>'P791_PROXIMO_CONTACTO'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(482484312952958324)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(420053886372119617)
,p_name=>'P791_CAMPANIA'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_imp.id(482484312952958324)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(420053967064119618)
,p_name=>'P791_MOTIVO'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_imp.id(482484312952958324)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(420054053089119619)
,p_name=>'P791_GARANTIA'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_imp.id(482484312952958324)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(420070925525820092)
,p_name=>'P791_P_ID_CASO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(482484312952958324)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(420071780236820093)
,p_name=>'P791_ESTADO'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(482484312952958324)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(420072161941820093)
,p_name=>'P791_CANAL'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(482484312952958324)
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
 p_id=>wwv_flow_imp.id(420072597990820093)
,p_name=>'P791_VOZ_CLIENTE'
,p_is_required=>true
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(482484312952958324)
,p_prompt=>'Voz del Cliente'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LV_CX_VOZ_CLIENTE '
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select c.cod_referencia, c.descripcion_referencia',
' from CX_REFERENCIAS c',
' where  c.cod_empresa = :P_COD_EMPRESA',
' AND C.COD_TIPO_REFERENCIA = ''11'';'))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P791_CANAL'
,p_ajax_items_to_submit=>'P791_CANAL,P791_P_ID_CASO'
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
 p_id=>wwv_flow_imp.id(420073311193820094)
,p_name=>'P791_TIPO_REF'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(482484312952958324)
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
 p_id=>wwv_flow_imp.id(420073721675820094)
,p_name=>'P791_NRO_REF'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(482484312952958324)
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
 p_id=>wwv_flow_imp.id(420074159185820094)
,p_name=>'P791_AREA_DERIVAVION'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(482484312952958324)
,p_prompt=>'Area Derivacion'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_CX_AREA_DERINSERT'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
' select c.cod_referencia, c.descripcion_referencia',
' from CX_REFERENCIAS c',
' where  C.COD_TIPO_REFERENCIA = ''12''',
' and c.cod_empresa = :P_COD_EMPRESA',
' AND ''S'' = :P791_IND_DERIVADO',
' ;'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(420074583234820095)
,p_name=>'P791_OBSERVACION'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(482484312952958324)
,p_prompt=>'Comentario'
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
 p_id=>wwv_flow_imp.id(420077063661820097)
,p_name=>'P791_ARTICULO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(539000300471674214)
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
,p_attribute_10=>'DESCRIPCION:P791_DESCRIPCION_ART'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(420077411416820097)
,p_name=>'P791_DESCRIPCION_ART'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(539000300471674214)
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
 p_id=>wwv_flow_imp.id(420077813407820097)
,p_name=>'P791_DISTRIBUIDOR'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(539000300471674214)
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
 p_id=>wwv_flow_imp.id(420078206695820097)
,p_name=>'P791_FECHA_COMPRA'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(539000300471674214)
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
 p_id=>wwv_flow_imp.id(420078606419820098)
,p_name=>'P791_FECHA_AGENDA'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(539000300471674214)
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
 p_id=>wwv_flow_imp.id(420079048768820098)
,p_name=>'P791_HORA_AGENDA'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(539000300471674214)
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
 p_id=>wwv_flow_imp.id(420079455030820098)
,p_name=>'P791_NRO_TELEF_RECEPCIONA'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(539000300471674214)
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
 p_id=>wwv_flow_imp.id(420079809774820098)
,p_name=>'P791_DIRECCION'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(539000300471674214)
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
 p_id=>wwv_flow_imp.id(420080231005820098)
,p_name=>'P791_REFERENCIA_UBICACION'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(539000300471674214)
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
 p_id=>wwv_flow_imp.id(420080647007820098)
,p_name=>'P791_INFORME_CLIENTE'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(539000300471674214)
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
 p_id=>wwv_flow_imp.id(433037820158904218)
,p_name=>'P791_IND_URGENTE'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(482484312952958324)
,p_item_default=>'N'
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
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(420081556417820099)
,p_validation_name=>'va_cliente'
,p_validation_sequence=>30
,p_validation=>'P791_CLIENTE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Debe seleccionar el Cliente.'
,p_associated_item=>wwv_flow_imp.id(420053368718119612)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(420081978920820100)
,p_validation_name=>'va_campania'
,p_validation_sequence=>40
,p_validation=>'P791_CANAL'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>unistr('Debe seleccionar la Campa\00F1a.')
,p_associated_item=>wwv_flow_imp.id(420072161941820093)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(420082360050820100)
,p_validation_name=>'va_motivo'
,p_validation_sequence=>50
,p_validation=>'P791_VOZ_CLIENTE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Debe seleccionar el Motivo.'
,p_associated_item=>wwv_flow_imp.id(420072597990820093)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(420082737814820100)
,p_validation_name=>'Va_OT_Garantia'
,p_validation_sequence=>60
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF  TRIM(:P791_NRO_REF) IS NULL AND TRIM(:P791_GARANTIA) IS NULL  THEN',
'        RETURN '' Debe cargar el Nro OT y/o Nro Garantia'';',
'END IF;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_always_execute=>'Y'
,p_validation_condition=>'P791_CANAL'
,p_validation_condition2=>'15'
,p_validation_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_when_button_pressed=>wwv_flow_imp.id(420076633567820096)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(420083523758820100)
,p_validation_name=>'va_fecha_compra'
,p_validation_sequence=>80
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF nvl(to_date(:P791_FECHA_COMPRA,''DD/MM/YYYY''),sysdate+1)>trunc(sysdate) THEN',
'    RETURN ''Debe cargar correctamente la Fecha de Compra.'';',
'END IF;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_validation_condition=>'P791_FECHA_COMPRA'
,p_validation_condition_type=>'ITEM_IS_NOT_NULL'
,p_associated_item=>wwv_flow_imp.id(420078206695820097)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(420055223959119631)
,p_validation_name=>'P_791_Valida_derivacion'
,p_validation_sequence=>90
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
' varea varchar2(100);',
' vderivado varchar2(2);',
'begin',
'   select area_derivacion, ''S''',
'    into varea, vderivado',
'   from  CRM_CAM_CAN_MOT',
'   where cod_empresa = :P_COD_EMPRESA',
'     and voz_cliente = :P791_VOZ_CLIENTE',
'     and tipo_contacto = :P791_TIPO_REF;',
'',
' :P791_AREA_DERIVAVION := varea;',
' :P791_ESTADO_CONTACTO := ''D'';',
'        if :P791_AREA_DERIVAVION is not null then',
'           :P791_IND_DERIVADO  := ''S'';',
'        else',
'           :P791_IND_DERIVADO  := ''N'';',
'        end if;',
' exception',
'  when others then',
'null;--raise_application_error(-20001,sqlerrm);',
'end;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_validation_condition_type=>'NEVER'
,p_associated_item=>wwv_flow_imp.id(420073311193820094)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(420084632193820102)
,p_name=>'DA_ID_CASO'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P791_P_ID_CASO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(420085177005820104)
,p_event_id=>wwv_flow_imp.id(420084632193820102)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'select   cod_estado, observacion, proximo_contacto----,cod_cliente,cod_campania, cod_motivo',
'INTO :P791_ESTADO,:P791_OBSERVACION,:P791_PROXIMO_CONTACTO',
'    ---,:P791_CLIENTE, :P791_CAMPANIA, :P791_MOTIVO',
'from inv.crm_casos',
'WHERE COD_EMPRESA=''1''',
'AND id_caso= :P791_P_ID_CASO',
';',
'EXCEPTION ',
'WHEN OTHERS THEN',
'/*',
'    :P791_CLIENTE:=NULL;',
'    :P791_CAMPANIA:=NULL;',
'    :P791_MOTIVO:=NULL;',
'    */',
'    :P791_OBSERVACION:=null;',
'    :P791_PROXIMO_CONTACTO:=NULL;',
'    :P791_ESTADO:=NULL;',
'',
'END;'))
,p_attribute_02=>'P791_P_ID_CASO'
,p_attribute_03=>'P791_ESTADO,P791_INFORME_CLIENTE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(420085662758820104)
,p_event_id=>wwv_flow_imp.id(420084632193820102)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(482484312952958324)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(420086067865820104)
,p_name=>'da_bloquea_cab'
,p_event_sequence=>30
,p_condition_element=>'P791_P_ID_CASO'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(420086568424820104)
,p_event_id=>wwv_flow_imp.id(420086067865820104)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
' ',
'',
'',
'$("#P791_OBSERVACION").attr(''readOnly'', true);',
'/*$("#P791_GARANTIA").attr(''readOnly'', true);*/',
'$("#P791_NRO_REF").attr(''readOnly'', true); ',
'',
'$("#P791_CLIENTE").attr(''readOnly'', true);',
'$("#P791_PROXIMO_CONTACTO").attr(''readOnly'', true); ',
'',
'',
'/*$("#P791_MOTIVO").css(''pointer-events'',''none'');',
'$("#P791_CAMPANIA").css(''pointer-events'',''none'');*/',
'$("#P791_ESTADO").css(''pointer-events'',''none'');',
'$("#P791_TIPO_REF").css(''pointer-events'',''none'');',
' ',
' /*',
'  $("#REGCASOS").addClass(''apex_disabled'');',
'*/',
' '))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(420055588452119634)
,p_name=>'da_bloquea_derivaciones'
,p_event_sequence=>40
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(420055692425119635)
,p_event_id=>wwv_flow_imp.id(420055588452119634)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P791_AREA_DERIVAVION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(420086976088820104)
,p_name=>'da_validar_tipo'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P791_TIPO_REF'
,p_condition_element=>'P791_TIPO_REF'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'ORT'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(420087435005820104)
,p_event_id=>wwv_flow_imp.id(420086976088820104)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'//$(''#P791_NRO_REF'').attr("required", "true");',
'',
'var numero_ref = $(''#P791_NRO_REF'').val();',
'var numero_garantia = $(''#P791_GARANTIA'').val();',
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
 p_id=>wwv_flow_imp.id(420055355699119632)
,p_name=>'da_limpia'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P791_TIPO_REF'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(420055493382119633)
,p_event_id=>wwv_flow_imp.id(420055355699119632)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P791_IND_DERIVADO'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(428846395038297335)
,p_name=>'New'
,p_event_sequence=>70
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P791_TIPO_REF'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(428846423280297336)
,p_event_id=>wwv_flow_imp.id(428846395038297335)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'--if (nvl(:P791_ESTADO_CONTACTO,''A'') = ''D'' and :P791_TIPO_REF is not null) then',
'    declare',
'     varea varchar2(100);',
'     vind_derivado varchar(1);',
'     vestado varchar2(1);',
'    begin',
'      begin',
'       select area_derivacion, ''S'', ''D''',
'        into varea,vind_derivado,vestado',
'       from  CRM_CAM_CAN_MOT',
'       where cod_empresa = :P_COD_EMPRESA',
'         and voz_cliente = :P791_VOZ_CLIENTE',
'         and tipo_contacto = :P791_TIPO_REF;',
'        exception',
'         when no_data_found then',
'           vind_derivado := ''N'';',
'           vestado := ''A'';',
'           varea := null;',
'         when others then',
'          raise_application_error(-20001,sqlerrm);',
'        end;',
'        :P791_AREA_DERIVAVION := varea;',
'        :P791_IND_DERIVADO := vind_derivado;',
'        :P791_ESTADO_CONTACTO:= vestado;',
'',
'',
'     exception',
'      when others then',
'    raise_application_error(-20004,sqlerrm);',
'    end;',
'--end if;',
'',
''))
,p_attribute_02=>'P791_TIPO_REF,P791_VOZ_CLIENTE'
,p_attribute_03=>'P791_AREA_DERIVAVION,P791_ESTADO_CONTACTO,P791_IND_DERIVADO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
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
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(432945615482271421)
,p_name=>'New_1'
,p_event_sequence=>80
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(482484312952958324)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(432945791642271422)
,p_event_id=>wwv_flow_imp.id(432945615482271421)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.region(''reg_reporte'').refresh();'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(255221434940587325)
,p_name=>'Estado'
,p_event_sequence=>90
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P791_AREA_DERIVAVION'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(255221562102587326)
,p_event_id=>wwv_flow_imp.id(255221434940587325)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P791_ESTADO_CONTACTO := ''D'';'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(255221652057587327)
,p_name=>'disable_campo'
,p_event_sequence=>100
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P791_TIPO_REF,P791_ESTADO_CASO'
,p_condition_element=>'P791_IND_DERIVADO'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'S'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(255221785735587328)
,p_event_id=>wwv_flow_imp.id(255221652057587327)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>':P791_IND_DERIVADO;'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(255221807056587329)
,p_name=>'enable_campo_1'
,p_event_sequence=>110
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P791_TIPO_REF,P791_ESTADO_CONTACTO'
,p_condition_element=>'P791_IND_DERIVADO'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'N'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(255221930563587330)
,p_event_id=>wwv_flow_imp.id(255221807056587329)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P791_ESTADO_CONTACTO,P791_AREA_DERIVAVION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(259355152239445512)
,p_name=>'Clear_campo'
,p_event_sequence=>120
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P791_VOZ_CLIENTE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(259355403251445515)
,p_event_id=>wwv_flow_imp.id(259355152239445512)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P791_IND_DERIVADO := null;',
':P791_TIPO_REF := null;'))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(259355223278445513)
,p_event_id=>wwv_flow_imp.id(259355152239445512)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P791_IND_DERIVADO,P791_AREA_DERIVAVION,P791_TIPO_REF'
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(259355345491445514)
,p_event_id=>wwv_flow_imp.id(259355152239445512)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P791_IND_DERIVADO,P791_AREA_DERIVAVION,P791_TIPO_REF'
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(627201279139991335)
,p_name=>'DA_MUESTRA_OCULTA'
,p_event_sequence=>130
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(627201359571991336)
,p_event_id=>wwv_flow_imp.id(627201279139991335)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P791_ADJUNTO'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(627201499686991337)
,p_name=>'DA_SHOW_HIDE_FB'
,p_event_sequence=>140
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P791_IND_DERIVADO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(627201535668991338)
,p_event_id=>wwv_flow_imp.id(627201499686991337)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P791_ADJUNTO'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P791_IND_DERIVADO'
,p_client_condition_expression=>'S'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(627201641381991339)
,p_event_id=>wwv_flow_imp.id(627201499686991337)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P791_ADJUNTO'
,p_client_condition_type=>'NOT_EQUALS'
,p_client_condition_element=>'P791_IND_DERIVADO'
,p_client_condition_expression=>'S'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(420083885713820100)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'crea_caso'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_id_caso NUMBER; ',
'    v_id_derivaciones number;',
'    VRESP   VARCHAR2(3200);',
'        upload_blob            BLOB;',
'    v_filename             VARCHAR2(350);',
'    v_mime_type            VARCHAR2(350);',
'begin',
'--P791_ESTADO_CONTACTO := ''D'';',
'  inv.crmcasocontac.crea_caso_2(p_cod_empresa => :p_cod_empresa,',
'                              p_campania => :P791_CAMPANIA,',
'                              p_motivo => :P791_MOTIVO,',
'                              p_cliente => :P791_CLIENTE,',
'                              p_observacion => :P791_OBSERVACION,',
'                              p_proximo_contacto => :P791_PROXIMO_CONTACTO,',
'                              p_tipo_ref => :P791_TIPO_REF,',
'                              p_nro_ref => :P791_NRO_REF,',
'                              p_garantia => :P791_GARANTIA,',
'                              p_id_caso => v_id_caso,',
'                              p_id_derivaciones => v_id_derivaciones,',
'                              p_canal => :P791_CANAL,',
'                              P_VOZ_CLIENTE => :P791_VOZ_CLIENTE,',
'                              P_AREA_DERIVACION => :P791_AREA_DERIVAVION,',
'                              P_NRO_QUALTRICS => :P791_NRO_QUALTRICS,',
'                              P_NRO_CONTACTO => :P791_NRO_CONTACTO,',
'                              P_ASESOR => :P791_ASESOR,',
'                              P_ESTADO_CONTACTO => :P791_ESTADO_CONTACTO,',
'                              P_IND_URGENTE => :P791_IND_URGENTE,',
'                              P_RESULTADO =>VRESP);',
'',
'',
'     IF :P791_ADJUNTO IS NOT NULL THEN',
'',
'        ---- GUARDARMOS LOS ARCHIVOS ADJUNTOS ----',
'        DECLARE',
'            tab apex_t_varchar2;',
'        BEGIN',
'            tab := apex_string.split(:P791_ADJUNTO, '':'');',
'            FOR i IN 1..tab.count LOOP',
'                BEGIN',
'                 -- UPDATE SOBRE TABLA PARA GUARDAR EL ARCHIVO',
'                    SELECT',
'                        blob_content,',
'                        filename,',
'                        mime_type',
'                    INTO',
'                        upload_blob,',
'                        v_filename,',
'                        v_mime_type',
'                    FROM',
'                        apex_application_temp_files',
'                    WHERE',
'                        name = tab(i);--:P42_ARCHIVO_NOVEDAD;',
'',
'                    apex_debug.error(sqlerrm);',
'',
'                 --APEX_DEBUG.ERROR (''UPLOAD_BLOB '' || UPLOAD_BLOB);',
'                    apex_debug.error(''V_FILENAME '' || v_filename);',
'                    apex_debug.error(''V_MIME_TYPE '' || v_mime_type);',
'                    --v_seq_file := seq_novedades_ot_files.nextval;',
'                   begin',
'                    INSERT INTO inv.CC_DERIVACIONES_FILES (',
'                                  cod_documento,',
'                                  id_caso,',
'                                  id_derivaciones,',
'                                  nombre_archivo,',
'                                  url_archivo,',
'                                  mime_type,',
'                                  imagen,',
'                                  cod_empresa',
'                                ) VALUES (',
'                        null,',
'                        v_id_caso,',
'                        v_id_derivaciones,',
'                        v_filename,',
'                        null,',
'                        v_mime_type,--empty_blob()',
'                        upload_blob,',
'                        :P_COD_EMPRESA',
'                         );',
'                    exception',
'                    when others then',
'                            RAISE_APPLICATION_ERROR(-20000,''Error al intentar la imagen en cc_derivaciones_files '' || SQLERRM);',
'                    end;',
'              /*  APEX_DEBUG.ERROR (SQLERRM);',
'   ',
'',
'              ',
'                APEX_DEBUG.ERROR (''P42_TIP_COMPROBANTE_REF_NOV '' || :P42_TIP_COMPROBANTE_REF_NOV);',
'                APEX_DEBUG.ERROR (''P42_SER_COMPROBANTE_REF_NOV '' || :P42_SER_COMPROBANTE_REF_NOV);',
'                APEX_DEBUG.ERROR (''P42_NRO_COMPROBANTE_REF_NOV '' || :P42_NRO_COMPROBANTE_REF_NOV);',
'                APEX_DEBUG.ERROR (''V_SEQ_FILE '' || V_SEQ_FILE);',
'',
'            APEX_DEBUG.ERROR (''ENTRA WRITE_BLOB_TO_FILE'');*/',
'',
'            --- GUARDAR URL DEL ARCHIVO EN LA TABLA ---    ',
'                    INV.CASOS.write_blob_to_file_2(p_id_caso => v_id_caso, ',
'                                              p_id_derivaciones => v_id_derivaciones, ',
'											  p_id_registro => v_filename,',
'                                              p_dir => ''UPLOAD_FILES_DERIVACIONES'',',
'                                              p_cod_empresa => :P_COD_EMPRESA);',
'',
'                    apex_debug.error(''SALE WRITE_BLOB_TO_FILE'');',
'                EXCEPTION',
'                    WHEN OTHERS THEN',
'                        apex_debug.error(''Error en Crea casos - UPDATE FILE.'' || sqlerrm);',
'                        --:p42_aux_msg := sqlerrm;',
'                END;',
'            END LOOP;',
'',
'        EXCEPTION',
'            WHEN OTHERS THEN',
'                apex_debug.error(''Error en Crea casos - GUARDAR DOCUMENTOS. '' || sqlerrm);',
'                ROLLBACK;',
'        END;',
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
,p_process_when_button_id=>wwv_flow_imp.id(420076633567820096)
,p_process_when=>'P791_P_ID_CASO'
,p_process_when_type=>'ITEM_IS_NULL'
,p_process_success_message=>'Caso generado.'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(433037335349904213)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(420084219250820102)
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
'  inv.crmcasocontac.crea_contacto(p_id_caso => :P791_P_ID_CASO,',
'                                  p_canal => :P791_CANAL,',
'                                  p_comentario => :P791_COMENTARIO,',
'                                  p_num_telefono => :P791_NUM_TELEFONO,',
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
,p_process_when_button_id=>wwv_flow_imp.id(420076633567820096)
,p_process_when_type=>'NEVER'
,p_process_success_message=>'Contacto generado.'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(259354528725445506)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'INI'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P791_IND_DERIVADO := ''N'';',
''))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp.component_end;
end;
/
