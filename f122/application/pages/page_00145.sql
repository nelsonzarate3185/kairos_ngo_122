prompt --application/pages/page_00145
begin
--   Manifest
--     PAGE: 00145
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
 p_id=>145
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Derivaciones(Modal)'
,p_alias=>'DERIVACIONES-MODAL1'
,p_page_mode=>'MODAL'
,p_step_title=>'Derivaciones'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/*#P94_ESTADO, #P94_OPER_DERIV , #P94_FECHA_DERIV , #P94_SUCURSAL_DERIVADA, #P94_AREA_DERIVADA, #P94_OBS_DERIVADA, #P94_OPERADOR_REC , #P94_FECHA_RETORNO, #P94_OBS_REC{',
'    background: white;',
'    border-color: yellow; ',
'    color: darkblue;',
'} ',
'#reg_parametros{',
'      background-color: #003a85 !important;',
'      box-shadow: black 1px 1px 5px 1px;}*/',
'',
'#DERIVAR,#CANCELAR,#CULMINAR,#DERIVADO {',
'        ',
'  ',
'        background:white;',
'        background-image: linear-gradient(180deg, #ffee00e4  20%, #fff890 80%);',
'        color:  darkblue;',
'        ',
'        border-color:  yellow;}'))
,p_page_template_options=>'#DEFAULT#'
,p_dialog_width=>'1200'
,p_dialog_chained=>'N'
,p_protection_level=>'C'
,p_page_component_map=>'02'
,p_last_updated_by=>'JUANSA'
,p_last_upd_yyyymmddhh24miss=>'20230911091400'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(54741658855018707)
,p_plug_name=>'Derivaciones'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--textContent:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ROWID,',
'       ID_CASO,',
'       ID_CONTACTO,',
'       COD_EMPRESA,',
'       ID_DERIVACION,',
'       ID_DERIVACION_PADRE,',
'       SUCURSAL_DERIVADA,',
'       AREA_DERIVADA,',
'       OPERADOR_REC,',
'       FECHA_REC,',
'       OBS_REC,',
'       OPER_DERIV,',
'       FECHA_DERIV,',
'       OBS_DERIVADA,',
'       ESTADO,',
'       SUCURSA_ORIGEN,',
'       AREA_ORIGEN,',
'       DPTO_ORIGEN,',
'       DPTO_DERIVADO,',
'       EMPLEADO_DERIVADO',
'  from CRM_DERIVACIONES_CONTACTO'))
,p_is_editable=>false
,p_plug_source_type=>'NATIVE_FORM'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(56175561042949580)
,p_plug_name=>'Nuevo'
,p_region_name=>'reg_parametros'
,p_parent_plug_id=>wwv_flow_imp.id(54741658855018707)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>20
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(19678283389549335)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(54741658855018707)
,p_button_name=>'CULMINAR'
,p_button_static_id=>'CULMINAR'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight:t-Button--hoverIconPush'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Culminar'
,p_button_position=>'CHANGE'
,p_confirm_message=>unistr('Desea Culminar la derivaci\00F3n?')
,p_confirm_style=>'information'
,p_button_condition=>'P145_BLOQUEADO'
,p_button_condition2=>'N'
,p_button_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_icon_css_classes=>'fa-badge-check'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(19677816899549335)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(54741658855018707)
,p_button_name=>'CANCELAR'
,p_button_static_id=>'CANCELAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Cancelar'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(19677414631549335)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(54741658855018707)
,p_button_name=>'DERIVAR'
,p_button_static_id=>'DERIVAR'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--simple:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Derivar'
,p_button_position=>'CREATE'
,p_button_condition=>'P145_ROWID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_icon_css_classes=>'fa-send-o'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(19677090416549335)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(54741658855018707)
,p_button_name=>'DERIVADO'
,p_button_static_id=>'DERIVADO'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight:t-Button--hoverIconPush'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Derivar otro'
,p_button_position=>'CREATE'
,p_button_condition=>'P145_BLOQUEADO'
,p_button_condition2=>'N'
,p_button_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_icon_css_classes=>'fa-page-last'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(19695547437549346)
,p_branch_name=>'Limpiar Pagina Para nueva derivacion'
,p_branch_action=>'f?p=&APP_ID.:145:&SESSION.::&DEBUG.:145:P145_COD_EMPRESA,P145_ID_CONTACTO,P145_ID_CASO,P145_ID_DERIVACION_PADRE:&P145_COD_EMPRESA.,&P145_ID_CONTACTO.,&P145_ID_CASO.,&P145_ID_DERIVACION_PADRE.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
,p_branch_condition_type=>'REQUEST_IN_CONDITION'
,p_branch_condition=>'DERIVADO'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(19678666233549336)
,p_name=>'P145_ID_CASO'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(54741658855018707)
,p_item_source_plug_id=>wwv_flow_imp.id(54741658855018707)
,p_source=>'ID_CASO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(19679079475549336)
,p_name=>'P145_ID_CONTACTO'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(54741658855018707)
,p_item_source_plug_id=>wwv_flow_imp.id(54741658855018707)
,p_source=>'ID_CONTACTO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(19679402719549336)
,p_name=>'P145_COD_EMPRESA'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(54741658855018707)
,p_item_source_plug_id=>wwv_flow_imp.id(54741658855018707)
,p_source=>'COD_EMPRESA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(19679837864549336)
,p_name=>'P145_ID_DERIVACION'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(54741658855018707)
,p_item_source_plug_id=>wwv_flow_imp.id(54741658855018707)
,p_source=>'ID_DERIVACION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(19680263961549336)
,p_name=>'P145_ID_DERIVACION_PADRE'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(54741658855018707)
,p_item_source_plug_id=>wwv_flow_imp.id(54741658855018707)
,p_source=>'ID_DERIVACION_PADRE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(19680663121549337)
,p_name=>'P145_ROWID'
,p_source_data_type=>'ROWID'
,p_is_primary_key=>true
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(54741658855018707)
,p_item_source_plug_id=>wwv_flow_imp.id(54741658855018707)
,p_source=>'ROWID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(19681001372549337)
,p_name=>'P145_SUCURSA_ORIGEN'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(54741658855018707)
,p_item_source_plug_id=>wwv_flow_imp.id(54741658855018707)
,p_source=>'SUCURSA_ORIGEN'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(19681498611549337)
,p_name=>'P145_AREA_ORIGEN'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(54741658855018707)
,p_item_source_plug_id=>wwv_flow_imp.id(54741658855018707)
,p_source=>'AREA_ORIGEN'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(19685353925549340)
,p_name=>'P145_ESTADO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(56175561042949580)
,p_item_source_plug_id=>wwv_flow_imp.id(54741658855018707)
,p_item_default=>'1'
,p_prompt=>'Estado'
,p_source=>'ESTADO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select T.DESCRIPCION, T.COD_ESTADO ',
'from INV.CRM_ESTADOS t',
'WHERE COD_EMPRESA=''1'';'))
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'Y'
,p_attribute_02=>'LOV'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(19685763169549340)
,p_name=>'P145_OPER_DERIV'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(56175561042949580)
,p_item_source_plug_id=>wwv_flow_imp.id(54741658855018707)
,p_prompt=>'Oper. Deriv.'
,p_source=>'OPER_DERIV'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_help_text=>unistr('Operador que realiz\00F3 la derivaci\00F3n')
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(19686640949549341)
,p_name=>'P145_FECHA_DERIV'
,p_source_data_type=>'DATE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(56175561042949580)
,p_item_source_plug_id=>wwv_flow_imp.id(54741658855018707)
,p_prompt=>'Fecha Deriv.'
,p_format_mask=>'DD-MM-YYYY HH24:MI:SS'
,p_source=>'FECHA_DERIV'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(19687028235549341)
,p_name=>'P145_SUCURSAL_DERIVADA'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(56175561042949580)
,p_item_source_plug_id=>wwv_flow_imp.id(54741658855018707)
,p_prompt=>'Suc. Derivada'
,p_source=>'SUCURSAL_DERIVADA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>'STATIC:262 - CDE;262,190 - SAN LORENZO(SL1);190,01 - CASA MATRIZ - ARTIGAS;01'
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_cMaxlength=>5
,p_colspan=>3
,p_read_only_when=>'P145_ROWID'
,p_read_only_when_type=>'ITEM_IS_NOT_NULL'
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
 p_id=>wwv_flow_imp.id(19687418891549341)
,p_name=>'P145_AREA_DERIVADA'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(56175561042949580)
,p_item_source_plug_id=>wwv_flow_imp.id(54741658855018707)
,p_prompt=>'Area Derivada'
,p_source=>'AREA_DERIVADA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT A.COD_AREA||''-''||A.DESCRIPCION D,',
'       A.COD_AREA R ',
'  FROM RH_AREAS A ',
'  WHERE A.COD_EMPRESA = ''1''',
'    AND A.COD_SUCURSAL = :P145_SUCURSAL_DERIVADA'))
,p_lov_cascade_parent_items=>'P145_SUCURSAL_DERIVADA'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_cMaxlength=>5
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_read_only_when=>'P145_ROWID'
,p_read_only_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
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
 p_id=>wwv_flow_imp.id(19687801498549341)
,p_name=>'P145_OBS_DERIVADA'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(56175561042949580)
,p_item_source_plug_id=>wwv_flow_imp.id(54741658855018707)
,p_prompt=>'Obs Derivada'
,p_source=>'OBS_DERIVADA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cMaxlength=>150
,p_cHeight=>1
,p_colspan=>6
,p_read_only_when=>'P145_ROWID'
,p_read_only_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(19688240335549342)
,p_name=>'P145_OPERADOR_REC'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(56175561042949580)
,p_item_source_plug_id=>wwv_flow_imp.id(54741658855018707)
,p_prompt=>'Oper. Retorno'
,p_source=>'OPERADOR_REC'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(19688677277549342)
,p_name=>'P145_FECHA_RETORNO'
,p_source_data_type=>'DATE'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(56175561042949580)
,p_item_source_plug_id=>wwv_flow_imp.id(54741658855018707)
,p_prompt=>'Fecha Retorno'
,p_format_mask=>'DD-MM-YYYY HH24:MI:SS'
,p_source=>'FECHA_REC'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(19689073036549342)
,p_name=>'P145_OBS_REC'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(56175561042949580)
,p_item_source_plug_id=>wwv_flow_imp.id(54741658855018707)
,p_prompt=>'Obs. Retorno'
,p_source=>'OBS_REC'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cMaxlength=>150
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_colspan=>6
,p_read_only_when=>'SELECT ''*'' FROM DUAL WHERE (:P145_ROWID IS NULL OR :P145_BLOQUEADO = ''S'')'
,p_read_only_when_type=>'EXISTS'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(19692133224549344)
,p_name=>'P145_BLOQUEADO'
,p_item_sequence=>10
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22874558403981533)
,p_name=>'P145_DPTO_DERIVADO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(56175561042949580)
,p_item_source_plug_id=>wwv_flow_imp.id(54741658855018707)
,p_prompt=>'Dpto. Derivado'
,p_source=>'DPTO_DERIVADO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT D.DESCRIPCION,',
'       D.COD_DEPARTAMENTO ',
'          FROM RH_DEPARTAMENTOS D',
'         WHERE D.COD_EMPRESA  = :P145_COD_EMPRESA',
'           AND D.COD_SUCURSAL = :P145_SUCURSAL_DERIVADA',
'           AND D.COD_AREA     = :P145_AREA_DERIVADA;'))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P145_COD_EMPRESA,P145_SUCURSAL_DERIVADA,P145_AREA_DERIVADA'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_cMaxlength=>10
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_read_only_when=>'P145_ROWID'
,p_read_only_when_type=>'ITEM_IS_NOT_NULL'
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
 p_id=>wwv_flow_imp.id(22874621989981534)
,p_name=>'P145_DPTO_ORIGEN'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(54741658855018707)
,p_item_source_plug_id=>wwv_flow_imp.id(54741658855018707)
,p_source=>'DPTO_ORIGEN'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(129099971700845229)
,p_name=>'P145_EMPLEADO_DERIVADO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(56175561042949580)
,p_item_source_plug_id=>wwv_flow_imp.id(54741658855018707)
,p_prompt=>'Empleado Derivado'
,p_source=>'EMPLEADO_DERIVADO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT R.COD_EMPLEADO||'' - ''||P.NOMBRE D ,',
'       R.COD_EMPLEADO R ',
'  FROM RH_EMPLEADOS R,',
'       PERSONAS P ',
' WHERE R.COD_PERSONA      =  P.COD_PERSONA',
'   AND R.COD_EMPRESA      = :P_COD_EMPRESA',
'   AND R.COD_SUCURSAL     = :P145_SUCURSAL_DERIVADA',
'   AND R.COD_AREA         = :P145_AREA_DERIVADA',
'   AND R.COD_DEPARTAMENTO = :P145_DPTO_DERIVADO',
'   UNION ALL',
'	SELECT R.COD_EMPLEADO||'' - ''||P.NOMBRE D ,',
'       R.COD_EMPLEADO R ',
'  FROM RH_EMPLEADOS@DBLINK_CPH R,',
'       PERSONAS@DBLINK_CPH P ',
' WHERE R.COD_PERSONA      =  P.COD_PERSONA',
'   AND R.COD_EMPRESA      = :P_COD_EMPRESA',
'   AND R.COD_SUCURSAL     = :P145_SUCURSAL_DERIVADA',
'   AND R.COD_AREA         = :P145_AREA_DERIVADA',
'   AND R.COD_DEPARTAMENTO = :P145_DPTO_DERIVADO',
' ORDER BY 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'Seleccionar Colaborador'
,p_lov_cascade_parent_items=>'P_COD_EMPRESA,P145_SUCURSAL_DERIVADA,P145_AREA_DERIVADA,P145_DPTO_DERIVADO'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_cMaxlength=>10
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_grid_column=>10
,p_read_only_when=>'P145_ROWID'
,p_read_only_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
,p_attribute_08=>'600'
,p_attribute_09=>'400'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(21760617129052342)
,p_validation_name=>'ValidarObs.'
,p_validation_sequence=>10
,p_validation=>'P145_OBS_REC'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>unistr('Debe agregar alguna observaci\00F3n!')
,p_validation_condition=>'P145_ROWID'
,p_validation_condition_type=>'ITEM_IS_NOT_NULL'
,p_associated_item=>wwv_flow_imp.id(19689073036549342)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(19694502784549345)
,p_name=>'Clic_Cancelar'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(19677816899549335)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(19695081375549345)
,p_event_id=>wwv_flow_imp.id(19694502784549345)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(19692576308549344)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Otorgar Claves'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P145_ROWID IS NULL THEN ',
'SELECT SEQ_CRM_DERIVACIONES.NEXTVAL',
'  INTO :P145_ID_DERIVACION',
'  FROM DUAL ;',
'',
'',
'  SELECT U.COD_SUCURSAL,R.COD_AREA,R.COD_DEPARTAMENTO',
'  INTO :P145_SUCURSA_ORIGEN,:P145_AREA_ORIGEN,:P145_DPTO_ORIGEN',
'  FROM USUARIOS U,',
'       RH_EMPLEADOS R ',
' WHERE U.COD_USUARIO = :APP_USER',
'   AND R.COD_PERSONA(+) = U.COD_PERSONA',
'   AND U.COD_EMPRESA = R.COD_EMPRESA;',
' ',
'',
':P145_OPER_DERIV := :APP_USER;',
':P145_FECHA_DERIV := to_char(SYSDATE,''DD/MM/YYYY HH24:MI:SS'');',
'IF :P145_ID_DERIVACION_PADRE IS NULL THEN ',
':P145_ID_DERIVACION_PADRE := :P145_ID_DERIVACION;',
'END IF;',
' ',
'END IF;',
'EXCEPTION',
'WHEN NO_DATA_FOUND THEN ',
'  RAISE_APPLICATION_ERROR(-20001,''No se ha encontrado los datos de la Sucursal y Area del Usuario : ''||:app_user);'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(19693309878549344)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Clic Culminar'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/*SELECT U.COD_SUCURSAL,R.COD_AREA',
'  INTO :P145_SUCURSAL_DERIVADA,:P145_AREA_DERIVADA',
'  FROM USUARIOS U,',
'       RH_EMPLEADOS R ',
' WHERE U.COD_USUARIO = :APP_USER',
'   AND R.COD_PERSONA(+) = U.COD_PERSONA;*/',
'   ',
':P145_OPERADOR_REC := :APP_USER;',
':P145_FECHA_RETORNO := to_char(SYSDATE,''DD/MM/YYYY HH24:MI:SS'');',
':P145_ESTADO := 3;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CULMINAR'
,p_process_when_type=>'REQUEST_IN_CONDITION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(19693731812549345)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Clic Derivar A Otro'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'   ',
':P145_OPERADOR_REC := :APP_USER;',
':P145_FECHA_RETORNO := to_char(SYSDATE,''DD/MM/YYYY HH24:MI:SS'');',
':P145_ESTADO := 2;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'DERIVADO'
,p_process_when_type=>'REQUEST_IN_CONDITION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(19684686412549339)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(54741658855018707)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'PROCESAR PANTALLA'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CULMINAR,DERIVADO,DERIVAR'
,p_process_when_type=>'REQUEST_IN_CONDITION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(19694115928549345)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Culminar Todas las derivaciones'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'--------------------------------------------------------------------------------------------------------------------------------------------',
'---------------------EN CASO DE SER CULMINADAS LA DERIVACION ,TENDRA QUE CULMINAR TODAS LAS DERIVACIONES PADRES-----------------------------',
'UPDATE CRM_DERIVACIONES_CONTACTO C',
'   SET C.ESTADO = 3',
'  WHERE C.ID_CASO = :P145_ID_CASO',
'    AND C.ID_CONTACTO = :P145_ID_CONTACTO',
'    AND C.COD_EMPRESA = :P145_COD_EMPRESA',
'    AND C.ID_DERIVACION_PADRE = :P145_ID_DERIVACION_PADRE;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CULMINAR'
,p_process_when_type=>'REQUEST_IN_CONDITION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(19692972039549344)
,p_process_sequence=>60
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'CERRAR_RECUADRO_DIALOGO'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'DERIVAR,CULMINAR'
,p_process_when_type=>'REQUEST_IN_CONDITION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(171749500202288801)
,p_process_sequence=>70
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PRUEBA_VARIOS'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'   l_string       VARCHAR2(100);',
'   l_delimiter    VARCHAR2(1)   := '':'';',
'   l_start_index  NUMBER := 1;',
'   l_end_index    NUMBER;',
'   l_substring    VARCHAR2(100);',
'BEGIN',
'l_string := :P145_EMPLEADO_DERIVADO;',
'   LOOP',
'      l_end_index := INSTR(l_string, l_delimiter, l_start_index);',
'      ',
'      IF l_end_index > 0 THEN',
'         l_substring := SUBSTR(l_string, l_start_index, l_end_index - l_start_index);',
'         dbms_output.put_line(l_substring);',
'		 inv.out_out(l_substring,l_substring);',
'         l_start_index := l_end_index + 1;',
'      ELSE',
'         l_substring := SUBSTR(l_string, l_start_index);',
'         dbms_output.put_line(l_substring);',
'		 inv.out_out(l_substring, l_substring);',
'         EXIT;',
'      END IF;',
'   END LOOP;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'NOOOO'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_type=>'NEVER'
,p_process_success_message=>'SEEE'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(19684258996549339)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(54741658855018707)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Inicializar pantalla Derivaciones(Modal)'
);
wwv_flow_imp.component_end;
end;
/
