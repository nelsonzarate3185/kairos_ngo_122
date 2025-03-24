prompt --application/pages/page_00486
begin
--   Manifest
--     PAGE: 00486
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
 p_id=>486
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'TUR - CA_ATENCION'
,p_alias=>'CA-ATENCION'
,p_step_title=>'CA_ATENCION'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.t-Body-mainContent, .t-Footer, .t-Header',
'                    { background-color:  #001b3f;',
'                    background-image:  linear-gradient(15deg, #0f4667 0%, #2a6973 150%)  !important;',
'                    }',
'                    ',
'.t-Header-branding{ visibility: hidden;}',
'',
'.t-Login-region { ',
'        margin-left: 40%;;',
'        }',
' ',
'.t-Login-body .t-Form-inputContainer{padding: 0%; margin: 0%;}',
'',
'',
'',
'',
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
'#P486_CLIENTE, #P486_NRO_TICKET, #P486_CLIENTE_LABEL, #P486_TICKET_LABEL {',
'  /*  text-align: center;*/',
'    background-color: transparent;',
'    border-color: transparent;',
'    font-weight: bold; ',
'    padding: 0%;',
'    margin: 0%;',
'    font-family: "Times New Roman", Times, serif;',
'} ',
'',
'',
'',
'',
'',
'',
'.card_css',
'{background-color: #f7ce68;',
'background-image: linear-gradient(0deg,#80D0C7 0%, #faf58e 100% );',
'}',
'',
'#det{background-color: #1b628f11; ',
'}'))
,p_step_template=>wwv_flow_imp.id(40085302490263650)
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'23'
,p_last_updated_by=>'PBOGADO'
,p_last_upd_yyyymmddhh24miss=>'20240925154428'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(148902252032312207)
,p_plug_name=>'Servicios'
,p_region_name=>'servicios'
,p_region_template_options=>'#DEFAULT#:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>1050
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(289994792704180728)
,p_plug_name=>'TICKET GENERADO'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>1040
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(143659022052222714)
,p_plug_name=>'LOGO'
,p_parent_plug_id=>wwv_flow_imp.id(289994792704180728)
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
 p_id=>wwv_flow_imp.id(143659169420222715)
,p_plug_name=>'TITULO'
,p_parent_plug_id=>wwv_flow_imp.id(289994792704180728)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_header=>unistr('<h4 style="text-align:center;font-size:50px;" class="center" >ATENCI\00D3N AL CLIENTE</h4> ')
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(143659216051222716)
,p_plug_name=>'TICKET'
,p_parent_plug_id=>wwv_flow_imp.id(289994792704180728)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>30
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_header=>'<h4 style="text-align:center;font-size:50px;" class="center" >TICKET PEN.: &P486_TICKET_PEN.</h4> '
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(143659394147222717)
,p_plug_name=>'DATOS DEL CLIENTE'
,p_region_name=>'dat_cli'
,p_parent_plug_id=>wwv_flow_imp.id(289994792704180728)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>40
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(143659652801222720)
,p_plug_name=>'DETALLES'
,p_region_name=>'det'
,p_parent_plug_id=>wwv_flow_imp.id(143659394147222717)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--accent10:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>50
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(286052108780405857)
,p_plug_name=>'Servicio Selecc'
,p_parent_plug_id=>wwv_flow_imp.id(143659652801222720)
,p_region_template_options=>'#DEFAULT#:t-CardsRegion--styleA'
,p_region_attributes=>'style="text-align:center; font-weight: bold;"'
,p_plug_template=>wwv_flow_imp.id(40100032401263654)
,p_plug_display_sequence=>30
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT c.descripcion, C.COD_TICKET CODIGO, z.cod_cliente, d.estado',
'                          FROM ca_ticket_atencion     z,',
'                               ca_ticket_atencion_det d,',
'                               ca_tickets_tipo        c',
'                         WHERE z.id_ticket = d.id_ticket',
'                           AND z.cod_empresa = ''1''',
'                           AND c.cod_ticket = d.cod_tipo_ticket',
'                          AND z.id_ticket = :P486_ID_TICKET;'))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_ajax_items_to_submit=>'P486_ID_TICKET'
,p_plug_query_num_rows_type=>'SCROLL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_show_total_row_count=>false
,p_plug_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
''))
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(145412101068369702)
,p_region_id=>wwv_flow_imp.id(286052108780405857)
,p_layout_type=>'GRID'
,p_card_css_classes=>'card_css'
,p_title_adv_formatting=>false
,p_title_column_name=>'DESCRIPCION'
,p_sub_title_adv_formatting=>false
,p_body_adv_formatting=>false
,p_second_body_adv_formatting=>false
,p_second_body_column_name=>'ESTADO'
,p_icon_source_type=>'INITIALS'
,p_icon_class_column_name=>'DESCRIPCION'
,p_icon_position=>'START'
,p_media_adv_formatting=>false
,p_pk1_column_name=>'CODIGO'
);
wwv_flow_imp_page.create_card_action(
 p_id=>wwv_flow_imp.id(147539838883413009)
,p_card_id=>wwv_flow_imp.id(145412101068369702)
,p_action_type=>'BUTTON'
,p_position=>'PRIMARY'
,p_display_sequence=>10
,p_label=>'Iniciar'
,p_link_target_type=>'REDIRECT_URL'
,p_link_target=>'javascript:$s(''P486_TIPO_TICKET'',''&CODIGO.'');javascript:$s(''P486_INICIAR'',''1'');'
,p_button_display_type=>'TEXT'
,p_is_hot=>true
,p_condition_type=>'EXPRESSION'
,p_condition_expr1=>':CODIGO = ''02'' and :P486_COD_CLIENTE IS NOT NULL and  NVL(:ESTADO, ''ACTIVO'') NOT IN (''FINALIZADO'', ''CANCELADO'', ''DERIVADO'')'
,p_condition_expr2=>'PLSQL'
,p_exec_cond_for_each_row=>true
,p_action_comments=>'Redirige al formulario de caordtra'
);
wwv_flow_imp_page.create_card_action(
 p_id=>wwv_flow_imp.id(147540093835413011)
,p_card_id=>wwv_flow_imp.id(145412101068369702)
,p_action_type=>'BUTTON'
,p_position=>'PRIMARY'
,p_display_sequence=>20
,p_label=>'Iniciar'
,p_link_target_type=>'REDIRECT_URL'
,p_link_target=>'javascript:$s(''P486_TIPO_TICKET'',''&CODIGO.'');javascript:$s(''P486_INICIAR'',''1'');'
,p_button_display_type=>'TEXT'
,p_is_hot=>true
,p_condition_type=>'EXPRESSION'
,p_condition_expr1=>':CODIGO = ''01''/* and :P486_COD_CLIENTE IS NOT NULL  and NVL(:ESTADO, ''ACTIVO'') NOT IN  (''FINALIZADO'', ''CANCELADO'', ''DERIVADO'')*/'
,p_condition_expr2=>'PLSQL'
,p_exec_cond_for_each_row=>true
);
wwv_flow_imp_page.create_card_action(
 p_id=>wwv_flow_imp.id(147540266251413013)
,p_card_id=>wwv_flow_imp.id(145412101068369702)
,p_action_type=>'BUTTON'
,p_position=>'PRIMARY'
,p_display_sequence=>30
,p_label=>'Iniciar'
,p_link_target_type=>'REDIRECT_URL'
,p_link_target=>'javascript:$s(''P486_TIPO_TICKET'',''&CODIGO.'');javascript:$s(''P486_INICIAR'',''1'');'
,p_button_display_type=>'TEXT'
,p_is_hot=>true
,p_condition_type=>'EXPRESSION'
,p_condition_expr1=>':CODIGO = ''03'' and :P486_COD_CLIENTE IS NOT NULL  and NVL(:ESTADO, ''ACTIVO'') NOT IN  (''FINALIZADO'', ''CANCELADO'', ''DERIVADO'')'
,p_condition_expr2=>'PLSQL'
,p_exec_cond_for_each_row=>true
);
wwv_flow_imp_page.create_card_action(
 p_id=>wwv_flow_imp.id(148904034055312225)
,p_card_id=>wwv_flow_imp.id(145412101068369702)
,p_action_type=>'BUTTON'
,p_position=>'PRIMARY'
,p_display_sequence=>50
,p_label=>'Derivar'
,p_link_target_type=>'REDIRECT_URL'
,p_link_target=>'javascript:$s(''P486_DERIVAR_CAJA'',''1'');javascript:$s(''P486_TIPO_TICKET'',''&CODIGO.'');'
,p_button_display_type=>'TEXT'
,p_is_hot=>true
,p_condition_type=>'EXPRESSION'
,p_condition_expr1=>':CODIGO = ''08'' and :P486_COD_CLIENTE IS NOT NULL  and NVL(:ESTADO, ''ACTIVO'') NOT IN  (''FINALIZADO'', ''CANCELADO'', ''DERIVADO'')'
,p_condition_expr2=>'PLSQL'
,p_exec_cond_for_each_row=>true
);
wwv_flow_imp_page.create_card_action(
 p_id=>wwv_flow_imp.id(147540404677413015)
,p_card_id=>wwv_flow_imp.id(145412101068369702)
,p_action_type=>'BUTTON'
,p_position=>'PRIMARY'
,p_display_sequence=>60
,p_label=>'Iniciar'
,p_link_target_type=>'REDIRECT_URL'
,p_link_target=>'javascript:$s(''P486_TIPO_TICKET'',''&CODIGO.'');javascript:$s(''P486_INICIAR'',''1'');'
,p_button_display_type=>'TEXT'
,p_is_hot=>true
,p_condition_type=>'EXPRESSION'
,p_condition_expr1=>':CODIGO = ''12''  and :P486_COD_CLIENTE IS NOT NULL  and NVL(:ESTADO, ''ACTIVO'') NOT IN  (''FINALIZADO'', ''CANCELADO'', ''DERIVADO'')'
,p_condition_expr2=>'PLSQL'
,p_exec_cond_for_each_row=>true
);
wwv_flow_imp_page.create_card_action(
 p_id=>wwv_flow_imp.id(148903876882312223)
,p_card_id=>wwv_flow_imp.id(145412101068369702)
,p_action_type=>'BUTTON'
,p_position=>'PRIMARY'
,p_display_sequence=>70
,p_label=>'Finalizar'
,p_link_target_type=>'REDIRECT_URL'
,p_link_target=>'javascript:$s(''P486_FINALIZAR'',''&CODIGO.'');'
,p_button_display_type=>'TEXT'
,p_is_hot=>true
,p_condition_type=>'EXPRESSION'
,p_condition_expr1=>':CODIGO = ''01'' OR (:P486_COD_CLIENTE IS NOT NULL AND NVL(:ESTADO, ''ACTIVO'') NOT IN  (''FINALIZADO'', ''CANCELADO'', ''DERIVADO''))'
,p_condition_expr2=>'PLSQL'
,p_exec_cond_for_each_row=>true
);
wwv_flow_imp_page.create_card_action(
 p_id=>wwv_flow_imp.id(148903985031312224)
,p_card_id=>wwv_flow_imp.id(145412101068369702)
,p_action_type=>'BUTTON'
,p_position=>'PRIMARY'
,p_display_sequence=>80
,p_label=>'Cancelar'
,p_link_target_type=>'REDIRECT_URL'
,p_link_target=>'javascript:$s(''P486_CANCELAR'',''&CODIGO.'');'
,p_button_display_type=>'TEXT'
,p_is_hot=>true
,p_condition_type=>'EXPRESSION'
,p_condition_expr1=>':CODIGO = ''01'' OR (:P486_COD_CLIENTE IS NOT NULL AND NVL(:ESTADO, ''ACTIVO'') NOT IN  (''FINALIZADO'', ''CANCELADO'', ''DERIVADO''))'
,p_condition_expr2=>'PLSQL'
,p_exec_cond_for_each_row=>true
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(143659843721222722)
,p_plug_name=>'BOTONERAS'
,p_parent_plug_id=>wwv_flow_imp.id(143659394147222717)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>60
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(143660088382222724)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(143659843721222722)
,p_button_name=>'CANCELAR'
,p_button_static_id=>'CANCELAR'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--danger:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Cancelar'
,p_button_redirect_url=>'f?p=&APP_ID.:468:&SESSION.::&DEBUG.:486::'
,p_icon_css_classes=>'fa-reply'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(193661223015252006)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(143659843721222722)
,p_button_name=>'PAUSAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--danger:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Pausar'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-pause'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(143659957908222723)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(143659843721222722)
,p_button_name=>'FINALIZAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--danger:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Finalizar'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-check'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(148902807232312213)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(148902252032312207)
,p_button_name=>'Agregar_servicios'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Agregar Servicios'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(148902953328312214)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(148902252032312207)
,p_button_name=>'Cancelar_servicios'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Cancelar'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'N'
,p_grid_column=>11
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(147540832343413019)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_imp.id(143659394147222717)
,p_button_name=>'Agregarcliente'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--warning'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Agregar Cliente'
,p_button_redirect_url=>'f?p=&APP_ID.:92:&SESSION.::&DEBUG.:92:P92_NOMBRE,P92_NRO_TICKET:&P486_CLIENTE.,&P486_ID_TICKET.'
,p_button_condition=>'P486_COD_CLIENTE'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_grid_new_row=>'N'
,p_grid_column=>11
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(148902102263312206)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(286052108780405857)
,p_button_name=>'Agregar'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Agregar Servicios'
,p_button_position=>'TOP'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(72425970482335711)
,p_name=>'P486_TIPO_CLIENTE'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(143659394147222717)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(143658997642222713)
,p_name=>'P486_CLIENTE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(143659394147222717)
,p_item_default=>'HECTOR SEGOVIA'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly style="font-size:30px;color:#001d3d;"'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(143659404356222718)
,p_name=>'P486_NRO_TICKET'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(143659394147222717)
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly style="font-size:30px;color:#001d3d;"'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(143659590777222719)
,p_name=>'P486_CLIENTE_LABEL'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(143659394147222717)
,p_item_default=>'CLIENTE:'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly style="text-align:end;font-size:30px;color:#001d3d;"'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(143660156296222725)
,p_name=>'P486_TICKET_LABEL'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(143659394147222717)
,p_item_default=>'TICKET NRO:'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly style="text-align:end;font-size:30px;color:#001d3d;"'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(143660413350222728)
,p_name=>'P486_TICKET_PEN'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(143659216051222716)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(143662479056222748)
,p_name=>'P486_ID_TICKET'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(143659394147222717)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(147540538708413016)
,p_name=>'P486_COD_CLIENTE'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(143659394147222717)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(148901630050312201)
,p_name=>'P486_DERIVAR_CAJA'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(143659394147222717)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(148902312546312208)
,p_name=>'P486_SERVICIOS'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(148902252032312207)
,p_prompt=>'Servicios'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LOV_SERVICIOS_TICKETS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT c.descripcion, C.COD_TICKET CODIGO',
'                          FROM ca_tickets_tipo c',
'                         WHERE C.COD_TICKET  not in (select l.COD_TICKET',
'                                          FROM ca_ticket_atencion     i,',
'                                               ca_ticket_atencion_det f,',
'                                               ca_tickets_tipo        l',
'                                         WHERE i.id_ticket = f.id_ticket',
'                                           AND i.cod_empresa = ''1''',
'                                           AND l.cod_ticket = f.cod_tipo_ticket',
'                                          AND i.id_ticket = :P486_ID_TICKET)',
'   and c.origen = ''STNGO''',
'   '))
,p_lov_cascade_parent_items=>'P486_EJECUTAR,P486_ID_TICKET'
,p_ajax_items_to_submit=>'P486_EJECUTAR,P486_ID_TICKET'
,p_ajax_optimize_refresh=>'N'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(148902425351312209)
,p_name=>'P486_EJECUTAR'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(148902252032312207)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(148904183532312226)
,p_name=>'P486_TIPO_TICKET'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(143659652801222720)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(148904204488312227)
,p_name=>'P486_INICIAR'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(143659652801222720)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(148904465037312229)
,p_name=>'P486_CANCELAR'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(143659652801222720)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(148904504604312230)
,p_name=>'P486_FINALIZAR'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(143659652801222720)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(149023477591268813)
,p_name=>'P486_PROCESAR'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(143659652801222720)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(145342304051823993)
,p_name=>'DA_LOAD'
,p_event_sequence=>10
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(143662523016222749)
,p_event_id=>wwv_flow_imp.id(145342304051823993)
,p_event_result=>'TRUE'
,p_action_sequence=>100
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(286052108780405857)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(147540741581413018)
,p_event_id=>wwv_flow_imp.id(145342304051823993)
,p_event_result=>'TRUE'
,p_action_sequence=>110
,p_execute_on_page_init=>'N'
,p_action=>'PLUGIN_COM.FOS.NOTIFICATIONS'
,p_attribute_01=>'warning'
,p_attribute_02=>'static'
,p_attribute_03=>unistr('Atenci\00F3n ')
,p_attribute_04=>'El cliente no se encuentra registrado'
,p_attribute_07=>'autodismiss:prevent-duplicates:remove-notifications:escape-html:newest-on-top:client-side-substitutions:dismiss-on-click:dismiss-on-button'
,p_attribute_08=>'top-right'
,p_attribute_09=>'Y'
,p_attribute_11=>'5'
,p_server_condition_type=>'ITEM_IS_NULL'
,p_server_condition_expr1=>'P486_COD_CLIENTE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(145329551783824003)
,p_name=>'DA_trae_cliente'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P486_COD_PERSONA'
,p_condition_element=>'P486_COD_PERSONA'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(145330050768824002)
,p_event_id=>wwv_flow_imp.id(145329551783824003)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    select COD_CLIENTE',
'    into :P486_COD_CLIENTE',
'    from cc_clientes ',
'    where cod_empresa= :P_COD_EMPRESA',
'    and  COD_PERSONA= :P486_COD_PERSONA ;',
'',
'exception',
'    when others then',
'           :P486_COD_CLIENTE:= null;',
'end;'))
,p_attribute_02=>'P486_COD_PERSONA'
,p_attribute_03=>'P486_COD_CLIENTE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(145330582236824001)
,p_event_id=>wwv_flow_imp.id(145329551783824003)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P486_COD_CLIENTE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(147539057474413001)
,p_name=>'Nuevo'
,p_event_sequence=>120
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P486_ID_TICKET'
,p_condition_element=>'P486_ID_TICKET'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterrefresh'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(147539190036413002)
,p_event_id=>wwv_flow_imp.id(147539057474413001)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(286052108780405857)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(148049796188698101)
,p_name=>'Finaliza procesos'
,p_event_sequence=>140
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(143659957908222723)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(148049874780698102)
,p_event_id=>wwv_flow_imp.id(148049796188698101)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE ',
'    cursor cur_detalles IS',
'            select ESTADO ',
'            from ca_ticket_atencion_det a',
'            where a.id_ticket = :P486_ID_TICKET;',
'    V_CONTADOR  number :=  0;',
'BEGIN ',
'    if :P486_COD_CLIENTE is not null then ',
'        :P0_MENSAJE_VALIDACION := NULL;',
'        :P486_PROCESAR :=  0;',
'        BEGIN',
'            FOR a IN cur_detalles LOOP',
'                if a.estado not in (''FINALIZADO'', ''CANCELADO'', ''DERIVADO'')  THEN ',
'                    V_CONTADOR  :=  V_CONTADOR  + 1;',
'                    exit;',
'                end if;',
'            END LOOP;',
'',
'',
'            if V_CONTADOR >  0 then ',
'                 :P0_MENSAJE_VALIDACION := ''Se debe completar los procesos antes de finalizar el Ticket'';',
'                 :P486_PROCESAR := 0;',
'            ELSE ',
'               ',
'                update llamador_ticket set estado  = ''FINALIZADO''',
'                WHERE ID_TICKET = :P486_ID_TICKET;',
'',
'                update ca_ticket_atencion set estado  = ''FINALIZADO'', fecha_cierre  = sysdate',
'                WHERE ID_TICKET = :P486_ID_TICKET;',
'',
'                COMMIT;',
'',
'                 :P486_PROCESAR :=  1;',
'            END IF;',
'',
'        END;',
'    else ',
'        update llamador_ticket set estado  = ''FINALIZADO''',
'                WHERE ID_TICKET = :P486_ID_TICKET;',
'',
'                update ca_ticket_atencion set estado  = ''FINALIZADO'', fecha_cierre  = sysdate',
'                WHERE ID_TICKET = :P486_ID_TICKET;',
'',
'                COMMIT;',
'',
'                 :P486_PROCESAR :=  1;',
'    end if;',
'',
'END;',
''))
,p_attribute_02=>'P486_ID_TICKET,P486_COD_CLIENTE'
,p_attribute_03=>'P0_MENSAJE_VALIDACION,P486_PROCESAR'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(148901711361312202)
,p_name=>'Deriva a Caja'
,p_event_sequence=>150
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P486_DERIVAR_CAJA'
,p_condition_element=>'P486_DERIVAR_CAJA'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'1'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(148901862153312203)
,p_event_id=>wwv_flow_imp.id(148901711361312202)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\00BFDesea derivar a Caja?')
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(152756584776015806)
,p_event_id=>wwv_flow_imp.id(148901711361312202)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE ',
'    v_ticket number;',
'BEGIN ',
'INSERT INTO ca_ticket_atencion',
'  (cod_empresa,',
'   nro_ticket,',
'   ser_ticket,',
'   cod_tipo_ticket,',
'   fecha,',
'   nro_ort,',
'   ser_ort,',
'   cod_cliente,',
'   nci,',
'   cod_pers_responsable,',
'   nro_ticket_ref,',
'   fecha_alta,',
'   cod_articulo,',
'   garantia,',
'   observacion,',
'   latitude_1,',
'   longitude_1,',
'   fec_ubi_1,',
'   latitude_2,',
'   longitude_2,',
'   fec_ubi_2,',
'   procesado,',
'   hora_atencion,',
'   anulado,',
'   fec_anula,',
'   user_anula,',
'   fecha_cierre,',
'   user_cierre,',
'   condicion_producto,',
'   nro_boleta_amarilla,',
'   telefono_cli,',
'   direccion_cli,',
'   referencia_ubi_cli,',
'   cod_distribuidor,',
'   art_desc,',
'   cod_tipo_cliente,',
'   ESTADO)',
'',
'  SELECT cod_empresa,',
'         nro_ticket,',
'         ser_ticket,',
'         ''08'',',
'         fecha,',
'         nro_ort,',
'         ser_ort,',
'         cod_cliente,',
'         nci,',
'         cod_pers_responsable,',
'         :P486_ID_TICKET,',
'         fecha_alta,',
'         cod_articulo,',
'         garantia,',
'         observacion,',
'         latitude_1,',
'         longitude_1,',
'         fec_ubi_1,',
'         latitude_2,',
'         longitude_2,',
'         fec_ubi_2,',
'         procesado,',
'         hora_atencion,',
'         anulado,',
'         fec_anula,',
'         user_anula,',
'         fecha_cierre,',
'         user_cierre,',
'         condicion_producto,',
'         nro_boleta_amarilla,',
'         telefono_cli,',
'         direccion_cli,',
'         referencia_ubi_cli,',
'         cod_distribuidor,',
'         art_desc,',
'         cod_tipo_cliente,',
'         ''CAJA''',
'    FROM ca_ticket_atencion',
'   WHERE id_ticket = :P486_ID_TICKET;',
'',
'    select seq_ticket.currval ',
'    INTO v_ticket',
'    from dual;',
'',
'',
'   INSERT INTO ca_ticket_atencion_det (COD_TIPO_TICKET, ID_TICKET, HORA_INICIO, HORA_FIN, ESTADO, MOTIVO)',
'   VALUES( ''08'', v_ticket, NULL, NULL, ''PENDIENTE'', NULL);',
'',
'    UPDATE ca_ticket_atencion_det SET ESTADO = ''DERIVADO'', HORA_INICIO = SYSDATE, HORA_FIN = SYSDATE',
'    WHERE ID_TICKET = :P486_ID_TICKET',
'    AND COD_TIPO_TICKET  = ''08'';',
'    ',
'END;'))
,p_attribute_02=>'P486_ID_TICKET'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(148901966257312204)
,p_event_id=>wwv_flow_imp.id(148901711361312202)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'update INV.LLAMADOR_TICKET set estado  = ''CAJA''',
'where id_ticket =  :P486_ID_TICKET;',
'',
'update ca_ticket_atencion_det  set estado = ''DERIVADO'', HORA_FIN = SYSDATE',
'WHERE COD_TIPO_TICKET = :P486_TIPO_TICKET',
'AND ID_TICKET  = :P486_ID_TICKET;',
'',
''))
,p_attribute_02=>'P486_ID_TICKET,P486_TIPO_TICKET'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_server_condition_type=>'NEVER'
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
 p_id=>wwv_flow_imp.id(149023317770268812)
,p_event_id=>wwv_flow_imp.id(148901711361312202)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(286052108780405857)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(148902549954312210)
,p_name=>'Agrega servicios'
,p_event_sequence=>160
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(148902102263312206)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(148902666030312211)
,p_event_id=>wwv_flow_imp.id(148902549954312210)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P486_SERVICIOS'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_02=>'1'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(148902704530312212)
,p_event_id=>wwv_flow_imp.id(148902549954312210)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'javascript:openModal(''servicios''); '
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(148903067635312215)
,p_name=>'Agrega servicios bd'
,p_event_sequence=>170
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(148902807232312213)
,p_condition_element=>'P486_SERVICIOS'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(148903158608312216)
,p_event_id=>wwv_flow_imp.id(148903067635312215)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\00BFDesea agregar el Servicio?')
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(148903240726312217)
,p_event_id=>wwv_flow_imp.id(148903067635312215)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'insert into ca_ticket_atencion_det (cod_tipo_ticket, id_ticket, estado)',
'values(:P486_SERVICIOS, :P486_ID_TICKET, ''ACTIVO'');'))
,p_attribute_02=>'P486_SERVICIOS,P486_ID_TICKET'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(148903387506312218)
,p_event_id=>wwv_flow_imp.id(148903067635312215)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(148902252032312207)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(148903474793312219)
,p_event_id=>wwv_flow_imp.id(148903067635312215)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(286052108780405857)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(149023878051268817)
,p_event_id=>wwv_flow_imp.id(148903067635312215)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P486_SERVICIOS'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(148903615987312221)
,p_name=>'Refresca datos'
,p_event_sequence=>180
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P486_EJECUTAR'
,p_condition_element=>'P486_EJECUTAR'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(148903764663312222)
,p_event_id=>wwv_flow_imp.id(148903615987312221)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P486_EJECUTAR'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(148904696126312231)
,p_name=>'Cancelacion de ticket'
,p_event_sequence=>190
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P486_CANCELAR'
,p_condition_element=>'P486_CANCELAR'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(148904782967312232)
,p_event_id=>wwv_flow_imp.id(148904696126312231)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\00BFDesea cancelar el Servicio?')
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(148904808441312233)
,p_event_id=>wwv_flow_imp.id(148904696126312231)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'update ca_ticket_atencion_det  set estado = ''CANCELADO'', HORA_FIN = SYSDATE',
'WHERE COD_TIPO_TICKET = :P486_CANCELAR',
'AND ID_TICKET  = :P486_ID_TICKET;',
'EXCEPTION ',
'WHEN OTHERS THEN ',
'    RAISE_APPLICATION_ERROR(-20001, ''No se pudo realizar la cancelacion del ticket'');',
'   ',
'END;'))
,p_attribute_02=>'P486_CANCELAR,P486_ID_TICKET'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(148904942358312234)
,p_event_id=>wwv_flow_imp.id(148904696126312231)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(286052108780405857)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(148905067022312235)
,p_event_id=>wwv_flow_imp.id(148904696126312231)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P486_CANCELAR'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(148905193349312236)
,p_name=>'Finalizar ticket'
,p_event_sequence=>200
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P486_FINALIZAR'
,p_condition_element=>'P486_FINALIZAR'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(148905265983312237)
,p_event_id=>wwv_flow_imp.id(148905193349312236)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\00BFDesea finalizar el Servicio?')
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(148905352466312238)
,p_event_id=>wwv_flow_imp.id(148905193349312236)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare ',
'v_hora_inicio VARCHAR2(12);',
'BEGIN',
'begin ',
'    select hora_inicio',
'    INTO v_hora_inicio',
'    from ca_ticket_atencion_det',
'    WHERE COD_TIPO_TICKET = :P486_FINALIZAR',
'    AND ID_TICKET  = :P486_ID_TICKET;',
'    EXCEPTION ',
'        WHEN OTHERS THEN  ',
'            v_hora_inicio := NULL;',
'end;',
'',
'IF v_hora_inicio IS NULL THEN ',
'    BEGIN',
'        update ca_ticket_atencion_det  set HORA_INICIO = SYSDATE',
'        WHERE COD_TIPO_TICKET = :P486_FINALIZAR',
'        AND ID_TICKET  = :P486_ID_TICKET;',
'        EXCEPTION ',
'        WHEN OTHERS THEN ',
'            RAISE_APPLICATION_ERROR(-20001, ''No se pudo realizar la cancelacion del ticket'');',
'           ',
'        END;',
'END IF;',
'BEGIN',
'update ca_ticket_atencion_det  set estado = ''FINALIZADO'', HORA_FIN = SYSDATE',
'WHERE COD_TIPO_TICKET = :P486_FINALIZAR',
'AND ID_TICKET  = :P486_ID_TICKET;',
'EXCEPTION ',
'WHEN OTHERS THEN ',
'    RAISE_APPLICATION_ERROR(-20001, ''No se pudo realizar la cancelacion del ticket'');',
'   ',
'END;',
'END;'))
,p_attribute_02=>'P486_FINALIZAR,P486_ID_TICKET'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(148905497465312239)
,p_event_id=>wwv_flow_imp.id(148905193349312236)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(286052108780405857)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(148905599756312240)
,p_event_id=>wwv_flow_imp.id(148905193349312236)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P486_CANCELAR'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(148905690222312241)
,p_name=>'PRODUCTOS A REPARAR'
,p_event_sequence=>210
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P486_INICIAR'
,p_condition_element=>'P486_TIPO_TICKET'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'02'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(148905955723312244)
,p_event_id=>wwv_flow_imp.id(148905690222312241)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'update ca_ticket_atencion_det  set estado = ''ACTIVO'', HORA_INICIO = SYSDATE',
'WHERE COD_TIPO_TICKET = :P486_TIPO_TICKET',
'AND ID_TICKET  = :P486_ID_TICKET;',
'EXCEPTION ',
'WHEN OTHERS THEN ',
'    RAISE_APPLICATION_ERROR(-20001, ''No se pudo realizar la inicializacion del ticket'');',
'   ',
'END;'))
,p_attribute_02=>'P486_TIPO_TICKET,P486_ID_TICKET'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(148906419113312249)
,p_event_id=>wwv_flow_imp.id(148905690222312241)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var id_ticket = apex.item("P486_ID_TICKET").getValue();',
'',
'apex.navigation.redirect(apex.util.makeApplicationUrl({',
'    pageId:370,',
'    itemNames: ["P370_OPERACION","P370_NRO_PAGINA","P370_NRO_TICKET"],',
'    itemValues: [''AGREGAR'', ''486'',id_ticket]}));'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(148906019828312245)
,p_event_id=>wwv_flow_imp.id(148905690222312241)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(286052108780405857)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(148906117356312246)
,p_event_id=>wwv_flow_imp.id(148905690222312241)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P486_TIPO_TICKET,P486_INICIAR'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(148906233501312247)
,p_name=>'RETIRO DE PRODUCTOS'
,p_event_sequence=>220
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P486_INICIAR'
,p_condition_element=>'P486_TIPO_TICKET'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'01'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(148906378812312248)
,p_event_id=>wwv_flow_imp.id(148906233501312247)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'update ca_ticket_atencion_det  set estado = ''ACTIVO'', HORA_INICIO  = SYSDATE',
'WHERE COD_TIPO_TICKET = :P486_TIPO_TICKET',
'AND ID_TICKET  = :P486_ID_TICKET;',
'EXCEPTION ',
'WHEN OTHERS THEN ',
'    RAISE_APPLICATION_ERROR(-20001, ''No se pudo realizar la inicializacion del ticket'');',
'   ',
'END;'))
,p_attribute_02=>'P486_TIPO_TICKET,P486_ID_TICKET'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(148905729603312242)
,p_event_id=>wwv_flow_imp.id(148906233501312247)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/*apex.navigation.redirect(apex.util.makeApplicationUrl({',
'    pageId:532,',
'    itemNames: ["P532_ID_CLIENTE", "P532_TIPO_CLIENTE","P532_ID_TICKET"],',
'    itemValues: [''&P486_COD_CLIENTE.'',''&P486_TIPO_CLIENTE.'',''&P486_ID_TICKET.'']}));',
'',
'*/',
'',
'apex.navigation.redirect(apex.util.makeApplicationUrl({',
'    pageId:784,',
'    itemNames: ["P784_ID_CLIENTE", "P784_TIPO_CLIENTE","P784_ID_TICKET"],',
'    itemValues: [''&P784_COD_CLIENTE.'',''&P784_TIPO_CLIENTE.'',''&P784_ID_TICKET.'']}));'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(148906547512312250)
,p_event_id=>wwv_flow_imp.id(148906233501312247)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(286052108780405857)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(149022219301268801)
,p_event_id=>wwv_flow_imp.id(148906233501312247)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P486_TIPO_TICKET,P486_INICIAR'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(149022318681268802)
,p_name=>unistr('GESTI\00D3N NCR')
,p_event_sequence=>230
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P486_INICIAR'
,p_condition_element=>'P486_TIPO_TICKET'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'03'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(149022477388268803)
,p_event_id=>wwv_flow_imp.id(149022318681268802)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'update ca_ticket_atencion_det  set estado = ''ACTIVO'', HORA_INICIO = SYSDATE',
'WHERE COD_TIPO_TICKET = :P486_TIPO_TICKET',
'AND ID_TICKET  = :P486_ID_TICKET;',
'EXCEPTION ',
'WHEN OTHERS THEN ',
'    RAISE_APPLICATION_ERROR(-20001, ''No se pudo realizar la inicializacion del ticket'');',
'   ',
'END;'))
,p_attribute_02=>'P486_TIPO_TICKET,P486_ID_TICKET'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(149022560571268804)
,p_event_id=>wwv_flow_imp.id(149022318681268802)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.navigation.redirect(apex.util.makeApplicationUrl({',
'    pageId:541,',
'    itemNames: ["P541_CLIENTE"],',
'    itemValues: [''&P486_COD_CLIENTE.'']}));'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(149022672385268805)
,p_event_id=>wwv_flow_imp.id(149022318681268802)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(286052108780405857)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(149022781487268806)
,p_event_id=>wwv_flow_imp.id(149022318681268802)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P486_TIPO_TICKET,P486_INICIAR'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(149022886552268807)
,p_name=>'AGENDAMIENTOS'
,p_event_sequence=>240
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P486_INICIAR'
,p_condition_element=>'P486_TIPO_TICKET'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'12'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(149022953618268808)
,p_event_id=>wwv_flow_imp.id(149022886552268807)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'update ca_ticket_atencion_det  set estado = ''ACTIVO'', HORA_INICIO  = SYSDATE',
'WHERE COD_TIPO_TICKET = :P486_TIPO_TICKET',
'AND ID_TICKET  = :P486_ID_TICKET;',
'EXCEPTION ',
'WHEN OTHERS THEN ',
'    RAISE_APPLICATION_ERROR(-20001, ''No se pudo realizar la inicializacion del ticket'');',
'   ',
'END;'))
,p_attribute_02=>'P486_TIPO_TICKET,P486_ID_TICKET'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(149023093661268809)
,p_event_id=>wwv_flow_imp.id(149022886552268807)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.navigation.redirect(apex.util.makeApplicationUrl({',
'    pageId:400,',
'    itemNames: ["P400_CLIENTE"],',
'    itemValues: [''&P486_COD_CLIENTE.'']}));'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(149023174071268810)
,p_event_id=>wwv_flow_imp.id(149022886552268807)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(286052108780405857)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(149023270628268811)
,p_event_id=>wwv_flow_imp.id(149022886552268807)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P486_TIPO_TICKET,P486_INICIAR'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(149023533292268814)
,p_name=>'Vuelve a la pagina anterior'
,p_event_sequence=>250
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P486_PROCESAR'
,p_condition_element=>'P486_PROCESAR'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'1'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(148050028573698104)
,p_event_id=>wwv_flow_imp.id(149023533292268814)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(document).ready(function(){ $(''#CANCELAR'').trigger(''click''); }); ',
'2'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(149023952218268818)
,p_name=>'Cerra region'
,p_event_sequence=>260
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(148902953328312214)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(149024073454268819)
,p_event_id=>wwv_flow_imp.id(149023952218268818)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(148902252032312207)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(149024135147268820)
,p_event_id=>wwv_flow_imp.id(149023952218268818)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(286052108780405857)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(149024225606268821)
,p_event_id=>wwv_flow_imp.id(149023952218268818)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P486_SERVICIOS'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(103254655821652643)
,p_name=>'Pausar ticket'
,p_event_sequence=>270
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(193661223015252006)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(103254747266652644)
,p_event_id=>wwv_flow_imp.id(103254655821652643)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\00BFDesea pausar el ticket?')
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(103254847119652645)
,p_event_id=>wwv_flow_imp.id(103254655821652643)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'update inv.llamador_ticket  set estado = ''PAUSADO'', INICIO_PAUSA = SYSDATE',
'WHERE  ID_TICKET  = :P486_ID_TICKET;',
'',
'commit;',
'',
':P486_PROCESAR := 1;'))
,p_attribute_02=>'P486_ID_TICKET'
,p_attribute_03=>'P486_PROCESAR'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(143660326461222727)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Cantidad de ticket pendientes'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT  count(*)',
'into :P486_TICKET_PEN',
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
''))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp.component_end;
end;
/
