prompt --application/pages/page_00621
begin
--   Manifest
--     PAGE: 00621
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
 p_id=>621
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Reporte de derivaciones'
,p_alias=>'REPORTE-DE-DERIVACIONES'
,p_step_title=>'Reporte de derivaciones'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'CHARBA'
,p_last_upd_yyyymmddhh24miss=>'20230919111059'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(208883949442142089)
,p_plug_name=>'Reporte de derivaciones'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'a.id_caso, ',
'a.ID_CONTACTO, ',
'a.id_derivacion, ',
'a.FECHA_DERIV AS fecha_derivacion,',
'b.DESCRIPCION AS estado,  ',
'a.OPER_DERIV AS OPERADOR_DERIVA,',
'a.OBS_DERIVADA AS observacion_deriva,',
'd.DESCRIPCION AS AREA_DERIVA,',
'a.OPERADOR_REC AS OPERADOR_RECIBE,',
'c.DESCRIPCION AS AREA_RECIBE,',
'a.FECHA_REC AS fecha_respuesta,',
'a.OBS_REC AS respuesta',
'FROM ',
'CRM_DERIVACIONES_CONTACTO a, ',
'crm_estados b, ',
'rh_areas c,',
'rh_areas d',
'WHERE a.COD_EMPRESA = 1',
'AND a.COD_EMPRESA = b.COD_EMPRESA ',
'AND a.ESTADO = b.COD_ESTADO',
'AND b.ACTIVO = ''S''',
'---',
'AND a.COD_EMPRESA = c.cod_empresa',
'AND a.SUCURSA_ORIGEN = c.COD_SUCURSAL ',
'AND a.AREA_DERIVADA = c.COD_AREA',
'---',
'AND a.COD_EMPRESA = d.COD_EMPRESA ',
'AND a.AREA_ORIGEN = d.COD_AREA ',
'AND a.SUCURSAL_DERIVADA = d.COD_SUCURSAL ',
';'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_page_header=>'Reporte de derivaciones'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(208884049160142089)
,p_name=>'Reporte de derivaciones'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'CHARBA'
,p_internal_uid=>208884049160142089
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(208884483066142083)
,p_db_column_name=>'ID_CASO'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Id Caso'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(208884836500142083)
,p_db_column_name=>'ID_CONTACTO'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Id Contacto'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(208885609659142082)
,p_db_column_name=>'ID_DERIVACION'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Id Derivacion'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(208889267787142081)
,p_db_column_name=>'ESTADO'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Estado'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(185084824999060716)
,p_db_column_name=>'FECHA_DERIVACION'
,p_display_order=>23
,p_column_identifier=>'U'
,p_column_label=>'Fecha Derivacion'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(185084968359060717)
,p_db_column_name=>'OPERADOR_DERIVA'
,p_display_order=>33
,p_column_identifier=>'V'
,p_column_label=>'Operador Deriva'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(185085045664060718)
,p_db_column_name=>'OBSERVACION_DERIVA'
,p_display_order=>43
,p_column_identifier=>'W'
,p_column_label=>'Observacion Deriva'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(185085117623060719)
,p_db_column_name=>'AREA_DERIVA'
,p_display_order=>53
,p_column_identifier=>'X'
,p_column_label=>'Area Deriva'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(185085203844060720)
,p_db_column_name=>'OPERADOR_RECIBE'
,p_display_order=>63
,p_column_identifier=>'Y'
,p_column_label=>'Operador Recibe'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(185085303902060721)
,p_db_column_name=>'AREA_RECIBE'
,p_display_order=>73
,p_column_identifier=>'Z'
,p_column_label=>'Area Recibe'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(185085492809060722)
,p_db_column_name=>'FECHA_RESPUESTA'
,p_display_order=>83
,p_column_identifier=>'AA'
,p_column_label=>'Fecha Respuesta'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(185085526148060723)
,p_db_column_name=>'RESPUESTA'
,p_display_order=>93
,p_column_identifier=>'AB'
,p_column_label=>'Respuesta'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(208892698161140842)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_type=>'REPORT'
,p_report_alias=>'2088927'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_view_mode=>'REPORT'
,p_report_columns=>'ID_CASO:ID_CONTACTO:ID_DERIVACION:FECHA_DERIVACION:ESTADO:OPERADOR_DERIVA:AREA_DERIVA:OBSERVACION_DERIVA:OPERADOR_RECIBE:AREA_RECIBE:RESPUESTA:FECHA_RESPUESTA:'
,p_sort_column_1=>'FECHA_DERIVACION'
,p_sort_direction_1=>'DESC'
,p_break_on=>'OPERADOR_RECIBE:0:0:0:0'
,p_break_enabled_on=>'OPERADOR_RECIBE:0:0:0:0'
,p_count_columns_on_break=>'ID_DERIVACION'
,p_chart_type=>'pie'
,p_chart_label_column=>'ESTADO'
,p_chart_value_column=>'ID_DERIVACION'
,p_chart_aggregate=>'COUNT'
,p_chart_sorting=>'DEFAULT'
,p_chart_orientation=>'vertical'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(208986056659169913)
,p_report_id=>wwv_flow_imp.id(208892698161140842)
,p_name=>'Cerrado'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'ESTADO'
,p_operator=>'='
,p_expr=>'CERRADO'
,p_condition_sql=>' (case when ("ESTADO" = #APXWS_EXPR#) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# = ''CERRADO''  '
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_row_bg_color=>'#228b22'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(208986410376169913)
,p_report_id=>wwv_flow_imp.id(208892698161140842)
,p_name=>'Derivado'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'ESTADO'
,p_operator=>'='
,p_expr=>'DERIVADO'
,p_condition_sql=>' (case when ("ESTADO" = #APXWS_EXPR#) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# = ''DERIVADO''  '
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_row_bg_color=>'#87cefa'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(208986892584169913)
,p_report_id=>wwv_flow_imp.id(208892698161140842)
,p_name=>'En Proceso'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'ESTADO'
,p_operator=>'='
,p_expr=>'EN PROCESO '
,p_condition_sql=>' (case when ("ESTADO" = #APXWS_EXPR#) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# = ''EN PROCESO ''  '
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_row_bg_color=>'#ff4500'
,p_row_font_color=>'#000000'
);
wwv_flow_imp.component_end;
end;
/
