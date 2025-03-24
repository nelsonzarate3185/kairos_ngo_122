prompt --application/pages/page_00812
begin
--   Manifest
--     PAGE: 00812
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
 p_id=>812
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Tipo Inventario'
,p_alias=>'TIPO-INVENTARIO'
,p_step_title=>'Tipo Inventario'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function seleccionar(cb) {',
'    console.log(cb.value);',
'    console.log(cb.checked);',
'',
'  if (cb.checked == true){',
'    console.log("block" + cb.value);',
'      $s(''P811_ACCION'',''ACTIVO'');',
'      $s(''P811_AUX_ACTIVO'', cb.value,false);',
'  } else {',
'      $s(''P811_ACCION'',''NO_ACTIVO'');',
'      $s(''P811_AUX_ACTIVO'', cb.value,false);',
'  }',
'}',
'',
'function removeParam(key, sourceURL) {',
'    var rtn = sourceURL.split("?")[0],',
'        param,',
'        params_arr = [],',
'        queryString = (sourceURL.indexOf("?") !== -1) ? sourceURL.split("?")[1] : "";',
'    if (queryString !== "") {',
'        params_arr = queryString.split("&");',
'        for (var i = params_arr.length - 1; i >= 0; i -= 1) {',
'            param = params_arr[i].split("=")[0];',
'            if (param === key) {',
'                params_arr.splice(i, 1);',
'            }',
'        }',
'        rtn = rtn + "?" + params_arr.join("&");',
'    }',
'    return rtn;',
'}',
'',
'',
''))
,p_javascript_code_onload=>'window.history.pushState("object or string", "Title", removeParam("success_msg", window.location.href));'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'PABLOALV'
,p_last_upd_yyyymmddhh24miss=>'20250108111345'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(983139448411558292)
,p_plug_name=>'Tipos de Inventario'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>990
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(983140245786558300)
,p_plug_name=>'REPORTE'
,p_parent_plug_id=>wwv_flow_imp.id(983139448411558292)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>1000
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ROWID,',
'       COD_EMPRESA,',
'       cod_tipo_inventario COD_AUDITOR,',
'       DESCRIPCION,',
'       null CORREO,',
'       APEX_ITEM.CHECKBOX (p_idx => 1 , ',
'                           p_value => ROWID, ',
'                           p_attributes => (case ACTIVO when ''S'' then ''checked ''',
'                                                        else null end ) ||''onclick="seleccionar(this)"'' )as "ACTIVO",',
'       NULL EDITAR,',
'       NULL ELIMINAR',
'  FROM CO_tipo_inventario',
' WHERE COD_EMPRESA = :P812_COD_EMPRESA ',
'ORDER BY TO_NUMBER(cod_tipo_inventario) ;        '))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P812_COD_EMPRESA'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'REPORTE'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(983140364874558301)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'MARIANABLA'
,p_internal_uid=>983140364874558301
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(449159065665200813)
,p_db_column_name=>'COD_EMPRESA'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Cod Empresa'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(449159489096200813)
,p_db_column_name=>'COD_AUDITOR'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>unistr('C\00F3digo')
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(449159836250200813)
,p_db_column_name=>'DESCRIPCION'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>unistr('Descripci\00F3n')
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(449160272892200814)
,p_db_column_name=>'CORREO'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Correo'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(449160675749200814)
,p_db_column_name=>'ACTIVO'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Activo'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(449161074050200814)
,p_db_column_name=>'EDITAR'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Editar'
,p_column_link=>'javascript:$s(''P811_EDITAR_REGISTRO'',''#ROWID#'');'
,p_column_linktext=>'<span class="fa fa-edit" aria-hidden="true"></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_display_condition_type=>'FUNCTION_BODY'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'VCONTROL NUMBER;',
'BEGIN',
'',
'    VCONTROL := SEGURIDAD_GRANULAR.RETORNA_PERMISO_BOTON(ppage_id     => :APP_PAGE_ID,',
'                                                         papli0100_id => :P_APLI0100_ID,',
'                                                         pcod_empresa => :P_COD_EMPRESA,',
'                                                         pusua0100_id => :P_USUA0100_ID,',
'                                                         pdm_boto     => 2); ',
'',
'    IF VCONTROL = 0 THEN',
'       RETURN TRUE;--   RETURN FALSE;',
'    ELSE',
'        RETURN TRUE;',
'    END IF;                                                     ',
'END;'))
,p_display_condition2=>'PLSQL'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(449161494330200814)
,p_db_column_name=>'ELIMINAR'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Eliminar'
,p_column_link=>'javascript:$s(''P338_ELIMINAR_REGISTRO'',''#ROWID#'');'
,p_column_linktext=>'<span aria-hidden="true" class="fa fa-trash"></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_display_condition_type=>'FUNCTION_BODY'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'VCONTROL NUMBER;',
'BEGIN',
'',
'    VCONTROL := SEGURIDAD_GRANULAR.RETORNA_PERMISO_BOTON(ppage_id     => :APP_PAGE_ID,',
'                                                         papli0100_id => :P_APLI0100_ID,',
'                                                         pcod_empresa => :P_COD_EMPRESA,',
'                                                         pusua0100_id => :P_USUA0100_ID,',
'                                                         pdm_boto     => 3); ',
'',
'    IF VCONTROL = 0 THEN',
'        RETURN FALSE;',
'    ELSE',
'        RETURN TRUE;',
'    END IF;                                                     ',
'END;'))
,p_display_condition2=>'PLSQL'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(449161881475200815)
,p_db_column_name=>'ROWID'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Rowid'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_column_type=>'OTHER'
,p_rpt_show_filter_lov=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(983152598259602567)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'853615'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'COD_AUDITOR:DESCRIPCION:CORREO:ACTIVO:EDITAR:ELIMINAR:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(983139659826558294)
,p_plug_name=>'VARIABLES'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>1010
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(983141941987558317)
,p_plug_name=>'Crear/Editar Ubicacion'
,p_region_template_options=>'#DEFAULT#:js-dialog-autoheight:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>1020
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(449166317187200818)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(983141941987558317)
,p_button_name=>'CANCELAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Cancelar'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(449166764454200819)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(983141941987558317)
,p_button_name=>'GUARDAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Guardar'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(449158357621200811)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(983139448411558292)
,p_button_name=>'CREAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Crear'
,p_button_position=>'EDIT'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'VCONTROL NUMBER;',
'BEGIN',
'',
'    VCONTROL := SEGURIDAD_GRANULAR.RETORNA_PERMISO_BOTON(ppage_id     => :APP_PAGE_ID,',
'                                                         papli0100_id => :P_APLI0100_ID,',
'                                                         pcod_empresa => :P_COD_EMPRESA,',
'                                                         pusua0100_id => :P_USUA0100_ID,',
'                                                         pdm_boto     => 1); ',
'',
'    IF VCONTROL = 0 THEN',
'        --RETURN FALSE;',
'RETURN TRUE;',
'    ELSE',
'        RETURN TRUE;',
'    END IF;                                                     ',
'END;'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'FUNCTION_BODY'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(449162538091200816)
,p_name=>'P812_EDITAR_REGISTRO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(983140245786558300)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(449162957325200817)
,p_name=>'P812_ELIMINAR_REGISTRO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(983140245786558300)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(449163300894200817)
,p_name=>'P812_ACCION'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(983140245786558300)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(449163768706200817)
,p_name=>'P812_AUX_ACTIVO'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(983140245786558300)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(449164417072200818)
,p_name=>'P812_COD_EMPRESA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(983139659826558294)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(449164806076200818)
,p_name=>'P812_COD_USUARIO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(983139659826558294)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(449165272035200818)
,p_name=>'P812_COD_MODULO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(983139659826558294)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(449165683267200818)
,p_name=>'P812_COD_SUCURSAL'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(983139659826558294)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(449167118252200819)
,p_name=>'P812_COD_AUDITOR'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(983141941987558317)
,p_prompt=>unistr('C\00F3digo')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>5
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(449167562954200819)
,p_name=>'P812_DESCRIPCION'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(983141941987558317)
,p_prompt=>unistr('Descripci\00F3n')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>65
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(449167936081200819)
,p_name=>'P812_CORREO'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(983141941987558317)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(449168437325200820)
,p_validation_name=>'VA_FORMATO_CORREO'
,p_validation_sequence=>10
,p_validation=>'P812_CORREO'
,p_validation2=>'^[a-zA-Z0-9][a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,3}$'
,p_validation_type=>'REGULAR_EXPRESSION'
,p_error_message=>unistr('Debe insertar un correo v\00E1lido.')
,p_associated_item=>wwv_flow_imp.id(449167936081200819)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(449168848129200820)
,p_validation_name=>'VA_COD_AUDITOR'
,p_validation_sequence=>20
,p_validation=>'P812_COD_AUDITOR'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>unistr('Debe ingresar un c\00F3digo.')
,p_associated_item=>wwv_flow_imp.id(449167118252200819)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(449170707674200821)
,p_name=>'DA_AUX_ACTIVO'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P812_AUX_ACTIVO'
,p_condition_element=>'P812_AUX_ACTIVO'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(449171221252200821)
,p_event_id=>wwv_flow_imp.id(449170707674200821)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'tipo_inventario.PR_CHECK(P_ROW_ID    => :P812_AUX_ACTIVO, ',
'				 P_ACCION    => :P812_ACCION); '))
,p_attribute_02=>'P812_AUX_ACTIVO,P812_ACCION'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(449171666254200821)
,p_name=>'DA_EDITAR_REGISTRO'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P812_EDITAR_REGISTRO'
,p_condition_element=>'P812_EDITAR_REGISTRO'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(449172159349200821)
,p_event_id=>wwv_flow_imp.id(449171666254200821)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT cod_tipo_inventario, DESCRIPCION,null CORREO',
'  INTO :P812_COD_AUDITOR, :P812_DESCRIPCION, :P812_CORREO',
'  FROM CO_tipo_inventario',
' WHERE ROWID = :P812_EDITAR_REGISTRO; '))
,p_attribute_02=>'P812_EDITAR_REGISTRO'
,p_attribute_03=>'P812_COD_AUDITOR,P812_DESCRIPCION,P812_CORREO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(449172686099200822)
,p_event_id=>wwv_flow_imp.id(449171666254200821)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'document.getElementById(''P812_COD_AUDITOR'').readOnly = false;'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(449173174199200822)
,p_event_id=>wwv_flow_imp.id(449171666254200821)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(983141941987558317)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(449173564342200822)
,p_name=>'DA_CANCELAR'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(449166317187200818)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(449174002195200822)
,p_event_id=>wwv_flow_imp.id(449173564342200822)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(983141941987558317)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(449174499266200822)
,p_name=>'DA_GUARDAR'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(449166764454200819)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(449174932640200822)
,p_event_id=>wwv_flow_imp.id(449174499266200822)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_01=>'INSERTAR'
,p_attribute_02=>'Y'
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P812_EDITAR_REGISTRO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(449175412420200823)
,p_event_id=>wwv_flow_imp.id(449174499266200822)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_01=>'ACTUALIZAR'
,p_attribute_02=>'Y'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P812_EDITAR_REGISTRO'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(449175854518200823)
,p_name=>'DA_ELIMINAR_REGISTRO'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P812_ELIMINAR_REGISTRO'
,p_condition_element=>'P812_ELIMINAR_REGISTRO'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(449176376924200823)
,p_event_id=>wwv_flow_imp.id(449175854518200823)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\00BFDesea eliminar el registro?')
,p_attribute_02=>unistr('Atenci\00F3n')
,p_attribute_03=>'warning'
,p_attribute_06=>'Aceptar'
,p_attribute_07=>'Cancelar'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(449176884681200823)
,p_event_id=>wwv_flow_imp.id(449175854518200823)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_01=>'ELIMINAR'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(449177272513200823)
,p_name=>'DA_CREAR'
,p_event_sequence=>60
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(449158357621200811)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(449178209029200823)
,p_event_id=>wwv_flow_imp.id(449177272513200823)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P812_EDITAR_REGISTRO,P812_COD_AUDITOR,P812_DESCRIPCION,P812_CORREO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(449178787946200824)
,p_event_id=>wwv_flow_imp.id(449177272513200823)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P812_COD_AUDITOR := tipo_inventario.FN_COD_tip_inventario;'
,p_attribute_03=>'P812_COD_AUDITOR'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(449179250996200824)
,p_event_id=>wwv_flow_imp.id(449177272513200823)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'document.getElementById(''P812_COD_AUDITOR'').readOnly = true;'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(449179777054200824)
,p_event_id=>wwv_flow_imp.id(449177272513200823)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(983141941987558317)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(449177731363200823)
,p_event_id=>wwv_flow_imp.id(449177272513200823)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_FOCUS'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P812_DESCRIPCION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(449169168737200820)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_INIT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P_COD_MODULO := ''AU'';',
':P812_COD_EMPRESA := NVL(:P812_COD_EMPRESA, ''1'');',
':P812_COD_USUARIO := NVL(:P_COD_USUARIO, :APP_USER);',
':P812_COD_MODULO := :P_COD_MODULO;',
':P812_COD_SUCURSAL := :P_COD_SUCURSAL;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(449169562946200820)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_INSERTAR'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'tipo_inventario.PR_INSERTA_tip_inventario(PI_COD_EMPRESA     => :P812_COD_EMPRESA,',
'                           PI_COD_tip_inventario    => :P812_COD_AUDITOR,',
'                           PI_DESCRIPCION     => :P812_DESCRIPCION,',
'                           PI_CORREO          => :P812_CORREO);'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'INSERTAR'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
,p_process_success_message=>'Los datos se guardaron de forma correcta.'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(449169934201200820)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_ACTUALIZAR'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'tipo_inventario.PR_EDITA_tipo_inventario(PI_COD_EMPRESA     => :P812_COD_EMPRESA,',
'                         PI_ROW_ID          => :P812_EDITAR_REGISTRO,',
'                         PI_COD_tip_inventario     => :P812_COD_AUDITOR,',
'                         PI_DESCRIPCION     => :P812_DESCRIPCION,',
'                         PI_CORREO          => :P812_CORREO);'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'ACTUALIZAR'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
,p_process_success_message=>'Los datos se actualizaron de forma correcta.'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(449170330105200820)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_ELIMINAR'
,p_process_sql_clob=>'tipo_inventario.PR_ELIMINA_tipo_inventario(PI_ROW_ID => :P812_ELIMINAR_REGISTRO);'
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'ELIMINAR'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
,p_process_success_message=>unistr('El registro se elimin\00F3 correstamente.')
);
wwv_flow_imp.component_end;
end;
/
