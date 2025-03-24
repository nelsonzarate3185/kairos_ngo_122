prompt --application/pages/page_00455
begin
--   Manifest
--     PAGE: 00455
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
 p_id=>455
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Identificaciones'
,p_alias=>'BSIDENTI'
,p_step_title=>'Identificaciones'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'AIBANEZ'
,p_last_upd_yyyymmddhh24miss=>'20230323164459'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(134149511046715305)
,p_plug_name=>'Identificaciones'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>1020
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select COD_IDENT,',
'       DESCRIPCION,',
'       MASCARA,',
'       ABREVIATURA,',
'       APEX_ITEM.CHECKBOX(p_idx => 1 , ',
'                            p_value => ROWID, ',
'                            p_attributes => (case PERSONA_FISICA when ''S'' then ''checked '' else null end )||'' disabled'' ) as PERSONA_FISICA,',
'       null editar,',
'       null eliminar,',
'       ROWID',
'    from identificaciones',
'order by lpad( ltrim( rtrim( cod_ident ) ), 5, '' '' );'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Identificaciones'
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
 p_id=>wwv_flow_imp.id(134149620204715306)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_finder_drop_down=>'N'
,p_show_actions_menu=>'N'
,p_report_list_mode=>'NONE'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_enable_mail_download=>'Y'
,p_owner=>'AIBANEZ'
,p_internal_uid=>134149620204715306
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(134149726864715307)
,p_db_column_name=>'COD_IDENT'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>unistr('C\00F3digo')
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(134149859021715308)
,p_db_column_name=>'DESCRIPCION'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>unistr('Descripci\00F3n')
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(134149913069715309)
,p_db_column_name=>'MASCARA'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>unistr('M\00E1scara')
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(134150038469715310)
,p_db_column_name=>'ABREVIATURA'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Abreviatura'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(134150127191715311)
,p_db_column_name=>'PERSONA_FISICA'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>unistr('Per.F\00EDsica')
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(134150637187715316)
,p_db_column_name=>'EDITAR'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'&nbsp'
,p_column_link=>'javascript:$s(''P455_EDITAR'',''#ROWID#'');'
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
'                                                         pdm_boto     => 2); --1 guardar, 2 editar, 3 eliminar',
'',
'    IF VCONTROL = 0 THEN',
'        RETURN FALSE;',
'    ELSE',
'        RETURN TRUE;',
'    END IF;',
'END;'))
,p_display_condition2=>'PLSQL'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(134150712272715317)
,p_db_column_name=>'ELIMINAR'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'&nbsp'
,p_column_link=>'javascript:$s(''P455_ELIMINAR'',''#ROWID#'');'
,p_column_linktext=>'<span class="fa fa-trash-o" aria-hidden="true"></span>'
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
'                                                         pdm_boto     => 3); --1 guardar, 2 editar, 3 eliminar',
'',
'    IF VCONTROL = 0 THEN',
'        RETURN FALSE;',
'    ELSE',
'        RETURN TRUE;',
'    END IF;',
'END;'))
,p_display_condition2=>'PLSQL'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(134150884160715318)
,p_db_column_name=>'ROWID'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Rowid'
,p_column_type=>'OTHER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(134176600039652182)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1341767'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'EDITAR:COD_IDENT:DESCRIPCION:MASCARA:ABREVIATURA:PERSONA_FISICA:ELIMINAR:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(134150317493715313)
,p_plug_name=>'Agregar/Editar'
,p_region_template_options=>'#DEFAULT#:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>1030
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(134151433153715324)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(134150317493715313)
,p_button_name=>'BT_CANCELAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Cancelar'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(134151393255715323)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(134150317493715313)
,p_button_name=>'BT_GUARDAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Guardar'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(134408042608800501)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(134150317493715313)
,p_button_name=>'BT_GUARDAR_EDIT'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Guardar'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(134150286511715312)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(134149511046715305)
,p_button_name=>'BT_AGREGAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Agregar'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
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
'                                                         pdm_boto     => 1); --1 guardar, 2 editar, 3 eliminar',
'',
'    IF VCONTROL = 0 THEN',
'        RETURN FALSE;',
'    ELSE',
'        RETURN TRUE;',
'    END IF;',
'END;'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'FUNCTION_BODY'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(134149297010715302)
,p_name=>'P455_COD_MODULO'
,p_item_sequence=>990
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(134149384618715303)
,p_name=>'P455_NOM_EMPRESA'
,p_item_sequence=>1000
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(134149422909715304)
,p_name=>'P455_COD_USUARIO'
,p_item_sequence=>1010
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(134150979650715319)
,p_name=>'P455_EDITAR'
,p_item_sequence=>1040
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(134151085750715320)
,p_name=>'P455_ELIMINAR'
,p_item_sequence=>1050
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(134151925805715329)
,p_name=>'P455_COD_IDENT'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(134150317493715313)
,p_prompt=>unistr('C\00F3digo')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>5
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(134152029128715330)
,p_name=>'P455_DESCRIPCION'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(134150317493715313)
,p_prompt=>unistr('Descripci\00F3n')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>80
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(134152166533715331)
,p_name=>'P455_MASCARA'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(134150317493715313)
,p_prompt=>unistr('M\00E1scara')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(134152287007715332)
,p_name=>'P455_PERSONA_FISICA'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(134150317493715313)
,p_prompt=>unistr('Per.F\00EDsica')
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:NO;N,SI;S'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(134152334624715333)
,p_name=>'P455_ABREVIATURA'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(134150317493715313)
,p_prompt=>'Abreviatura'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>5
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(134152712605715337)
,p_name=>'P455_ERR'
,p_item_sequence=>1060
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(134153636906715346)
,p_name=>'P455_COD_IDENT_2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(134150317493715313)
,p_prompt=>unistr('C\00F3digo')
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(134150459358715314)
,p_name=>'DA_AGREGAR'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(134150286511715312)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(134332822497065630)
,p_event_id=>wwv_flow_imp.id(134150459358715314)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P455_COD_IDENT,P455_COD_IDENT_2,P455_MASCARA,P455_DESCRIPCION,P455_PERSONA_FISICA,P455_ABREVIATURA'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(134154012418715350)
,p_event_id=>wwv_flow_imp.id(134150459358715314)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P455_COD_IDENT_2'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(134408622845800507)
,p_event_id=>wwv_flow_imp.id(134150459358715314)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(134408042608800501)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(134153711704715347)
,p_event_id=>wwv_flow_imp.id(134150459358715314)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P455_COD_IDENT'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(134408794022800508)
,p_event_id=>wwv_flow_imp.id(134150459358715314)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(134151393255715323)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(134150535143715315)
,p_event_id=>wwv_flow_imp.id(134150459358715314)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(134150317493715313)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(134151149741715321)
,p_name=>'DA_EDITAR'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P455_EDITAR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(134153851970715348)
,p_event_id=>wwv_flow_imp.id(134151149741715321)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P455_COD_IDENT'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(134408826659800509)
,p_event_id=>wwv_flow_imp.id(134151149741715321)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(134151393255715323)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(134153957099715349)
,p_event_id=>wwv_flow_imp.id(134151149741715321)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P455_COD_IDENT_2'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(134408962674800510)
,p_event_id=>wwv_flow_imp.id(134151149741715321)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(134408042608800501)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(134153316062715343)
,p_event_id=>wwv_flow_imp.id(134151149741715321)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    select COD_IDENT,',
'           DESCRIPCION,',
'           MASCARA,',
'           PERSONA_FISICA,',
'           ABREVIATURA',
'    into  :P455_COD_IDENT_2,',
'           :P455_DESCRIPCION,',
'           :P455_MASCARA,',
'           :P455_PERSONA_FISICA,',
'           :P455_ABREVIATURA',
'    from identificaciones',
'    where ROWID = :P455_EDITAR;',
'  ',
'    EXCEPTION',
'            when others then',
'                        apex_debug.error(sqlerrm);',
'END;'))
,p_attribute_02=>'P455_EDITAR'
,p_attribute_03=>'P455_COD_IDENT_2,P455_DESCRIPCION,P455_MASCARA,P455_PERSONA_FISICA,P455_ABREVIATURA'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(134151245957715322)
,p_event_id=>wwv_flow_imp.id(134151149741715321)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(134150317493715313)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(134151504877715325)
,p_name=>'DA_CLOSE'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(134151433153715324)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(134151640576715326)
,p_event_id=>wwv_flow_imp.id(134151504877715325)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(134150317493715313)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(134151795675715327)
,p_name=>'DA_ELIMINAR'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P455_ELIMINAR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(134151891656715328)
,p_event_id=>wwv_flow_imp.id(134151795675715327)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\00BFDesea eliminar dicha identifiacion?')
,p_attribute_03=>'warning'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(134153473418715344)
,p_event_id=>wwv_flow_imp.id(134151795675715327)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    delete identificaciones',
'    where ROWID = :P455_ELIMINAR;',
'',
'EXCEPTION',
'    when others then apex_debug.error(sqlerrm);',
'END;'))
,p_attribute_02=>'P455_ELIMINAR'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(134153596281715345)
,p_event_id=>wwv_flow_imp.id(134151795675715327)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(134149511046715305)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(134152502998715335)
,p_name=>'DA_GUARDAR'
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(134151393255715323)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(134152683511715336)
,p_event_id=>wwv_flow_imp.id(134152502998715335)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
' ',
'DECLARE',
'    V_EXISTE NUMBER;',
'BEGIN',
'',
'   BEGIN',
'           select 1',
'           into v_existe',
'           from  IDENTIFICACIONES',
'           where cod_ident = :P455_COD_IDENT;',
'         ',
unistr('          :P455_ERR := ''Ya existe dicha identifaci\00F3n.'';'),
'    ',
'    EXCEPTION ',
'       ',
'        when others then ',
'                   apex_debug.error(sqlerrm);',
'    END;',
'',
'',
'    IF V_EXISTE IS NULL THEN',
'       :P455_ERR := NULL; ',
'',
'       insert into IDENTIFICACIONES(',
'        COD_IDENT,',
'        DESCRIPCION,	',
'        MASCARA,',
'        PERSONA_FISICA,',
'        ABREVIATURA',
'       ) values(',
'            UPPER(:P455_COD_IDENT),',
'           UPPER(:P455_DESCRIPCION),',
'           UPPER(:P455_MASCARA),',
'            :P455_PERSONA_FISICA,',
'           UPPER(:P455_ABREVIATURA)',
'       );',
'     END IF;',
'      ',
'',
'   EXCEPTION ',
'',
'            when others then',
'                       apex_debug.error(sqlerrm);',
'                   ',
'    END;'))
,p_attribute_02=>'P455_COD_IDENT,P455_MASCARA,P455_DESCRIPCION,P455_PERSONA_FISICA,P455_ABREVIATURA'
,p_attribute_03=>'P455_ERR'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(134153093556715340)
,p_event_id=>wwv_flow_imp.id(134152502998715335)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(134149511046715305)
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P455_ERR'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(134153187636715341)
,p_event_id=>wwv_flow_imp.id(134152502998715335)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(134150317493715313)
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P455_ERR'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(134153260301715342)
,p_event_id=>wwv_flow_imp.id(134152502998715335)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'Proceso realizado correctamente.'
,p_attribute_03=>'success'
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P455_ERR'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(134152833782715338)
,p_name=>'DA_ERR'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P455_ERR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(134152974732715339)
,p_event_id=>wwv_flow_imp.id(134152833782715338)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P455_ERR.'
,p_attribute_03=>'warning'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P455_ERR'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(134408130413800502)
,p_name=>'DA_GUARDAR_EDIT'
,p_event_sequence=>70
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(134408042608800501)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(134408545701800506)
,p_event_id=>wwv_flow_imp.id(134408130413800502)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN  ',
'',
'        If :P455_EDITAR is not null then',
'               ',
'                UPDATE IDENTIFICACIONES',
'                            SET  ',
'                            COD_IDENT = UPPER(:P455_COD_IDENT_2),',
'                            DESCRIPCION = UPPER(:P455_DESCRIPCION),',
'                            MASCARA = UPPER(:P455_MASCARA),',
'                            PERSONA_FISICA =:P455_PERSONA_FISICA,',
'                            ABREVIATURA = UPPER(:P455_ABREVIATURA)',
'                        WHERE ROWID = :P455_EDITAR;',
'         end if;',
'        ',
'',
'    EXCEPTION',
'        when others then',
'                    apex_debug.error(sqlerrm);',
'END;'))
,p_attribute_02=>'P455_EDITAR,P455_COD_IDENT_2,P455_MASCARA,P455_DESCRIPCION,P455_PERSONA_FISICA,P455_ABREVIATURA'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(134408453688800505)
,p_event_id=>wwv_flow_imp.id(134408130413800502)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(134149511046715305)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(134408209300800503)
,p_event_id=>wwv_flow_imp.id(134408130413800502)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(134150317493715313)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(134149154339715301)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_INIT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P455_COD_MODULO := NVL(''BS'', :P_COD_MODULO);',
':P455_NOM_EMPRESA := NVL(:P_NOM_EMPRESA,''1'');',
':P455_COD_USUARIO := NVL(:P_COD_USUARIO,:APP_USER); ',
''))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(134409090249800511)
,p_process_sequence=>20
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'PR_CLEAR'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
);
wwv_flow_imp.component_end;
end;
/
