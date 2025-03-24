prompt --application/pages/page_00619
begin
--   Manifest
--     PAGE: 00619
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
 p_id=>619
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Listado de Embargos'
,p_alias=>'LISTADO-DE-EMBARGOS'
,p_step_title=>'Listado de Embargos'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#COL_FACT .a-IRR-table td {',
'    background-color:#dd5600; ',
'    color:#ffffff; ',
'    font-weight: bolder; ',
'}',
'',
'.a-IRR-controlsContainer{',
'    display:none;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'JUANASIS'
,p_last_upd_yyyymmddhh24miss=>'20230919085344'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(208526224400438013)
,p_plug_name=>'Listado de Embargos'
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>950
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(207175072068696926)
,p_name=>'Listado de Embargos'
,p_parent_plug_id=>wwv_flow_imp.id(208526224400438013)
,p_template=>wwv_flow_imp.id(40125238939263661)
,p_display_sequence=>10
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--noBorder:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Cards--displaySubtitle:t-Cards--featured t-Cards--block force-fa-lg:t-Cards--cols:t-Cards--iconsRounded:t-Cards--animColorFill'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    nro_programa  "CARD_INITIALS",',
'    cod_empleado,',
'   ',
'    (case',
'        when saldo_cuotas > 0 then '' - Embargo en curso'' ',
'        else '' - Embargo cancelado''',
'     end)||'' - ''||observacion "CARD_TITLE",',
'    TO_NUMBER(monto_total) "CARD_SUBTITLE",',
'    origen "CARD_TEXT",',
'    calculo "CARD_SUBTEXT",  ',
'    saldo_cuotas',
'    ,(case',
'        when saldo_cuotas > 0 then '' - Embargo en curso'' ',
'        else '' - Embargo cancelado''',
'     end) estado',
'FROM',
'    v_desc_judiciales_wango',
'WHERE',
'    cod_empleado =  :P_COD_EMPLEADO',
'GROUP BY',
'    nro_programa,',
'    cod_empleado,',
'    observacion,',
'    monto_total,',
'    origen,',
'    calculo,',
'    saldo_cuotas'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P_COD_EMPLEADO'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(40141194770263665)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(208525856203438009)
,p_query_column_id=>1
,p_column_alias=>'CARD_INITIALS'
,p_column_display_sequence=>150
,p_column_heading=>'Card Initials'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(207176850405696944)
,p_query_column_id=>2
,p_column_alias=>'COD_EMPLEADO'
,p_column_display_sequence=>20
,p_column_heading=>'Cod Empleado'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(208525054991438001)
,p_query_column_id=>3
,p_column_alias=>'CARD_TITLE'
,p_column_display_sequence=>90
,p_column_heading=>'Card Title'
,p_use_as_row_header=>'N'
,p_column_link=>'javascript:$s(''P619_NRO_PROGRAMA'',''#CARD_INITIALS#'');'
,p_column_linktext=>'#CARD_TITLE#'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(208526670663438017)
,p_query_column_id=>4
,p_column_alias=>'CARD_SUBTITLE'
,p_column_display_sequence=>190
,p_column_heading=>'Card Subtitle'
,p_use_as_row_header=>'N'
,p_column_format=>'999G999G999G999G999G999G990'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(208525205460438003)
,p_query_column_id=>5
,p_column_alias=>'CARD_TEXT'
,p_column_display_sequence=>110
,p_column_heading=>'Card Text'
,p_use_as_row_header=>'N'
,p_column_format=>'FML999G999G999G999G990D00'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(208525995181438010)
,p_query_column_id=>6
,p_column_alias=>'CARD_SUBTEXT'
,p_column_display_sequence=>160
,p_column_heading=>'Card Subtext'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(208526158795438012)
,p_query_column_id=>7
,p_column_alias=>'SALDO_CUOTAS'
,p_column_display_sequence=>180
,p_column_heading=>'Saldo Cuotas'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(207177480621696950)
,p_query_column_id=>8
,p_column_alias=>'ESTADO'
,p_column_display_sequence=>80
,p_column_heading=>'Estado'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(207175307220696929)
,p_plug_name=>'Resumen'
,p_parent_plug_id=>wwv_flow_imp.id(208526224400438013)
,p_region_template_options=>'#DEFAULT#:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>10
,p_plug_new_grid_row=>false
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(207175723361696933)
,p_plug_name=>'Detalle_por_nro_programa'
,p_parent_plug_id=>wwv_flow_imp.id(207175307220696929)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'                    a.nro_cuota,',
'                    a.monto_cuota,',
'                    a.saldo_cuotas,',
'                    a.observacion,',
'                    TO_CHAR(a.fec_vencimiento,''DD/MM/YYYY'') AS fec_vencimiento',
'                FROM',
'                    v_desc_judiciales_wango a',
'                WHERE',
'                    a.cod_empleado = :P_COD_EMPLEADO',
'                    AND   a.nro_programa = :P619_NRO_PROGRAMA',
'                    ORDER BY a.fec_vencimiento'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P619_NRO_PROGRAMA,P_COD_EMPLEADO'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Detalle_por_nro_programa'
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
 p_id=>wwv_flow_imp.id(208526984322438020)
,p_max_row_count=>'1000000'
,p_no_data_found_message=>'No se encontraron registros.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_search_bar=>'N'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_enable_mail_download=>'Y'
,p_owner=>'JUANASIS'
,p_internal_uid=>208526984322438020
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(208527093904438021)
,p_db_column_name=>'NRO_CUOTA'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Nro Cuota'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(208527160762438022)
,p_db_column_name=>'MONTO_CUOTA'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Monto Cuota'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(208527212147438023)
,p_db_column_name=>'SALDO_CUOTAS'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Saldo Cuotas'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(208527381333438024)
,p_db_column_name=>'OBSERVACION'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Observacion'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(208527414843438025)
,p_db_column_name=>'FEC_VENCIMIENTO'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Fec Vencimiento'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(208922875449829643)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'2089229'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'NRO_CUOTA:MONTO_CUOTA:SALDO_CUOTAS:OBSERVACION:FEC_VENCIMIENTO'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(207176425248696940)
,p_name=>'P619_NRO_PROGRAMA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(207175307220696929)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(208526391890438014)
,p_name=>'DA_NRO_PROGRAMA'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P619_NRO_PROGRAMA'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(208526586173438016)
,p_event_id=>wwv_flow_imp.id(208526391890438014)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P619_NRO_PROGRAMA'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(208526420907438015)
,p_event_id=>wwv_flow_imp.id(208526391890438014)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(207175723361696933)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(207175596477696931)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_INIT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'--:P_COD_EMPLEADO := ''863'';',
'null;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp.component_end;
end;
/
