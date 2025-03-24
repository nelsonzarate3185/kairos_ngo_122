prompt --application/pages/page_00156
begin
--   Manifest
--     PAGE: 00156
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
 p_id=>156
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'CARMECA - Reporte de Mediciones'
,p_alias=>'CARMECA-REPORTE-DE-MEDICIONES'
,p_step_title=>'CARMECA - Reporte de Mediciones'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_welcome_text=>'<span x="" class="a-IRR-aggregate-type">pROME: </span>'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#MED .a-IRR-controlsContainer {',
'   display: none;',
'}',
'',
'body .ui-widget-header {',
'    background-color: #003a85;',
'}',
'',
'.ui-dialog-title {',
'    color: #ffee00e4;',
'    white-space: nowrap;',
'    overflow: hidden;',
'    text-overflow: ellipsis;',
'    font-weight: var(--jui-dialog-title-font-weight,var(--a-base-font-weight-semibold,500));',
'    font-size: var(--jui-dialog-title-font-size,16px);',
'    line-height: var(--jui-dialog-title-line-height,24px);',
'    display: flex;',
'    align-items: center;',
'    flex-grow: 1;',
'    flex-shrink: 1;',
'    flex-basis: auto;',
'',
'} ',
'#MED{',
'    ',
'    font-weight: bold !important;',
'    }',
''))
,p_step_template=>wwv_flow_imp.id(40071096862263645)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'CHARBA'
,p_last_upd_yyyymmddhh24miss=>'20230421090204'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(58483636692506831)
,p_plug_name=>'Filtros'
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_02'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(58483821383506833)
,p_name=>'Tarjeta'
,p_template=>wwv_flow_imp.id(40125238939263661)
,p_display_sequence=>10
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader:t-Region--textContent:t-Region--scrollBody'
,p_component_template_options=>'u-colors:t-BadgeList--small:t-BadgeList--dash:t-BadgeList--float:t-Report--hideNoPagination'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT CONS.NOMBRE,',
'       CONS.COD_PERSONA,',
'       CONS.CANT_ESCUCHAS,',
'       CONS.PROM_CALIF,',
'       ROUND((CONS.CANT_ESCUCHAS * 100)/CONS.TOTAL_ESCUCHAS,2)||''%'' PORC_ESCUCHAS,',
'       CONS.IMAGEN',
'FROM(SELECT EMPL.COD_EMPLEADO,',
'       initcap(EMPL.NOMBRE) NOMBRE,',
'       EMPL.COD_PERSONA,',
'       COUNT(*) CANT_ESCUCHAS,',
'       --COUNT(*)OVER(PARTITION BY C.COD_EMPRESA  ORDER BY C.COD_EMPRESA) escuchas2,',
'       ROUND(AVG(C.CALIFICACION_TOTAL))PROM_CALIF,',
'       SUM(COUNT(*))OVER(PARTITION BY C.COD_EMPRESA  ORDER BY C.COD_EMPRESA) TOTAL_ESCUCHAS,',
'       SYS.DBMS_LOB.GETLENGTH((SELECT F.IMAGEN FROM PERSONAS_FOTOS F WHERE F.COD_PERSONA = EMPL.COD_PERSONA  AND F.FECHA_ALTA =(SELECT MAX(F.FECHA_ALTA) FROM PERSONAS_FOTOS F WHERE F.COD_PERSONA = EMPL.COD_PERSONA)))IMAGEN',
'  FROM CA_MEDICION_CALIDAD_CAB C,',
'       (SELECT R.COD_EMPLEADO COD_EMPLEADO,',
'               P.NOMBRE NOMBRE,',
'               P.COD_PERSONA',
'  FROM RH_EMPLEADOS R,',
'       PERSONAS     P',
'WHERE P.COD_PERSONA =  R.COD_PERSONA',
'  AND R.COD_TIPO_AGENTE IS NOT NULL',
'UNION ',
'SELECT ''1'' COD_EMPLEADO,',
'       ''LORENA PAOLA OLMEDO HERRERA'' NOMBRE,',
'       ''''',
'  FROM DUAL',
'UNION',
'SELECT ''2'' COD_EMPLEADO,',
'       ''GUSTAVO ADRIAN AGUIRRE GONZALEZ'' NOMBRE,',
'       ''''',
'  FROM DUAL',
'        )EMPL',
'WHERE EMPL.COD_EMPLEADO = C.COD_AGENTE_EMPL',
'  AND TO_DATE(C.FECHA_HORA_LLAMADA) BETWEEN TO_DATE(:P156_FEC_DESDE,''DD/MM/YYYY'') AND TO_DATE(:P156_FEC_HASTA,''DD/MM/YYYY'') ',
'GROUP BY C.COD_EMPRESA,',
'         EMPL.COD_PERSONA,',
'         EMPL.COD_EMPLEADO,',
'         EMPL.NOMBRE)CONS',
'WHERE CONS.COD_EMPLEADO = :P156_COD_AGENTE',
' '))
,p_display_when_condition=>'P156_COD_AGENTE'
,p_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P156_COD_AGENTE'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(40137194923263664)
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
 p_id=>wwv_flow_imp.id(24237726046150738)
,p_query_column_id=>1
,p_column_alias=>'NOMBRE'
,p_column_display_sequence=>30
,p_column_heading=>'Nombre'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(24238165298150738)
,p_query_column_id=>2
,p_column_alias=>'COD_PERSONA'
,p_column_display_sequence=>90
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(24238549952150738)
,p_query_column_id=>3
,p_column_alias=>'CANT_ESCUCHAS'
,p_column_display_sequence=>50
,p_column_heading=>'Cant. Escuchas'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(24238955894150738)
,p_query_column_id=>4
,p_column_alias=>'PROM_CALIF'
,p_column_display_sequence=>60
,p_column_heading=>'Promedio Calif.'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(24239365482150738)
,p_query_column_id=>5
,p_column_alias=>'PORC_ESCUCHAS'
,p_column_display_sequence=>70
,p_column_heading=>'% Escuchas'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(24239708838150739)
,p_query_column_id=>6
,p_column_alias=>'IMAGEN'
,p_column_display_sequence=>80
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(58486995051506865)
,p_plug_name=>'Reporte'
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40108275410263656)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(58874363072502837)
,p_plug_name=>'Mediciones'
,p_region_name=>'MED'
,p_parent_plug_id=>wwv_flow_imp.id(58486995051506865)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select C.COD_EMPRESA,',
'       C.COD_MEDICION,',
'       T.DESCRIPCION TIPO_AGENTE,',
'       C.COD_TIPO_AGENTE,',
'       EMPL.NOMBRE||'' (''||C.COD_AGENTE_EMPL||'')'' AGENTE,',
'       C.COD_AGENTE_EMPL,',
'       C.FECHA_HORA_LLAMADA,',
'       C.ID_LLAMADA,',
'       C.CALIFICACION_TOTAL,',
'       C.OPERADOR,',
'       C.FEC_MEDICION,',
'       C.COD_CAMPANIA,',
'       CC.DESCRIPCION CAMPANHA, ',
'       C.COD_CANAL,',
'       CA.DESCRIPCION CANAL,',
'       C.OBSERVACION,',
'       CASE WHEN C.CALIFICACION_TOTAL BETWEEN 0 AND 84 THEN ',
'                 ''MEJORAR''',
'             WHEN C.CALIFICACION_TOTAL BETWEEN 85 AND 94 THEN',
'                 ''BUENO''',
'             WHEN C.CALIFICACION_TOTAL BETWEEN 95 AND 100 THEN ',
'                 ''EXCELENTE''',
'       END SITUACION,',
'',
'       ''x''DETALLES',
'  from CA_MEDICION_CALIDAD_CAB C,',
'  (SELECT R.COD_EMPLEADO COD_EMPLEADO,',
'          P.NOMBRE NOMBRE,',
'          R.COD_EMPRESA,',
'          P.COD_PERSONA',
'     FROM RH_EMPLEADOS R,',
'          PERSONAS     P',
'    WHERE P.COD_PERSONA =  R.COD_PERSONA',
'      AND R.COD_TIPO_AGENTE IS NOT NULL',
'    UNION ',
'   SELECT ''1'' COD_EMPLEADO,',
'          ''LORENA PAOLA OLMEDO HERRERA'' NOMBRE,',
'          ''1'' COD_EMPRESA,',
'          ''''',
'     FROM DUAL ',
'    UNION    ',
'   SELECT ''2'' COD_EMPLEADO,',
'          ''GUSTAVO ADRIAN AGUIRRE GONZALEZ'' NOMBRE,',
'          ''1'' COD_EMPRESA ,',
'          ''''',
'      FROM DUAL',
'    UNION    ',
'   SELECT ''3'' COD_EMPLEADO,',
'          ''ALEXIS ARMOA GARCIA'' NOMBRE,',
'          ''1'' COD_EMPRESA ,',
'          ''''',
'      FROM DUAL',
'      ',
'      ',
'      )EMPL,',
'    CA_TIPO_AGENTE T,',
'    CRM_CAMPANIA CC,',
'    CRM_CANAL  CA',
'WHERE EMPL.COD_EMPLEADO = C.COD_AGENTE_EMPL',
'  AND EMPL.COD_EMPRESA  = C.COD_EMPRESA',
'  AND T.COD_TIPO_AGENTE = C.COD_TIPO_AGENTE',
'  AND C.COD_CAMPANIA    = CC.COD_CAMPANIA(+)',
'  AND C.COD_CANAL       = CA.COD_CANAL   (+)',
'  AND TO_DATE(C.FECHA_HORA_LLAMADA,''DD/MM/YYYY'') BETWEEN TO_DATE(:P156_FEC_DESDE,''DD/MM/YYYY'') AND TO_DATE(:P156_FEC_HASTA,''DD/MM/YYYY'') ',
'',
'  AND (:P156_COD_AGENTE   IS NULL OR C.COD_AGENTE_EMPL = :P156_COD_AGENTE )',
'  AND (:P156_TIPO_AGENTE  IS NULL OR C.COD_TIPO_AGENTE = :P156_TIPO_AGENTE)',
'  AND (:P156_COD_CAMPANHA IS NULL OR C.COD_CAMPANIA   = :P156_COD_CAMPANHA)',
'  AND (:P156_COD_CANAL    IS NULL OR C.COD_CANAL      = :P156_COD_CANAL)'))
,p_plug_source_type=>'NATIVE_IR'
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
 p_id=>wwv_flow_imp.id(58874389428502838)
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
,p_internal_uid=>58874389428502838
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(24240721025150739)
,p_db_column_name=>'COD_EMPRESA'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Cod Empresa'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(24241126475150739)
,p_db_column_name=>'COD_MEDICION'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Cod Medicion'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(24241591574150740)
,p_db_column_name=>'TIPO_AGENTE'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Tipo Agente'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(24241950214150740)
,p_db_column_name=>'COD_TIPO_AGENTE'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Cod Tipo Agente'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(24242318680150740)
,p_db_column_name=>'AGENTE'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Agente'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(24242746284150740)
,p_db_column_name=>'COD_AGENTE_EMPL'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Cod Agente Empl'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(24243147498150740)
,p_db_column_name=>'FECHA_HORA_LLAMADA'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Fecha Hora Llamada'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_format_mask=>'DD/MM/YYYY HH24:MI:SS'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(24243591800150741)
,p_db_column_name=>'ID_LLAMADA'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Id Llamada'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(24243972293150741)
,p_db_column_name=>'CALIFICACION_TOTAL'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Calificacion Total'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(24244383897150741)
,p_db_column_name=>'OPERADOR'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Operador'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(24244743871150741)
,p_db_column_name=>'FEC_MEDICION'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Fec Medicion'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(24245167709150741)
,p_db_column_name=>'COD_CAMPANIA'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Cod Campania'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(24245573795150741)
,p_db_column_name=>'CAMPANHA'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>unistr('Campa\00F1a')
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(24245992984150741)
,p_db_column_name=>'COD_CANAL'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Cod Canal'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(24246385897150742)
,p_db_column_name=>'CANAL'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Canal'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(24246780000150742)
,p_db_column_name=>'OBSERVACION'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Observacion'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(24247548470150742)
,p_db_column_name=>'DETALLES'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'Detalles'
,p_column_link=>'f?p=&APP_ID.:157:&SESSION.::&DEBUG.::P157_MEDICION_COD:#COD_MEDICION#'
,p_column_linktext=>'<img src="#APP_FILES#evaluacion.png" width="20" height="20">'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(24674597988441340)
,p_db_column_name=>'SITUACION'
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>'Situacion'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(58932467512971148)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'152665'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'AGENTE:TIPO_AGENTE:ID_LLAMADA:FECHA_HORA_LLAMADA:CAMPANHA:CANAL:OBSERVACION:SITUACION:CALIFICACION_TOTAL:DETALLES'
,p_sort_column_1=>'AGENTE'
,p_sort_direction_1=>'ASC'
,p_sort_column_2=>'FECHA_HORA_LLAMADA'
,p_sort_direction_2=>'ASC'
,p_sort_column_3=>'0'
,p_sort_direction_3=>'ASC'
,p_sort_column_4=>'0'
,p_sort_direction_4=>'ASC'
,p_sort_column_5=>'0'
,p_sort_direction_5=>'ASC'
,p_sort_column_6=>'0'
,p_sort_direction_6=>'ASC'
,p_break_on=>'AGENTE'
,p_break_enabled_on=>'AGENTE'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(25366987696586751)
,p_report_id=>wwv_flow_imp.id(58932467512971148)
,p_name=>'Mejorar'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'SITUACION'
,p_operator=>'='
,p_expr=>'MEJORAR'
,p_condition_sql=>' (case when ("SITUACION" = #APXWS_EXPR#) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# = ''MEJORAR''  '
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_row_bg_color=>'#f20202'
,p_row_font_color=>'#ffffff'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(25366145519586750)
,p_report_id=>wwv_flow_imp.id(58932467512971148)
,p_name=>'Bueno'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'SITUACION'
,p_operator=>'='
,p_expr=>'BUENO'
,p_condition_sql=>' (case when ("SITUACION" = #APXWS_EXPR#) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# = ''BUENO''  '
,p_enabled=>'Y'
,p_highlight_sequence=>20
,p_row_bg_color=>'#f1c40f'
,p_row_font_color=>'#000000'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(25366522753586750)
,p_report_id=>wwv_flow_imp.id(58932467512971148)
,p_name=>'Excelente'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'SITUACION'
,p_operator=>'='
,p_expr=>'EXCELENTE'
,p_condition_sql=>' (case when ("SITUACION" = #APXWS_EXPR#) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# = ''EXCELENTE''  '
,p_enabled=>'Y'
,p_highlight_sequence=>30
,p_row_bg_color=>'#239f31'
,p_row_font_color=>'#ffffff'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(58759066633561525)
,p_plug_name=>'Reportes de Mediciones'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--compactTitle:t-BreadcrumbRegion--useRegionTitle'
,p_plug_template=>wwv_flow_imp.id(40134615190263663)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(58878132498502875)
,p_plug_name=>'Resumen'
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(58876864608502862)
,p_plug_name=>'Resumen'
,p_parent_plug_id=>wwv_flow_imp.id(58878132498502875)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT CONS.NOMBRE,',
'       CONS.COD_PERSONA,',
'       CONS.CANT_ESCUCHAS,',
'       CONS.PROM_CALIF,',
'       ROUND((CONS.CANT_ESCUCHAS * 100)/CONS.TOTAL_ESCUCHAS,2) PORC_ESCUCHAS,',
'       CONS.PROM_CALIF||''%'' PROME_CALIF,',
'       ROUND((CONS.CANT_ESCUCHAS * 100)/CONS.TOTAL_ESCUCHAS,2)||''%'' PORCE_ESCUCHAS,',
'       CONS.IMAGEN',
'FROM(SELECT EMPL.COD_EMPLEADO,',
'       initcap(EMPL.NOMBRE) NOMBRE,',
'       EMPL.COD_PERSONA,',
'       COUNT(*) CANT_ESCUCHAS,',
'       --COUNT(*)OVER(PARTITION BY C.COD_EMPRESA  ORDER BY C.COD_EMPRESA) escuchas2,',
'       ROUND(AVG(C.CALIFICACION_TOTAL))PROM_CALIF,',
'       SUM(COUNT(*))OVER(PARTITION BY C.COD_EMPRESA  ORDER BY C.COD_EMPRESA) TOTAL_ESCUCHAS,',
'       SYS.DBMS_LOB.GETLENGTH((SELECT F.IMAGEN FROM PERSONAS_FOTOS F WHERE F.COD_PERSONA = EMPL.COD_PERSONA  AND F.FECHA_ALTA =(SELECT MAX(F.FECHA_ALTA) FROM PERSONAS_FOTOS F WHERE F.COD_PERSONA = EMPL.COD_PERSONA)))IMAGEN',
'  FROM CA_MEDICION_CALIDAD_CAB C,',
'       (SELECT R.COD_EMPLEADO COD_EMPLEADO,',
'               P.NOMBRE NOMBRE,',
'               P.COD_PERSONA',
'  FROM RH_EMPLEADOS R,',
'       PERSONAS     P',
'WHERE P.COD_PERSONA =  R.COD_PERSONA',
'  AND R.COD_TIPO_AGENTE IS NOT NULL',
'UNION ',
'SELECT ''1'' COD_EMPLEADO,',
'       ''LORENA PAOLA OLMEDO HERRERA'' NOMBRE,',
'       ''''',
'  FROM DUAL',
'  UNION',
'SELECT ''2'' COD_EMPLEADO,',
'      ''GUSTAVO ADRIAN AGUIRRE GONZALEZ'' NOMBRE,',
'      ''''',
'  FROM DUAL',
'  UNION',
'SELECT ''3'' COD_EMPLEADO,',
'      ''ALEXIS ARMOA GARCIA'' NOMBRE,',
'      ''''',
'  FROM DUAL',
'',
'',
'  ',
'        )EMPL',
'WHERE EMPL.COD_EMPLEADO = C.COD_AGENTE_EMPL',
'  AND TO_DATE(C.FECHA_HORA_LLAMADA) BETWEEN TO_DATE(:P156_FEC_DESDE,''DD/MM/YYYY'') AND TO_DATE(:P156_FEC_HASTA,''DD/MM/YYYY'') ',
'GROUP BY C.COD_EMPRESA,',
'         EMPL.COD_PERSONA,',
'         EMPL.COD_EMPLEADO,',
'         EMPL.NOMBRE)CONS'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Resumen'
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
 p_id=>wwv_flow_imp.id(58876911215502863)
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
,p_internal_uid=>58876911215502863
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(24230032361150734)
,p_db_column_name=>'NOMBRE'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Agente'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(24230490244150734)
,p_db_column_name=>'COD_PERSONA'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Cod Persona'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(24230875175150734)
,p_db_column_name=>'CANT_ESCUCHAS'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Cant. Escucha(s)'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(24231210494150734)
,p_db_column_name=>'PROM_CALIF'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Promedio Calif.'
,p_column_html_expression=>'#PROME_CALIF#'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(24231625890150734)
,p_db_column_name=>'IMAGEN'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Imagen'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(24232097302150735)
,p_db_column_name=>'PORC_ESCUCHAS'
,p_display_order=>70
,p_column_identifier=>'I'
,p_column_label=>'%Escuchas'
,p_column_html_expression=>'#PORCE_ESCUCHAS#'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(24232437944150735)
,p_db_column_name=>'PROME_CALIF'
,p_display_order=>80
,p_column_identifier=>'J'
,p_column_label=>'Prome Calif'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(24232839000150735)
,p_db_column_name=>'PORCE_ESCUCHAS'
,p_display_order=>90
,p_column_identifier=>'K'
,p_column_label=>'Porce Escuchas'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(58945742182317974)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'152798'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'NOMBRE:CANT_ESCUCHAS:PROM_CALIF:PORC_ESCUCHAS:PORCE_ESCUCHAS:PROME_CALIF:'
,p_sum_columns_on_break=>'CANT_ESCUCHAS:PORC_ESCUCHAS'
,p_avg_columns_on_break=>'PROM_CALIF'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(24233852311150736)
,p_button_sequence=>100
,p_button_plug_id=>wwv_flow_imp.id(58483636692506831)
,p_button_name=>'EJECUTAR'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--simple:t-Button--iconRight:t-Button--stretch:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Ejecutar'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(24234273882150736)
,p_name=>'P156_COD_AGENTE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(58483636692506831)
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
'--   AND E.ACTIVO = ''S''',
'   AND D.COD_DEPARTAMENTO in(''1502'',''1503'')',
'   AND E.COD_TIPO_AGENTE IS NOT NULL ',
'',
'UNION ',
'SELECT ''1 - LORENA PAOLA OLMEDO HERRERA'' D ,',
'        TO_NUMBER(''1'') R',
'   FROM DUAL ',
' union',
'SELECT ''2 - GUSTAVO ADRIAN AGUIRRE GONZALEZ'' D ,',
'        TO_NUMBER(''2'') R',
'   FROM DUAL ',
'',
'  UNION',
'SELECT ''3 - ALEXIS ARMOA GARCIA'' D ,TO_NUMBER(''3'') R',
'   FROM DUAL ',
'  order by R'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'Y'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
,p_attribute_08=>'600'
,p_attribute_09=>'400'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(24234684934150736)
,p_name=>'P156_AGENTE_NOM'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(58483636692506831)
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(24235097015150736)
,p_name=>'P156_FEC_DESDE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(58483636692506831)
,p_prompt=>'Fecha Desde'
,p_format_mask=>'DD/MM/YYYY'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--preTextBlock:t-Form-fieldContainer--postTextBlock'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(24235461358150736)
,p_name=>'P156_FEC_HASTA'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(58483636692506831)
,p_prompt=>'Fecha Hasta'
,p_format_mask=>'DD/MM/YYYY'
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
 p_id=>wwv_flow_imp.id(24235800501150737)
,p_name=>'P156_TIPO_AGENTE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(58483636692506831)
,p_prompt=>'Tipo de Agente'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LV_TIPO_AGENTE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT C.COD_TIPO_AGENTE||''-''||initcap(C.DESCRIPCION) D,',
'       C.COD_TIPO_AGENTE R',
'  FROM CA_TIPO_AGENTE C',
' WHERE C.COD_EMPRESA = ''1'''))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'Todos los Tipos'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(24236246211150737)
,p_name=>'P156_COD_CAMPANHA'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(58483636692506831)
,p_prompt=>unistr('Campa\00F1a')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LOV_CAMPANIA_COD'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT C.COD_CAMPANIA||''-''||C.DESCRIPCION D,',
'       C.COD_CAMPANIA R ',
' FROM CRM_CAMPANIA C ',
'WHERE C.COD_EMPRESA = ''1''--:P_COD_EMPRESA',
'  AND C.ACTIVO = ''S'''))
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'Y'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
,p_attribute_08=>'600'
,p_attribute_09=>'400'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(24236683494150737)
,p_name=>'P156_CAMPANHA_DESC'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(58483636692506831)
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(24237056684150737)
,p_name=>'P156_COD_CANAL'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(58483636692506831)
,p_prompt=>'Canal'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select DISTINCT T.COD_CANAL||''-''||T.DESCRIPCION D ,',
'       T.COD_CANAL R',
'  from CRM_CANAL T,',
'       CRM_CAM_CAN_MOT CC',
' WHERE T.COD_CANAL = CC.COD_CANAL',
'   AND CC.COD_CAMPANIA = :P156_COD_CAMPANHA'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'Todos los canales'
,p_lov_cascade_parent_items=>'P156_COD_CAMPANHA'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp.component_end;
end;
/
begin
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.04.12'
,p_release=>'22.1.0'
,p_default_workspace_id=>2715162693355865
,p_default_application_id=>122
,p_default_id_offset=>0
,p_default_owner=>'INV'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(24249591928150744)
,p_validation_name=>'Validar Fecha Desde'
,p_validation_sequence=>10
,p_validation=>'P156_FEC_DESDE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Debe especificar Fecha Inicial'
,p_associated_item=>wwv_flow_imp.id(24235097015150736)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(24249933013150744)
,p_validation_name=>'Validar Fecha Hasta'
,p_validation_sequence=>20
,p_validation=>'P156_FEC_HASTA'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Debe especificar la Fecha Final'
,p_associated_item=>wwv_flow_imp.id(24235461358150736)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(24250250052150744)
,p_name=>'Cambiar_Cod_Agente'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P156_COD_AGENTE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(24250799567150744)
,p_event_id=>wwv_flow_imp.id(24250250052150744)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'CARMECA.PROCBD_TRAE_NOM(''1'',',
'                        :P156_COD_AGENTE,',
'                        :P156_AGENTE_NOM);'))
,p_attribute_02=>'P156_COD_AGENTE'
,p_attribute_03=>'P156_AGENTE_NOM'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(24251144282150744)
,p_name=>'Cambiar_Fecha_Desde'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P156_FEC_DESDE'
,p_condition_element=>'P156_FEC_DESDE'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'677768'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(24251621980150744)
,p_event_id=>wwv_flow_imp.id(24251144282150744)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P156_FEC_DESDE'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'IF :P156_FEC_DESDE IS NOT NULL THEN ',
'  RETURN FUNCDB_TRAER_FECHA(:P156_FEC_DESDE);',
'END IF; ',
'end ;'))
,p_attribute_07=>'P156_FEC_DESDE'
,p_attribute_08=>'N'
,p_attribute_09=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(24252080095150744)
,p_name=>'Cambiar_Fecha_Fin'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P156_FEC_HASTA'
,p_condition_element=>'P156_FEC_HASTA'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'687637676'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(24252597954150745)
,p_event_id=>wwv_flow_imp.id(24252080095150744)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P156_FEC_HASTA'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'IF :P156_FEC_HASTA IS NOT NULL THEN ',
'  RETURN FUNCDB_TRAER_FECHA(:P156_FEC_HASTA);',
'END IF; ',
'end ;',
''))
,p_attribute_07=>'P156_FEC_HASTA'
,p_attribute_08=>'N'
,p_attribute_09=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(24252911107150745)
,p_name=>'Cambiar_Cod_Campanha'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P156_COD_CAMPANHA'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(24253479246150745)
,p_event_id=>wwv_flow_imp.id(24252911107150745)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'CARMECA.PROCBD_TRAE_CAMPANHA(:P156_COD_CAMPANHA,',
'                             :P156_CAMPANHA_DESC',
'                             );'))
,p_attribute_02=>'P156_COD_CAMPANHA'
,p_attribute_03=>'P156_CAMPANHA_DESC'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp.component_end;
end;
/
