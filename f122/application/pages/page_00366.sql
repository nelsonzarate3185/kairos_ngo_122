prompt --application/pages/page_00366
begin
--   Manifest
--     PAGE: 00366
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
 p_id=>366
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'BSPROVIN - Departamentos'
,p_alias=>'BSPROVIN-DEPARTAMENTOS'
,p_step_title=>'BSPROVIN - Listado de Departamentos'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>wwv_flow_imp.id(40090628970263651)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'OSCARGO'
,p_last_upd_yyyymmddhh24miss=>'20230217090542'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(104702152127157922)
,p_plug_name=>'Formulario de consulta'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>10
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(104701060061157911)
,p_plug_name=>'Formulario Departamentos'
,p_parent_plug_id=>wwv_flow_imp.id(104702152127157922)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select  SEQ_ID,',
'        c001 cod_pais,',
'        c002 cod_provincia,',
'        c003 descripcion,',
'        c004 abreviaturas,',
'        c005 zona,',
'        c006 departamento_set,',
'        c049 id_registro,',
'        DECODE(c050,''I'',''NUEVO'',''U'',''MODIFICADO'',''REGISTRADO'') estado_registro,',
'        p.descripcion desc_pais',
'from APEX_COLLECTIONS',
'inner join paises p on p.cod_pais = c001',
'and COLLECTION_NAME = ''COLEC_DATOS_PROVINCIAS''',
'ORDER BY SEQ_ID desc;'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Formulario Departamentos'
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
 p_id=>wwv_flow_imp.id(104701110952157912)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_sort=>'N'
,p_show_control_break=>'N'
,p_show_highlight=>'N'
,p_show_computation=>'N'
,p_show_aggregate=>'N'
,p_show_chart=>'N'
,p_show_pivot=>'N'
,p_show_flashback=>'N'
,p_show_help=>'N'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:381:&SESSION.::&DEBUG.::P381_SEQ_ID:#SEQ_ID#'
,p_detail_link_text=>'<img src="#APEX_FILES#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="">'
,p_owner=>'OSCARGO'
,p_internal_uid=>104701110952157912
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(104701299085157913)
,p_db_column_name=>'COD_PAIS'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Cod Pais'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(104703129964157932)
,p_db_column_name=>'DESC_PAIS'
,p_display_order=>20
,p_column_identifier=>'H'
,p_column_label=>unistr('Nombre Pa\00EDs')
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(104701397689157914)
,p_db_column_name=>'COD_PROVINCIA'
,p_display_order=>30
,p_column_identifier=>'B'
,p_column_label=>unistr('C\00F3digo')
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(104701475639157915)
,p_db_column_name=>'DESCRIPCION'
,p_display_order=>40
,p_column_identifier=>'C'
,p_column_label=>'Nombre departamento'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(104701508165157916)
,p_db_column_name=>'ABREVIATURAS'
,p_display_order=>50
,p_column_identifier=>'D'
,p_column_label=>'Abreviatura'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(104701648039157917)
,p_db_column_name=>'ZONA'
,p_display_order=>60
,p_column_identifier=>'E'
,p_column_label=>'Zona'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(104701753038157918)
,p_db_column_name=>'DEPARTAMENTO_SET'
,p_display_order=>70
,p_column_identifier=>'F'
,p_column_label=>'Departamento Set'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(104701870112157919)
,p_db_column_name=>'ID_REGISTRO'
,p_display_order=>80
,p_column_identifier=>'G'
,p_column_label=>'Id Registro'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(104703869391157939)
,p_db_column_name=>'ESTADO_REGISTRO'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Estado Registro'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(104704280295157943)
,p_db_column_name=>'SEQ_ID'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Seq Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(110449432080083353)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1104495'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'COD_PAIS:DESC_PAIS:COD_PROVINCIA:DESCRIPCION:ABREVIATURAS:ZONA:'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(110773348242405941)
,p_report_id=>wwv_flow_imp.id(110449432080083353)
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'ESTADO_REGISTRO'
,p_operator=>'='
,p_expr=>'MODIFICADO'
,p_condition_sql=>' (case when ("ESTADO_REGISTRO" = #APXWS_EXPR#) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# = ''MODIFICADO''  '
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_row_bg_color=>'#fff5ce'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(110773729271405941)
,p_report_id=>wwv_flow_imp.id(110449432080083353)
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'ESTADO_REGISTRO'
,p_operator=>'='
,p_expr=>'NUEVO'
,p_condition_sql=>' (case when ("ESTADO_REGISTRO" = #APXWS_EXPR#) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# = ''NUEVO''  '
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_row_bg_color=>'#d0f1cc'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(104703360367157934)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(104701060061157911)
,p_button_name=>'BTN_NUEVO_REGISTRO'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_image_alt=>'Nuevo Registro'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:381:&SESSION.::&DEBUG.:::'
,p_icon_css_classes=>'fa-plus-circle-o'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(104703558714157936)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(104701060061157911)
,p_button_name=>'BTN_REGISTRAR_BD'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_image_alt=>' Registrar Datos'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_icon_css_classes=>'fa-database-play'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(104704534665157946)
,p_validation_name=>'VALIDAR_REGISTRO'
,p_validation_sequence=>10
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare v_cantidad numeric(3);',
'begin',
'    select count(c050) INTO v_cantidad from APEX_COLLECTIONS where COLLECTION_NAME = ''COLEC_DATOS_PROVINCIAS''',
'        and c050 IN(''I'',''U'');',
'    if v_cantidad is null or v_cantidad = 0 then',
'        RAISE_APPLICATION_ERROR(-20001,''No se detectaron cambios en los datos'');',
'    end if;',
'EXCEPTION',
'    WHEN OTHERS THEN',
'     RAISE_APPLICATION_ERROR(-20001,SQLERRM);',
'END;'))
,p_validation_type=>'PLSQL_ERROR'
,p_error_message=>'NO SE HAN DETECTADO CAMBIOS EN LOS REGISTROS'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(104703642002157937)
,p_name=>'ACTUALIZAR_LISTADO'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(104701060061157911)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(104703756513157938)
,p_event_id=>wwv_flow_imp.id(104703642002157937)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(104701060061157911)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(104704630358157947)
,p_name=>'PL_LIMPIA_MENSAJES'
,p_event_sequence=>20
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(104704759903157948)
,p_event_id=>wwv_flow_imp.id(104704630358157947)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'setTimeout(function() {',
'    $(''#APEX_SUCCESS_MESSAGE'').fadeOut(''fast'');',
'}, 3000);'))
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(104702011585157921)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'INICIO'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(''COLEC_DATOS_PROVINCIAS'');',
'',
'BEGIN',
'',
'    BSPROVIN.sp_datos_provincias;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    RAISE_APPLICATION_ERROR(-20001,SQLERRM);',
'END;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(104704495477157945)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'REGISTRAR_DATOS'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare v_cantidad numeric(3);',
'begin',
'    select count(c050) INTO v_cantidad from APEX_COLLECTIONS where COLLECTION_NAME = ''COLEC_DATOS_PROVINCIAS''',
'        and c050 IN(''I'',''U'');',
'    if v_cantidad is not null and v_cantidad > 0 then',
'        bsprovin.sp_registrar_provincias;',
'    else',
'        RAISE_APPLICATION_ERROR(-20001,''No se detectaron cambios en los datos'');',
'    end if;',
'EXCEPTION',
'    WHEN OTHERS THEN',
'     RAISE_APPLICATION_ERROR(-20001,SQLERRM);',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'ERROR AL ACTUALIZAR CAMBIOS EN LA BASE DE DATOS'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(104703558714157936)
,p_process_success_message=>'CAMBIOS REGISTRADOS EN LA BASE DE DATOS'
);
wwv_flow_imp.component_end;
end;
/
