prompt --application/pages/page_00268
begin
--   Manifest
--     PAGE: 00268
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
 p_id=>268
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'BSPROG - PROGRAMAS'
,p_alias=>'BSPROG-PROGRAMAS'
,p_step_title=>'BSPROG - PROGRAMAS'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'24'
,p_last_updated_by=>'ETRINIDAD'
,p_last_upd_yyyymmddhh24miss=>'20230316164801'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(64532149469680558)
,p_plug_name=>'Programas'
,p_region_template_options=>'t-BreadcrumbRegion--showBreadcrumb:t-BreadcrumbRegion--compactTitle:t-BreadcrumbRegion--useRegionTitle'
,p_plug_template=>wwv_flow_imp.id(40134615190263663)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(65141863816030106)
,p_plug_name=>'Listados de Programas'
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_source_type=>'NATIVE_DISPLAY_SELECTOR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'STANDARD'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(65142048833030108)
,p_plug_name=>'Paginas Asignadas'
,p_parent_plug_id=>wwv_flow_imp.id(65141863816030106)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(65142170932030109)
,p_plug_name=>'bs_Programas'
,p_parent_plug_id=>wwv_flow_imp.id(65142048833030108)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ROWID,',
'       ID_PROGRAMA,',
'       COD_FORM,',
'       NOM_FORM,',
'       ID_APP_APEX,',
'       NUM_PAGINA_APEX,',
'       NOM_APEX,',
'       OBSERVACION,',
'       USER_CREACION,',
'       FECHA_CREACION,',
'       COD_MODULO,',
'       COD_TIPO_PROGRAMA,',
'       COD_EMPRESA,',
'       PARAMETROS_APEX',
'  from BS_PROGRAMAS'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'bs_Programas'
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
 p_id=>wwv_flow_imp.id(65142284521030110)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:269:&SESSION.::&DEBUG.::P269_ROWID:#ROWID#'
,p_detail_link_text=>'<span aria-label="Editar"  width="25" height="25"><span class="fa fa-edit" aria-hidden="true" title="Editar"></span></span>'
,p_owner=>'ETRINIDAD'
,p_internal_uid=>65142284521030110
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(65142385185030111)
,p_db_column_name=>'ID_PROGRAMA'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Id Programa'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(65142445040030112)
,p_db_column_name=>'COD_FORM'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Form'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(65142598778030113)
,p_db_column_name=>'NOM_FORM'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Nombre Form'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(65142671500030114)
,p_db_column_name=>'ID_APP_APEX'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Id App Apex'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(65142747030030115)
,p_db_column_name=>'NUM_PAGINA_APEX'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Pagina Apex'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(65142841556030116)
,p_db_column_name=>'NOM_APEX'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Nombre Apex'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(65142962566030117)
,p_db_column_name=>'OBSERVACION'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Observacion'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(65143016027030118)
,p_db_column_name=>'USER_CREACION'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Usuario Creacion'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(65143141836030119)
,p_db_column_name=>'FECHA_CREACION'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Fecha Creacion'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(65143288977030120)
,p_db_column_name=>'COD_MODULO'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Cod Modulo'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(65143380374030121)
,p_db_column_name=>'COD_TIPO_PROGRAMA'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Cod Tipo Programa'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(65143468010030122)
,p_db_column_name=>'COD_EMPRESA'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Cod Empresa'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(65143591319030123)
,p_db_column_name=>'ROWID'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Rowid'
,p_column_type=>'OTHER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(66710912560943633)
,p_db_column_name=>'PARAMETROS_APEX'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Parametros Apex'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(65178616422087556)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'651787'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>100
,p_report_columns=>'COD_FORM:NOM_FORM:ID_APP_APEX:NUM_PAGINA_APEX:NOM_APEX:PARAMETROS_APEX:OBSERVACION:USER_CREACION:FECHA_CREACION:'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(65145767078030145)
,p_name=>'No Asignados'
,p_parent_plug_id=>wwv_flow_imp.id(65141863816030106)
,p_template=>wwv_flow_imp.id(40123385688263660)
,p_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:margin-top-md'
,p_component_template_options=>'#DEFAULT#:u-colors:t-Cards--featured t-Cards--block force-fa-lg:t-Cards--displayInitials:t-Cards--5cols:t-Cards--animColorFill'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select VWORKSPACE,',
'       VWORKSPACE_DISPLAY_NAME,',
'       VAPPLICATION_ID,',
'       VAPPLICATION_NAME,',
'       VPAGE_ID CARD_INITIALS,',
'       VPAGE_NAME CARD_TITLE,',
'       VPAGE_TITLE,',
'       VPAGE_MODE,',
'       VUSER_INTERFACE_ID,',
'       to_char(VCREATED_ON,''DD-MM-YYYY HH24:MI:SS'') CARD_SUBTEXT,',
'       VCREATED_BY CARD_TEXT,',
'       VLINK CARD_LINK',
'  from V_APEX_PAGE ',
'   WHERE VPAGE_ID NOT IN (SELECT B.NUM_PAGINA_APEX FROM BS_PROGRAMAS B)',
'   order by VPAGE_ID'))
,p_ajax_enabled=>'Y'
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
 p_id=>wwv_flow_imp.id(66708609195943610)
,p_query_column_id=>1
,p_column_alias=>'VWORKSPACE'
,p_column_display_sequence=>10
,p_column_heading=>'Vworkspace'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(66708760048943611)
,p_query_column_id=>2
,p_column_alias=>'VWORKSPACE_DISPLAY_NAME'
,p_column_display_sequence=>20
,p_column_heading=>'Vworkspace Display Name'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(66708857109943612)
,p_query_column_id=>3
,p_column_alias=>'VAPPLICATION_ID'
,p_column_display_sequence=>30
,p_column_heading=>'Vapplication Id'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(66708903189943613)
,p_query_column_id=>4
,p_column_alias=>'VAPPLICATION_NAME'
,p_column_display_sequence=>40
,p_column_heading=>'Vapplication Name'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(66709836590943622)
,p_query_column_id=>5
,p_column_alias=>'CARD_INITIALS'
,p_column_display_sequence=>130
,p_column_heading=>'Card Initials'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(66710026040943624)
,p_query_column_id=>6
,p_column_alias=>'CARD_TITLE'
,p_column_display_sequence=>140
,p_column_heading=>'Card Title'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(66709294302943616)
,p_query_column_id=>7
,p_column_alias=>'VPAGE_TITLE'
,p_column_display_sequence=>70
,p_column_heading=>'Vpage Title'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(66709340387943617)
,p_query_column_id=>8
,p_column_alias=>'VPAGE_MODE'
,p_column_display_sequence=>80
,p_column_heading=>'Vpage Mode'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(66709477421943618)
,p_query_column_id=>9
,p_column_alias=>'VUSER_INTERFACE_ID'
,p_column_display_sequence=>90
,p_column_heading=>'Vuser Interface Id'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(66710255711943626)
,p_query_column_id=>10
,p_column_alias=>'CARD_SUBTEXT'
,p_column_display_sequence=>160
,p_column_heading=>'Card Subtext'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(66710136877943625)
,p_query_column_id=>11
,p_column_alias=>'CARD_TEXT'
,p_column_display_sequence=>150
,p_column_heading=>'Card Text'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(66710361014943627)
,p_query_column_id=>12
,p_column_alias=>'CARD_LINK'
,p_column_display_sequence=>170
,p_column_heading=>'Card Link'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(123959638692528330)
,p_plug_name=>'New'
,p_parent_plug_id=>wwv_flow_imp.id(65141863816030106)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>10
,p_plug_source_type=>'NATIVE_SMART_FILTERS'
,p_filtered_region_id=>wwv_flow_imp.id(65145767078030145)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_02=>'N'
,p_attribute_03=>'10000'
,p_attribute_04=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(123959733163528331)
,p_name=>'P268_SEARCH'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(123959638692528330)
,p_prompt=>'Search'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_SEARCH'
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'ROW'
,p_attribute_04=>'N'
,p_fc_show_chart=>false
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(66710515149943629)
,p_name=>'Cerrar_No_Asignado'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(65145767078030145)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(66710616068943630)
,p_event_id=>wwv_flow_imp.id(66710515149943629)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(65145767078030145)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(66710757464943631)
,p_name=>'Cerrar_Asignados'
,p_event_sequence=>20
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(65142170932030109)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(66710843699943632)
,p_event_id=>wwv_flow_imp.id(66710757464943631)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(65142170932030109)
);
wwv_flow_imp.component_end;
end;
/
