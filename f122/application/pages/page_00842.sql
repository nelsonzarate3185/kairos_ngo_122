prompt --application/pages/page_00842
begin
--   Manifest
--     PAGE: 00842
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
 p_id=>842
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>unistr('Reporte Box Usuario Hist\00F3rico')
,p_step_title=>unistr('Reporte Box Usuario Hist\00F3rico')
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'    #reg_parametros{',
'            background-color: #003a85 !important;',
'            box-shadow: black 1px 1px 5px 1px;',
'            }',
' .a-IRR-header {',
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
,p_page_component_map=>'18'
,p_last_updated_by=>'PBOGADO'
,p_last_upd_yyyymmddhh24miss=>'20250214163137'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(481979450186003707)
,p_plug_name=>'Tickets Ingresados por Hora'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT COUNT(*) cantidad, to_char(s.fecha_alta, ''hh24'')  hora',
'          FROM ca_ticket_atencion s',
'         WHERE s.fecha BETWEEN :P842_FECHA_INI AND :P842_FECHA_FIN',
'         AND s.cod_tipo_cliente IS NOT NULL',
'         group by to_char(s.fecha_alta, ''hh24'')',
'         order by hora asc',
'',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P842_FECHA_INI,P842_FECHA_FIN'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Tickets Ingresados por Hora'
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
 p_id=>wwv_flow_imp.id(481979576702003708)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'PBOGADO'
,p_internal_uid=>481979576702003708
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(481980259732003715)
,p_db_column_name=>'CANTIDAD'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Cantidad'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(481980317195003716)
,p_db_column_name=>'HORA'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Hora'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(481989332247201760)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'4819894'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'CANTIDAD:HORA'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(481980472100003717)
,p_plug_name=>'Cantidad de Servicios Solicitados'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT COUNT(*) CANTIDAD, C.DESCRIPCION,case when  C.DESCRIPCION = ''AGENDAMIENTOS'' then ''gold''',
'                                                          when C.DESCRIPCION = ''PRODUCTOS A REPARAR'' then ''red'' ',
'                                                       when C.DESCRIPCION = ''RETIRO DE PRODUCTOS'' then ''green''',
unistr('                                                       when C.DESCRIPCION = ''GESTI\00D3N NCR'' then ''blue'''),
'                                                       else ''orange''',
'                                                     end colors ',
'  FROM ca_ticket_atencion a, ca_ticket_atencion_det b, ca_tickets_tipo c',
' WHERE a.id_ticket = b.id_ticket',
'   AND a.cod_empresa = ''1''',
'   AND c.cod_ticket = b.cod_tipo_ticket',
'    and A.fecha  BETWEEN :P842_FECHA_INI AND :P842_FECHA_FIN',
'    GROUP BY C.DESCRIPCION',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P842_FECHA_INI,P842_FECHA_FIN'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Cantidad de Servicios Solicitados'
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
 p_id=>wwv_flow_imp.id(481980565441003718)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'PBOGADO'
,p_internal_uid=>481980565441003718
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(481980608937003719)
,p_db_column_name=>'CANTIDAD'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Cantidad'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(481980858858003721)
,p_db_column_name=>'DESCRIPCION'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Descripcion'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(481980986719003722)
,p_db_column_name=>'COLORS'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Colors'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(481991874983410035)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'4819919'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'CANTIDAD:DESCRIPCION:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1237214428093579502)
,p_plug_name=>unistr('Promedio de Atenci\00F3n por Funcionario')
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT cod_usuario,',
'       ''Tiempo atendido por servicio: '' || pro_tiempo_atendido_servicio  pro_tiempo_atendido_servicio,',
'       ''Tiempo de Espera: '' || pro_tiempo_espera pro_tiempo_espera,',
unistr('       ''Tiempo de Atenci\00F3n: '' || pro_tiempo_atencion pro_tiempo_atencion,'),
'       ''Tiempo total: '' || pro_tiempo_total pro_tiempo_total,',
'       nombre',
'  FROM (SELECT cod_usuario,',
'               to_char(trunc(SYSDATE) + AVG(tiempo_atendido_servicio),',
'                       ''hh24:mi:ss'') pro_tiempo_atendido_servicio,',
'               to_char(trunc(SYSDATE) + AVG(tiempo_espera), ''hh24:mi:ss'') pro_tiempo_espera,',
'               to_char(trunc(SYSDATE) + AVG(tiempo_atencion), ''hh24:mi:ss'') pro_tiempo_atencion,',
'               to_char(trunc(SYSDATE) + AVG(tiempo_total), ''hh24:mi:ss'') pro_tiempo_total,',
'               nombre',
'          FROM (SELECT a.nro_ticket,',
'                       a.cod_cliente,',
'                       a.cod_usuario,',
'                       c.descripcion,',
'                       (b.hora_fin - b.hora_inicio) tiempo_atendido_servicio,',
'                       (l.hora_llamada - a.fecha_alta) tiempo_espera,',
'                       (nvl(a.fecha_cierre, SYSDATE) - l.hora_atencion) tiempo_atencion,',
'                       (nvl(a.fecha_cierre, SYSDATE) - a.fecha_alta) tiempo_total,',
'                       p.nombre',
'                  FROM ca_ticket_atencion     a,',
'                       ca_ticket_atencion_det b,',
'                       ca_tickets_tipo        c,',
'                       llamador_ticket        l,',
'                         usuarios u, personas p',
'                 WHERE a.id_ticket = b.id_ticket',
'                   AND a.cod_empresa = ''1''',
'                   AND c.cod_ticket = b.cod_tipo_ticket',
'                   AND a.id_ticket = l.id_ticket',
'                   AND a.fecha BETWEEN :P842_FECHA_INI AND :P842_FECHA_FIN',
'                   AND a.estado = ''FINALIZADO''',
'                   and u.cod_usuario = a.cod_usuario',
'                   and u.cod_persona = p.cod_persona',
'                ---- GROUP BY a.cod_usuario, c.descripcion, b.hora_inicio, b.hora_fin,a.cod_cliente',
'                )',
'         GROUP BY cod_usuario, nombre);'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P842_FECHA_INI,P842_FECHA_FIN'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>unistr('Promedio de Atenci\00F3n por Funcionario')
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
 p_id=>wwv_flow_imp.id(1237216468839579522)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'JUANSA'
,p_internal_uid=>1237216468839579522
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(481421010117528814)
,p_db_column_name=>'COD_USUARIO'
,p_display_order=>50
,p_column_identifier=>'W'
,p_column_label=>'Cod Usuario'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(481429948272559301)
,p_db_column_name=>'PRO_TIEMPO_ATENDIDO_SERVICIO'
,p_display_order=>60
,p_column_identifier=>'Z'
,p_column_label=>'Pro Tiempo Atendido Servicio'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(481430067647559302)
,p_db_column_name=>'PRO_TIEMPO_ESPERA'
,p_display_order=>70
,p_column_identifier=>'AA'
,p_column_label=>'Pro Tiempo Espera'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(481430103674559303)
,p_db_column_name=>'PRO_TIEMPO_ATENCION'
,p_display_order=>80
,p_column_identifier=>'AB'
,p_column_label=>'Pro Tiempo Atencion'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(481430214341559304)
,p_db_column_name=>'PRO_TIEMPO_TOTAL'
,p_display_order=>90
,p_column_identifier=>'AC'
,p_column_label=>'Pro Tiempo Total'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(481430343782559305)
,p_db_column_name=>'NOMBRE'
,p_display_order=>100
,p_column_identifier=>'AD'
,p_column_label=>'Nombre'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(1237619753049301729)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_type=>'REPORT'
,p_report_alias=>'2378783'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'NOMBRE:PRO_TIEMPO_ATENDIDO_SERVICIO:PRO_TIEMPO_ESPERA:PRO_TIEMPO_ATENCION:PRO_TIEMPO_TOTAL:'
,p_break_on=>'0:0:0:0:0'
,p_break_enabled_on=>'0:0:0:0:0'
,p_chart_type=>'bar'
,p_chart_label_column=>'COD_ORIGEN'
,p_chart_aggregate=>'SUM'
,p_chart_sorting=>'DEFAULT'
,p_chart_orientation=>'vertical'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1237215831277579516)
,p_plug_name=>'Parametros'
,p_region_name=>'reg_parametros'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_plug_template=>wwv_flow_imp.id(40134615190263663)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(481978891463003701)
,p_button_sequence=>110
,p_button_plug_id=>wwv_flow_imp.id(1237215831277579516)
,p_button_name=>'BUSCAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Buscar'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(481422814347528820)
,p_name=>'P842_FECHA_INI'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(1237215831277579516)
,p_prompt=>'Fecha desde:'
,p_format_mask=>'DD/MM/YYYY'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(481423289914528823)
,p_name=>'P842_FECHA_FIN'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(1237215831277579516)
,p_prompt=>'Fecha Hasta:'
,p_format_mask=>'DD/MM/YYYY'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(481423619908528823)
,p_name=>'P842_COD_CLIENTE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(1237215831277579516)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(481424096041528823)
,p_name=>'P842_ESTADO'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(1237215831277579516)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(481424426438528823)
,p_name=>'P842_OPERACION'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(1237215831277579516)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(481424851065528823)
,p_name=>'P842_DEPARTAMENTO'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(1237215831277579516)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(481425294681528823)
,p_name=>'P842_SUC_ENT'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(1237215831277579516)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(481425682215528823)
,p_name=>'P842_COD_ORIGEN'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(1237215831277579516)
,p_prompt=>'Origen'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_ORIGENES'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select  cod_origen R, cod_origen||'' - ''|| descripcion D',
'from vt_origenes ',
'where cod_empresa = :P_COD_EMPRESA',
'order by descripcion'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'TODOS'
,p_lov_null_value=>'T'
,p_cSize=>30
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'Y'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
,p_attribute_11=>','
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(481426026891528824)
,p_name=>'P842_IND_GARANTIA'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(1237215831277579516)
,p_prompt=>'Garantia/Particular'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC2:TODOS;T,GARANTIA;G,PARTICULAR;P'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(481427255951528834)
,p_name=>'da_fi_rr'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P842_FECHA_INI'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(481427763533528834)
,p_event_id=>wwv_flow_imp.id(481427255951528834)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(1237214428093579502)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(481428150716528834)
,p_name=>'da_ff_rr'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P842_FECHA_FIN'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(481428647429528834)
,p_event_id=>wwv_flow_imp.id(481428150716528834)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(1237214428093579502)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(481426411189528828)
,p_name=>'da_origen'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P842_COD_ORIGEN'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(481426852527528833)
,p_event_id=>wwv_flow_imp.id(481426411189528828)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(1237214428093579502)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(481429064789528834)
,p_name=>'da_ind_garantia'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P842_IND_GARANTIA'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(481429528354528834)
,p_event_id=>wwv_flow_imp.id(481429064789528834)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(1237214428093579502)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(481978952652003702)
,p_name=>'New'
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(481978891463003701)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(481979075658003703)
,p_event_id=>wwv_flow_imp.id(481978952652003702)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'var spinner = apex.util.showSpinner();'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(481979211384003705)
,p_event_id=>wwv_flow_imp.id(481978952652003702)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$("#apex_wait_overlay").remove();',
'$(".u-Processing").remove();'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(481979385740003706)
,p_event_id=>wwv_flow_imp.id(481978952652003702)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(481980472100003717)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1054047703779257001)
,p_event_id=>wwv_flow_imp.id(481978952652003702)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(481979450186003707)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1054047807673257002)
,p_event_id=>wwv_flow_imp.id(481978952652003702)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(1237214428093579502)
);
wwv_flow_imp.component_end;
end;
/
