prompt --application/pages/page_00561
begin
--   Manifest
--     PAGE: 00561
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
 p_id=>561
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'TUR - ticket_llamador_caja'
,p_alias=>'TUR-TICKET-LLAMADOR-CAJA'
,p_step_title=>'TUR - ticket_llamador_caja'
,p_html_page_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'background-color:green;',
'',
'',
''))
,p_footer_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
''))
,p_autocomplete_on_off=>'OFF'
,p_html_page_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'label[for="P71_NUMERO1"], #P71_NUMERO1 {',
'  font-size: 16px !important;',
'  font-weight: bold !important;',
'  color: red! important;',
'    }'))
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function  refrescargrilla() {',
'    apex.item(''P561_REFRESCA_REGION'').setValue(1);',
'}',
'',
'function contador(){',
'	 apex.server.process(',
'        ''VERIFICA_TICKET'', ',
'        { x01: null}, ',
'        {',
'        success: function (pData) { ',
'            if (pData.p_num_ticket === "0") {',
'                $x_Hide("ATTENDANCE");',
'                $x_Show("promociones");',
'                apex.item("P561_REPRODUCIR").setValue(0);',
'            }  ',
'            else if(pData.p_num_ticket >  0) {',
'                ',
'                $x_Hide("promociones");',
'                $x_Show("ATTENDANCE");',
'                $("#audio3").attr(''src'', "#WORKSPACE_FILES#"+pData.p_serie_ticket+".mp3"); ',
'                $("#audio4").attr(''src'', "#WORKSPACE_FILES#"+pData.p_num_ticket+".mp3"); ',
'                $("#audio5").attr(''src'', "#WORKSPACE_FILES#"+pData.p_operacion+".mp3"); ',
'                ',
'                apex.item("P561_NUMERO1").setValue(pData.p_num_ticket);',
'                apex.item("P561_LETRA").setValue(pData.p_serie_ticket);',
'                apex.item("P561_BOX").setValue(pData.p_box);',
'                apex.item("P561_ID_TICKET").setValue(pData.p_id_ticket);',
'                apex.item("P561_NUMERO_TICKET").setValue(pData.p_serie_ticket+pData.p_num_ticket);',
'                apex.item("P561_BOX_TICKET").setValue(''Caja ''+pData.p_box);',
'',
'                apex.server.process(',
'                ''ACTUALIZA_HORA_LLAMADA'', ',
'                { x01: apex.item("P561_ID_TICKET").getValue()}, ',
'                {',
'                success: function (pData) { ',
'                    null;',
'                    ',
'                    }, ',
'                });',
'                ',
'            var myVar1 = setTimeout(myTimer1, 1000)',
'                function myTimer1() {  ',
'                    audio1.play();        ',
'                }   ',
'            var myVar = setTimeout(myTimer, 2000)',
'                function myTimer() { ',
'                    audio2.play();',
'                }',
'',
'            var myVar3 = setTimeout(myTimer3, 3000)',
'                function myTimer3() {',
'                    audio3.play();',
'                }',
'',
'',
'',
'',
'            var myVar4 = setTimeout(myTimer4, 4000)',
'                function myTimer4() {',
'                    audio4.play();',
'                }',
'',
'',
'            var myVar5 = setTimeout(myTimer5, 5000)',
'                function myTimer5() {',
'                    audio5.play();',
'                }',
'',
'/*',
'            var myVar6 = setTimeout(myTimer6, 6000)',
'                function myTimer6() {',
'                    audio6.play();',
'                }',
'*/',
'            var myVar8 = setTimeout(myTimer8, 7000)',
'                function myTimer8() {',
'                    apex.item("P561_REPRODUCIR").setValue(1);',
'                }     ',
'            }',
'            ',
'            }, ',
'        });',
'} '))
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
' setInterval("jQuery(''#ATTENDANCE'').trigger(''apexrefresh'');", 180000);',
'setInterval("jQuery(''#REPO'').trigger(''apexrefresh'');", 18000);',
'',
''))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#ticket .t-Region-body {',
'    background: transparent;',
'}',
'',
'video{',
'    width:890px;',
'    height:auto;',
'  }',
'',
'  .t-Body {',
'      background-color: #001b3f;',
'  }',
'',
'',
'#en_espera  {',
'    background-color: #1f567c;',
'}',
'',
'#atendidos  {',
'   background-color: lightslategrey;',
'}',
'',
'.a-GV-altMessage-text {',
'    color: white;',
'    font-weight: bold;',
'    ',
'}',
'',
'#espera {',
'    background-color: cadetblue;',
'}',
'',
'.a-CardView-title {',
'    font-size: 35px;',
'    font-weight: bold;',
'    FONT-FAMILY: system-ui;',
'}',
'',
'.a-CardView-mainContent  {',
'    font-size: 30px;',
'    font-weight: bold;',
'    align-content: center;',
'    FONT-FAMILY: system-ui;',
'}',
'',
'.a-CardView-subContent {',
'    font-size: 15px;',
'    font-weight: bold;',
'}'))
,p_step_template=>wwv_flow_imp.id(40085302490263650)
,p_page_template_options=>'#DEFAULT#:js-pageStickyMobileHeader'
,p_page_is_public_y_n=>'Y'
,p_page_component_map=>'23'
,p_last_updated_by=>'HSEGOVIA'
,p_last_upd_yyyymmddhh24miss=>'20230802164633'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(318667481796372575)
,p_plug_name=>unistr('Regi\00F3n de promociones')
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_grid_column_span=>7
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(579204859866745575)
,p_plug_name=>'Ticket'
,p_region_name=>'ATTENDANCE'
,p_parent_plug_id=>wwv_flow_imp.id(318667481796372575)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>50
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html>',
'<head>',
'<meta charset="UTF-8">',
'<meta name="viewport" content="width=device-width, initial-scale=1"> ',
'</head> ',
'<body>		',
'<audio id="audio1" src="#WORKSPACE_FILES#timbre.wav"/>		',
'<audio id="audio2" src="#WORKSPACE_FILES#ticket.mp3"/>',
'<audio id="audio3" src="#WORKSPACE_FILES#&P561_LETRA..mp3"/>			',
'<audio id="audio4" src="#WORKSPACE_FILES#&P561_NUMERO1..mp3"/>',
'<audio id="audio5" src="#WORKSPACE_FILES#&P561_OPERACION..mp3"/>',
'<audio class="my_audio" preload="none"></audio>',
'</body>',
'</html>',
'',
''))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'Y'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(318667711188372577)
,p_plug_name=>unistr('Regi\00F3n de Tickets')
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>10
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(324834077931641156)
,p_plug_name=>'TICKETS EN ESPERA CAJA'
,p_region_name=>'espera'
,p_parent_plug_id=>wwv_flow_imp.id(318667711188372577)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>110
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(324385685781122557)
,p_plug_name=>'EN ESPERA CAJA'
,p_parent_plug_id=>wwv_flow_imp.id(324834077931641156)
,p_region_template_options=>'#DEFAULT#:t-CardsRegion--styleB'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40100032401263654)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT  distinct ''Ticket: '' || serie || '''' || nro_ticket ticket,',
'       cod_cliente,',
'       nombre,',
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
'       llamo',
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
'               0  llamo',
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
'                       a.cod_tipo_cliente',
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
'                   AND   exists  ',
'                       (SELECT distinct ''1''',
'                          FROM llamador_ticket z, ca_puesto_box b',
'                         WHERE b.cod_box = z.box',
'                           AND z.id_ticket = a.id_ticket',
'                           AND z.fecha = to_date(to_char(SYSDATE, ''DD/MM/YYYY''),',
'                                                 ''DD/MM/YYYY'')',
'                           and z.estado  NOT IN (''CANCELADO'', ''FINALIZADO'')',
'                            AND Z.HORA_LLAMADA IS NULL)',
'                   AND a.fecha =',
'                       to_date(to_char(SYSDATE, ''DD/MM/YYYY''), ''DD/MM/YYYY'')',
'                    AND a.cod_tipo_cliente IN (''1'',''2'', ''3'')',
'                    AND a.estado=''CAJA''',
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
'                       a.cod_tipo_cliente',
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
'                           AND e.id_ticket = a.id_ticket)',
'                   AND a.fecha =',
'                       to_date(to_char(SYSDATE, ''DD/MM/YYYY''), ''DD/MM/YYYY'')',
'                   AND a.cod_tipo_cliente IN (''1'',''2'', ''3'')',
'                   AND a.estado=''CAJA''     ',
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
'                       a.cod_tipo_cliente',
'                  FROM ca_ticket_atencion a',
'                 WHERE a.cod_empresa = ''1''',
'                   AND a.fecha =',
'                       to_date(to_char(SYSDATE, ''DD/MM/YYYY''), ''DD/MM/YYYY'')',
'',
'                   AND a.cod_cliente IS NULL',
'                   AND a.estado=''CAJA''',
'                   AND NOT EXISTS',
'                 (SELECT DISTINCT (''1'')',
'                          FROM llamador_ticket e',
'                         WHERE e.fecha = to_date(to_char(SYSDATE, ''DD/MM/YYYY''),',
'                                                 ''DD/MM/YYYY'')',
'                           AND e.id_ticket = a.id_ticket',
'                           AND e.hora_atencion IS NULL)',
'                    AND a.cod_tipo_cliente IN (''1'',''2'', ''3'')) x',
'                    ',
'         ORDER BY llamo, orden, id_ticket, procesar ASC)',
' ORDER BY id_ticket ASC',
''))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_ajax_items_to_submit=>'P_COD_EMPRESA'
,p_plug_query_num_rows_type=>'SCROLL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_show_total_row_count=>true
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(180730434603899829)
,p_region_id=>wwv_flow_imp.id(324385685781122557)
,p_layout_type=>'GRID'
,p_grid_column_count=>5
,p_title_adv_formatting=>false
,p_title_column_name=>'TICKET'
,p_sub_title_adv_formatting=>false
,p_body_adv_formatting=>false
,p_second_body_adv_formatting=>false
,p_media_adv_formatting=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(324867239966579515)
,p_plug_name=>'TICKETS EN ESPERA CLIENTES'
,p_region_name=>'espera'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>40
,p_plug_new_grid_row=>false
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(324418847816060916)
,p_plug_name=>'EN ESPERA CLIENTES'
,p_parent_plug_id=>wwv_flow_imp.id(324867239966579515)
,p_region_template_options=>'#DEFAULT#:t-CardsRegion--styleB'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40100032401263654)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT  distinct ''Ticket: '' || serie || '''' || nro_ticket ticket,',
'       cod_cliente,',
'       nombre,',
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
'       llamo',
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
'               0  llamo',
'        ',
'          FROM (SELECT ''Ticket: '' || a.ser_ticket || '''' || a.nro_ticket ticket,',
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
'                       a.cod_tipo_cliente',
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
'                   AND   exists  ',
'                       (SELECT distinct ''1''',
'                          FROM llamador_ticket z, ca_puesto_box b',
'                         WHERE b.cod_box = z.box',
'                           AND z.id_ticket = a.id_ticket',
'                           AND z.fecha = to_date(to_char(SYSDATE, ''DD/MM/YYYY''),',
'                                                 ''DD/MM/YYYY'')',
'                           and z.estado  NOT IN (''CANCELADO'', ''FINALIZADO'')',
'                            AND Z.HORA_LLAMADA IS NULL)',
'                   AND a.fecha =',
'                       to_date(to_char(SYSDATE, ''DD/MM/YYYY''), ''DD/MM/YYYY'')',
'                    AND a.cod_tipo_cliente IN (''2'', ''3'')',
'                    AND a.estado=''PENDIENTE''',
'                UNION ALL',
'                SELECT ''Ticket: '' || a.ser_ticket || '''' || a.nro_ticket ticket,',
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
'                       a.cod_tipo_cliente',
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
'                           AND e.id_ticket = a.id_ticket)',
'                   AND a.fecha =',
'                       to_date(to_char(SYSDATE, ''DD/MM/YYYY''), ''DD/MM/YYYY'')',
'                   AND a.cod_tipo_cliente IN (''2'', ''3'')',
'                   AND a.estado=''PENDIENTE''     ',
'                UNION ALL',
'                SELECT ''Ticket: '' || a.ser_ticket || '''' || a.nro_ticket ticket,',
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
'                       a.cod_tipo_cliente',
'                  FROM ca_ticket_atencion a',
'                 WHERE a.cod_empresa = ''1''',
'                   AND a.fecha =',
'                       to_date(to_char(SYSDATE, ''DD/MM/YYYY''), ''DD/MM/YYYY'')',
'',
'                   AND a.cod_cliente IS NULL',
'                   AND a.estado=''PENDIENTE''',
'                   AND NOT EXISTS',
'                 (SELECT DISTINCT (''1'')',
'                          FROM llamador_ticket e',
'                         WHERE e.fecha = to_date(to_char(SYSDATE, ''DD/MM/YYYY''),',
'                                                 ''DD/MM/YYYY'')',
'                           AND e.id_ticket = a.id_ticket',
'                           AND e.hora_atencion IS NULL)',
'                    AND a.cod_tipo_cliente IN (''2'', ''3'')) x',
'                    ',
'         ORDER BY llamo, orden, id_ticket, procesar ASC)',
' ORDER BY id_ticket ASC',
''))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_ajax_items_to_submit=>'P_COD_EMPRESA'
,p_plug_query_num_rows_type=>'SCROLL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_show_total_row_count=>true
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(180761681073838212)
,p_region_id=>wwv_flow_imp.id(324418847816060916)
,p_layout_type=>'GRID'
,p_grid_column_count=>3
,p_title_adv_formatting=>false
,p_title_column_name=>'TICKET'
,p_sub_title_adv_formatting=>false
,p_body_adv_formatting=>false
,p_second_body_adv_formatting=>false
,p_media_adv_formatting=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(478742331151081604)
,p_plug_name=>'TICKETS EN ESPERA DISTRIBUIDOR'
,p_region_name=>'espera'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>30
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(478293939000563005)
,p_plug_name=>'EN ESPERA DISTRIBUIDORES'
,p_parent_plug_id=>wwv_flow_imp.id(478742331151081604)
,p_region_template_options=>'#DEFAULT#:t-CardsRegion--styleB'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40100032401263654)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT  distinct ''Ticket: '' || serie || '''' || nro_ticket ticket,',
'       cod_cliente,',
'       nombre,',
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
'       llamo',
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
'               0  llamo',
'        ',
'          FROM (SELECT ''Ticket: '' || a.ser_ticket || '''' || a.nro_ticket ticket,',
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
'                       a.cod_tipo_cliente',
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
'                   AND   exists  ',
'                       (SELECT distinct ''1''',
'                          FROM llamador_ticket z, ca_puesto_box b',
'                         WHERE b.cod_box = z.box',
'                           AND z.id_ticket = a.id_ticket',
'                           AND z.fecha = to_date(to_char(SYSDATE, ''DD/MM/YYYY''),',
'                                                 ''DD/MM/YYYY'')',
'                           and z.estado  NOT IN (''CANCELADO'', ''FINALIZADO'')',
'                            AND Z.HORA_LLAMADA IS NULL)',
'                   AND a.fecha =',
'                       to_date(to_char(SYSDATE, ''DD/MM/YYYY''), ''DD/MM/YYYY'')',
'                    AND   a.cod_tipo_cliente = ''1''',
'                    AND a.estado=''PENDIENTE''',
'                UNION ALL',
'                SELECT ''Ticket: '' || a.ser_ticket || '''' || a.nro_ticket ticket,',
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
'                       a.cod_tipo_cliente',
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
'                           AND e.id_ticket = a.id_ticket)',
'                   AND a.fecha =',
'                       to_date(to_char(SYSDATE, ''DD/MM/YYYY''), ''DD/MM/YYYY'')',
'                   AND   a.cod_tipo_cliente = ''1''',
'                  AND a.estado=''PENDIENTE''',
'                UNION ALL',
'                SELECT ''Ticket: '' || a.ser_ticket || '''' || a.nro_ticket ticket,',
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
'                       a.cod_tipo_cliente',
'                  FROM ca_ticket_atencion a',
'                 WHERE a.cod_empresa = ''1''',
'                   AND a.fecha =',
'                       to_date(to_char(SYSDATE, ''DD/MM/YYYY''), ''DD/MM/YYYY'')',
'',
'                   AND a.cod_cliente IS NULL',
'                   AND a.estado=''PENDIENTE''',
'                   AND NOT EXISTS',
'                 (SELECT DISTINCT (''1'')',
'                          FROM llamador_ticket e',
'                         WHERE e.fecha = to_date(to_char(SYSDATE, ''DD/MM/YYYY''),',
'                                                 ''DD/MM/YYYY'')',
'                           AND e.id_ticket = a.id_ticket',
'                           AND e.hora_atencion IS NULL)',
'                    AND   a.cod_tipo_cliente = ''1'') x',
'        ',
'         ORDER BY llamo, orden, id_ticket, procesar ASC)',
' ORDER BY id_ticket ASC',
''))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_ajax_items_to_submit=>'P_COD_EMPRESA'
,p_plug_query_num_rows_type=>'SCROLL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_show_total_row_count=>true
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
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(180763746241825279)
,p_region_id=>wwv_flow_imp.id(478293939000563005)
,p_layout_type=>'GRID'
,p_grid_column_count=>3
,p_title_adv_formatting=>false
,p_title_column_name=>'TICKET'
,p_sub_title_adv_formatting=>false
,p_body_adv_formatting=>false
,p_second_body_adv_formatting=>false
,p_media_adv_formatting=>false
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(180749555353899803)
,p_branch_name=>'if _a_70'
,p_branch_action=>'f?p=&APP_ID.:70:&SESSION.::&DEBUG.:70::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(180734029242899822)
,p_name=>'P561_TICKET'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(579204859866745575)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(180734405064899822)
,p_name=>'P561_NUMERO1'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(579204859866745575)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(180734888611899822)
,p_name=>'P561_NUMERO_TICKET'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(579204859866745575)
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly;  style=''width:300px;height:250px;color:white;background-color:blue;text-align: center;font-size: 200px;'''
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(180735245843899821)
,p_name=>'P561_LETRA'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(579204859866745575)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(180735613085899820)
,p_name=>'P561_BOX'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(579204859866745575)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(180736080700899820)
,p_name=>'P561_BOX_TICKET'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(579204859866745575)
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly; style=''width:300px;height:250px;color:white;background-color:blue;text-align: center;font-size: 200px;'''
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(180736407570899820)
,p_name=>'P561_NUMERO'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(579204859866745575)
,p_item_default=>'#APP_IMAGES#9.mp3'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(180736865555899820)
,p_name=>'P561_REPRODUCIR'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(579204859866745575)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(180737296174899820)
,p_name=>'P561_ID_TICKET'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(579204859866745575)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(180737611152899819)
,p_name=>'P561_REFRESCA_REGION'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(579204859866745575)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(180738020892899819)
,p_name=>'P561_OPERACION'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(579204859866745575)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(180745147449899805)
,p_name=>'Verifica ticket para llamar'
,p_event_sequence=>10
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(180746116290899805)
,p_event_id=>wwv_flow_imp.id(180745147449899805)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$x_Hide("promociones");',
'$x_Show("ATTENDANCE");'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(180746657673899805)
,p_event_id=>wwv_flow_imp.id(180745147449899805)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'setInterval(''contador()'',17000);'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(180745678259899805)
,p_event_id=>wwv_flow_imp.id(180745147449899805)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'setInterval(''refrescargrilla()'',15000);'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(180741811443899809)
,p_name=>'Actualiza regiones de tickets'
,p_event_sequence=>50
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(180742393243899808)
,p_event_id=>wwv_flow_imp.id(180741811443899809)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'    if (apex.item("P561_NUMERO1").isEmpty()) {',
'        $x_Hide("ATTENDANCE");',
'        $x_Show("promociones");',
'        apex.item( "P561_NUMERO_TICKET" ).setFocus();',
'    } else {  ',
'        var myVar1 = setTimeout(myTimer1, 2000)',
'        function myTimer1() {  ',
'        audio1.play();        ',
'    }   ',
'    var myVar = setTimeout(myTimer, 4000)',
'        function myTimer() { ',
'        audio2.play();',
'    }',
'',
'    var myVar3 = setTimeout(myTimer3, 5000)',
'        function myTimer3() {',
'            audio3.play();',
'        }',
'',
'',
'',
'',
'    var myVar4 = setTimeout(myTimer4, 6000)',
'    function myTimer4() {',
'    ',
'    audio4.play();',
'    }',
'',
'',
'    var myVar5 = setTimeout(myTimer5, 8000)',
'    function myTimer5() {',
'    ',
'    audio5.play();',
'    }',
'',
'',
'    var myVar6 = setTimeout(myTimer6, 9000)',
'    function myTimer6() {',
'    ',
'    audio6.play();',
'    }',
'',
' var myVar8 = setTimeout(myTimer8, 12000)',
'    ',
'    function myTimer8() {',
'        apex.item("P561_REPRODUCIR").setValue(1);',
'    }',
'}'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(180742708145899808)
,p_name=>'Reproducir ticket'
,p_event_sequence=>120
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P561_REPRODUCIR'
,p_condition_element=>'P561_REPRODUCIR'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'1'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(180743274338899808)
,p_event_id=>wwv_flow_imp.id(180742708145899808)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'    if (apex.item("P561_NUMERO1").isEmpty()) {',
'        apex.item( "P561_NUMERO_TICKET" ).setFocus();',
'    } else {  ',
'        var myVar1 = setTimeout(myTimer1, 1000)',
'        function myTimer1() {  ',
'        audio1.play();        ',
'    }   ',
'    var myVar = setTimeout(myTimer, 2000)',
'        function myTimer() { ',
'        audio2.play();',
'    }',
'',
'    var myVar3 = setTimeout(myTimer3, 3000)',
'        function myTimer3() {',
'            audio3.play();',
'        }',
'        ',
'    var myVar4 = setTimeout(myTimer4, 4000)',
'    function myTimer4() {',
'    ',
'    audio4.play();',
'    }',
'',
'',
'    var myVar5 = setTimeout(myTimer5, 5000)',
'    function myTimer5() {',
'    ',
'    audio5.play();',
'    }',
'',
'/*',
'    var myVar6 = setTimeout(myTimer6, 6000)',
'    function myTimer6() {',
'    ',
'    audio6.play();',
'    }*/',
'',
' var myVar8 = setTimeout(myTimer8, 7000)',
'    ',
'    function myTimer8() {',
'        $x_Hide("ATTENDANCE");',
'        $x_Show("promociones");',
'        ',
'',
'        apex.server.process(',
'                ''ACTUALIZA_LLAMADOR'', ',
'                { x01: apex.item("P561_ID_TICKET").getValue()}, ',
'                {',
'                success: function (pData) { ',
'                    apex.item("P561_REPRODUCIR").setValue(0);',
'                    }, ',
'                });',
'        ',
'    }',
'  }'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(180743750418899807)
,p_event_id=>wwv_flow_imp.id(180742708145899808)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P561_REPRODUCIR'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(180747079348899805)
,p_name=>'Refresca llamadores'
,p_event_sequence=>130
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P561_REFRESCA_REGION'
,p_condition_element=>'P561_REFRESCA_REGION'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'1'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(180748557532899804)
,p_event_id=>wwv_flow_imp.id(180747079348899805)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(324385685781122557)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(180829443977283301)
,p_event_id=>wwv_flow_imp.id(180747079348899805)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(324418847816060916)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(180829578026283302)
,p_event_id=>wwv_flow_imp.id(180747079348899805)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(478293939000563005)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(180747590540899804)
,p_event_id=>wwv_flow_imp.id(180747079348899805)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P561_REFRESCA_REGION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(180740239675899811)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Carga datos a llamar'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    vnumero varchar2(60);',
'begin',
'    begin',
'',
'        select NUM_TICKET, BOX, serie_ticket, ID_TICKET',
'        into vnumero, :P561_BOX, :P561_LETRA, :P561_ID_TICKET',
'        from INV.LLAMADOR_TICKET',
'        WHERE LLAMAR = ''S''',
'        AND FECHA  = TO_DATE(TO_CHAR(SYSDATE, ''DD/MM/YYYY''), ''DD/MM/YYYY'')',
'        and rownum = 1;',
'    EXCEPTION ',
'        when no_data_found  then ',
'            :P561_BOX := null;',
'             vnumero:=NULL;',
'             :P561_LETRA := null;',
'             :P561_ID_TICKET :=  NULL;',
'        WHEN OTHERS THEN',
'        vnumero:=NULL;',
'        :P561_BOX := null;',
'         :P561_LETRA := null;',
'         :P561_ID_TICKET :=  NULL;',
'',
'    end;',
'    if vnumero =''0'' or vnumero is null then',
'        :P561_NUMERO1:=null;',
'        :P561_BOX_TICKET:= null;',
'        :P561_NUMERO_TICKET:=null;',
'        :P561_ID_TICKET :=  NULL;',
'    else ',
'        :P561_NUMERO1:= vnumero;--vnumero;',
'        :P561_LETRA  := :P561_LETRA;',
'        :P561_TICKET:=''TICKET'';',
'        :P561_BOX  :=  :P561_BOX;',
'        :P561_NUMERO_TICKET:= :P561_LETRA||:P561_NUMERO1;',
'        :P561_BOX_TICKET:= ''Box ''||:P561_BOX;',
'    end if;',
'end;',
''))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(180740601353899810)
,p_process_sequence=>10
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'VERIFICA_TICKET'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_num_ticket NUMBER;',
'    v_box  NUMBER;',
'    v_serie_ticket  VARCHAR2(50);',
'    v_id_ticket NUMBER;',
'    v_operacion VARCHAR2(500);',
'BEGIN',
'    begin',
'        select s.NUM_TICKET, s.BOX, s.SERIE_TICKET, s.ID_TICKET, s.OPERACION',
'        into v_num_ticket, v_box, v_serie_ticket, v_id_ticket, v_operacion',
'        from INV.LLAMADOR_TICKET s, ca_ticket_atencion a',
'        WHERE s.LLAMAR = ''S''',
'     --   AND s.estado  =  ''CAJA''',
'        and a.id_ticket =  s.id_ticket',
'       -- AND a.cod_tipo_cliente IN (''2'', ''3'')',
'        AND s.FECHA  = TO_DATE(TO_CHAR(SYSDATE, ''DD/MM/YYYY''), ''DD/MM/YYYY'')',
'        and rownum = 1;',
'    EXCEPTION ',
'        when no_data_found then ',
'            v_num_ticket:=0;',
'            v_box := 0;',
'        WHEN OTHERS THEN',
'        v_num_ticket:=0;',
'        v_box := 0;',
'',
'    end;',
'  apex_json.open_object;',
'  apex_json.write(''success'', TRUE);',
'  apex_json.write(''p_num_ticket'', v_num_ticket);',
'  apex_json.write(''p_box'', v_box);',
'  apex_json.write(''p_serie_ticket'', v_serie_ticket);',
'  apex_json.write(''p_id_ticket'', v_id_ticket);',
'  apex_json.write(''p_operacion'', v_operacion);',
'  apex_json.close_object;',
'EXCEPTION',
'  WHEN OTHERS THEN',
'    apex_json.open_object;',
'    apex_json.write(''p_num_ticket'', 0);',
'     apex_json.write(''p_box'', 0);',
'     apex_json.write(''p_serie_ticket'', 0);',
'     apex_json.write(''p_id_ticket'', 0);',
'     apex_json.write(''p_operacion'', 0);',
'    apex_json.write(''success'', FALSE);',
'    apex_json.close_object;',
'END;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(180741011627899810)
,p_process_sequence=>20
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'ACTUALIZA_LLAMADOR'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_num_ticket NUMBER;',
'    v_box  NUMBER;',
'    ',
'BEGIN',
'    v_num_ticket := apex_application.g_x01;',
'    begin',
'        UPDATE INV.LLAMADOR_TICKET SET  LLAMAR = ''N''/*, ESTADO = ''CAJA''*/',
'        WHERE id_ticket = v_num_ticket;',
'',
'        COMMIT;',
'    EXCEPTION ',
'        WHEN OTHERS THEN',
'        v_num_ticket:=0;',
'        v_box := 0;',
'',
'    end;',
'  apex_json.open_object;',
'  apex_json.write(''success'', TRUE);',
'  apex_json.close_object;',
'EXCEPTION',
'  WHEN OTHERS THEN',
'    apex_json.open_object;',
'    apex_json.write(''success'', FALSE);',
'    apex_json.close_object;',
'END;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(180741453498899810)
,p_process_sequence=>30
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'ACTUALIZA_HORA_LLAMADA'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_num_ticket NUMBER;',
'    v_box  NUMBER;',
'    ',
'BEGIN',
'    v_num_ticket := apex_application.g_x01;',
'    begin',
'        UPDATE INV.LLAMADOR_TICKET SET  HORA_LLAMADA = SYSDATE/*, ESTADO= ''CAJA''*/',
'        WHERE id_ticket = v_num_ticket',
'        AND FECHA = TO_DATE(TO_CHAR(SYSDATE, ''DD/MM/YYYY''), ''DD/MM/YYYY'');',
'',
'        COMMIT;',
'    EXCEPTION ',
'        WHEN OTHERS THEN',
'        v_num_ticket:=0;',
'        v_box := 0;',
'',
'    end;',
'  apex_json.open_object;',
'  apex_json.write(''success'', TRUE);',
'  apex_json.close_object;',
'EXCEPTION',
'  WHEN OTHERS THEN',
'    apex_json.open_object;',
'    apex_json.write(''success'', FALSE);',
'    apex_json.close_object;',
'END;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp.component_end;
end;
/
