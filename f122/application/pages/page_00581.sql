prompt --application/pages/page_00581
begin
--   Manifest
--     PAGE: 00581
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
 p_id=>581
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'TUR - VISOR DE BOX'
,p_alias=>'VISOR-DE-BOX'
,p_step_title=>'VISOR DE BOX'
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
'    apex.item(''P581_REFRESCA_REGION'').setValue(1);',
'}',
'',
'function contador(){',
'	 apex.server.process(',
'        ''VERIFICA_TICKET'', ',
'        { x01: null}, ',
'        {',
'        success: function (pData) { ',
'            if (pData.p_num_ticket === "0") {',
'                $x_Hide("ATTENDANCE1");',
'                $x_Show("promociones1");',
'                apex.item("P581_REPRODUCIR").setValue(0);',
'            }  ',
'            else if(pData.p_num_ticket >  0) {',
'                ',
'                var box_usuario = apex.item("P581_BOX_USUARIO").getValue();',
'                var box_bd = pData.p_box;',
'                if (box_usuario == box_bd )  {',
'                    $x_Hide("promociones1");',
'                    $x_Show("ATTENDANCE1");    ',
'                }',
'                ',
'                apex.item("P581_NUMERO1").setValue(pData.p_num_ticket);',
'                apex.item("P581_LETRA").setValue(pData.p_serie_ticket);',
'                apex.item("P581_BOX").setValue(pData.p_box);',
'                apex.item("P581_ID_TICKET").setValue(pData.p_id_ticket);',
'                apex.item("P581_NUMERO_TICKET").setValue(pData.p_serie_ticket+pData.p_num_ticket);',
'                apex.item("P581_OPERACION").setValue(pData.p_operacion);',
'                ',
'                if (pData.p_operacion == "BOX" ) {',
'                    apex.item("P581_BOX_TICKET").setValue(pData.p_operacion+" "+pData.p_box);    ',
'                } else {',
'                    apex.item("P581_BOX_TICKET").setValue(pData.p_operacion);    ',
'                }',
'                ',
'/*',
'                apex.server.process(',
'                ''ACTUALIZA_HORA_LLAMADA'', ',
'                { x01: apex.item("P581_ID_TICKET").getValue()}, ',
'                {',
'                success: function (pData) { ',
'                    null;',
'                    ',
'                    }, ',
'                });',
'                */',
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
'                    apex.item("P581_REPRODUCIR").setValue(1);',
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
' .t-Header-branding, #floating-menu , .t-Footer-topButton{ visibility: hidden;} ',
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
'#promociones1{',
'     background-color: transparent;',
'      }',
'',
'#P581_NUMERO_TICKET, #P581_BOX_TICKET',
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
'}',
'',
'',
'',
'#P581_NRO_BOX',
'{',
'     width:400px;',
'     height:700px;',
'     text-align: center;',
'     font-size: 500px;',
'     color:#FFED00; ',
'     background-color: transparent; ',
'      FONT-FAMILY: fantasy;',
'     letter-spacing: 10px; ',
'     border: transparent;',
'}',
'',
'/*',
'#P581_BOX_TICKET{',
'     width:300px;',
'     height:450px;',
'     text-align: center;',
'     font-size: 300px;',
'     color:white; ',
'   background-color: #006fff;',
'  background-image: linear-gradient(180deg, #003566  0%, #006fff 100%);}',
'',
'',
'*/',
'',
'#ATTENDANCE1{',
'    background-color: #003566; ',
'    background-image: linear-gradient(180deg, #003566  0%, #006fff 100%);',
'    border-radius: 50px;',
'    padding: 10px;',
'    margin-top: 7%;',
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
''))
,p_step_template=>wwv_flow_imp.id(40085302490263650)
,p_page_template_options=>'#DEFAULT#:js-pageStickyMobileHeader'
,p_page_is_public_y_n=>'Y'
,p_page_component_map=>'17'
,p_last_updated_by=>'CHARBA'
,p_last_upd_yyyymmddhh24miss=>'20230808132221'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(188180203790669312)
,p_plug_name=>'Estructura1'
,p_region_name=>'promociones1'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(695553939546259065)
,p_plug_name=>unistr('Regi\00F3n de promociones')
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(956091317616632065)
,p_plug_name=>'Ticket'
,p_region_name=>'ATTENDANCE1'
,p_parent_plug_id=>wwv_flow_imp.id(695553939546259065)
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
'<audio id="audio1"/>		',
'<audio id="audio2"/>',
'<audio id="audio3"/>			',
'<audio id="audio4"/>',
'<audio id="audio5"/>',
'<audio id="audio6"/> ',
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
 p_id=>wwv_flow_imp.id(188646447809295956)
,p_branch_name=>'if _a_70'
,p_branch_action=>'f?p=&APP_ID.:70:&SESSION.::&DEBUG.:70::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(188180326102669313)
,p_name=>'P581_NRO_BOX'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(188180203790669312)
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
 p_id=>wwv_flow_imp.id(188632709405295964)
,p_name=>'P581_TICKET'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(956091317616632065)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(188633105298295963)
,p_name=>'P581_NUMERO1'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(956091317616632065)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(188633511319295963)
,p_name=>'P581_NUMERO_TICKET'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(956091317616632065)
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
 p_id=>wwv_flow_imp.id(188633961083295963)
,p_name=>'P581_LETRA'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(956091317616632065)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(188634394521295963)
,p_name=>'P581_BOX'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(956091317616632065)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(188634750626295963)
,p_name=>'P581_BOX_TICKET'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(956091317616632065)
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
 p_id=>wwv_flow_imp.id(188635133060295962)
,p_name=>'P581_NUMERO'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(956091317616632065)
,p_item_default=>'#APP_IMAGES#9.mp3'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(188635581072295962)
,p_name=>'P581_REPRODUCIR'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(956091317616632065)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(188635990068295962)
,p_name=>'P581_ID_TICKET'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(956091317616632065)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(188636345884295962)
,p_name=>'P581_REFRESCA_REGION'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(956091317616632065)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(188636791319295962)
,p_name=>'P581_OPERACION'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(956091317616632065)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(188912878025069004)
,p_name=>'P581_BOX_USUARIO'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(956091317616632065)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(188641077712295958)
,p_name=>'Verifica ticket para llamar'
,p_event_sequence=>10
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(188642063194295958)
,p_event_id=>wwv_flow_imp.id(188641077712295958)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$x_Show("promociones1");',
'$x_Hide("ATTENDANCE1");'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(188642539640295958)
,p_event_id=>wwv_flow_imp.id(188641077712295958)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'setInterval(''contador()'',1000);'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(188641544771295958)
,p_event_id=>wwv_flow_imp.id(188641077712295958)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'setInterval(''refrescargrilla()'',15000);'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(188640168829295959)
,p_name=>'Actualiza regiones de tickets'
,p_event_sequence=>30
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(188640648603295958)
,p_event_id=>wwv_flow_imp.id(188640168829295959)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'    if (apex.item("P581_NUMERO1").isEmpty()) {',
'        $x_Hide("ATTENDANCE1");',
'        $x_Show("promociones1");',
'        apex.item( "P581_NUMERO_TICKET" ).setFocus();',
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
'        apex.item("P581_REPRODUCIR").setValue(1);',
'    }',
'}'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(188638755908295960)
,p_name=>'Reproducir ticket'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P581_REPRODUCIR'
,p_condition_element=>'P581_REPRODUCIR'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'1'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(188639269645295959)
,p_event_id=>wwv_flow_imp.id(188638755908295960)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'    if (apex.item("P581_NUMERO1").isEmpty()) {',
'        apex.item( "P581_NUMERO_TICKET" ).setFocus();',
'    } else {  ',
'        var myVar1 = setTimeout(myTimer1, 1000)',
'        function myTimer1() {  ',
'        null;',
'        //audio1.play();        ',
'    }   ',
'    var myVar = setTimeout(myTimer, 2000)',
'        function myTimer() { ',
'        null;',
'        //audio2.play();',
'    }',
'',
'    var myVar3 = setTimeout(myTimer3, 3000)',
'        function myTimer3() {',
'            null;',
'        //audio3.play();',
'        }',
'        ',
'    var myVar4 = setTimeout(myTimer4, 4000)',
'    function myTimer4() {',
'    ',
'    null;',
'        //audio4.play();',
'    }',
'',
'',
'    var myVar5 = setTimeout(myTimer5, 5000)',
'    function myTimer5() {',
'    ',
'    null;',
'        //audio5.play();',
'    }',
'',
'    var operacion  = apex.item("P581_OPERACION").getValue();',
'    if (operacion == "BOX") {',
'        var myVar6 = setTimeout(myTimer6, 6000)',
'        function myTimer6() {',
'        null;',
'        //audio6.play();',
'        }',
'    }',
'    ',
'',
' var myVar8 = setTimeout(myTimer8, 7000)',
'    ',
'    function myTimer8() {',
'        $x_Hide("ATTENDANCE1");',
'        $x_Show("promociones1");',
'        ',
'/*',
'        apex.server.process(',
'                ''ACTUALIZA_LLAMADOR'', ',
'                { x01: apex.item("P581_ID_TICKET").getValue()}, ',
'                {',
'                success: function (pData) { ',
'                    apex.item("P581_REPRODUCIR").setValue(0);',
'                    }, ',
'                });*/',
'        ',
'    }',
'  }'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(188639760033295959)
,p_event_id=>wwv_flow_imp.id(188638755908295960)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P581_REPRODUCIR'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(188642919448295958)
,p_name=>'Refresca llamadores'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P581_REFRESCA_REGION'
,p_condition_element=>'P581_REFRESCA_REGION'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'1'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(188643958811295957)
,p_event_id=>wwv_flow_imp.id(188642919448295958)
,p_event_result=>'TRUE'
,p_action_sequence=>100
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P581_REFRESCA_REGION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(188181091220669320)
,p_name=>'Obtiene box del usuario'
,p_event_sequence=>60
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(188181140188669321)
,p_event_id=>wwv_flow_imp.id(188181091220669320)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN ',
'      ',
'    SELECT DISTINCT (COD_BOX)',
'        INTO :P581_BOX_USUARIO',
'          FROM ca_puesto_box A, ca_servicios_por_puestos  B, ca_tickets_tipo C',
'         WHERE A.fecha = to_date(to_char(SYSDATE, ''DD/MM/YYYY''), ''DD/MM/YYYY'')',
'           AND A.cod_usuario = :APP_USER',
'           AND  A.ID_PUESTO = B.ID_PUESTO',
'           AND C.COD_TICKET =  B.COD_TIPO_TICKET',
'           and rownum = 1',
'    UNION ALL',
'      ',
'       SELECT A.COD_BOX',
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
'',
':P581_NRO_BOX := ''BOX ''||:P581_BOX_USUARIO;'))
,p_attribute_03=>'P581_BOX_USUARIO,P581_NRO_BOX'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(188637143130295961)
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
'        into vnumero, :P581_BOX, :P581_LETRA, :P581_ID_TICKET',
'        from INV.LLAMADOR_TICKET',
'        WHERE LLAMAR = ''S''',
'        AND FECHA  = TO_DATE(TO_CHAR(SYSDATE, ''DD/MM/YYYY''), ''DD/MM/YYYY'')',
'        and rownum = 1;',
'    EXCEPTION ',
'        when no_data_found  then ',
'            :P581_BOX := null;',
'             vnumero:=NULL;',
'             :P581_LETRA := null;',
'             :P581_ID_TICKET :=  NULL;',
'        WHEN OTHERS THEN',
'        vnumero:=NULL;',
'        :P581_BOX := null;',
'         :P581_LETRA := null;',
'         :P581_ID_TICKET :=  NULL;',
'',
'    end;',
'    if vnumero =''0'' or vnumero is null then',
'        :P581_NUMERO1:=null;',
'        :P581_BOX_TICKET:= null;',
'        :P581_NUMERO_TICKET:=null;',
'        :P581_ID_TICKET :=  NULL;',
'    else ',
'        :P581_NUMERO1:= vnumero;--vnumero;',
'        :P581_LETRA  := :P581_LETRA;',
'        :P581_TICKET:=''TICKET'';',
'        :P581_BOX  :=  :P581_BOX;',
'        :P581_NUMERO_TICKET:= :P581_LETRA||:P581_NUMERO1;',
'        :P581_BOX_TICKET:= ''Box ''||:P581_BOX;',
'    end if;',
'end;',
' '))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(188637509981295960)
,p_process_sequence=>10
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'VERIFICA_TICKET'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    resultado BOOLEAN;',
'BEGIN',
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
'                select s.NUM_TICKET, trim(s.BOX), s.SERIE_TICKET, s.ID_TICKET, s.OPERACION',
'                into v_num_ticket, v_box, v_serie_ticket, v_id_ticket, v_operacion',
'                from INV.LLAMADOR_TICKET s, ca_ticket_atencion a',
'                WHERE s.LLAMAR = ''S''',
'             --   AND s.estado  =  ''CAJA''',
'                and a.id_ticket =  s.id_ticket',
'               -- AND a.cod_tipo_cliente IN (''2'', ''3'')',
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
'',
'',
''))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(188637961456295960)
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
 p_id=>wwv_flow_imp.id(188638333649295960)
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
