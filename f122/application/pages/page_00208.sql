prompt --application/pages/page_00208
begin
--   Manifest
--     PAGE: 00208
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
 p_id=>208
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'VTORIGEN_NO_USAR'
,p_alias=>'VTORIGEN_NO_USAR'
,p_step_title=>'VTORIGEN'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function seleccionar(cb) {',
'    console.log(cb.value);',
'    console.log(cb.checked);',
'  if (cb.checked == true){',
'    console.log("block" + cb.value);',
'      $s(''P208_CAMBIA_ESTADO'', cb.value, false);',
'      $s(''P208_ACTIVO_AUX'', ''S'');',
'  } else {',
'      $s(''P208_CAMBIA_ESTADO'', cb.value, false);',
'      $s(''P208_ACTIVO_AUX'', ''N'');',
'  }',
'} '))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'EMILIANOP'
,p_last_upd_yyyymmddhh24miss=>'20221117121924'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(43581541528574925)
,p_plug_name=>'REPORTE'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT COD_ORIGEN, DESCRIPCION, ACTIVO ACT, APEX_ITEM.CHECKBOX (p_idx         => 1,',
'                                                                p_value       => ROWID,',
'                                                                 p_attributes  => (case ACTIVO',
'                                                                                   when ''S'' then ''checked ''',
'                                                                                   else null',
'                                                                                   end )||''onclick="seleccionar(this)"'' ) ACTIVO,',
'        NULL EDITAR, NULL ELIMINAR, ROWID ROW_ID',
'FROM VT_ORIGENES',
'WHERE COD_EMPRESA = :P_COD_EMPRESA'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P_COD_EMPRESA'
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
 p_id=>wwv_flow_imp.id(43581733221574927)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'EMILIANOP'
,p_internal_uid=>43581733221574927
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43581853860574928)
,p_db_column_name=>'COD_ORIGEN'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Cod Origen'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43581927708574929)
,p_db_column_name=>'DESCRIPCION'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Descripcion'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43582031297574930)
,p_db_column_name=>'ACTIVO'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Activo'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43582268157574932)
,p_db_column_name=>'ACT'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Act'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43583040571574940)
,p_db_column_name=>'EDITAR'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Editar'
,p_column_link=>'javascript:$s(''P208_ROW_ID_EDITAR'',''#ROW_ID#'');'
,p_column_linktext=>'<span aria-hidden="true" class="fa fa-edit"></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43583197659574941)
,p_db_column_name=>'ELIMINAR'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Eliminar'
,p_column_link=>'javascript:$s(''P208_ROW_ID_ELIMINAR'',''#ROW_ID#'');'
,p_column_linktext=>'<span class="fa fa-trash" aria-hidden="true"></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43583234088574942)
,p_db_column_name=>'ROW_ID'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Row Id'
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
 p_id=>wwv_flow_imp.id(44673464554444546)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'446735'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'COD_ORIGEN:DESCRIPCION:ACTIVO'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(43582372674574933)
,p_plug_name=>'VARIABLES AUXILIARES'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>60
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(44833331579897205)
,p_plug_name=>'CREAR_EDITAR'
,p_region_template_options=>'#DEFAULT#:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(44834043421897212)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(44833331579897205)
,p_button_name=>'P208_BOTON_ACEPTAR_CREAR'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Aceptar'
,p_button_position=>'BOTTOM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(44834475873897216)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(44833331579897205)
,p_button_name=>'P208_BOTON_ACEPTAR_EDITAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Aceptar'
,p_button_position=>'BOTTOM'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(44834661511897218)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(44833331579897205)
,p_button_name=>'P208_BOTON_CANCELAR'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Cancelar'
,p_button_position=>'BOTTOM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43582470834574934)
,p_name=>'P208_CAMBIA_ESTADO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(43582372674574933)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43582569188574935)
,p_name=>'P208_ACTIVO_AUX'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(43582372674574933)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43583332650574943)
,p_name=>'P208_ROW_ID_ELIMINAR'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(43582372674574933)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43583438332574944)
,p_name=>'P208_ROW_ID_EDITAR'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(43582372674574933)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(44833609532897208)
,p_name=>'P208_COD_ORIGEN'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(44833331579897205)
,p_prompt=>'Cod Origen'
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
 p_id=>wwv_flow_imp.id(44833706013897209)
,p_name=>'P208_DESCRIPCION'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(44833331579897205)
,p_prompt=>unistr('Descripci\00F3n')
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
 p_id=>wwv_flow_imp.id(44833877426897210)
,p_name=>'P208_ACTIVO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(44833331579897205)
,p_prompt=>'Activo'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(43582837724574938)
,p_name=>'DA_GUARDAR_CAMBIO_CKBX'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P208_CAMBIA_ESTADO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(43582925647574939)
,p_event_id=>wwv_flow_imp.id(43582837724574938)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    UPDATE VT_ORIGENES',
'    SET ACTIVO = :P208_ACTIVO_AUX',
'    WHERE COD_EMPRESA = :P_COD_EMPRESA',
'    AND ROWID = :P208_CAMBIA_ESTADO; ',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'',
'END;   '))
,p_attribute_02=>'P208_CAMBIA_ESTADO,P208_ACTIVO_AUX,P_COD_EMPRESA'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(43583533928574945)
,p_name=>'DA_ELIMINAR'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P208_ROW_ID_ELIMINAR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(43583635536574946)
,p_event_id=>wwv_flow_imp.id(43583533928574945)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>unistr('\00BFDesea eliminar el registro?')
,p_attribute_02=>unistr('\00BFDesea eliminar el registro?')
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(44833196294897203)
,p_event_id=>wwv_flow_imp.id(43583533928574945)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'DELETE FROM VT_ORIGENES',
'WHERE COD_EMPRESA = :P_COD_EMPRESA',
'AND ROWID = :P208_ROW_ID_ELIMINAR;',
'',
'EXCEPTION',
'',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'',
'END;'))
,p_attribute_02=>'P208_ROW_ID_ELIMINAR,P_COD_EMPRESA'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(44833212082897204)
,p_event_id=>wwv_flow_imp.id(43583533928574945)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(43581541528574925)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(44833460803897206)
,p_name=>'DA_EDITAR_REGISTRO'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P208_ROW_ID_EDITAR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(44834723718897219)
,p_event_id=>wwv_flow_imp.id(44833460803897206)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(44834043421897212)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(44834849686897220)
,p_event_id=>wwv_flow_imp.id(44833460803897206)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(44834475873897216)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(44834974489897221)
,p_event_id=>wwv_flow_imp.id(44833460803897206)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    SELECT COD_ORIGEN, DESCRIPCION, ACTIVO ',
'    INTO :P208_COD_ORIGEN, :P208_DESCRIPCION, :P208_ACTIVO',
'    FROM VT_ORIGENES',
'    WHERE COD_EMPRESA = :P_COD_EMPRESA',
'    AND ROWID = :P208_ROW_ID_EDITAR;',
'',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'',
'END;'))
,p_attribute_02=>'P208_ROW_ID_EDITAR,P_COD_EMPRESA'
,p_attribute_03=>'P208_COD_ORIGEN,P208_DESCRIPCION,P208_ACTIVO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(44833526931897207)
,p_event_id=>wwv_flow_imp.id(44833460803897206)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(44833331579897205)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(44834211501897214)
,p_name=>'DA_OCULTAR_BOTON_ACEPTAR'
,p_event_sequence=>40
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(44834310420897215)
,p_event_id=>wwv_flow_imp.id(44834211501897214)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(44834043421897212)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(44834536142897217)
,p_event_id=>wwv_flow_imp.id(44834211501897214)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(44834475873897216)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(44835002017897222)
,p_name=>'DA_GUARDAR_EDICION'
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(44834475873897216)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(44835148875897223)
,p_event_id=>wwv_flow_imp.id(44835002017897222)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    UPDATE VT_ORIGENES',
'    SET COD_ORIGEN = :P208_COD_ORIGEN, ',
'        DESCRIPCION =  :P208_DESCRIPCION,',
'        ACTIVO = :P208_ACTIVO',
'    WHERE COD_EMPRESA = :P_COD_EMPRESA',
'    AND ROWID = :P208_ROW_ID_EDITAR;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'',
'END;'))
,p_attribute_02=>'P208_COD_ORIGEN,P208_DESCRIPCION,P208_ACTIVO,P208_ROW_ID_EDITAR'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(44835278487897224)
,p_event_id=>wwv_flow_imp.id(44835002017897222)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(43581541528574925)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(44835379308897225)
,p_event_id=>wwv_flow_imp.id(44835002017897222)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(44833331579897205)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(43583970699574949)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'PR_LIMPIAR_DATOS_SESION'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(43581436506574924)
,p_process_sequence=>20
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_INIT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'        :P_COD_MODULO := ''VT'';',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'',
'',
'END;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp.component_end;
end;
/
