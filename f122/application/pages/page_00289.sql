prompt --application/pages/page_00289
begin
--   Manifest
--     PAGE: 00289
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
 p_id=>289
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'BSPARAME'
,p_alias=>'BSPARAME'
,p_step_title=>'BSPARAME'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'JOSEFINAGU'
,p_last_upd_yyyymmddhh24miss=>'20230102185340'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(72121421910096544)
,p_plug_name=>'VARIABLES'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>990
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(72121648323096546)
,p_plug_name=>'PARAMETROS'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>1000
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT PARAMETRO,',
'       COD_MODULO,',
'       DESCRIPCION,',
'       VALOR,',
'       ROWID ROW_ID,',
'       NULL EDITAR,',
'       NULL ELIMINAR',
'FROM PARAMETROS_GENERALES',
'--ORDER BY lpad( ltrim( rtrim( parametro ) ), 10, '' '')',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'PARAMETROS'
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
 p_id=>wwv_flow_imp.id(72660814439004342)
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
,p_internal_uid=>72660814439004342
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(72660932474004343)
,p_db_column_name=>'PARAMETRO'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Parametro'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(72661056470004344)
,p_db_column_name=>'COD_MODULO'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>unistr('M\00F3dulo')
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(72661145250004345)
,p_db_column_name=>'DESCRIPCION'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>unistr('Descripci\00F3n')
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(72661247881004346)
,p_db_column_name=>'VALOR'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Valor'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(72661399023004347)
,p_db_column_name=>'ROW_ID'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Row Id'
,p_column_type=>'OTHER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(72661477729004348)
,p_db_column_name=>'EDITAR'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Editar'
,p_column_link=>'javascript:$s(''P289_ROW_ID_EDITAR'',''#ROW_ID#'');'
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
 p_id=>wwv_flow_imp.id(72661584410004349)
,p_db_column_name=>'ELIMINAR'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Eliminar'
,p_column_link=>'javascript:$s(''P289_ROW_ID_ELIMINAR'',''#ROW_ID#'');'
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
'END;',
'',
''))
,p_display_condition2=>'PLSQL'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(72759831068105047)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'727599'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>100000
,p_report_columns=>'PARAMETRO:COD_MODULO:DESCRIPCION:VALOR:EDITAR:ELIMINAR:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(72468030688423906)
,p_plug_name=>unistr('CREAR / EDITAR PAR\00C1METRO')
,p_parent_plug_id=>wwv_flow_imp.id(72121648323096546)
,p_region_template_options=>'#DEFAULT#:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(40120082745263659)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(72469611235423922)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(72468030688423906)
,p_button_name=>'P289_BOTON_CERRAR_PARAMETRO_CR_ED'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Cerrar'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(72470245461423928)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(72468030688423906)
,p_button_name=>'P289_BOTON_ACEPTAR_PARAMETRO_CR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Aceptar'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(72470338826423929)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(72468030688423906)
,p_button_name=>'P289_BOTON_ACEPTAR_PARAMETRO_ED'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Aceptar'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(72471127658423937)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(72121648323096546)
,p_button_name=>'P289_BOTON_ABRIR_PARAMETRO_CR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('Crear Par\00E1metro')
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
 p_id=>wwv_flow_imp.id(72121544209096545)
,p_name=>'P289_COD_MODULO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(72121421910096544)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(72468225336423908)
,p_name=>'P289_ROW_ID_EDITAR'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(72121421910096544)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(72468327161423909)
,p_name=>'P289_ROW_ID_ELIMINAR'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(72121421910096544)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(72469388824423919)
,p_name=>'P289_PARAMETRO_CR_ED'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(72468030688423906)
,p_prompt=>unistr('Par\00E1metro')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186937130263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(72469482882423920)
,p_name=>'P289_COD_MODULO_CR_ED'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(72468030688423906)
,p_prompt=>unistr('M\00F3dulo')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_MODULO_BSPARAME'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT cod_modulo || '' - '' || descripcion D, cod_modulo R ',
'FROM modulos ',
'ORDER BY descripcion'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186937130263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(72469521229423921)
,p_name=>'P289_VALOR_CR_ED'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(72468030688423906)
,p_prompt=>'Valor'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186937130263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(72469981391423925)
,p_name=>'P289_DESCRIPCION_CR_ED'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(72468030688423906)
,p_prompt=>unistr('Descripci\00F3n')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186937130263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(72470917967423935)
,p_name=>'P289_INDICADOR_ALERT'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(72121421910096544)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(72468469087423910)
,p_name=>'DA_ELIMINAR_PARAMETRO'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P289_ROW_ID_ELIMINAR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(72468523865423911)
,p_event_id=>wwv_flow_imp.id(72468469087423910)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\00BFDesea eliminar el registro?')
,p_attribute_02=>unistr('\00A1Atenci\00F3n!')
,p_attribute_03=>'warning'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(72468925990423915)
,p_event_id=>wwv_flow_imp.id(72468469087423910)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    DELETE PARAMETROS_GENERALES',
'    WHERE ROWID = :P289_ROW_ID_ELIMINAR;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_02=>'P289_ROW_ID_ELIMINAR'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(72469095154423916)
,p_event_id=>wwv_flow_imp.id(72468469087423910)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(72121648323096546)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(72469145099423917)
,p_name=>'DA_ABRIR_PARAMETRO_ED'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P289_ROW_ID_EDITAR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(72469265646423918)
,p_event_id=>wwv_flow_imp.id(72469145099423917)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    SELECT PARAMETRO,',
'           COD_MODULO,',
'           DESCRIPCION,',
'           VALOR',
'',
'    INTO :P289_PARAMETRO_CR_ED,',
'         :P289_COD_MODULO_CR_ED,',
'         :P289_DESCRIPCION_CR_ED,',
'         :P289_VALOR_CR_ED',
'',
'    FROM PARAMETROS_GENERALES',
'    WHERE ROWID = :P289_ROW_ID_EDITAR;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;',
''))
,p_attribute_02=>'P289_ROW_ID_EDITAR'
,p_attribute_03=>'P289_PARAMETRO_CR_ED,P289_COD_MODULO_CR_ED,P289_DESCRIPCION_CR_ED,P289_VALOR_CR_ED'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(72470016905423926)
,p_event_id=>wwv_flow_imp.id(72469145099423917)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(72468030688423906)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(72470156475423927)
,p_event_id=>wwv_flow_imp.id(72469145099423917)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(72470338826423929)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(72470483192423930)
,p_event_id=>wwv_flow_imp.id(72469145099423917)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(72470245461423928)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(72469797349423923)
,p_name=>'DA_CERRAR_PARAMETRO_CR_ED'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(72469611235423922)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(72469833740423924)
,p_event_id=>wwv_flow_imp.id(72469797349423923)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(72468030688423906)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(72470516885423931)
,p_name=>'DA_GUARDAR_PARAMETRO_ED'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(72470338826423929)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(72470649738423932)
,p_event_id=>wwv_flow_imp.id(72470516885423931)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'',
'    IF :P289_PARAMETRO_CR_ED IS NULL OR',
'       :P289_COD_MODULO_CR_ED IS NULL OR',
'       :P289_DESCRIPCION_CR_ED IS NULL OR',
'       :P289_VALOR_CR_ED IS NULL ',
'    THEN',
'        :P289_INDICADOR_ALERT := ''1'';',
'',
'    ELSE',
'        :P289_INDICADOR_ALERT := ''0'';',
'        UPDATE PARAMETROS_GENERALES ',
'        SET PARAMETRO = :P289_PARAMETRO_CR_ED,',
'            COD_MODULO = :P289_COD_MODULO_CR_ED,',
'            DESCRIPCION = :P289_DESCRIPCION_CR_ED,',
'            VALOR = :P289_VALOR_CR_ED',
'',
'        WHERE ROWID = :P289_ROW_ID_EDITAR;',
'        ',
'    END IF;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;',
'',
''))
,p_attribute_02=>'P289_ROW_ID_EDITAR,P289_PARAMETRO_CR_ED,P289_COD_MODULO_CR_ED,P289_DESCRIPCION_CR_ED,P289_VALOR_CR_ED'
,p_attribute_03=>'P289_INDICADOR_ALERT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(72471037332423936)
,p_event_id=>wwv_flow_imp.id(72470516885423931)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>unistr('Compruebe que los campos obligatorios no est\00E9n vac\00EDos.')
,p_attribute_02=>'CAMPOS VACIOS'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P289_INDICADOR_ALERT'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(72470706856423933)
,p_event_id=>wwv_flow_imp.id(72470516885423931)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(72468030688423906)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P289_INDICADOR_ALERT'
,p_client_condition_expression=>'0'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(72470878545423934)
,p_event_id=>wwv_flow_imp.id(72470516885423931)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(72121648323096546)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P289_INDICADOR_ALERT'
,p_client_condition_expression=>'0'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(72471662606423942)
,p_name=>'DA_ABRIR_PARAMETRO_CR'
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(72471127658423937)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(72471802809423944)
,p_event_id=>wwv_flow_imp.id(72471662606423942)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P289_PARAMETRO_CR_ED,P289_COD_MODULO_CR_ED,P289_VALOR_CR_ED,P289_DESCRIPCION_CR_ED'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(72471369893423939)
,p_event_id=>wwv_flow_imp.id(72471662606423942)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(72468030688423906)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(72471404134423940)
,p_event_id=>wwv_flow_imp.id(72471662606423942)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(72470245461423928)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(72471508910423941)
,p_event_id=>wwv_flow_imp.id(72471662606423942)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(72470338826423929)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(72471914490423945)
,p_name=>'DA_CREAR_PARAMETRO'
,p_event_sequence=>60
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(72470245461423928)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(72472192162423947)
,p_event_id=>wwv_flow_imp.id(72471914490423945)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'',
'    IF :P289_PARAMETRO_CR_ED IS NULL OR',
'       :P289_COD_MODULO_CR_ED IS NULL OR',
'       :P289_DESCRIPCION_CR_ED IS NULL OR',
'       :P289_VALOR_CR_ED IS NULL ',
'    THEN',
'        :P289_INDICADOR_ALERT := ''1'';',
'',
'    ELSE',
'        :P289_INDICADOR_ALERT := ''0'';',
'        INSERT INTO PARAMETROS_GENERALES (PARAMETRO,',
'                                          COD_MODULO,',
'                                          DESCRIPCION,',
'                                          VALOR)',
'',
'                        VALUES  (:P289_PARAMETRO_CR_ED,',
'                                 :P289_COD_MODULO_CR_ED,',
'                                 :P289_DESCRIPCION_CR_ED,',
'                                 :P289_VALOR_CR_ED);        ',
'    END IF;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;',
'',
''))
,p_attribute_02=>'P289_ROW_ID_EDITAR,P289_PARAMETRO_CR_ED,P289_COD_MODULO_CR_ED,P289_DESCRIPCION_CR_ED,P289_VALOR_CR_ED'
,p_attribute_03=>'P289_INDICADOR_ALERT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(72472226297423948)
,p_event_id=>wwv_flow_imp.id(72471914490423945)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>unistr('Compruebe que los campos obligatorios no est\00E9n vac\00EDos.')
,p_attribute_02=>'CAMPOS VACIOS'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P289_INDICADOR_ALERT'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(72472342645423949)
,p_event_id=>wwv_flow_imp.id(72471914490423945)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(72468030688423906)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P289_INDICADOR_ALERT'
,p_client_condition_expression=>'0'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(72472436706423950)
,p_event_id=>wwv_flow_imp.id(72471914490423945)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(72121648323096546)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P289_INDICADOR_ALERT'
,p_client_condition_expression=>'0'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(72121389790096543)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_INIT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    :P289_COD_MODULO := ''BS'';',
'',
'    -- CREAR COLLECTION PARAMETROS',
'    BSPARAME.PR_CREAR_COL_PARAMETRO;    ',
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
