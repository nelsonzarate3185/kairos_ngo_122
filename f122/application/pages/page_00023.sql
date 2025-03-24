prompt --application/pages/page_00023
begin
--   Manifest
--     PAGE: 00023
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
 p_id=>23
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Pantalla'
,p_alias=>'PANTALLA'
,p_page_mode=>'MODAL'
,p_step_title=>'Detalle'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_width=>'1000'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'MARIANABLA'
,p_last_upd_yyyymmddhh24miss=>'20220912155400'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(9423103437622741)
,p_plug_name=>'ARTICULOS'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(9512739178790501)
,p_plug_name=>'REPORTE'
,p_parent_plug_id=>wwv_flow_imp.id(9423103437622741)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT  c.cod_articulo,',
'        c.descripcion,',
'        nvl(c.cantidad,1) cantidad,',
'        c.cod_sucursal,',
'        c.comentario,',
'		nvl((SELECT sb.desc_sub_bloque|| '' (''||sb.cod_sub_bloque||'')''',
'               FROM st_bloque_productos b, st_sub_bloques sb',
'              WHERE b.cod_empresa=:P23_COD_EMPRESA',
'                AND b.cod_empresa=sb.cod_empresa',
'                AND b.cod_sucursal=sb.cod_sucursal',
'                AND b.cod_bloque=sb.cod_bloque',
'                AND b.cod_sub_bloque=sb.cod_sub_bloque',
'                AND b.cod_bloque=c.cod_bloque',
'                AND b.cod_sucursal=c.cod_sucursal',
'                AND b.cod_articulo=c.cod_articulo), null) sub_bloque                  ',
'  FROM vw_entrega_facturas C',
' WHERE c.cod_empresa = :P23_COD_EMPRESA  ',
'   AND c.tip_comprobante =:P23_TIP_COMPROBANTE',
'   AND c.ser_comprobante = :P23_SER_COMPROBANTE',
'   AND c.nro_comprobante = :P23_NRO_COMPROBANTE',
'   AND c.nro_PLANILLA = :P23_NRO_PLANILLA',
'   AND C.EMPRESA_ORIGEN = :P23_EMPRESA_ORIGEN;'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P23_COD_EMPRESA,P23_TIP_COMPROBANTE,P23_SER_COMPROBANTE,P23_NRO_COMPROBANTE,P23_NRO_PLANILLA'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'REPORTE'
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
 p_id=>wwv_flow_imp.id(9512828141790502)
,p_max_row_count=>'1000000'
,p_no_data_found_message=>'No se han encontrado datos.'
,p_allow_report_saving=>'N'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_select_columns=>'N'
,p_show_rows_per_page=>'N'
,p_show_sort=>'N'
,p_show_control_break=>'N'
,p_show_highlight=>'N'
,p_show_computation=>'N'
,p_show_aggregate=>'N'
,p_show_chart=>'N'
,p_show_group_by=>'N'
,p_show_pivot=>'N'
,p_show_flashback=>'N'
,p_show_reset=>'N'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'MARIANABLA'
,p_internal_uid=>9512828141790502
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9514217403790516)
,p_db_column_name=>'COD_ARTICULO'
,p_display_order=>10
,p_column_identifier=>'B'
,p_column_label=>'Cod Articulo'
,p_column_link=>'javascript:$s(''P23_SUCURSAL'',''#DESCRIPCION# (#COD_SUCURSAL#)''),$s(''P23_OBSERVACION'',''#COMENTARIO#'');'
,p_column_linktext=>'#COD_ARTICULO#'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9514371965790517)
,p_db_column_name=>'DESCRIPCION'
,p_display_order=>20
,p_column_identifier=>'C'
,p_column_label=>'Descripcion'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9514434062790518)
,p_db_column_name=>'CANTIDAD'
,p_display_order=>30
,p_column_identifier=>'D'
,p_column_label=>'Cantidad'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9514588813790519)
,p_db_column_name=>'SUB_BLOQUE'
,p_display_order=>40
,p_column_identifier=>'E'
,p_column_label=>'Sub Bloque'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10238770676605246)
,p_db_column_name=>'COD_SUCURSAL'
,p_display_order=>50
,p_column_identifier=>'F'
,p_column_label=>'Cod Sucursal'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10238869523605247)
,p_db_column_name=>'COMENTARIO'
,p_display_order=>60
,p_column_identifier=>'G'
,p_column_label=>'Comentario'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(9661357734007694)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'96614'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'COD_ARTICULO:DESCRIPCION:CANTIDAD:SUB_BLOQUE:'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(9514658314790520)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(9512739178790501)
,p_button_name=>'VOLVER'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--padTop:t-Button--padBottom'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Volver'
,p_button_position=>'BOTTOM'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9423280818622742)
,p_name=>'P23_TIP_COMPROBANTE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(9423103437622741)
,p_prompt=>'Tipo de Factura'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9423332794622743)
,p_name=>'P23_SER_COMPROBANTE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(9423103437622741)
,p_prompt=>'Serie'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9423478053622744)
,p_name=>'P23_NRO_COMPROBANTE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(9423103437622741)
,p_prompt=>unistr('N\00FAmero')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9423518482622745)
,p_name=>'P23_SUCURSAL'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(9423103437622741)
,p_prompt=>'Sucursal'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9423644735622746)
,p_name=>'P23_FEC_COMPROBANTE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(9423103437622741)
,p_prompt=>'Fecha'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9423757074622747)
,p_name=>'P23_BLOQUE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(9423103437622741)
,p_prompt=>'Bloque'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9423849488622748)
,p_name=>'P23_CLIENTE'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(9423103437622741)
,p_prompt=>'Cliente'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9423974849622749)
,p_name=>'P23_OBSERVACION'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(9423103437622741)
,p_prompt=>unistr('Observaci\00F3n')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9513053481790504)
,p_name=>'P23_COD_EMPRESA'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(9423103437622741)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9513135472790505)
,p_name=>'P23_NRO_PLANILLA'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(9423103437622741)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9513298253790506)
,p_name=>'P23_EMPRESA_ORIGEN'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(9423103437622741)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10236191061605220)
,p_name=>'P23_AUX_MENSAJE'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(9423103437622741)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(10235983676605218)
,p_name=>'DA_MENSAJE'
,p_event_sequence=>10
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10236070522605219)
,p_event_id=>wwv_flow_imp.id(10235983676605218)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P23_AUX_MENSAJE.'
,p_attribute_02=>unistr('Atenci\00F3n')
,p_attribute_03=>'warning'
,p_attribute_04=>'fa-warning'
,p_attribute_06=>'Aceptar'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P23_AUX_MENSAJE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(10236262237605221)
,p_name=>'DA_VOLVER'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(9514658314790520)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10236355931605222)
,p_event_id=>wwv_flow_imp.id(10236262237605221)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(10237943704605238)
,p_name=>'DA_TIP'
,p_event_sequence=>30
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10238060374605239)
,p_event_id=>wwv_flow_imp.id(10237943704605238)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P23_TIP_COMPROBANTE'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(9514700431790521)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_INIT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    VCOUNT NUMBER;',
'BEGIN',
'    :P23_AUX_MENSAJE := null;',
'    VCOUNT := APEX_COLLECTION.COLLECTION_MEMBER_COUNT( p_collection_name => ''DETALLE'');',
'    IF VCOUNT = 1 THEN',
'        SELECT C001,',
'               C002,',
'               C003,',
'               C004,',
'               C005,',
'               C006',
'          INTO :P23_TIP_COMPROBANTE,  ',
'               :P23_SER_COMPROBANTE,',
'               :P23_NRO_COMPROBANTE,',
'               :P23_NRO_PLANILLA,',
'               :P23_EMPRESA_ORIGEN,',
'               :P23_FEC_COMPROBANTE',
'          FROM APEX_COLLECTIONS',
'         WHERE COLLECTION_NAME = ''DETALLE'';        ',
'    ELSE   ',
'        :P23_AUX_MENSAJE := ''Ha ocurrido un error en la carga de datos.'';  ',
'    END IF;    ',
'EXCEPTION',
'    WHEN OTHERS THEN       ',
'        :P23_AUX_MENSAJE := ''Ha ocurrido un error en la carga de datos.'';   ',
'END;',
'',
'',
'BEGIN',
'    SELECT c.NOM_CLIENTE ||'' (''|| c.Cod_Cliente||'') '', ',
'          -- c.DESCRIPCION ||'' (''|| c.COD_SUCURSAL||'') '', ',
'          -- c.comentario, ',
'           c.DESC_BLOQUE ||'' (''||nvl(c.cod_bloque,''SB'')||'') ''          ',
'      INTO :P23_CLIENTE,',
'           --:P23_SUCURSAL,',
'           --:P23_OBSERVACION,',
'           :P23_BLOQUE    ',
'      FROM vw_entrega_facturas C',
'     WHERE c.cod_empresa = :P23_COD_EMPRESA ',
'       AND c.tip_comprobante = :P23_TIP_COMPROBANTE',
'       AND c.ser_comprobante = :P23_SER_COMPROBANTE',
'       AND c.nro_comprobante = :P23_NRO_COMPROBANTE',
'       AND c.nro_PLANILLA = :P23_NRO_PLANILLA',
'       AND C.EMPRESA_ORIGEN = :P23_EMPRESA_ORIGEN',
'       AND ROWNUM = 1;',
'EXCEPTION',
'    WHEN OTHERS THEN',
'       NULL; --:P23_AUX_MENSAJE := ''No se han encontrado facturas vinculadas al comprobante ''||:P23_NRO_COMPROBANTE||''.'';',
'END;        ',
''))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp.component_end;
end;
/
