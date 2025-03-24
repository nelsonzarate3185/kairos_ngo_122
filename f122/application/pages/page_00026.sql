prompt --application/pages/page_00026
begin
--   Manifest
--     PAGE: 00026
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
 p_id=>26
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Informe de Datos de recepcion Servicio Tecnico - VTRDATRE'
,p_alias=>'INFORME-DE-DATOS-DE-RECEPCION-SERVICIO-TECNICO-VTRDATRE'
,p_step_title=>'Informe de Datos de recepcion Servicio Tecnico - VTRDATRE'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#INF1,#INF2{',
'    ',
'    font-weight: bold !important;;',
'    }'))
,p_step_template=>wwv_flow_imp.id(40090628970263651)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'ETRINIDAD'
,p_last_upd_yyyymmddhh24miss=>'20221006112823'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(20034821229068949)
,p_plug_name=>unistr('Informe de Datos de Recepci\00F3n Servicio T\00E9cnico')
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--compactTitle:t-BreadcrumbRegion--useRegionTitle'
,p_plug_template=>wwv_flow_imp.id(40134615190263663)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(20034988988068950)
,p_plug_name=>'Informes'
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(20035092233068951)
,p_plug_name=>unistr('Informe de Datos de Recepci\00F3n Servicio T\00E9cnico')
,p_region_name=>'INF1'
,p_parent_plug_id=>wwv_flow_imp.id(20034988988068950)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT  USUARIO,',
'        SUM(ENTREGADOS),',
'        SUM(FACTURADOS),',
'        SUM(REPUESTOS_FACTURADOS),',
'        SUM(OTS_RECIBIDAS),',
'        SUM(NVL(ENTREGADOS,0)+NVL(FACTURADOS,0)+NVL(REPUESTOS_FACTURADOS,0)+NVL(OTS_RECIBIDAS,0))TOTAL',
' FROM(SELECT A.ENTREGADO_POR USUARIO,',
'       0 ENTREGADOS,',
'       COUNT(*) FACTURADOS,',
'       0 REPUESTOS_FACTURADOS,',
'       0 OTS_RECIBIDAS',
'  FROM VT_ORDENES_TRABAJO A',
' WHERE A.COD_EMPRESA = ''1''',
'   AND A.FEC_ENTREGA BETWEEN :P26_FEC_INI AND :P26_FEC_FIN',
'   AND A.COD_ORIGEN = ''1''',
'   AND NVL(A.ANULADO, ''N'') <> ''S''',
'   AND NVL(A.IND_RETIRADO, ''N'') <> ''S''',
'   AND NVL(A.IND_GARANTIA, ''N'') <> ''S''',
'   AND A.NRO_COMPROBANTE_FAC IS NOT NULL',
' GROUP BY ENTREGADO_POR',
'UNION ALL',
'SELECT A.RETIRADO_POR, COUNT(*) RETIRADOS, 0, 0, 0',
'  FROM VT_ORDENES_TRABAJO A',
' WHERE A.COD_EMPRESA = ''1''',
'   AND A.FECHA_RETIRADO BETWEEN :P26_FEC_INI AND :P26_FEC_FIN',
'   AND A.COD_ORIGEN = ''1''',
'   AND NVL(A.ANULADO, ''N'') <> ''S''',
' GROUP BY RETIRADO_POR',
'UNION ALL',
'SELECT A.COD_USUARIO, 0, 0 FACTURADAS, COUNT(*), 0',
'  FROM VT_COMPROBANTES_CABECERA A',
' WHERE A.COD_EMPRESA = ''1''',
'   AND A.FEC_COMPROBANTE BETWEEN :P26_FEC_INI AND :P26_FEC_FIN',
'   AND A.TIP_COMPROBANTE_REF = ''PER''',
'   AND NVL(A.ESTADO, ''N'') <> ''A''',
' GROUP BY COD_USUARIO',
'UNION ALL',
'SELECT A.COD_USUARIO USUARIO,',
'       0 ENTREGADOS,',
'       0 FACTURADOS,',
'       0 REPUESTOS_FACTURADOS,',
'       COUNT(*) OTS_RECIBIDAS',
'  FROM VT_ORDENES_TRABAJO A',
' WHERE A.COD_EMPRESA = ''1''',
'   AND A.FEC_COMPROBANTE BETWEEN :P26_FEC_INI AND :P26_FEC_FIN',
'   AND A.COD_ORIGEN = ''1''',
'   AND NVL(A.ANULADO, ''N'') <> ''S''',
'',
' GROUP BY COD_USUARIO)',
' GROUP BY USUARIO',
' ORDER BY  1',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P26_VER_MONTOS'
,p_plug_display_when_cond2=>'NO'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>unistr('Informe de Datos de Recepci\00F3n Servicio T\00E9cnico')
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
 p_id=>wwv_flow_imp.id(20035103387068952)
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
,p_internal_uid=>20035103387068952
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10046458344809553)
,p_db_column_name=>'USUARIO'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Usuario'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10046837332809553)
,p_db_column_name=>'TOTAL'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Total'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10047247520809554)
,p_db_column_name=>'SUM(ENTREGADOS)'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'OTS Retiradas'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10047636855809554)
,p_db_column_name=>'SUM(FACTURADOS)'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'OTS Facturadas'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10048436245809554)
,p_db_column_name=>'SUM(OTS_RECIBIDAS)'
,p_display_order=>90
,p_column_identifier=>'J'
,p_column_label=>unistr('OTS Recepci\00F3n')
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10048019033809554)
,p_db_column_name=>'SUM(REPUESTOS_FACTURADOS)'
,p_display_order=>100
,p_column_identifier=>'I'
,p_column_label=>'Repuestos Facturados'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(20043230222090059)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'99980'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'USUARIO:SUM(ENTREGADOS):SUM(FACTURADOS):SUM(OTS_RECIBIDAS):SUM(REPUESTOS_FACTURADOS):TOTAL:'
,p_sum_columns_on_break=>'TOTAL'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(17850464061981722)
,p_report_id=>wwv_flow_imp.id(20043230222090059)
,p_name=>'10'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'USUARIO'
,p_operator=>'is not null'
,p_condition_sql=>' (case when ("USUARIO" is not null) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# #APXWS_OP_NAME#'
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_row_bg_color=>'#c6e3f7'
,p_row_font_color=>'#000000'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(20036311889068964)
,p_plug_name=>unistr('Informe de Datos de Recepci\00F3n Servicio T\00E9cnico - Montos')
,p_region_name=>'INF2'
,p_parent_plug_id=>wwv_flow_imp.id(20034988988068950)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>20
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT COD_USUARIO,',
'       TOTAL_OT,',
'       REPUESTOS,',
'       (NVL(TOTAL_OT,0) + NVL(REPUESTOS,0))TOTAL',
'       ',
'FROM(SELECT A.COD_USUARIO, SUM(A.TOT_COMPROBANTE) REPUESTOS, 0 TOTAL_OT',
'  FROM VT_COMPROBANTES_CABECERA A',
' WHERE A.COD_EMPRESA = ''1''',
'   AND A.FEC_COMPROBANTE BETWEEN :P26_FEC_INI AND :P26_FEC_FIN',
'   AND A.TIP_COMPROBANTE_REF = ''PER''',
'   AND NVL(A.ESTADO, ''N'') <> ''A''',
' GROUP BY COD_USUARIO',
'UNION ALL',
'SELECT A.COD_USUARIO, 0, SUM(A.TOT_COMPROBANTE) TOTAL_OT',
'  FROM VT_COMPROBANTES_CABECERA A',
' WHERE A.COD_EMPRESA = ''1''',
'   AND A.FEC_COMPROBANTE BETWEEN :P26_FEC_INI AND :P26_FEC_FIN',
'   AND A.TIP_COMPROBANTE_REF = ''ORT''',
'   AND NVL(A.ESTADO, ''N'') <> ''A''',
' GROUP BY COD_USUARIO)'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P26_VER_MONTOS'
,p_plug_display_when_cond2=>'SI'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>unistr('Informe de Datos de Recepci\00F3n Servicio T\00E9cnico - Montos')
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
 p_id=>wwv_flow_imp.id(20036400467068965)
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
,p_internal_uid=>20036400467068965
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10049415174809555)
,p_db_column_name=>'COD_USUARIO'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Usuario'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10049850648809556)
,p_db_column_name=>'REPUESTOS'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Repuesto Fact.'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10050258445809556)
,p_db_column_name=>'TOTAL_OT'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'OTS Facturadas'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10050696230809556)
,p_db_column_name=>'TOTAL'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Total'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(20071744431425588)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'100265'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'COD_USUARIO:TOTAL_OT:REPUESTOS:TOTAL:'
,p_sort_column_1=>'COD_USUARIO'
,p_sort_direction_1=>'ASC'
,p_sum_columns_on_break=>'TOTAL'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(17849849842980864)
,p_report_id=>wwv_flow_imp.id(20071744431425588)
,p_name=>'10'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'COD_USUARIO'
,p_operator=>'is not null'
,p_condition_sql=>' (case when ("COD_USUARIO" is not null) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# #APXWS_OP_NAME#'
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_row_bg_color=>'#c6e3f7'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(20035705770068958)
,p_plug_name=>'Periodo'
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--textContent:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_grid_column_span=>3
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(10051668079809557)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(20035705770068958)
,p_button_name=>'EJECUTAR'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--simple:t-Button--iconLeft:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Ejecutar'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10052086237809557)
,p_name=>'P26_FEC_INI'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(20035705770068958)
,p_prompt=>'Fecha'
,p_placeholder=>'Inicial'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10052498917809557)
,p_name=>'P26_FEC_FIN'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(20035705770068958)
,p_placeholder=>'Final'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10052830709809558)
,p_name=>'P26_VER_MONTOS'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(20035705770068958)
,p_prompt=>'Ver Montos'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'SI'
,p_attribute_03=>'NO'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(16980754817602949)
,p_validation_name=>'Validar Fecha'
,p_validation_sequence=>10
,p_validation=>'P26_FEC_INI'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Debe especificar Fecha inicial'
,p_associated_item=>wwv_flow_imp.id(10052086237809557)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(16980882108602950)
,p_validation_name=>'Validar Fecha Final'
,p_validation_sequence=>20
,p_validation=>'P26_FEC_FIN'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Debe especificar Fecha final'
,p_associated_item=>wwv_flow_imp.id(10052498917809557)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(17826956052747701)
,p_name=>'Cambiar Fecha Inicial'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P26_FEC_INI'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(17827090722747702)
,p_event_id=>wwv_flow_imp.id(17826956052747701)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P26_FEC_INI'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'IF :P26_FEC_INI IS NOT NULL THEN ',
'  RETURN FUNCDB_TRAER_FECHA(:P26_FEC_INI);',
'END IF; ',
'end ;'))
,p_attribute_07=>'P26_FEC_INI'
,p_attribute_08=>'N'
,p_attribute_09=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(17827241079747704)
,p_name=>'Cambiar Fecha Final'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P26_FEC_FIN'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(17827337302747705)
,p_event_id=>wwv_flow_imp.id(17827241079747704)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P26_FEC_FIN'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'IF :P26_FEC_FIN IS NOT NULL THEN ',
'  RETURN FUNCDB_TRAER_FECHA(:P26_FEC_FIN);',
'END IF; ',
'end ;'))
,p_attribute_07=>'P26_FEC_FIN'
,p_attribute_08=>'N'
,p_attribute_09=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_imp.component_end;
end;
/
