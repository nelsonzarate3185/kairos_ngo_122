prompt --application/pages/page_00397
begin
--   Manifest
--     PAGE: 00397
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
 p_id=>397
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>unistr('Traslado/Recepci\00F3n de Documentos - CCCUSDOC')
,p_alias=>unistr('TRASLADO-RECEPCI\00D3N-DE-DOCUMENTOS-CCCUSDOC')
,p_step_title=>unistr('Traslado/Recepci\00F3n de Documentos - CCCUSDOC')
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'JASIS'
,p_last_upd_yyyymmddhh24miss=>'20230228125845'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(112222558830227418)
,p_plug_name=>'Movimiento de documentos'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>990
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    NRO_PLANILLA,',
'    FEC_CARGA,',
'    COD_CUSTODIO_ENT,',
'    COD_CUSTODIO_SAL,    ',
'   APEX_ITEM.CHECKBOX (p_idx  => 1 ,',
'                    p_value       => IND_RECEPCION,',
'                     p_attributes  => (case IND_RECEPCION',
'                                       when ''S'' then ''checked ''',
'                                      else null',
'                                     end )',
' )as IND_RECEPCION,',
'    FEC_RECEPCION',
'FROM CC_PLAN_CUSTODIOS_CAB ;'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Movimiento de documentos'
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
 p_id=>wwv_flow_imp.id(112222675600227419)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'JUANASIS'
,p_internal_uid=>112222675600227419
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(112222704274227420)
,p_db_column_name=>'NRO_PLANILLA'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Nro Planilla'
,p_column_link=>'f?p=&APP_ID.:375:&SESSION.::&DEBUG.:RR,375:P375_P_NRO_PLANILLA:#NRO_PLANILLA#'
,p_column_linktext=>'#NRO_PLANILLA#'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(112222847584227421)
,p_db_column_name=>'COD_CUSTODIO_ENT'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Custodio Destino'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(30820581861995845)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(112222977034227422)
,p_db_column_name=>'COD_CUSTODIO_SAL'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Custodio Origen'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(30820581861995845)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(112223043295227423)
,p_db_column_name=>'FEC_CARGA'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Fecha Carga'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(112223159877227424)
,p_db_column_name=>'IND_RECEPCION'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Ind Recepcion'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(112223298847227425)
,p_db_column_name=>'FEC_RECEPCION'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Fecha Recepcion'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(112750951955729098)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1127510'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'NRO_PLANILLA:COD_CUSTODIO_SAL:COD_CUSTODIO_ENT:FEC_CARGA:IND_RECEPCION:FEC_RECEPCION:'
,p_sort_column_1=>'NRO_PLANILLA'
,p_sort_direction_1=>'DESC'
,p_sort_column_2=>'0'
,p_sort_direction_2=>'ASC'
,p_sort_column_3=>'0'
,p_sort_direction_3=>'ASC'
,p_sort_column_4=>'0'
,p_sort_direction_4=>'ASC'
,p_sort_column_5=>'0'
,p_sort_direction_5=>'ASC'
,p_sort_column_6=>'0'
,p_sort_direction_6=>'ASC'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(119009675002441636)
,p_report_id=>wwv_flow_imp.id(112750951955729098)
,p_name=>'El texto de la fila contiene ''334624'''
,p_condition_type=>'SEARCH'
,p_allow_delete=>'Y'
,p_expr=>'334624'
,p_enabled=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(112223396860227426)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(112222558830227418)
,p_button_name=>'bt_agregar'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Agregar'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(112223850110227431)
,p_name=>'P397_URL'
,p_item_sequence=>1000
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(112223641036227429)
,p_name=>'DA_IR_PAG_375'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(112223396860227426)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(112223784846227430)
,p_event_id=>wwv_flow_imp.id(112223641036227429)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT APEX_PAGE.GET_URL (  p_page   => 375,',
'                            p_items  => ''P375_P_NRO_PLANILLA'',',
'                            p_values => (NULL)) f_url_1',
'INTO :P397_URL',
'FROM DUAL;'))
,p_attribute_03=>'P397_URL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(112223916790227432)
,p_event_id=>wwv_flow_imp.id(112223641036227429)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var url = apex.item("P397_URL").getValue();',
'',
'apex.navigation.redirect (url);'))
);
wwv_flow_imp.component_end;
end;
/
