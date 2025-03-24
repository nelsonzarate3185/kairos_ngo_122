prompt --application/pages/page_00157
begin
--   Manifest
--     PAGE: 00157
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
 p_id=>157
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'CARMECA - Reporte de Mediciones(MODAL)'
,p_alias=>'CARMECA-REPORTE-DE-MEDICIONES-MODAL'
,p_page_mode=>'MODAL'
,p_step_title=>'Detalles'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#PON{',
'    ',
'    font-weight: bold !important;',
'    }',
''))
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'ETRINIDAD'
,p_last_upd_yyyymmddhh24miss=>'20221021153219'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(59262433703884347)
,p_plug_name=>'Ponderaciones'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(59262533159884348)
,p_plug_name=>'Ponderaciones_Rep'
,p_region_name=>'PON'
,p_parent_plug_id=>wwv_flow_imp.id(59262433703884347)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>20
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT D.COD_MEDICION,',
'       A.DESCRIPCION TIPO_AGENTE,',
'       P.TIPO TIPO,',
'       P.DESCRIPCION DESCRIPCION,',
'       D.PORC_PONDERACION PORCENTAJE,',
'       ',
'       CASE WHEN D.MARCACION = ''S'' THEN ',
'                 D.PORC_PONDERACION',
'            ELSE  ',
'                 0',
'       END PORC_OBTENIDO,',
'             ',
'       DECODE(D.MARCACION,''S'',''Si'',''No'')LOGRO,',
'       D.OBSERVACION OBS  ,',
'       CM.DESCRIPCION CAMPANIA,',
'       CA.DESCRIPCION CANAL',
'  FROM CA_MEDICION_CALIDAD_DET D,',
'       CA_MEDICION_CALIDAD_CAB C,',
'       CA_PONDERACIONES        P,',
'       CA_TIPO_AGENTE          A,',
'       CRM_CAMPANIA           CM,',
'       CRM_CANAL              CA ',
' WHERE D.COD_EMPRESA     = P.COD_EMPRESA',
'   AND C.COD_EMPRESA     = D.COD_EMPRESA',
'   AND C.COD_MEDICION    = D.COD_MEDICION',
'   AND C.COD_EMPRESA     = CM.COD_EMPRESA (+)',
'   AND C.COD_CAMPANIA    = CM.COD_CAMPANIA(+)',
'   AND C.COD_EMPRESA     = CA.COD_EMPRESA (+)',
'   AND C.COD_CANAL       = CA.COD_CANAL   (+)      ',
'   AND D.COD_PONDERACION = P.ID',
'   AND P.COD_EMPRESA     = A.COD_EMPRESA',
'   AND P.TIPO_AGENTE     = A.COD_TIPO_AGENTE',
'   AND D.COD_MEDICION    = :P157_MEDICION_COD'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P157_MEDICION_COD'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Ponderaciones_Rep'
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
 p_id=>wwv_flow_imp.id(59262597483884349)
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
,p_internal_uid=>59262597483884349
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(24261705033156789)
,p_db_column_name=>'COD_MEDICION'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Cod Medicion'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(24262152829156789)
,p_db_column_name=>'TIPO_AGENTE'
,p_display_order=>30
,p_column_identifier=>'G'
,p_column_label=>'Tipo Agente'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(24262501371156789)
,p_db_column_name=>'TIPO'
,p_display_order=>40
,p_column_identifier=>'H'
,p_column_label=>'Tipo'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(24262965359156789)
,p_db_column_name=>'DESCRIPCION'
,p_display_order=>50
,p_column_identifier=>'I'
,p_column_label=>'Descripcion'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(24263331748156790)
,p_db_column_name=>'PORCENTAJE'
,p_display_order=>60
,p_column_identifier=>'J'
,p_column_label=>'Porcentaje'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(24263747564156790)
,p_db_column_name=>'PORC_OBTENIDO'
,p_display_order=>70
,p_column_identifier=>'K'
,p_column_label=>'Porc. Obtenido'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(24264135062156790)
,p_db_column_name=>'LOGRO'
,p_display_order=>80
,p_column_identifier=>'L'
,p_column_label=>'Logro'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(24264500792156790)
,p_db_column_name=>'OBS'
,p_display_order=>90
,p_column_identifier=>'M'
,p_column_label=>'Obs'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(24264926379156790)
,p_db_column_name=>'CAMPANIA'
,p_display_order=>100
,p_column_identifier=>'N'
,p_column_label=>'Campania'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(24265374751156790)
,p_db_column_name=>'CANAL'
,p_display_order=>110
,p_column_identifier=>'O'
,p_column_label=>'Canal'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(59285251232286827)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'155625'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'COD_MEDICION:TIPO_AGENTE:TIPO:DESCRIPCION:PORCENTAJE:PORC_OBTENIDO:LOGRO:OBS:CAMPANIA:CANAL'
,p_break_on=>'TIPO_AGENTE:CAMPANIA:CANAL'
,p_break_enabled_on=>'TIPO_AGENTE:CAMPANIA:CANAL'
,p_sum_columns_on_break=>'PORCENTAJE:PORC_OBTENIDO'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(24266050314156791)
,p_report_id=>wwv_flow_imp.id(59285251232286827)
,p_name=>'No'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'LOGRO'
,p_operator=>'='
,p_expr=>'No'
,p_condition_sql=>' (case when ("LOGRO" = #APXWS_EXPR#) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# = ''No''  '
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_row_bg_color=>'#ff9b91'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(24266464795156791)
,p_report_id=>wwv_flow_imp.id(59285251232286827)
,p_name=>'Si'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'LOGRO'
,p_operator=>'='
,p_expr=>'Si'
,p_condition_sql=>' (case when ("LOGRO" = #APXWS_EXPR#) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# = ''Si''  '
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_row_bg_color=>'#a0e698'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(24261018312156788)
,p_name=>'P157_MEDICION_COD'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(59262433703884347)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(24266870694156791)
,p_name=>'P157_CASO'
,p_item_sequence=>10
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(24267247642156791)
,p_name=>'P157_CONTACTO'
,p_item_sequence=>20
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp.component_end;
end;
/
