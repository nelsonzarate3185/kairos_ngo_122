prompt --application/pages/page_00575
begin
--   Manifest
--     PAGE: 00575
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
 p_id=>575
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'TUR - Llamador General'
,p_alias=>'LLAMADOR-GENERAL'
,p_step_title=>'Llamador General'
,p_warn_on_unsaved_changes=>'N'
,p_html_page_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'background-color:green;',
'',
'',
''))
,p_footer_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
''))
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function  refrescargrilla() {',
'    apex.item(''P575_REFRESCA_REGION'').setValue(1);',
'} ',
'function contador(){',
'    var verificador = apex.item("P575_VERIFICADOR").getValue();',
'    if (verificador == 0){',
'        ',
'        apex.server.process(',
'        ''VERIFICA_TICKET'', ',
'        { x01: null}, ',
'        {',
'        success: function (pData) { ',
'            if (pData.p_num_ticket === "0") {',
'                $x_Hide("ATTENDANCE");',
'                $x_Show("promociones");',
'                ',
'                apex.item("P575_REPRODUCIR").setValue(0);',
'                ',
'            }  ',
'            else if(pData.p_num_ticket >  0) {',
'                apex.item(''P575_VERIFICADOR'').setValue(1);',
'',
'                apex.item("P575_REPRODUCIR").setValue(0);',
'                $x_Hide("promociones");',
'                $x_Show("ATTENDANCE");',
'',
'                audio1.src = '''';',
'                audio2.src = '''';',
'                audio3.src = '''';',
'                audio4.src = '''';',
'                audio5.src = '''';',
'                audio6.src = ''''; ',
'                $("#audio1").attr(''src'', "#WORKSPACE_FILES#"+"timbre.wav"); ',
'                $("#audio2").attr(''src'', "#WORKSPACE_FILES#"+"ticket"+".mp3"); ',
'                $("#audio3").attr(''src'', "#WORKSPACE_FILES#"+pData.p_serie_ticket+".mp3"); ',
'                $("#audio4").attr(''src'', "#WORKSPACE_FILES#"+pData.p_num_ticket+".mp3"); ',
'                $("#audio5").attr(''src'', "#WORKSPACE_FILES#"+pData.p_operacion+".mp3"); ',
'                $("#audio6").attr(''src'', "#WORKSPACE_FILES#"+pData.p_box+".mp3");    ',
'                  ',
'                ',
'                apex.item("P575_TIMBRE").setValue("timbre.wav");',
'                apex.item("P575_TICKET_AUDIO").setValue("ticket");',
'                apex.item("P575_NUMERO1").setValue(pData.p_num_ticket);',
'                apex.item("P575_LETRA").setValue(pData.p_serie_ticket);',
'                apex.item("P575_BOX").setValue(pData.p_box);',
'                apex.item("P575_ID_TICKET").setValue(pData.p_id_ticket);',
'                apex.item("P575_NUMERO_TICKET").setValue(pData.p_serie_ticket+pData.p_num_ticket);',
'                apex.item("P575_OPERACION").setValue(pData.p_operacion);',
'                ',
'                if (pData.p_operacion == "BOX" ) {',
'                    apex.item("P575_BOX_TICKET").setValue(pData.p_operacion+" "+pData.p_box);    ',
'                } else {',
'                    apex.item("P575_BOX_TICKET").setValue(pData.p_operacion);    ',
'                }',
'                ',
'',
'                apex.server.process(',
'                ''ACTUALIZA_HORA_LLAMADA'', ',
'                { x01: apex.item("P575_ID_TICKET").getValue()}, ',
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
'            if (pData.p_operacion == "BOX") {',
'                var myVar6 = setTimeout(myTimer6, 6000)',
'                    function myTimer6() {',
'                        audio6.play();',
'                    }',
'            }',
'',
'            var myVar8 = setTimeout(myTimer8, 7000)',
'                function myTimer8() {',
'                    apex.server.process(',
'                            ''ACTUALIZA_LLAMADOR'', ',
'                            { x01: apex.item("P575_ID_TICKET").getValue()}, ',
'                            {',
'                            success: function (pData) { ',
'                                apex.item("P575_REPRODUCIR").setValue(0);',
'                                }, ',
'                            });',
'                    apex.item("P575_REPRODUCIR").setValue(1);',
'                }     ',
'            }',
'            ',
'            }, ',
'        });',
'    }  else {',
'        null;',
'    }',
'	 ',
'} ',
''))
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
' setInterval("jQuery(''#ATTENDANCE'').trigger(''apexrefresh'');", 180000);',
'setInterval("jQuery(''#REPO'').trigger(''apexrefresh'');", 18000);',
'',
' '))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  .t-Header-branding, #floating-menu , .t-Footer-topButton{ visibility: hidden;} ',
'',
'#ticket .t-Region-body {',
'    background: transparent;',
'}',
'',
'video{',
'    width:890px;',
'    height:auto;',
'  }',
'',
'',
'  .card_css1{',
'        background-color: #85FFBD;',
'        background-image: linear-gradient(45deg, #b9fbc0 30%, #efff93 100%); ',
'border-color: #001b3f;',
'  }',
'',
'.card_css2{background-color: #fdfcdc;',
'background-image: linear-gradient(135deg, #fdfcdc 0%, #b9fbc0  100%);',
'border-color: #001b3f;',
'',
'',
'        }',
'',
'        ',
'.card_css3{',
'            background-color: #BEB27B;',
'            background-image: linear-gradient(315deg, #BEB27B 0%, #faedcd 100%);',
'',
'border-color: #001b3f;',
'  }',
'',
'.card_css4{background-color: #fbf8cc;',
'background-image: linear-gradient(315deg, #80ffdb 0%,  #fbf8cc 100%);',
'border-color: #001b3f;',
'',
'}',
'',
'',
'.card_css5{background-color: #eefcce;',
'background-image: linear-gradient(315deg, #eefcce 0%,  #fcce65 100%);',
'border-color: #001b3f;',
'}',
'',
'',
'.card_css6{background-color: #BEB27B;',
'background-image: linear-gradient(315deg, #BEB27B 0%,  #ffffff 100%);',
'border-color: #001b3f;',
'}',
'',
'',
'',
'',
'.card_css7{background-color: #ffcb77;',
'background-image: linear-gradient(315deg, #ffcb77 0%,  #eaf2d7 100%);',
'border-color: #001b3f;',
'}',
'',
'',
'',
'',
'  .t-Body {',
'      background-color: #001b3f;',
'  }',
'',
'.t-Region-headerItems--title{',
'    font-size: 40px;',
'    color: #FFED00;',
'    }',
'',
'',
'#en_espera  {',
'    background-color: #1f567c;',
'    background-image: linear-gradient(0deg, #1f567c  0%, #487ab8  100%);',
'}',
'',
'#en_espera_2  {',
'    background-color: #1f567c;',
'    background-image: linear-gradient(0deg, #1f567c  0%, #487ab8  100%);',
'}',
'',
'#atendidos  {',
'   background-color: #778899;',
'}',
'',
'.a-GV-altMessage-text {',
'    color: white;',
'    font-weight: bold;',
'    ',
'}',
'',
'#espera {',
'    background-color: #023047; ',
'    background-image: linear-gradient(0deg, #5f9ea0 0%, #003A85  100%);',
'',
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
'}',
'',
'#promociones{',
'     background-color: transparent;',
'      }',
'',
'#P575_NUMERO_TICKET, #P575_BOX_TICKET',
'{',
'     width:300px;',
'     height:400px;',
'     text-align: center;',
'     font-size: 350px;',
'     color:#FFED00; ',
'     background-color: transparent; ',
'      FONT-FAMILY: fantasy;',
'     letter-spacing: 10px; ',
'     border: transparent;',
'} ',
'#ATTENDANCE{',
'    background-color: #003566; ',
'    background-image: linear-gradient(180deg, #003566  0%, #006fff 100%);',
'    border-radius: 50px;',
'    padding: 10px;',
'',
'}',
'',
'',
'.slide-in-bck-center {',
'    ',
'	-webkit-animation: slit-in-vertical 0.45s ease-out both;',
'	        animation: slit-in-vertical 0.45s ease-out both;',
'}',
'@-webkit-keyframes slit-in-vertical {',
'  0% {',
'    -webkit-transform: translateZ(-800px) rotateY(90deg);',
'            transform: translateZ(-800px) rotateY(90deg);',
'    opacity: 0;',
'  }',
'  54% {',
'    -webkit-transform: translateZ(-160px) rotateY(87deg);',
'            transform: translateZ(-160px) rotateY(87deg);',
'    opacity: 1;',
'  }',
'  100% {',
'    -webkit-transform: translateZ(0) rotateY(0);',
'            transform: translateZ(0) rotateY(0);',
'  }',
'}',
'@keyframes slit-in-vertical {',
'  0% {',
'    -webkit-transform: translateZ(-800px) rotateY(90deg);',
'            transform: translateZ(-800px) rotateY(90deg);',
'    opacity: 0;',
'  }',
'  54% {',
'    -webkit-transform: translateZ(-160px) rotateY(87deg);',
'            transform: translateZ(-160px) rotateY(87deg);',
'    opacity: 1;',
'  }',
'  100% {',
'    -webkit-transform: translateZ(0) rotateY(0);',
'            transform: translateZ(0) rotateY(0);',
'  }',
'}',
' '))
,p_step_template=>wwv_flow_imp.id(40085302490263650)
,p_page_template_options=>'#DEFAULT#:js-pageStickyMobileHeader'
,p_page_is_public_y_n=>'Y'
,p_rejoin_existing_sessions=>'N'
,p_page_component_map=>'23'
,p_last_updated_by=>'CHARBA'
,p_last_upd_yyyymmddhh24miss=>'20240508114458'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(188179930122669309)
,p_plug_name=>'Estructura1'
,p_region_name=>'promociones'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>4
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(326454650679538851)
,p_plug_name=>'TICKETS LLAMADOS CLIENTES'
,p_region_name=>'en_espera'
,p_parent_plug_id=>wwv_flow_imp.id(188179930122669309)
,p_region_css_classes=>'cabecera u-color-36-border'
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>5
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(326454563890538850)
,p_plug_name=>'LLAMADOS CLIENTES'
,p_region_name=>'llamados'
,p_parent_plug_id=>wwv_flow_imp.id(326454650679538851)
,p_region_template_options=>'#DEFAULT#:t-CardsRegion--styleC'
,p_plug_template=>wwv_flow_imp.id(40100032401263654)
,p_plug_display_sequence=>90
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DISTINCT ''Ticket: '' || serie || '''' || nro_ticket ticket,',
'                cod_cliente,',
'                nombre,',
'                tipo_ticket,',
'                serie,',
'                nro_ticket,',
'                id_ticket,',
'                cod_tipo_cliente,',
'                ''Box ''|| box box',
'',
'  FROM (SELECT ''Ticket: '' || a.ser_ticket || '''' || a.nro_ticket ticket,',
'               a.cod_cliente,',
'               p.nombre,',
'               (SELECT listagg(c.descripcion, '',  '') within GROUP(ORDER BY rownum) descripcion',
'                  FROM ca_ticket_atencion     z,',
'                       ca_ticket_atencion_det d,',
'                       ca_tickets_tipo        c',
'                 WHERE z.id_ticket = d.id_ticket',
'                   AND z.cod_empresa = ''1''',
'                   AND c.cod_ticket = d.cod_tipo_ticket',
'                   AND z.id_ticket = a.id_ticket) tipo_ticket,',
'               a.ser_ticket serie,',
'               a.nro_ticket,',
'               2 prioridad,',
'               a.id_ticket,',
'               a.fecha,',
'               a.cod_tipo_cliente,',
'               ',
'               (SELECT DISTINCT box',
'                  FROM llamador_ticket e',
'                 WHERE e.fecha =',
'                       to_date(to_char(SYSDATE, ''DD/MM/YYYY''), ''DD/MM/YYYY'')',
'                   AND e.id_ticket = a.id_ticket',
'                   and rownum=1) box',
'          FROM ca_ticket_atencion a,',
'               cc_clientes        c,',
'               personas           p,',
'               ca_tickets_tipo    t',
'         WHERE a.cod_cliente = c.cod_cliente',
'           AND p.cod_persona = c.cod_persona',
'           AND a.cod_empresa = c.cod_empresa',
'           AND t.cod_ticket = a.cod_tipo_ticket',
'           AND a.fecha =',
'               to_date(to_char(SYSDATE, ''DD/MM/YYYY''), ''DD/MM/YYYY'')',
'              ',
'           AND a.cod_cliente IS NOT NULL',
'           AND t.cod_empresa = ''1''',
'           AND a.cod_tipo_cliente IN (''2'', ''3'')',
'           AND EXISTS',
'         (SELECT DISTINCT (''1'')',
'                  FROM llamador_ticket e',
'                 WHERE e.fecha =',
'                       to_date(to_char(SYSDATE, ''DD/MM/YYYY''), ''DD/MM/YYYY'')',
'                   AND e.id_ticket = a.id_ticket',
'                   AND e.estado NOT IN (''CANCELADO'', ''FINALIZADO'')',
'                 ----  AND e.hora_atencion IS NULL',
'                   )',
'        ',
'        UNION ALL',
'        SELECT ''Ticket: '' || a.ser_ticket || '''' || a.nro_ticket ticket,',
'               NULL,',
'               observacion,',
'               ',
'               (SELECT listagg(c.descripcion, '',  '') within GROUP(ORDER BY rownum) descripcion',
'                  FROM ca_ticket_atencion     z,',
'                       ca_ticket_atencion_det d,',
'                       ca_tickets_tipo        c',
'                 WHERE z.id_ticket = d.id_ticket',
'                   AND z.cod_empresa = ''1''',
'                   AND c.cod_ticket = d.cod_tipo_ticket',
'                   AND z.id_ticket = a.id_ticket) tipo_ticket,',
'               a.ser_ticket serie,',
'               a.nro_ticket,',
'               2 prioridad,',
'               a.id_ticket,',
'               a.fecha,',
'               a.cod_tipo_cliente,',
'               ',
'               (SELECT DISTINCT box',
'                  FROM llamador_ticket e',
'                 WHERE e.fecha =',
'                       to_date(to_char(SYSDATE, ''DD/MM/YYYY''), ''DD/MM/YYYY'')',
'                   AND e.id_ticket = a.id_ticket',
'                   and rownum=1) box',
'          FROM ca_ticket_atencion a',
'         WHERE a.cod_empresa = ''1''',
'           AND a.fecha =',
'               to_date(to_char(SYSDATE, ''DD/MM/YYYY''), ''DD/MM/YYYY'')',
'              ',
'           AND a.cod_cliente IS NULL',
'',
'           AND a.cod_tipo_cliente IN (''2'', ''3'')',
'           AND EXISTS',
'         (SELECT DISTINCT (''1'')',
'                  FROM llamador_ticket e',
'                 WHERE e.fecha =',
'                       to_date(to_char(SYSDATE, ''DD/MM/YYYY''), ''DD/MM/YYYY'')',
'                   AND e.id_ticket = a.id_ticket',
'                 ---  AND e.hora_atencion IS NULL',
'                   AND e.estado NOT IN (''CANCELADO'', ''FINALIZADO'')))',
' WHERE rownum < 6',
''))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_show_total_row_count=>false
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(188513968496066109)
,p_region_id=>wwv_flow_imp.id(326454563890538850)
,p_layout_type=>'GRID'
,p_grid_column_count=>2
,p_card_css_classes=>'card_css1'
,p_title_adv_formatting=>false
,p_title_column_name=>'TICKET'
,p_sub_title_adv_formatting=>false
,p_body_adv_formatting=>false
,p_body_column_name=>'BOX'
,p_second_body_adv_formatting=>false
,p_icon_source_type=>'INITIALS'
,p_icon_class_column_name=>'TICKET'
,p_icon_position=>'START'
,p_media_adv_formatting=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(480335399141983321)
,p_plug_name=>'TICKETS LLAMADOS DISTRIBUIDOR'
,p_region_name=>'en_espera_2'
,p_parent_plug_id=>wwv_flow_imp.id(188179930122669309)
,p_region_css_classes=>'cabecera u-color-36-border'
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>5
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(480335312352983320)
,p_plug_name=>'LLAMADOS DIST'
,p_region_name=>'llamados_2'
,p_parent_plug_id=>wwv_flow_imp.id(480335399141983321)
,p_region_template_options=>'#DEFAULT#:t-CardsRegion--styleC'
,p_plug_template=>wwv_flow_imp.id(40100032401263654)
,p_plug_display_sequence=>90
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DISTINCT ''Ticket: '' || serie || '''' || nro_ticket ticket,',
'                cod_cliente,',
'                nombre,',
'                tipo_ticket,',
'                serie,',
'                nro_ticket,',
'                id_ticket,',
'                cod_tipo_cliente,',
'                ''Box ''|| box box',
'',
'  FROM (SELECT ''Ticket: '' || a.ser_ticket || '''' || a.nro_ticket ticket,',
'               a.cod_cliente,',
'               p.nombre,',
'               (SELECT listagg(c.descripcion, '',  '') within GROUP(ORDER BY rownum) descripcion',
'                  FROM ca_ticket_atencion     z,',
'                       ca_ticket_atencion_det d,',
'                       ca_tickets_tipo        c',
'                 WHERE z.id_ticket = d.id_ticket',
'                   AND z.cod_empresa = ''1''',
'                   AND c.cod_ticket = d.cod_tipo_ticket',
'                   AND z.id_ticket = a.id_ticket) tipo_ticket,',
'               a.ser_ticket serie,',
'               a.nro_ticket,',
'               2 prioridad,',
'               a.id_ticket,',
'               a.fecha,',
'               a.cod_tipo_cliente,',
'               ',
'               (SELECT DISTINCT box',
'                  FROM llamador_ticket e',
'                 WHERE e.fecha =',
'                       to_date(to_char(SYSDATE, ''DD/MM/YYYY''), ''DD/MM/YYYY'')',
'                   AND e.id_ticket = a.id_ticket) box',
'          FROM ca_ticket_atencion a,',
'               cc_clientes        c,',
'               personas           p,',
'               ca_tickets_tipo    t',
'         WHERE a.cod_cliente = c.cod_cliente',
'           AND p.cod_persona = c.cod_persona',
'           AND a.cod_empresa = c.cod_empresa',
'           AND t.cod_ticket = a.cod_tipo_ticket',
'           AND a.fecha =',
'               to_date(to_char(SYSDATE, ''DD/MM/YYYY''), ''DD/MM/YYYY'')',
'              ',
'           AND a.cod_cliente IS NOT NULL',
'           AND t.cod_empresa = ''1''',
'           AND   a.cod_tipo_cliente = ''1''',
'           AND EXISTS',
'         (SELECT DISTINCT (''1'')',
'                  FROM llamador_ticket e',
'                 WHERE e.fecha =',
'                       to_date(to_char(SYSDATE, ''DD/MM/YYYY''), ''DD/MM/YYYY'')',
'                   AND e.id_ticket = a.id_ticket',
'                   AND e.estado NOT IN (''CANCELADO'', ''FINALIZADO'')',
'                   ---AND e.hora_atencion IS NULL',
'                   )',
'        ',
'        UNION ALL',
'        SELECT ''Ticket: '' || a.ser_ticket || '''' || a.nro_ticket ticket,',
'               NULL,',
'               observacion,',
'               ',
'               (SELECT listagg(c.descripcion, '',  '') within GROUP(ORDER BY rownum) descripcion',
'                  FROM ca_ticket_atencion     z,',
'                       ca_ticket_atencion_det d,',
'                       ca_tickets_tipo        c',
'                 WHERE z.id_ticket = d.id_ticket',
'                   AND z.cod_empresa = ''1''',
'                   AND c.cod_ticket = d.cod_tipo_ticket',
'                   AND z.id_ticket = a.id_ticket) tipo_ticket,',
'               a.ser_ticket serie,',
'               a.nro_ticket,',
'               2 prioridad,',
'               a.id_ticket,',
'               a.fecha,',
'               a.cod_tipo_cliente,',
'               ',
'               (SELECT DISTINCT box',
'                  FROM llamador_ticket e',
'                 WHERE e.fecha =',
'                       to_date(to_char(SYSDATE, ''DD/MM/YYYY''), ''DD/MM/YYYY'')',
'                   AND e.id_ticket = a.id_ticket) box',
'          FROM ca_ticket_atencion a',
'         WHERE a.cod_empresa = ''1''',
'           AND a.fecha =',
'               to_date(to_char(SYSDATE, ''DD/MM/YYYY''), ''DD/MM/YYYY'')',
'              ',
'           AND a.cod_cliente IS NULL',
'           AND   a.cod_tipo_cliente = ''1''',
'           AND EXISTS',
'         (SELECT DISTINCT (''1'')',
'                  FROM llamador_ticket e',
'                 WHERE e.fecha =',
'                       to_date(to_char(SYSDATE, ''DD/MM/YYYY''), ''DD/MM/YYYY'')',
'                   AND e.id_ticket = a.id_ticket',
'                  ---- AND e.hora_atencion IS NULL',
'                   AND e.estado NOT IN (''CANCELADO'', ''FINALIZADO'')))',
' WHERE rownum < 6',
''))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_show_total_row_count=>false
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(188521613553995560)
,p_region_id=>wwv_flow_imp.id(480335312352983320)
,p_layout_type=>'GRID'
,p_grid_column_count=>2
,p_card_css_classes=>'card_css4'
,p_title_adv_formatting=>false
,p_title_column_name=>'TICKET'
,p_sub_title_adv_formatting=>false
,p_body_adv_formatting=>false
,p_body_column_name=>'BOX'
,p_second_body_adv_formatting=>false
,p_icon_source_type=>'INITIALS'
,p_icon_class_column_name=>'TICKET'
,p_icon_position=>'START'
,p_media_adv_formatting=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(506928431493963085)
,p_plug_name=>unistr('Regi\00F3n de Tickets')
,p_parent_plug_id=>wwv_flow_imp.id(188179930122669309)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(513094798237231664)
,p_plug_name=>'PROXIMO CAJA'
,p_region_name=>'espera'
,p_parent_plug_id=>wwv_flow_imp.id(506928431493963085)
,p_region_css_classes=>'u-color-36-border'
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>110
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(512646406086713065)
,p_plug_name=>'PROXIMO CAJA'
,p_parent_plug_id=>wwv_flow_imp.id(513094798237231664)
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
'WHERE ROWNUM = 1',
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
 p_id=>wwv_flow_imp.id(188269138737590489)
,p_region_id=>wwv_flow_imp.id(512646406086713065)
,p_layout_type=>'GRID'
,p_grid_column_count=>2
,p_card_css_classes=>'card_css5'
,p_title_adv_formatting=>false
,p_title_column_name=>'TICKET'
,p_sub_title_adv_formatting=>false
,p_body_adv_formatting=>false
,p_second_body_adv_formatting=>false
,p_media_adv_formatting=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(513127960272170023)
,p_plug_name=>'PROXIMO CLIENTES'
,p_region_name=>'espera'
,p_parent_plug_id=>wwv_flow_imp.id(188179930122669309)
,p_region_css_classes=>'u-color-36-border'
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>40
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(512679568121651424)
,p_plug_name=>'PROXIMO  CLIENTES'
,p_parent_plug_id=>wwv_flow_imp.id(513127960272170023)
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
' WHERE ROWNUM = 1',
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
 p_id=>wwv_flow_imp.id(188262711075590494)
,p_region_id=>wwv_flow_imp.id(512679568121651424)
,p_layout_type=>'GRID'
,p_grid_column_count=>2
,p_card_css_classes=>'card_css7'
,p_title_adv_formatting=>false
,p_title_column_name=>'TICKET'
,p_sub_title_adv_formatting=>false
,p_body_adv_formatting=>false
,p_second_body_adv_formatting=>false
,p_media_adv_formatting=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(667003051456672112)
,p_plug_name=>'PROXIMO DISTRIBUIDOR'
,p_region_name=>'espera'
,p_parent_plug_id=>wwv_flow_imp.id(188179930122669309)
,p_region_css_classes=>'u-color-36-border'
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>30
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(666554659306153513)
,p_plug_name=>'PROXIMO  DISTRIBUIDORES'
,p_parent_plug_id=>wwv_flow_imp.id(667003051456672112)
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
' WHERE ROWNUM = 1',
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
 p_id=>wwv_flow_imp.id(188261623352590496)
,p_region_id=>wwv_flow_imp.id(666554659306153513)
,p_layout_type=>'GRID'
,p_grid_column_count=>2
,p_card_css_classes=>'card_css3'
,p_title_adv_formatting=>false
,p_title_column_name=>'TICKET'
,p_sub_title_adv_formatting=>false
,p_body_adv_formatting=>false
,p_second_body_adv_formatting=>false
,p_media_adv_formatting=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(506928202101963083)
,p_plug_name=>unistr('Regi\00F3n de promociones')
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>1
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(767465580172336083)
,p_plug_name=>'Ticket'
,p_region_name=>'ATTENDANCE'
,p_parent_plug_id=>wwv_flow_imp.id(506928202101963083)
,p_region_css_classes=>'slide-in-bck-center'
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
'<audio id="audio1" src="#WORKSPACE_FILES#&P575_TIMBRE."/>		',
'<audio id="audio2" src="#WORKSPACE_FILES#&P575_TICKET_AUDIO..mp3"/>',
'<audio id="audio3" src="#WORKSPACE_FILES#&P575_LETRA..mp3"/>			',
'<audio id="audio4" src="#WORKSPACE_FILES#&P575_NUMERO1..mp3"/>',
'<audio id="audio5" src="#WORKSPACE_FILES#&P575_OPERACION..mp3"/>',
'<audio id="audio6" src="#WORKSPACE_FILES#&P575_BOX..mp3"/> ',
'<audio class="my_audio" preload="none"></audio>',
'</body>',
'</html>',
'',
''))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'Y'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(188277916001590479)
,p_branch_name=>'if _a_70'
,p_branch_action=>'f?p=&APP_ID.:70:&SESSION.::&DEBUG.:70::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(188181285904669322)
,p_name=>'P575_TIMBRE'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(767465580172336083)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(188181362790669323)
,p_name=>'P575_TICKET_AUDIO'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(767465580172336083)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(188263894318590493)
,p_name=>'P575_TICKET'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(767465580172336083)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(188264299975590492)
,p_name=>'P575_NUMERO1'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(767465580172336083)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(188264622894590492)
,p_name=>'P575_NUMERO_TICKET'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(767465580172336083)
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:margin-bottom-none'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(188265085976590492)
,p_name=>'P575_LETRA'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(767465580172336083)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(188265400689590492)
,p_name=>'P575_BOX'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(767465580172336083)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(188265825933590492)
,p_name=>'P575_BOX_TICKET'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(767465580172336083)
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly; '
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:margin-top-none'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(188266250500590491)
,p_name=>'P575_NUMERO'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(767465580172336083)
,p_item_default=>'#APP_IMAGES#9.mp3'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(188266648565590491)
,p_name=>'P575_REPRODUCIR'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(767465580172336083)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(188267075911590491)
,p_name=>'P575_ID_TICKET'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(767465580172336083)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(188267422323590491)
,p_name=>'P575_REFRESCA_REGION'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(767465580172336083)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(188267890472590491)
,p_name=>'P575_OPERACION'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(767465580172336083)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(188912936059069005)
,p_name=>'P575_VERIFICADOR'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(767465580172336083)
,p_use_cache_before_default=>'NO'
,p_item_default=>'0'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(98641237759582125)
,p_name=>'Oculta region'
,p_event_sequence=>5
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(98641376856582126)
,p_event_id=>wwv_flow_imp.id(98641237759582125)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(104444646536494202)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(188273542891590481)
,p_name=>'Verifica ticket para llamar'
,p_event_sequence=>10
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(188274582490590481)
,p_event_id=>wwv_flow_imp.id(188273542891590481)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$x_Hide("promociones");',
'$x_Show("ATTENDANCE");'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(188275083028590481)
,p_event_id=>wwv_flow_imp.id(188273542891590481)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'setInterval(''contador()'',1000);'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(188274016949590481)
,p_event_id=>wwv_flow_imp.id(188273542891590481)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'setInterval(''refrescargrilla()'',15000);'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(188272674325590482)
,p_name=>'Actualiza regiones de tickets'
,p_event_sequence=>50
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(188181492101669324)
,p_event_id=>wwv_flow_imp.id(188272674325590482)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$x_Hide("ATTENDANCE");',
'        $x_Show("promociones");'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(188273154296590482)
,p_event_id=>wwv_flow_imp.id(188272674325590482)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'    if (apex.item("P575_NUMERO1").isEmpty()) {',
'        $x_Hide("ATTENDANCE");',
'        $x_Show("promociones");',
'        apex.item( "P575_NUMERO_TICKET" ).setFocus();',
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
'        apex.item("P575_REPRODUCIR").setValue(1);',
'    }',
'}'))
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(188271276085590483)
,p_name=>'Reproducir ticket'
,p_event_sequence=>120
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P575_REPRODUCIR'
,p_condition_element=>'P575_REPRODUCIR'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'1'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(188271702472590482)
,p_event_id=>wwv_flow_imp.id(188271276085590483)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'    if (apex.item("P575_NUMERO1").isEmpty()) {',
'        apex.item( "P575_NUMERO_TICKET" ).setFocus();',
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
'    var operacion  = apex.item("P575_OPERACION").getValue();',
'    if (operacion == "BOX") {',
'        var myVar6 = setTimeout(myTimer6, 6000)',
'        function myTimer6() {',
'        ',
'        audio6.play();',
'        }',
'    }',
'    ',
'',
' var myVar8 = setTimeout(myTimer8, 7000)',
'    ',
'    function myTimer8() {',
'        $x_Hide("ATTENDANCE");',
'        $x_Show("promociones");',
'        ',
'        ',
'        apex.item("P575_VERIFICADOR").setValue(0);',
'        ',
'        apex.server.process(',
'                ''ACTUALIZA_LLAMADOR'', ',
'                { x01: apex.item("P575_ID_TICKET").getValue()}, ',
'                {',
'                success: function (pData) { ',
'                    apex.item("P575_REPRODUCIR").setValue(0);',
'                    }, ',
'                });',
'        ',
'    }',
'  }'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(188272203734590482)
,p_event_id=>wwv_flow_imp.id(188271276085590483)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P575_REPRODUCIR'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(188275405947590481)
,p_name=>'Refresca llamadores'
,p_event_sequence=>130
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P575_REFRESCA_REGION'
,p_condition_element=>'P575_REFRESCA_REGION'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'1'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(188276424603590480)
,p_event_id=>wwv_flow_imp.id(188275405947590481)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(512646406086713065)
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
 p_id=>wwv_flow_imp.id(188277498026590480)
,p_event_id=>wwv_flow_imp.id(188275405947590481)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(512679568121651424)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(188276953541590480)
,p_event_id=>wwv_flow_imp.id(188275405947590481)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(666554659306153513)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(188180069911669310)
,p_event_id=>wwv_flow_imp.id(188275405947590481)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(480335312352983320)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(188180133608669311)
,p_event_id=>wwv_flow_imp.id(188275405947590481)
,p_event_result=>'TRUE'
,p_action_sequence=>90
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(326454563890538850)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(188275927993590480)
,p_event_id=>wwv_flow_imp.id(188275405947590481)
,p_event_result=>'TRUE'
,p_action_sequence=>100
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P575_REFRESCA_REGION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(188269692512590485)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Carga datos a llamar'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    vnumero varchar2(60);',
'begin',
'    begin',
'        select NUM_TICKET, BOX, serie_ticket, ID_TICKET ',
'        into vnumero, :P575_BOX, :P575_LETRA, :P575_ID_TICKET',
'        from INV.LLAMADOR_TICKET',
'        WHERE LLAMAR = ''S''',
'        AND FECHA  = TO_DATE(TO_CHAR(SYSDATE, ''DD/MM/YYYY''), ''DD/MM/YYYY'')',
'        and rownum = 1;',
'    /*',
'        select NUM_TICKET, BOX, serie_ticket, ID_TICKET',
'        into vnumero, :P575_BOX, :P575_LETRA, :P575_ID_TICKET',
'        from INV.LLAMADOR_TICKET',
'        WHERE LLAMAR = ''S''',
'        AND FECHA  = TO_DATE(TO_CHAR(SYSDATE, ''DD/MM/YYYY''), ''DD/MM/YYYY'')',
'        and rownum = 1;',
'',
'        */',
'    EXCEPTION ',
'        when no_data_found  then ',
'            :P575_BOX := null;',
'             vnumero:=NULL;',
'             :P575_LETRA := null;',
'             :P575_ID_TICKET :=  NULL;',
'        WHEN OTHERS THEN',
'        vnumero:=NULL;',
'        :P575_BOX := null;',
'         :P575_LETRA := null;',
'         :P575_ID_TICKET :=  NULL;',
'',
'    end;',
'    if vnumero =''0'' or vnumero is null then',
'        :P575_NUMERO1:=null;',
'        :P575_BOX_TICKET:= null;',
'        :P575_NUMERO_TICKET:=null;',
'        :P575_ID_TICKET :=  NULL;',
'    else ',
'        :P575_NUMERO1:= vnumero;--vnumero;',
'        :P575_LETRA  := :P575_LETRA;',
'        :P575_TICKET:=''TICKET'';',
'        :P575_BOX  :=  :P575_BOX;',
'        :P575_NUMERO_TICKET:= :P575_LETRA||:P575_NUMERO1;',
'        :P575_BOX_TICKET:= ''Box ''||:P575_BOX;',
'    end if;',
'exception',
'    when others then',
'        null;',
'end;',
' '))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(188270001435590484)
,p_process_sequence=>10
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'VERIFICA_TICKET'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    resultado BOOLEAN;',
'BEGIN',
'',
'    resultado := FALSE;',
'    resultado := inv.catickets.es_multiplo_de_17_segundos;',
'    IF resultado THEN',
'        DECLARE',
'            v_num_ticket NUMBER;',
'            v_box  NUMBER;',
'            v_serie_ticket  VARCHAR2(50);',
'            v_id_ticket NUMBER;',
'            v_operacion VARCHAR2(500);',
'        BEGIN',
'            begin',
'                select s.NUM_TICKET, s.BOX, s.SERIE_TICKET, s.ID_TICKET, s.OPERACION',
'                into v_num_ticket, v_box, v_serie_ticket, v_id_ticket, v_operacion',
'                from INV.LLAMADOR_TICKET s, ca_ticket_atencion a',
'                WHERE s.LLAMAR = ''S''',
'                and a.id_ticket =  s.id_ticket',
'                AND s.FECHA  = TO_DATE(TO_CHAR(SYSDATE, ''DD/MM/YYYY''), ''DD/MM/YYYY'')',
'                and rownum = 1',
'                order by S.id_llamador ASC;',
'            EXCEPTION ',
'                when no_data_found then ',
'                    v_num_ticket:=0;',
'                    v_box := 0;',
'                WHEN OTHERS THEN',
'                v_num_ticket:=0;',
'                v_box := 0;',
'',
'            end;',
'          apex_json.open_object;',
'          apex_json.write(''success'', TRUE);',
'          apex_json.write(''p_num_ticket'', v_num_ticket);',
'          apex_json.write(''p_box'', v_box);',
'          apex_json.write(''p_serie_ticket'', v_serie_ticket);',
'          apex_json.write(''p_id_ticket'', v_id_ticket);',
'          apex_json.write(''p_operacion'', v_operacion);',
'          apex_json.close_object;',
'        EXCEPTION',
'          WHEN OTHERS THEN',
'            apex_json.open_object;',
'            apex_json.write(''p_num_ticket'', 0);',
'             apex_json.write(''p_box'', 0);',
'             apex_json.write(''p_serie_ticket'', 0);',
'             apex_json.write(''p_id_ticket'', 0);',
'             apex_json.write(''p_operacion'', 0);',
'            apex_json.write(''success'', FALSE);',
'            apex_json.close_object;',
'        END;',
'    ELSE',
'        begin ',
'           apex_json.open_object;',
'          apex_json.write(''success'', TRUE);',
'          apex_json.write(''p_num_ticket'', 0);',
'             apex_json.write(''p_box'', 0);',
'             apex_json.write(''p_serie_ticket'', 0);',
'             apex_json.write(''p_id_ticket'', 0);',
'             apex_json.write(''p_operacion'', 0);',
'          apex_json.close_object;',
'        EXCEPTION',
'          WHEN OTHERS THEN',
'            apex_json.open_object;',
'            apex_json.write(''p_num_ticket'', 0);',
'             apex_json.write(''p_box'', 0);',
'             apex_json.write(''p_serie_ticket'', 0);',
'             apex_json.write(''p_id_ticket'', 0);',
'             apex_json.write(''p_operacion'', 0);',
'            apex_json.write(''success'', FALSE);',
'            apex_json.close_object;',
'        END;',
'    END IF;',
'END;',
''))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(188270401915590484)
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
 p_id=>wwv_flow_imp.id(188270833637590484)
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
