prompt --application/pages/page_00225
begin
--   Manifest
--     PAGE: 00225
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
 p_id=>225
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'RHASIST - RELOJ'
,p_alias=>'RHASIST-RELOJ'
,p_page_mode=>'MODAL'
,p_step_title=>'RHASIST - RELOJ'
,p_autocomplete_on_off=>'OFF'
,p_javascript_file_urls=>'#APP_FILES#util_generico#MIN#.js'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/////////////////////--------------------------funcion que devuelve la fecha en letras-----------------------------\\\\\\\\\\\\\\\\\\\\\\\',
'function devuelve_fecha(){',
'    var today = new Date();',
'    document.getElementById("fecha").value = today.getDate() + " de " + new Intl.DateTimeFormat(''es-ES'', { month: ''long''}).format(new Date()) + " del "+ today.getFullYear();',
'   ',
'  ',
'}',
'',
'',
'function URL_MODAL() {',
'    var url = "f?p=#APP_ID#:141:#SESSION#::NO:";',
'        url = url.replace("#APP_ID#", $v("pFlowId"));',
'        url = url.replace("#SESSION#", $v("pInstance"));',
'',
'        apex.server.process("LLAMAR_MODAL", {',
'        x01: url',
'        }, {',
'        success: function(pData) {',
'        if (pData.success === true) {',
'            apex.navigation.redirect(pData.url);',
'        } else {',
'            console.log("FALSE");',
'        }',
'        },',
'        error: function(request, status, error) {',
'        console.log("status---" + status + " error----" + error);',
'        }',
'        });',
'}',
'',
'',
'',
'',
'///////////////////////////////////////////-------------------funciones de prueba reloj--------------------------\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\',
'devuelve_fecha();',
'$(function(){',
'',
'    // Cache some selectors',
'',
'    var clock = $(''#clock''),',
'        alarm = clock.find(''.alarm''),',
'        ampm = clock.find(''.ampm'');',
'',
'    // Map digits to their names (this will be an array)',
'    var digit_to_name = ''zero one two three four five six seven eight nine''.split('' '');',
'',
'    // This object will hold the digit elements',
'    var digits = {};',
'',
'    // Positions for the hours, minutes, and seconds',
'    var positions = [',
'        ''h1'', ''h2'', '':'', ''m1'', ''m2'', '':'', ''s1'', ''s2''',
'    ];',
'',
'    // Generate the digits with the needed markup,',
'    // and add them to the clock',
'',
'    var digit_holder = clock.find(''.digits'');',
'',
'    $.each(positions, function(){',
'',
'        if(this == '':''){',
'            digit_holder.append(''<div class="dots">'');',
'        }',
'        else{',
'',
'            var pos = $(''<div>'');',
'',
'            for(var i=1; i<8; i++){',
'                pos.append(''<span class="d'' + i + ''">'');',
'            }',
'',
'            // Set the digits as key:value pairs in the digits object',
'            digits[this] = pos;',
'',
'            // Add the digit elements to the page',
'            digit_holder.append(pos);',
'        }',
'',
'    });',
'',
'    // Add the weekday names',
'',
'    var weekday_names = ''Domingo Lunes Martes Miercoles Jueves Viernes Sabado''.split('' ''),',
'        weekday_holder = clock.find(''.weekdays'');',
'',
'    $.each(weekday_names, function(){',
'        weekday_holder.append(''<span>'' + this + ''</span>'');',
'    });',
'',
'    var weekdays = clock.find(''.weekdays span'');',
'',
'    // Run a timer every second and update the clock',
'',
'    (function update_time(){',
'',
'        // Use moment.js to output the current time as a string',
'        // hh is for the hours in 12-hour format,',
'        // mm - minutes, ss-seconds (all with leading zeroes),',
'        // d is for day of week and A is for AM/PM',
'',
'        var now = moment().format("hhmmssdA");',
'',
'               ',
'        digits.h1.attr(''class'', digit_to_name[now[0]]);',
'        digits.h2.attr(''class'', digit_to_name[now[1]]);',
'        digits.m1.attr(''class'', digit_to_name[now[2]]);',
'        digits.m2.attr(''class'', digit_to_name[now[3]]);',
'        digits.s1.attr(''class'', digit_to_name[now[4]]);',
'        digits.s2.attr(''class'', digit_to_name[now[5]]);',
'',
'        // The library returns Sunday as the first day of the week.',
'        // Stupid, I know. Lets shift all the days one position down, ',
'        // and make Sunday last',
'',
'        var dow = now[6];',
'        //dow--;',
'        // Sunday!',
'        if(moment().format(''dddd'') == ''Sunday''){',
'            // Make it last',
'            dow = 0;   ',
'        }',
'        if(moment().format(''dddd'') == ''Monday''){',
'            // Make it last',
'            dow = 1;   ',
'        }',
'        if(moment().format(''dddd'') == ''Tuesday''){',
'            // Make it last',
'            dow = 2;   ',
'        }',
'        if(moment().format(''dddd'') == ''Wednesday''){',
'            // Make it last',
'            dow = 3;   ',
'        }',
'        if(moment().format(''dddd'') == ''Thursday ''){',
'            // Make it last',
'            dow = 4;   ',
'        }',
'        if(moment().format(''dddd'') == ''Friday''){',
'            // Make it last',
'            dow = 5;   ',
'        }',
'        if(moment().format(''dddd'') == ''Saturday''){',
'            // Make it last',
'            dow = 6;   ',
'        }',
'    ',
'        // Mark the active day of the week',
'        weekdays.removeClass(''active'').eq(dow).addClass(''active'');',
'',
'        // Set the am/pm text:',
'        ampm.text(now[7]+now[8]);',
'',
'        // Schedule this function to be run again in 1 sec',
'        setTimeout(update_time, 1000);',
'',
'    })();',
'',
'    // Switch the theme',
'',
'   ',
'',
'});',
'',
'',
'',
'',
'function getLocation() { ',
'if (navigator.geolocation) {',
'navigator.geolocation.getCurrentPosition(',
' function setPosition(position) { ',
' $s("P225_LATITUDE" , position.coords.latitude);',
' $s("P225_LONGITUDE", position.coords.longitude);',
' }',
',function (error)',
'{',
'switch(error.code) ',
'{',
'case error.PERMISSION_DENIED: ',
'    return "User denied the request for Geolocation.";',
'break;',
'case error.POSITION_UNAVAILABLE:',
'    return  "Location information is unavailable.";',
'break;',
'case error.TIMEOUT:',
'    return "The request to get user location timed out." ;',
'  ',
'break;',
'case error.UNKNOWN_ERROR:',
'    return "An unknown error occurred.";',
'break;',
'}',
'}    ',
',{timeout:10000});',
'  return "Success";',
'}',
'else',
'    return "Geolocation is not supported by this browser.";',
'};'))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#MARC{',
'    font-weight: bold;',
'}',
'#fecha{',
'    background-color: #183E87 !important;',
'    border: none;',
'    color: #FDEC06;',
'    font-size: 20px;',
'    font-weight: bold;',
'    text-align: center;',
'    margin-top: 10px;',
'}',
'',
'',
'/* Source: http://tutorialzine.com/2013/06/digital-clock/ */',
'',
'/*-------------------------',
'	Simple reset',
'--------------------------*/',
'',
'',
'',
'',
'/*-------------------------',
'	General Styles',
'--------------------------*/',
'/* Source: http://tutorialzine.com/2013/06/digital-clock/ */',
'',
'',
'',
'',
'',
'/*-------------------------',
'	The clocks',
'--------------------------*/',
'',
'',
'#clock{',
'	width:100%;',
'  ',
'    padding:5px;',
'	',
'	position:relative;',
'}',
'',
'#clock:after{',
'	content:'''';',
'	position:absolute;',
'	width:400px;',
'	height:20px;',
'	border-radius:100%;',
'	left:50%;',
'	margin-left:-200px;',
'	bottom:2px;',
'	z-index:-1;',
'}',
'',
'',
'#clock .display{',
'	text-align:center;',
'	padding: 40px 20px 20px;',
'	border-radius:6px;',
'	position:relative;',
'	height: 150px;',
'}',
'',
'',
'',
'',
'/*-------------------------',
'	Dark color theme',
'--------------------------*/',
'',
'',
'#clock.dark{',
'	background-color:#144076bd;',
'	color:#FDEC06;',
'    border-radius:6px;',
'}',
'',
'#clock.dark:after{',
'	box-shadow:0 4px 10px rgba(0,0,0,0.08);',
'}',
'',
'#clock.dark .digits div span{',
'	background-color:#FDEC06;',
'	border-color:#FDEC06;	',
'}',
'',
'/*#clock.dark .alarm{',
'	background:url(''../img/alarm_dark.jpg'');',
'}*/',
'',
'#clock.dark .display{',
'	background-color:#183E87;',
'	box-shadow:1px 3px 3px #FDEC06 inset, 1px 3px 3px #FDEC06;',
'}',
'',
'#clock.dark .digits div.dots:before,',
'#clock.dark .digits div.dots:after{',
'	background-color:#cacaca;',
'}',
'',
'',
'/*-------------------------',
'	The Digits',
'--------------------------*/',
'',
'',
'#clock .digits div{',
'	text-align:left;',
'	position:relative;',
'	width: 28px;',
'	height:50px;',
'	display:inline-block;',
'	margin:0 4px;',
'}',
'',
'#clock .digits div span{',
'	opacity:0;',
'	position:absolute;',
'',
'	-webkit-transition:0.25s;',
'	-moz-transition:0.25s;',
'	transition:0.25s;',
'}',
'',
'#clock .digits div span:before,',
'#clock .digits div span:after{',
'	content:'''';',
'	position:absolute;',
'	width:0;',
'	height:0;',
'	border:5px solid transparent;',
'}',
'',
'#clock .digits .d1{			height:5px;width:16px;top:0;left:6px;}',
'#clock .digits .d1:before{	border-width:0 5px 5px 0;border-right-color:inherit;left:-5px;}',
'#clock .digits .d1:after{	border-width:0 0 5px 5px;border-left-color:inherit;right:-5px;}',
'',
'#clock .digits .d2{			height:5px;width:16px;top:24px;left:6px;}',
'#clock .digits .d2:before{	border-width:3px 4px 2px;border-right-color:inherit;left:-8px;}',
'#clock .digits .d2:after{	border-width:3px 4px 2px;border-left-color:inherit;right:-8px;}',
'',
'#clock .digits .d3{			height:5px;width:16px;top:48px;left:6px;}',
'#clock .digits .d3:before{	border-width:5px 5px 0 0;border-right-color:inherit;left:-5px;}',
'#clock .digits .d3:after{	border-width:5px 0 0 5px;border-left-color:inherit;right:-5px;}',
'',
'#clock .digits .d4{			width:5px;height:14px;top:7px;left:0;}',
'#clock .digits .d4:before{	border-width:0 5px 5px 0;border-bottom-color:inherit;top:-5px;}',
'#clock .digits .d4:after{	border-width:0 0 5px 5px;border-left-color:inherit;bottom:-5px;}',
'',
'#clock .digits .d5{			width:5px;height:14px;top:7px;right:0;}',
'#clock .digits .d5:before{	border-width:0 0 5px 5px;border-bottom-color:inherit;top:-5px;}',
'#clock .digits .d5:after{	border-width:5px 0 0 5px;border-top-color:inherit;bottom:-5px;}',
'',
'#clock .digits .d6{			width:5px;height:14px;top:32px;left:0;}',
'#clock .digits .d6:before{	border-width:0 5px 5px 0;border-bottom-color:inherit;top:-5px;}',
'#clock .digits .d6:after{	border-width:0 0 5px 5px;border-left-color:inherit;bottom:-5px;}',
'',
'#clock .digits .d7{			width:5px;height:14px;top:32px;right:0;}',
'#clock .digits .d7:before{	border-width:0 0 5px 5px;border-bottom-color:inherit;top:-5px;}',
'#clock .digits .d7:after{	border-width:5px 0 0 5px;border-top-color:inherit;bottom:-5px;}',
'',
'',
'/* 1 */',
'',
'#clock .digits div.one .d5,',
'#clock .digits div.one .d7{',
'	opacity:1;',
'}',
'',
'/* 2 */',
'',
'#clock .digits div.two .d1,',
'#clock .digits div.two .d5,',
'#clock .digits div.two .d2,',
'#clock .digits div.two .d6,',
'#clock .digits div.two .d3{',
'	opacity:1;',
'}',
'',
'/* 3 */',
'',
'#clock .digits div.three .d1,',
'#clock .digits div.three .d5,',
'#clock .digits div.three .d2,',
'#clock .digits div.three .d7,',
'#clock .digits div.three .d3{',
'	opacity:1;',
'}',
'',
'/* 4 */',
'',
'#clock .digits div.four .d5,',
'#clock .digits div.four .d2,',
'#clock .digits div.four .d4,',
'#clock .digits div.four .d7{',
'	opacity:1;',
'}',
'',
'/* 5 */',
'',
'#clock .digits div.five .d1,',
'#clock .digits div.five .d2,',
'#clock .digits div.five .d4,',
'#clock .digits div.five .d3,',
'#clock .digits div.five .d7{',
'	opacity:1;',
'}',
'',
'/* 6 */',
'',
'#clock .digits div.six .d1,',
'#clock .digits div.six .d2,',
'#clock .digits div.six .d4,',
'#clock .digits div.six .d3,',
'#clock .digits div.six .d6,',
'#clock .digits div.six .d7{',
'	opacity:1;',
'}',
'',
'',
'/* 7 */',
'',
'#clock .digits div.seven .d1,',
'#clock .digits div.seven .d5,',
'#clock .digits div.seven .d7{',
'	opacity:1;',
'}',
'',
'/* 8 */',
'',
'#clock .digits div.eight .d1,',
'#clock .digits div.eight .d2,',
'#clock .digits div.eight .d3,',
'#clock .digits div.eight .d4,',
'#clock .digits div.eight .d5,',
'#clock .digits div.eight .d6,',
'#clock .digits div.eight .d7{',
'	opacity:1;',
'}',
'',
'/* 9 */',
'',
'#clock .digits div.nine .d1,',
'#clock .digits div.nine .d2,',
'#clock .digits div.nine .d3,',
'#clock .digits div.nine .d4,',
'#clock .digits div.nine .d5,',
'#clock .digits div.nine .d7{',
'	opacity:1;',
'}',
'',
'/* 0 */',
'',
'#clock .digits div.zero .d1,',
'#clock .digits div.zero .d3,',
'#clock .digits div.zero .d4,',
'#clock .digits div.zero .d5,',
'#clock .digits div.zero .d6,',
'#clock .digits div.zero .d7{',
'	opacity:1;',
'}',
'',
'',
'/* The dots */',
'',
'#clock .digits div.dots{',
'	width:5px;',
'}',
'',
'#clock .digits div.dots:before,',
'#clock .digits div.dots:after{',
'	width:5px;',
'	height:5px;',
'	content:'''';',
'	position:absolute;',
'	left:0;',
'	top:14px;',
'}',
'',
'#clock .digits div.dots:after{',
'	top:34px;',
'}',
'',
'',
'/*-------------------------',
'	The Alarm',
'--------------------------*/',
'',
'',
'/*#clock .alarm{',
'	width:16px;',
'	height:16px;',
'	bottom:20px;',
'	background:url(''../img/alarm_light.jpg'');',
'	position:absolute;',
'	opacity:0.2;',
'}*/',
'',
'#clock .alarm.active{',
'	opacity:1;',
'}',
'',
'',
'/*-------------------------',
'	Weekdays',
'--------------------------*/',
'',
'',
'#clock .weekdays{',
'	font-size:12px;',
'	position:absolute;',
'	width:100%;',
'	top:10px;',
'	left:0;',
'	text-align:center;',
'}',
'',
'',
'',
'',
'#clock .weekdays span{',
'	opacity:0.2;',
'	padding:0 5px;',
'}',
'',
'#clock .weekdays span.active{',
'	opacity:1;',
'}',
'/*-------------------------',
'		AM/PM',
'--------------------------*/',
'',
'',
'#clock .ampm{',
'	position:absolute;',
'	bottom:20px;',
'	right:20px;',
'	font-size:12px;',
'}',
'',
'',
''))
,p_page_template_options=>'#DEFAULT#'
,p_dialog_width=>'800'
,p_dialog_chained=>'N'
,p_protection_level=>'C'
,p_page_component_map=>'03'
,p_last_updated_by=>'PABLOALV'
,p_last_upd_yyyymmddhh24miss=>'20250318175832'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(51214581519414913)
,p_plug_name=>'Reloj'
,p_region_name=>'reloj'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!--<div id="relojnumerico" class="reloj" >',
unistr('    <!-- Ac\00E1 mostraremos el reloj desde JavaScript '),
'  <body onload="startTime()">',
'',
'<input readonly type="button"style="width:1000px;height:30px;border:none;color: black;";  id="gmt">',
'',
'</body>',
'</div-->',
'',
'<div id="clock" class="dark">',
'			<div class="display">',
'				<div class="weekdays"></div>',
'				<div class="ampm"></div>',
'				<div class="alarm"></div>',
'				<div class="digits"></div>',
'                    <div>',
'                        <input id="fecha" type="button" >',
'                    </div>  ',
'         </div>',
'                     ',
'		</div>',
'',
'<!-- JavaScript Includes -->',
'		<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/1.10.1/jquery.min.js"></script>',
'		<script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.0.0/moment.min.js"></script>',
''))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(51214905363414917)
,p_plug_name=>'Cont_Marcador'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--textContent:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P225_COD_EMPLEADO'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(48373926304792538)
,p_name=>'Marcar'
,p_region_name=>'MARC'
,p_parent_plug_id=>wwv_flow_imp.id(51214905363414917)
,p_template=>wwv_flow_imp.id(40125238939263661)
,p_display_sequence=>10
,p_icon_css_classes=>'fa-badge-check'
,p_region_template_options=>'#DEFAULT#:t-Region--showIcon:t-Region--textContent:t-Region--scrollBody:margin-top-sm'
,p_component_template_options=>'#DEFAULT#:u-colors:t-Cards--compact:t-Cards--3cols:t-Cards--animRaiseCard:t-Report--hideNoPagination'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'   SELECT ''x''                                          CARD_TITLE,',
'          ''X''                                           CARD_TEXT,',
'           ''x''                                      CARD_SUBTITLE,',
'          ''X''                                        CARD_SUBTEXT,',
'          ''javascript:$s(P225_ACCION,#COD_ESTADO_ASI#)''    CARD_LINK,',
'          a.descripcion ,',
'          A.COD_ESTADO_ASI,',
'          ''Tipo Marc. : ''||DECODE(A.TIPO,''E'',''ENTRADA'',''SALIDA'')TIPO',
'   FROM RH_ESTADOS_ASISTENCIAS A',
' WHERE A.COD_EMPRESA = ''1'' ',
'   AND  ''S''= RHASIST.FUNCBD_DEVUELVE_ASISTENCIA(:P_COD_EMPRESA,:P225_COD_EMPLEADO,A.COD_ESTADO_ASI)',
'   '))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P225_COD_EMPLEADO,P_COD_EMPRESA'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(40141194770263665)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(48374224506792541)
,p_query_column_id=>1
,p_column_alias=>'CARD_TITLE'
,p_column_display_sequence=>10
,p_column_heading=>'Card Title'
,p_use_as_row_header=>'N'
,p_column_html_expression=>'#COD_ESTADO_ASI#'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(48374304774792542)
,p_query_column_id=>2
,p_column_alias=>'CARD_TEXT'
,p_column_display_sequence=>20
,p_column_heading=>'Card Text'
,p_use_as_row_header=>'N'
,p_column_html_expression=>'#DESCRIPCION#'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(48374438525792543)
,p_query_column_id=>3
,p_column_alias=>'CARD_SUBTITLE'
,p_column_display_sequence=>30
,p_column_heading=>'Card Subtitle'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(48374584349792544)
,p_query_column_id=>4
,p_column_alias=>'CARD_SUBTEXT'
,p_column_display_sequence=>40
,p_column_heading=>'Card Subtext'
,p_use_as_row_header=>'N'
,p_column_html_expression=>'#TIPO#'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(48374679165792545)
,p_query_column_id=>5
,p_column_alias=>'CARD_LINK'
,p_column_display_sequence=>50
,p_column_heading=>'Card Link'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(48374795822792546)
,p_query_column_id=>6
,p_column_alias=>'DESCRIPCION'
,p_column_display_sequence=>60
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(48374890929792547)
,p_query_column_id=>7
,p_column_alias=>'COD_ESTADO_ASI'
,p_column_display_sequence=>70
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(48374955207792548)
,p_query_column_id=>8
,p_column_alias=>'TIPO'
,p_column_display_sequence=>80
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(51214672958414914)
,p_name=>'Marcaciones'
,p_parent_plug_id=>wwv_flow_imp.id(51214905363414917)
,p_template=>wwv_flow_imp.id(40125238939263661)
,p_display_sequence=>20
,p_region_template_options=>'#DEFAULT#:t-Region--textContent:t-Region--scrollBody'
,p_component_template_options=>'u-colors:t-BadgeList--small:t-BadgeList--dash:t-BadgeList--float:t-Report--hideNoPagination'
,p_new_grid_row=>false
,p_grid_column_span=>3
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT A.DESCRIPCION||CHR(10)||',
'       TO_CHAR(R.FEC_HOR_ASISTENCIA,''DD/MM/YYYY HH24:MI'')HORA',
'  FROM RH_ASISTENCIAS R,',
'       RH_ESTADOS_ASISTENCIAS A',
' WHERE R.COD_EMPRESA    = 1',
'   AND R.COD_EMPLEADO   = :P225_COD_EMPLEADO',
'   AND R.COD_EMPRESA    = A.COD_EMPRESA',
'   AND R.COD_ESTADO_ASI = A.COD_ESTADO_ASI',
'   AND TO_DATE(R.FEC_ASISTENCIA)= TO_DATE(SYSDATE)',
' ORDER BY R.FEC_HOR_ASISTENCIA '))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P225_COD_EMPLEADO'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(40137194923263664)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'Todavia no tiene marcaciones Hoy'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(51214743213414915)
,p_query_column_id=>1
,p_column_alias=>'HORA'
,p_column_display_sequence=>10
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(51215873938414926)
,p_plug_name=>unistr('No se ha encontrado el C\00F3digo de Empleado')
,p_region_template_options=>'#DEFAULT#:t-Alert--colorBG:t-Alert--wizard:t-Alert--defaultIcons:t-Alert--info'
,p_plug_template=>wwv_flow_imp.id(40093179053263652)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'ITEM_IS_NULL'
,p_plug_display_when_condition=>'P225_COD_EMPLEADO'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(52976978623988112)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(51214672958414914)
,p_button_name=>'Mapa'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--simple:t-Button--iconRight:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Mapa'
,p_button_redirect_url=>'f?p=&APP_ID.:232:&SESSION.::&DEBUG.::P232_COD_EMPLEADO:&P225_COD_EMPLEADO.'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(48375048194792549)
,p_name=>'P225_ACCION'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(48373926304792538)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(51215519348414923)
,p_name=>'P225_COD_EMPLEADO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(51214581519414913)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(52976345930988106)
,p_name=>'P225_BANDERA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(48373926304792538)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(52976741887988110)
,p_name=>'P225_LATITUDE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(51214581519414913)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(52976814074988111)
,p_name=>'P225_LONGITUDE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(51214581519414913)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(48375106295792550)
,p_name=>'Cambiar_Elemento'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P225_ACCION'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(52976276647988105)
,p_event_id=>wwv_flow_imp.id(48375106295792550)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var vCOD_EMPRESA  = document.getElementById("P_COD_EMPRESA").value; ',
'var vCOD_EMPLEADO = document.getElementById("P225_COD_EMPLEADO").value; ',
'var vACCION       = document.getElementById("P225_ACCION").value; ',
'var geo = getLocation(); ',
'',
'apex.message.clearErrors();',
' if (geo==="Success"){',
'    apex.server.process(',
'                        ''Verifica_Marcacion'', ',
'                        { x01 : vCOD_EMPRESA,',
'                        x02 : vCOD_EMPLEADO,',
'                        x03 : vACCION}, ',
'                        {',
'                        success: function (pData) {',
'                            ',
'                            if(pData.p_contador == 0){',
'',
'                            apex.item("P225_BANDERA").setValue(''S'');',
'                            }else{',
unistr('                                    var htmldb_delete_messag_agregar =''\00BFDesea volver a marcar ''+ pData.p_estado +''?'' ;'),
'                                    apex.message.confirm(htmldb_delete_messag_agregar, function( okPressed ) { ',
'                                if( okPressed ) {',
'                                        apex.item("P225_BANDERA").setValue(''S'');',
'                                    } else {',
'                                        apex.item("P225_BANDERA").setValue(''N'');',
'                                    }',
'                                });',
'                            }',
'                        ',
'                        }, })',
' }else{',
'     ',
'            apex.message.showErrors({',
'                                    type: "errors",',
'                                    location: "page",',
'                                    message: geo,',
'                                    unsafe: false',
'                                }); ',
' }',
' ;',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(52976577867988108)
,p_name=>'Ejecutar_Pagina'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P225_BANDERA'
,p_condition_element=>'P225_BANDERA'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'S'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(51213888120414906)
,p_event_id=>wwv_flow_imp.id(52976577867988108)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_01=>'Marcar'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(99285449449806438)
,p_name=>'Obtener_Geolocalizacion'
,p_event_sequence=>50
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(99285570237806439)
,p_event_id=>wwv_flow_imp.id(99285449449806438)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'PLUGIN_NL.DETORA.APEX.STORELOCATION'
,p_attribute_01=>'P225_LATITUDE'
,p_attribute_02=>'P225_LONGITUDE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(98193743836746832)
,p_name=>'New'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P225_GEOERROR'
,p_condition_element=>'P225_GEOERROR'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(98193833117746833)
,p_event_id=>wwv_flow_imp.id(98193743836746832)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>unistr(' raise_application_error(-20000, ''Error en la tabla de art\00EDculos '' );')
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(51215764619414925)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Trae_Usuario_Cod'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT COD_EMPLEADO',
'  INTO :P225_COD_EMPLEADO',
'  FROM RH_EMPLEADOS R,',
'       USUARIOS     U ',
' WHERE R.COD_EMPRESA = :P_COD_EMPRESA',
'   AND U.COD_PERSONA = R.COD_PERSONA',
'   AND R.ACTIVO = ''S''',
'   AND UPPER(U.COD_USUARIO) = UPPER(:APP_USER); ',
'   ',
'EXCEPTION',
'   WHEN NO_DATA_FOUND THEN ',
'   SELECT COD_EMPLEADO ',
'     INTO :P225_COD_EMPLEADO',
'     FROM RH_EMPLEADOS E',
'     INNER JOIN ASP$USUA0100 U ',
'        ON E.COD_PERSONA = U.COD_PERSONA ',
'       AND E.COD_EMPRESA = :P_COD_EMPRESA',
'       AND E.ACTIVO = ''S'' ',
'       AND UPPER(U.USRN) = UPPER(:APP_USER);',
'',
'--:P225_COD_EMPLEADO := NULL;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(51213742009414905)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Guardar_Registro'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P225_LATITUDE IS NOT NULL AND :P225_LONGITUDE IS NOT NULL THEN ',
'RHASIST.PROCBD_REG_MARCACION(:P_COD_EMPRESA,',
'                             :P225_COD_EMPLEADO,',
'                             :P225_ACCION,',
'                             :P225_LATITUDE,',
'                             :P225_LONGITUDE);',
' ELSE ',
unistr('     RAISE_APPLICATION_ERROR(-20001,''No se encontr\00F3 la ubicaci\00F3n, por favor verifique tener habilitado el permiso de Ubicaci\00F3n!'');'),
'                                    ',
'END IF;'))
,p_process_clob_language=>'PLSQL'
,p_process_when=>'Marcar'
,p_process_when_type=>'REQUEST_IN_CONDITION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(51147202776941973)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'r68768'
,p_process_when_type=>'REQUEST_IN_CONDITION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(52975998068988102)
,p_process_sequence=>10
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Verifica_Marcacion'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE ',
' V_COD_EMPRESA  VARCHAR2(5); ',
' V_COD_EMPLEADO NUMBER; ',
' V_ACCION       VARCHAR2(300);',
' V_CONT         NUMBER:=0; ',
' V_ESTADO       VARCHAR2(500);',
' v_mensaje      VARCHAR2(500);',
'BEGIN ',
' V_COD_EMPRESA  := apex_application.g_x01;',
' V_COD_EMPLEADO := apex_application.g_x02;',
' V_ACCION       := apex_application.g_x03;',
' BEGIN ',
'',
' SELECT COUNT(*) ',
'  INTO V_CONT',
'  FROM RH_ASISTENCIAS A',
' WHERE A.COD_EMPRESA = V_COD_EMPRESA',
'   AND A.COD_EMPLEADO = V_COD_EMPLEADO',
'   AND A.COD_ESTADO_ASI = V_ACCION',
'   AND A.FEC_ASISTENCIA = TO_DATE(SYSDATE); ',
'',
'  ',
' EXCEPTION ',
' WHEN OTHERS THEN ',
' V_CONT := 0;',
' END;',
'-----------------------------------------',
'--------TRAE DESCRIPCION DE ESTADO-----',
'  BEGIN ',
'',
' SELECT R.DESCRIPCION',
'  INTO V_ESTADO',
'  FROM RH_ESTADOS_ASISTENCIAS R',
' WHERE R.COD_EMPRESA = V_COD_EMPRESA',
'   AND R.COD_ESTADO_ASI = V_ACCION; ',
'',
'   ',
'  ',
' EXCEPTION ',
' WHEN OTHERS THEN ',
' V_ESTADO := NULL;',
' END;',
' apex_json.open_object;',
' apex_json.write(''success'', TRUE);',
' apex_json.write(''p_contador'', V_CONT);',
' apex_json.write(''p_estado'', V_ESTADO);',
' apex_json.close_object;',
'EXCEPTION',
' WHEN OTHERS THEN',
' apex_json.open_object;',
' apex_json.write(''success'', FALSE);',
' apex_json.close_object; END;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp.component_end;
end;
/
