prompt --application/pages/page_00502
begin
--   Manifest
--     PAGE: 00502
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
 p_id=>502
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'TUR - Visualizador de Ticket Caja'
,p_alias=>'VISUALIZADOR-DE-TICKET-CAJA'
,p_step_title=>'Visualizador de Ticket Caja'
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
'',
'',
'',
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
'.card_css{',
'background-color: #fbf8cc;',
'background-image: linear-gradient(0deg, #fbf8cc 0%, #97D9E1 100%);',
'',
'',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'23'
,p_last_updated_by=>'JUANSA'
,p_last_upd_yyyymmddhh24miss=>'20230803153613'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(288214024000259849)
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
 p_id=>wwv_flow_imp.id(286298162834824314)
,p_plug_name=>'Ticket Asignados'
,p_parent_plug_id=>wwv_flow_imp.id(288214024000259849)
,p_region_template_options=>'#DEFAULT#:t-CardsRegion--styleB:t-Form--stretchInputs:t-Form--leftLabels:t-Form--labelsAbove:margin-left-none:margin-right-none'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40100032401263654)
,p_plug_display_sequence=>50
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DISTINCT ticket,',
'                cod_cliente,',
'                nombre,',
'                tipo_ticket,',
'                serie,',
'                nro_ticket,',
'                id_ticket,',
'                cod_tipo_cliente,',
'                CASE',
'                  WHEN cod_tipo_cliente = ''3'' THEN',
'                   ''Cliente Preferencial''',
'                  ELSE',
'                   NULL',
'                END cliente,',
'                CASE',
'                  WHEN cod_tipo_cliente = ''3'' THEN',
'                   0',
'                  ELSE',
'                   1',
'                END orden,',
'                rownum ordenador,',
'                llamo,',
'                tic,',
'                ''Hora Ingreso '' || fecha_a fecha_a',
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
'               0 llamo,',
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
'                       to_char(a.fecha_alta, ''hh24:mi:ss'') fecha_a',
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
'                   AND EXISTS',
'                 (SELECT DISTINCT ''1''',
'                          FROM llamador_ticket z, ca_puesto_box b',
'                         WHERE b.cod_box = z.box',
'                           AND z.id_ticket = a.id_ticket',
'                           AND z.fecha = to_date(to_char(SYSDATE, ''DD/MM/YYYY''),',
'                                                 ''DD/MM/YYYY'')',
'                           AND nvl(z.estado, ''ACTIVO'') NOT IN',
'                               (''CANCELADO'', ''FINALIZADO'', ''ACTIVO'')',
'                           AND b.cod_usuario = :app_user',
'                           AND z.hora_atencion IS NULL)',
'                   AND a.fecha =',
'                       to_date(to_char(SYSDATE, ''DD/MM/YYYY''), ''DD/MM/YYYY'')',
'                   AND ((a.cod_tipo_cliente IN (''2'', ''3'') AND',
'                      :p502_cod_tipo_cliente = ''2'') OR',
'                       (a.cod_tipo_cliente IN (''1'', ''2'', ''3'') AND',
'                      :p502_cod_tipo_cliente = ''0'') OR',
'                       a.cod_tipo_cliente =:p502_cod_tipo_cliente)',
'                   AND a.estado IN (''PENDIENTE'', ''ATENDIDO'', ''CAJA'')',
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
'                       to_char(a.fecha_alta, ''hh24:mi:ss'') fecha_a',
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
'                   AND NOT EXISTS',
'                 (SELECT DISTINCT (''1'')',
'                          FROM llamador_ticket e',
'                         WHERE e.fecha = to_date(to_char(SYSDATE, ''DD/MM/YYYY''),',
'                                                 ''DD/MM/YYYY'')',
'                           AND e.id_ticket = a.id_ticket',
'                              --    AND e.hora_atencion IS NULL',
'                           AND nvl(e.estado, ''ACTIVO'') IN',
'                               (''CANCELADO'', ''FINALIZADO''))',
'                   AND a.fecha =',
'                       to_date(to_char(SYSDATE, ''DD/MM/YYYY''), ''DD/MM/YYYY'')',
'                   AND ((a.cod_tipo_cliente IN (''2'', ''3'') AND',
'                      :p502_cod_tipo_cliente = ''2'') OR',
'                       (a.cod_tipo_cliente IN (''1'', ''2'', ''3'') AND',
'                      :p502_cod_tipo_cliente = ''0'') OR',
'                       a.cod_tipo_cliente =:p502_cod_tipo_cliente)',
'                   AND a.estado IN (''PENDIENTE'', ''ATENDIDO'', ''CAJA'')',
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
'                       to_char(a.fecha_alta, ''hh24:mi:ss'') fecha_a',
'                  FROM ca_ticket_atencion a',
'                 WHERE a.cod_empresa = ''1''',
'                   AND a.fecha =',
'                       to_date(to_char(SYSDATE, ''DD/MM/YYYY''), ''DD/MM/YYYY'')',
'                   AND ((a.cod_tipo_cliente IN (''2'', ''3'') AND',
'                      :p502_cod_tipo_cliente = ''2'') OR',
'                       (a.cod_tipo_cliente IN (''1'', ''2'', ''3'') AND',
'                      :p502_cod_tipo_cliente = ''0'') OR',
'                       a.cod_tipo_cliente =:p502_cod_tipo_cliente)',
'                   AND a.cod_cliente IS NULL',
'                   AND NOT EXISTS',
'                 (SELECT DISTINCT (''1'')',
'                          FROM llamador_ticket e',
'                         WHERE e.fecha = to_date(to_char(SYSDATE, ''DD/MM/YYYY''),',
'                                                 ''DD/MM/YYYY'')',
'                           AND e.id_ticket = a.id_ticket',
'                           AND nvl(e.estado, ''ACTIVO'') IN',
'                               (''CANCELADO'', ''FINALIZADO''))',
'                   AND a.estado IN (''CAJA'')) x',
'        ',
'         ORDER BY llamo, orden, id_ticket, procesar ASC)',
' ORDER BY ordenador ASC',
''))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_ajax_items_to_submit=>'P_COD_EMPRESA,P502_COD_TIPO_CLIENTE'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'SET'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_show_total_row_count=>true
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(148362513922351589)
,p_region_id=>wwv_flow_imp.id(286298162834824314)
,p_layout_type=>'GRID'
,p_grid_column_count=>4
,p_card_css_classes=>'card_css'
,p_title_adv_formatting=>false
,p_title_column_name=>'NOMBRE'
,p_title_css_classes=>'carta'
,p_sub_title_adv_formatting=>false
,p_sub_title_column_name=>'TIPO_TICKET'
,p_body_adv_formatting=>false
,p_body_column_name=>'CLIENTE'
,p_second_body_adv_formatting=>false
,p_badge_column_name=>'TICKET'
,p_media_adv_formatting=>false
);
wwv_flow_imp_page.create_card_action(
 p_id=>wwv_flow_imp.id(148363658398351588)
,p_card_id=>wwv_flow_imp.id(148362513922351589)
,p_action_type=>'BUTTON'
,p_position=>'SECONDARY'
,p_display_sequence=>10
,p_label=>'Llamar'
,p_link_target_type=>'REDIRECT_URL'
,p_link_target=>'javascript:$s(''P502_ID_TICKET'',''&ID_TICKET.'');'
,p_button_display_type=>'TEXT_WITH_ICON'
,p_icon_css_classes=>'fa-assistive-listening-systems'
,p_is_hot=>true
,p_condition_type=>'EXPRESSION'
,p_condition_expr1=>':ordenador = ''1'''
,p_condition_expr2=>'PLSQL'
,p_exec_cond_for_each_row=>true
);
wwv_flow_imp_page.create_card_action(
 p_id=>wwv_flow_imp.id(148364287783351587)
,p_card_id=>wwv_flow_imp.id(148362513922351589)
,p_action_type=>'BUTTON'
,p_position=>'SECONDARY'
,p_display_sequence=>30
,p_label=>'Cerrar'
,p_link_target_type=>'REDIRECT_URL'
,p_link_target=>'javascript:$s(''P502_CANCELAR'',''&ID_TICKET.'');'
,p_button_display_type=>'TEXT_WITH_ICON'
,p_icon_css_classes=>'fa-remove'
,p_is_hot=>true
,p_condition_type=>'EXPRESSION'
,p_condition_expr1=>':ordenador = ''1'''
,p_condition_expr2=>'PLSQL'
,p_exec_cond_for_each_row=>true
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(437776720270699701)
,p_plug_name=>'LOGO'
,p_parent_plug_id=>wwv_flow_imp.id(288214024000259849)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_header=>'<img src="#WORKSPACE_FILES#logo_ngo.png" alt="NGO SAECA" width="100" height="110" >'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(437777196109698122)
,p_plug_name=>'TITULO'
,p_parent_plug_id=>wwv_flow_imp.id(288214024000259849)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>30
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_header=>'<h4 style="text-align:center;font-size:50px;" class="center" >TICKETS ABIERTOS CAJA</h4> '
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(437777566298695347)
,p_plug_name=>'TICKET'
,p_parent_plug_id=>wwv_flow_imp.id(288214024000259849)
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
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(148364850267351587)
,p_button_sequence=>110
,p_button_plug_id=>wwv_flow_imp.id(286298162834824314)
,p_button_name=>'Redirigir'
,p_button_static_id=>'redirigir'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Redirigir'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(148385724276351573)
,p_branch_name=>unistr('Ir a P\00E1gina 486')
,p_branch_action=>'f?p=&APP_ID.:486:&SESSION.::&DEBUG.::P486_CLIENTE,P486_NRO_TICKET,P486_ID_TICKET,P486_COD_CLIENTE,P486_NRO_TICKET:&P502_CLIENTE.,&P502_TICKET.,&P502_ATENDER.,&P502_COD_CLIENTE.,&P502_SER_TICKET.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'BEFORE_VALIDATION'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(148365235516351587)
,p_name=>'P502_TICKET'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(286298162834824314)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(148365689553351587)
,p_name=>'P502_BOX'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(286298162834824314)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(148366050597351586)
,p_name=>'P502_SERIE_BOX'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(286298162834824314)
,p_item_default=>'A'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(148366490814351586)
,p_name=>'P502_REFRESCAR'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(286298162834824314)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(148366854588351586)
,p_name=>'P502_ID_TICKET'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(286298162834824314)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(148367298301351586)
,p_name=>'P502_ATENDER'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(286298162834824314)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(148367656533351586)
,p_name=>'P502_CANCELAR'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(286298162834824314)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(148368052100351586)
,p_name=>'P502_ACTUALIZA_GRILLA'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(286298162834824314)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(148368471271351585)
,p_name=>'P502_CLIENTE'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(286298162834824314)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(148368891508351585)
,p_name=>'P502_COD_TIPO_CLIENTE'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(286298162834824314)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(148369245981351585)
,p_name=>'P502_COD_CLIENTE'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(286298162834824314)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(148369668949351585)
,p_name=>'P502_SER_TICKET'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(286298162834824314)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(148370386240351585)
,p_name=>'P502_TICKET_PEN'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(437777566298695347)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(148378222242351577)
,p_name=>'Carga ticket'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P502_TICKET'
,p_condition_element=>'P502_TICKET'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(148378702503351576)
,p_event_id=>wwv_flow_imp.id(148378222242351577)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE ',
'    v_numero NUMBER;',
'    v_usuario VARCHAR2(500);',
'BEGIN ',
'    :P0_MENSAJE_VALIDACION := null;',
'    begin',
'        SELECT a.cod_usuario',
'        into v_usuario',
'          FROM llamador_ticket a, ca_puesto_box b',
'          where b.cod_box = a.box',
'          and a.id_ticket = :P502_ID_TICKET',
'          and a.fecha= to_date(to_char(SYSDATE, ''DD/MM/YYYY''), ''DD/MM/YYYY'')',
'          and b.cod_usuario  <> :app_user',
'          and a.estado = ''CAJA''',
'          and rownum = 1;',
'  exception ',
'    when others then ',
'        v_usuario := NULL;',
'    END;',
'',
'',
'    IF v_usuario IS NULL or v_usuario = :app_user  THEN ',
'        BEGIN ',
'            SELECT NVL(MAX(id_llamador), 0)+1 ',
'            INTO v_numero',
'            FROM INV.LLAMADOR_TICKET;',
'            EXCEPTION ',
'                WHEN OTHERS THEN ',
'                    v_numero := 0;',
'                 ',
'        END;',
'',
'        INSERT INTO INV.LLAMADOR_TICKET (id_llamador, box, num_ticket, llamar, fecha, hora_llamada, SERIE_TICKET, ID_TICKET, OPERACION, estado)',
'                                VALUES (v_numero, :P502_BOX, :P502_TICKET, ''S'', SYSDATE, NULL, :P502_SERIE_BOX, :P502_ID_TICKET, ''CAJA''||:P502_BOX, ''CAJA'');',
'        ',
'',
'        :P502_REFRESCAR:=0;',
'    ELSE ',
'        :P0_MENSAJE_VALIDACION :=  ''El ticket ya fue atendido por el usuario ''||v_usuario;',
'        :P502_REFRESCAR := 1;',
'    END IF;',
'END;'))
,p_attribute_02=>'P502_BOX,P502_TICKET,P502_SERIE_BOX,P502_ID_TICKET'
,p_attribute_03=>'P502_REFRESCAR,P0_MENSAJE_VALIDACION'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(148373999889351578)
,p_name=>'Obtiene datos de usuarios'
,p_event_sequence=>20
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(148374909348351578)
,p_event_id=>wwv_flow_imp.id(148373999889351578)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN ',
'      ',
'    SELECT DISTINCT (COD_BOX), b.cod_tipo_cliente',
'        INTO :P502_BOX, :P502_COD_TIPO_CLIENTE',
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
'END;',
'',
''))
,p_attribute_03=>'P502_BOX,P502_COD_TIPO_CLIENTE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(148374457640351578)
,p_event_id=>wwv_flow_imp.id(148373999889351578)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(286298162834824314)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(148373045065351579)
,p_name=>'Refresca region'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P502_REFRESCAR'
,p_condition_element=>'P502_REFRESCAR'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'1'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(148373550761351579)
,p_event_id=>wwv_flow_imp.id(148373045065351579)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(286298162834824314)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(148384261042351574)
,p_name=>'Nuevo'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P502_ID_TICKET'
,p_condition_element=>'P502_ID_TICKET'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(148384718017351574)
,p_event_id=>wwv_flow_imp.id(148384261042351574)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    select NRO_TICKET, SER_TICKET ',
'    INTO :P502_TICKET, :P502_SERIE_BOX',
'    from ca_ticket_atencion   A',
'    WHERE A.ID_TICKET  =  :P502_ID_TICKET;',
'END;'))
,p_attribute_02=>'P502_ID_TICKET'
,p_attribute_03=>'P502_SERIE_BOX,P502_TICKET'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(148385256359351574)
,p_event_id=>wwv_flow_imp.id(148384261042351574)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P502_ID_TICKET'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(148371180865351581)
,p_name=>'Atender cliente'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P502_ATENDER'
,p_condition_element=>'P502_ATENDER'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(148372611658351579)
,p_event_id=>wwv_flow_imp.id(148371180865351581)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
' begin ',
' SELECT ''Nro. Ticket: '' || a.ser_ticket || '''' || a.nro_ticket ticket,',
'        p.nombre,',
'        a.ser_ticket serie,',
'        a.id_ticket,',
'        c.cod_cliente,',
'        a.ser_ticket || '''' || a.nro_ticket ticket',
'    into :P502_TICKET,',
'        :P502_CLIENTE,',
'        :P502_SERIE_BOX,',
'        :P502_ID_TICKET,',
'        :P502_COD_CLIENTE,',
'        :P502_SER_TICKET',
'   FROM ca_ticket_atencion a, cc_clientes c, personas p, ca_tickets_tipo t',
'  WHERE a.cod_cliente = c.cod_cliente',
'    AND p.cod_persona = c.cod_persona',
'    AND a.cod_empresa = c.cod_empresa',
'    AND t.cod_ticket = a.cod_tipo_ticket',
'    AND t.cod_empresa = ''1''',
'    AND a.id_ticket = :P502_ATENDER',
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
'                  and a.id_ticket  =  :P502_ATENDER;',
'exception ',
'    when others then ',
'      :P502_TICKET :=  null;',
'      :P502_CLIENTE :=  null;',
'      :P502_SERIE_BOX :=  null;',
'      :P502_ID_TICKET :=  null;',
'      :P502_COD_CLIENTE :=  null;',
'      :P502_SER_TICKET :=  null;',
'end;',
'',
'',
'',
'update INV.LLAMADOR_TICKET set hora_atencion  = sysdate',
'where id_ticket =  :P502_ATENDER;'))
,p_attribute_02=>'P502_ATENDER'
,p_attribute_03=>'P502_TICKET,P502_CLIENTE,P502_SERIE_BOX,P502_ID_TICKET,P502_COD_CLIENTE,P502_SER_TICKET'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(148371697278351580)
,p_event_id=>wwv_flow_imp.id(148371180865351581)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(286298162834824314)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(148372188080351579)
,p_event_id=>wwv_flow_imp.id(148371180865351581)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(document).ready(function(){ $(''#redirigir'').trigger(''click''); }); ',
'2'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(148379114283351576)
,p_name=>unistr('Actualizaci\00F3n autom\00E1tica')
,p_event_sequence=>70
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(148379695187351576)
,p_event_id=>wwv_flow_imp.id(148379114283351576)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'setInterval(''refrescargrilla()'',15000);'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(148381968149351575)
,p_name=>'Refresca grilla'
,p_event_sequence=>80
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P502_ACTUALIZA_GRILLA'
,p_condition_element=>'P502_ACTUALIZA_GRILLA'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'1'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(148382430332351575)
,p_event_id=>wwv_flow_imp.id(148381968149351575)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(286298162834824314)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(148382951791351575)
,p_event_id=>wwv_flow_imp.id(148381968149351575)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P502_ACTUALIZA_GRILLA'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(148383302209351575)
,p_name=>unistr('Abre modal de cancelaci\00F3n')
,p_event_sequence=>100
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P502_CANCELAR'
,p_condition_element=>'P502_CANCELAR'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
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
 p_id=>wwv_flow_imp.id(148377369406351577)
,p_event_id=>wwv_flow_imp.id(148383302209351575)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'update INV.LLAMADOR_TICKET set estado  = ''FINALIZADO''',
'where id_ticket =  :P502_CANCELAR;',
'',
'',
'update ca_ticket_atencion_det  set hora_fin = sysdate,',
'                                    estado = ''FINALIZADO''',
'WHERE COD_TIPO_TICKET = ''08''',
'AND id_ticket =  :P502_CANCELAR;',
'',
'',
'update ca_ticket_atencion set estado  = ''FINALIZADO''',
'where id_ticket =  :P502_CANCELAR;'))
,p_attribute_02=>'P502_CANCELAR'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(148381580916351575)
,p_event_id=>wwv_flow_imp.id(148383302209351575)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(286298162834824314)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(148370736600351582)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Contador de ticket'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'                ',
'',
'',
'SELECT  COUNT(*)',
'INTO :P468_TICKET_PEN',
'',
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
'                       to_char(a.fecha_alta, ''hh24:mi:ss'') fecha_a',
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
'                   AND EXISTS',
'                 (SELECT DISTINCT ''1''',
'                          FROM llamador_ticket z, ca_puesto_box b',
'                         WHERE b.cod_box = z.box',
'                           AND z.id_ticket = a.id_ticket',
'                           AND z.fecha = to_date(to_char(SYSDATE, ''DD/MM/YYYY''),',
'                                                 ''DD/MM/YYYY'')',
'                           AND nvl(z.estado, ''ACTIVO'') NOT IN',
'                               (''CANCELADO'', ''FINALIZADO'', ''ACTIVO'')',
'                           AND b.cod_usuario = :app_user',
'                           AND z.hora_atencion IS NULL)',
'                   AND a.fecha =',
'                       to_date(to_char(SYSDATE, ''DD/MM/YYYY''), ''DD/MM/YYYY'')',
'                   AND ((a.cod_tipo_cliente IN (''2'', ''3'') AND',
'                      :p502_cod_tipo_cliente = ''2'') OR',
'                       (a.cod_tipo_cliente IN (''1'', ''2'', ''3'') AND',
'                      :p502_cod_tipo_cliente = ''0'') OR',
'                       a.cod_tipo_cliente =:p502_cod_tipo_cliente)',
'                   AND a.estado IN (''PENDIENTE'', ''ATENDIDO'', ''CAJA'')',
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
'                       to_char(a.fecha_alta, ''hh24:mi:ss'') fecha_a',
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
'                   AND NOT EXISTS',
'                 (SELECT DISTINCT (''1'')',
'                          FROM llamador_ticket e',
'                         WHERE e.fecha = to_date(to_char(SYSDATE, ''DD/MM/YYYY''),',
'                                                 ''DD/MM/YYYY'')',
'                           AND e.id_ticket = a.id_ticket',
'                              --    AND e.hora_atencion IS NULL',
'                           AND nvl(e.estado, ''ACTIVO'') IN',
'                               (''CANCELADO'', ''FINALIZADO''))',
'                   AND a.fecha =',
'                       to_date(to_char(SYSDATE, ''DD/MM/YYYY''), ''DD/MM/YYYY'')',
'                   AND ((a.cod_tipo_cliente IN (''2'', ''3'') AND',
'                      :p502_cod_tipo_cliente = ''2'') OR',
'                       (a.cod_tipo_cliente IN (''1'', ''2'', ''3'') AND',
'                      :p502_cod_tipo_cliente = ''0'') OR',
'                       a.cod_tipo_cliente =:p502_cod_tipo_cliente)',
'                   AND a.estado IN (''PENDIENTE'', ''ATENDIDO'', ''CAJA'')',
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
'                       to_char(a.fecha_alta, ''hh24:mi:ss'') fecha_a',
'                  FROM ca_ticket_atencion a',
'                 WHERE a.cod_empresa = ''1''',
'                   AND a.fecha =',
'                       to_date(to_char(SYSDATE, ''DD/MM/YYYY''), ''DD/MM/YYYY'')',
'                   AND ((a.cod_tipo_cliente IN (''2'', ''3'') AND',
'                      :p502_cod_tipo_cliente = ''2'') OR',
'                       (a.cod_tipo_cliente IN (''1'', ''2'', ''3'') AND',
'                      :p502_cod_tipo_cliente = ''0'') OR',
'                       a.cod_tipo_cliente =:p502_cod_tipo_cliente)',
'                   AND a.cod_cliente IS NULL',
'                   AND NOT EXISTS',
'                 (SELECT DISTINCT (''1'')',
'                          FROM llamador_ticket e',
'                         WHERE e.fecha = to_date(to_char(SYSDATE, ''DD/MM/YYYY''),',
'                                                 ''DD/MM/YYYY'')',
'                           AND e.id_ticket = a.id_ticket',
'                           AND nvl(e.estado, ''ACTIVO'') IN',
'                               (''CANCELADO'', ''FINALIZADO''))',
'                   AND a.estado IN (''CAJA''));'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp.component_end;
end;
/
