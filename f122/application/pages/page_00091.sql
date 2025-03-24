prompt --application/pages/page_00091
begin
--   Manifest
--     PAGE: 00091
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
 p_id=>91
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Mantenimiento de seguros por persona - BSSEGPER'
,p_alias=>'BSSEGPER'
,p_step_title=>'Mantenimiento de seguros por persona - BSSEGPER'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'OSCARGO'
,p_last_upd_yyyymmddhh24miss=>'20221125113116'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(23558251283776342)
,p_plug_name=>'Mantenimiento de seguros por persona - BSSEGPER'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(23558591228776345)
,p_plug_name=>'P91 - REPORTE'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT   ',
'        seq_id p_id, ',
'        c002 COMPANIA_ASEGURADORA, ',
'        c003 NOM_BENEFICIARIO,',
'        c004 RIESGOS_CUBIERTOS,',
'        d001 FEC_VENCIMIENTO,',
'        n001 MONTO_SEGURO,',
'        NULL EDITAR,',
'        NULL ELIMINAR',
'FROM APEX_COLLECTIONS',
'WHERE COLLECTION_NAME = ''PERSONA_SEG''',
'AND nvl(c020, ''O'') <> ''B'';',
'',
'                    ',
'                                '))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'P91 - REPORTE'
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
 p_id=>wwv_flow_imp.id(25311195198472315)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_search_bar=>'N'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_enable_mail_download=>'Y'
,p_owner=>'EMILIANOP'
,p_internal_uid=>25311195198472315
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(25311357390472317)
,p_db_column_name=>'COMPANIA_ASEGURADORA'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>unistr('Compa\00F1ia Aseguradora')
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(25311433050472318)
,p_db_column_name=>'NOM_BENEFICIARIO'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Beneficiario'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(25311541592472319)
,p_db_column_name=>'RIESGOS_CUBIERTOS'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Riesgos Cubiertos'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(25311651736472320)
,p_db_column_name=>'FEC_VENCIMIENTO'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Fec. Vencimiento'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(25311759938472321)
,p_db_column_name=>'MONTO_SEGURO'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Monto'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(29570142290340724)
,p_db_column_name=>'P_ID'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'P Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(29570385357340726)
,p_db_column_name=>'EDITAR'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Editar'
,p_column_link=>'javascript:$s(''P91_SEQ_ID_EDITAR'',#P_ID#);'
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
 p_id=>wwv_flow_imp.id(29570207167340725)
,p_db_column_name=>'ELIMINAR'
,p_display_order=>120
,p_column_identifier=>'J'
,p_column_label=>'Eliminar'
,p_column_link=>'javascript:$s(''P91_SEQ_ID_ELIMINAR'',#P_ID#);'
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
''))
,p_display_condition2=>'PLSQL'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(25342486038046012)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'253425'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>5
,p_report_columns=>'COMPANIA_ASEGURADORA:NOM_BENEFICIARIO:RIESGOS_CUBIERTOS:FEC_VENCIMIENTO:MONTO_SEGURO:EDITAR:ELIMINAR:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(29570405086340727)
,p_plug_name=>'AGREGAR/MODIFICAR'
,p_region_template_options=>'#DEFAULT#:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(38036648366336031)
,p_plug_name=>'VARIABLES AUXILIARES'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(29571240778340735)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_imp.id(29570405086340727)
,p_button_name=>'P91_CANCELAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Cancelar'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(29571089600340733)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(29570405086340727)
,p_button_name=>'P91_BOTON_ACEPTAR_AGREGAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Aceptar'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(29571113435340734)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_imp.id(29570405086340727)
,p_button_name=>'P91_BOTON_ACEPTAR_EDITAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Aceptar'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(29569553074340718)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(23558591228776345)
,p_button_name=>'P91_BOTON_AGREGAR'
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
 p_id=>wwv_flow_imp.id(29569686656340719)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(23558251283776342)
,p_button_name=>'P91_BOTON_CONFIRMAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Confirmar'
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
 p_id=>wwv_flow_imp.id(23558314799776343)
,p_name=>'P91_COD_PERSONA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(23558251283776342)
,p_prompt=>'Persona'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_PERSONAS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cod_persona || '' - '' || ltrim( rtrim( nvl( nombre, nomb_fantasia ) ) ) d, cod_persona r ',
'from personas',
'order by 1;'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(23558499204776344)
,p_name=>'P91_T_PERSONA'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(23558251283776342)
,p_prompt=>'T. persona'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>unistr('STATIC:F\00EDsica;S,Juridica;N')
,p_begin_on_new_line=>'N'
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_imp.id(40186463825263678)
,p_item_template_options=>'#DEFAULT#:margin-top-sm:margin-bottom-sm:margin-left-sm:margin-right-sm'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'2'
,p_attribute_02=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(29569793385340720)
,p_name=>'P91_SEQ_ID_ELIMINAR'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(23558251283776342)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(29569899627340721)
,p_name=>'P91_SEQ_ID_EDITAR'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(23558251283776342)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(29570534605340728)
,p_name=>'P91_COMPANIA_ASEGURADORA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(29570405086340727)
,p_prompt=>unistr('Compa\00F1ia Aseguradora')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186875167263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(29570616139340729)
,p_name=>'P91_NOM_BENEFICIARIO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(29570405086340727)
,p_prompt=>'Beneficiario'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186875167263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(29570757274340730)
,p_name=>'P91_RIESGOS_CUBIERTOS'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(29570405086340727)
,p_prompt=>'Riesgos Cubiertos'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186875167263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(29570896964340731)
,p_name=>'P91_FEC_VENCIMIENTO'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(29570405086340727)
,p_prompt=>'Fec. Vencimiento'
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186875167263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(29570967193340732)
,p_name=>'P91_MONTO_SEGURO'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(29570405086340727)
,p_prompt=>'Monto'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186875167263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(38036783430336032)
,p_name=>'P91_ALERT'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(38036648366336031)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(29571393195340736)
,p_name=>'DA_OCULTAR_BOTON_ACEPTAR'
,p_event_sequence=>10
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(29571464209340737)
,p_event_id=>wwv_flow_imp.id(29571393195340736)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(29571089600340733)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(29571553636340738)
,p_event_id=>wwv_flow_imp.id(29571393195340736)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(29571113435340734)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(29571679567340739)
,p_name=>'DA_CERRAR_REGION'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(29571240778340735)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(29571791703340740)
,p_event_id=>wwv_flow_imp.id(29571679567340739)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(29570405086340727)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(29571969114340742)
,p_name=>'DA_AGREGAR_MIEMBRO_COLLECCION'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(29569553074340718)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(29572089234340743)
,p_event_id=>wwv_flow_imp.id(29571969114340742)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P91_COMPANIA_ASEGURADORA,P91_NOM_BENEFICIARIO,P91_RIESGOS_CUBIERTOS,P91_FEC_VENCIMIENTO,P91_MONTO_SEGURO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(29572293258340745)
,p_event_id=>wwv_flow_imp.id(29571969114340742)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(29571089600340733)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(29572389539340746)
,p_event_id=>wwv_flow_imp.id(29571969114340742)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(29571113435340734)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(29572163900340744)
,p_event_id=>wwv_flow_imp.id(29571969114340742)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(29570405086340727)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(29572474380340747)
,p_name=>'DA_AGREGAR_MIEMBRO_COL'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(29571089600340733)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(29572535325340748)
,p_event_id=>wwv_flow_imp.id(29572474380340747)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'IF  :P91_COD_PERSONA IS NULL OR :P91_COMPANIA_ASEGURADORA IS NULL OR :P91_NOM_BENEFICIARIO IS NULL OR ',
'    :P91_RIESGOS_CUBIERTOS IS NULL OR :P91_RIESGOS_CUBIERTOS IS NULL OR :P91_FEC_VENCIMIENTO IS NULL OR',
'    :P91_MONTO_SEGURO IS NULL THEN',
'    ',
'        :P91_ALERT := 1;',
'ELSE ',
'        :P91_ALERT := 0;',
'        BSSEGPER.pr_agregar_miembro_collection (    :P91_COD_PERSONA,',
'                                                    :P91_COMPANIA_ASEGURADORA,',
'                                                    :P91_NOM_BENEFICIARIO,',
'                                                    :P91_RIESGOS_CUBIERTOS,',
'                                                    :P91_FEC_VENCIMIENTO,',
'                                                    :P91_MONTO_SEGURO);    ',
'END IF;',
'',
'EXCEPTION',
'',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(sqlerrm);',
'',
'',
'END;',
''))
,p_attribute_02=>'P91_COD_PERSONA,P91_COMPANIA_ASEGURADORA,P91_NOM_BENEFICIARIO,P91_RIESGOS_CUBIERTOS,P91_FEC_VENCIMIENTO,P91_MONTO_SEGURO,P91_ALERT'
,p_attribute_03=>'P91_ALERT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(38036806326336033)
,p_event_id=>wwv_flow_imp.id(29572474380340747)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>unistr('Compruebe que ninguno de los campos requeridos esta vac\00EDo.')
,p_attribute_02=>'Comprobar campos'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P91_ALERT'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(29572630980340749)
,p_event_id=>wwv_flow_imp.id(29572474380340747)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(23558591228776345)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P91_ALERT'
,p_client_condition_expression=>'0'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(29572724130340750)
,p_event_id=>wwv_flow_imp.id(29572474380340747)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(29570405086340727)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P91_ALERT'
,p_client_condition_expression=>'0'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(30047489137197202)
,p_name=>'DA_EDITAR_MIEMBRO_COL'
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(29571113435340734)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30047532062197203)
,p_event_id=>wwv_flow_imp.id(30047489137197202)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'IF  :P91_COD_PERSONA IS NULL OR :P91_COMPANIA_ASEGURADORA IS NULL OR :P91_NOM_BENEFICIARIO IS NULL OR ',
'    :P91_RIESGOS_CUBIERTOS IS NULL OR :P91_RIESGOS_CUBIERTOS IS NULL OR :P91_FEC_VENCIMIENTO IS NULL OR',
'    :P91_MONTO_SEGURO IS NULL THEN',
'    ',
'        :P91_ALERT := 1;',
'ELSE ',
'        :P91_ALERT := 0;',
'        BSSEGPER.pr_modificar_miembro(          :P91_SEQ_ID_EDITAR,',
'                                                :P91_COD_PERSONA,',
'                                                :P91_COMPANIA_ASEGURADORA,',
'                                                :P91_NOM_BENEFICIARIO,',
'                                                :P91_RIESGOS_CUBIERTOS,',
'                                                :P91_FEC_VENCIMIENTO,',
'                                                :P91_MONTO_SEGURO);  ',
'END IF;',
'',
'EXCEPTION',
'',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(sqlerrm);',
'',
'',
'END;',
''))
,p_attribute_02=>'P91_SEQ_ID_EDITAR,P91_COD_PERSONA,P91_COMPANIA_ASEGURADORA,P91_NOM_BENEFICIARIO,P91_RIESGOS_CUBIERTOS,P91_FEC_VENCIMIENTO,P91_MONTO_SEGURO,P91_ALERT'
,p_attribute_03=>'P91_ALERT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(38036994730336034)
,p_event_id=>wwv_flow_imp.id(30047489137197202)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>unistr('Compruebe que ninguno de los campos requeridos esta vac\00EDo.')
,p_attribute_02=>'Comprobar campos'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P91_ALERT'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(38037089130336035)
,p_event_id=>wwv_flow_imp.id(30047489137197202)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(23558591228776345)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P91_ALERT'
,p_client_condition_expression=>'0'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(38037103071336036)
,p_event_id=>wwv_flow_imp.id(30047489137197202)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(29570405086340727)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P91_ALERT'
,p_client_condition_expression=>'0'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(30048028183197208)
,p_name=>'DA_MODIFICAR_MIEMBRO'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P91_SEQ_ID_EDITAR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30048107012197209)
,p_event_id=>wwv_flow_imp.id(30048028183197208)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN   ',
'',
'    SELECT   ',
'            c002,',
'            c003,',
'            c004,',
'            d001,',
'            n001',
'',
'    INTO    :P91_COMPANIA_ASEGURADORA,',
'            :P91_NOM_BENEFICIARIO,',
'            :P91_RIESGOS_CUBIERTOS,',
'            :P91_FEC_VENCIMIENTO,',
'            :P91_MONTO_SEGURO',
'',
'    FROM APEX_COLLECTIONS',
'    WHERE COLLECTION_NAME = ''PERSONA_SEG''',
'    AND SEQ_ID = :P91_SEQ_ID_EDITAR;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(sqlerrm);',
'',
'',
'',
'END;'))
,p_attribute_02=>'P91_SEQ_ID_EDITAR'
,p_attribute_03=>'P91_COMPANIA_ASEGURADORA,P91_NOM_BENEFICIARIO,P91_RIESGOS_CUBIERTOS,P91_FEC_VENCIMIENTO,P91_MONTO_SEGURO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30048217664197210)
,p_event_id=>wwv_flow_imp.id(30048028183197208)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(29571089600340733)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30048377064197211)
,p_event_id=>wwv_flow_imp.id(30048028183197208)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(29571113435340734)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30048463275197212)
,p_event_id=>wwv_flow_imp.id(30048028183197208)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(29570405086340727)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(30048589423197213)
,p_name=>'DA_ELIMINAR_MIEMBRO'
,p_event_sequence=>70
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P91_SEQ_ID_ELIMINAR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30048631206197214)
,p_event_id=>wwv_flow_imp.id(30048589423197213)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\00BFDesea eliminar el registro?')
,p_attribute_02=>unistr('\00BFDesea eliminar el registro?')
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30048707924197215)
,p_event_id=>wwv_flow_imp.id(30048589423197213)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'BSSEGPER.pr_borrar_miembro_collection( :P91_SEQ_ID_ELIMINAR );',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(sqlerrm);',
'',
'END;'))
,p_attribute_02=>'P91_SEQ_ID_ELIMINAR'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30048888143197216)
,p_event_id=>wwv_flow_imp.id(30048589423197213)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(23558591228776345)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(30048931942197217)
,p_name=>'DA_CONFIRMAR_DATOS'
,p_event_sequence=>80
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(29569686656340719)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30049093950197218)
,p_event_id=>wwv_flow_imp.id(30048931942197217)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\00BFDesea confirmar los cambios?')
,p_attribute_02=>unistr('\00BFDesea confirmar los cambios?')
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30049309493197221)
,p_event_id=>wwv_flow_imp.id(30048931942197217)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_01=>'CONFIRMAR'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30049508743197223)
,p_event_id=>wwv_flow_imp.id(30048931942197217)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(23558591228776345)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(29569413723340717)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_INIT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'',
'    V_ES_FISICA VARCHAR(15);',
'',
'BEGIN',
'',
'    :P_COD_MODULO := ''BS'';',
'',
'    --:P91_COD_PERSONA := ''11328'';',
'    --:P91_COD_PERSONA := ''3383'';',
'    --:P91_COD_PERSONA := ''11520'';',
'    ',
'    ',
'    BSSEGPER.pr_crear_collection (:P91_COD_PERSONA);',
'',
'    SELECT ES_FISICA INTO V_ES_FISICA ',
'    FROM PERSONAS',
'    WHERE COD_PERSONA = :P91_COD_PERSONA;',
'    IF V_ES_FISICA = ''S'' THEN',
'       :P91_T_PERSONA := ''S'';',
'    ELSE',
'        :P91_T_PERSONA := ''N'';',
'    END IF;',
'',
'    --APEX_DEBUG.ERROR(:P129_T_PERSONA);',
'',
'EXCEPTION',
'',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(sqlerrm);',
'',
'END;',
''))
,p_process_clob_language=>'PLSQL'
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
 p_id=>wwv_flow_imp.id(30049442980197222)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'DA_CONFIRMAR_DATOS_BD'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    BSSEGPER.pr_confirmar_accion(:P91_COD_PERSONA);',
'',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(sqlerrm);',
'',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>unistr('\00A1Ups! Ha ocurrido un error al confirmar las operaciones.')
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CONFIRMAR'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
,p_process_success_message=>unistr('\00A1Los datos se guardaron exitosamente!')
);
null;
wwv_flow_imp.component_end;
end;
/
