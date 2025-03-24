prompt --application/pages/page_00226
begin
--   Manifest
--     PAGE: 00226
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
 p_id=>226
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'FVCOMPRO'
,p_alias=>'FVCOMPRO'
,p_step_title=>'FVCOMPRO'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'EMILIANOP'
,p_last_upd_yyyymmddhh24miss=>'20221201171937'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(52196430977986118)
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
 p_id=>wwv_flow_imp.id(52196921907986123)
,p_plug_name=>'PROMOTORAS'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'        seq_id  SEQ_ID,',
'        c001    ID_REGISTRO,',
'        c002    CONCEPTO,',
'        c003    SUB_CONCEPTO,',
'        c004    DESCRIPCION,',
'        c005    PORCENTAJE,',
'        c006    TIPO_EMPLEADO,',
'        NULL    EDITAR,',
'        NULL    ELIMINAR',
'',
'FROM APEX_COLLECTIONS',
'WHERE COLLECTION_NAME = ''PROMOTORAS''',
'AND nvl(c020, ''O'') <> ''B'';'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'PROMOTORAS'
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
 p_id=>wwv_flow_imp.id(52197067501986124)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_search_bar=>'N'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_enable_mail_download=>'Y'
,p_owner=>'EMILIANOP'
,p_internal_uid=>52197067501986124
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(52197105473986125)
,p_db_column_name=>'ID_REGISTRO'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Id'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(52197221394986126)
,p_db_column_name=>'CONCEPTO'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Variables'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(52197303985986127)
,p_db_column_name=>'SUB_CONCEPTO'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Sub-Variables'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(52197472782986128)
,p_db_column_name=>'DESCRIPCION'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Descripcion'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(52197540144986129)
,p_db_column_name=>'PORCENTAJE'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'% Porcentaje'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(52198460109986138)
,p_db_column_name=>'TIPO_EMPLEADO'
,p_display_order=>60
,p_column_identifier=>'I'
,p_column_label=>'Tipo Empleado'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(52197696302986130)
,p_db_column_name=>'EDITAR'
,p_display_order=>70
,p_column_identifier=>'F'
,p_column_label=>'Editar'
,p_column_link=>'javascript:$s(''P226_SEQ_ID_EDITAR'',''#SEQ_ID#'');'
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
 p_id=>wwv_flow_imp.id(52197712500986131)
,p_db_column_name=>'ELIMINAR'
,p_display_order=>80
,p_column_identifier=>'G'
,p_column_label=>'Eliminar'
,p_column_link=>'javascript:$s(''P226_SEQ_ID_ELIMINAR'',''#SEQ_ID#'');'
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
 p_id=>wwv_flow_imp.id(52198073736986134)
,p_db_column_name=>'SEQ_ID'
,p_display_order=>90
,p_column_identifier=>'H'
,p_column_label=>'Seq Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(52227917270873871)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'522280'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ID_REGISTRO:CONCEPTO:SUB_CONCEPTO:DESCRIPCION:PORCENTAJE:TIPO_EMPLEADO:EDITAR:ELIMINAR:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(52198669719986140)
,p_plug_name=>'CREAR/EDITAR PROMOTORAS'
,p_region_template_options=>'#DEFAULT#:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(40120082745263659)
,p_plug_display_sequence=>60
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(52244823424226401)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_imp.id(52198669719986140)
,p_button_name=>'P226_BOTON_ACEPTAR_CREAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Aceptar'
,p_button_position=>'BOTTOM'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(52244904796226402)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_imp.id(52198669719986140)
,p_button_name=>'P226_BOTON_ACEPTAR_EDITAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Aceptar'
,p_button_position=>'BOTTOM'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(52245030334226403)
,p_button_sequence=>90
,p_button_plug_id=>wwv_flow_imp.id(52198669719986140)
,p_button_name=>'P226_BOTON_CANCELAR_CR_ED'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Cancelar'
,p_button_position=>'BOTTOM'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(52246734505226420)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(52196921907986123)
,p_button_name=>'P226_BOTON_AGREGAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Agregar'
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
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(52247993984226432)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(52196921907986123)
,p_button_name=>'P226_BOTON_CONFIRMAR_CAMBIOS'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Confirmar Cambios'
,p_button_position=>'TOP'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    RETURN SEGURIDAD_GRANULAR.FC_MOSTRAR_CONFIRMAR (pusua0100_id => :P_USUA0100_ID,',
'                                                    ppage_id => :APP_PAGE_ID,',
'                                                    papli0100_id => :P_APLI0100_ID);',
'END;'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'FUNCTION_BODY'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(52196519675986119)
,p_name=>'P226_COD_EMPRESA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(52196430977986118)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(52196645222986120)
,p_name=>'P226_COD_USUARIO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(52196430977986118)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(52196752133986121)
,p_name=>'P226_COD_SUCURSAL'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(52196430977986118)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(52197887700986132)
,p_name=>'P226_SEQ_ID_EDITAR'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(52196430977986118)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(52197951961986133)
,p_name=>'P226_SEQ_ID_ELIMINAR'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(52196430977986118)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(52198709738986141)
,p_name=>'P226_ID_REGISTRO_CR_ED'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(52198669719986140)
,p_prompt=>'Id'
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
 p_id=>wwv_flow_imp.id(52198818523986142)
,p_name=>'P226_SUB_CONCEPTO_CR_ED'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(52198669719986140)
,p_prompt=>'Sub-Variables'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186937130263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(52198937576986143)
,p_name=>'P226_TIPO_EMPLEADO_CR_ED'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(52198669719986140)
,p_prompt=>'Tipo Empleado'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:PROMOTORA;PROMOTORA,CAPACITADOR;CAPACITADOR'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186937130263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(52199009235986144)
,p_name=>'P226_CONCEPTO_CR_ED'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(52198669719986140)
,p_prompt=>'Variables'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:VENTAS;VENTAS,REPORTES;REPORTES,FORMACION;FORMACION,EVALUACION;EVALUACION,CAPACITACION;CAPACITACION,RUTA;RUTA,OFICINA;OFICINA'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186937130263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(52199119974986145)
,p_name=>'P226_DESCRIPCION_CR_ED'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(52198669719986140)
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
 p_id=>wwv_flow_imp.id(52199217846986146)
,p_name=>'P226_PORCENTAJE_CR_ED'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(52198669719986140)
,p_prompt=>'% Porcentaje'
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
 p_id=>wwv_flow_imp.id(52248448250226437)
,p_name=>'P226_INDICADOR_ALERT'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(52196430977986118)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(52198151112986135)
,p_name=>'DA_ELIMINAR_MIEM_COL'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P226_SEQ_ID_ELIMINAR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(52198260253986136)
,p_event_id=>wwv_flow_imp.id(52198151112986135)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\00BFDesea borrar el registro?')
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(52198364567986137)
,p_event_id=>wwv_flow_imp.id(52198151112986135)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    FVCOMPRO.pr_eliminar_miem_col (:P226_SEQ_ID_ELIMINAR);',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_02=>'P226_SEQ_ID_ELIMINAR'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(52198546822986139)
,p_event_id=>wwv_flow_imp.id(52198151112986135)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(52196921907986123)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(52199544643986149)
,p_name=>'DA_EDITAR_MIEM_COL'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P226_SEQ_ID_EDITAR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(52246345134226416)
,p_event_id=>wwv_flow_imp.id(52199544643986149)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(52244904796226402)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(52246450485226417)
,p_event_id=>wwv_flow_imp.id(52199544643986149)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(52244823424226401)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(52246536240226418)
,p_event_id=>wwv_flow_imp.id(52199544643986149)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    SELECT',
'        c001    ID_REGISTRO,',
'        c002    CONCEPTO,',
'        c003    SUB_CONCEPTO,',
'        c004    DESCRIPCION,',
'        c005    PORCENTAJE,',
'        c006    TIPO_EMPLEADO',
'    INTO',
'        :P226_ID_REGISTRO_CR_ED,',
'        :P226_CONCEPTO_CR_ED,',
'        :P226_SUB_CONCEPTO_CR_ED,',
'        :P226_DESCRIPCION_CR_ED,',
'        :P226_PORCENTAJE_CR_ED,',
'        :P226_TIPO_EMPLEADO_CR_ED',
'FROM APEX_COLLECTIONS',
'WHERE COLLECTION_NAME = ''PROMOTORAS''',
'AND SEQ_ID = :P226_SEQ_ID_EDITAR;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_02=>'P226_SEQ_ID_EDITAR'
,p_attribute_03=>'P226_ID_REGISTRO_CR_ED,P226_CONCEPTO_CR_ED,P226_SUB_CONCEPTO_CR_ED,P226_DESCRIPCION_CR_ED,P226_PORCENTAJE_CR_ED,P226_TIPO_EMPLEADO_CR_ED'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(52246605136226419)
,p_event_id=>wwv_flow_imp.id(52199544643986149)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(52198669719986140)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(52245190675226404)
,p_name=>'DA_CERRAR_CR_ED'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(52245030334226403)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(52245268311226405)
,p_event_id=>wwv_flow_imp.id(52245190675226404)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(52198669719986140)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(52245325495226406)
,p_name=>'DA_OCULTAR_BOTONES_CR_ED'
,p_event_sequence=>40
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(52245481253226407)
,p_event_id=>wwv_flow_imp.id(52245325495226406)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(52244823424226401)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(52245541663226408)
,p_event_id=>wwv_flow_imp.id(52245325495226406)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(52244904796226402)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(52245611808226409)
,p_name=>'DA_EDITAR_MIEMBRO'
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(52244904796226402)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(52248964603226442)
,p_event_id=>wwv_flow_imp.id(52245611808226409)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'        IF  :P226_ID_REGISTRO_CR_ED IS NULL OR',
'            :P226_CONCEPTO_CR_ED IS NULL OR',
'            :P226_SUB_CONCEPTO_CR_ED IS NULL OR',
'            :P226_TIPO_EMPLEADO_CR_ED IS NULL ',
'        THEN',
'            :P226_INDICADOR_ALERT := ''1'';',
'',
'        ELSE ',
'            :P226_INDICADOR_ALERT := ''0'';',
'',
'            FVCOMPRO.pr_modificar_mie_col ( :P226_SEQ_ID_EDITAR,',
'                                :P226_ID_REGISTRO_CR_ED,',
'                                :P226_CONCEPTO_CR_ED,',
'                                :P226_SUB_CONCEPTO_CR_ED,',
'                                :P226_DESCRIPCION_CR_ED,',
'                                :P226_PORCENTAJE_CR_ED,',
'                                :P226_TIPO_EMPLEADO_CR_ED);',
'',
'        END IF;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;',
'',
''))
,p_attribute_02=>'P226_ID_REGISTRO_CR_ED,P226_CONCEPTO_CR_ED,P226_SUB_CONCEPTO_CR_ED,P226_DESCRIPCION_CR_ED,P226_PORCENTAJE_CR_ED,P226_TIPO_EMPLEADO_CR_ED'
,p_attribute_03=>'P226_INDICADOR_ALERT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(52248648912226439)
,p_event_id=>wwv_flow_imp.id(52245611808226409)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>unistr('Compruebe que los campos obligatorios no se encuentran vac\00EDos.')
,p_attribute_02=>'CAMPOS OBLIGATORIOS'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P226_INDICADOR_ALERT'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(52248793202226440)
,p_event_id=>wwv_flow_imp.id(52245611808226409)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(52196921907986123)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P226_INDICADOR_ALERT'
,p_client_condition_expression=>'0'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(52248866925226441)
,p_event_id=>wwv_flow_imp.id(52245611808226409)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(52198669719986140)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P226_INDICADOR_ALERT'
,p_client_condition_expression=>'0'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(52247010374226423)
,p_name=>'DA_AGREGAR_MIEMBRO'
,p_event_sequence=>60
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(52244823424226401)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(52247141990226424)
,p_event_id=>wwv_flow_imp.id(52247010374226423)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'        IF  :P226_ID_REGISTRO_CR_ED IS NULL OR',
'            :P226_CONCEPTO_CR_ED IS NULL OR',
'            :P226_SUB_CONCEPTO_CR_ED IS NULL OR',
'            :P226_TIPO_EMPLEADO_CR_ED IS NULL ',
'        THEN',
'            :P226_INDICADOR_ALERT := ''1'';',
'',
'        ELSE ',
'            :P226_INDICADOR_ALERT := ''0'';',
'',
'            FVCOMPRO.pr_agregar_miembro_collection( ',
'                                            :P226_ID_REGISTRO_CR_ED,',
'                                            :P226_CONCEPTO_CR_ED,',
'                                            :P226_SUB_CONCEPTO_CR_ED,',
'                                            :P226_DESCRIPCION_CR_ED,',
'                                            :P226_PORCENTAJE_CR_ED,',
'                                            :P226_TIPO_EMPLEADO_CR_ED);',
'',
'        END IF;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;',
'',
''))
,p_attribute_02=>'P226_ID_REGISTRO_CR_ED,P226_CONCEPTO_CR_ED,P226_SUB_CONCEPTO_CR_ED,P226_DESCRIPCION_CR_ED,P226_PORCENTAJE_CR_ED,P226_TIPO_EMPLEADO_CR_ED'
,p_attribute_03=>'P226_INDICADOR_ALERT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(52248597176226438)
,p_event_id=>wwv_flow_imp.id(52247010374226423)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>unistr('Compruebe que los campos obligatorios no se encuentran vac\00EDos.')
,p_attribute_02=>'CAMPOS OBLIGATORIOS'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P226_INDICADOR_ALERT'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(52247210676226425)
,p_event_id=>wwv_flow_imp.id(52247010374226423)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(52196921907986123)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P226_INDICADOR_ALERT'
,p_client_condition_expression=>'0'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(52247307513226426)
,p_event_id=>wwv_flow_imp.id(52247010374226423)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(52198669719986140)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P226_INDICADOR_ALERT'
,p_client_condition_expression=>'0'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(52247496876226427)
,p_name=>'DA_CREAR_MIEMB'
,p_event_sequence=>70
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(52246734505226420)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(52247508210226428)
,p_event_id=>wwv_flow_imp.id(52247496876226427)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P226_ID_REGISTRO_CR_ED,P226_CONCEPTO_CR_ED,P226_SUB_CONCEPTO_CR_ED,P226_DESCRIPCION_CR_ED,P226_TIPO_EMPLEADO_CR_ED,P226_PORCENTAJE_CR_ED'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(52247754250226430)
,p_event_id=>wwv_flow_imp.id(52247496876226427)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(52244904796226402)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(52247821460226431)
,p_event_id=>wwv_flow_imp.id(52247496876226427)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(52244823424226401)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(52247666699226429)
,p_event_id=>wwv_flow_imp.id(52247496876226427)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(52198669719986140)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(52248126108226434)
,p_name=>'DA_SUBMIT_PAGE'
,p_event_sequence=>80
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(52247993984226432)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(52248351162226436)
,p_event_id=>wwv_flow_imp.id(52248126108226434)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\00BFDesea guardar los cambios?')
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(52248244931226435)
,p_event_id=>wwv_flow_imp.id(52248126108226434)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_01=>'CONFIRMAR'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(52196846314986122)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_INIT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    :P226_COD_EMPRESA := :P_COD_EMPRESA;',
'    :P226_COD_USUARIO := :P_COD_USUARIO;',
'    :P226_COD_SUCURSAL := :P_COD_SUCURSAL;',
'',
'    :P226_INDICADOR_ALERT := ''0'';',
'',
'',
'    FVCOMPRO.pr_crear_col_promotoras (:P_COD_EMPRESA); ',
'',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(52248017468226433)
,p_process_sequence=>10
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'DA_GUARDAR_CAMBIOS_BD'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    FVCOMPRO.pr_confirmar_accion;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>unistr('\00A1Ups! Ocurri\00F3 un error.')
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CONFIRMAR'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
,p_process_success_message=>unistr('\00A1Los cambios se guardaron exitosamente!')
);
wwv_flow_imp.component_end;
end;
/
