prompt --application/pages/page_00171
begin
--   Manifest
--     PAGE: 00171
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
 p_id=>171
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'BSSUCDIS - Sucursal Distribuidores '
,p_alias=>'BSSUCDIS-SUCURSAL-DISTRIBUIDORES'
,p_step_title=>'Sucursal Distribuidores '
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'OSCARGO'
,p_last_upd_yyyymmddhh24miss=>'20221125171121'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(66668422406192619)
,p_plug_name=>'Sucursal Distribuidores'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--compactTitle:t-BreadcrumbRegion--useRegionTitle'
,p_plug_template=>wwv_flow_imp.id(40134615190263663)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(66733572680375325)
,p_plug_name=>'Lista'
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(66669029970192620)
,p_plug_name=>'Sucursal Distribuidores '
,p_parent_plug_id=>wwv_flow_imp.id(66733572680375325)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT SEQ_ID SEQ_ID,',
'       c001 COD_PERSONA,',
'       c002 COD_SUCURSAL,',
'       c003 NOMBRE,',
'       c004 COD_PAIS,',
'       c005 COD_CIUDAD,',
'       c006 COD_BARRIO,',
'       c007 TELEFONO,',
'       c008 DIRECCION,',
unistr('       DECODE(c009,''S'',''Sucursal'',''D'',''Dep\00F3sito'','''','''') TIPO_SUCURSAL,'),
'       c010 HORARIO_HABILES,',
'       c011 HORARIO_SABADOS,',
'       c012 COD_EMPRESA,',
'       c013 OBSERVACION,',
'       c018 COD_PROVINCIA,',
'       c019 LATITUD,',
'       c020 LONGITUD,',
'       p.descripcion DESC_PROVINCIA,',
'       c.descripcion DEC_CIUDAD,',
'       b.descripcion DESC_BARRIO',
'  from APEX_COLLECTIONS',
'  left join inv.provincias p on p.cod_pais = c004 and p.cod_provincia = c018',
'  left join inv.ciudades c on c.cod_pais = c004 and c.cod_provincia = c018 and c.cod_ciudad = c005',
'  left join inv.barrios b on b.cod_pais = c004 and b.cod_provincia = c018 and b.cod_ciudad = c005 and b.cod_barrio = c006',
' where COLLECTION_NAME = ''COLEC_BS_SUCURSAL_CLIENTE''',
' order by SEQ_ID desc'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P171_COD_PERSONA'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Sucursal Distribuidores '
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
 p_id=>wwv_flow_imp.id(66669201771192620)
,p_name=>'BSSUCDIS - Sucursal Distribuidores'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_control_break=>'N'
,p_show_computation=>'N'
,p_show_aggregate=>'N'
,p_show_chart=>'N'
,p_show_group_by=>'N'
,p_show_pivot=>'N'
,p_show_flashback=>'N'
,p_show_reset=>'N'
,p_download_formats=>'CSV:PDF'
,p_enable_mail_download=>'N'
,p_detail_link=>'f?p=&APP_ID.:172:&SESSION.::&DEBUG.::P172_SEQ_ID:#SEQ_ID#'
,p_detail_link_text=>'<img src="#APEX_FILES#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="">'
,p_owner=>'OSCARGO'
,p_internal_uid=>66669201771192620
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(35804569159097529)
,p_db_column_name=>'COD_PERSONA'
,p_display_order=>0
,p_column_identifier=>'A'
,p_column_label=>'Cod Persona'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(35804951465097529)
,p_db_column_name=>'COD_SUCURSAL'
,p_display_order=>0
,p_column_identifier=>'B'
,p_column_label=>'Cod Sucursal'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(35805365321097529)
,p_db_column_name=>'NOMBRE'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Nombre'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(35806191311097530)
,p_db_column_name=>'COD_PAIS'
,p_display_order=>33
,p_column_identifier=>'F'
,p_column_label=>unistr('Pa\00EDs')
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(22211236367866153)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(35810148579097532)
,p_db_column_name=>'COD_PROVINCIA'
,p_display_order=>43
,p_column_identifier=>'AM'
,p_column_label=>unistr('C\00F3digo de Provincia')
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(35805782009097529)
,p_db_column_name=>'COD_CIUDAD'
,p_display_order=>53
,p_column_identifier=>'D'
,p_column_label=>unistr('C\00F3digo de Ciudad')
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(35807736559097530)
,p_db_column_name=>'COD_BARRIO'
,p_display_order=>63
,p_column_identifier=>'Z'
,p_column_label=>unistr('C\00F3digo de Barrio')
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(35810555330097532)
,p_db_column_name=>'DESC_PROVINCIA'
,p_display_order=>73
,p_column_identifier=>'AN'
,p_column_label=>'Provincia'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(35810994375097532)
,p_db_column_name=>'DEC_CIUDAD'
,p_display_order=>83
,p_column_identifier=>'AO'
,p_column_label=>'Ciudad'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(35811381115097532)
,p_db_column_name=>'DESC_BARRIO'
,p_display_order=>93
,p_column_identifier=>'AP'
,p_column_label=>'Barrio'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(35807391645097530)
,p_db_column_name=>'TIPO_SUCURSAL'
,p_display_order=>103
,p_column_identifier=>'S'
,p_column_label=>'Tipo Sucursal'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(35806524983097530)
,p_db_column_name=>'TELEFONO'
,p_display_order=>113
,p_column_identifier=>'G'
,p_column_label=>'Telefono'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(35806940194097530)
,p_db_column_name=>'DIRECCION'
,p_display_order=>123
,p_column_identifier=>'H'
,p_column_label=>'Direccion'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(35808161337097531)
,p_db_column_name=>'COD_EMPRESA'
,p_display_order=>133
,p_column_identifier=>'AA'
,p_column_label=>'Cod Empresa'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(35808589909097531)
,p_db_column_name=>'OBSERVACION'
,p_display_order=>143
,p_column_identifier=>'AB'
,p_column_label=>'Observacion'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(35808912173097531)
,p_db_column_name=>'SEQ_ID'
,p_display_order=>153
,p_column_identifier=>'AJ'
,p_column_label=>'Seq Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(35809357204097531)
,p_db_column_name=>'HORARIO_HABILES'
,p_display_order=>163
,p_column_identifier=>'AK'
,p_column_label=>'Horario Habiles'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(35809784115097531)
,p_db_column_name=>'HORARIO_SABADOS'
,p_display_order=>173
,p_column_identifier=>'AL'
,p_column_label=>'Horario Sabados'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(35811776913097532)
,p_db_column_name=>'LATITUD'
,p_display_order=>183
,p_column_identifier=>'AQ'
,p_column_label=>'Latitud'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(35812114577097532)
,p_db_column_name=>'LONGITUD'
,p_display_order=>193
,p_column_identifier=>'AR'
,p_column_label=>'Longitud'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(66681094817193731)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'308775'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'COD_PAIS:DESC_PROVINCIA:DEC_CIUDAD:DESC_BARRIO:TIPO_SUCURSAL:NOMBRE:TELEFONO:DIRECCION:HORARIO_HABILES:HORARIO_SABADOS:OBSERVACION:LATITUD:LONGITUD:'
,p_break_on=>'COD_PAIS:0:0:0:DESC_PROVINCIA:DEC_CIUDAD'
,p_break_enabled_on=>'COD_PAIS:0:0:0:DESC_PROVINCIA:DEC_CIUDAD'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(35812849962097534)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(66669029970192620)
,p_button_name=>'BTN_NUEVO_REGISTRO'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_image_alt=>'Nuevo Registro'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:172:&SESSION.::&DEBUG.::P172_COD_PERSONA:&P171_PERSONA_COD.'
,p_icon_css_classes=>'fa-plus-circle-o'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(35813218087097535)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(66669029970192620)
,p_button_name=>'BTN_GUARDAR_BD'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_image_alt=>'Registar Datos'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-database-play'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(35813633545097535)
,p_name=>'P171_COD_PERSONA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(66669029970192620)
,p_prompt=>'Seleccionar Persona'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_PERSONAS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cod_persona || '' - '' || ltrim( rtrim( nvl( nombre, nomb_fantasia ) ) ) d, cod_persona r ',
'from personas',
'order by 1;'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_colspan=>3
,p_read_only_when=>'P171_COD_PERSONA'
,p_read_only_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(35814700326097539)
,p_name=>'DA_CAMBIAR_PERSONA_COD'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P171_COD_PERSONA'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(35815288471097540)
,p_event_id=>wwv_flow_imp.id(35814700326097539)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(''COLEC_BS_SUCURSAL_CLIENTE'');',
'',
'BEGIN',
'',
'    BSSUCDIS.PROCBD_TRAE_LISTADO(P_EMPRESA_COD => :P_COD_EMPRESA, P_COD_PERSONA => :P171_COD_PERSONA);',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'     APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_02=>'P_COD_EMPRESA,P171_COD_PERSONA'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(35815702130097540)
,p_event_id=>wwv_flow_imp.id(35814700326097539)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(66669029970192620)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(35819092408097542)
,p_name=>'Actualizar datos'
,p_event_sequence=>20
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(66669029970192620)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(35819587601097542)
,p_event_id=>wwv_flow_imp.id(35819092408097542)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(66669029970192620)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(35816116059097541)
,p_name=>'Registra_Datos'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(35813218087097535)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(35817658490097541)
,p_event_id=>wwv_flow_imp.id(35816116059097541)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\00BFSeguro que quieres registrar los cambios realizados?')
,p_attribute_02=>unistr('Confimaci\00F3n del registro')
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(35818187977097541)
,p_event_id=>wwv_flow_imp.id(35816116059097541)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    BSSUCDIS.sp_actualiza_sucdis(:app_user);',
'EXCEPTION',
'    WHEN OTHERS THEN',
'     APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(35817122445097541)
,p_event_id=>wwv_flow_imp.id(35816116059097541)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(''COLEC_BS_SUCURSAL_CLIENTE'');',
'',
'BEGIN',
'',
'    BSSUCDIS.PROCBD_TRAE_LISTADO(P_EMPRESA_COD => :P_COD_EMPRESA, P_COD_PERSONA => :P171_PERSONA_COD);',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'     APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_02=>'P_COD_EMPRESA,P171_COD_PERSONA'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(35816608198097541)
,p_event_id=>wwv_flow_imp.id(35816116059097541)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(66669029970192620)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(35818623421097542)
,p_event_id=>wwv_flow_imp.id(35816116059097541)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>unistr('Los datos fueron registrados con \00E9xito')
,p_attribute_02=>'Registro de datos completado'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(35814308972097539)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'INICIO'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(''COLEC_BS_SUCURSAL_CLIENTE'');',
'',
'BEGIN',
'',
'    BSSUCDIS.PROCBD_TRAE_LISTADO(P_EMPRESA_COD => :P_COD_EMPRESA, P_COD_PERSONA => :P171_COD_PERSONA);',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'     APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp.component_end;
end;
/
