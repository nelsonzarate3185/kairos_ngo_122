prompt --application/pages/page_00769
begin
--   Manifest
--     PAGE: 00769
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
 p_id=>769
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'STESTDEP'
,p_alias=>'STESTDEP'
,p_step_title=>unistr('Definici\00F3n de Estanter\00EDa - STESTDEP')
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function validarNoNulo(){',
'    var item_1 = apex.item("P769_COD_ESTANTE").getValue();',
'    var item_2 = apex.item("P769_DESC_ESTANTE").getValue();',
'    apex.message.clearErrors();',
'',
'    apex.item("P769_ERROR").setValue(''0'');    ',
'',
'    if (item_1 == ''''){',
'        apex.message.showErrors([{',
'                                type: apex.message.TYPE.ERROR,',
'                                location: "inline",',
'                                pageItem: "P769_COD_ESTANTE",',
unistr('                                message: "Debe ingresar un c\00F3digo de estante."'),
'                                }]); ',
'        apex.item("P769_ERROR").setValue(''1'');                            ',
'    } ',
'',
'    if (item_2 == ''''){',
'        apex.message.showErrors([{',
'                                type: apex.message.TYPE.ERROR,',
'                                location: "inline",',
'                                pageItem: "P769_DESC_ESTANTE",',
unistr('                                message: "Debe ingresar una descripci\00F3n de estante."'),
'                                }]);',
'        apex.item("P769_ERROR").setValue(''1'');                                                            ',
'    }',
'',
'} '))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'EMILIANOP'
,p_last_upd_yyyymmddhh24miss=>'20240821095647'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(377755058287261004)
,p_plug_name=>unistr('Definici\00F3n de Estanter\00EDa - STESTDEP')
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>990
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(377755114548261005)
,p_plug_name=>'Reporte'
,p_parent_plug_id=>wwv_flow_imp.id(377755058287261004)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT  COD_EMPRESA,',
'        COD_ESTANTE,',
'        DESC_ESTANTE,',
'        USUARIO_ALTA,',
'        FECHA_ALTA,',
'        ROWID ROW_ID,',
'        NULL EDITAR,',
'        NULL ELIMINAR',
'  FROM  ST_ESTANTES',
'  WHERE COD_EMPRESA = :P_COD_EMPRESA',
'  ORDER BY COD_ESTANTE ASC;'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Reporte'
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
 p_id=>wwv_flow_imp.id(377755274679261006)
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
,p_internal_uid=>377755274679261006
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(377755357467261007)
,p_db_column_name=>'COD_EMPRESA'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Cod Empresa'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(377755464365261008)
,p_db_column_name=>'COD_ESTANTE'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Estante'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(377755573805261009)
,p_db_column_name=>'DESC_ESTANTE'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>unistr('Descripci\00F3n Estante')
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(377755664564261010)
,p_db_column_name=>'USUARIO_ALTA'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Usuario Alta'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(377755753410261011)
,p_db_column_name=>'FECHA_ALTA'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Fecha Alta'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(377756027312261014)
,p_db_column_name=>'ROW_ID'
,p_display_order=>60
,p_column_identifier=>'F'
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
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(377756139195261015)
,p_db_column_name=>'EDITAR'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Editar'
,p_column_link=>'javascript:$s(''P769_ROW_ID_EDITAR'',''#ROW_ID#'');'
,p_column_linktext=>'<span aria-hidden="true" class="fa fa-edit"></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(377756251102261016)
,p_db_column_name=>'ELIMINAR'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Eliminar'
,p_column_link=>'javascript:$s(''P769_ROW_ID_ELIMINAR'',''#ROW_ID#'');'
,p_column_linktext=>'<span class="fa fa-trash" aria-hidden="true"></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(377776386040483239)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'3777764'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>10
,p_report_columns=>'COD_ESTANTE:DESC_ESTANTE:USUARIO_ALTA:FECHA_ALTA:EDITAR:ELIMINAR:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(377756351413261017)
,p_plug_name=>'Crear / Editar Estante'
,p_parent_plug_id=>wwv_flow_imp.id(377755114548261005)
,p_region_template_options=>'#DEFAULT#:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(377758810114261042)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_imp.id(377756351413261017)
,p_button_name=>'BT_ACEPTAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Aceptar'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(377758917446261043)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_imp.id(377756351413261017)
,p_button_name=>'BT_CERRAR_CR_ED_ESTANTE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Cerrar'
,p_button_position=>'DELETE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(377755997545261013)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(377755114548261005)
,p_button_name=>'BT_AGREGAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft:t-Button--gapBottom'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Agregar'
,p_button_position=>'TOP'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-plus-square-o'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(377754924923261003)
,p_name=>'P769_COD_MODULO'
,p_item_sequence=>940
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(377756482885261018)
,p_name=>'P769_ROW_ID_EDITAR'
,p_item_sequence=>970
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(377756504536261019)
,p_name=>'P769_ROW_ID_ELIMINAR'
,p_item_sequence=>980
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(377757188475261025)
,p_name=>'P769_MSG'
,p_item_sequence=>950
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(377758184720261035)
,p_name=>'P769_COD_ESTANTE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(377756351413261017)
,p_prompt=>unistr('C\00F3digo ')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>20
,p_field_template=>wwv_flow_imp.id(40186937130263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(377758295360261036)
,p_name=>'P769_DESC_ESTANTE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(377756351413261017)
,p_prompt=>unistr('Descripci\00F3n')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>60
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186937130263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(377758386767261037)
,p_name=>'P769_COD_EMPRESA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(377756351413261017)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(377758416115261038)
,p_name=>'P769_USUARIO_ALTA'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(377756351413261017)
,p_prompt=>'Usuario Alta'
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
 p_id=>wwv_flow_imp.id(377758510706261039)
,p_name=>'P769_FECHA_ALTA'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(377756351413261017)
,p_prompt=>'Fecha Alta'
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
 p_id=>wwv_flow_imp.id(377759149334261045)
,p_name=>'P769_IND_OPERACION'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(377756351413261017)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(377838131769388211)
,p_name=>'P769_ERROR'
,p_item_sequence=>960
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(377756659099261020)
,p_name=>'DA_ELIMINAR_ESTANTE'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P769_ROW_ID_ELIMINAR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(377756750624261021)
,p_event_id=>wwv_flow_imp.id(377756659099261020)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\00BFDesea eliminar el registro?')
,p_attribute_03=>'information'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(377757230276261026)
,p_event_id=>wwv_flow_imp.id(377756659099261020)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    STESTDEP.PR_ELIMINAR_ESTANTE (PI_ROW_ID    => :P769_ROW_ID_ELIMINAR,',
'                                  PO_MSG       => :P769_MSG);',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR (''Error en DA_ELIMINAR_ESTANTE - 01. '' || SQLERRM);',
'END;',
''))
,p_attribute_02=>'P769_ROW_ID_ELIMINAR'
,p_attribute_03=>'P769_MSG'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(377757364195261027)
,p_event_id=>wwv_flow_imp.id(377756659099261020)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(377755114548261005)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(377837819760388208)
,p_name=>'DA_VALIDAR_CAMPOS_NULOS'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(377758810114261042)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(377838006948388210)
,p_event_id=>wwv_flow_imp.id(377837819760388208)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'validarNoNulo();'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(377756892765261022)
,p_name=>'DA_EDITAR_ESTANTE'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P769_ROW_ID_EDITAR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(378486584565801402)
,p_event_id=>wwv_flow_imp.id(377756892765261022)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.message.clearErrors();'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(377837302494388203)
,p_event_id=>wwv_flow_imp.id(377756892765261022)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P769_COD_EMPRESA,P769_COD_ESTANTE,P769_DESC_ESTANTE,P769_USUARIO_ALTA,P769_FECHA_ALTA,P769_IND_OPERACION'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(377757546517261029)
,p_event_id=>wwv_flow_imp.id(377756892765261022)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(377756351413261017)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(377837248729388202)
,p_event_id=>wwv_flow_imp.id(377756892765261022)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    SELECT  COD_EMPRESA,',
'            COD_ESTANTE,',
'            DESC_ESTANTE,',
'            USUARIO_ALTA,',
'            FECHA_ALTA',
'',
'    INTO    :P769_COD_EMPRESA,',
'            :P769_COD_ESTANTE,',
'            :P769_DESC_ESTANTE,',
'            :P769_USUARIO_ALTA,',
'            :P769_FECHA_ALTA',
'',
'    FROM    ST_estantes',
'    WHERE   ROWID = :P769_ROW_ID_EDITAR;',
'',
'    :P769_IND_OPERACION := 0;  ',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR (''Error en DA_EDITAR_ESTANTE - 01. '' || SQLERRM);',
'END;',
'',
'',
''))
,p_attribute_02=>'P769_ROW_ID_EDITAR'
,p_attribute_03=>'P769_COD_EMPRESA,P769_COD_ESTANTE,P769_DESC_ESTANTE,P769_USUARIO_ALTA,P769_FECHA_ALTA,P769_IND_OPERACION'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(377757609935261030)
,p_name=>'DA_ABRIR_CREAR_ESTANTE'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(377755997545261013)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(378486446666801401)
,p_event_id=>wwv_flow_imp.id(377757609935261030)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.message.clearErrors();'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(377757875257261032)
,p_event_id=>wwv_flow_imp.id(377757609935261030)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(377756351413261017)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(377758627941261040)
,p_event_id=>wwv_flow_imp.id(377757609935261030)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P769_COD_EMPRESA,P769_COD_ESTANTE,P769_DESC_ESTANTE,P769_USUARIO_ALTA,P769_FECHA_ALTA,P769_IND_OPERACION'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(377758737749261041)
,p_event_id=>wwv_flow_imp.id(377757609935261030)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    :P769_COD_EMPRESA   := :P_COD_EMPRESA;',
'    :P769_FECHA_ALTA    := SYSDATE;',
'    :P769_USUARIO_ALTA  := :P_COD_USUARIO;',
'    :P769_IND_OPERACION := 1;  ',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR (''Error en DA_ABRIR_CREAR_ESTANTE - 01. '' || SQLERRM);',
'END;',
'',
''))
,p_attribute_03=>'P769_COD_EMPRESA,P769_FECHA_ALTA,P769_IND_OPERACION,P769_USUARIO_ALTA'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(377759280436261046)
,p_name=>'DA_GUARDAR_ESTANTE'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(377758810114261042)
,p_condition_element=>'P769_ERROR'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'0'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(377759390531261047)
,p_event_id=>wwv_flow_imp.id(377759280436261046)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    IF :P769_IND_OPERACION = 1 THEN',
'        STESTDEP.PR_GUARDAR_ESTANTE (PI_COD_EMPRESA    => :P769_COD_EMPRESA,',
'                                     PI_COD_ESTANTE    => :P769_COD_ESTANTE,',
'                                     PI_DESC_ESTANTE   => :P769_DESC_ESTANTE,',
'                                     PI_USUARIO_ALTA   => :P769_USUARIO_ALTA,',
'                                     PI_FECHA_ALTA     => :P769_FECHA_ALTA,',
'                                     PO_MSG            => :P769_MSG);',
'',
'    ELSIF :P769_IND_OPERACION = 0 THEN',
'',
'        STESTDEP.PR_EDITAR_ESTANTE (PI_ROW_ID         => :P769_ROW_ID_EDITAR,                                 ',
'                                    PI_COD_ESTANTE    => :P769_COD_ESTANTE,',
'                                    PI_DESC_ESTANTE   => :P769_DESC_ESTANTE,',
'                                    PO_MSG            => :P769_MSG);',
'    END IF;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR (''Error en DA_GUARDAR_ESTANTE - 01. '' || SQLERRM);',
'END;',
'',
'',
'',
''))
,p_attribute_02=>'P769_ROW_ID_EDITAR,P769_IND_OPERACION,P769_COD_EMPRESA,P769_COD_ESTANTE,P769_DESC_ESTANTE,P769_USUARIO_ALTA,P769_FECHA_ALTA'
,p_attribute_03=>'P769_MSG'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(377759667843261050)
,p_event_id=>wwv_flow_imp.id(377759280436261046)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(377755114548261005)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(377837160075388201)
,p_event_id=>wwv_flow_imp.id(377759280436261046)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(377756351413261017)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(377759414388261048)
,p_name=>'DA_MSG'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P769_MSG'
,p_condition_element=>'P769_MSG'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(377759574155261049)
,p_event_id=>wwv_flow_imp.id(377759414388261048)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P769_MSG.'
,p_attribute_03=>'information'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(377837461294388204)
,p_name=>'DA_CERRAR_CR_ED_ESTANTE'
,p_event_sequence=>60
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(377758917446261043)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(377837546356388205)
,p_event_id=>wwv_flow_imp.id(377837461294388204)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(377756351413261017)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(377754846459261002)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_INIT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    :P769_COD_MODULO := ''ST'';',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR (''Error en PR_INIT - 01.'' || SQLERRM);',
'END;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp.component_end;
end;
/
