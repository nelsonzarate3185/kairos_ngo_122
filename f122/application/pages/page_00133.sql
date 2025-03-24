prompt --application/pages/page_00133
begin
--   Manifest
--     PAGE: 00133
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
 p_id=>133
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Registro de llamadas'
,p_alias=>'REGISTRO-DE-LLAMADAS'
,p_step_title=>'Registro de llamadas'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'    #reg_parametros{',
'            background-color: #003a85 !important;',
'            box-shadow: black 1px 1px 5px 1px;',
'            }',
' ',
'',
'.t-Form-label, .text-field-container{',
'    color:  darkblue !important;',
'    font-weight: bold !important;',
'    } ',
'',
' #P133_FECHA_INI , #P133_FECHA_FIN , .text-field-container{',
'    background: white !important;',
'    border:   solid yellow 1.3px !important;',
'    border-style: solid;',
'    color: darkblue !important;  ',
'}      ',
'',
'.a-IRR-header {',
'    background: #003a85 !important;',
'    background-color: #003a85 !important;',
'      }',
' ',
'.a-IRR-headerLink {',
'	color: #FFED00 !important; ',
'}',
'',
'',
''))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'JUANSA'
,p_last_upd_yyyymmddhh24miss=>'20221101132004'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(25622661753754416)
,p_plug_name=>'PARAMETROS'
,p_region_name=>'reg_parametros'
,p_region_template_options=>'t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(25622710068754417)
,p_plug_name=>'llamadas'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select c.FEC_LLAMADA,',
'       c.hora,',
'       c.MOTIVO_PRINCIPAL,',
'       c.motivo,',
'       c.COD_CLIENTE, ',
'       c.nro_llamada,',
'       c.agente,',
'       c.VENDEDOR,',
'       c.cod_articulo,',
'       c.DESCRIPCION desc_art,',
'       c.precio ',
'from inv.v_llamadas_entrantes c',
'WHERE MOTIVO_PRINCIPAL <>''VISITAS CAST''',
'and   (:P133_FECHA_INI is null or to_date(:P133_FECHA_INI,''dd/mm/yyyy'') <=c.FEC_LLAMADA)',
'and   (:P133_FECHA_fIN is null or to_date(:P133_FECHA_fIN,''dd/mm/yyyy'') >=c.FEC_LLAMADA)',
'and   (:P133_COD_CLIENTE is null or :P133_COD_CLIENTE=c.COD_CLIENTE)',
'and   (:P133_MOTIVO_PRI is null or :P133_MOTIVO_PRI=c.MOTIVO_PRINCIPAL)',
'and   (:P133_MOTIVO_SEC is null or :P133_MOTIVO_SEC=c.motivo)',
' order by  C.FEC_LLAMADA desc,c.hora DESC, c.nro_llamada DESC'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P133_FECHA_INI,P133_FECHA_FIN,P133_COD_CLIENTE,P133_MOTIVO_PRI,P133_MOTIVO_SEC'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'llamadas'
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
 p_id=>wwv_flow_imp.id(25622861057754418)
,p_max_row_count=>'1000000'
,p_allow_report_saving=>'N'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_search_textbox=>'N'
,p_report_list_mode=>'NONE'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_rows_per_page=>'N'
,p_show_control_break=>'N'
,p_show_aggregate=>'N'
,p_show_pivot=>'N'
,p_show_flashback=>'N'
,p_show_reset=>'N'
,p_show_help=>'N'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'JUANSA'
,p_internal_uid=>25622861057754418
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(25622928540754419)
,p_db_column_name=>'FEC_LLAMADA'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Fec Llamada'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_format_mask=>'DD/MM/YYYY'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(25623098188754420)
,p_db_column_name=>'HORA'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Hora'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(25623146718754421)
,p_db_column_name=>'MOTIVO_PRINCIPAL'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Motivo Principal'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(25623218923754422)
,p_db_column_name=>'MOTIVO'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Motivo'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(25623327359754423)
,p_db_column_name=>'COD_CLIENTE'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Cod Cliente'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(25623452771754424)
,p_db_column_name=>'NRO_LLAMADA'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Nro Llamada'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(25623545608754425)
,p_db_column_name=>'AGENTE'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Agente'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(25623608436754426)
,p_db_column_name=>'VENDEDOR'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Vendedor'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(25623712717754427)
,p_db_column_name=>'COD_ARTICULO'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Cod Articulo'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(25623831996754428)
,p_db_column_name=>'DESC_ART'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Desc Art'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(25623901707754429)
,p_db_column_name=>'PRECIO'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Precio'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(30137019455852733)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'301371'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'FEC_LLAMADA:HORA:MOTIVO_PRINCIPAL:MOTIVO:COD_CLIENTE:NRO_LLAMADA:AGENTE:VENDEDOR:COD_ARTICULO:DESC_ART:PRECIO'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(25624204837754432)
,p_name=>'P133_COD_CLIENTE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(25622661753754416)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(25624325407754433)
,p_name=>'P133_MOTIVO_PRI'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(25622661753754416)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(25624457941754434)
,p_name=>'P133_MOTIVO_SEC'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(25622661753754416)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(25624579128754435)
,p_name=>'P133_FECHA_INI'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(25622661753754416)
,p_prompt=>'Fecha Inicio:'
,p_format_mask=>'dd/mm/yyyy'
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(25624624339754436)
,p_name=>'P133_FECHA_FIN'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(25622661753754416)
,p_prompt=>'Fecha Fin:'
,p_format_mask=>'dd/mm/yyyy'
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(25624728903754437)
,p_name=>'DA_FECHAINI'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P133_FECHA_INI'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(25624830964754438)
,p_event_id=>wwv_flow_imp.id(25624728903754437)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(25622710068754417)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(25624981776754439)
,p_name=>'DA_FECHAFIN'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P133_FECHA_FIN'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(25625042676754440)
,p_event_id=>wwv_flow_imp.id(25624981776754439)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(25622710068754417)
);
wwv_flow_imp.component_end;
end;
/
