prompt --application/pages/page_00222
begin
--   Manifest
--     PAGE: 00222
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
 p_id=>222
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'FVPERICO'
,p_alias=>'FVPERICO'
,p_step_title=>'FVPERICO'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'INV'
,p_last_upd_yyyymmddhh24miss=>'20231107095515'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(51740445155843906)
,p_plug_name=>'VARIABLES'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(51740661056843908)
,p_plug_name=>'PERIODOS'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ROWID ROW_ID, NUM_PERIODO, FEC_INICIAL, FEC_FINAL, ESTADO, FEC_ESTADO, NULL EDITAR, NULL ELIMINAR',
'FROM FV_PERIODOS_COMISION',
'WHERE cod_empresa = :P_COD_EMPRESA;'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P_COD_EMPRESA'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'PERIODOS'
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
,p_plug_footer=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</div>',
'</div>'))
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(51740787419843909)
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
,p_internal_uid=>51740787419843909
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(51740852399843910)
,p_db_column_name=>'NUM_PERIODO'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Num Periodo'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(51740919948843911)
,p_db_column_name=>'FEC_INICIAL'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Fec Inicial'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(51741074299843912)
,p_db_column_name=>'FEC_FINAL'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Fec Final'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(51741161767843913)
,p_db_column_name=>'ESTADO'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Estado'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(51741236279843914)
,p_db_column_name=>'FEC_ESTADO'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Fec Estado'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(51741388433843915)
,p_db_column_name=>'EDITAR'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Editar'
,p_column_link=>'javascript:$s(''P222_ROW_ID_EDITAR'',''#ROW_ID#'');'
,p_column_linktext=>'<span aria-hidden="true" class="fa fa-edit"></span>'
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
'        RETURN FALSE;',
'    ELSE',
'        RETURN TRUE;',
'    END IF;                                                     ',
'END;'))
,p_display_condition2=>'PLSQL'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(51741496700843916)
,p_db_column_name=>'ELIMINAR'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Eliminar'
,p_column_link=>'javascript:$s(''P222_ROW_ID_ELIMINAR'',''#ROW_ID#'');'
,p_column_linktext=>'<span class="fa fa-trash" aria-hidden="true"></span>'
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
 p_id=>wwv_flow_imp.id(51744629510843948)
,p_db_column_name=>'ROW_ID'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Row Id'
,p_column_type=>'OTHER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(51808953355922000)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'518090'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>100000
,p_report_columns=>'NUM_PERIODO:FEC_INICIAL:FEC_FINAL:ESTADO:FEC_ESTADO:EDITAR:ELIMINAR:'
,p_sort_column_1=>'FEC_INICIAL'
,p_sort_direction_1=>'DESC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(51741892583843920)
,p_plug_name=>'CREAR/EDITAR PERIODO'
,p_region_template_options=>'#DEFAULT#:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(40120082745263659)
,p_plug_display_sequence=>60
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(51742694474843928)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(51741892583843920)
,p_button_name=>'P222_BOTON_ACEPTAR_CREAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Aceptar'
,p_button_position=>'BOTTOM'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(51742748974843929)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_imp.id(51741892583843920)
,p_button_name=>'P222_BOTON_ACEPTAR_EDITAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Aceptar'
,p_button_position=>'BOTTOM'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(51742831189843930)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_imp.id(51741892583843920)
,p_button_name=>'P222_BOTON_CANCELAR_CR_ED'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Cancelar'
,p_button_position=>'BOTTOM'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(51741781061843919)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(51740661056843908)
,p_button_name=>'P222_AGREGAR_PERIODO'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Agregar Periodo'
,p_button_position=>'TOP'
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
'        RETURN FALSE;',
'    ELSE',
'        RETURN TRUE;',
'    END IF;                                                     ',
'END;'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'FUNCTION_BODY'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(51740507217843907)
,p_name=>'P222_COD_MODULO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(51740445155843906)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(51741573297843917)
,p_name=>'P222_ROW_ID_ELIMINAR'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(51740445155843906)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(51741640379843918)
,p_name=>'P222_ROW_ID_EDITAR'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(51740445155843906)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(51741961081843921)
,p_name=>'P222_NUM_PERIODO_CR_ED'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(51741892583843920)
,p_prompt=>unistr('N\00FAm Periodo')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_field_template=>wwv_flow_imp.id(40186937130263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(51742053841843922)
,p_name=>'P222_FEC_INICIAL_CR_ED'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(51741892583843920)
,p_prompt=>'Fec Inicial'
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186937130263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(51742101566843923)
,p_name=>'P222_FEC_FINAL_CR_ED'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(51741892583843920)
,p_prompt=>'Fec Final'
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186937130263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(51742279494843924)
,p_name=>'P222_ESTADO_CR_ED'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(51741892583843920)
,p_prompt=>'Estado'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:ACTIVO;A,DESACTIVADO;D'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(51742392361843925)
,p_name=>'P222_FEC_ESTADO_CR_ED'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(51741892583843920)
,p_prompt=>'Fec Estado'
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
 p_id=>wwv_flow_imp.id(51743931754843941)
,p_name=>'P222_INDICADOR_ALERT'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(51740445155843906)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(51742498690843926)
,p_name=>'DA_ABRIR_CREAR_CR_ED'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(51741781061843919)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(51743255378843934)
,p_event_id=>wwv_flow_imp.id(51742498690843926)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(51742748974843929)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(51743337764843935)
,p_event_id=>wwv_flow_imp.id(51742498690843926)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(51742694474843928)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(51743427217843936)
,p_event_id=>wwv_flow_imp.id(51742498690843926)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P222_NUM_PERIODO_CR_ED,P222_FEC_INICIAL_CR_ED,P222_FEC_FINAL_CR_ED,P222_ESTADO_CR_ED,P222_FEC_ESTADO_CR_ED'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(51744547588843947)
,p_event_id=>wwv_flow_imp.id(51742498690843926)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    BEGIN',
'',
'        SELECT nvl(max(NUM_PERIODO),0)+1',
'        INTO :P222_NUM_PERIODO_CR_ED ',
'        FROM FV_PERIODOS_COMISION',
'        WHERE cod_empresa = :P_COD_EMPRESA;',
'',
'        :P222_ESTADO_CR_ED := ''A'';',
'        :P222_FEC_ESTADO_CR_ED := SYSDATE;',
'        ',
'        ',
'        EXCEPTION',
'        WHEN OTHERS THEN',
'            APEX_DEBUG.ERROR(SQLERRM);',
'            :P222_NUM_PERIODO_CR_ED  :=1;',
'    END;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_02=>'P_COD_EMPRESA'
,p_attribute_03=>'P222_NUM_PERIODO_CR_ED,P222_FEC_ESTADO_CR_ED,P222_ESTADO_CR_ED'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(51742512411843927)
,p_event_id=>wwv_flow_imp.id(51742498690843926)
,p_event_result=>'TRUE'
,p_action_sequence=>90
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(51741892583843920)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(51742971783843931)
,p_name=>'DA_OCULTAR_BOTON_CR_ED'
,p_event_sequence=>20
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(51743082972843932)
,p_event_id=>wwv_flow_imp.id(51742971783843931)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(51742694474843928)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(51743158382843933)
,p_event_id=>wwv_flow_imp.id(51742971783843931)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(51742748974843929)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(51743586458843937)
,p_name=>'DA_CERRAR_CR_ED'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(51742831189843930)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(51743691254843938)
,p_event_id=>wwv_flow_imp.id(51743586458843937)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(51741892583843920)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(51743716870843939)
,p_name=>'DA_AGREGAR_PERIODO_BD'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(51742694474843928)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(51744376584843945)
,p_event_id=>wwv_flow_imp.id(51743716870843939)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    IF :P222_FEC_INICIAL_CR_ED > :P222_FEC_FINAL_CR_ED THEN',
'        :P222_INDICADOR_ALERT := ''2'';',
'    ELSE',
'        IF :P222_INDICADOR_ALERT = ''1'' THEN',
'            :P222_INDICADOR_ALERT := ''1'';',
'        ELSE',
'            :P222_INDICADOR_ALERT := ''0'';',
'        END IF;',
'    END IF;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_02=>'P222_FEC_INICIAL_CR_ED ,P222_FEC_FINAL_CR_ED,P222_INDICADOR_ALERT'
,p_attribute_03=>'P222_INDICADOR_ALERT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(51744455130843946)
,p_event_id=>wwv_flow_imp.id(51743716870843939)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'La fecha inicial no puede ser mayor a la fecha final del periodo.'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P222_INDICADOR_ALERT'
,p_client_condition_expression=>'2'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(51743899179843940)
,p_event_id=>wwv_flow_imp.id(51743716870843939)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    IF :P222_NUM_PERIODO_CR_ED IS NULL OR',
'       :P222_FEC_INICIAL_CR_ED IS NULL OR',
'       :P222_FEC_FINAL_CR_ED IS NULL ',
'    THEN   ',
'        :P222_INDICADOR_ALERT := ''1'';',
'    ',
'    ELSE',
'         IF :P222_INDICADOR_ALERT = ''2'' THEN',
'            :P222_INDICADOR_ALERT := ''2'';',
'         ELSE',
'            :P222_INDICADOR_ALERT := ''0'';',
'            BEGIN',
'',
'                INSERT INTO FV_PERIODOS_COMISION (COD_EMPRESA, NUM_PERIODO, FEC_INICIAL,',
'                                                  FEC_FINAL, ESTADO, FEC_ESTADO)',
'                VALUES (:P_COD_EMPRESA, :P222_NUM_PERIODO_CR_ED, :P222_FEC_INICIAL_CR_ED,',
'                        :P222_FEC_FINAL_CR_ED, :P222_ESTADO_CR_ED, :P222_FEC_ESTADO_CR_ED);',
'',
'                EXCEPTION',
'                    WHEN OTHERS THEN',
'                        APEX_DEBUG.ERROR(SQLERRM);',
'',
'            END;',
'          END IF;',
'    END IF;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_02=>'P222_INDICADOR_ALERT,P222_NUM_PERIODO_CR_ED ,P222_FEC_INICIAL_CR_ED ,P222_FEC_FINAL_CR_ED ,P_COD_EMPRESA,P222_ESTADO_CR_ED,P222_FEC_ESTADO_CR_ED'
,p_attribute_03=>'P222_INDICADOR_ALERT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(51744036746843942)
,p_event_id=>wwv_flow_imp.id(51743716870843939)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'Compruebe que los campos obligatorios no se encuentren vacios.'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P222_INDICADOR_ALERT'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(51744141680843943)
,p_event_id=>wwv_flow_imp.id(51743716870843939)
,p_event_result=>'TRUE'
,p_action_sequence=>90
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(51741892583843920)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P222_INDICADOR_ALERT'
,p_client_condition_expression=>'0'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(51744238757843944)
,p_event_id=>wwv_flow_imp.id(51743716870843939)
,p_event_result=>'TRUE'
,p_action_sequence=>110
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(51740661056843908)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P222_INDICADOR_ALERT'
,p_client_condition_expression=>'0'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(51744726787843949)
,p_name=>'DA_BORRAR_PERIODO_BD'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P222_ROW_ID_ELIMINAR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(51744863799843950)
,p_event_id=>wwv_flow_imp.id(51744726787843949)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\00BFDesea borrar el periodo?')
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(52194788597986101)
,p_event_id=>wwv_flow_imp.id(51744726787843949)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    DELETE FV_PERIODOS_COMISION',
'    WHERE ROWID = :P222_ROW_ID_ELIMINAR;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_02=>'P222_ROW_ID_ELIMINAR'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(52194873040986102)
,p_event_id=>wwv_flow_imp.id(51744726787843949)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(51740661056843908)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(52194963508986103)
,p_name=>'DA_EDITAR_BD'
,p_event_sequence=>60
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(51742748974843929)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(52195141311986105)
,p_event_id=>wwv_flow_imp.id(52194963508986103)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    IF :P222_FEC_INICIAL_CR_ED > :P222_FEC_FINAL_CR_ED THEN',
'        :P222_INDICADOR_ALERT := ''2'';',
'    ELSE',
'        IF :P222_INDICADOR_ALERT = ''1'' THEN',
'            :P222_INDICADOR_ALERT := ''1'';',
'        ELSE',
'            :P222_INDICADOR_ALERT := ''0'';',
'        END IF;',
'    END IF;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_02=>'P222_FEC_INICIAL_CR_ED ,P222_FEC_FINAL_CR_ED,P222_INDICADOR_ALERT'
,p_attribute_03=>'P222_INDICADOR_ALERT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(52195220281986106)
,p_event_id=>wwv_flow_imp.id(52194963508986103)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'La fecha inicial no puede ser mayor a la fecha final del periodo.'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P222_INDICADOR_ALERT'
,p_client_condition_expression=>'2'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(52195349189986107)
,p_event_id=>wwv_flow_imp.id(52194963508986103)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    IF :P222_NUM_PERIODO_CR_ED IS NULL OR',
'       :P222_FEC_INICIAL_CR_ED IS NULL OR',
'       :P222_FEC_FINAL_CR_ED IS NULL ',
'    THEN   ',
'        :P222_INDICADOR_ALERT := ''1'';',
'    ',
'    ELSE',
'         IF :P222_INDICADOR_ALERT = ''2'' THEN',
'            :P222_INDICADOR_ALERT := ''2'';',
'         ELSE',
'            :P222_INDICADOR_ALERT := ''0'';',
'            BEGIN',
'',
'                UPDATE FV_PERIODOS_COMISION ',
'                SET ',
'                    COD_EMPRESA = :P_COD_EMPRESA, ',
'                    NUM_PERIODO = :P222_NUM_PERIODO_CR_ED, ',
'                    FEC_INICIAL = :P222_FEC_INICIAL_CR_ED,',
'                    FEC_FINAL = :P222_FEC_FINAL_CR_ED, ',
'                    ESTADO = :P222_ESTADO_CR_ED, ',
'                    FEC_ESTADO = :P222_FEC_ESTADO_CR_ED',
'                WHERE ROWID = :P222_ROW_ID_EDITAR;',
'',
'                EXCEPTION',
'                    WHEN OTHERS THEN',
'                        APEX_DEBUG.ERROR(SQLERRM);',
'',
'            END;',
'          END IF;',
'    END IF;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_02=>'P222_INDICADOR_ALERT,P222_NUM_PERIODO_CR_ED ,P222_FEC_INICIAL_CR_ED ,P222_FEC_FINAL_CR_ED ,P_COD_EMPRESA,P222_ESTADO_CR_ED,P222_FEC_ESTADO_CR_ED,P222_ROW_ID_EDITAR'
,p_attribute_03=>'P222_INDICADOR_ALERT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(52195496042986108)
,p_event_id=>wwv_flow_imp.id(52194963508986103)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'Compruebe que los campos obligatorios no se encuentren vacios.'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P222_INDICADOR_ALERT'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(52195519145986109)
,p_event_id=>wwv_flow_imp.id(52194963508986103)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(51741892583843920)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P222_INDICADOR_ALERT'
,p_client_condition_expression=>'0'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(52195628501986110)
,p_event_id=>wwv_flow_imp.id(52194963508986103)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(51740661056843908)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P222_INDICADOR_ALERT'
,p_client_condition_expression=>'0'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(52195761931986111)
,p_name=>'DA_EDITAR_PERIODO'
,p_event_sequence=>70
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P222_ROW_ID_EDITAR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(52195913102986113)
,p_event_id=>wwv_flow_imp.id(52195761931986111)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(51742694474843928)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(52196097751986114)
,p_event_id=>wwv_flow_imp.id(52195761931986111)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(51742748974843929)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(52196175340986115)
,p_event_id=>wwv_flow_imp.id(52195761931986111)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    BEGIN',
'',
'        SELECT NUM_PERIODO, FEC_INICIAL, FEC_FINAL, ESTADO, FEC_ESTADO',
'        INTO :P222_NUM_PERIODO_CR_ED, :P222_FEC_INICIAL_CR_ED, :P222_FEC_FINAL_CR_ED,',
'             :P222_ESTADO_CR_ED, :P222_FEC_ESTADO_CR_ED',
'        FROM FV_PERIODOS_COMISION',
'        WHERE ROWID = :P222_ROW_ID_EDITAR;',
'        ',
'        EXCEPTION',
'        WHEN OTHERS THEN',
'            APEX_DEBUG.ERROR(SQLERRM);',
'    END;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_02=>'P222_ROW_ID_EDITAR'
,p_attribute_03=>'P222_NUM_PERIODO_CR_ED,P222_FEC_INICIAL_CR_ED,P222_FEC_FINAL_CR_ED,P222_ESTADO_CR_ED,P222_FEC_ESTADO_CR_ED'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(52196359211986117)
,p_event_id=>wwv_flow_imp.id(52195761931986111)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(51741892583843920)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(51740389815843905)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_INIT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'',
':P222_COD_MODULO   := ''FV'';',
':P222_INDICADOR_ALERT := ''0'';',
'',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp.component_end;
end;
/
