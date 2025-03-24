prompt --application/pages/page_00423
begin
--   Manifest
--     PAGE: 00423
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
 p_id=>423
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'CALIPERE - Listado de Pedidos de Repuestos'
,p_alias=>'CALIPERE'
,p_step_title=>'CALIPERE'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'JUANSA'
,p_last_upd_yyyymmddhh24miss=>'20240712145948'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(125944789104116522)
,p_plug_name=>'Listado de Pedidos de Repuestos - CALIPERE'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>990
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(125947102243116546)
,p_plug_name=>'Salon'
,p_parent_plug_id=>wwv_flow_imp.id(125944789104116522)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select  seq_id P_ID,',
'        C001 nro_comprobante,                      ',
'        C002 salon,',
'        C003 estado	',
'FROM APEX_COLLECTIONS',
'WHERE COLLECTION_NAME = ''COL_SALON'';',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Salon'
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
 p_id=>wwv_flow_imp.id(126584872556454301)
,p_max_row_count=>'1000000'
,p_no_data_found_message=>'NO SE ENCONTRARON REGISTROS'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_search_bar=>'N'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_enable_mail_download=>'Y'
,p_owner=>'JUANASIS'
,p_internal_uid=>126584872556454301
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(126584980210454302)
,p_db_column_name=>'P_ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'P Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(126585017777454303)
,p_db_column_name=>'NRO_COMPROBANTE'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Nro Comprobante'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(126585180559454304)
,p_db_column_name=>'SALON'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'SALON'
,p_column_link=>'f?p=&APP_ID.:325:&SESSION.::&DEBUG.:CR,325:P325_NRO_COMPROBANTE:#NRO_COMPROBANTE#'
,p_column_linktext=>'#SALON#'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(126585259541454305)
,p_db_column_name=>'ESTADO'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Estado'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(126601363945441299)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1266014'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'SALON:'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(126673938416020528)
,p_report_id=>wwv_flow_imp.id(126601363945441299)
,p_name=>'CONFIRMADO'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'ESTADO'
,p_operator=>'='
,p_expr=>'CONFIRMADO'
,p_condition_sql=>' (case when ("ESTADO" = #APXWS_EXPR#) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# = ''CONFIRMADO''  '
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_row_bg_color=>'#d0f1cc'
,p_row_font_color=>'#000000'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(126674368514020528)
,p_report_id=>wwv_flow_imp.id(126601363945441299)
,p_name=>'EN PROCESO'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'ESTADO'
,p_operator=>'='
,p_expr=>'EN_PREPARACION'
,p_condition_sql=>' (case when ("ESTADO" = #APXWS_EXPR#) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# = ''EN_PREPARACION''  '
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_row_bg_color=>'#cce5ff'
,p_row_font_color=>'#000000'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(126674707929020527)
,p_report_id=>wwv_flow_imp.id(126601363945441299)
,p_name=>'SIN STOCK'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'ESTADO'
,p_operator=>'='
,p_expr=>'SIN_STOCK'
,p_condition_sql=>' (case when ("ESTADO" = #APXWS_EXPR#) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# = ''SIN_STOCK''  '
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_row_bg_color=>'#ffd6d2'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(125947220076116547)
,p_plug_name=>'Sta'
,p_parent_plug_id=>wwv_flow_imp.id(125944789104116522)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select  seq_id P_ID,',
'        C001 nro_comprobante,                      ',
'        C002 salon,',
'        C003 estado	',
'FROM APEX_COLLECTIONS',
'WHERE COLLECTION_NAME = ''COL_STA'';',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Sta'
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
 p_id=>wwv_flow_imp.id(126585362983454306)
,p_max_row_count=>'1000000'
,p_no_data_found_message=>'NO SE ENCONTRARON REGISTROS'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_search_bar=>'N'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_enable_mail_download=>'Y'
,p_owner=>'JUANASIS'
,p_internal_uid=>126585362983454306
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(126585481404454307)
,p_db_column_name=>'P_ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'P Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(126585541182454308)
,p_db_column_name=>'NRO_COMPROBANTE'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Nro Comprobante'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(126585630226454309)
,p_db_column_name=>'SALON'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'STA'
,p_column_link=>'f?p=&APP_ID.:325:&SESSION.::&DEBUG.:CR,325:P325_NRO_COMPROBANTE,P325_SER_COMPROBANTE:#NRO_COMPROBANTE#,W'
,p_column_linktext=>'#SALON#'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(126585761888454310)
,p_db_column_name=>'ESTADO'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Estado'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(126601921233441293)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1266020'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'SALON:'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(126699503076958989)
,p_report_id=>wwv_flow_imp.id(126601921233441293)
,p_name=>'CONFIRMADO'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'ESTADO'
,p_operator=>'='
,p_expr=>'CONFIRMADO'
,p_condition_sql=>' (case when ("ESTADO" = #APXWS_EXPR#) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# = ''CONFIRMADO''  '
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_row_bg_color=>'#d0f1cc'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(126699982896958989)
,p_report_id=>wwv_flow_imp.id(126601921233441293)
,p_name=>'EN PROCESO'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'ESTADO'
,p_operator=>'='
,p_expr=>'EN_PREPARACION'
,p_condition_sql=>' (case when ("ESTADO" = #APXWS_EXPR#) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# = ''EN_PREPARACION''  '
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_row_bg_color=>'#cce5ff'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(126700336312958989)
,p_report_id=>wwv_flow_imp.id(126601921233441293)
,p_name=>'PREPARADO'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'ESTADO'
,p_operator=>'='
,p_expr=>'PREPARADO'
,p_condition_sql=>' (case when ("ESTADO" = #APXWS_EXPR#) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# = ''PREPARADO''  '
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_row_bg_color=>'#fff5ce'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(126700742383958989)
,p_report_id=>wwv_flow_imp.id(126601921233441293)
,p_name=>'SIN STOCK'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'ESTADO'
,p_operator=>'='
,p_expr=>'SIN_STOCK'
,p_condition_sql=>' (case when ("ESTADO" = #APXWS_EXPR#) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# = ''SIN_STOCK''  '
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_row_bg_color=>'#ffd6d2'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(125947367007116548)
,p_plug_name=>'Stngo'
,p_parent_plug_id=>wwv_flow_imp.id(125944789104116522)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>30
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select  seq_id P_ID,',
'        C001 nro_comprobante,                      ',
'        C002 salon,',
'        C003 estado	',
'FROM APEX_COLLECTIONS',
'WHERE COLLECTION_NAME = ''COL_STNGO'';',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Stngo'
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
 p_id=>wwv_flow_imp.id(126585825630454311)
,p_max_row_count=>'1000000'
,p_no_data_found_message=>'NO SE ENCONTRARON REGISTROS'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_finder_drop_down=>'N'
,p_show_actions_menu=>'N'
,p_report_list_mode=>'NONE'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_enable_mail_download=>'Y'
,p_owner=>'JUANASIS'
,p_internal_uid=>126585825630454311
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(126585908157454312)
,p_db_column_name=>'P_ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'P Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(126586051149454313)
,p_db_column_name=>'NRO_COMPROBANTE'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Nro Comprobante'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(126586133306454314)
,p_db_column_name=>'SALON'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'STNGO'
,p_column_link=>'f?p=&APP_ID.:326:&SESSION.::&DEBUG.:CR,326:P326_NRO_COMPROBANTE:#NRO_COMPROBANTE#'
,p_column_linktext=>'#SALON#'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(126586230822454315)
,p_db_column_name=>'ESTADO'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Estado'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(126602671866441290)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1266027'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'SALON:'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(126740536528839187)
,p_report_id=>wwv_flow_imp.id(126602671866441290)
,p_name=>'CONFIRMADO'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'ESTADO'
,p_operator=>'='
,p_expr=>'CONFIRMADO'
,p_condition_sql=>' (case when ("ESTADO" = #APXWS_EXPR#) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# = ''CONFIRMADO''  '
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_row_bg_color=>'#d0f1cc'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(126740955115839187)
,p_report_id=>wwv_flow_imp.id(126602671866441290)
,p_name=>'EN PROCESO'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'ESTADO'
,p_operator=>'='
,p_expr=>'EN_PREPARACION'
,p_condition_sql=>' (case when ("ESTADO" = #APXWS_EXPR#) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# = ''EN_PREPARACION''  '
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_row_bg_color=>'#cce5ff'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(126741333872839186)
,p_report_id=>wwv_flow_imp.id(126602671866441290)
,p_name=>'PARCIAL'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'ESTADO'
,p_operator=>'='
,p_expr=>'PARCIAL'
,p_condition_sql=>' (case when ("ESTADO" = #APXWS_EXPR#) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# = ''PARCIAL''  '
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_row_bg_color=>'#5ed44d'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(126741703772839186)
,p_report_id=>wwv_flow_imp.id(126602671866441290)
,p_name=>'SIN STOCK'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'ESTADO'
,p_operator=>'='
,p_expr=>'SIN_STOCK'
,p_condition_sql=>' (case when ("ESTADO" = #APXWS_EXPR#) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# = ''SIN_STOCK''  '
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_row_bg_color=>'#ffd6d2'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(125944893531116523)
,p_plug_name=>'VARIABLES'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>1000
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(125944982634116524)
,p_plug_name=>'AGREGAR/EDITAR'
,p_region_template_options=>'#DEFAULT#:js-dialog-autoheight:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>1010
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(125947098931116545)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(125944789104116522)
,p_button_name=>'bt_Actualizar'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Actualizar'
,p_button_position=>'EDIT'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(125945153009116526)
,p_name=>'P423_LOGO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(125944893531116523)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(125945218370116527)
,p_name=>'P423_DERECHOS'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(125944893531116523)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(125945394653116528)
,p_name=>'P423_NRO_ORDEN'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(125944893531116523)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(125945454731116529)
,p_name=>'P423_COD_MODULO'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(125944893531116523)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(125945580924116530)
,p_name=>'P423_COD_ESTADO'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(125944893531116523)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(125945633281116531)
,p_name=>'P423_NOM_MODULO'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(125944893531116523)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(125945711225116532)
,p_name=>'P423_COD_FORMA'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(125944893531116523)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(125945894958116533)
,p_name=>'P423_NOM_FORMA'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(125944893531116523)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(125945908874116534)
,p_name=>'P423_COD_EMPRESA'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(125944893531116523)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(125946016061116535)
,p_name=>'P423_NOM_EMPRESA'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(125944893531116523)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(125946142384116536)
,p_name=>'P423_COD_SUCURSAL'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(125944893531116523)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(125946270065116537)
,p_name=>'P423_NOM_SUCURSAL'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(125944893531116523)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(125946323377116538)
,p_name=>'P423_COD_USUARIO'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(125944893531116523)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(125946433568116539)
,p_name=>'P423_COD_IDIOMA'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(125944893531116523)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(125946530000116540)
,p_name=>'P423_CODSISMENU'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(125944893531116523)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(125946643440116541)
,p_name=>'P423_IND_ENT_SAL'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(125944893531116523)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(125946793723116542)
,p_name=>'P423_DEPOSITO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(125944789104116522)
,p_prompt=>'Deposito'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT descripcion nombre, cod_sucursal codigo_rapido',
'FROM sucursales',
'where cod_empresa = :P_COD_EMPRESA',
'and cod_sucursal in (''101'',''1015'')',
'UNION ALL',
'SELECT ''TODOS'' nombre,''ZZ'' codigo_rapido',
'FROM DUAL',
'ORDER BY 1 ASC'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(125946859011116543)
,p_name=>'P423_NRO_OT'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(125947367007116548)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(125946948021116544)
,p_name=>'P423_RETIRA_DE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(125944789104116522)
,p_prompt=>'Retira de'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:ARTIGAS;ARTIGAS,CDE;CDE,SLO;SLO'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(125947412446116549)
,p_name=>'DA_ACTUALIZAR'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(125947098931116545)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(125947584641116550)
,p_event_id=>wwv_flow_imp.id(125947412446116549)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  ',
'		CALIPERE.pr_stngo(PI_RETIRA_DE => :P423_RETIRA_DE,',
'		PI_DEPOSITO => :P423_DEPOSITO,',
'		PI_NRO_OT =>  :P423_NRO_OT );',
'',
' ',
'-----------------------------------------------------',
'',
'	CALIPERE.pr_sta(PI_RETIRA_DE => :P423_RETIRA_DE,',
'	PI_DEPOSITO => :P423_DEPOSITO) ;',
'',
'',
'-----------------------------------------------------',
'',
'	CALIPERE.pr_salon(PI_RETIRA_DE => :P423_RETIRA_DE,',
'					PI_DEPOSITO => :P423_DEPOSITO,',
'					PI_COD_EMPRESA => :P423_COD_EMPRESA);',
'',
'',
'END;'))
,p_attribute_02=>'P423_RETIRA_DE,P423_DEPOSITO,P423_COD_EMPRESA,P423_NRO_OT'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(126586392525454316)
,p_event_id=>wwv_flow_imp.id(125947412446116549)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(125947102243116546)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(126586434252454317)
,p_event_id=>wwv_flow_imp.id(125947412446116549)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(125947220076116547)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(126586548316454318)
,p_event_id=>wwv_flow_imp.id(125947412446116549)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(125947367007116548)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(125945081943116525)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_INIT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'--pre form ',
':P423_COD_USUARIO := NVL(:P_COD_USUARIO,USER);',
':P423_COD_EMPRESA := NVL(:P_COD_EMPRESA,''1'');',
':P423_NOM_EMPRESA := NVL(:P_NOM_EMPRESA,NULL);',
':P423_COD_SUCURSAL := NVL(:P_COD_SUCURSAL,''01'');',
':P423_NOM_SUCURSAL := NVL(:P_NOM_SUCURSAL,NULL);',
':P423_COD_MODULO := NVL(:P_COD_MODULO,''CA'');'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp.component_end;
end;
/
