prompt --application/pages/page_00001
begin
--   Manifest
--     PAGE: 00001
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
 p_id=>1
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Home'
,p_alias=>'HOME'
,p_step_title=>'Kairos'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/*body {',
'   /* background-image: url(#APP_FILES#fondoN.png);*/',
'   /* background-image: url(#APP_FILES#fondoN-removebg-preview.png);*/',
'    /*background-size: cover;*/',
'    /*background-position:  center;',
'    background-repeat:  no-repeat;',
'    background-attachment: scroll;',
'    }',
'',
'@media (max-width:720px){ ',
'    body {',
'        background-size: 75%;',
'    }',
'}*/',
'',
'.t-Card {',
'    border-radius: 10%;;',
'}',
'',
'.t-Cards--featured .t-Card-wrap {',
'    border-radius: 10%;',
'}',
'',
'.t-Footer {',
'    background: white;',
'}',
'',
'.t-Report-pagination{',
'    display: none;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'13'
,p_last_updated_by=>'NZARATE'
,p_last_upd_yyyymmddhh24miss=>'20241015083120'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(43761648655968131)
,p_plug_name=>'New'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_08'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!--<div>',
'   <img src="#APP_FILES#logo-ngo.png"/ style="width:70px;  opacity: 90%;">',
'</div>-->',
''))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'EXISTS'
,p_plug_display_when_condition=>'SELECT * FROM DUAL WHERE :APP_USER in (''ETRINIDAD'', ''HSEGOVIA'')'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(46971566113983650)
,p_plug_name=>'Imagenes'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_05'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div style="display:inline-flex; width:100%;">',
'    <div style="width:50%;">',
'        <img src="#APP_FILES#logo-ngo.png"/ style="width:100px;  opacity: 90%;">',
'    </div>',
'    <div style="margin-left:40%;">',
'        <img src="#APP_FILES#fondoN-removebg-preview.png"/ style="width:150px;  opacity: 90%;">',
'    </div>',
'</div>',
'',
'',
''))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'NEVER'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(211086706629249481)
,p_name=>'FAVORITOS'
,p_template=>wwv_flow_imp.id(40100032401263654)
,p_display_sequence=>20
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:u-colors:t-Cards--featured t-Cards--block force-fa-lg:t-Cards--displayInitials:t-Cards--5cols:t-Cards--hideBody:t-Cards--animRaiseCard'
,p_region_attributes=>'style="margin-top:5%;"'
,p_new_grid_row=>false
,p_grid_column_span=>10
,p_display_column=>2
,p_display_point=>'REGION_POSITION_08'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT F100.PAGE card_initials,',
'       M300.NOMB card_title,',
'       APEX_PAGE.GET_URL(p_page => F100.PAGE) card_link,',
'       NULL card_color,',
'       NULL card_icon,',
'       NULL card_subtext,',
'       NULL card_text,',
'       NULL card_subtitle',
'  FROM ASP$FAVO0100 F100,',
'       ASP$MODU0300 M300',
' WHERE F100.USRN = :APP_USER',
'   AND F100.APLI0100$ID = :P_APLI0100_ID',
'   AND F100.PAGE = M300.PAGE_ID',
'   AND F100.MODU0300$ID = M300.ID',
'ORDER BY  F100.ID; '))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(40141194770263665)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(107180879913504859)
,p_query_column_id=>1
,p_column_alias=>'CARD_INITIALS'
,p_column_display_sequence=>10
,p_column_heading=>'Card Initials'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(107181202185504859)
,p_query_column_id=>2
,p_column_alias=>'CARD_TITLE'
,p_column_display_sequence=>20
,p_column_heading=>'Card Title'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(107181659717504859)
,p_query_column_id=>3
,p_column_alias=>'CARD_LINK'
,p_column_display_sequence=>30
,p_column_heading=>'Card Link'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(107182081931504860)
,p_query_column_id=>4
,p_column_alias=>'CARD_COLOR'
,p_column_display_sequence=>40
,p_column_heading=>'Card Color'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(107182409913504860)
,p_query_column_id=>5
,p_column_alias=>'CARD_ICON'
,p_column_display_sequence=>50
,p_column_heading=>'Card Icon'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(107182828653504860)
,p_query_column_id=>6
,p_column_alias=>'CARD_SUBTEXT'
,p_column_display_sequence=>60
,p_column_heading=>'Card Subtext'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(107183289381504860)
,p_query_column_id=>7
,p_column_alias=>'CARD_TEXT'
,p_column_display_sequence=>70
,p_column_heading=>'Card Text'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(107183639702504860)
,p_query_column_id=>8
,p_column_alias=>'CARD_SUBTITLE'
,p_column_display_sequence=>80
,p_column_heading=>'Card Subtitle'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(94711212547784345)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(43761648655968131)
,p_button_name=>'PRUEBA'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--simple:t-Button--iconRight:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Prueba Factura'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>'select * from dual where :app_user in (''ETRINIDAD'',''PABLOALV'')'
,p_button_condition_type=>'EXISTS'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(99641750593092027)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(43761648655968131)
,p_button_name=>'PRUEBA_1'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--simple:t-Button--iconRight:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Prueba NCR'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>'select * from dual where :app_user in (''ETRINIDAD'',''PABLOALV'')'
,p_button_condition_type=>'EXISTS'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(118955395769105339)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(43761648655968131)
,p_button_name=>'REMISION'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--simple:t-Button--iconRight:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Remision'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>'SELECT * FROM DUAL WHERE:APP_USER = ''ETRINIDAD'''
,p_button_condition_type=>'EXISTS'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(135661531380519801)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(43761648655968131)
,p_button_name=>'IMAGEN'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--simple:t-Button--iconRight:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Imagen'
,p_button_redirect_url=>'f?p=&APP_ID.:466:&SESSION.::&DEBUG.::P466_COD_MODULO,P466_OPERACION,P466_ID_IMAGEN:RE,CATALOGO,1'
,p_button_condition=>'SELECT * FROM DUAL WHERE :APP_USER in (''ETRINIDAD'');'
,p_button_condition_type=>'EXISTS'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(94711392768784346)
,p_name=>'New'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(94711212547784345)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(94711469549784347)
,p_event_id=>wwv_flow_imp.id(94711392768784346)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var vURL = ''https://ngosaeca.com.py/reportes/flow.html?_flowId=viewReportFlow&_flowId=viewReportFlow&ParentFolderUri=%2Freports&reportUnit=%2Freports%2FVTIMPFAC_CANON_FE&standAlone=true&j_username=jasperadmin&j_password=jasperadmin&output=pdf&P_COD_E'
||'MPRESA=1&P_TIP_COMPROBANTE=FCR&P_SER_COMPROBANTE=FE1&P_NRO_COMPROBANTE=258&P_COD_CLIENTE=11103&P_REIMPRESO=N&P_IMPRIME_CONDICION=S&P_PAGADO=S'';',
';',
'window.open(vURL,"Pagina Child","width=1800,height=800,scrollbars=NO") ;',
'',
'',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(99641899386092028)
,p_name=>'New_1'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(99641750593092027)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(99641681796092026)
,p_event_id=>wwv_flow_imp.id(99641899386092028)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var p_cod_empresa=1;',
'var p_tip_comprobante = ''NCR'';',
'var p_ser_comprobante = ''FE1'';',
'var p_nro_comprobante = 102;',
'var p_cod_cliente = 272763;',
'var vURL = ''https://ngosaeca.com.py/reportes/flow.html?_flowId=viewReportFlow&_flowId=viewReportFlow&ParentFolderUri=%2Freports&reportUnit=%2Freports%2FVTIMPNCR_CANON_FE&standAlone=true&j_username=jasperadmin&j_password=jasperadmin&output=pdf&''',
'            + ''P_COD_EMPRESA='' + p_cod_empresa + ''&P_TIP_COMPROBANTE='' + p_tip_comprobante  + ',
'            ''&P_SER_COMPROBANTE=''+ p_ser_comprobante + ''&P_NRO_COMPROBANTE=''+ p_nro_comprobante',
'            + ''&P_COD_CLIENTE=''+ p_cod_cliente;',
'',
'window.open(vURL,"Pagina Child","width=1800,height=1000,scrollbars=NO") ;',
'',
'',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(118955498901105340)
,p_name=>'Clic_Remision'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(118955395769105339)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(118955603618105342)
,p_event_id=>wwv_flow_imp.id(118955498901105340)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var p_cod_empresa=1;',
'var p_tip_comprobante = ''REM'';',
'var p_ser_comprobante = ''AA.31'';',
'var p_nro_comprobante = 139;',
'var p_cod_cliente = 2998;',
'var vURL = ''https://ngosaeca.com.py/reportes/flow.html?_flowId=viewReportFlow&_flowId=viewReportFlow&ParentFolderUri=%2Freports&reportUnit=%2Freports%2FSTREMAUT_FE&standAlone=true&j_username=jasperadmin&j_password=jasperadmin&output=pdf&''',
'            + ''P_COD_EMPRESA='' + p_cod_empresa + ''&P_TIP_COMPROBANTE='' + p_tip_comprobante  + ',
'            ''&P_SER_COMPROBANTE=''+ p_ser_comprobante + ''&P_NRO_COMPROBANTE=''+ p_nro_comprobante',
'            + ''&P_COD_CLIENTE=''+ p_cod_cliente + ''&P_IND_EAN=N&P_REIMPRESION=N&P_USUARIO=ETRINIDAD'';',
'',
'window.open(vURL,"Pagina Child","width=1800,height=1000,scrollbars=NO") ;',
'',
'',
''))
);
wwv_flow_imp.component_end;
end;
/
