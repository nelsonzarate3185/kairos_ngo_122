prompt --application/pages/page_00468
begin
--   Manifest
--     PAGE: 00468
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
 p_id=>468
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'TUR - Visualizador de Ticket por responsables'
,p_alias=>'VISUALIZADOR-TICKETS'
,p_step_title=>'Visualizador de Tickets'
,p_allow_duplicate_submissions=>'N'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function  refrescargrilla() {',
'    apex.item(''P468_ACTUALIZA_GRILLA'').setValue(1);',
'}'))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.a-CardView-badgeValue {',
'	font-size: large;',
'    font-weight: bold;',
'}',
'',
'.a-CardView-items--grid3col li{',
'  padding: 10px 10px 20px 10px;',
'  border: 1px solid #BFBFBF;',
'  background-color: white;',
'  box-shadow: 10px 10px 5px #aaaaaa;',
'}',
'',
'.a-CardView-item:hover {background-color: #001b3f}',
'',
'.a-CardView-item:active {',
'  background-color: #3e8e41;',
'  box-shadow: 0 5px #666;',
'  transform: translateY(4px);',
'}',
'',
'.t-Body-content{',
'  background-position: right bottom, left top;',
'  background-repeat: no-repeat, repeat;',
'  padding: 15px;',
'}',
'',
'  .t-Body {',
'      background-color: #001b3f;',
'  }',
'',
'.t-Body-mainContent, .t-Footer, .t-Header',
'                    { background-color:  #001b3f;',
'                    background-image:  linear-gradient(15deg, #0f4667 0%, #2a6973 150%)  !important;',
'                    }',
'',
'  ',
'#serv_selec .t-Region-body {padding: 0% !important;}',
'#serv_selec .a-ListView-item {',
'                                font-size: 20px !important;',
'                                color: #001d3d;    ',
'                             }',
'',
'.center{',
'  display: block;',
'  margin-left: auto;',
'  margin-right: auto;}',
'',
' ',
'#redirigir {',
'    display: none;',
'}',
'',
'',
'',
'.card_css',
'{background-color: #fbf8cc;',
'background-image: linear-gradient(0deg, #fbf8cc 0%, #97D9E1 100%);',
'',
'}',
'',
'',
'.card_css2',
'{background-color: #fbf5cc;',
'background-image: linear-gradient(0deg, #e3ddb8 0%, #76afd8 100%);',
'',
'}',
'',
'',
'.tkt_pausa{',
'	animation: colorPipe 2s linear alternate-reverse infinite; ',
'    margin: 0px;',
'    padding: 0px;',
'    height: 40px;',
'    }',
'',
'',
'    @keyframes colorPipe{',
'	0%{',
'		color: #fc0000;',
'		animation-timing-function: ease-out;',
'	}  ',
'    ',
'	30%{',
'		color: #000000;',
'		animation-timing-function: ease-out;',
'	}  ',
'    ',
'	60%{',
'		color: #fc0000 ;',
'		animation-timing-function: ease-out;',
'	}  ',
'	100%{',
'		color: #000000;',
'		animation-timing-function: ease-out;       ',
'	}',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'23'
,p_last_updated_by=>'CHARBA'
,p_last_upd_yyyymmddhh24miss=>'20240419144301'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(139854475275908245)
,p_plug_name=>'TICKETS PENDIENTES'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(72425703654335709)
,p_plug_name=>'Crear Ticket'
,p_parent_plug_id=>wwv_flow_imp.id(139854475275908245)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>50
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(137938614110472710)
,p_plug_name=>'Ticket Asignados'
,p_parent_plug_id=>wwv_flow_imp.id(139854475275908245)
,p_region_template_options=>'#DEFAULT#:t-CardsRegion--styleB:t-Form--stretchInputs:t-Form--leftLabels:t-Form--labelsAbove:margin-left-none:margin-right-none'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40100032401263654)
,p_plug_display_sequence=>80
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT  distinct ticket,',
'       cod_cliente,',
'       REGEXP_REPLACE(nombre, ''[^a-zA-Z0-9 ]'', NULL) nombre,',
'       tipo_ticket,',
'       serie,',
'       nro_ticket,',
'       id_ticket,',
'       cod_tipo_cliente,',
'       CASE',
'         WHEN cod_tipo_cliente = ''3'' THEN',
'          ''Cliente Preferencial''',
'         ELSE',
'          NULL',
'       END cliente,',
'       CASE',
'         WHEN cod_tipo_cliente = ''3'' THEN',
'          0',
'         ELSE',
'          1',
'       END orden,',
'       rownum ordenador,',
'       llamo,',
'       tic,',
'       ''Hora Ingreso ''||fecha_a fecha_a',
'  FROM (SELECT x.ticket,',
'               x.cod_cliente,',
'               x.nombre,',
'               x.tipo_ticket,',
'               x.serie,',
'               x.nro_ticket,',
'               x.id_ticket,',
'               rownum procesar,',
'               x.prioridad,',
'               x.cod_tipo_cliente,',
'               CASE',
'                 WHEN x.cod_tipo_cliente = ''3'' THEN',
'                  ''Cliente Preferencial''',
'                 ELSE',
'                  NULL',
'               END cliente,',
'               CASE',
'                 WHEN x.cod_tipo_cliente = ''3'' THEN',
'                  0',
'                 ELSE',
'                  1',
'               END orden,',
'               0  llamo,',
'               tic,',
'               x.fecha_a',
'        ',
'          FROM (SELECT ''Nro. Ticket: '' || a.ser_ticket || '''' || a.nro_ticket ticket,',
'                       a.cod_cliente,',
'                       p.nombre,',
'                       (SELECT listagg(c.descripcion, '',  '') within GROUP(ORDER BY rownum) descripcion',
'                          FROM ca_ticket_atencion     z,',
'                               ca_ticket_atencion_det d,',
'                               ca_tickets_tipo        c',
'                         WHERE z.id_ticket = d.id_ticket',
'                           AND z.cod_empresa = ''1''',
'                           AND c.cod_ticket = d.cod_tipo_ticket',
'                           AND z.id_ticket = a.id_ticket) tipo_ticket,',
'                       a.ser_ticket serie,',
'                       a.nro_ticket,',
'                       1 prioridad,',
'                       a.id_ticket,',
'                       a.fecha,',
'                       a.cod_tipo_cliente,',
'                       a.ser_ticket || '''' || a.nro_ticket tic,',
'                       to_char(a.fecha_alta, ''hh24:mi:ss'')  fecha_a',
'                  FROM ca_ticket_atencion a,',
'                       cc_clientes        c,',
'                       personas           p,',
'                       ca_tickets_tipo    t',
'                 WHERE a.cod_cliente = c.cod_cliente',
'                   AND p.cod_persona = c.cod_persona',
'                   AND a.cod_empresa = c.cod_empresa',
'                   AND t.cod_ticket = a.cod_tipo_ticket',
'                   AND a.cod_cliente IS NOT NULL',
'                   AND t.cod_empresa = ''1''',
'                   AND exists  ',
'                       (SELECT distinct ''1''',
'                          FROM llamador_ticket z, ca_puesto_box b',
'                         WHERE b.cod_box = z.box',
'                           AND z.id_ticket = a.id_ticket',
'                           AND z.fecha = to_date(to_char(SYSDATE, ''DD/MM/YYYY''),',
'                                                 ''DD/MM/YYYY'')',
'                           AND NVL(z.estado, ''ACTIVO'') NOT IN (''CANCELADO'', ''FINALIZADO'', ''ACTIVO'')',
'                           AND b.cod_usuario = :APP_USER',
'                           AND z.hora_atencion IS NULL',
'                           and z.INICIO_PAUSA IS NULL)',
'                   AND a.fecha =',
'                       to_date(to_char(SYSDATE, ''DD/MM/YYYY''), ''DD/MM/YYYY'')',
'                   AND ((a.cod_tipo_cliente IN (''2'', ''3'') AND',
'                       :P468_COD_TIPO_CLIENTE = ''2'') ',
'                        /**/',
'					    OR ( :p468_cod_tipo_cliente = ''0''',
'                               AND a.cod_tipo_cliente IN ( ''1'', ''2'', ''3'') )',
'							   /**/',
'                       OR a.cod_tipo_cliente = :P468_COD_TIPO_CLIENTE)',
'                   AND a.estado IN (''PENDIENTE'', ''ATENDIDO'')',
'                UNION ALL',
'                SELECT ''Nro. Ticket: '' || a.ser_ticket || '''' || a.nro_ticket ticket,',
'                       a.cod_cliente,',
'                       p.nombre,',
'                       (SELECT listagg(c.descripcion, '',  '') within GROUP(ORDER BY rownum) descripcion',
'                          FROM ca_ticket_atencion     z,',
'                               ca_ticket_atencion_det d,',
'                               ca_tickets_tipo        c',
'                         WHERE z.id_ticket = d.id_ticket',
'                           AND z.cod_empresa = ''1''',
'                           AND c.cod_ticket = d.cod_tipo_ticket',
'                           AND z.id_ticket = a.id_ticket) tipo_ticket,',
'                       a.ser_ticket serie,',
'                       a.nro_ticket,',
'                       2 prioridad,',
'                       a.id_ticket,',
'                       a.fecha,',
'                       a.cod_tipo_cliente,',
'                       a.ser_ticket || '''' || a.nro_ticket tic,',
'                       to_char(a.fecha_alta, ''hh24:mi:ss'')  fecha_a',
'                  FROM ca_ticket_atencion a,',
'                       cc_clientes        c,',
'                       personas           p,',
'                       ca_tickets_tipo    t',
'                 WHERE a.cod_cliente = c.cod_cliente',
'                   AND p.cod_persona = c.cod_persona',
'                   AND a.cod_empresa = c.cod_empresa',
'                   AND t.cod_ticket = a.cod_tipo_ticket',
'                   AND a.cod_cliente IS NOT NULL',
'                   AND t.cod_empresa = ''1''',
'                   AND  NOT EXISTS',
'                 (SELECT DISTINCT (''1'')',
'                          FROM llamador_ticket e',
'                         WHERE e.fecha = to_date(to_char(SYSDATE, ''DD/MM/YYYY''),',
'                                                 ''DD/MM/YYYY'')',
'                           AND e.id_ticket = a.id_ticket     ',
'                            AND ( NVL(e.estado, ''ACTIVO'') IN (''CANCELADO'',''FINALIZADO'', ''PAUSADO'')',
'                                OR (NVL(e.estado, ''ACTIVO'') IN(''ACTIVO'',''ATENDIDO'') AND ((E.HORA_LLAMADA IS NOT NULL AND E.COD_USUARIO<>:APP_USER ) OR ( e.INICIO_PAUSA IS NOT NULL and e.fin_pausa is null))) )',
'                            )',
'                   AND a.fecha =',
'                       to_date(to_char(SYSDATE, ''DD/MM/YYYY''), ''DD/MM/YYYY'')',
'                   AND ((a.cod_tipo_cliente IN (''2'', ''3'') AND',
'                       :P468_COD_TIPO_CLIENTE = ''2'') ',
'                         /**/',
'					    OR ( :p468_cod_tipo_cliente = ''0''',
'                               AND a.cod_tipo_cliente IN ( ''1'', ''2'' ,''3'') )',
'							   /**/',
'                       OR a.cod_tipo_cliente = :P468_COD_TIPO_CLIENTE)',
'                    AND a.estado IN (''PENDIENTE'', ''ATENDIDO'')',
'                UNION ALL',
'                SELECT ''Nro. Ticket: '' || a.ser_ticket || '''' || a.nro_ticket ticket,',
'                       NULL,',
'                       observacion,',
'                       ',
'                       (SELECT listagg(c.descripcion, '',  '') within GROUP(ORDER BY rownum) descripcion',
'                          FROM ca_ticket_atencion     z,',
'                               ca_ticket_atencion_det d,',
'                               ca_tickets_tipo        c',
'                         WHERE z.id_ticket = d.id_ticket',
'                           AND z.cod_empresa = ''1''',
'                           AND c.cod_ticket = d.cod_tipo_ticket',
'                           AND z.id_ticket = a.id_ticket) tipo_ticket,',
'                       a.ser_ticket serie,',
'                       a.nro_ticket,',
'                       2 prioridad,',
'                       a.id_ticket,',
'                       a.fecha,',
'                       a.cod_tipo_cliente,',
'                       a.ser_ticket || '''' || a.nro_ticket tic,',
'                       to_char(a.fecha_alta, ''hh24:mi:ss'')  fecha_a',
'                  FROM ca_ticket_atencion a',
'                 WHERE a.cod_empresa = ''1''',
'                   AND a.fecha =',
'                       to_date(to_char(SYSDATE, ''DD/MM/YYYY''), ''DD/MM/YYYY'')',
'                   AND ((a.cod_tipo_cliente IN (''2'', ''3'') AND',
'                       :P468_COD_TIPO_CLIENTE = ''2'') ',
'                        /**/',
'					    OR ( :p468_cod_tipo_cliente = ''0''',
'                               AND a.cod_tipo_cliente IN ( ''1'', ''2'' ,''3'') )',
'							   /**/',
'                       OR a.cod_tipo_cliente = :P468_COD_TIPO_CLIENTE)',
'                   AND a.cod_cliente IS NULL',
'                   AND NOT EXISTS',
'                 (SELECT DISTINCT (''1'')',
'                          FROM llamador_ticket e',
'                         WHERE e.fecha = to_date(to_char(SYSDATE, ''DD/MM/YYYY''),',
'                                                 ''DD/MM/YYYY'')',
'                                                  ',
'                           AND e.id_ticket = a.id_ticket ',
'                           AND ( NVL(e.estado, ''ACTIVO'') IN (''CANCELADO'',''FINALIZADO'', ''PAUSADO'')  ',
'                                OR (NVL(e.estado, ''ACTIVO'') IN(''ACTIVO'',''ATENDIDO'') AND ((E.HORA_LLAMADA IS NOT NULL AND E.COD_USUARIO<>:APP_USER ) OR ( e.INICIO_PAUSA IS NOT NULL and e.fin_pausa is null))) )',
'                            )',
'                AND a.estado IN (''PENDIENTE'', ''ATENDIDO'')                ',
'                ) x',
'        ',
'         ORDER BY llamo, orden, id_ticket, procesar ASC)',
' ORDER BY ordenador ASC',
''))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_ajax_items_to_submit=>'P_COD_EMPRESA,P468_COD_TIPO_CLIENTE'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'SET'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_show_total_row_count=>true
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(137938768954472711)
,p_region_id=>wwv_flow_imp.id(137938614110472710)
,p_layout_type=>'GRID'
,p_grid_column_count=>3
,p_card_css_classes=>'card_css'
,p_title_adv_formatting=>false
,p_title_column_name=>'NOMBRE'
,p_title_css_classes=>'carta'
,p_sub_title_adv_formatting=>false
,p_sub_title_column_name=>'TIPO_TICKET'
,p_body_adv_formatting=>false
,p_body_column_name=>'CLIENTE'
,p_second_body_adv_formatting=>false
,p_second_body_column_name=>'FECHA_A'
,p_badge_column_name=>'TICKET'
,p_media_adv_formatting=>false
);
wwv_flow_imp_page.create_card_action(
 p_id=>wwv_flow_imp.id(139851227854908213)
,p_card_id=>wwv_flow_imp.id(137938768954472711)
,p_action_type=>'BUTTON'
,p_position=>'SECONDARY'
,p_display_sequence=>10
,p_label=>'Llamar'
,p_link_target_type=>'REDIRECT_URL'
,p_link_target=>'javascript:$s(''P468_LLAMAR'',''&ID_TICKET.'');'
,p_button_display_type=>'TEXT_WITH_ICON'
,p_icon_css_classes=>'fa-assistive-listening-systems'
,p_is_hot=>true
,p_condition_type=>'EXPRESSION'
,p_condition_expr1=>':ORDENADOR = 1'
,p_condition_expr2=>'PLSQL'
,p_exec_cond_for_each_row=>true
);
wwv_flow_imp_page.create_card_action(
 p_id=>wwv_flow_imp.id(139851382650908214)
,p_card_id=>wwv_flow_imp.id(137938768954472711)
,p_action_type=>'BUTTON'
,p_position=>'SECONDARY'
,p_display_sequence=>20
,p_label=>'Atender'
,p_link_target_type=>'REDIRECT_URL'
,p_link_target=>'javascript:$s(''P468_ATENDER'',''&ID_TICKET.'');'
,p_button_display_type=>'TEXT_WITH_ICON'
,p_icon_css_classes=>'fa-user-headset'
,p_is_hot=>true
,p_condition_type=>'EXPRESSION'
,p_condition_expr1=>':ORDENADOR = 1'
,p_condition_expr2=>'PLSQL'
,p_exec_cond_for_each_row=>true
);
wwv_flow_imp_page.create_card_action(
 p_id=>wwv_flow_imp.id(139851417930908215)
,p_card_id=>wwv_flow_imp.id(137938768954472711)
,p_action_type=>'BUTTON'
,p_position=>'SECONDARY'
,p_display_sequence=>30
,p_label=>'Cancelar'
,p_link_target_type=>'REDIRECT_URL'
,p_link_target=>'javascript:$s(''P468_CANCELAR'',''&ID_TICKET.'');'
,p_button_display_type=>'TEXT_WITH_ICON'
,p_icon_css_classes=>'fa-remove'
,p_is_hot=>true
,p_condition_type=>'EXPRESSION'
,p_condition_expr1=>':ORDENADOR = 1'
,p_condition_expr2=>'PLSQL'
,p_exec_cond_for_each_row=>true
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(192591657778827050)
,p_plug_name=>'Ticket Pausados'
,p_parent_plug_id=>wwv_flow_imp.id(139854475275908245)
,p_region_template_options=>'#DEFAULT#:t-CardsRegion--styleB:t-Form--stretchInputs:t-Form--leftLabels:t-Form--labelsAbove:margin-top-sm:margin-bottom-sm:margin-left-sm:margin-right-sm'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40100032401263654)
,p_plug_display_sequence=>60
,p_plug_grid_column_span=>3
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT  distinct ticket,',
'       cod_cliente,',
'       REGEXP_REPLACE(nombre, ''[^a-zA-Z0-9 ]'', NULL) nombre,',
'       tipo_ticket,',
'       serie,',
'       nro_ticket,',
'       id_ticket,',
'       cod_tipo_cliente,',
'       CASE',
'         WHEN cod_tipo_cliente = ''3'' THEN',
'          ''Cliente Preferencial''',
'         ELSE',
'          NULL',
'       END cliente,',
'       CASE',
'         WHEN cod_tipo_cliente = ''3'' THEN',
'          0',
'         ELSE',
'          1',
'       END orden,',
'       rownum ordenador,',
'       llamo,',
'       tic,',
'       ''Hora Ingreso ''||fecha_a fecha_a',
'  FROM (SELECT x.ticket,',
'               x.cod_cliente,',
'               x.nombre,',
'               x.tipo_ticket,',
'               x.serie,',
'               x.nro_ticket,',
'               x.id_ticket,',
'               rownum procesar,',
'               x.prioridad,',
'               x.cod_tipo_cliente,',
'               CASE',
'                 WHEN x.cod_tipo_cliente = ''3'' THEN',
'                  ''Cliente Preferencial''',
'                 ELSE',
'                  NULL',
'               END cliente,',
'               CASE',
'                 WHEN x.cod_tipo_cliente = ''3'' THEN',
'                  0',
'                 ELSE',
'                  1',
'               END orden,',
'               0  llamo,',
'               tic,',
'               x.fecha_a',
'        ',
'          FROM (SELECT ''Nro. Ticket: '' || a.ser_ticket || '''' || a.nro_ticket ticket,',
'                       a.cod_cliente,',
'                       p.nombre,',
'                       (SELECT listagg(c.descripcion, '',  '') within GROUP(ORDER BY rownum) descripcion',
'                          FROM ca_ticket_atencion     z,',
'                               ca_ticket_atencion_det d,',
'                               ca_tickets_tipo        c',
'                         WHERE z.id_ticket = d.id_ticket',
'                           AND z.cod_empresa = ''1''',
'                           AND c.cod_ticket = d.cod_tipo_ticket',
'                           AND z.id_ticket = a.id_ticket) tipo_ticket,',
'                       a.ser_ticket serie,',
'                       a.nro_ticket,',
'                       1 prioridad,',
'                       a.id_ticket,',
'                       a.fecha,',
'                       a.cod_tipo_cliente,',
'                       a.ser_ticket || '''' || a.nro_ticket tic,',
'                       to_char(a.fecha_alta, ''hh24:mi:ss'')  fecha_a',
'                  FROM ca_ticket_atencion a,',
'                       cc_clientes        c,',
'                       personas           p,',
'                       ca_tickets_tipo    t',
'                 WHERE a.cod_cliente = c.cod_cliente',
'                   AND p.cod_persona = c.cod_persona',
'                   AND a.cod_empresa = c.cod_empresa',
'                   AND t.cod_ticket = a.cod_tipo_ticket',
'                   AND a.cod_cliente IS NOT NULL',
'                   AND t.cod_empresa = ''1''',
'                   AND a.estado IN ( ''ATENDIDO'')',
'                   AND exists  ',
'                       (SELECT distinct ''1''',
'                          FROM llamador_ticket z, ca_puesto_box b',
'                         WHERE b.cod_box = z.box',
'                           AND z.id_ticket = a.id_ticket',
'                           AND z.fecha = to_date(to_char(SYSDATE, ''DD/MM/YYYY''),''DD/MM/YYYY'')',
'                           AND NVL(z.estado, ''ACTIVO'')=''PAUSADO''',
'                           AND b.cod_usuario = :APP_USER',
'                           AND z.hora_atencion IS NOT NULL',
'                           and z.INICIO_PAUSA IS NOT NULL)',
'                   AND a.fecha = to_date(to_char(SYSDATE, ''DD/MM/YYYY''), ''DD/MM/YYYY'')',
'                   AND ((a.cod_tipo_cliente IN (''2'', ''3'') AND',
'                       :P468_COD_TIPO_CLIENTE = ''2'') OR',
'                       a.cod_tipo_cliente = :P468_COD_TIPO_CLIENTE)',
'                UNION ALL',
'                SELECT ''Nro. Ticket: '' || a.ser_ticket || '''' || a.nro_ticket ticket,',
'                       NULL,',
'                       observacion,',
'                       ',
'                       (SELECT listagg(c.descripcion, '',  '') within GROUP(ORDER BY rownum) descripcion',
'                          FROM ca_ticket_atencion     z,',
'                               ca_ticket_atencion_det d,',
'                               ca_tickets_tipo        c',
'                         WHERE z.id_ticket = d.id_ticket',
'                           AND z.cod_empresa = ''1''',
'                           AND c.cod_ticket = d.cod_tipo_ticket',
'                           AND z.id_ticket = a.id_ticket) tipo_ticket,',
'                       a.ser_ticket serie,',
'                       a.nro_ticket,',
'                       2 prioridad,',
'                       a.id_ticket,',
'                       a.fecha,',
'                       a.cod_tipo_cliente,',
'                       a.ser_ticket || '''' || a.nro_ticket tic,',
'                       to_char(a.fecha_alta, ''hh24:mi:ss'')  fecha_a',
'                  FROM ca_ticket_atencion a',
'                 WHERE a.cod_empresa = ''1''',
'                   AND a.fecha =',
'                       to_date(to_char(SYSDATE, ''DD/MM/YYYY''), ''DD/MM/YYYY'')',
'                   AND ((a.cod_tipo_cliente IN (''2'', ''3'') AND',
'                       :P468_COD_TIPO_CLIENTE = ''2'') OR',
'                       a.cod_tipo_cliente = :P468_COD_TIPO_CLIENTE)',
'                   AND a.cod_cliente IS NULL',
'                  AND a.estado IN ( ''ATENDIDO'')     ',
'                   AND EXISTS',
'                 (SELECT DISTINCT (''1'')',
'                          FROM llamador_ticket e',
'                         WHERE e.fecha = to_date(to_char(SYSDATE, ''DD/MM/YYYY''),',
'                                                 ''DD/MM/YYYY'')',
'                                                 ',
'                           AND e.id_ticket = a.id_ticket ',
'                           AND NVL(e.estado, ''ACTIVO'') IN (''PAUSADO'')  ',
'                           AND e.hora_atencion IS NOT NULL',
'                           and e.INICIO_PAUSA IS NOT NULL     ',
'                           AND e.cod_usuario = :APP_USER                           ',
'                           )           ',
'                ) x',
'        ',
'         ORDER BY llamo, orden, id_ticket, procesar ASC)',
' ORDER BY ordenador ASC',
''))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_ajax_items_to_submit=>'P_COD_EMPRESA,P468_COD_TIPO_CLIENTE'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'SET'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_no_data_found=>'No tenes ticket en pausa'
,p_show_total_row_count=>true
,p_plug_display_condition_type=>'FUNCTION_BODY'
,p_plug_display_when_condition=>'RETURN existe_tkt_pausado(:P468_COD_TIPO_CLIENTE, :app_user);'
,p_plug_display_when_cond2=>'PLSQL'
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(193660795036252001)
,p_region_id=>wwv_flow_imp.id(192591657778827050)
,p_layout_type=>'GRID'
,p_card_css_classes=>'card_css2'
,p_title_adv_formatting=>false
,p_title_column_name=>'NOMBRE'
,p_title_css_classes=>'carta'
,p_sub_title_adv_formatting=>false
,p_sub_title_column_name=>'TIPO_TICKET'
,p_body_adv_formatting=>false
,p_body_column_name=>'CLIENTE'
,p_second_body_adv_formatting=>false
,p_second_body_column_name=>'FECHA_A'
,p_badge_column_name=>'TICKET'
,p_media_adv_formatting=>true
,p_media_html_expr=>'<h1 class="tkt_pausa">TICKET PAUSADO</h1>'
,p_media_display_position=>'BODY'
);
wwv_flow_imp_page.create_card_action(
 p_id=>wwv_flow_imp.id(193660811946252002)
,p_card_id=>wwv_flow_imp.id(193660795036252001)
,p_action_type=>'BUTTON'
,p_position=>'SECONDARY'
,p_display_sequence=>10
,p_label=>'Llamar'
,p_link_target_type=>'REDIRECT_URL'
,p_link_target=>'javascript:$s(''P468_LLAMAR'',''&ID_TICKET.'');'
,p_button_display_type=>'TEXT_WITH_ICON'
,p_icon_css_classes=>'fa-assistive-listening-systems'
,p_is_hot=>true
,p_condition_type=>'EXPRESSION'
,p_condition_expr1=>':ORDENADOR = 1'
,p_condition_expr2=>'PLSQL'
,p_exec_cond_for_each_row=>true
);
wwv_flow_imp_page.create_card_action(
 p_id=>wwv_flow_imp.id(193660987977252003)
,p_card_id=>wwv_flow_imp.id(193660795036252001)
,p_action_type=>'BUTTON'
,p_position=>'SECONDARY'
,p_display_sequence=>20
,p_label=>'Atender'
,p_link_target_type=>'REDIRECT_URL'
,p_link_target=>'javascript:$s(''P468_ATENDER'',''&ID_TICKET.'');'
,p_button_display_type=>'TEXT_WITH_ICON'
,p_icon_css_classes=>'fa-user-headset'
,p_is_hot=>true
,p_condition_type=>'EXPRESSION'
,p_condition_expr1=>':ORDENADOR = 1'
,p_condition_expr2=>'PLSQL'
,p_exec_cond_for_each_row=>true
);
wwv_flow_imp_page.create_card_action(
 p_id=>wwv_flow_imp.id(193661056227252004)
,p_card_id=>wwv_flow_imp.id(193660795036252001)
,p_action_type=>'BUTTON'
,p_position=>'SECONDARY'
,p_display_sequence=>30
,p_label=>'Cancelar'
,p_link_target_type=>'REDIRECT_URL'
,p_link_target=>'javascript:$s(''P468_CANCELAR'',''&ID_TICKET.'');'
,p_button_display_type=>'TEXT_WITH_ICON'
,p_icon_css_classes=>'fa-remove'
,p_is_hot=>true
,p_condition_type=>'EXPRESSION'
,p_condition_expr1=>':ORDENADOR = 1'
,p_condition_expr2=>'PLSQL'
,p_exec_cond_for_each_row=>true
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(289417171546348097)
,p_plug_name=>'LOGO'
,p_parent_plug_id=>wwv_flow_imp.id(139854475275908245)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_header=>'<img src="#WORKSPACE_FILES#logo_ngo.png" alt="NGO SAECA" width="100" height="110" >'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(289417647385346518)
,p_plug_name=>'TITULO'
,p_parent_plug_id=>wwv_flow_imp.id(139854475275908245)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>30
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_header=>'<h4 style="text-align:center;font-size:50px;" class="center" >TICKETS ABIERTOS</h4> '
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(289418017574343743)
,p_plug_name=>'TICKET'
,p_parent_plug_id=>wwv_flow_imp.id(139854475275908245)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>40
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_header=>'<h4 style="text-align:center;font-size:50px;" class="center" >TICKET PEN.: &P468_TICKET_PEN.</h4> '
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(143660658566222730)
,p_plug_name=>'Motivos cancelacion'
,p_region_name=>'cancelacion'
,p_region_template_options=>'#DEFAULT#:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>940
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(72425886738335710)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(72425703654335709)
,p_button_name=>'Crear_ticket'
,p_button_action=>'REDIRECT_APP'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Crear Ticket'
,p_button_redirect_url=>'f?p=122:469:&SESSION.::&DEBUG.:::'
,p_grid_new_row=>'Y'
,p_grid_column=>12
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(143660819898222732)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(143660658566222730)
,p_button_name=>'Cancelar'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Cancelar'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(143660948193222733)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(143660658566222730)
,p_button_name=>'Guardar'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Guardar'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'N'
,p_grid_column=>11
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(147539578770413006)
,p_button_sequence=>110
,p_button_plug_id=>wwv_flow_imp.id(137938614110472710)
,p_button_name=>'Redirigir'
,p_button_static_id=>'redirigir'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Redirigir'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(147539701691413008)
,p_branch_name=>unistr('Ir a P\00E1gina 486')
,p_branch_action=>'f?p=&APP_ID.:486:&SESSION.::&DEBUG.::P486_CLIENTE,P486_NRO_TICKET,P486_ID_TICKET,P486_COD_CLIENTE,P486_NRO_TICKET,P486_TIPO_CLIENTE:&P468_CLIENTE.,&P468_ID_TICKET.,&P468_ID_TICKET.,&P468_COD_CLIENTE.,&P468_SER_TICKET.,&P468_COD_TIPO_CLIENTE.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'BEFORE_VALIDATION'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(137939176939472715)
,p_name=>'P468_TICKET'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(137938614110472710)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(139851711174908218)
,p_name=>'P468_BOX'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(137938614110472710)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(139851948653908220)
,p_name=>'P468_SERIE_BOX'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(137938614110472710)
,p_item_default=>'A'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
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
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(139852247792908223)
,p_name=>'P468_REFRESCAR'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(137938614110472710)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(139852570610908226)
,p_name=>'P468_ID_TICKET'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(137938614110472710)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(139852983353908230)
,p_name=>'P468_ATENDER'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(137938614110472710)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(139853310530908234)
,p_name=>'P468_CANCELAR'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(137938614110472710)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(139854011924908241)
,p_name=>'P468_ACTUALIZA_GRILLA'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(137938614110472710)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(143660749427222731)
,p_name=>'P468_MOTIVO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(143660658566222730)
,p_prompt=>unistr('Motivo de Cancelaci\00F3n')
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
 p_id=>wwv_flow_imp.id(143662096949222744)
,p_name=>'P468_COD_TIPO_CLIENTE'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(137938614110472710)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(145412023134369701)
,p_name=>'P468_CLIENTE'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(137938614110472710)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(145759170695121025)
,p_name=>'P468_TICKET_PEN'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(289418017574343743)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(147540600886413017)
,p_name=>'P468_COD_CLIENTE'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(137938614110472710)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(147541500344413026)
,p_name=>'P468_SER_TICKET'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(137938614110472710)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(148902058567312205)
,p_name=>'P468_LLAMAR'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(137938614110472710)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(139851535857908216)
,p_name=>'Carga ticket'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P468_LLAMAR'
,p_condition_element=>'P468_LLAMAR'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(139852740680908228)
,p_event_id=>wwv_flow_imp.id(139851535857908216)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    select NRO_TICKET, SER_TICKET, ID_TICKET ',
'    INTO :P468_TICKET, :P468_SERIE_BOX, :P468_ID_TICKET',
'    from ca_ticket_atencion   A',
'    WHERE A.ID_TICKET  =  :P468_LLAMAR;',
'END;',
''))
,p_attribute_02=>'P468_LLAMAR'
,p_attribute_03=>'P468_SERIE_BOX,P468_TICKET,P468_ID_TICKET'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(139851675558908217)
,p_event_id=>wwv_flow_imp.id(139851535857908216)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE ',
'    v_numero NUMBER;',
'    v_usuario VARCHAR2(500);',
'    v_verificar number := 0;',
'BEGIN ',
'    :P0_MENSAJE_VALIDACION := null;',
'    begin',
'        SELECT b.cod_usuario',
'        into v_usuario',
'          FROM llamador_ticket a, ca_puesto_box b',
'          where b.cod_box = a.box',
'          and a.id_ticket = :P468_ID_TICKET',
'          and a.fecha= to_date(to_char(SYSDATE, ''DD/MM/YYYY''), ''DD/MM/YYYY'')',
'          and a.cod_usuario  <> :app_user',
'          and rownum = 1;',
'  exception ',
'    when others then ',
'        v_usuario := NULL;',
'    END;',
'',
'',
'    IF v_usuario IS NULL THEN ',
'        ',
'        BEGIN ',
'            SELECT COUNT(*)',
'            INTO v_verificar',
'            FROM INV.LLAMADOR_TICKET ',
'            WHERE  ID_TICKET =  :P468_ID_TICKET;',
'            EXCEPTION ',
'                WHEN OTHERS THEN ',
'                    v_verificar := 0;',
'',
'        END;',
'',
'        IF v_verificar = 0 THEN ',
'',
'            BEGIN ',
'                SELECT NVL(MAX(id_llamador), 0)+1 ',
'                INTO v_numero',
'                FROM INV.LLAMADOR_TICKET;',
'                EXCEPTION ',
'                    WHEN OTHERS THEN ',
'                        v_numero := 0;',
'                     ',
'            END;',
'',
'',
'            BEGIN',
'                select NRO_TICKET, SER_TICKET',
'                INTO :P468_TICKET, :P468_SERIE_BOX',
'                from ca_ticket_atencion   A',
'                WHERE A.ID_TICKET  =  :P468_ID_TICKET;',
'            END;',
'',
'            ',
'            INSERT INTO INV.LLAMADOR_TICKET (id_llamador, box, num_ticket, llamar, fecha, hora_llamada, SERIE_TICKET, ID_TICKET, OPERACION, COD_USUARIO)',
'                                    VALUES (v_numero, :P468_BOX, :P468_TICKET, ''S'', SYSDATE, NULL, :P468_SERIE_BOX, :P468_ID_TICKET, ''BOX'', :APP_USER);',
'        ELSE ',
'            UPDATE INV.LLAMADOR_TICKET SET LLAMAR = ''S'', OPERACION = ''BOX''',
'            WHERE ID_TICKET = :P468_ID_TICKET;',
'        END IF;',
'        ',
'',
'        :P468_REFRESCAR:=0;',
'    ELSE ',
'        :P0_MENSAJE_VALIDACION :=  ''El ticket ya fue atendido por el usuario ''||v_usuario;',
'        :P468_REFRESCAR := 1;',
'    END IF;',
'END;'))
,p_attribute_02=>'P468_BOX,P468_TICKET,P468_SERIE_BOX,P468_ID_TICKET'
,p_attribute_03=>'P468_REFRESCAR,P0_MENSAJE_VALIDACION'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(139852002538908221)
,p_name=>'Obtiene datos de usuarios'
,p_event_sequence=>20
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(139852196635908222)
,p_event_id=>wwv_flow_imp.id(139852002538908221)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN ',
'      ',
'    SELECT DISTINCT (COD_BOX), b.cod_tipo_cliente',
'        INTO :P468_BOX, :P468_COD_TIPO_CLIENTE',
'          FROM ca_puesto_box A, ca_servicios_por_puestos  B, ca_tickets_tipo C',
'         WHERE A.fecha = to_date(to_char(SYSDATE, ''DD/MM/YYYY''), ''DD/MM/YYYY'')',
'           AND A.cod_usuario = :APP_USER',
'           AND  A.ID_PUESTO = B.ID_PUESTO',
'           AND C.COD_TICKET =  B.COD_TIPO_TICKET',
'           and rownum = 1',
'    UNION ALL',
'      ',
'       SELECT A.COD_BOX, b.cod_tipo_cliente',
'      FROM ca_puesto_box A, ca_servicios_por_puestos  B, ca_tickets_tipo C',
'     WHERE A.cod_usuario = :APP_USER',
'       AND A.fecha IN',
'           (SELECT MAX(d.fecha) FROM ca_puesto_box d WHERE d.cod_usuario = :APP_USER)',
'       AND A.cod_usuario NOT IN',
'           (SELECT s.cod_usuario',
'              FROM ca_puesto_box s',
'             WHERE s.fecha = to_date(to_char(SYSDATE, ''DD/MM/YYYY''), ''DD/MM/YYYY'')',
'               AND s.cod_usuario = :APP_USER)',
'       AND  A.ID_PUESTO = B.ID_PUESTO',
'       AND C.COD_TICKET =  B.COD_TIPO_TICKET',
'       and rownum = 1;',
'       exception ',
'        when others then ',
'            raise_application_error(-20001, ''El usuario '' || :APP_USER ||'' no cuenta asignado el box'');',
'END;',
'',
''))
,p_attribute_03=>'P468_BOX,P468_COD_TIPO_CLIENTE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(143662194363222745)
,p_event_id=>wwv_flow_imp.id(139852002538908221)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(137938614110472710)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(139852363078908224)
,p_name=>'Refresca region'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P468_REFRESCAR'
,p_condition_element=>'P468_REFRESCAR'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'1'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(139852409369908225)
,p_event_id=>wwv_flow_imp.id(139852363078908224)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(137938614110472710)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(139853086833908231)
,p_name=>'Atender cliente'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P468_ATENDER'
,p_condition_element=>'P468_ATENDER'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(193661562990252009)
,p_event_id=>wwv_flow_imp.id(139853086833908231)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE ',
'    v_numero NUMBER;',
'    v_usuario VARCHAR2(500);',
'    v_verificar number := 0;',
'BEGIN ',
'    :P0_MENSAJE_VALIDACION := null;',
'    begin',
'        SELECT b.cod_usuario',
'        into v_usuario',
'          FROM llamador_ticket a, ca_puesto_box b',
'          where b.cod_box = a.box',
'          and a.id_ticket = :P468_ATENDER',
'          and a.fecha= to_date(to_char(SYSDATE, ''DD/MM/YYYY''), ''DD/MM/YYYY'')',
'          and a.cod_usuario  <> :app_user',
'          and rownum = 1;',
'  exception ',
'    when others then ',
'        v_usuario := NULL;',
'    END;',
'',
'',
'    IF v_usuario IS NOT NULL  THEN',
'        :P468_REFRESCAR:=1;',
'        raise_application_error(-20001,''El ticket ya fue atendido por el usuario ''||v_usuario);',
'    END IF;',
'END;'))
,p_attribute_02=>'P468_BOX,P468_TICKET,P468_SERIE_BOX,P468_ATENDER'
,p_attribute_03=>'P468_REFRESCAR'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(139853118691908232)
,p_event_id=>wwv_flow_imp.id(139853086833908231)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
' begin ',
' SELECT a.ser_ticket || '''' || a.nro_ticket ticket,',
'        p.nombre,',
'        a.ser_ticket serie,',
'        a.id_ticket,',
'        c.cod_cliente,',
'        a.ser_ticket || '''' || a.nro_ticket ticket',
'    into :P468_TICKET,',
'        :P468_CLIENTE,',
'        :P468_SERIE_BOX,',
'        :P468_ID_TICKET,',
'        :P468_COD_CLIENTE,',
'        :P468_SER_TICKET',
'   FROM ca_ticket_atencion a, cc_clientes c, personas p, ca_tickets_tipo t',
'  WHERE a.cod_cliente = c.cod_cliente',
'    AND p.cod_persona = c.cod_persona',
'    AND a.cod_empresa = c.cod_empresa',
'    AND t.cod_ticket = a.cod_tipo_ticket',
'    AND t.cod_empresa = ''1''',
'    AND a.id_ticket = :P468_ATENDER',
'    AND a.fecha = to_date(to_char(SYSDATE, ''DD/MM/YYYY''), ''DD/MM/YYYY'')',
'    union all',
'    SELECT ''Nro. Ticket: '' || a.ser_ticket || '''' || a.nro_ticket ticket,',
'                       observacion,',
'                       a.ser_ticket serie,',
'                       a.id_ticket,',
'                       a.cod_cliente,',
'                       a.ser_ticket || '''' || a.nro_ticket ticket ',
'                  FROM ca_ticket_atencion a',
'                 WHERE a.cod_empresa = ''1''',
'                   AND a.fecha =',
'                       to_date(to_char(SYSDATE, ''DD/MM/YYYY''), ''DD/MM/YYYY'')',
'',
'                   AND a.cod_cliente IS NULL',
'                  and a.id_ticket  =  :P468_ATENDER;',
'exception ',
'    when others then ',
'      :P468_TICKET :=  null;',
'      :P468_CLIENTE :=  null;',
'      :P468_SERIE_BOX :=  null;',
'      :P468_ID_TICKET :=  null;',
'      :P468_COD_CLIENTE :=  null;',
'      :P468_SER_TICKET :=  null;',
'end;',
'',
'',
'',
'update INV.LLAMADOR_TICKET set hora_atencion  = sysdate, estado = ''ATENDIDO''',
'where id_ticket =  :P468_ATENDER;',
'',
'update ca_ticket_atencion set cod_usuario  = :APP_USER, ESTADO=''ATENDIDO''',
'where id_ticket =  :P468_ATENDER;',
'',
''))
,p_attribute_02=>'P468_ATENDER'
,p_attribute_03=>'P468_TICKET,P468_CLIENTE,P468_SERIE_BOX,P468_ID_TICKET,P468_COD_CLIENTE,P468_SER_TICKET'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(147539632553413007)
,p_event_id=>wwv_flow_imp.id(139853086833908231)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
' apex.server.process(',
' ''VALIDA_CANCELACION'', ',
' { x01: apex.item("P468_ATENDER").getValue()}, ',
' {',
' success: function (pData) { ',
'     if (pData.p_retorna === "S") {',
'         $(document).ready(function(){ $(''#redirigir'').trigger(''click''); }); ',
'     }  ',
'     else {',
'        apex.item("P0_MENSAJE_VALIDACION").setValue("Para atender el ticket se debe realizar una llamada previamente");    ',
'     }',
' }, ',
' });',
'',
'',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(139853212808908233)
,p_event_id=>wwv_flow_imp.id(139853086833908231)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(137938614110472710)
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(139853424569908235)
,p_name=>'Cancelar ticket'
,p_event_sequence=>60
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(143660948193222733)
,p_condition_element=>'P468_MOTIVO'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(143661464154222738)
,p_event_id=>wwv_flow_imp.id(139853424569908235)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'PLUGIN_COM.FOS.NOTIFICATIONS'
,p_attribute_01=>'warning'
,p_attribute_02=>'static'
,p_attribute_03=>unistr('Atenci\00F3n')
,p_attribute_04=>unistr('Debe ingresa el motivo de la cancelaci\00F3n')
,p_attribute_07=>'autodismiss:prevent-duplicates:remove-notifications:escape-html:newest-on-top:client-side-substitutions:dismiss-on-click:dismiss-on-button'
,p_attribute_08=>'top-right'
,p_attribute_09=>'Y'
,p_attribute_11=>'5'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(139853665021908237)
,p_event_id=>wwv_flow_imp.id(139853424569908235)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE ',
'    v_contador NUMBER := 0;',
'    v_numero number;',
'BEGIN',
'        BEGIN ',
'            SELECT COUNT(*)',
'            INTO v_contador',
'            FROM INV.LLAMADOR_TICKET',
'            where id_ticket =  :P468_CANCELAR;',
'            EXCEPTION',
'                WHEN OTHERS THEN ',
'                    v_contador := NULL;',
'        END;',
'    IF v_contador = 0  THEN ',
'        begin ',
'',
'            BEGIN',
'                update INV.ca_ticket_atencion   ',
'                set estado = ''CANCELADO'',',
'                    cod_usuario=:app_user',
'                WHERE ID_TICKET  =  :P468_CANCELAR;',
'            END;',
'        exception ',
'            when others then ',
'                raise_application_error(-20001, sqlerrm);',
'        end;',
'    ELSE ',
'        BEGIN ',
'            update INV.LLAMADOR_TICKET set estado  = ''CANCELADO'', MOTIVO_CANCELACION = :P468_MOTIVO',
'            where id_ticket =  :P468_CANCELAR;',
'        END;',
'    END IF;',
' END;',
'',
''))
,p_attribute_02=>'P468_CANCELAR,P468_MOTIVO'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(143661038225222734)
,p_event_id=>wwv_flow_imp.id(139853424569908235)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(143660658566222730)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(143661707920222741)
,p_event_id=>wwv_flow_imp.id(139853424569908235)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P468_MOTIVO,P468_CANCELAR'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(139853737349908238)
,p_event_id=>wwv_flow_imp.id(139853424569908235)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(137938614110472710)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(103255012342652647)
,p_event_id=>wwv_flow_imp.id(139853424569908235)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(192591657778827050)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(139853860512908239)
,p_name=>unistr('Actualizaci\00F3n autom\00E1tica')
,p_event_sequence=>70
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(139853927262908240)
,p_event_id=>wwv_flow_imp.id(139853860512908239)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'setInterval(''refrescargrilla()'',15000);'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(139854163818908242)
,p_name=>'Refresca grilla'
,p_event_sequence=>80
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P468_ACTUALIZA_GRILLA'
,p_condition_element=>'P468_ACTUALIZA_GRILLA'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'1'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(139854233100908243)
,p_event_id=>wwv_flow_imp.id(139854163818908242)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(137938614110472710)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(139854357976908244)
,p_event_id=>wwv_flow_imp.id(139854163818908242)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P468_ACTUALIZA_GRILLA'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(143661156138222735)
,p_name=>unistr('Cierre de ventana de cancelaci\00F3n')
,p_event_sequence=>90
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(143660819898222732)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(143661212181222736)
,p_event_id=>wwv_flow_imp.id(143661156138222735)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(143660658566222730)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(143661881376222742)
,p_event_id=>wwv_flow_imp.id(143661156138222735)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P468_MOTIVO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(143661385485222737)
,p_event_id=>wwv_flow_imp.id(143661156138222735)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(137938614110472710)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(143661596933222739)
,p_name=>unistr('Abre modal de cancelaci\00F3n')
,p_event_sequence=>100
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P468_CANCELAR'
,p_condition_element=>'P468_CANCELAR'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(193661685443252010)
,p_event_id=>wwv_flow_imp.id(143661596933222739)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE ',
'    v_numero NUMBER;',
'    v_usuario VARCHAR2(500);',
'    v_verificar number := 0;',
'BEGIN ',
'    :P0_MENSAJE_VALIDACION := null;',
'    begin',
'        SELECT b.cod_usuario',
'        into v_usuario',
'          FROM llamador_ticket a, ca_puesto_box b',
'          where b.cod_box = a.box',
'          and a.id_ticket = :P468_ID_TICKET',
'          and a.fecha= to_date(to_char(SYSDATE, ''DD/MM/YYYY''), ''DD/MM/YYYY'')',
'          and a.cod_usuario  <> :app_user',
'          and rownum = 1;',
'  exception ',
'    when others then ',
'        v_usuario := NULL;',
'    END;',
'',
'',
'    IF v_usuario IS NOT NULL  THEN',
'        :P468_REFRESCAR:=1;',
'        raise_application_error(-20001,''El ticket ya fue atendido por el usuario ''||v_usuario);',
'    END IF;',
'END;'))
,p_attribute_02=>'P468_BOX,P468_TICKET,P468_SERIE_BOX,P468_ID_TICKET'
,p_attribute_03=>'P468_REFRESCAR'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(190746093523605906)
,p_event_id=>wwv_flow_imp.id(143661596933222739)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P468_MOTIVO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(143661660822222740)
,p_event_id=>wwv_flow_imp.id(143661596933222739)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'javascript:openModal(''cancelacion'');',
'/* ',
' ',
' apex.server.process(',
' ''VALIDA_CANCELACION'', ',
' { x01: apex.item("P468_CANCELAR").getValue()}, ',
' {',
' success: function (pData) { ',
'     if (pData.p_retorna === "S") {',
'         apex.item("P468_MOTIVO").setValue(null);',
'         javascript:openModal(''cancelacion'');',
'          ',
'     }  ',
'     else {',
'        apex.item("P0_MENSAJE_VALIDACION").setValue("Para cancelar el ticket se debe realizar una llamada previamente");    ',
'     }',
'     ',
'     ',
' }, ',
' });*/'))
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(143660550067222729)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Contador de ticket'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT  count(*)',
'into :P468_TICKET_PEN',
'  FROM (SELECT x.ticket,',
'               x.cod_cliente,',
'               x.nombre,',
'               x.tipo_ticket,',
'               x.serie,',
'               x.nro_ticket,',
'               x.id_ticket,',
'               rownum procesar,',
'               x.prioridad,',
'               x.cod_tipo_cliente,',
'               CASE',
'                 WHEN x.cod_tipo_cliente = ''3'' THEN',
'                  ''Cliente Preferencial''',
'                 ELSE',
'                  NULL',
'               END cliente,',
'               CASE',
'                 WHEN x.cod_tipo_cliente = ''3'' THEN',
'                  0',
'                 ELSE',
'                  1',
'               END orden,',
'               0  llamo,',
'               tic,',
'               x.fecha_a',
'        ',
'          FROM (SELECT ''Nro. Ticket: '' || a.ser_ticket || '''' || a.nro_ticket ticket,',
'                       a.cod_cliente,',
'                       p.nombre,',
'                       (SELECT listagg(c.descripcion, '',  '') within GROUP(ORDER BY rownum) descripcion',
'                          FROM ca_ticket_atencion     z,',
'                               ca_ticket_atencion_det d,',
'                               ca_tickets_tipo        c',
'                         WHERE z.id_ticket = d.id_ticket',
'                           AND z.cod_empresa = ''1''',
'                           AND c.cod_ticket = d.cod_tipo_ticket',
'                           AND z.id_ticket = a.id_ticket) tipo_ticket,',
'                       a.ser_ticket serie,',
'                       a.nro_ticket,',
'                       1 prioridad,',
'                       a.id_ticket,',
'                       a.fecha,',
'                       a.cod_tipo_cliente,',
'                       a.ser_ticket || '''' || a.nro_ticket tic,',
'                       to_char(a.fecha_alta, ''hh24:mi:ss'')  fecha_a',
'                  FROM ca_ticket_atencion a,',
'                       cc_clientes        c,',
'                       personas           p,',
'                       ca_tickets_tipo    t',
'                 WHERE a.cod_cliente = c.cod_cliente',
'                   AND p.cod_persona = c.cod_persona',
'                   AND a.cod_empresa = c.cod_empresa',
'                   AND t.cod_ticket = a.cod_tipo_ticket',
'                   AND a.cod_cliente IS NOT NULL',
'                   AND t.cod_empresa = ''1''',
'                   AND exists  ',
'                       (SELECT distinct ''1''',
'                          FROM llamador_ticket z, ca_puesto_box b',
'                         WHERE b.cod_box = z.box',
'                           AND z.id_ticket = a.id_ticket',
'                           AND z.fecha = to_date(to_char(SYSDATE, ''DD/MM/YYYY''),',
'                                                 ''DD/MM/YYYY'')',
'                           AND NVL(z.estado, ''ACTIVO'') NOT IN (''CANCELADO'', ''FINALIZADO'', ''ACTIVO'')',
'                           AND b.cod_usuario = :APP_USER',
'                           AND z.hora_atencion IS NULL)',
'                   AND a.fecha =',
'                       to_date(to_char(SYSDATE, ''DD/MM/YYYY''), ''DD/MM/YYYY'')',
'                   AND ((a.cod_tipo_cliente IN (''2'', ''3'') AND',
'                       :P468_COD_TIPO_CLIENTE = ''2'') OR',
'                       a.cod_tipo_cliente = :P468_COD_TIPO_CLIENTE)',
'                   AND a.estado IN (''PENDIENTE'', ''ATENDIDO'')',
'                UNION ALL',
'                SELECT ''Nro. Ticket: '' || a.ser_ticket || '''' || a.nro_ticket ticket,',
'                       a.cod_cliente,',
'                       p.nombre,',
'                       (SELECT listagg(c.descripcion, '',  '') within GROUP(ORDER BY rownum) descripcion',
'                          FROM ca_ticket_atencion     z,',
'                               ca_ticket_atencion_det d,',
'                               ca_tickets_tipo        c',
'                         WHERE z.id_ticket = d.id_ticket',
'                           AND z.cod_empresa = ''1''',
'                           AND c.cod_ticket = d.cod_tipo_ticket',
'                           AND z.id_ticket = a.id_ticket) tipo_ticket,',
'                       a.ser_ticket serie,',
'                       a.nro_ticket,',
'                       2 prioridad,',
'                       a.id_ticket,',
'                       a.fecha,',
'                       a.cod_tipo_cliente,',
'                       a.ser_ticket || '''' || a.nro_ticket tic,',
'                       to_char(a.fecha_alta, ''hh24:mi:ss'')  fecha_a',
'                  FROM ca_ticket_atencion a,',
'                       cc_clientes        c,',
'                       personas           p,',
'                       ca_tickets_tipo    t',
'                 WHERE a.cod_cliente = c.cod_cliente',
'                   AND p.cod_persona = c.cod_persona',
'                   AND a.cod_empresa = c.cod_empresa',
'                   AND t.cod_ticket = a.cod_tipo_ticket',
'                   AND a.cod_cliente IS NOT NULL',
'                   AND t.cod_empresa = ''1''',
'                   AND  NOT EXISTS',
'                 (SELECT DISTINCT (''1'')',
'                          FROM llamador_ticket e',
'                         WHERE e.fecha = to_date(to_char(SYSDATE, ''DD/MM/YYYY''),',
'                                                 ''DD/MM/YYYY'')',
'                           AND e.id_ticket = a.id_ticket',
'                       --    AND e.hora_atencion IS NULL',
'                            AND NVL(e.estado, ''ACTIVO'') IN (''CANCELADO'',''FINALIZADO''))',
'                   AND a.fecha =',
'                       to_date(to_char(SYSDATE, ''DD/MM/YYYY''), ''DD/MM/YYYY'')',
'                   AND ((a.cod_tipo_cliente IN (''2'', ''3'') AND',
'                       :P468_COD_TIPO_CLIENTE = ''2'') OR',
'                       a.cod_tipo_cliente = :P468_COD_TIPO_CLIENTE)',
'                    AND a.estado IN (''PENDIENTE'', ''ATENDIDO'')',
'                UNION ALL',
'                SELECT ''Nro. Ticket: '' || a.ser_ticket || '''' || a.nro_ticket ticket,',
'                       NULL,',
'                       observacion,',
'                       ',
'                       (SELECT listagg(c.descripcion, '',  '') within GROUP(ORDER BY rownum) descripcion',
'                          FROM ca_ticket_atencion     z,',
'                               ca_ticket_atencion_det d,',
'                               ca_tickets_tipo        c',
'                         WHERE z.id_ticket = d.id_ticket',
'                           AND z.cod_empresa = ''1''',
'                           AND c.cod_ticket = d.cod_tipo_ticket',
'                           AND z.id_ticket = a.id_ticket) tipo_ticket,',
'                       a.ser_ticket serie,',
'                       a.nro_ticket,',
'                       2 prioridad,',
'                       a.id_ticket,',
'                       a.fecha,',
'                       a.cod_tipo_cliente,',
'                       a.ser_ticket || '''' || a.nro_ticket tic,',
'                       to_char(a.fecha_alta, ''hh24:mi:ss'')  fecha_a',
'                  FROM ca_ticket_atencion a',
'                 WHERE a.cod_empresa = ''1''',
'                   AND a.fecha =',
'                       to_date(to_char(SYSDATE, ''DD/MM/YYYY''), ''DD/MM/YYYY'')',
'                   AND ((a.cod_tipo_cliente IN (''2'', ''3'') AND',
'                       :P468_COD_TIPO_CLIENTE = ''2'') OR',
'                       a.cod_tipo_cliente = :P468_COD_TIPO_CLIENTE)',
'                   AND a.cod_cliente IS NULL',
'                   AND NOT EXISTS',
'                 (SELECT DISTINCT (''1'')',
'                          FROM llamador_ticket e',
'                         WHERE e.fecha = to_date(to_char(SYSDATE, ''DD/MM/YYYY''),',
'                                                 ''DD/MM/YYYY'')',
'                           AND e.id_ticket = a.id_ticket',
'                         --  AND e.hora_atencion IS NULL',
'                           AND NVL(e.estado, ''ACTIVO'') IN (''CANCELADO'',''FINALIZADO''))',
'                AND a.estado IN (''PENDIENTE'', ''ATENDIDO'')) x',
'        ',
'         ORDER BY llamo, orden, id_ticket, procesar ASC);',
'',
''))
,p_process_clob_language=>'PLSQL'
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
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(67056421824084731)
,p_process_sequence=>10
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'VALIDA_CANCELACION'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'DECLARE',
'    v_id_ticket NUMBER;',
'    v_contador NUMBER := 0;',
'    v_retorna varchar2(2) := ''N'';',
'BEGIN',
'    v_id_ticket := apex_application.g_x01;',
'    BEGIN',
'    select COUNT(*)',
'    INTO v_contador',
'    from  llamador_ticket e',
'     WHERE e.fecha = to_date(to_char(SYSDATE, ''DD/MM/YYYY''),',
'                             ''DD/MM/YYYY'')',
'                   and id_ticket = v_id_ticket;',
'    EXCEPTION ',
'        WHEN OTHERS THEN ',
'            v_contador := 0;',
'    END;',
'',
'    IF v_contador > 0 THEN ',
'        v_retorna  := ''S'';',
'    END IF;',
'  apex_json.open_object;',
'  apex_json.write(''success'', TRUE);',
'  apex_json.write(''p_retorna'', v_retorna);',
'  apex_json.close_object;',
'EXCEPTION',
'  WHEN OTHERS THEN',
'    apex_json.open_object;',
'    apex_json.write(''success'', FALSE);',
'    apex_json.write(''p_retorna'', v_retorna);',
'    apex_json.close_object;',
'END;'))
,p_process_clob_language=>'PLSQL'
);
null;
wwv_flow_imp.component_end;
end;
/
