prompt --application/pages/page_00153
begin
--   Manifest
--     PAGE: 00153
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
 p_id=>153
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'CAMECA - MEDICION DE CALIDAD(DETALLES)'
,p_alias=>'CAMECA-MEDICION-DE-CALIDAD-DETALLES'
,p_step_title=>'CAMECA - MEDICION DE CALIDAD(DETALLES)'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.a-IRR-table tr td {',
'    ',
'    color: #262626;',
'    font-weight: bold;',
'}',
'td[headers="Imagen"] img  { ',
'   display: block; ',
'   margin-left: auto;',
'   margin-right: auto;',
'   width: 200px; ',
'   height:200px;    ',
'   border: 1px solid #999; ',
'   padding: 4px; ',
'   background: #f6f6f6; ',
'}'))
,p_step_template=>wwv_flow_imp.id(40071096862263645)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'CHARBA'
,p_last_upd_yyyymmddhh24miss=>'20230421090132'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(36914068669487421)
,p_plug_name=>'Lista de Mediciones'
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_grid_column_span=>5
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(36533435118525534)
,p_plug_name=>'Mediciones'
,p_parent_plug_id=>wwv_flow_imp.id(36914068669487421)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>20
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select COD_EMPRESA,',
'       COD_MEDICION,',
'       COD_TIPO_AGENTE,',
'       COD_AGENTE_EMPL,',
'       FECHA_HORA_LLAMADA,',
'       ID_LLAMADA,',
'       CALIFICACION_TOTAL,',
'       OPERADOR,',
'       FEC_MEDICION,',
'       ''X'' VER,',
'       CASE WHEN COD_MEDICION = :P153_MEDICION_COD THEN ',
'                 ''S''',
'            ELSE ',
'                 ''N''',
'       END COLOR,',
'       AGENTE.NOMBRE',
'  from CA_MEDICION_CALIDAD_CAB C,',
'  (SELECT E.COD_EMPLEADO,',
'       P.NOMBRE',
' FROM RH_EMPLEADOS E,',
'      PERSONAS P ',
' WHERE P.COD_PERSONA = E.COD_PERSONA  ',
'   AND E.COD_TIPO_AGENTE IS NOT NULL ',
'UNION ',
'SELECT ''1'',',
'        ''LORENA PAOLA OLMEDO HERRERA'' NOMBRE',
'   FROM DUAL)AGENTE',
'',
' WHERE COD_TIPO_AGENTE = :P153_TIPO_AGENTE',
'   AND  COD_AGENTE_EMPL = AGENTE.COD_EMPLEADO',
'   AND (COD_AGENTE_EMPL = :P153_AGENTE_COD OR :P153_AGENTE_COD IS NULL) ',
' order  by 2 desc'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P153_AGENTE_COD,P153_TIPO_AGENTE'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Mediciones'
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
 p_id=>wwv_flow_imp.id(36913076545487411)
,p_max_row_count=>'1000000'
,p_no_data_found_message=>'No contiene Registros'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'ETRINIDAD'
,p_internal_uid=>36913076545487411
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(24114803874975809)
,p_db_column_name=>'COD_EMPRESA'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Cod Empresa'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(24115292773975809)
,p_db_column_name=>'COD_MEDICION'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Cod Medicion'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(24115667270975809)
,p_db_column_name=>'COD_TIPO_AGENTE'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Cod Tipo Agente'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(24116005421975810)
,p_db_column_name=>'COD_AGENTE_EMPL'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Colaborador'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(24116428349975810)
,p_db_column_name=>'FECHA_HORA_LLAMADA'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Fecha/Hora Llamada'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_format_mask=>'DD-MM-YYYY HH24:MI'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(24116851471975810)
,p_db_column_name=>'ID_LLAMADA'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'ID Llamada'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(24117243793975810)
,p_db_column_name=>'CALIFICACION_TOTAL'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>unistr('Calificaci\00F3n Final')
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(24117648715975810)
,p_db_column_name=>'OPERADOR'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Operador'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(24118066826975810)
,p_db_column_name=>'FEC_MEDICION'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Fecha de  Medicion'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_format_mask=>'DD-MM-YYYY HH24:MI'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(24118435343975811)
,p_db_column_name=>'VER'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Ver'
,p_column_link=>'javascript:$s(''P153_MEDICION_COD'',#COD_MEDICION#);'
,p_column_linktext=>'<img src="#APP_FILES#VER_MAS.png" width="20" height="20">'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(24118881602975811)
,p_db_column_name=>'COLOR'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Color'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(24119221187975811)
,p_db_column_name=>'NOMBRE'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Nombre'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(37384925266797302)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'132710'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'FECHA_HORA_LLAMADA:ID_LLAMADA:CALIFICACION_TOTAL:OPERADOR:VER:'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(24119929086975811)
,p_report_id=>wwv_flow_imp.id(37384925266797302)
,p_name=>'Marcador'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'COLOR'
,p_operator=>'='
,p_expr=>'S'
,p_condition_sql=>' (case when ("COLOR" = #APXWS_EXPR#) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# = ''S''  '
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_row_bg_color=>'#cce5ff'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(36915645214487436)
,p_plug_name=>'Ponderaciones'
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(36914218176487422)
,p_plug_name=>'Ponderaciones'
,p_parent_plug_id=>wwv_flow_imp.id(36915645214487436)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>10
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
'   AND D.COD_MEDICION    = :P153_MEDICION_COD'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P153_MEDICION_COD'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Ponderaciones'
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
 p_id=>wwv_flow_imp.id(36914881956487429)
,p_max_row_count=>'1000000'
,p_no_data_found_message=>'No contiene Registros'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'ETRINIDAD'
,p_internal_uid=>36914881956487429
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(24121732277975813)
,p_db_column_name=>'COD_MEDICION'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Cod Medicion'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(24122113666975813)
,p_db_column_name=>'DESCRIPCION'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Descripcion'
,p_column_html_expression=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<h6>',
'    #DESCRIPCION#',
'</h6>'))
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(24122514846975813)
,p_db_column_name=>'PORCENTAJE'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Porcentaje'
,p_column_html_expression=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<h6>',
'    #PORCENTAJE#',
'</h6>'))
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(24122926981975813)
,p_db_column_name=>'LOGRO'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Logro?'
,p_column_html_expression=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<h6>',
'    #LOGRO#',
'</h6>'))
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(24123301060975813)
,p_db_column_name=>'OBS'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Obs'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(24123767384975814)
,p_db_column_name=>'TIPO'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Tipo'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(24124188466975814)
,p_db_column_name=>'PORC_OBTENIDO'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Obtenido'
,p_column_html_expression=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<h6>',
'    #PORC_OBTENIDO#',
'</h6>'))
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(24124558665975814)
,p_db_column_name=>'TIPO_AGENTE'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Tipo Agente'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(24120942023975812)
,p_db_column_name=>'CAMPANIA'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>unistr('Campa\00F1a')
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(24121305200975813)
,p_db_column_name=>'CANAL'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Canal'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(37399633611893565)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'132857'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'TIPO_AGENTE:TIPO:DESCRIPCION:LOGRO:PORCENTAJE:PORC_OBTENIDO:OBS:CAMPANIA:CANAL:'
,p_sort_column_1=>'TIPO'
,p_sort_direction_1=>'ASC'
,p_break_on=>'0:0:0:0:0:0:TIPO_AGENTE:CAMPANIA:CANAL'
,p_break_enabled_on=>'0:0:0:0:0:0:TIPO_AGENTE:CAMPANIA:CANAL'
,p_sum_columns_on_break=>'PORCENTAJE:PORC_OBTENIDO'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(24125201968975814)
,p_report_id=>wwv_flow_imp.id(37399633611893565)
,p_name=>'No Logrado'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'LOGRO'
,p_operator=>'='
,p_expr=>'No'
,p_condition_sql=>' (case when ("LOGRO" = #APXWS_EXPR#) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# = ''No''  '
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_row_bg_color=>'#ffd6d2'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(24125687749975815)
,p_report_id=>wwv_flow_imp.id(37399633611893565)
,p_name=>'Logrado'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'LOGRO'
,p_operator=>'='
,p_expr=>'Si'
,p_condition_sql=>' (case when ("LOGRO" = #APXWS_EXPR#) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# = ''Si''  '
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_row_bg_color=>'#d0f1cc'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(36916748277487447)
,p_name=>'Agente'
,p_template=>wwv_flow_imp.id(40125238939263661)
,p_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader:t-Region--textContent:t-Region--scrollBody'
,p_component_template_options=>'u-colors:t-BadgeList--small:t-BadgeList--dash:t-BadgeList--flex:t-Report--hideNoPagination'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT A.DESCRIPCION      AREA,',
'       D.COD_DEPARTAMENTO,',
'       D.DESCRIPCION      DPTO,',
'       E.COD_EMPLEADO,',
'       P.NOMBRE,',
unistr('       TRUNC((SYSDATE - P.FEC_NACIMIENTO)/365)||'' A\00F1os'' EDAD,'),
'       NVL(CONS.CALIF_PROM,0)||''%'' CALIF_PROM',
'  FROM RH_EMPLEADOS E, ',
'       PERSONAS     P,    ',
'       RH_AREAS     A, ',
'       RH_DEPARTAMENTOS D,',
'       (SELECT C.COD_AGENTE_EMPL AGENTE,',
'         ROUND(AVG(C.CALIFICACION_TOTAL)) CALIF_PROM ',
'          FROM CA_MEDICION_CALIDAD_CAB C',
'         WHERE C.COD_AGENTE_EMPL = :P153_AGENTE_COD          ',
'         GROUP BY C.COD_AGENTE_EMPL)CONS',
' WHERE E.COD_EMPRESA = ''1''',
'   AND NVL(E.ACTIVO, ''S'') <> ''N''',
'   AND E.COD_PERSONA = P.COD_PERSONA',
'   AND E.COD_AREA = A.COD_AREA',
'   AND A.COD_EMPRESA = E.COD_EMPRESA',
'   AND A.COD_SUCURSAL = E.COD_SUCURSAL',
'   AND D.COD_DEPARTAMENTO = E.COD_DEPARTAMENTO',
'   AND E.COD_AREA = D.COD_AREA',
'   AND D.COD_EMPRESA = E.COD_EMPRESA',
'   AND D.COD_SUCURSAL = E.COD_SUCURSAL',
'   AND E.COD_EMPLEADO = CONS.AGENTE(+)',
'   AND E.ACTIVO = ''S''',
'   AND D.COD_DEPARTAMENTO = ''1502''',
'   AND E.COD_EMPLEADO = :P153_AGENTE_COD',
'  UNION ',
'  SELECT ''EXPERIENCIA DEL CLIENTE''      AREA,',
'       ''1502'' COD_DEPARTAMENTO,',
'       ''CONTAC CENTER''      DPTO,',
'       ''1'' COD_EMPLEADO,',
'       ''LORENA PAOLA OLMEDO HERRERA'' NOMBRE,',
unistr('       TRUNC((SYSDATE - TO_DATE(''10/8/1985''))/365)||'' A\00F1os'' EDAD,'),
'       NVL(CONS.CALIF_PROM,0)||''%'' CALIF_PROM',
'  FROM (SELECT C.COD_AGENTE_EMPL AGENTE,',
'         ROUND(AVG(C.CALIFICACION_TOTAL)) CALIF_PROM ',
'          FROM CA_MEDICION_CALIDAD_CAB C',
'         WHERE C.COD_AGENTE_EMPL = :P153_AGENTE_COD          ',
'         GROUP BY C.COD_AGENTE_EMPL)CONS',
'WHERE :P153_AGENTE_COD = 1',
' ORDER BY 1, 2, 4;'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P153_AGENTE_COD'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(40137194923263664)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(24126314407975815)
,p_query_column_id=>1
,p_column_alias=>'AREA'
,p_column_display_sequence=>40
,p_column_heading=>unistr('\00C1rea')
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(24126792695975815)
,p_query_column_id=>2
,p_column_alias=>'COD_DEPARTAMENTO'
,p_column_display_sequence=>50
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(24127179621975815)
,p_query_column_id=>3
,p_column_alias=>'DPTO'
,p_column_display_sequence=>30
,p_column_heading=>'Departamento'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(24127549439975816)
,p_query_column_id=>4
,p_column_alias=>'COD_EMPLEADO'
,p_column_display_sequence=>80
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(24127958835975816)
,p_query_column_id=>5
,p_column_alias=>'NOMBRE'
,p_column_display_sequence=>10
,p_column_heading=>'Agente'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(24128340472975816)
,p_query_column_id=>6
,p_column_alias=>'EDAD'
,p_column_display_sequence=>20
,p_column_heading=>'Edad'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(24128749611975816)
,p_query_column_id=>7
,p_column_alias=>'CALIF_PROM'
,p_column_display_sequence=>70
,p_column_heading=>'Calificacion Promedio'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(37472041026926126)
,p_plug_name=>'Foto'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_02'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT SYS.DBMS_LOB.GETLENGTH(P.IMAGEN)IMAGEN,EMP.COD_PERSONA',
'  FROM RH_EMPLEADOS EMP,',
'       PERSONAS_FOTOS P',
'WHERE P.COD_PERSONA = EMP.COD_PERSONA',
'  AND EMP.COD_EMPRESA = ''1''',
'  AND P.FECHA_ALTA = (SELECT MAX(F.FECHA_ALTA) FROM PERSONAS_FOTOS F WHERE F.COD_PERSONA = EMP.COD_PERSONA)',
'  AND EMP.COD_EMPLEADO = :P153_AGENTE_COD'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P153_AGENTE_COD'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Foto'
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
 p_id=>wwv_flow_imp.id(37472112675926127)
,p_max_row_count=>'1000000'
,p_no_data_found_message=>'Sin Imagen'
,p_show_nulls_as=>'Sin Imagen'
,p_show_search_bar=>'N'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_enable_mail_download=>'Y'
,p_owner=>'ETRINIDAD'
,p_internal_uid=>37472112675926127
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(24129490467975816)
,p_db_column_name=>'IMAGEN'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Imagen'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'IMAGE:PERSONAS_FOTOS:IMAGEN:COD_PERSONA::::::::'
,p_static_id=>'Imagen'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(24129820176975817)
,p_db_column_name=>'COD_PERSONA'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Cod Persona'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(37501215092193839)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'133873'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'IMAGEN:COD_PERSONA'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(37473191988926138)
,p_plug_name=>'Agente'
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_02'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(37473823673926144)
,p_plug_name=>'Detalles de Mediciones de Calidad'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--compactTitle:t-BreadcrumbRegion--useRegionTitle'
,p_plug_template=>wwv_flow_imp.id(40134615190263663)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(24130812304975817)
,p_name=>'P153_TIPO_AGENTE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(37473191988926138)
,p_prompt=>'Tipo Agente'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_TIPO_AGENTE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT C.COD_TIPO_AGENTE||''-''||initcap(C.DESCRIPCION) D,',
'       C.COD_TIPO_AGENTE R',
'  FROM CA_TIPO_AGENTE C',
' WHERE C.COD_EMPRESA = ''1'''))
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
,p_attribute_08=>'600'
,p_attribute_09=>'400'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(24131283617975817)
,p_name=>'P153_AGENTE_COD'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(37473191988926138)
,p_prompt=>'Agente'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT E.COD_EMPLEADO||''-''||P.NOMBRE D,',
'       TO_NUMBER(E.COD_EMPLEADO) R',
'  FROM RH_EMPLEADOS E, PERSONAS P, RH_AREAS A, RH_DEPARTAMENTOS D',
' WHERE E.COD_EMPRESA = ''1''',
'   AND NVL(E.ACTIVO, ''S'') <> ''N''',
'   AND E.COD_PERSONA = P.COD_PERSONA',
'   AND E.COD_AREA = A.COD_AREA',
'   AND A.COD_EMPRESA = E.COD_EMPRESA',
'   AND A.COD_SUCURSAL = E.COD_SUCURSAL',
'   AND D.COD_DEPARTAMENTO = E.COD_DEPARTAMENTO',
'   AND E.COD_AREA = D.COD_AREA',
'   AND D.COD_EMPRESA = E.COD_EMPRESA',
'   AND D.COD_SUCURSAL = E.COD_SUCURSAL',
'   AND E.ACTIVO = ''S''',
'   AND D.COD_DEPARTAMENTO in(''1502'',''1503'')',
'   AND E.COD_TIPO_AGENTE = :P153_TIPO_AGENTE',
'',
'UNION ',
'SELECT ''1''||''-''||''LORENA PAOLA OLMEDO HERRERA'' D ,',
'        TO_NUMBER(''1'') R',
'   FROM DUAL ',
'  WHERE :P153_TIPO_AGENTE = 2',
'  UNION ',
'SELECT ''2 - GUSTAVO ADRIAN AGUIRRE GONZALEZ'' D ,',
'        TO_NUMBER(''2'') R',
'   FROM DUAL ',
'  WHERE :P153_TIPO_AGENTE = 2  ',
'  UNION ',
'SELECT ''3 - ALEXIS ARMOA GARCIA'' D ,',
'        TO_NUMBER(''3'') R',
'   FROM DUAL ',
'  WHERE :P153_TIPO_AGENTE = 2 ORDER BY R'))
,p_lov_cascade_parent_items=>'P153_TIPO_AGENTE'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
,p_attribute_08=>'600'
,p_attribute_09=>'400'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(24131628579975818)
,p_name=>'P153_MEDICION_COD'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(37473191988926138)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(24132735408975818)
,p_name=>'DA_Cambiar_Medicion_Cod'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P153_MEDICION_COD'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(24133280916975819)
,p_event_id=>wwv_flow_imp.id(24132735408975818)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(24133642091975819)
,p_name=>'DA_Cambiar_Agente'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P153_AGENTE_COD'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(24134159221975819)
,p_event_id=>wwv_flow_imp.id(24133642091975819)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT MAX(C.COD_MEDICION)',
'  INTO :P153_MEDICION_COD',
'  FROM CA_MEDICION_CALIDAD_CAB C',
' WHERE C.COD_EMPRESA = ''1''',
'   AND C.COD_AGENTE_EMPL = :P153_AGENTE_COD;'))
,p_attribute_02=>'P153_AGENTE_COD'
,p_attribute_03=>'P153_MEDICION_COD'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(24134625464975819)
,p_event_id=>wwv_flow_imp.id(24133642091975819)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(24132331770975818)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Trae Datos de Agente'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P153_AGENTE_COD = 1 THEN',
'   :P153_TIPO_AGENTE := 2;',
'ELSE ',
'',
'            SELECT R.COD_TIPO_AGENTE',
'              INTO :P153_TIPO_AGENTE ',
'              FROM RH_EMPLEADOS R ',
'             WHERE R.COD_EMPRESA = ''1'' ',
'               AND R.COD_EMPLEADO = :P153_AGENTE_COD;',
'END IF;',
'',
'SELECT MAX(C.COD_MEDICION)',
'  INTO :P153_MEDICION_COD',
'  FROM CA_MEDICION_CALIDAD_CAB C',
' WHERE C.COD_EMPRESA = ''1''',
'   AND C.COD_AGENTE_EMPL = :P153_AGENTE_COD;',
'  '))
,p_process_clob_language=>'PLSQL'
,p_process_when=>'PAGE152'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
);
wwv_flow_imp.component_end;
end;
/
