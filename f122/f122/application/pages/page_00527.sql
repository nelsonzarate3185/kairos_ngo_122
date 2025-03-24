prompt --application/pages/page_00527
begin
--   Manifest
--     PAGE: 00527
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
 p_id=>527
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Cronograma Auditoria - COCROAUD'
,p_alias=>'COCROAUD-BUSQ'
,p_step_title=>'Cronograma Auditoria - COCROAUD'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.a-IRR-header  a , #checktext {color: #FFED00; }',
'.a-IRR-header {    background-color: #003A85  ;',
'background-image: #003A85  /*linear-gradient(180deg, #fff8b7 0%, #FFFB7D 100%)*/;',
' ',
'}',
'',
'#filtros { ',
'                        background: #082b642f!important;',
'                    } ',
'  ',
'  .t-Form-label{',
'                color:  #003A85  !important;  ',
'                font-weight: bold;   ',
'                } '))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'PABLOALV'
,p_last_upd_yyyymmddhh24miss=>'20241101102416'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(156685073707798648)
,p_plug_name=>'FILTROS'
,p_region_name=>'filtros'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>1020
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(156685194300798649)
,p_plug_name=>'REPORTE'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>1030
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    NULL SELECCIONAR,',
'    ROWID ROW_ID_EJERCICIO,',
'    cod_empresa,',
'    cod_ejercicio,',
'   (SELECT COD_aREA || '' - '' || DESCRIPCION D ',
'FROM CO_AREAS a',
'WHERE COD_EMPRESA = a.COD_EMPRESA',
'and a.cod_area=c.codigo_area) codigo_area,',
'    (',
'SELECT COD_CONTROL || '' - '' || DESCRIPCION      ',
'FROM CO_controles cc',
'WHERE COD_EMPRESA = c.COD_EMPRESA',
'and cc.cod_control=c.cod_control )cod_control,',
'    referencia_cruzada,',
'    documentacion_requerida,',
'    fecha_inicio,',
'    fecha_fin,',
'    fecha_inicio_real,',
'    fecha_fin_real,',
'    estado,',
'    cod_auditor_asignado,',
'    cod_auditor_realizado,',
'    cod_supervisor,',
'    fecha_alta,',
'    cod_usuario,',
'    comentario,',
'    comentario_final,',
'    tipo_control,',
'    riesgo,',
'    id_registro,',
'    fecha_supervicion_final,',
'    fecha_supervicion_inicial,',
'    DECODE(NVL(ind_planificado,''N''),''N'',''NO'',''SI'')ind_planificado,',
'    fecha_envio_informe,',
'    empresa,',
'    fecha_respuesta_area,',
'    cod_auditor_enviado,',
'    fecha_envio_directorio,',
'    fecha_respuesta_directorio,',
'    codigo_informe_directorio,',
'    ruta_informe_directorio,',
'    CASE WHEN fecha_inicio< TRUNC(SYSDATE) AND ESTADO=''PENDIENTE'' THEN ''VENCIDO''',
'        ELSE ESTADO',
'    END ESTADO_2',
'FROM  co_cronograma_auditoria c',
'WHERE (cod_ejercicio = :P527_COD_EJERCICIO OR :P527_COD_EJERCICIO IS NULL)',
'AND :P527_IND_REP_EJERCICIOS = ''1''',
'AND ((empresa=''NGO'' AND :P527_EMPRESA_NGO =''S'')',
'OR (empresa=''CPH'' AND :P527_EMPRESA_CPH = ''S'')',
'OR (empresa=''TF'' AND :P527_EMPRESA_TF = ''S'')',
'OR (EMPRESA=''GANADERA'' AND :P527_GANADERA=''S'')',
'OR (EMPRESA=''BH'' AND :P527_EMPRESA_BH =''S''))',
'ORDER BY FECHA_INICIO asc, codigo_Area;',
'',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P527_COD_EJERCICIO,P527_IND_REP_EJERCICIOS,P527_EMPRESA_NGO,P527_EMPRESA_CPH,P527_EMPRESA_TF,P527_EMPRESA_BH,P527_GANADERA'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'REPORTE'
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
 p_id=>wwv_flow_imp.id(157618779082917007)
,p_max_row_count=>'1000000'
,p_allow_save_rpt_public=>'Y'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'EMILIANOP'
,p_internal_uid=>157618779082917007
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(157618830223917008)
,p_db_column_name=>'SELECCIONAR'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Edit'
,p_column_link=>'javascript:$s(''P527_ROW_ID_EJERCICIO_SEL'',''#ROW_ID_EJERCICIO#'');'
,p_column_linktext=>'<span aria-hidden="true" class="fa fa-edit"></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(157618934388917009)
,p_db_column_name=>'COD_EMPRESA'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Cod Empresa'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(157619045429917010)
,p_db_column_name=>'COD_EJERCICIO'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>unistr('A\00F1o')
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(157619151997917011)
,p_db_column_name=>'CODIGO_AREA'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Codigo Area'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(157619260902917012)
,p_db_column_name=>'COD_CONTROL'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Codigo Control'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(157619334538917013)
,p_db_column_name=>'REFERENCIA_CRUZADA'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Referencia Cruzada'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(157619443919917014)
,p_db_column_name=>'DOCUMENTACION_REQUERIDA'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Documentacion Requerida'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(157619551742917015)
,p_db_column_name=>'FECHA_INICIO'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Fecha Inicio'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(157619650605917016)
,p_db_column_name=>'FECHA_FIN'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Fecha Fin'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(157619709153917017)
,p_db_column_name=>'FECHA_INICIO_REAL'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Fecha Inicio Real'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(157619827479917018)
,p_db_column_name=>'FECHA_FIN_REAL'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Fecha Fin Real'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(157619943937917019)
,p_db_column_name=>'ESTADO'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Estado'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(157620017039917020)
,p_db_column_name=>'COD_AUDITOR_ASIGNADO'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Auditor Asignado'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'CENTER'
,p_rpt_named_lov=>wwv_flow_imp.id(157718662397356757)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(157620112405917021)
,p_db_column_name=>'COD_AUDITOR_REALIZADO'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Auditor Realizado'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'CENTER'
,p_rpt_named_lov=>wwv_flow_imp.id(157718662397356757)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(157620226261917022)
,p_db_column_name=>'COD_SUPERVISOR'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Supervisor'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'CENTER'
,p_rpt_named_lov=>wwv_flow_imp.id(157718662397356757)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(157620353082917023)
,p_db_column_name=>'FECHA_ALTA'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Fecha Alta'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(157620488303917024)
,p_db_column_name=>'COD_USUARIO'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Cod Usuario'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(157620565831917025)
,p_db_column_name=>'COMENTARIO'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'Comentario'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(157620603475917026)
,p_db_column_name=>'COMENTARIO_FINAL'
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>'Comentario Final'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(157620762635917027)
,p_db_column_name=>'TIPO_CONTROL'
,p_display_order=>200
,p_column_identifier=>'T'
,p_column_label=>'Tipo Control'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(157620892355917028)
,p_db_column_name=>'RIESGO'
,p_display_order=>210
,p_column_identifier=>'U'
,p_column_label=>'Riesgo'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(157620958142917029)
,p_db_column_name=>'ID_REGISTRO'
,p_display_order=>220
,p_column_identifier=>'V'
,p_column_label=>'Id Registro'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(157621008834917030)
,p_db_column_name=>'FECHA_SUPERVICION_FINAL'
,p_display_order=>230
,p_column_identifier=>'W'
,p_column_label=>'Fecha Supervicion Final'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(157621163388917031)
,p_db_column_name=>'FECHA_SUPERVICION_INICIAL'
,p_display_order=>240
,p_column_identifier=>'X'
,p_column_label=>'Fecha Supervicion Inicial'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(157621254505917032)
,p_db_column_name=>'IND_PLANIFICADO'
,p_display_order=>250
,p_column_identifier=>'Y'
,p_column_label=>'Planificado'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(157621348690917033)
,p_db_column_name=>'FECHA_ENVIO_INFORME'
,p_display_order=>260
,p_column_identifier=>'Z'
,p_column_label=>'Fecha Envio Informe'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(157621406466917034)
,p_db_column_name=>'EMPRESA'
,p_display_order=>270
,p_column_identifier=>'AA'
,p_column_label=>'Empresa'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(157621569296917035)
,p_db_column_name=>'FECHA_RESPUESTA_AREA'
,p_display_order=>280
,p_column_identifier=>'AB'
,p_column_label=>'Fecha Respuesta Area'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(157621635767917036)
,p_db_column_name=>'COD_AUDITOR_ENVIADO'
,p_display_order=>290
,p_column_identifier=>'AC'
,p_column_label=>'Cod Auditor Enviado'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(157621762055917037)
,p_db_column_name=>'FECHA_ENVIO_DIRECTORIO'
,p_display_order=>300
,p_column_identifier=>'AD'
,p_column_label=>'Fecha Envio Directorio'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(157621884994917038)
,p_db_column_name=>'FECHA_RESPUESTA_DIRECTORIO'
,p_display_order=>310
,p_column_identifier=>'AE'
,p_column_label=>'Fecha Respuesta Directorio'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(157621989575917039)
,p_db_column_name=>'CODIGO_INFORME_DIRECTORIO'
,p_display_order=>320
,p_column_identifier=>'AF'
,p_column_label=>'Codigo Informe Directorio'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(157622078238917040)
,p_db_column_name=>'RUTA_INFORME_DIRECTORIO'
,p_display_order=>330
,p_column_identifier=>'AG'
,p_column_label=>'Ruta Informe Directorio'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(157701160322482814)
,p_db_column_name=>'ROW_ID_EJERCICIO'
,p_display_order=>340
,p_column_identifier=>'AH'
,p_column_label=>'Row Id Ejercicio'
,p_column_type=>'OTHER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(379343654496055039)
,p_db_column_name=>'ESTADO_2'
,p_display_order=>350
,p_column_identifier=>'AI'
,p_column_label=>'Estado 2'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(157690218390560020)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1576903'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'SELECCIONAR:COD_EJERCICIO:ID_REGISTRO:FECHA_INICIO:FECHA_FIN:ESTADO:COD_AUDITOR_ASIGNADO:COD_AUDITOR_REALIZADO:COD_SUPERVISOR:TIPO_CONTROL:EMPRESA:COD_CONTROL:COMENTARIO:IND_PLANIFICADO:'
,p_sort_column_1=>'ID_REGISTRO'
,p_sort_direction_1=>'DESC'
,p_sort_column_2=>'ESTADO'
,p_sort_direction_2=>'ASC'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(439753085984062292)
,p_report_id=>wwv_flow_imp.id(157690218390560020)
,p_name=>'ANULADOS'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'ESTADO'
,p_operator=>'='
,p_expr=>'ANULADO'
,p_condition_sql=>' (case when ("ESTADO" = #APXWS_EXPR#) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# = ''ANULADO''  '
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_row_bg_color=>'#f4acb7'
,p_row_font_color=>'#000000'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(439753448590062292)
,p_report_id=>wwv_flow_imp.id(157690218390560020)
,p_name=>'BORRADOR DEVUELTO'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'ESTADO'
,p_operator=>'='
,p_expr=>'BORRADOR_DEVUELTO'
,p_condition_sql=>' (case when ("ESTADO" = #APXWS_EXPR#) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# = ''BORRADOR_DEVUELTO''  '
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_row_bg_color=>'#cce5ff'
,p_row_font_color=>'#000000'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(439753890927062292)
,p_report_id=>wwv_flow_imp.id(157690218390560020)
,p_name=>'EN PROCESO'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'ESTADO'
,p_operator=>'='
,p_expr=>'EN PROCESO'
,p_condition_sql=>' (case when ("ESTADO" = #APXWS_EXPR#) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# = ''EN PROCESO''  '
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_row_bg_color=>'#fffdce'
,p_row_font_color=>'#000000'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(439754280698062292)
,p_report_id=>wwv_flow_imp.id(157690218390560020)
,p_name=>'ENVIADO AREA'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'ESTADO'
,p_operator=>'='
,p_expr=>'ENVIADO_AREA'
,p_condition_sql=>' (case when ("ESTADO" = #APXWS_EXPR#) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# = ''ENVIADO_AREA''  '
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_row_bg_color=>'#d0f1cc'
,p_row_font_color=>'#000000'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(439754645688062293)
,p_report_id=>wwv_flow_imp.id(157690218390560020)
,p_name=>'FINALIZADO'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'ESTADO'
,p_operator=>'='
,p_expr=>'FINALIZADO'
,p_condition_sql=>' (case when ("ESTADO" = #APXWS_EXPR#) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# = ''FINALIZADO''  '
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_row_bg_color=>'#e8e8e8'
,p_row_font_color=>'#000000'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(439755098445062293)
,p_report_id=>wwv_flow_imp.id(157690218390560020)
,p_name=>'INFORME BORRADOR'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'ESTADO'
,p_operator=>'='
,p_expr=>'INFORME_BORRADOR'
,p_condition_sql=>' (case when ("ESTADO" = #APXWS_EXPR#) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# = ''INFORME_BORRADOR''  '
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_row_bg_color=>'#ffd68a'
,p_row_font_color=>'#000000'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(439755456734062293)
,p_report_id=>wwv_flow_imp.id(157690218390560020)
,p_name=>'VENCIDO'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'ESTADO_2'
,p_operator=>'='
,p_expr=>'VENCIDO'
,p_condition_sql=>' (case when ("ESTADO_2" = #APXWS_EXPR#) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# = ''VENCIDO''  '
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_row_bg_color=>'#ff503f'
,p_row_font_color=>'#000000'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(157622198977917041)
,p_plug_name=>'INDICADORES'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>1010
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(157622858837917048)
,p_plug_name=>'VARIABLES'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>990
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(157701294194482815)
,p_plug_name=>'SEQ/ROW'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>1000
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(157702401996482827)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_imp.id(156685073707798648)
,p_button_name=>'BTN_CREAR'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--simple:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Crear Control'
,p_button_redirect_url=>'f?p=&APP_ID.:525:&SESSION.::&DEBUG.::P525_P_ROW_ID_EJERCICIO:'
,p_button_css_classes=>'u-color-42-text'
,p_button_cattributes=>'style="width:130px;"'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(157618214577917002)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_imp.id(156685073707798648)
,p_button_name=>'BTN_BUSCAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--simple:t-Button--iconRight:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Buscar'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-search'
,p_button_cattributes=>'style="margin-left:40px;width:130px;"'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(157701991505482822)
,p_button_sequence=>90
,p_button_plug_id=>wwv_flow_imp.id(156685073707798648)
,p_button_name=>'BTN_LIMPIAR_CAMPOS'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--simple:t-Button--iconRight:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Limpiar Campos'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-trash-o'
,p_button_cattributes=>'style="margin-left:80px;width:130px;"'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(157701017837482813)
,p_button_sequence=>1030
,p_button_plug_id=>wwv_flow_imp.id(156685194300798649)
,p_button_name=>'BTN_VOLVER'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--simple:t-Button--iconRight:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Volver'
,p_button_position=>'BOTTOM'
,p_button_redirect_url=>'f?p=&APP_ID.:525:&SESSION.::&DEBUG.:::'
,p_icon_css_classes=>'fa-arrow-left'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(157701627879482819)
,p_branch_name=>'BR_IR_PAG_525'
,p_branch_action=>'f?p=&APP_ID.:525:&SESSION.::&DEBUG.::P525_P_ROW_ID_EJERCICIO:&P527_ROW_ID_EJERCICIO_SEL.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'BEFORE_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
,p_branch_condition_type=>'REQUEST_EQUALS_CONDITION'
,p_branch_condition=>'SELECCIONAR'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(76098408531162810)
,p_name=>'P527_GANADERA'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(156685073707798648)
,p_prompt=>'GANADERA'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large:margin-top-md'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(156685212372798650)
,p_name=>'P527_COD_EJERCICIO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(156685073707798648)
,p_prompt=>unistr('A\00F1o')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_colspan=>2
,p_grid_column=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(157618153825917001)
,p_name=>'P527_EMPRESA_NGO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(156685073707798648)
,p_prompt=>'NGO'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_begin_on_new_line=>'N'
,p_grid_column=>3
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large:margin-top-md'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(157618511220917005)
,p_name=>'P527_EMPRESA_CPH'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(156685073707798648)
,p_prompt=>'CPH'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large:margin-top-md'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(157618692286917006)
,p_name=>'P527_EMPRESA_TF'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(156685073707798648)
,p_prompt=>'TF'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large:margin-top-md'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(157622290197917042)
,p_name=>'P527_IND_REP_EJERCICIOS'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(157622198977917041)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(157622908750917049)
,p_name=>'P527_COD_MODULO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(157622858837917048)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(157623093705917050)
,p_name=>'P527_COD_FORMA'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(157622858837917048)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(157699898328482801)
,p_name=>'P527_VER_NGO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(157622858837917048)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(157699974103482802)
,p_name=>'P527_VER_CPH'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(157622858837917048)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(157700054352482803)
,p_name=>'P527_VER_TF'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(157622858837917048)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(157701304092482816)
,p_name=>'P527_ROW_ID_EJERCICIO_SEL'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(157701294194482815)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(891488655485281902)
,p_name=>'P527_VER_BH'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(157622858837917048)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(891488792966281903)
,p_name=>'P527_EMPRESA_BH'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(156685073707798648)
,p_prompt=>'BH'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large:margin-top-md'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(157622391726917043)
,p_name=>'DA_BUSCAR_EJERCICIO'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(157618214577917002)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(157622498182917044)
,p_event_id=>wwv_flow_imp.id(157622391726917043)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    :P527_IND_REP_EJERCICIOS := ''1'';',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;',
''))
,p_attribute_02=>'P527_EMPRESA_NGO,P527_EMPRESA_CPH,P527_EMPRESA_TF,P527_EMPRESA_BH'
,p_attribute_03=>'P527_IND_REP_EJERCICIOS'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(157622542233917045)
,p_event_id=>wwv_flow_imp.id(157622391726917043)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(156685194300798649)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(157700153314482804)
,p_name=>'DA_HABILITAR_CHECKBOX'
,p_event_sequence=>20
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(157700227698482805)
,p_event_id=>wwv_flow_imp.id(157700153314482804)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P527_EMPRESA_NGO'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P527_VER_NGO'
,p_client_condition_expression=>'S'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(157700587486482808)
,p_event_id=>wwv_flow_imp.id(157700153314482804)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P527_EMPRESA_CPH'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P527_VER_CPH'
,p_client_condition_expression=>'S'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(157700613636482809)
,p_event_id=>wwv_flow_imp.id(157700153314482804)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P527_EMPRESA_TF'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P527_VER_TF'
,p_client_condition_expression=>'S'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(891488890263281904)
,p_event_id=>wwv_flow_imp.id(157700153314482804)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P527_EMPRESA_BH'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P527_VER_BH'
,p_client_condition_expression=>'S'
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
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(157700845643482811)
,p_event_id=>wwv_flow_imp.id(157700153314482804)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P527_EMPRESA_CPH'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P527_VER_CPH'
,p_client_condition_expression=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(157700755616482810)
,p_event_id=>wwv_flow_imp.id(157700153314482804)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P527_EMPRESA_NGO'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P527_VER_NGO'
,p_client_condition_expression=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(157700912286482812)
,p_event_id=>wwv_flow_imp.id(157700153314482804)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P527_EMPRESA_TF'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P527_VER_TF'
,p_client_condition_expression=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(891488984102281905)
,p_event_id=>wwv_flow_imp.id(157700153314482804)
,p_event_result=>'TRUE'
,p_action_sequence=>90
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P527_EMPRESA_BH'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P527_VER_BH'
,p_client_condition_expression=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(157701416350482817)
,p_name=>'DA_IR_PAG_525'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P527_ROW_ID_EJERCICIO_SEL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(157701575334482818)
,p_event_id=>wwv_flow_imp.id(157701416350482817)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_01=>'SELECCIONAR'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(157702091141482823)
,p_name=>'DA_LIMPIAR_CAMPOS'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(157701991505482822)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(157702199717482824)
,p_event_id=>wwv_flow_imp.id(157702091141482823)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(157622697070917046)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'PR_LIMPIAR_CAMPOS'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_process_is_stateful_y_n=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(157622773629917047)
,p_process_sequence=>20
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_INIT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    :P527_COD_MODULO := ''CO'';',
'    :P527_COD_FORMA := ''COCROAUD'';',
'',
'    :P527_VER_NGO := busca_permiso (:P_COD_EMPRESA,',
'                                    :P525_COD_FORMA,',
'                                    :P_COD_USUARIO,',
'                                    ''VER_NGO'');',
'',
'    :P527_VER_CPH := busca_permiso (:P_COD_EMPRESA,',
'                                    :P525_COD_FORMA,',
'                                    :P_COD_USUARIO,',
'                                    ''VER_CPH'');',
'',
'    :P527_VER_TF := busca_permiso (:P_COD_EMPRESA,',
'                                   :P525_COD_FORMA,',
'                                   :P_COD_USUARIO,',
'                                   ''VER_TF'');',
'    :P527_VER_BH := busca_permiso (:P_COD_EMPRESA,',
'                                   :P525_COD_FORMA,',
'                                   :P_COD_USUARIO,',
'                                   ''VER_BH'');                                   ',
'',
'',
'    --- PRUEBA ---',
'    :P527_VER_NGO := ''S'';',
'    :P527_VER_CPH := ''S'';',
'    :P527_VER_TF := ''S'';',
'    :P527_VER_BH := ''S'';',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp.component_end;
end;
/
