prompt --application/pages/page_00563
begin
--   Manifest
--     PAGE: 00563
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
 p_id=>563
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>unistr('Facturas Electr\00F3nicas - Conciliaci\00F3n')
,p_alias=>unistr('FACTURAS-ELECTR\00D3NICAS-CONCILIACI\00D3N')
,p_step_title=>unistr('Facturas Electr\00F3nicas - Conciliaci\00F3n')
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#:js-pageStickyMobileHeader'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'OSCARGO'
,p_last_upd_yyyymmddhh24miss=>'20230804094622'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(285913156084464390)
,p_plug_name=>unistr('Conciliaci\00F3n de facturas Electr\00F3nicas')
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_plug_display_when_condition=>'P563_PROCESO'
,p_plug_display_when_cond2=>'HISTORIAL'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(351271381107736341)
,p_plug_name=>unistr('Facturas electr\00F3nicas')
,p_parent_plug_id=>wwv_flow_imp.id(285913156084464390)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT seq_id,',
'        c001||''-''||c002||''-''||c003   AS v_documento,',
'        c004   AS v_fecha_emision,',
'        c005   AS v_cedula,',
'        c006   AS v_nombre,',
'        c014   AS estado,',
'        c017   AS RUC,',
'        c010   AS IVA_5,',
'        c011   AS IVA_10,',
'        c018   AS EXENTO,',
'        c023  AS v_tot_operacion,',
'        c025 AS ID_FACTURA_ELECT,',
'        replace(trim(substr(c026,instr(c026,''"mensaje"''),length(c026))),''}]}]}'','''') AS mensaje_Error,',
'        ''x'' AS Visualizar',
'        FROM apex_collections',
'       WHERE collection_name = ''TMP_FACTURAS_CONCILIACION'''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>unistr('Facturas electr\00F3nicas')
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
 p_id=>wwv_flow_imp.id(351271422698736342)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_LEFT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'javascript:$s(''P543_SEQ_ID'',''#SEQ_ID#'');'
,p_detail_link_text=>'<span class="fa fa-repeat" aria-hidden="true"></span>'
,p_owner=>'OSCARGO'
,p_internal_uid=>351271422698736342
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(181219253682306402)
,p_db_column_name=>'SEQ_ID'
,p_display_order=>10
,p_column_identifier=>'B'
,p_column_label=>'Seq Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(181219616160306402)
,p_db_column_name=>'V_DOCUMENTO'
,p_display_order=>20
,p_column_identifier=>'C'
,p_column_label=>'Documento'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(181220027819306402)
,p_db_column_name=>'V_FECHA_EMISION'
,p_display_order=>30
,p_column_identifier=>'D'
,p_column_label=>unistr('Fecha Emisi\00F3n')
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(181220404336306402)
,p_db_column_name=>'V_CEDULA'
,p_display_order=>40
,p_column_identifier=>'E'
,p_column_label=>'V Cedula'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(181220815355306402)
,p_db_column_name=>'V_NOMBRE'
,p_display_order=>50
,p_column_identifier=>'F'
,p_column_label=>'Nombre'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(181221224744306401)
,p_db_column_name=>'ESTADO'
,p_display_order=>130
,p_column_identifier=>'H'
,p_column_label=>'Estado'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(181221643700306401)
,p_db_column_name=>'RUC'
,p_display_order=>160
,p_column_identifier=>'K'
,p_column_label=>'Ruc'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(181222043810306401)
,p_db_column_name=>'V_TOT_OPERACION'
,p_display_order=>220
,p_column_identifier=>'Q'
,p_column_label=>'Total'
,p_column_type=>'STRING'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(181222443920306401)
,p_db_column_name=>'ID_FACTURA_ELECT'
,p_display_order=>250
,p_column_identifier=>'S'
,p_column_label=>'Id Factura Elect'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(181222852110306401)
,p_db_column_name=>'MENSAJE_ERROR'
,p_display_order=>260
,p_column_identifier=>'T'
,p_column_label=>'Mensaje de error'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(181223229731306400)
,p_db_column_name=>'VISUALIZAR'
,p_display_order=>270
,p_column_identifier=>'V'
,p_column_label=>'Visualizar'
,p_column_link=>'f?p=&APP_ID.:543:&SESSION.::&DEBUG.:Y,:P543_FACTURA,P543_PROCESO:#ID_FACTURA_ELECT#,HISTORIAL'
,p_column_linktext=>'<span aria-hidden="true" class="fa fa-eye"> Ver historial</span>'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(175795163782694826)
,p_db_column_name=>'IVA_5'
,p_display_order=>280
,p_column_identifier=>'W'
,p_column_label=>'Iva 5'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(175795213585694827)
,p_db_column_name=>'IVA_10'
,p_display_order=>290
,p_column_identifier=>'X'
,p_column_label=>'Iva 10'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(175795306552694828)
,p_db_column_name=>'EXENTO'
,p_display_order=>300
,p_column_identifier=>'Y'
,p_column_label=>'Exento'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(352214771434836070)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1710066'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'V_DOCUMENTO:V_FECHA_EMISION:V_NOMBRE:ESTADO:RUC:V_TOT_OPERACION:MENSAJE_ERROR'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(181215779248306405)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(285913156084464390)
,p_button_name=>'BTN_CONCILIAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--iconLeft:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_image_alt=>'Conciliar'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-search'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>3
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(181216101719306404)
,p_name=>'P563_DESDE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(285913156084464390)
,p_prompt=>'Fecha desde'
,p_placeholder=>'DD/MM/YYYY'
,p_format_mask=>'DD/MM/YYYY'
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>30
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'ITEM'
,p_attribute_08=>'P563_HASTA'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(181216569427306404)
,p_name=>'P563_HASTA'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(285913156084464390)
,p_prompt=>'Fecha hasta'
,p_placeholder=>'DD/MM/YYYY'
,p_format_mask=>'DD/MM/YYYY'
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'ITEM'
,p_attribute_05=>'P563_DESDE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(181216967587306404)
,p_name=>'P563_ESTABLECIMIENTO'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(285913156084464390)
,p_prompt=>'Establecimiento'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(181217328001306404)
,p_name=>'P563_EXPEDICION'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(285913156084464390)
,p_prompt=>unistr('Expedici\00F3n')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(181217752736306404)
,p_name=>'P563_PROCESO'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(285913156084464390)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(181218176545306403)
,p_name=>'P563_SEQ_ID'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(285913156084464390)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(181218589851306403)
,p_name=>'P563_DOC_FACTURA'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(285913156084464390)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(181223964088306398)
,p_name=>'P563_MENSAJE'
,p_item_sequence=>30
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(181227695900306391)
,p_name=>'DA_BUSCA_FACTURAS'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(181215779248306405)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(181229645756306389)
,p_event_id=>wwv_flow_imp.id(181227695900306391)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'var spinner = apex.util.showSpinner(); '
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(181228160859306390)
,p_event_id=>wwv_flow_imp.id(181227695900306391)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare ',
'v_mensaje_error varchar2(100);',
'v_control       varchar2(100);',
'v_comprobante vt_comprobantes_cabecera%rowtype;',
'begin',
'    INV.pkg_fact_electronica_control.sp_consulta_mifactura(p_fecha_emision_deste  => TO_CHAR(TO_DATE(:P563_DESDE,''DD/MM/YYYY''),''YYYY-MM-DD''),',
'                                      p_fecha_emision_hasta  =>  TO_CHAR(TO_DATE(:P563_HASTA,''DD/MM/YYYY''),''YYYY-MM-DD''),',
'                                      p_establecimiento      => :P563_ESTABLECIMIENTO,',
'                                      p_punto_expedicion     => :P563_EXPEDICION,',
'                                      p_estado               => ''APROBADO'');',
'    ------------------------------------------------------------------------------------------------',
unistr('    -------------------------Proceso de conciliaci\00F3n de facturas electr\00F3nicas-----------------------'),
unistr('    --> Creaci\00F3n de colecci\00F3n'),
'    apex_collection.create_or_truncate_collection(p_collection_name => ''TMP_FACTURAS_CONCILIACION'');',
unistr('    --> Recorrer las facturas electr\00F3nicas'),
'    for cc in(select *',
'    from apex_collections where collection_name = ''TMP_FACTURAS'')',
'    loop',
'        --Comparar con las facturas del sistema',
'        begin',
'           v_mensaje_error := null;',
'           v_control := ''Comprobante: ''||cc.c025;',
'           select c.* into v_comprobante from vt_comprobantes_cabecera c ',
'                      where c.cod_empresa = :P_COD_EMPRESA',
'                      and fec_comprobante between :P563_DESDE and :P563_HASTA and c.id_factura_electronica is not null  ',
'                      and c.id_factura_electronica = cc.c025 and ser_comprobante like''FE%'' and rownum = 1;',
'            v_control := v_control || '', Comparando montos: ''||cc.c023 ||'',''||cc.c013||'',''||cc.c018 ;',
'            if v_comprobante.tot_comprobante <> replace(cc.c023,''.'','','') then',
'                v_mensaje_error := ''El total no coincide'';',
'            elsif v_comprobante.tot_gravadas<>replace(cc.c013,''.'','','') or v_comprobante.tot_exentas <> replace(cc.c018,''.'','','') then',
'                v_mensaje_error := ''IVA no coincide'';',
'            end if;',
'        EXCEPTION WHEN NO_DATA_FOUND THEN',
'            v_mensaje_error := ''No se encuentra en el sistema'';',
'        end;',
'        if v_mensaje_error is not null then',
'            apex_collection.add_member(p_collection_name => ''TMP_FACTURAS_CONCILIACION'',',
'               p_c001            => cc.c001,',
'               p_c002            => cc.c002,',
'               p_c003            => cc.c003,',
'               p_c004            => cc.c004,',
'               p_c005            => cc.c005,',
'               p_c006            => cc.c006,',
'               p_c007            => cc.c007,',
'               p_c008            => cc.c008,',
'               p_c009            => cc.c009,',
'               p_c010            => cc.c010,',
'               p_c011            => cc.c011,',
'               p_c012            => cc.c012,',
'               p_c013            => cc.c013,',
'               p_c014            => cc.c014,',
'               p_c015            => cc.c015,',
'               p_c016            => cc.c016,',
'               p_c017            => cc.c017,',
'               p_c018            => cc.c018,',
'               p_c019            => cc.c019,',
'               p_c020            => cc.c020,',
'               p_c021            => cc.c021,',
'               p_c022            => cc.c022,',
'               p_c023            => cc.c023,',
'               p_c024            => cc.c024,',
'               p_c025            => cc.c025,',
'               p_C026            => v_mensaje_error);',
'        end if;',
'    end loop;',
'EXCEPTION',
'    WHEN OTHERS THEN',
'     RAISE_APPLICATION_ERROR(-20001,''Error al conciliar: ''||v_control||'' - ''||SQLERRM);',
'end;'))
,p_attribute_02=>'P563_DESDE,P563_HASTA,P563_EXPEDICION,P563_ESTABLECIMIENTO'
,p_attribute_05=>'PLSQL'
,p_stop_execution_on_error=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(181229134758306389)
,p_event_id=>wwv_flow_imp.id(181227695900306391)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(351271381107736341)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(181228618879306389)
,p_event_id=>wwv_flow_imp.id(181227695900306391)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$("#apex_wait_overlay").remove(); $(".u-Processing").remove(); '
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(181224342233306394)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'CARGA_INICIAL'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('    ---------------------Toma el establecimiento y expedici\00F3n que el usuario tenga configruado------------'),
'    begin',
'        select substr(t.ser_timbrado,1,3) as establecimiento, substr(t.ser_timbrado,5,7) establecimiento ',
'        into :P563_ESTABLECIMIENTO, :P563_EXPEDICION',
'        from talonarios t ',
'        where t.codigo_usuario = :P_COD_USUARIO and rownum = 1 and t.cod_empresa = :P_COD_EMPRESA',
'            order by fec_vencimiento desc;',
'    EXCEPTION WHEN OTHERS THEN',
'        :P563_ESTABLECIMIENTO := '''';',
'        :P563_EXPEDICION := '''';',
'    end;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp.component_end;
end;
/
