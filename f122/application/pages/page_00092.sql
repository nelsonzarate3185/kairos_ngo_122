prompt --application/pages/page_00092
begin
--   Manifest
--     PAGE: 00092
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
 p_id=>92
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Crear Clientes'
,p_alias=>'CREAR-CLIENTES'
,p_page_mode=>'MODAL'
,p_step_title=>'Crear Clientes'
,p_autocomplete_on_off=>'OFF'
,p_javascript_file_urls=>'#APP_FILES#util_generico.js'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function validateText(event) {',
'  var keyCode = event.keyCode;',
'  var excludedKeys = [8, 37, 39, 46, 32];',
'',
'  if (!((keyCode >= 65 && keyCode <= 90) ||',
'      (excludedKeys.includes(keyCode)))) {',
'    event.preventDefault();',
'',
'  }',
'} '))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
' ',
'#btn, #btn2, #btn3{ ',
'        margin-top: 15px;',
'        display: flex;',
'        background:white;',
'        background-image: linear-gradient(180deg, #ffee00e4  0%, #fff890 100%);',
'        color:  darkblue;',
'        justify-content: center;',
'        align-items: center; ',
'        box-shadow: #011a3a 1px 1px 5px 1px; ',
'        border-style: solid;',
'        border-width: 0.5px;',
'        border-color:  yellow;',
'}',
'/* ',
'.t-Dialog-bodyWrapperIn{',
'      background-color: #487ab8 !important; ',
'      }',
'',
'*/',
'  #REG ,.t-Dialog-bodyWrapperIn { background: #d0e0f783!important;}',
'',
'      ',
'#agregar_cliente, #consulta{background: #c0d0e6!important;} ',
' ',
'#DAT_ALTA{background: #487ab8 !important; ;} ',
'',
'.t-Form-label, .t-Form-itemText--pre{',
'    color:  darkblue !important;     ',
'    font-weight: bold;',
'    } ',
'',
'.apex-item-select, .apex-item-text, .apex-item-textarea{',
'    border-color: #487ab8!important;  }',
'',
'',
'.t-Report-colHead, .a-IRR-headerLink {',
'      background: #003a85!important;',
'       color: yellow; ',
' }',
'',
'',
' .apex-item-select:focus, .apex-item-text:focus, .apex-item-textarea:focus {',
'   background-color: #fcfce0 !important;',
'   border-color: #011a3a !important;',
'}',
''))
,p_step_template=>wwv_flow_imp.id(40080790783263649)
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch'
,p_page_component_map=>'16'
,p_last_updated_by=>'CHARBA'
,p_last_upd_yyyymmddhh24miss=>'20241230102551'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(69662198697953159)
,p_plug_name=>'Clientes'
,p_region_name=>'REG'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(110450821372068132)
,p_plug_name=>'CONSULTAR DATOS DE CLIENTE'
,p_region_name=>'consulta'
,p_parent_plug_id=>wwv_flow_imp.id(69662198697953159)
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40108275410263656)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(110451016346068134)
,p_plug_name=>'ALTA NUEVO CLIENTE'
,p_region_name=>'agregar_cliente'
,p_parent_plug_id=>wwv_flow_imp.id(69662198697953159)
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40108275410263656)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(110452615791068150)
,p_plug_name=>'DATOS CREADOS'
,p_region_name=>'DAT_ALTA'
,p_parent_plug_id=>wwv_flow_imp.id(110451016346068134)
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(110451716769068141)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(110450821372068132)
,p_button_name=>'CONSULTAR'
,p_button_static_id=>'btn2'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Consultar'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(110451835720068142)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(110450821372068132)
,p_button_name=>'LIMPIAR'
,p_button_static_id=>'btn3'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Limpiar'
,p_button_redirect_url=>'f?p=&APP_ID.:92:&SESSION.::&DEBUG.:92::'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(23488469981910223)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(69662198697953159)
,p_button_name=>'CERRAR'
,p_button_static_id=>'btn'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--simple:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Cerrar'
,p_button_position=>'CLOSE'
,p_button_execute_validations=>'N'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(23299859152411592)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(69662198697953159)
,p_button_name=>'CrearCliente'
,p_button_static_id=>'btn'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Guardar'
,p_button_position=>'CREATE'
,p_button_css_classes=>'u-color-21 u-color-43-text'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(147541417258413025)
,p_branch_name=>unistr('Ir a P\00E1gina 486')
,p_branch_action=>'f?p=&APP_ID.:486:&SESSION.::&DEBUG.::P486_ID_TICKET,P486_COD_CLIENTE,P486_CLIENTE:&P92_NRO_TICKET.,&P92_COD_CLIENTE.,&P92_NOMBRE.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
,p_branch_condition_type=>'ITEM_IS_NOT_NULL'
,p_branch_condition=>'P92_NRO_TICKET'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(65784512730368501)
,p_branch_action=>'f?p=&APP_ID.:92:&SESSION.::&DEBUG.:92::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>20
,p_branch_condition_type=>'ITEM_IS_NOT_NULL'
,p_branch_condition=>'P92_COD_CLIENTE_CREADO'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(23300209316411592)
,p_name=>'P92_ES_FISICA'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(110451016346068134)
,p_item_default=>'S'
,p_prompt=>'Es Fisica'
,p_source=>'S'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('SELECT  ''F\00EDsica'' D, ''S'' C'),
'FROM DUAL',
'UNION ALL',
unistr('SELECT ''Jur\00EDdica''D,  ''N''C'),
'FROM DUAL'))
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(23300631253411593)
,p_name=>'P92_CI'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(110451016346068134)
,p_prompt=>'C.I.:'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_css_classes=>'allow_only_numbers'
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
 p_id=>wwv_flow_imp.id(23301002628411593)
,p_name=>'P92_RUC'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(110451016346068134)
,p_prompt=>'Ruc'
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
 p_id=>wwv_flow_imp.id(23301465478411593)
,p_name=>'P92_NOMBRE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(110451016346068134)
,p_prompt=>'Nombre'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>110
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(23301845423411593)
,p_name=>'P92_DIRECCION'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(110451016346068134)
,p_prompt=>unistr('Direcci\00F3n')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>110
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
 p_id=>wwv_flow_imp.id(23302266618411593)
,p_name=>'P92_TELEFONO'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(110451016346068134)
,p_prompt=>unistr('L\00EDnea Baja')
,p_placeholder=>'Eje. (021) XXX XXX '
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(23302670428411593)
,p_name=>'P92_CORREO'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(110451016346068134)
,p_prompt=>'Email'
,p_placeholder=>'correo@gmail.com'
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
 p_id=>wwv_flow_imp.id(23303043287411594)
,p_name=>'P92_CELULAR'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(110451016346068134)
,p_prompt=>'Celular'
,p_placeholder=>'Eje. +595 9XX XXX XXX '
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
 p_id=>wwv_flow_imp.id(23303449216411594)
,p_name=>'P92_EMAIL_ST'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(110451016346068134)
,p_prompt=>'Email ST'
,p_placeholder=>'correo@gmail.com'
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
 p_id=>wwv_flow_imp.id(23303869062411594)
,p_name=>'P92_COD_TIP_CLIENTE'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(110451016346068134)
,p_item_default=>'9'
,p_prompt=>'Tipo Cliente'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select descripcion,cod_tip_cliente',
'			    from cc_tipo_cliente',
'                            order by 1'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
,p_attribute_07=>'Tipo Cliente'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(23304220897411594)
,p_name=>'P92_COD_LISTA_PRECIO'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(110451016346068134)
,p_item_default=>'5'
,p_prompt=>'Lista Precios'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select DESCRIPCION||''(''||COD_LISTA_PRECIO||'')'' D, COD_LISTA_PRECIO from VT_LISTAS_PRECIOS_CAB',
'WHERE COD_EMPRESA=:P_COD_EMPRESA',
'AND ESTADO=''A''',
'order by 1'))
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
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
,p_attribute_07=>'Lista  de Precios'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(23304633772411594)
,p_name=>'P92_COD_CONDICION_VENTA'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(110451016346068134)
,p_item_default=>'36'
,p_prompt=>'Cond. Venta'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_CONDICIONES_VTNOTCRE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT c.cod_condicion_venta||'' - ''||c.descripcion D, ',
'       c.cod_condicion_venta R',
'  FROM cc_condiciones_ventas c, vt_listas_precios_cab l ',
' WHERE c.cod_empresa = :P_COD_EMPRESA',
'   AND l.cod_empresa = c.cod_empresa ',
'   AND c.cod_lista_precio = l.cod_lista_precio'))
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
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
,p_attribute_07=>unistr('Condici\00F3n Venta')
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(23305068512411595)
,p_name=>'P92_COD_VENDEDOR'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(110451016346068134)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT  F.COD_VENDEDOR',
'FROM FV_VENDEDORES F, PERSONAS P, USUARIOS U',
'WHERE F.COD_EMPRESA=:P_COD_EMPRESA',
'AND F.COD_PERSONA=P.COD_PERSONA',
'AND NVL(F.ESTADO,''I'')NOT IN ''I''',
'AND U.COD_PERSONA=P.COD_PERSONA',
'AND COD_USUARIO = :APP_USER',
'AND ROWNUM = 1;'))
,p_item_default_type=>'SQL_QUERY'
,p_prompt=>'Vendedor'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_VENDEDORES'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT  F.COD_VENDEDOR||'' - ''||P.NOMBRE nombre,F.COD_VENDEDOR FROM FV_VENDEDORES F, PERSONAS P',
'WHERE F.COD_EMPRESA=:P_COD_EMPRESA',
'AND F.COD_PERSONA=P.COD_PERSONA',
'AND NVL(F.ESTADO,''I'')NOT IN ''I''',
'order by 1'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
,p_attribute_07=>'Vendedores'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(23305412327411595)
,p_name=>'P92_COD_SECTOR'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(110451016346068134)
,p_prompt=>'Sector'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select descripcion as d,',
'       cod_sector as r',
'  from sectores_econ',
' order by 1'))
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
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
,p_attribute_07=>'Sector'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(23305816112411595)
,p_name=>'P92_NACIONALIDAD'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(110451016346068134)
,p_item_default=>'PAR'
,p_prompt=>'Nacionalidad'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_NACIONALIDAD'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select nacionalidad',
'			    ,cod_pais',
'			    from paises',
' order by 1'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
,p_attribute_07=>'Nacionalidad'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(23306270809411595)
,p_name=>'P92_COD_PAIS'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(110451016346068134)
,p_item_default=>'PAR'
,p_prompt=>'Pais'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_PAISES'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select descripcion',
'			, cod_pais',
'			    from paises'))
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
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
,p_attribute_07=>unistr('Pa\00EDs')
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(23306636525411595)
,p_name=>'P92_COD_PROVINCIA'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(110451016346068134)
,p_item_default=>'18'
,p_prompt=>'Departamento'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT P.DESCRIPCION, P.COD_PROVINCIA',
'FROM PROVINCIAS P',
'WHERE COD_PAIS = :P92_COD_PAIS'))
,p_lov_cascade_parent_items=>'P92_COD_PAIS'
,p_ajax_optimize_refresh=>'Y'
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
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
,p_attribute_07=>'Departamento'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(23307050759411596)
,p_name=>'P92_COD_CIUDAD'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_imp.id(110451016346068134)
,p_item_default=>'1'
,p_prompt=>'Ciudad'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DESCRIPCION , COD_CIUDAD',
'FROM CIUDADES ',
'WHERE COD_PAIS = :P92_COD_PAIS',
'AND COD_PROVINCIA = :P92_COD_PROVINCIA'))
,p_lov_cascade_parent_items=>'P92_COD_PAIS,P92_COD_PROVINCIA'
,p_ajax_optimize_refresh=>'Y'
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
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
,p_attribute_07=>'Ciudades'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(23307459724411596)
,p_name=>'P92_DATOS'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(110452615791068150)
,p_prompt=>'Datos'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(23307869148411596)
,p_name=>'P92_COD_CLIENTE'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_imp.id(110451016346068134)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(23308278931411596)
,p_name=>'P92_COD_USUARIO'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_imp.id(110451016346068134)
,p_source=>'&APP_USER.'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(64600219825457101)
,p_name=>'P92_COD_CLIENTE_CREADO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(110452615791068150)
,p_prompt=>unistr('C\00F3d. Cliente')
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
 p_id=>wwv_flow_imp.id(64600307818457102)
,p_name=>'P92_COD_PERSONA_CREADO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(110452615791068150)
,p_prompt=>unistr('C\00F3d. Persona')
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
 p_id=>wwv_flow_imp.id(64600453212457103)
,p_name=>'P92_OPCION'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(110450821372068132)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(64604016562457139)
,p_name=>'P92_NRO'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(110451016346068134)
,p_prompt=>unistr('N\00FAmero')
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
 p_id=>wwv_flow_imp.id(64604158206457140)
,p_name=>'P92_TIPO_DATOS'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(110451016346068134)
,p_prompt=>'Tipo Datos'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>unistr('STATIC:Documento de Admisi\00F3n;ADM,Documento Extranjero;EXT,Innominado;INN,Pasaporte;PAS,Tarjeta Diplomatica;TAD')
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(64604281363457141)
,p_name=>'P92_OCULTAR'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(110450821372068132)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(73913383789687143)
,p_name=>'P92_INDICADOR_PAG_298'
,p_item_sequence=>20
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(76728798783030034)
,p_name=>'P92_TIP_OPERACION'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_imp.id(110451016346068134)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(99286366563806447)
,p_name=>'P92_ESTADO'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_imp.id(110451016346068134)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(110451127768068135)
,p_name=>'P92_TIPO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(110450821372068132)
,p_prompt=>'Tipo'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>unistr('STATIC2:C\00E9dula Identidad;CI,RUC;RUC,Documento de Admisi\00F3n;ADM,Documento Extranjero;EXT,Innominado;INN,Pasaporte;PAS,Tarjeta Diplomatica;TAD')
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(110451259433068136)
,p_name=>'P92_NRO_CONSULTA'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(110450821372068132)
,p_prompt=>'Nro. a Consultar'
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
 p_id=>wwv_flow_imp.id(110451383504068137)
,p_name=>'P92_NOMBRE_APELLIDO'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(110450821372068132)
,p_prompt=>'Nombre  y Apellido'
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
 p_id=>wwv_flow_imp.id(110451468307068138)
,p_name=>'P92_COD_CLIENTE_CONSULTA'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(110450821372068132)
,p_prompt=>unistr('C\00F3digo Cliente')
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
 p_id=>wwv_flow_imp.id(110451513278068139)
,p_name=>'P92_COD_PERSONA_CONSULTA'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(110450821372068132)
,p_prompt=>unistr('C\00F3digo Persona')
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
 p_id=>wwv_flow_imp.id(110451613039068140)
,p_name=>'P92_ESTADO_CLIENTE_CONSULTA'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(110450821372068132)
,p_prompt=>'Estado Cliente'
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
 p_id=>wwv_flow_imp.id(110477743551213444)
,p_name=>'P92_NECESARIO'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(110451016346068134)
,p_prompt=>'Tiene Email?'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--xlarge'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(147541139541413022)
,p_name=>'P92_NRO_TICKET'
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_imp.id(110451016346068134)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(96865771802522124)
,p_validation_name=>'Valida RUC'
,p_validation_sequence=>20
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P92_NRO IS NULL THEN ',
'',
'    IF :P92_CI IS NULL AND :P92_RUC IS NULL THEN ',
unistr('        RETURN ''Debe ingresar C\00E9dula o Ruc'';'),
'    END IF;',
'',
'END IF;',
'',
'IF :P92_NOMBRE IS NULL THEN ',
'    RETURN ''Debe ingresar el Nombre'';',
'END IF;',
'',
'IF :P92_DIRECCION IS NULL THEN ',
unistr('    RETURN ''Debe ingresar la Direcci\00F3n'';'),
'END IF;',
'',
'IF :P92_RUC IS NOT NULL THEN ',
'    declare',
'        vpos number;',
'        vcant number;',
'    begin',
'        SELECT INSTR(:P92_RUC, ''-'') AS posicion_del_guion, length(:P92_RUC)cant_caracter',
'        into  vpos, vcant',
'        FROM dual;',
'',
'            if vpos=0 then                ',
'                    RETURN ''RUC incorrecto, debe contener guion(-)'';',
'            else',
'                if vpos <> (vcant-1) then',
'                    RETURN ''El formato del RUC con respecto al guion(-) es incorrecto'';',
'                end if;    ',
'            end if;',
'    end;',
'',
'    IF :P92_CORREO IS NULL AND :P92_NECESARIO = ''S'' THEN ',
'        RETURN ''El cliente posee correo, por lo tanto es obligatorio ingresar'';',
'    END IF;',
'END IF;',
'',
'DECLARE ',
'    v_mensaje VARCHAR2(4000);',
'BEGIN',
'    if :P92_CORREO is not null then    ',
'        INV.PCK_GENERAL_APEX.pr_validar_direccion_email(p_direccion_mail => :P92_CORREO,',
'                                                        p_mensaje         => v_mensaje);',
'        IF v_mensaje IS NOT NULL THEN ',
'            RETURN v_mensaje;',
'        END IF;',
'    END IF;',
'END;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(99286400416806448)
,p_validation_name=>unistr('Verificaci\00F3n de RUC')
,p_validation_sequence=>40
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    vdatos varchar2(32000);',
'    vdirec varchar2(32000);',
'    v_detalle varchar2(10000);',
'    v_cabecera varchar2 (10000);',
'    vdatos_retorno varchar2(32000);',
'    p_json VARCHAR2(4000);',
'    p_datos VARCHAR2(4000);',
'     l_msj            VARCHAR2(4000);',
'    l_path           VARCHAR2(200);',
'    l_estado   VARCHAR2(200);',
'    nombre varchar2(1);',
'    vdatos2 varchar2(5000);',
'    v_descripcion_estado VARCHAR2(500);',
'  begin',
'  if :P92_RUC is not null then ',
'    declare',
'      t_http_req     utl_http.req;',
'      t_http_resp    utl_http.resp;',
'      t_request_body varchar2(30000); ',
'    begin',
'      begin',
'        vdirec := ''http://192.168.15.102:8080/efactura-py/api/consultas/consulta-ruc'';',
'      end;',
'      vdatos := ''{"ruc":["''||:P92_RUC||''"],',
'                "retornarRespuestaOriginal":"true"',
'                }'';',
'      p_json := ''{"ruc":["''||:P92_RUC||''"],',
'                "retornarRespuestaOriginal":"true"',
'                }'';',
'     ',
'     t_request_body:=VDATOS;  ',
'      t_http_req := utl_http.begin_request(vdirec, ''POST'', ''HTTP/1.1'');',
'      UTL_HTTP.set_header (t_http_req, ''Content-Type'', ''application/json'');',
'      ',
'      utl_http.set_header(t_http_req,',
'                          ''Content-Length'',',
'                          length(vdatos));',
'',
'     ',
'      utl_http.write_text(t_http_req, t_request_body);',
'      p_json:=t_request_body;',
'      dbms_output.put_line(''t_request_body: ''|| t_request_body );',
'      ',
'      t_http_resp := utl_http.get_response(t_http_req);',
'      utl_http.read_text(t_http_resp, p_datos);',
'      utl_http.end_response(t_http_resp);',
'    begin',
unistr('        vdatos2:=replace(p_datos,''\00D1'',''\005Cu00D1'');'),
unistr('         vdatos2:=replace(p_datos,''\00F3'',''\005Cu00F3'');'),
unistr('         vdatos2:=replace(p_datos,''\00E1'',''\005Cu00E1'');'),
unistr('        vdatos2:=replace(p_datos,''\00E1'',''\005Cu00E1'');'),
unistr('        vdatos2:=replace(p_datos,''\00F3'',''\005Cu00F3'');'),
unistr('        vdatos2:=replace(p_datos,''\00F3'',''\005Cu00F3'');'),
unistr('        vdatos2:=replace(p_datos,''\00F3'',''\005Cu00F3'');   '),
'        ',
'      apex_json.parse(vdatos2);',
'      :P92_ESTADO := apex_json.get_varchar2(p_path => ''resultadoRuc[%d].codigoRespuesta'',  p0 => 1);',
'      :P92_NOMBRE := apex_json.get_varchar2(p_path => ''resultadoRuc[%d].razonSocial'',  p0 => 1);',
'      :P0_MENSAJE_VALIDACION := convert(replace(apex_json.get_varchar2(p_path => ''resultadoRuc[%d].mensajeError'',  p0 => 1),''"'',''''), ''WE8MSWIN1252'', ''UTF8'');',
'      v_descripcion_estado := apex_json.get_varchar2(p_path => ''resultadoRuc[%d].descripcionEstadoRuc'',  p0 => 1);',
'        /* IF :P92_ESTADO = ''EXISTE'' and v_descripcion_estado <> ''ACTIVO'' THEN ',
unistr('                RETURN ''El n\00FAmero de Ruc est\00E1 ''|| v_descripcion_estado;'),
'',
'                ',
'        ELS*/',
'        ',
'         if :P0_MENSAJE_VALIDACION like''%Error: null%'' then',
'                       :P92_ESTADO := ''EXISTE'';',
'                      :P0_MENSAJE_VALIDACION:=null;',
'                    elsif :P92_ESTADO  <> ''EXISTE'' OR  :P0_MENSAJE_VALIDACION IS NOT NULL then ',
unistr('            RETURN ''El n\00FAmero de Ruc ingresado no existe'';'),
'       END IF;',
'    end;',
'',
'    end;',
'    end if;',
'  end;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
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
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(174250811091975417)
,p_validation_name=>'Valida caracteres especiales'
,p_validation_sequence=>50
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE ',
'    valor BOOLEAN;',
'    valen number;',
'BEGIN ',
'',
unistr('    SELECT nvl(LENGTH(TRIM(TRANSLATE(:P92_NOMBRE, ''abcdefghijklmnopqrstuvwxyz\00F1\00D1ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789'', '' ''))),0)'),
'    into valen',
'    FROM DUAL;',
'    ',
'   IF valen <>0  THEN ',
'    RETURN '' No se puede guardar nombre con caracteres especiales'';',
'   END IF;',
'',
'',
'',
'',
'   /* ',
'   valor :=  REGEXP_LIKE(:P92_NOMBRE, ''^[a-zA-Z0-9]*$'');',
'',
'   IF valor = FALSE  THEN ',
'    RETURN '' No se puede guardar nombre con caracteres especiales'';',
'',
'   END IF;*/',
'exception',
'    when others then    ',
'            null;',
'END;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_validation_condition_type=>'NEVER'
,p_associated_item=>wwv_flow_imp.id(23301465478411593)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(213277835877599530)
,p_validation_name=>'VALIDA_TELEFONO'
,p_validation_sequence=>60
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'    DECLARE',
'        VRESULT VARCHAR2(500);',
'        vcant NUMBER(12);',
'    BEGIN ',
'        IF :P92_TELEFONO IS NOT NULL THEN',
'',
'--------------- VALIDA QUE SOLO TENGA NUMEROS Y "( )"                 ',
'                 SELECT CASE',
'                           WHEN REGEXP_LIKE(:P92_TELEFONO , ''^[0-9() ]+$'') ',
'                           THEN NULL',
'                           ELSE ''Formato de Nro. de Telefono no corresponde. Solo estan permitidos valores Numericos y "( )"''',
'                       END AS resultado',
'                INTO  VRESULT',
'                FROM dual;',
'                ',
'                if VRESULT is not null then',
'                    return VRESULT;',
'                end if;',
'',
' ',
'--------------- VALIDA QUE "("" ESTE EN LA 1RA POSICION  Y ")" EN LA 5TA O 6TA    ',
'                SELECT  CASE',
'                           WHEN INSTR(:P92_TELEFONO, ''('')>1 ',
'                            THEN ''Formato de Nro. de Telefono no corresponde. ''',
'                           WHEN   INSTR(:P92_TELEFONO, '')'') NOT IN (5,6) ',
'                            THEN ''Formato de Nro. de Telefono no corresponde. ''',
'                           ELSE null',
'                       END AS resultado',
'                INTO  VRESULT',
'                FROM dual;',
'',
'                if VRESULT is not null then',
'                    return VRESULT;',
'                end if;',
'',
'',
'--------------- VALIDA QUE NO REPITA EL ")"   ',
'                SELECT LENGTH(:P92_TELEFONO) - LENGTH(REPLACE(:P92_TELEFONO, '')'', '''')) AS repeticiones',
'                INTO VCANT',
'                FROM dual;',
'',
'                if NVL(VCANT,0)>1 then',
'                    return ''Cantidad de ")" excedida'';',
'                end if;',
'',
'--------------- VALIDA QUE NO REPITA EL "("   ',
'                SELECT LENGTH(:P92_TELEFONO) - LENGTH(REPLACE(:P92_TELEFONO, ''('', '''')) AS repeticiones',
'                INTO VCANT',
'                FROM dual;',
'',
'                if NVL(VCANT,0)>1 then',
'                    return ''Cantidad de "(" excedida'';',
'                end if;',
'',
'            END IF;            ',
'    EXCEPTION',
'        WHEN OTHERS THEN',
'            NULL;',
'    END;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_associated_item=>wwv_flow_imp.id(23302266618411593)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(213277922862599531)
,p_validation_name=>'VALIDA_CELULAR'
,p_validation_sequence=>70
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'    DECLARE',
'        VRESULT VARCHAR2(500);',
'        vcant NUMBER(12);',
'    BEGIN ',
'            IF :P92_CELULAR IS NOT NULL THEN',
'',
'--------------- VALIDA QUE SOLO TENGA NUMEROS Y +            ',
'                 SELECT CASE',
'                           WHEN REGEXP_LIKE(:P92_CELULAR, ''^[0-9+ ]+$'') ',
'                           THEN NULL',
'                           ELSE ''Formato de Nro. de Celular no corresponde. Solo estan permitidos valores Numericos y "+"''',
'                       END AS resultado',
'                INTO  VRESULT',
'                FROM dual;',
'',
'                if VRESULT is not null then',
'                    return VRESULT;',
'                end if;',
' ',
'--------------- VALIDA QUE EL +  ESTE EN LA PRIMERA POSICION O CERO SI NO SE CARGO',
'                SELECT  CASE',
'                           WHEN INSTR(:P92_CELULAR, ''+'')>1 ',
'                           THEN ''Formato de Nro. de Celular no corresponde. ''',
'                           ELSE null',
'                       END AS resultado',
'                INTO  VRESULT',
'                FROM dual;',
'',
'                if VRESULT is not null then',
'                    return VRESULT;',
'                end if;',
'',
'--------------- VALIDA QUE NO REPITA EL +     ',
'                SELECT LENGTH(:P92_CELULAR) - LENGTH(REPLACE(:P92_CELULAR, ''+'', '''')) AS repeticiones',
'                INTO VCANT',
'                FROM dual;',
'',
'                if NVL(VCANT,0)>1 then',
'                    return ''Cantidad de "+" excedida'';',
'                end if;',
'',
'            END IF;            ',
'    EXCEPTION',
'        WHEN OTHERS THEN',
'            NULL;',
'    END;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_associated_item=>wwv_flow_imp.id(23303043287411594)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(23309024242411597)
,p_name=>'obtiene_nombre'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P92_CI'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(23309594735411598)
,p_event_id=>wwv_flow_imp.id(23309024242411597)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P92_NOMBRE'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'		select  ',
'							 nombres ||'' ''||apellidoS nombre',
'                                                       ',
'				  from cedulas_per',
'				 where numero =:P92_ci '))
,p_attribute_07=>'P92_NOMBRE'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(23309994742411598)
,p_name=>'OBTIENE_EXISTENCIA'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P92_CI'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(23310429668411598)
,p_event_id=>wwv_flow_imp.id(23309994742411598)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'   DECLARE',
'     vnombre VARCHAR2(600);',
'   vpersona_creado VARCHAR2(600);',
'   BEGIN',
'     BEGIN',
'       SELECT nombre || ''. Cliente: '' || c.cod_cliente || ''. '' nombre,',
'              c.cod_cliente, P.cod_persona',
'         INTO :p92_datos, :p92_cod_cliente, :P92_COD_PERSONA_CREADO',
'         FROM personas p, cc_clientes c, ident_personas i',
'        WHERE i.numero = :p92_ci ',
'         AND I.COD_IDENT = ''CI''',
'         and i.cod_persona=p.cod_persona ',
'         and c.cod_empresa=:P_COD_EMPRESA',
'         and c.cod_persona(+)=p.cod_persona',
'         AND rownum = ''1'';',
'          :P92_COD_CLIENTE_CREADO := :p92_cod_cliente;',
'     EXCEPTION',
'       WHEN OTHERS THEN',
'         :p92_datos       := NULL;',
'         :p92_cod_cliente := NULL;',
'         :P92_COD_CLIENTE_CREADO := null;',
'         :P92_COD_PERSONA_CREADO := null;',
'',
'     END;',
'   ',
'',
' ',
'     BEGIN',
'       SELECT nombre || ''. persona: '' || p.cod_persona || ''. '' nombre,',
'              P.cod_persona, p.cod_persona,p.nombre',
'         INTO :p92_datos, :P92_COD_PERSONA_CREADO, vpersona_creado,:P92_NOMBRE',
'         FROM personas p, ident_personas i',
'        WHERE i.numero = :p92_ci ',
'         AND I.COD_IDENT = ''CI''',
'         and i.cod_persona=p.cod_persona ',
'      ',
'         AND rownum = ''1'';',
'    ',
'     EXCEPTION',
'       WHEN OTHERS THEN',
'         :p92_datos       := NULL;',
'      ',
'         :P92_COD_CLIENTE_CREADO := null;',
'         :P92_COD_PERSONA_CREADO := null;',
'         vpersona_creado:= null;',
'',
'     END;',
'',
'     if vpersona_creado is not null then ',
'',
' BEGIN',
'       SELECT codigo_area||num_telefono',
'         INTO :P92_TELEFONO',
'         FROM telef_personas p, ident_personas i',
'        WHERE i.numero = :p92_ci ',
'         AND I.COD_IDENT = ''CI''',
'         and i.cod_persona=p.cod_persona ',
'      ',
'         AND rownum = ''1'';',
'    ',
'     EXCEPTION',
'       WHEN OTHERS THEN',
'         :P92_TELEFONO       := NULL; ',
'',
'     END;',
'',
'     BEGIN',
'       SELECT detalle',
'         INTO :P92_DIRECCION',
'         FROM direc_personas p, ident_personas i',
'        WHERE i.numero = :p92_ci ',
'          and i.cod_persona=p.cod_persona ',
'      ',
'         AND rownum = ''1'';',
'    ',
'     EXCEPTION',
'       WHEN OTHERS THEN',
'         :P92_DIRECCION       := NULL; ',
'',
'     END;',
'',
'     end if;',
'   ',
'',
'   END;',
''))
,p_attribute_02=>'P92_CI'
,p_attribute_03=>'P92_DATOS,P92_COD_CLIENTE_CONSULTA,P92_COD_CLIENTE_CREADO,P92_COD_PERSONA_CREADO,P92_NOMBRE_APELLIDO,P92_TELEFONO,P92_DIRECCION,P92_NOMBRE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(23310930774411598)
,p_event_id=>wwv_flow_imp.id(23309994742411598)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_CSS'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P92_DATOS'
,p_attribute_01=>'color'
,p_attribute_02=>'#E95B54'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(23311344222411599)
,p_name=>'obtiene_nombre_ruc'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P92_RUC'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(23311888477411599)
,p_event_id=>wwv_flow_imp.id(23311344222411599)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
' DECLARE',
'   VNOMBRE VARCHAR2(600);',
' ',
' BEGIN',
'   BEGIN',
'     SELECT NOMBRE || ''. Cliente: '' || C.COD_CLIENTE || ''. '' NOMBRE,',
'            C.COD_CLIENTE, ',
'            C.COD_PERSONA',
'       INTO :P92_DATOS, :P92_COD_CLIENTE, :P92_COD_PERSONA_CREADO',
'       FROM PERSONAS P, CC_CLIENTES C, IDENT_PERSONAS I',
'      WHERE I.NUMERO = :P92_RUC',
'        AND C.COD_EMPRESA = :P_COD_EMPRESA',
'        AND P.COD_PERSONA = C.COD_PERSONA',
'        AND C.COD_PERSONA = I.COD_PERSONA',
'        AND ROWNUM = ''1'';',
'',
'        :P92_COD_CLIENTE_CREADO  := :P92_COD_CLIENTE;',
'   EXCEPTION',
'     WHEN OTHERS THEN',
'       :P92_DATOS       := NULL;',
'       :P92_COD_CLIENTE := NULL;',
'       :P92_COD_CLIENTE_CREADO := NULL;',
'       :P92_COD_PERSONA_CREADO := NULL;',
'   END;',
'',
'',
'DECLARE',
'vpersona_creado VARCHAR2(500);',
' ',
'     BEGIN',
'       SELECT nombre || ''. persona: '' || p.cod_persona || ''. '' nombre,',
'              P.cod_persona, p.cod_persona,p.nombre',
'         INTO :p92_datos, :P92_COD_PERSONA_CREADO, vpersona_creado,:P92_NOMBRE',
'         FROM personas p, ident_personas i',
'        WHERE i.numero = :P92_RUC ',
'         AND I.COD_IDENT = ''RUC''',
'         and i.cod_persona=p.cod_persona ',
'      ',
'         AND rownum = ''1'';',
'    ',
'     EXCEPTION',
'       WHEN OTHERS THEN',
'         :p92_datos       := NULL;',
'      ',
'         :P92_COD_CLIENTE_CREADO := null;',
'         :P92_COD_PERSONA_CREADO := null;',
'         vpersona_creado:= null;',
'',
'     END;',
' ',
' END;',
''))
,p_attribute_02=>'P92_RUC,P_COD_EMPRESA'
,p_attribute_03=>'P92_DATOS,P92_COD_CLIENTE_CONSULTA,P92_COD_PERSONA_CREADO,P92_COD_CLIENTE_CREADO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(23312337563411599)
,p_event_id=>wwv_flow_imp.id(23311344222411599)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_CSS'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P92_DATOS'
,p_attribute_01=>'color'
,p_attribute_02=>'#E95B54'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(23428991319756724)
,p_name=>'da_cancel'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(23488469981910223)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(23429002773756725)
,p_event_id=>wwv_flow_imp.id(23428991319756724)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(99286176692806445)
,p_name=>'Verifica RUC'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P92_RUC'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(64603533989457134)
,p_event_id=>wwv_flow_imp.id(99286176692806445)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'   DECLARE',
'     vnombre VARCHAR2(600);',
'   ',
'   BEGIN',
'     BEGIN',
'',
'          select  p.nombre || ''. Cliente: '' || nvl(c.cod_cliente,'''') || ''. '' nombre,',
'               nvl(c.cod_cliente,'''') cod_cliente, p.cod_persona ',
'          INTO :p92_datos, :p92_cod_cliente, :P92_COD_PERSONA_CREADO',
'          from ident_personas i,',
'               personas p,',
'               cc_clientes c',
'         WHERE i.numero = :P92_RUC',
'          AND I.COD_IDENT = ''RUC''',
'         and i.cod_persona=p.cod_persona ',
'         and c.cod_empresa=:P_COD_EMPRESA',
'         and c.cod_persona(+)=p.cod_persona',
'         AND rownum = ''1'';',
'',
'      ',
'          :P92_COD_CLIENTE_CREADO := :p92_cod_cliente;',
'     EXCEPTION',
'       WHEN OTHERS THEN',
'         :p92_datos       := NULL;',
'         :p92_cod_cliente := NULL;',
'         :P92_COD_CLIENTE_CREADO := null;',
'         :P92_COD_PERSONA_CREADO := null;',
'',
'     END;',
'   ',
'   END;',
''))
,p_attribute_02=>'P92_RUC'
,p_attribute_03=>'P92_DATOS,P92_COD_CLIENTE_CONSULTA,P92_COD_CLIENTE_CREADO,P92_COD_PERSONA_CREADO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(99286234161806446)
,p_event_id=>wwv_flow_imp.id(99286176692806445)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  VDATOS               VARCHAR2(32000);',
'  VDIREC               VARCHAR2(32000);',
'  V_DETALLE            VARCHAR2(10000);',
'  V_CABECERA           VARCHAR2(10000);',
'  VDATOS_RETORNO       VARCHAR2(32000);',
'  P_JSON               VARCHAR2(4000);',
'  P_DATOS              VARCHAR2(4000);',
'  L_MSJ                VARCHAR2(4000);',
'  L_PATH               VARCHAR2(200);',
'  L_ESTADO             VARCHAR2(200);',
'  NOMBRE               VARCHAR2(1);',
'  VDATOS2              VARCHAR2(5000);',
'  V_DESCRIPCION_ESTADO VARCHAR2(500);',
'BEGIN',
'  :P0_MENSAJE_VALIDACION := NULL;',
'  IF :P92_RUC IS NOT NULL THEN',
'    DECLARE',
'      T_HTTP_REQ     UTL_HTTP.REQ;',
'      T_HTTP_RESP    UTL_HTTP.RESP;',
'      T_REQUEST_BODY VARCHAR2(30000);',
'    BEGIN',
'      BEGIN',
'        VDIREC := ''http://192.168.15.102:8080/efactura-py/api/consultas/consulta-ruc'';',
'      END;',
'      VDATOS := ''{"ruc":["'' || :P92_RUC || ''"],',
'                "retornarRespuestaOriginal":"true"',
'                }'';',
'      P_JSON := ''{"ruc":["'' || :P92_RUC || ''"],',
'                "retornarRespuestaOriginal":"true"',
'                }'';',
'    ',
'      T_REQUEST_BODY := VDATOS;',
'      T_HTTP_REQ     := UTL_HTTP.BEGIN_REQUEST(VDIREC, ''POST'', ''HTTP/1.1'');',
'      UTL_HTTP.SET_HEADER(T_HTTP_REQ, ''Content-Type'', ''application/json'');',
'    ',
'      UTL_HTTP.SET_HEADER(T_HTTP_REQ, ''Content-Length'', LENGTH(VDATOS));',
'    ',
'      UTL_HTTP.WRITE_TEXT(T_HTTP_REQ, T_REQUEST_BODY);',
'      P_JSON := T_REQUEST_BODY;',
'      DBMS_OUTPUT.PUT_LINE(''t_request_body: '' || T_REQUEST_BODY);',
'    ',
'      T_HTTP_RESP := UTL_HTTP.GET_RESPONSE(T_HTTP_REQ);',
'      UTL_HTTP.READ_TEXT(T_HTTP_RESP, P_DATOS);',
'      UTL_HTTP.END_RESPONSE(T_HTTP_RESP);',
'      BEGIN',
unistr('        VDATOS2 := REPLACE(P_DATOS, ''\00D1'', ''\005Cu00D1'');'),
unistr('        VDATOS2 := REPLACE(P_DATOS, ''\00F3'', ''\005Cu00F3'');'),
unistr('        VDATOS2 := REPLACE(P_DATOS, ''\00E1'', ''\005Cu00E1'');'),
unistr('        VDATOS2 := REPLACE(P_DATOS, ''\00E1'', ''\005Cu00E1'');'),
unistr('        VDATOS2 := REPLACE(P_DATOS, ''\00F3'', ''\005Cu00F3'');'),
unistr('        VDATOS2 := REPLACE(P_DATOS, ''\00F3'', ''\005Cu00F3'');'),
unistr('        VDATOS2 := REPLACE(P_DATOS, ''\00F3'', ''\005Cu00F3'');'),
'      ',
'        APEX_JSON.PARSE(VDATOS2);',
'        :P92_ESTADO            := APEX_JSON.GET_VARCHAR2(P_PATH => ''resultadoRuc[%d].codigoRespuesta'',',
'                                                         P0     => 1);',
'        :P92_NOMBRE            := APEX_JSON.GET_VARCHAR2(P_PATH => ''resultadoRuc[%d].razonSocial'',',
'                                                         P0     => 1);',
'        :P0_MENSAJE_VALIDACION := CONVERT(REPLACE(APEX_JSON.GET_VARCHAR2(P_PATH => ''resultadoRuc[%d].mensajeError'',',
'                                                                         P0     => 1),',
'                                                  ''"'',',
'                                                  ''''),',
'                                          ''WE8MSWIN1252'',',
'                                          ''UTF8'');',
'        V_DESCRIPCION_ESTADO   := APEX_JSON.GET_VARCHAR2(P_PATH => ''resultadoRuc[%d].descripcionEstadoRuc'',',
'                                                         P0     => 1);',
'        IF :P92_ESTADO = ''EXISTE'' AND V_DESCRIPCION_ESTADO <> ''ACTIVO'' THEN',
unistr('          :P0_MENSAJE_VALIDACION := ''El n\00FAmero de Ruc est\00E1 '' ||'),
'                                    V_DESCRIPCION_ESTADO;',
'        --  :P92_NOMBRE            := NULL;',
'        ELSIF :P92_ESTADO <> ''EXISTE'' OR :P0_MENSAJE_VALIDACION IS NOT NULL THEN',
unistr('          :P0_MENSAJE_VALIDACION := ''El n\00FAmero de Ruc ingresado no existe'';'),
'        END IF;',
'      END;',
'    END;',
'  END IF;',
'END;',
''))
,p_attribute_02=>'P92_RUC'
,p_attribute_03=>'P92_ESTADO,P92_NOMBRE,P0_MENSAJE_VALIDACION'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(110452400283068148)
,p_name=>'Consulta datos del cliente'
,p_event_sequence=>70
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(110451716769068141)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(110452533221068149)
,p_event_id=>wwv_flow_imp.id(110452400283068148)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN ',
'    IF :P92_TIPO IS NULL THEN ',
'        RAISE_APPLICATION_ERROR(-20001, ''Debe seleccionar el tipo de documento del cliente'');',
'    ELSIF :P92_NRO_CONSULTA IS NULL THEN ',
unistr('        RAISE_APPLICATION_ERROR(-20001, ''Debe ingresar el n\00FAmero para a consultar''); '),
'    ELSE',
'----------    VALIDA FORMATO DE RUC Y CI',
'       IF :P92_TIPO=''RUC'' THEN',
'                declare',
'                    vpos number;',
'                    vcant number;',
'                begin',
'                    SELECT INSTR(:P92_NRO_CONSULTA, ''-'') AS posicion_del_guion, length(:P92_NRO_CONSULTA)cant_caracter',
'                    into  vpos, vcant',
'                    FROM dual;',
'                        if vpos=0 then                ',
'                                RAISE_APPLICATION_ERROR(-20001, ''RUC incorrecto, debe contener guion(-)'');',
'                        else',
'                            if vpos <> (vcant-1) then',
'                                RAISE_APPLICATION_ERROR(-20001, ''El formato del RUC con respecto al guion(-) es incorrecto'');',
'                            end if;    ',
'                        end if;',
'                end;',
'       ELSIF :P92_TIPO=''CI'' THEN',
'            IF NOT REGEXP_LIKE(:P92_NRO_CONSULTA, ''^[0-9]+$'') THEN',
unistr('                RAISE_APPLICATION_ERROR(-20001, ''Formato de C\00E9dula de Identidad incorrecto, debe contener solo numeros'');'),
'            END IF;',
'       END IF;    ',
'---------',
'    END IF;',
'',
'    inv.ccclient.pr_obtiene_datos_cliente(p_cod_empresa    => :P_COD_EMPRESA,',
'    p_cod_tipo    => :P92_TIPO,',
'                                     p_numero      => :P92_NRO_CONSULTA,',
'                                     p_cod_cliente => :P92_COD_CLIENTE_CONSULTA,',
'                                     p_cod_persona => :P92_COD_PERSONA_CONSULTA,',
'                                     p_nombre      => :P92_NOMBRE_APELLIDO,',
'                                     p_estado      => :P92_ESTADO_CLIENTE_CONSULTA,',
'                                     p_opcion      => :P92_OPCION);',
'',
'END;'))
,p_attribute_02=>'P92_TIPO,P92_NRO_CONSULTA,P_COD_EMPRESA'
,p_attribute_03=>'P92_COD_CLIENTE_CONSULTA,P92_COD_PERSONA_CONSULTA,P92_NOMBRE_APELLIDO,P92_ESTADO_CLIENTE_CONSULTA,P92_OPCION'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(64600583356457104)
,p_name=>'Muestra regiones'
,p_event_sequence=>80
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P92_OPCION'
,p_condition_element=>'P92_OPCION'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'1'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(64600674063457105)
,p_event_id=>wwv_flow_imp.id(64600583356457104)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('var htmldb_delete_messag_agregar =''El n\00FAmero ingresado no se encuentra. \00BFDesea agregar?'';  '),
'    apex.message.confirm(htmldb_delete_messag_agregar, function( okPressed ) { ',
'        if( okPressed ) {',
'            //apex.item("P92_OCULTAR").setValue(1); ',
'            ',
'            var tipo = apex.item("P92_TIPO").getValue();',
'            var numero = apex.item("P92_NRO_CONSULTA").getValue();',
'            if (tipo === "CI") {',
'',
'                apex.item("P92_OCULTAR").setValue(1); ',
'',
'                apex.item("P92_TIPO_DATOS").setValue(null);',
'                apex.item("P92_NRO").setValue(null);',
'',
'                apex.item("P92_CI").setValue(numero);',
'',
'            }else if  (tipo === "RUC")  {',
'                apex.item("P92_OCULTAR").setValue(1); ',
'',
'                apex.item("P92_TIPO_DATOS").setValue(null);',
'                apex.item("P92_NRO").setValue(null);',
'',
'                apex.item("P92_RUC").setValue(numero);',
'',
'            }else {',
'                apex.item("P92_OCULTAR").setValue(2); ',
'',
'                apex.item("P92_CI").setValue(null);',
'                apex.item("P92_RUC").setValue(null);',
'',
'                apex.item("P92_TIPO_DATOS").setValue(tipo);',
'                apex.item("P92_NRO").setValue(numero);',
'            }',
'             document.getElementById("consulta").classList.add("is-collapsed"); ',
'             $("#agregar_cliente").find("button.t-Button--hideShow").eq(0).click(); ',
'        } else {',
'           null;',
'        }',
'    });'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(64603848671457137)
,p_name=>'Muestra regiones_1'
,p_event_sequence=>90
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P92_OPCION'
,p_condition_element=>'P92_OPCION'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'2'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(64603972474457138)
,p_event_id=>wwv_flow_imp.id(64603848671457137)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('var htmldb_delete_messag_agregar =''El registro ingresado no existe como cliente. \00BFDesea agregar?'';  '),
'    apex.message.confirm(htmldb_delete_messag_agregar, function( okPressed ) { ',
'        if( okPressed ) {',
'            var tipo = apex.item("P92_TIPO").getValue();',
'            var numero = apex.item("P92_NRO_CONSULTA").getValue();',
'            if (tipo === "CI") {',
'',
'                apex.item("P92_OCULTAR").setValue(1); ',
'',
'                apex.item("P92_TIPO_DATOS").setValue(null);',
'                apex.item("P92_NRO").setValue(null);',
'',
'                apex.item("P92_CI").setValue(numero);',
'',
'            }else if  (tipo === "RUC")  {',
'                apex.item("P92_OCULTAR").setValue(1); ',
'',
'                apex.item("P92_TIPO_DATOS").setValue(null);',
'                apex.item("P92_NRO").setValue(null);',
'',
'                apex.item("P92_RUC").setValue(numero);',
'',
'            }else {',
'                apex.item("P92_OCULTAR").setValue(2); ',
'',
'                apex.item("P92_CI").setValue(null);',
'                apex.item("P92_RUC").setValue(null);',
'',
'                apex.item("P92_TIPO_DATOS").setValue(tipo);',
'                apex.item("P92_NRO").setValue(numero);',
'            }',
'             document.getElementById("consulta").classList.add("is-collapsed"); ',
'            $("#agregar_cliente").find("button.t-Button--hideShow").eq(0).click(); ',
'        } else {',
'           null;',
'        }',
'    });'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(64600755643457106)
,p_name=>'Verifica datos'
,p_event_sequence=>100
,p_condition_element=>'P92_COD_PERSONA_CREADO'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(64600823663457107)
,p_event_id=>wwv_flow_imp.id(64600755643457106)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
' $("#consulta").find("button.t-Button--hideShow").eq(0).click(); ',
'  $("#agregar_cliente").find("button.t-Button--hideShow").eq(0).click(); ',
'  '))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(65784655735368502)
,p_event_id=>wwv_flow_imp.id(64600755643457106)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P92_NRO,P92_TIPO_DATOS'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(64600967565457108)
,p_name=>'Quita los espacios y caracteres especiales'
,p_event_sequence=>110
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P92_NOMBRE'
,p_bind_type=>'bind'
,p_bind_event_type=>'focusout'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(64601027077457109)
,p_event_id=>wwv_flow_imp.id(64600967565457108)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  :P92_NOMBRE := REGEXP_REPLACE(',
'                   REGEXP_REPLACE(',
unistr('                     TRANSLATE(:P92_NOMBRE, ''\00E1\00E9\00ED\00F3\00FA\00FC\00C1\00C9\00CD\00D3\00DA\00DC'', ''aeiouuAEIOUU''),'),
'                     ''[^a-zA-Z0-9 ]+'',',
'                     '' ''),',
'                   '' +'', '' '');',
'END;',
'',
'',
''))
,p_attribute_02=>'P92_NOMBRE'
,p_attribute_03=>'P92_NOMBRE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(64604380779457142)
,p_name=>'Tipo_dato_nro'
,p_event_sequence=>120
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P92_OCULTAR'
,p_condition_element=>'P92_OCULTAR'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'1'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(64604423794457143)
,p_event_id=>wwv_flow_imp.id(64604380779457142)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P92_TIPO_DATOS,P92_NRO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(64605081352457149)
,p_event_id=>wwv_flow_imp.id(64604380779457142)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P92_CI,P92_RUC'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(64604571368457144)
,p_name=>'CI_RUC'
,p_event_sequence=>130
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P92_OCULTAR'
,p_condition_element=>'P92_OCULTAR'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'2'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(64604681013457145)
,p_event_id=>wwv_flow_imp.id(64604571368457144)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P92_CI,P92_RUC'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(64604971299457148)
,p_event_id=>wwv_flow_imp.id(64604571368457144)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P92_TIPO_DATOS,P92_NRO'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(65784765530368503)
,p_name=>'Busca datos cliente'
,p_event_sequence=>140
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P92_RUC'
,p_condition_element=>'P92_RUC'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'focusout'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(65784978874368505)
,p_event_id=>wwv_flow_imp.id(65784765530368503)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'   DECLARE',
'     vnombre VARCHAR2(600);',
'   ',
'   BEGIN',
'     BEGIN',
'',
'          select  p.nombre || ''. Cliente: '' || nvl(c.cod_cliente,'''') || ''. '' nombre,',
'               nvl(c.cod_cliente,'''') cod_cliente, p.cod_persona ',
'          INTO :p92_datos, :p92_cod_cliente, :P92_COD_PERSONA_CREADO',
'          from ident_personas i,',
'               personas p,',
'               cc_clientes c',
'         WHERE i.numero = :P92_RUC',
'          AND I.COD_IDENT = ''RUC''',
'         and i.cod_persona=p.cod_persona ',
'         and c.cod_empresa=:P_COD_EMPRESA',
'         and c.cod_persona(+)=p.cod_persona',
'         AND rownum = ''1'';',
'',
'      ',
'          :P92_COD_CLIENTE_CREADO := :p92_cod_cliente;',
'     EXCEPTION',
'       WHEN OTHERS THEN',
'         :p92_datos       := NULL;',
'         :p92_cod_cliente := NULL;',
'         :P92_COD_CLIENTE_CREADO := null;',
'         :P92_COD_PERSONA_CREADO := null;',
'',
'     END;',
'   ',
'   END;',
''))
,p_attribute_02=>'P92_RUC'
,p_attribute_03=>'P92_DATOS,P92_COD_CLIENTE_CONSULTA,P92_COD_CLIENTE_CREADO,P92_COD_PERSONA_CREADO'
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
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(65785040835368506)
,p_event_id=>wwv_flow_imp.id(65784765530368503)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  VDATOS               VARCHAR2(32000);',
'  VDIREC               VARCHAR2(32000);',
'  V_DETALLE            VARCHAR2(10000);',
'  V_CABECERA           VARCHAR2(10000);',
'  VDATOS_RETORNO       VARCHAR2(32000);',
'  P_JSON               VARCHAR2(4000);',
'  P_DATOS              VARCHAR2(4000);',
'  L_MSJ                VARCHAR2(4000);',
'  L_PATH               VARCHAR2(200);',
'  L_ESTADO             VARCHAR2(200);',
'  NOMBRE               VARCHAR2(1);',
'  VDATOS2              VARCHAR2(5000);',
'  V_DESCRIPCION_ESTADO VARCHAR2(500);',
'BEGIN',
'  :P0_MENSAJE_VALIDACION := NULL;',
'  IF :P92_RUC IS NOT NULL THEN',
'    DECLARE',
'      T_HTTP_REQ     UTL_HTTP.REQ;',
'      T_HTTP_RESP    UTL_HTTP.RESP;',
'      T_REQUEST_BODY VARCHAR2(30000);',
'    BEGIN',
'      BEGIN',
'        VDIREC := ''http://192.168.15.102:8080/efactura-py/api/consultas/consulta-ruc'';',
'      END;',
'      VDATOS := ''{"ruc":["'' || :P92_RUC || ''"],',
'                "retornarRespuestaOriginal":"true"',
'                }'';',
'      P_JSON := ''{"ruc":["'' || :P92_RUC || ''"],',
'                "retornarRespuestaOriginal":"true"',
'                }'';',
'    ',
'      T_REQUEST_BODY := VDATOS;',
'      T_HTTP_REQ     := UTL_HTTP.BEGIN_REQUEST(VDIREC, ''POST'', ''HTTP/1.1'');',
'      UTL_HTTP.SET_HEADER(T_HTTP_REQ, ''Content-Type'', ''application/json'');',
'    ',
'      UTL_HTTP.SET_HEADER(T_HTTP_REQ, ''Content-Length'', LENGTH(VDATOS));',
'    ',
'      UTL_HTTP.WRITE_TEXT(T_HTTP_REQ, T_REQUEST_BODY);',
'      P_JSON := T_REQUEST_BODY;',
'      DBMS_OUTPUT.PUT_LINE(''t_request_body: '' || T_REQUEST_BODY);',
'    ',
'      T_HTTP_RESP := UTL_HTTP.GET_RESPONSE(T_HTTP_REQ);',
'      UTL_HTTP.READ_TEXT(T_HTTP_RESP, P_DATOS);',
'      UTL_HTTP.END_RESPONSE(T_HTTP_RESP);',
'      BEGIN',
unistr('        VDATOS2 := REPLACE(P_DATOS, ''\00D1'', ''\005Cu00D1'');'),
unistr('        VDATOS2 := REPLACE(P_DATOS, ''\00F3'', ''\005Cu00F3'');'),
unistr('        VDATOS2 := REPLACE(P_DATOS, ''\00E1'', ''\005Cu00E1'');'),
unistr('        VDATOS2 := REPLACE(P_DATOS, ''\00E1'', ''\005Cu00E1'');'),
unistr('        VDATOS2 := REPLACE(P_DATOS, ''\00F3'', ''\005Cu00F3'');'),
unistr('        VDATOS2 := REPLACE(P_DATOS, ''\00F3'', ''\005Cu00F3'');'),
unistr('        VDATOS2 := REPLACE(P_DATOS, ''\00F3'', ''\005Cu00F3'');'),
'      ',
'        APEX_JSON.PARSE(VDATOS2);',
'        :P92_ESTADO            := APEX_JSON.GET_VARCHAR2(P_PATH => ''resultadoRuc[%d].codigoRespuesta'',',
'                                                         P0     => 1);',
'        :P92_NOMBRE            := APEX_JSON.GET_VARCHAR2(P_PATH => ''resultadoRuc[%d].razonSocial'',',
'                                                         P0     => 1);',
'        :P0_MENSAJE_VALIDACION := CONVERT(REPLACE(APEX_JSON.GET_VARCHAR2(P_PATH => ''resultadoRuc[%d].mensajeError'',',
'                                                                         P0     => 1),',
'                                                  ''"'',',
'                                                  ''''),',
'                                          ''WE8MSWIN1252'',',
'                                          ''UTF8'');',
'        V_DESCRIPCION_ESTADO   := APEX_JSON.GET_VARCHAR2(P_PATH => ''resultadoRuc[%d].descripcionEstadoRuc'',',
'                                                         P0     => 1);',
'        IF :P92_ESTADO = ''EXISTE'' AND V_DESCRIPCION_ESTADO <> ''ACTIVO'' THEN',
unistr('          :P0_MENSAJE_VALIDACION := ''El n\00FAmero de Ruc est\00E1 '' ||'),
'                                    V_DESCRIPCION_ESTADO;',
'        --  :P92_NOMBRE            := NULL;',
'        ELSIF :P92_ESTADO <> ''EXISTE'' OR :P0_MENSAJE_VALIDACION IS NOT NULL THEN',
unistr('          :P0_MENSAJE_VALIDACION := ''El n\00FAmero de Ruc ingresado no existe'';'),
'        END IF;',
'      END;',
'    END;',
'  END IF;',
'END;',
''))
,p_attribute_02=>'P92_RUC'
,p_attribute_03=>'P92_ESTADO,P92_NOMBRE,P0_MENSAJE_VALIDACION'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(213278252008599534)
,p_name=>'da_hb_btn'
,p_event_sequence=>150
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(213278368191599535)
,p_event_id=>wwv_flow_imp.id(213278252008599534)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  var boton = $("#agregar_cliente").find("button.t-Button--hideShow");',
'   boton.attr(''disabled'',''disabled'');'))
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(76728924139030036)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_INIT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    :P92_NRO_CONSULTA:=null;',
'    :P92_CI :=null;',
'    :P92_RUC :=null;',
'    :P92_ES_FISICA := ''S'';',
'    ',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(66405756456023101)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Valida ruc'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'--if :P92_RUC is not null then ',
'declare ',
'    V_CONT_RUC NUMBER;',
'    v_dato varchar2(50);',
'    v_verificador NUMBER;',
'begin',
'',
'',
'    BEGIN',
'      select  count(*)',
'      INTO V_CONT_RUC',
'      from ident_personas i,',
'           personas p,',
'           cc_clientes c',
'     WHERE i.numero = :P92_RUC',
'      AND I.COD_IDENT = ''RUC''',
'     and i.cod_persona=p.cod_persona ',
'     and c.cod_empresa= :P_COD_EMPRESA',
'     and c.cod_persona=p.cod_persona',
'     AND rownum = 1;',
'    EXCEPTION ',
'        WHEN OTHERS THEN ',
'        V_CONT_RUC  := 0;',
'    END;',
'',
'    if V_CONT_RUC > 0 then ',
'        raise_application_error(-20001, ''Error. El ruc ingresado ya esta registrado'');',
'    end if;',
'',
'------falta verificar del porque no valida correctamente-----',
'',
'',
'    begin ',
'        select substr(:P92_RUC, 1, length(:P92_RUC) - 2)',
'        into v_dato',
'        from dual;',
'    end;',
'',
'    BEGIN',
'      select  count(*)',
'      INTO v_verificador',
'      from ident_personas i',
'     WHERE i.numero = v_dato',
'      AND I.COD_IDENT = ''CI''',
'     AND rownum = 1;',
'    EXCEPTION ',
'        WHEN OTHERS THEN ',
'        v_verificador  := 0;',
'    END;',
'',
'    if v_verificador > 0 then ',
'        raise_application_error(-20001, ''Error. El ruc ingresado ya esta registrada. Verificar la busqueda por CI'');',
'    end if;',
'',
'    end;',
'--end if;',
'',
'',
'',
'',
'',
'if :P92_CI is not null then ',
'declare ',
'    V_CONT_CI NUMBER;',
'begin',
'',
'',
'    BEGIN',
'      select  count(*)',
'      INTO V_CONT_CI',
'      from ident_personas i,',
'           personas p,',
'           cc_clientes c',
'     WHERE i.numero = :P92_CI',
'      AND I.COD_IDENT = ''CI''',
'     and i.cod_persona=p.cod_persona ',
'   and c.cod_empresa= :P_COD_EMPRESA',
'     and c.cod_persona=p.cod_persona',
'     AND rownum = 1;',
'    EXCEPTION ',
'        WHEN OTHERS THEN ',
'        V_CONT_CI  := 0;',
'    END;',
'',
'    if V_CONT_CI > 0 then ',
unistr('        raise_application_error(-20001, ''Error. La c\00E9dula ingresada ya esta registrada'');'),
'    end if;',
'',
'',
'    end;',
'end if;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(23299859152411592)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(23308691406411597)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'crea_cliente'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P92_cod_cliente is null then',
'   if :P92_COD_PERSONA_CREADO is not null and :P92_cod_cliente is null then ',
'      declare ',
'         v_codigo varchar2(100);',
'         vcli varchar2(50);',
'         verr EXCEPTION;',
'      begin',
'              IF :P92_coD_tip_cliente = ''9'' THEN',
'                v_codigo := ''71'';',
'              ELSIF :P92_cod_tip_cliente = ''23'' THEN',
'                v_codigo := ''30'';',
'              ELSIF :P92_cod_tip_cliente = ''18'' THEN',
'                v_codigo := ''74'';',
'              ELSE',
'                v_codigo := NULL;',
'              END IF;',
'',
'               BEGIN',
'                 select nvl(max(to_number(cod_cliente)), 0) + 1',
'                   into vcli',
'                   from cc_clientes',
'                  where cod_empresa = :P_COD_EMPRESA;',
'                 :P92_cod_cliente := vcli;',
'               EXCEPTION',
'                 when others then',
unistr('                  apex_application.g_print_success_message := ''<span style="color:white">Error en la generaci\00F3n del c\00F3digo de cliente .</span>'';'),
unistr('                       RAISE_APPLICATION_ERROR(-20001, ''Error en la generaci\00F3n del c\00F3digo de cliente(1)''||sqlerrm);'),
'                  ROLLBACK;',
'               END;',
'',
'               BEGIN',
'                 insert into cc_clientes',
'                            (cod_empresa,',
'                             cod_cliente,',
'                             cod_persona,',
'                             estado,',
'                             plazo,',
'                             cod_condicion_venta,',
'                             nro_jerarquia,',
'                             tip_documento,',
'                             tip_cliente,',
'                             cod_vendedor,',
'                             cod_moneda_limite,',
'                             limite_credito,',
'                             cod_zona,',
'                             fec_alta,',
'                             cod_usuario,',
'                             cod_lista_precio,',
'                             nro_llamada,',
'                             TIP_OPERACION,',
'                             cod_cobrador)',
'                          values',
'                            (:P_COD_EMPRESA,',
'                             :P92_cod_cliente,',
'                             :P92_COD_PERSONA_CREADO,',
'                             ''A'',',
'                             ''0'',',
'                             :P92_cod_condicion_venta,',
'                             ''600'',',
'                             NULL,',
'                             :P92_cod_tip_cliente,',
'                             :P92_cod_vendedor,',
'                             ''1'',',
'                             1,',
'                             NULL,',
'                             sysdate,',
'                             :P92_cod_usuario,',
'                             :P92_cod_lista_precio,',
'                             NULL,',
'                             NULL,',
'                             v_codigo);',
'                             :P92_COD_CLIENTE_CREADO := :P92_cod_cliente;',
'',
'',
'                             declare ',
'                                V_CONT_RUC NUMBER;',
'                             BEGIN',
'                                BEGIN',
'                                  select  count(*)',
'                                  INTO V_CONT_RUC',
'                                  from ident_personas i,',
'                                       personas p,',
'                                       cc_clientes c',
'                                 WHERE i.numero = :P92_RUC',
'                                  AND I.COD_IDENT = ''RUC''',
'                                 and i.cod_persona=p.cod_persona ',
'                                 and nvl(c.cod_empresa,''1'')=:P_COD_EMPRESA',
'                                 and c.cod_persona(+)=p.cod_persona',
'                                 AND rownum = ''1'';',
'                              EXCEPTION ',
'                                 WHEN OTHERS THEN ',
'                                    V_CONT_RUC  := 0;',
'                              END;',
'',
'                              IF V_CONT_RUC = 0 THEN ',
'                                    IF :P92_ruc IS NOT NULL THEN',
'                                      IF NOT INV.ccclient.inserta_doc(:P92_TIPO, :P92_NRO,  :P92_COD_PERSONA_CREADO)  THEN',
'                                        raise verr;',
'                                      END IF;',
'                                    END IF;',
'                                END IF;',
'                              END;',
'',
'                             declare ',
'                                V_CONT_CI NUMBER;',
'                             BEGIN',
'                                BEGIN',
'                                  select  count(*)',
'                                  INTO V_CONT_CI',
'                                  from ident_personas i,',
'                                       personas p,',
'                                       cc_clientes c',
'                                 WHERE i.numero = :P92_CI',
'                                  AND I.COD_IDENT = ''CI''',
'                                 and i.cod_persona=p.cod_persona ',
'                               and c.cod_empresa= :P_COD_EMPRESA',
'                                 and c.cod_persona(+)=p.cod_persona',
'                                 AND rownum = ''1'';',
'                                EXCEPTION ',
'                                    WHEN OTHERS THEN ',
'                                    V_CONT_CI  := 0;',
'                                END;',
'                                IF V_CONT_CI = 0 THEN ',
'                                    IF :P92_ci IS NOT NULL THEN',
'                                      IF NOT INV.ccclient.inserta_doc(''CI'', :P92_ci, :P92_COD_PERSONA_CREADO) THEN',
'                                        raise verr;',
'                                      END IF;',
'                                    END IF;',
'                                END IF;',
'                             END;',
'',
'',
'',
'                              ',
'',
unistr('                             :P92_DATOS :=''El cliente ha sido creado con \00E9xito.'' ||''   C\00F3digo de cliente: '' || :P92_cod_cliente   ;'),
unistr('                              apex_application.g_print_success_message := ''<span style="color:white">      El cliente ha sido creado con \00E9xito. '' || :P92_cod_cliente  || ''.</span>''; '),
'             ',
'                exception',
'                when others then                 ',
unistr('                  apex_application.g_print_success_message := ''<span style="color:white">Error en la generaci\00F3n del c\00F3digo de cliente.''||chr(10)||sqlerrm||''</span>'';'),
'                  :P92_COD_CLIENTE_CREADO :=null;',
'                   :P92_cod_cliente:=null;',
unistr('                    RAISE_APPLICATION_ERROR(-20001, ''Error en la generaci\00F3n del c\00F3digo de cliente(2)''||sqlerrm);'),
'                  ROLLBACK; ',
'                  ',
'                end;',
'      end;',
'   else ',
'               begin',
'                    declare',
'                      vruc varchar2(30);',
'                      vnom varchar2(100);',
'                      vcod_persona varchar2(500);',
'                      V_COD_CLIENTE   varchar2(30);',
'                      V_COD_PERSONA varchar2(100);',
'                    begin',
'                      /*select max(cod_persona)',
'                        into vruc',
'                        from ident_personas',
'                       where numero = :P92_ruc;*/',
'',
'                       select a.cod_cliente, p.cod_persona',
'                          INTO V_COD_CLIENTE,  V_COD_PERSONA',
'                          from cc_clientes  a, personas p, inv.ident_personas i',
'                          where a.cod_persona(+) = p.cod_persona',
'                          and i.cod_persona(+) = p.cod_persona',
'                          and i.cod_ident(+) = ''RUC''',
'                          AND i.numero = :P92_ruc',
'                          and a.cod_empresa=:P_COD_EMPRESA;',
'                    ',
'                      select nombre into vnom from personas where cod_persona = vruc;',
'                    ',
'                      if vnom is not null then',
'                                  :P92_COD_CLIENTE_CREADO := V_COD_CLIENTE;',
'                                  :P92_COD_PERSONA_CREADO := V_COD_PERSONA;',
'                                  apex_application.g_print_success_message := ''<span style="color:white">',
unistr('                                 El n\00FAmero de RUC ingresado ya se encuentra registrado a la persona cod. '' || vruc ||'),
'                                '' - '' || vnom || ''. ',
'                                 .</span>'';',
'                        ROLLBACK;',
'                      end if;',
'                    exception',
'                      when others then',
'                        if vnom is null then',
'',
'                          DECLARE',
'                            vdoc VARCHAR2(15);',
'                            vcli VARCHAR2(15);',
'                            vper VARCHAR2(15);',
'                            vnom VARCHAR2(80);',
'                            vfan VARCHAR2(80);',
'                            vcod VARCHAR2(15);',
'                            vcob VARCHAR2(15);',
'                            verr EXCEPTION;',
'                            FUNCTION existe_doc(p_tip_documento VARCHAR2,',
'                                                p_nro_documento VARCHAR2) RETURN BOOLEAN IS',
'                            BEGIN',
'                              BEGIN',
'                                select id.numero, p.nombre, p.nomb_fantasia, id.cod_persona',
'                                  into vdoc, vnom, vfan, vper',
'                                  from ident_personas id, personas p',
'                                 where id.cod_ident = p_tip_documento',
'                                   and numero = p_nro_documento',
'                                   and id.cod_persona = p.cod_persona',
'                                   and rownum = 1;',
'                                --',
'                                IF vdoc IS NOT NULL THEN',
'                                  BEGIN',
'                                    select cod_cliente',
'                                      into vcli',
'                                      from cc_clientes',
'                                     where cod_empresa = ''1''',
'                                       and cod_persona = vper;',
'                                    --',
'                                    IF vcli IS NOT NULL THEN',
'                                       ',
'                                          apex_application.g_print_success_message := ''<span style="color:white">',
unistr('                                            El n\00FAmero de documento seleccionado ya fue definido en el cliente: '' ||'),
'                                                             chr(13) || nvl(vnom, vfan) || '' ('' || vcli ||',
'                                                             ''). ',
'                                             .</span>'';         ',
'                                      return TRUE;',
'                                    END IF;',
'                                  EXCEPTION',
'                                    when no_data_found then',
'                                                  ',
'                                                 ',
'                                               apex_application.g_print_success_message := ''<span style="color:white">',
unistr('                                El n\00FAmero de documento seleccionado ya fue definido en la persona: '' ||'),
'                                                 chr(13) || nvl(vnom, vfan) || '' ('' || vper ||',
'                                                 '').          .</span>'';        ',
'                                      return TRUE;',
'                                  END;',
'                                END IF;',
'                              EXCEPTION',
'                                when no_data_found then',
'                                  NULL;',
'                              END;',
'                            ',
'                              RETURN FALSE;',
'                              RETURN NULL;',
'                            EXCEPTION',
'                              when others then                            ',
'                                   apex_application.g_print_success_message := ''<span style="color:white">   No se puede verificar el numero de documento .</span>'';',
'                                RETURN FALSE;',
'                            END;',
'                          ',
'                            /*FUNCTION inserta_doc(p_tip_documento VARCHAR2,',
'                                                 p_nro_documento VARCHAR2) RETURN BOOLEAN IS',
'                            BEGIN',
'                              insert into ident_personas',
'                                (cod_persona, cod_ident, numero, fec_vencimiento)',
'                              values',
'                                (vcod_persona,',
'                                 p_tip_documento,',
'                                 p_nro_documento,',
'                                 to_date(''31/12/'' || to_char(add_months(sysdate, 60), ''YYYY''),',
'                                         ''DD/MM/YYYY''));',
'                              return TRUE;',
'                              RETURN NULL;',
'                            EXCEPTION',
'                              when others then',
'                                            ',
'                     apex_application.g_print_success_message := ''<span style="color:white">   No se puede insertar el documento de la persona .</span>'';                         ',
'                                return FALSE;',
'                            END;*/',
'                          ',
'                          BEGIN',
'                            --break;',
'                            IF :P92_COD_TIP_CLIENTE IS NULL THEN',
'                           ',
'                              apex_application.g_print_success_message := ''<span style="color:white">Debe completar el Tipo de cliente.</span>'';',
'                               ',
'                              raise verr;',
'                            END IF;',
'                          ',
'                            IF :P92_COD_LISTA_PRECIO IS NULL THEN',
'                               apex_application.g_print_success_message := ''<span style="color:white">Debe completar la lista de precios.</span>'';',
'                              raise verr;',
'                            END IF;',
'                          ',
'                            IF :P92_cod_provincia IS NULL THEN',
'                            ',
'                             apex_application.g_print_success_message := ''<span style="color:white">Debe completar el departamento del cliente.</span>'';',
'                              raise verr;',
'                            END IF;',
'                          ',
'                            IF :P92_cod_ciudad IS NULL THEN',
'                              apex_application.g_print_success_message := ''<span style="color:white">Debe completar la ciudad del cliente.</span>'';',
'                              raise verr;',
'                            END IF;',
'                          ',
'                           ',
'                          ',
'                            IF :P92_es_fisica = ''N'' THEN',
'                              -- persona juridica',
'                               ',
'                            ',
'                              IF :P92_ruc IS NULL THEN',
'                                 apex_application.g_print_success_message := ''<span style="color:white">Debe ingresar el RUC del cliente.</span>'';',
'                            ',
'                            ',
'                                raise verr;',
'                              END IF;',
'                            END IF;',
'                          ',
'                            ',
'                          ',
'                            IF :P92_ci IS NOT NULL THEN',
'                              IF existe_doc(''CI'', :P92_ci) THEN',
'                                raise verr;',
'                              END IF;',
'                            END IF;',
'                          ',
'                            IF :P92_ruc IS NOT NULL THEN',
'                              IF existe_doc(''RUC'', :P92_RUC) THEN',
'                                raise verr;',
'                              END IF;',
'                            END IF;',
'                          ',
'                            BEGIN',
'                              select nvl(max(to_number(cod_persona)), 0) + 1',
'                                into vcod',
'                                from personas;',
'                            ',
'                              Vcod_persona := vcod;',
'                            EXCEPTION',
'                              when verr then',
'                                raise verr;',
'                              when others then',
'                                apex_application.g_print_success_message := ''<span style="color:white">Error en la generacion del codigo de persona.</span>'';',
'                                raise verr;',
'                            END;',
'                          ',
'                            IF :P92_cod_cliente IS NULL THEN',
'                              BEGIN',
'                                select nvl(max(to_number(cod_cliente)), 0) + 1',
'                                  into vcli',
'                                  from cc_clientes',
'                                 where cod_empresa = :P_COD_EMPRESA;',
'                                :P92_cod_cliente := vcli;',
'                              EXCEPTION',
'                                when verr then',
'                                  raise verr;',
'                                when others then',
unistr('                                 apex_application.g_print_success_message := ''<span style="color:white">Error en la generaci\00F3n del c\00F3digo de cliente .</span>'';'),
'                                 ROLLBACK;',
'                              END;',
'                            END IF;        ',
'                            BEGIN',
'                              BEGIN',
'                                insert into personas',
'                                  (cod_persona,',
'                                   es_fisica,',
'                                   nombre,',
'                                   apenombre,',
'                                   cod_pais,',
'                                   nacionalidad,',
'                                   nomb_fantasia,',
'                                   cod_sector,',
'                                   alta_por,',
'                                   fec_alta,',
'                                   direc_electronica,',
'                                   direc_electronica_st)',
'                                values',
'                                  (Vcod_persona,',
'                                   :p92_es_fisica,',
'                                   :p92_nombre,',
'                                   :p92_nombre,',
'                                   :p92_cod_pais,',
'                                   :p92_nacionalidad,',
'                                   :p92_nombre,',
'                                   :p92_cod_sector,',
'                                   :p92_cod_usuario,',
'                                   sysdate,',
'                                   :p92_correo,',
'                                   :p92_email_st);',
'                              EXCEPTION',
'                                when verr then',
'                                  raise verr;',
'                                when others then',
unistr('                                apex_application.g_print_success_message := ''<span style="color:white">Error en la generaci\00F3n del c\00F3digo de persona .</span>''; '),
'                                  raise verr;',
'                              END;',
'                             IF :P92_CORREO IS NOT NULL THEN',
'                  											      BEGIN',
'                  												        insert into cc_contactos_clientes(cod_empresa, cod_contacto, cod_cliente, email , fec_alta, alta_por)',
'                  												                            values( :P_COD_EMPRESA,''FA'',:P92_COD_CLIENTE, :P92_CORREO,SYSDATE,:P_COD_USUARIO);',
'                  											      EXCEPTION',
'                  																when verr then',
'                  																		raise verr;',
'                  																when others then',
'                  													 ',
'                                                       apex_application.g_print_success_message := ''<span style="color:white">No se pudo insertar el email de la persona .</span>''; ',
'                  																		raise verr;',
'                  											      END;',
'                  										    END IF;',
'',
'                              IF :p92_direccion IS NOT NULL OR',
'                                 :p92_cod_pais IS NOT NULL OR',
'                                 :p92_cod_provincia IS NOT NULL OR',
'                                 :p92_cod_ciudad IS NOT NULL THEN',
'                                BEGIN',
'                                  insert into direc_personas',
'                                    (cod_persona,',
'                                     cod_direccion,',
'                                     detalle,',
'                                     cod_pais,',
'                                     cod_provincia,',
'                                     cod_ciudad,',
'                                     por_defecto,',
'                                     tip_direccion)',
'                                  values',
'                                    (vcod_persona,',
'                                     ''0'',',
'                                     :p92_direccion,',
'                                     :p92_cod_pais,',
'                                     :p92_cod_provincia,',
'                                     :p92_cod_ciudad,',
'                                     ''S'',',
'                                     ''C'');',
'                                  COMMIT;',
'                                EXCEPTION',
'                                  when verr then',
'                                    raise verr;',
'                                  when others then',
unistr('                                   apex_application.g_print_success_message := ''<span style="color:white">Error en la generaci\00F3n de la direccion de cliente .</span>'';'),
'                                    raise verr;',
'                                END;',
'                              END IF;',
'                            ',
'                              BEGIN',
'                                IF :P92_coD_tip_cliente = ''9'' THEN',
'                                  vcob := ''71'';',
'                                ELSIF :P92_cod_tip_cliente = ''23'' THEN',
'                                  vcob := ''30'';',
'                                ELSIF :P92_cod_tip_cliente = ''18'' THEN',
'                                  vcob := ''74'';',
'                                ELSE',
'                                  vcob := NULL;',
'                                END IF;',
'                              ',
'                                insert into cc_clientes',
'                                  (cod_empresa,',
'                                   cod_cliente,',
'                                   cod_persona,',
'                                   estado,',
'                                   plazo,',
'                                   cod_condicion_venta,',
'                                   nro_jerarquia,',
'                                   tip_documento,',
'                                   tip_cliente,',
'                                   cod_vendedor,',
'                                   cod_moneda_limite,',
'                                   limite_credito,',
'                                   cod_zona,',
'                                   fec_alta,',
'                                   cod_usuario,',
'                                   cod_lista_precio,',
'                                   nro_llamada,',
'                                   TIP_OPERACION,',
'                                   cod_cobrador)',
'                                values',
'                                  (:p_cod_empresa,',
'                                   :P92_cod_cliente,',
'                                   Vcod_persona,',
'                                   ''A'',',
'                                   ''0'',',
'                                   :P92_cod_condicion_venta,',
'                                   ''600'',',
'                                   NULL,',
'                                   :P92_cod_tip_cliente,',
'                                   :P92_cod_vendedor,',
'                                   ''1'',',
'                                   1,',
'                                   NULL,',
'                                   sysdate,',
'                                   :P92_cod_usuario,',
'                                   :P92_cod_lista_precio,',
'                                   NULL,',
'                                   NULL,',
'                                   vcob);',
'                                  ',
unistr('                                   --  :P92_DATOS :=''El cliente ha sido creado con \00E9xito.'' ||''   C\00F3digo de cliente: '' || :P92_cod_cliente   ;'),
'                                     :P92_COD_CLIENTE_CREADO := :P92_cod_cliente;',
'                                     :P92_COD_PERSONA_CREADO := Vcod_persona;',
'                              EXCEPTION',
'                                when verr then',
'                                 :P92_COD_CLIENTE_CREADO :=null;',
'                   :P92_cod_cliente:=null;',
unistr('                    RAISE_APPLICATION_ERROR(-20001, ''Error en la generaci\00F3n del c\00F3digo de cliente(7)''||sqlerrm);'),
'                                  raise verr;',
'',
'                                when others then',
'                                 apex_application.g_print_success_message := ''<span style="color:white">Error en la insercion del cliente.''||sqlerrm||''</span>'';  ',
'                                          :P92_COD_CLIENTE_CREADO :=null;',
'                   :P92_cod_cliente:=null;',
unistr('                    RAISE_APPLICATION_ERROR(-20001, ''Error en la generaci\00F3n del c\00F3digo de cliente(8)''||sqlerrm);'),
'                                  raise verr;',
'                              END;',
'                            ',
'                              IF :P92_ci IS NOT NULL THEN',
'                                IF NOT INV.ccclient.inserta_doc(''CI'', :P92_ci, Vcod_persona) THEN',
'                                  raise verr;',
'                                END IF;',
'                              END IF;',
'                            ',
'                              IF :P92_ruc IS NOT NULL THEN',
'                                IF NOT INV.ccclient.inserta_doc(''RUC'', :P92_ruc, Vcod_persona) THEN',
'                                  raise verr;',
'                                END IF;',
'',
'                                 IF :P92_ci IS NULL AND  :P92_es_fisica = ''S'' THEN',
'                                        IF NOT INV.ccclient.inserta_doc(''CI'', substr(:P92_ruc,0,INSTR(:P92_ruc, ''-'')-1), Vcod_persona) THEN',
'                                          raise verr;',
'                                        END IF;',
'                                 END IF;  ',
'',
'                              END IF;',
'',
'                              IF :P92_NRO IS NOT NULL THEN',
'                                IF NOT INV.ccclient.inserta_doc(:P92_TIPO, :P92_NRO,  Vcod_persona) THEN',
'                                  raise verr;',
'                                END IF;',
'                              END IF;',
'                            ',
'                              IF :P92_telefono IS NOT NULL THEN',
'                                BEGIN',
'                                  insert into telef_personas',
'                                    (cod_persona,',
'                                     codigo_area,',
'                                     num_telefono,',
'                                     por_defecto,',
'                                     tip_telefono,',
'                                     tel_ubicacion)',
'                                  values',
'                                    (Vcod_persona,',
'                                     ''NOD'',',
'                                     :P92_telefono,',
'                                     ''S'',',
'                                     ''D'',',
'                                     ''C'');',
'                                EXCEPTION',
'                                  when verr then',
'                                    raise verr;',
'                                  when others then',
'                                             ',
'                                   apex_application.g_print_success_message := ''<span style="color:white">Error en la insercion del telefono</span>'';              ',
'                                    raise verr;',
'                                END;',
'                              END IF;',
'                            ',
'                              IF :P92_CELULAR IS NOT NULL AND',
'                                 :P92_CELULAR<> :P92_TELEFONO THEN ',
'                                BEGIN',
'                                  insert into telef_personas',
'                                    (cod_persona,',
'                                     codigo_area,',
'                                     num_telefono,',
'                                     por_defecto,',
'                                     tip_telefono,',
'                                     tel_ubicacion)',
'                                  values',
'                                    (vcod_persona,',
'                                     ''NOD'',',
'                                     :P92_CELULAR,',
'                                     decode(:P92_TELEFONO, NULL, ''S'', ''N''),',
'                                     ''C'',',
'                                     ''O'');',
'                                EXCEPTION',
'                                  when verr then',
'                                    raise verr;',
'                                  when others then',
'                                     apex_application.g_print_success_message := ''<span style="color:white">Error en la insercion del celular.</span>'';  ',
'                                     raise verr;',
'                                END;',
'                              END IF;',
'                              COMMIT;',
'                            EXCEPTION',
'                              when verr then',
'                                raise verr;',
'                              when others then                           ',
'                                ROLLBACK;       ',
'                                apex_application.g_print_success_message := ''<span style="color:white">Error al intentar crear el Cliente.''||chr(10)||sqlerrm||''</span>'';   ',
'                      ',
'                            END;',
'                          ',
'                           COMMIT;',
'                              if :P92_cod_cliente is not null then',
'                                      :P92_COD_CLIENTE_CREADO := :P92_cod_cliente;',
'                                     :P92_COD_PERSONA_CREADO := Vcod_persona;',
unistr('                                       :P92_DATOS :=''El cliente ha sido creado con \00E9xito.'' ||''   C\00F3digo de cliente: '' || :P92_cod_cliente   ;           '),
unistr('                                      apex_application.g_print_success_message := ''<span style="color:white">      El cliente ha sido creado con \00E9xito. '' || :P92_cod_cliente  || ''.</span>''; '),
'                             end if;   ',
'                          EXCEPTION',
'                            when verr then          ',
'                              ROLLBACK;',
'                                       :P92_COD_CLIENTE_CREADO :=null;',
'                   :P92_cod_cliente:=null;',
unistr('                    RAISE_APPLICATION_ERROR(-20001, ''Error en la generaci\00F3n del c\00F3digo de cliente(79)''||sqlerrm);'),
'                               apex_application.g_print_success_message := ''<span style="color:white">Error al intentar crear el Cliente.''||chr(10)||sqlerrm||''</span>'';   ',
'                          END; ',
'                          ',
'                        end if;',
'',
'                        if :P92_cod_cliente is not null then',
'                          :P92_COD_CLIENTE_CREADO := :P92_cod_cliente;',
'                                     :P92_COD_PERSONA_CREADO := Vcod_persona;',
unistr('                         :P92_DATOS :=''El cliente ha sido creado con \00E9xito.'' ||''   C\00F3digo de cliente: '' || :P92_cod_cliente   ;'),
unistr('                           apex_application.g_print_success_message := ''<span style="color:white">      El cliente ha sido creado con \00E9xito. '' || :P92_cod_cliente  || ''.</span>''; '),
'                        else     ',
'                               apex_application.g_print_success_message := ''<span style="color:white">No se ha podido crear el Cliente.</span>''; ',
'                                        :P92_COD_CLIENTE_CREADO :=null;',
'                   :P92_cod_cliente:=null;',
'                    RAISE_APPLICATION_ERROR(-20001, ''No se ha podido crear el Cliente.(80)''||sqlerrm);',
'                        end if;      ',
'                    end;',
'               end;',
'  ',
'   end if;',
'end if;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Error'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(23299859152411592)
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
 p_id=>wwv_flow_imp.id(73913464195687144)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'PR_CERRAR_MODAL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'P92_INDICADOR_PAG_298'
,p_process_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_process_when2=>'CREACION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(147541372006413024)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Actualiza ticket'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'update ca_ticket_atencion set cod_cliente = :P92_COD_CLIENTE',
'where id_ticket = :P92_NRO_TICKET;',
'',
'COMMIT;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'P92_NRO_TICKET'
,p_process_when_type=>'ITEM_IS_NOT_NULL'
);
wwv_flow_imp.component_end;
end;
/
