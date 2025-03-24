prompt --application/pages/page_00096
begin
--   Manifest
--     PAGE: 00096
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
 p_id=>96
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'BSMENSAJ - Bandeja de Mensajes'
,p_alias=>'BSMENSAJ-BANDEJA-DE-MENSAJES'
,p_step_title=>'BSMENSAJ - Bandeja de Mensajes'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.t-Region--accent1 > .t-Region-header {',
'    background-color: #003a85;',
'    color: #ffffff;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'JUANSA'
,p_last_upd_yyyymmddhh24miss=>'20240923083207'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(31541255847764697)
,p_plug_name=>'Mensajes '
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(31541418059764698)
,p_plug_name=>'Mensajes_Rep'
,p_region_name=>'ts'
,p_parent_plug_id=>wwv_flow_imp.id(31541255847764697)
,p_region_css_classes=>'header'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>30
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select C001 DESTINATARIO,',
'       C002 FECHA,',
'       C003 FORMA,',
'       C004 NOM_REMITENTE,',
'       C005 ASUNTO,',
'       C006 REMITENTE,',
'       C007 NUMERO,',
'       C008 CANTIDAD,',
'       C009 COD_EMPRESA,',
'       C010 TIP_MOV_CAJ,',
'       C011 TIPO_AUTORIZACION,',
'       C012 NOM_FORMA,',
'       C013 TIPO,',
'       ''S'' ACCESO,',
'       /*''f?p=122:''||C003||'':'' ||v(''APP_SESSION'')*/C014 LINK_APP',
'  from APEX_COLLECTIONS',
'  where COLLECTION_NAME = ''BSMENSAJ'''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Mensajes_Rep'
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
 p_id=>wwv_flow_imp.id(31541452618764699)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'ETRINIDAD'
,p_internal_uid=>31541452618764699
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(17042820316829584)
,p_db_column_name=>'DESTINATARIO'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Destinatario'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(17043206838829584)
,p_db_column_name=>'FORMA'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Forma'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(17043622501829584)
,p_db_column_name=>'NOM_REMITENTE'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Nombre'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(17044002069829585)
,p_db_column_name=>'ASUNTO'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Asunto'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(17044410511829585)
,p_db_column_name=>'REMITENTE'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Remitente'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(17044839473829585)
,p_db_column_name=>'COD_EMPRESA'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Cod Empresa'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(17045276881829585)
,p_db_column_name=>'TIP_MOV_CAJ'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Tip Mov Caj'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(17045640598829585)
,p_db_column_name=>'TIPO_AUTORIZACION'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Tipo Autorizacion'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(17046082693829586)
,p_db_column_name=>'NOM_FORMA'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Nom Forma'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(17046401365829586)
,p_db_column_name=>'TIPO'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Tipo'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(17046827981829586)
,p_db_column_name=>'FECHA'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Fecha'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_format_mask=>'DD/MM/YYYY HH24:MI:SS'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(17047258897829586)
,p_db_column_name=>'NUMERO'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Numero'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(17047699655829587)
,p_db_column_name=>'CANTIDAD'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Cantidad'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(17048049796829587)
,p_db_column_name=>'ACCESO'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Ir a'
,p_column_link=>'javascript:$s(''P96_ACCEDER'',''#ACCESO#'');$s(''P96_URL'',''#LINK_APP#'');'
,p_column_linktext=>' <img src="#APP_FILES#ingresar.png" width="30" height="30">'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(17048478765829587)
,p_db_column_name=>'LINK_APP'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'Link App'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(31678618873303298)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'146375'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'NUMERO:FECHA:REMITENTE:NOM_REMITENTE:ASUNTO:ACCESO:'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(156873495421344615)
,p_report_id=>wwv_flow_imp.id(31678618873303298)
,p_name=>'10'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'FECHA'
,p_operator=>'is not null'
,p_condition_sql=>' (case when ("FECHA" is not null) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# #APXWS_OP_NAME#'
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_row_bg_color=>'#cce5ff'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(31669175017270194)
,p_plug_name=>'Bandeja de Mensajes'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--compactTitle:t-BreadcrumbRegion--useRegionTitle'
,p_plug_template=>wwv_flow_imp.id(40134615190263663)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(17051719355829599)
,p_branch_name=>'IR A '
,p_branch_action=>'P96_URL'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'BRANCH_TO_URL_IDENT_BY_ITEM'
,p_branch_sequence=>10
,p_branch_condition_type=>'REQUEST_IN_CONDITION'
,p_branch_condition=>'PASAR'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(17041745180829580)
,p_name=>'P96_URL'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(31541255847764697)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(17042194021829581)
,p_name=>'P96_ACCEDER'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(31541255847764697)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(17050294226829597)
,p_name=>'Nuevo'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P96_ACCEDER'
,p_condition_element=>'P96_ACCEDER'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'N'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(17050749113829598)
,p_event_id=>wwv_flow_imp.id(17050294226829597)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_01=>'PASAR'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(17051205894829598)
,p_event_id=>wwv_flow_imp.id(17050294226829597)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'No tienes accesso a este forms'
,p_attribute_03=>'warning'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(17049891193829597)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Cargar Collections'
,p_process_sql_clob=>'BSMENSAJ.PROCBD_CARGA_MENSAJ_COL(:APP_USER);'
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp.component_end;
end;
/
