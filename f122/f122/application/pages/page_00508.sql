prompt --application/pages/page_00508
begin
--   Manifest
--     PAGE: 00508
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
 p_id=>508
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'TUR - Ticket llamador Distribuidor'
,p_alias=>'TICKET-LLAMADOR-DISTRIBUIDOR'
,p_step_title=>'Ticket llamador Distribuidor'
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
'    apex.item(''P508_REFRESCA_REGION'').setValue(1);',
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
'                apex.item("P508_REPRODUCIR").setValue(0);',
'            }  ',
'            else if(pData.p_num_ticket >  0) {',
'                ',
'                $x_Hide("promociones");',
'                $x_Show("ATTENDANCE");',
'                $("#audio3").attr(''src'', "#WORKSPACE_FILES#"+pData.p_serie_ticket+".mp3"); ',
'                $("#audio4").attr(''src'', "#WORKSPACE_FILES#"+pData.p_num_ticket+".mp3"); ',
'                $("#audio5").attr(''src'', "#WORKSPACE_FILES#"+pData.p_operacion+".mp3"); ',
'                $("#audio6").attr(''src'', "#WORKSPACE_FILES#"+pData.p_box+".mp3"); ',
'                ',
'                apex.item("P508_NUMERO1").setValue(pData.p_num_ticket);',
'                apex.item("P508_LETRA").setValue(pData.p_serie_ticket);',
'                apex.item("P508_BOX").setValue(pData.p_box);',
'                apex.item("P508_ID_TICKET").setValue(pData.p_id_ticket);',
'                apex.item("P508_NUMERO_TICKET").setValue(pData.p_serie_ticket+pData.p_num_ticket);',
'                apex.item("P508_BOX_TICKET").setValue(''Box ''+pData.p_box);',
'',
'                apex.server.process(',
'                ''ACTUALIZA_HORA_LLAMADA'', ',
'                { x01: apex.item("P508_ID_TICKET").getValue()}, ',
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
'',
'            var myVar6 = setTimeout(myTimer6, 6000)',
'                function myTimer6() {',
'                    audio6.play();',
'                }',
'',
'            var myVar8 = setTimeout(myTimer8, 7000)',
'                function myTimer8() {',
'                    apex.item("P508_REPRODUCIR").setValue(1);',
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
,p_last_upd_yyyymmddhh24miss=>'20230803082614'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(291812625729987742)
,p_plug_name=>unistr('Regi\00F3n de promociones')
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_grid_column_span=>7
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(291812495736987740)
,p_plug_name=>'Pronostico del Tiempo'
,p_parent_plug_id=>wwv_flow_imp.id(291812625729987742)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>40
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<a class="weatherwidget-io" href="https://forecast7.com/es/n25d26n57d58/asuncion/" data-label_1="ASUNCI\00D3N" data-label_2="Asunci\00F3n" data-theme="original" >ASUNCI\00D3N Asunci\00F3n</a>'),
'<script>',
'!function(d,s,id){',
'    var js,fjs=d.getElementsByTagName(s)[0];',
'    if(!d.getElementById(id)){',
'        js=d.createElement(s);',
'        js.id=id;',
'        js.src=''https://weatherwidget.io/js/widget.min.js'';',
'        fjs.parentNode.insertBefore(js,fjs);',
'    }',
'}',
'(document,''script'',''weatherwidget-io-js'');',
'</script>'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(297530735458737723)
,p_plug_name=>'Pronostico'
,p_parent_plug_id=>wwv_flow_imp.id(291812495736987740)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>'<div id="ww_5618bbd4ab247" v=''1.3'' loc=''id'' a=''{"t":"ticker","lang":"es","sl_lpl":1,"ids":["wl4195"],"font":"Arial","sl_ics":"one_a","sl_sot":"celsius","cl_bkg":"image","cl_font":"#FFFFFF","cl_cloud":"#FFFFFF","cl_persp":"#81D4FA","cl_sun":"#FFC107",'
||unistr('"cl_moon":"#FFC107","cl_thund":"#FF5722"}''>Weather Data Source: <a href="https://tiempolargo.com/" id="ww_5618bbd4ab247_u" target="_blank">El tiempo 25 d\00EDas</a></div><script async src="https://app1.weatherwidget.org/js/?id=ww_5618bbd4ab247"></script>')
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(291814400869987760)
,p_plug_name=>'Video promocionales'
,p_region_name=>'promociones'
,p_parent_plug_id=>wwv_flow_imp.id(291812625729987742)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>60
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>'<iframe src="https://192.168.15.120/Business/Visor/Index/02deaec0-07fe-4dc0-b46e-c0df236acd37" style="width: 100%; height: 60vh"></iframe>'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(293723094581423223)
,p_plug_name=>'Video 1'
,p_parent_plug_id=>wwv_flow_imp.id(291814400869987760)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>40
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html>',
'<head>',
'    <meta charset="utf-8">',
'</head>',
' ',
'<body>',
' ',
'    <video autoplay width="400px"  id="img_1" muted controls>',
'        <source src="#APP_FILES#ngo.mp4" type="video/mp4">',
'    </video>',
'</body>',
'</html>',
' ',
'<script>',
'const videos = document.querySelectorAll("video");',
' ',
'function start(n) {',
'    console.log("video "+n);',
'    // creamos una promesa que finalizara cuando se haya mostrado el video',
'    new Promise((resolve, reject) => {',
'        videos[n].play();',
'        videos[n].addEventListener("ended", () => resolve(n));',
'    }).then(n => {',
'        n = (n+1)>videos.length-1 ? 0 : ++n;',
'        // ejecutamos el siguiente video',
'        start(n);',
'    });',
'}',
' ',
'start(0);',
'</script>'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'NEVER'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(293723114388423224)
,p_plug_name=>'Video 2'
,p_parent_plug_id=>wwv_flow_imp.id(291814400869987760)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html>',
'<head>',
'    <meta charset="utf-8">',
'</head>',
' ',
'<body>',
'    <video  autoplay  width="400px"  id="img_2" muted controls>',
'        <source src="#APP_FILES#ngo2.mp4" type="video/mp4">',
'    </video>',
' ',
'</body>',
'</html>',
' ',
'<script>',
'const videos = document.querySelectorAll("video");',
' ',
'function start(n) {',
'    console.log("video "+n);',
'    // creamos una promesa que finalizara cuando se haya mostrado el video',
'    new Promise((resolve, reject) => {',
'        videos[n].play();',
'        videos[n].addEventListener("ended", () => resolve(n));',
'    }).then(n => {',
'        n = (n+1)>videos.length-1 ? 0 : ++n;',
'        // ejecutamos el siguiente video',
'        start(n);',
'    });',
'}',
' ',
'start(0);',
'</script>'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'NEVER'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(293723283458423225)
,p_plug_name=>'Video 3'
,p_parent_plug_id=>wwv_flow_imp.id(291814400869987760)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html>',
'<head>',
'    <meta charset="utf-8">',
'</head>',
' ',
'<body>',
'    <video autoplay  width="450px" id="img_3" muted controls>',
'       <source src="#APP_FILES#ngo3.mp4" type="video/mp4">',
'    </video> ',
' ',
'</body>',
'</html>',
' ',
'<script>',
'const videos = document.querySelectorAll("video");',
' ',
'function start(n) {',
'    console.log("video "+n);',
'    // creamos una promesa que finalizara cuando se haya mostrado el video',
'    new Promise((resolve, reject) => {',
'        videos[n].play();',
'        videos[n].addEventListener("ended", () => resolve(n));',
'    }).then(n => {',
'        n = (n+1)>videos.length-1 ? 0 : ++n;',
'        // ejecutamos el siguiente video',
'        start(n);',
'    });',
'}',
' ',
'start(0);',
'</script>'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'NEVER'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(552350003800360742)
,p_plug_name=>'Ticket'
,p_region_name=>'ATTENDANCE'
,p_parent_plug_id=>wwv_flow_imp.id(291812625729987742)
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
'<audio id="audio3" src="#WORKSPACE_FILES#&P508_LETRA..mp3"/>			',
'<audio id="audio4" src="#WORKSPACE_FILES#&P508_NUMERO1..mp3"/>',
'<audio id="audio5" src="#WORKSPACE_FILES#&P508_OPERACION..mp3"/>',
'<audio id="audio6" src="#WORKSPACE_FILES#&P508_BOX..mp3"/> ',
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
 p_id=>wwv_flow_imp.id(291812855121987744)
,p_plug_name=>unistr('Regi\00F3n de Tickets')
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>40
,p_plug_new_grid_row=>false
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(291812765872987743)
,p_plug_name=>'PROMEDIOS'
,p_parent_plug_id=>wwv_flow_imp.id(291812855121987744)
,p_region_template_options=>'#DEFAULT#:t-CardsRegion--styleB'
,p_plug_template=>wwv_flow_imp.id(40100032401263654)
,p_plug_display_sequence=>50
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('select ''PROMEDIO DE ATENCI\00D3N'' TITULO,  '),
'        inv.catickets.fn_promedio_atencion HORA',
'FROM DUAL',
'UNION ALL',
unistr('select ''MAYOR TIEMPO DE DURACI\00D3N'' TITULO,  '),
'        ''00:08:00:00'' HORA',
'FROM DUAL',
'UNION ALL',
unistr('select ''PROMEDIO DE ATENCI\00D3N'' TITULO,  '),
'        ''00:08:00:00'' HORA',
'FROM DUAL',
'UNION ALL',
unistr('select ''MAYOR TIEMPO DE DURACI\00D3N'' TITULO,  '),
'        ''00:08:00:00'' HORA',
'FROM DUAL',
'UNION ALL',
'select ''TIEMPO TOTAL PROMEDIO DE ESPERA'',  ',
'        ''00:08:00:00'' HORA',
'FROM DUAL'))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_show_total_row_count=>false
,p_plug_display_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(153876747057515003)
,p_region_id=>wwv_flow_imp.id(291812765872987743)
,p_layout_type=>'GRID'
,p_grid_column_count=>5
,p_title_adv_formatting=>false
,p_sub_title_adv_formatting=>false
,p_sub_title_column_name=>'TITULO'
,p_body_adv_formatting=>false
,p_second_body_adv_formatting=>false
,p_badge_column_name=>'HORA'
,p_media_adv_formatting=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(291813564131987751)
,p_plug_name=>'TICKETS ATENDIDOS'
,p_region_name=>'atendidos'
,p_parent_plug_id=>wwv_flow_imp.id(291812855121987744)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>90
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'NEVER'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(293727594321423268)
,p_plug_name=>'ATENDIDOS'
,p_parent_plug_id=>wwv_flow_imp.id(291813564131987751)
,p_region_template_options=>'#DEFAULT#:t-CardsRegion--styleC'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40100032401263654)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT id_llamador, ''Ticket: ''||SERIE_TICKET||NUM_TICKET TICKET, ''Box ''||box box',
'  FROM (',
'       SELECT *',
'         FROM INV.LLAMADOR_TICKET f ',
'         WHERE f.FECHA = TO_DATE(TO_CHAR(SYSDATE, ''DD/MM/YYYY''), ''DD/MM/YYYY'')',
'         and f.HORA_ATENCION IS NOT NULL',
'         ',
'         and f.id_llamador =',
'               (SELECT MAX(id_llamador)',
'                  FROM inv.llamador_ticket s',
'                 WHERE s.fecha =',
'                       to_date(to_char(SYSDATE, ''DD/MM/YYYY''), ''DD/MM/YYYY'')',
'                   AND f.id_ticket = s.id_ticket)',
'        ORDER BY HORA_LLAMADA DESC',
'        ',
'       )',
' WHERE rownum <= 6'))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_show_total_row_count=>false
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(153877884943515002)
,p_region_id=>wwv_flow_imp.id(293727594321423268)
,p_layout_type=>'GRID'
,p_grid_column_count=>2
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
,p_pk1_column_name=>'ID_LLAMADOR'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(291814320979987759)
,p_plug_name=>'TICKETS LLAMADOS'
,p_region_name=>'en_espera'
,p_parent_plug_id=>wwv_flow_imp.id(291812855121987744)
,p_region_css_classes=>'cabecera'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>100
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(291814234190987758)
,p_plug_name=>'LLAMADOS'
,p_region_name=>'llamados'
,p_parent_plug_id=>wwv_flow_imp.id(291814320979987759)
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
'                   AND e.hora_atencion IS NULL)',
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
'                   AND e.hora_atencion IS NULL',
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
 p_id=>wwv_flow_imp.id(153874122491515009)
,p_region_id=>wwv_flow_imp.id(291814234190987758)
,p_layout_type=>'GRID'
,p_grid_column_count=>2
,p_title_adv_formatting=>false
,p_title_column_name=>'TICKET'
,p_sub_title_adv_formatting=>false
,p_body_adv_formatting=>false
,p_body_column_name=>'BOX'
,p_second_body_adv_formatting=>false
,p_second_body_column_name=>'NOMBRE'
,p_icon_source_type=>'INITIALS'
,p_icon_class_column_name=>'TICKET'
,p_icon_position=>'START'
,p_media_adv_formatting=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(297979221865256323)
,p_plug_name=>'TICKETS EN ESPERA'
,p_region_name=>'espera'
,p_parent_plug_id=>wwv_flow_imp.id(291812855121987744)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>110
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(297530829714737724)
,p_plug_name=>'EN ESPERA'
,p_parent_plug_id=>wwv_flow_imp.id(297979221865256323)
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
'                ',
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
 p_id=>wwv_flow_imp.id(153875297318515007)
,p_region_id=>wwv_flow_imp.id(297530829714737724)
,p_layout_type=>'GRID'
,p_grid_column_count=>2
,p_title_adv_formatting=>false
,p_title_column_name=>'TICKET'
,p_sub_title_adv_formatting=>false
,p_body_adv_formatting=>false
,p_second_body_adv_formatting=>false
,p_second_body_column_name=>'NOMBRE'
,p_media_adv_formatting=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(298306560962651223)
,p_plug_name=>'horas'
,p_parent_plug_id=>wwv_flow_imp.id(291812855121987744)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>120
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'NEVER'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(153894046629514987)
,p_branch_name=>'if _a_70'
,p_branch_action=>'f?p=&APP_ID.:70:&SESSION.::&DEBUG.:70::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(152759733400015838)
,p_name=>'P508_OPERACION'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(552350003800360742)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(153876095298515007)
,p_name=>'P508_HORA'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(298306560962651223)
,p_display_as=>'PLUGIN_COM.FARZAD.APEX.FLIP.COUNT'
,p_grid_column=>9
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'md'
,p_attribute_04=>'Y'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_07=>'true'
,p_attribute_09=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(153878999406515002)
,p_name=>'P508_TICKET'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(552350003800360742)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(153879305696515001)
,p_name=>'P508_NUMERO1'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(552350003800360742)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(153879741179515001)
,p_name=>'P508_NUMERO_TICKET'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(552350003800360742)
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly; style=''width:300px;height:250px;color:white;background-color:blue;text-align: center;font-size: 200px;'''
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
 p_id=>wwv_flow_imp.id(153880140758515001)
,p_name=>'P508_LETRA'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(552350003800360742)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(153880572365515000)
,p_name=>'P508_BOX'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(552350003800360742)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(153880945079515000)
,p_name=>'P508_BOX_TICKET'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(552350003800360742)
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly;  style=''width:300px;height:250px;color:white;background-color:blue;text-align: center;font-size: 200px;'''
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(153881354469515000)
,p_name=>'P508_NUMERO'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(552350003800360742)
,p_item_default=>'#APP_IMAGES#9.mp3'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(153881752542515000)
,p_name=>'P508_REPRODUCIR'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(552350003800360742)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(153882165368515000)
,p_name=>'P508_ID_TICKET'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(552350003800360742)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(153882540355514999)
,p_name=>'P508_REFRESCA_REGION'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(552350003800360742)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(153889647881514989)
,p_name=>'Verifica ticket para llamar'
,p_event_sequence=>10
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(153890604861514989)
,p_event_id=>wwv_flow_imp.id(153889647881514989)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$x_Hide("promociones");',
'$x_Show("ATTENDANCE");'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(153891197189514989)
,p_event_id=>wwv_flow_imp.id(153889647881514989)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'setInterval(''contador()'',17000);'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(153890151040514989)
,p_event_id=>wwv_flow_imp.id(153889647881514989)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'setInterval(''refrescargrilla()'',15000);'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(153886303837514992)
,p_name=>'Actualiza regiones de tickets'
,p_event_sequence=>50
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(153886890109514991)
,p_event_id=>wwv_flow_imp.id(153886303837514992)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'    if (apex.item("P508_NUMERO1").isEmpty()) {',
'        $x_Hide("ATTENDANCE");',
'        $x_Show("promociones");',
'        apex.item( "P508_NUMERO_TICKET" ).setFocus();',
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
'        apex.item("P508_REPRODUCIR").setValue(1);',
'    }',
'}'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(153887241439514991)
,p_name=>'Reproducir ticket'
,p_event_sequence=>120
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P508_REPRODUCIR'
,p_condition_element=>'P508_REPRODUCIR'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'1'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(153887781833514991)
,p_event_id=>wwv_flow_imp.id(153887241439514991)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'    if (apex.item("P508_NUMERO1").isEmpty()) {',
'        apex.item( "P508_NUMERO_TICKET" ).setFocus();',
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
'',
'    var myVar6 = setTimeout(myTimer6, 6000)',
'    function myTimer6() {',
'    ',
'    audio6.play();',
'    }',
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
'                { x01: apex.item("P508_ID_TICKET").getValue()}, ',
'                {',
'                success: function (pData) { ',
'                    apex.item("P508_REPRODUCIR").setValue(0);',
'                    }, ',
'                });',
'        ',
'    }',
'  }'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(153888799485514990)
,p_event_id=>wwv_flow_imp.id(153887241439514991)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(291814234190987758)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(153888226503514990)
,p_event_id=>wwv_flow_imp.id(153887241439514991)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P508_REPRODUCIR'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(153889291301514989)
,p_event_id=>wwv_flow_imp.id(153887241439514991)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(293727594321423268)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(153891544757514989)
,p_name=>'Refresca llamadores'
,p_event_sequence=>130
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P508_REFRESCA_REGION'
,p_condition_element=>'P508_REFRESCA_REGION'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'1'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(153893520220514988)
,p_event_id=>wwv_flow_imp.id(153891544757514989)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(291814234190987758)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(153892519873514988)
,p_event_id=>wwv_flow_imp.id(153891544757514989)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(293727594321423268)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(153893006094514988)
,p_event_id=>wwv_flow_imp.id(153891544757514989)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(297530829714737724)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(153892052034514988)
,p_event_id=>wwv_flow_imp.id(153891544757514989)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P508_REFRESCA_REGION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(153884748957514994)
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
'        into vnumero, :P508_BOX, :P508_LETRA, :P508_ID_TICKET',
'        from INV.LLAMADOR_TICKET',
'        WHERE LLAMAR = ''S''',
'        AND FECHA  = TO_DATE(TO_CHAR(SYSDATE, ''DD/MM/YYYY''), ''DD/MM/YYYY'')',
'        and rownum = 1;',
'    EXCEPTION ',
'        when no_data_found  then ',
'            :P508_BOX := null;',
'             vnumero:=NULL;',
'             :P508_LETRA := null;',
'             :P508_ID_TICKET :=  NULL;',
'        WHEN OTHERS THEN',
'        vnumero:=NULL;',
'        :P508_BOX := null;',
'         :P508_LETRA := null;',
'         :P508_ID_TICKET :=  NULL;',
'',
'    end;',
'    if vnumero =''0'' or vnumero is null then',
'        :P508_NUMERO1:=null;',
'        :P508_BOX_TICKET:= null;',
'        :P508_NUMERO_TICKET:=null;',
'        :P508_ID_TICKET :=  NULL;',
'    else ',
'        :P508_NUMERO1:= vnumero;--vnumero;',
'        :P508_LETRA  := :P508_LETRA;',
'        :P508_TICKET:=''TICKET'';',
'        :P508_BOX  :=  :P508_BOX;',
'        :P508_NUMERO_TICKET:= :P508_LETRA||:P508_NUMERO1;',
'        :P508_BOX_TICKET:= ''Box ''||:P508_BOX;',
'    end if;',
'end;',
''))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(153885167418514993)
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
'        and a.id_ticket =  s.id_ticket',
'        and a.cod_tipo_cliente = ''1''',
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
 p_id=>wwv_flow_imp.id(153885590746514993)
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
'        OUT_OUT(''ENTRE PARA ACTUALIZAR'' || v_num_ticket);',
'        UPDATE INV.LLAMADOR_TICKET SET  LLAMAR = ''N''',
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
 p_id=>wwv_flow_imp.id(153885974448514993)
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
'        UPDATE INV.LLAMADOR_TICKET SET  HORA_LLAMADA = SYSDATE',
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
