prompt --application/pages/page_00591
begin
--   Manifest
--     PAGE: 00591
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
 p_id=>591
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>unistr('Reporte Box Usuario Hist\00F3rico(No usar)')
,p_step_title=>unistr('Reporte Box Usuario Hist\00F3rico')
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'    #reg_parametros{',
'            background-color: #003a85 !important;',
'            box-shadow: black 1px 1px 5px 1px;',
'            }',
' .a-IRR-header {',
'    background: #003a85 !important;',
'    background-color: #003a85 !important;',
'      }',
' ',
'.a-IRR-headerLink {',
'	color: #FFED00 !important; ',
'}',
'',
'',
''))
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'18'
,p_last_updated_by=>'PBOGADO'
,p_last_upd_yyyymmddhh24miss=>'20250213104142'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1807337240552571685)
,p_plug_name=>'ots'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'    o.ser_comprobante || ''-'' || o.nro_comprobante AS nro_ot, ',
'    o.nom_cliente, ',
'    o.fec_comprobante,',
'    o.cod_origen,',
'    o.COD_USUARIO,',
'    CASE ',
unistr('        WHEN o.ind_garantia = ''S'' THEN ''Garant\00EDa'''),
'        WHEN o.presupuesto = ''S'' THEN ''Particular''',
'        ELSE ''Otro''',
'    END AS tipo_ot,',
'    (SELECT DECODE(a.tip_cliente,',
'                   1,',
'                   ''Distribuidor'',',
'                   ''Cliente Final'')',
'     FROM cc_clientes a',
'     WHERE a.cod_empresa = :P_COD_EMPRESA',
'       AND a.cod_cliente = o.cod_cliente',
'       AND ROWNUM = 1) AS tipo_cliente',
'FROM ',
'    vt_ordenes_trabajo o',
'WHERE ',
'    o.cod_empresa = :P_COD_EMPRESA',
'    AND o.fec_comprobante IS NOT NULL ',
'    AND (:P591_FECHA_INI IS NULL OR TO_DATE(:P591_FECHA_INI, ''dd/mm/yyyy'') <= o.fec_comprobante)',
'    AND (:P591_FECHA_FIN IS NULL OR TO_DATE(:P591_FECHA_FIN, ''dd/mm/yyyy'') >= o.fec_comprobante)',
'    AND ((''T'') IN (:P591_COD_ORIGEN) OR ',
'     o.cod_origen IN ',
'     (SELECT TRIM(regexp_substr(:P591_COD_ORIGEN, ''[^,]+'', 1, LEVEL)) AS token',
'        FROM dual',
'      CONNECT BY regexp_substr(:P591_COD_ORIGEN, ''[^,]+'', 1, LEVEL) IS NOT NULL))',
'    AND (',
'        :P591_IND_GARANTIA = ''T'' ',
'        OR (:P591_IND_GARANTIA = ''G'' AND o.ind_garantia = ''S'')',
'        OR (:P591_IND_GARANTIA = ''P'' AND o.presupuesto = ''S'')',
'    )',
'ORDER BY ',
'    o.fec_comprobante DESC;',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P591_FECHA_INI,P591_FECHA_FIN,P591_COD_CLIENTE,P591_ESTADO,P591_OPERACION,P591_DEPARTAMENTO,P591_SUC_ENT,P591_COD_ORIGEN,P591_IND_GARANTIA'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'ots'
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
 p_id=>wwv_flow_imp.id(1807339281298571705)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'JUANSA'
,p_internal_uid=>1807339281298571705
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1051542276132520985)
,p_db_column_name=>'NRO_OT'
,p_display_order=>10
,p_column_identifier=>'S'
,p_column_label=>'Nro Ot'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1051542672648520986)
,p_db_column_name=>'NOM_CLIENTE'
,p_display_order=>20
,p_column_identifier=>'T'
,p_column_label=>'Nom Cliente'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1051543078828520986)
,p_db_column_name=>'FEC_COMPROBANTE'
,p_display_order=>30
,p_column_identifier=>'U'
,p_column_label=>'Fec Comprobante'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1051543444770520986)
,p_db_column_name=>'COD_ORIGEN'
,p_display_order=>40
,p_column_identifier=>'V'
,p_column_label=>'Cod Origen'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(6328113171331630)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1051543829913520987)
,p_db_column_name=>'COD_USUARIO'
,p_display_order=>50
,p_column_identifier=>'W'
,p_column_label=>'Cod Usuario'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1051544229997520987)
,p_db_column_name=>'TIPO_OT'
,p_display_order=>60
,p_column_identifier=>'X'
,p_column_label=>'Tipo Ot'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1051544643288520987)
,p_db_column_name=>'TIPO_CLIENTE'
,p_display_order=>70
,p_column_identifier=>'Y'
,p_column_label=>'Tipo Cliente'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(1807742565508293912)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_type=>'REPORT'
,p_report_alias=>'2378783'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'NRO_OT:COD_ORIGEN:NOM_CLIENTE:FEC_COMPROBANTE:TIPO_OT:TIPO_CLIENTE:COD_USUARIO:'
,p_break_on=>'0:0:0:0:0'
,p_break_enabled_on=>'0:0:0:0:0'
,p_chart_type=>'bar'
,p_chart_label_column=>'COD_ORIGEN'
,p_chart_aggregate=>'SUM'
,p_chart_sorting=>'DEFAULT'
,p_chart_orientation=>'vertical'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1807338643736571699)
,p_plug_name=>'Parametros'
,p_region_name=>'reg_parametros'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_plug_template=>wwv_flow_imp.id(40134615190263663)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1051545656212520994)
,p_name=>'P591_FECHA_INI'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(1807338643736571699)
,p_prompt=>'Fecha desde:'
,p_format_mask=>'DD/MM/YYYY'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1051546094381520998)
,p_name=>'P591_FECHA_FIN'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(1807338643736571699)
,p_prompt=>'Fecha Hasta:'
,p_format_mask=>'DD/MM/YYYY'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1051546409109520998)
,p_name=>'P591_COD_CLIENTE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(1807338643736571699)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1051546886455520998)
,p_name=>'P591_ESTADO'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(1807338643736571699)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1051547286511520998)
,p_name=>'P591_OPERACION'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(1807338643736571699)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1051547664582520998)
,p_name=>'P591_DEPARTAMENTO'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(1807338643736571699)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1051548098703520999)
,p_name=>'P591_SUC_ENT'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(1807338643736571699)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1051548410149520999)
,p_name=>'P591_COD_ORIGEN'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(1807338643736571699)
,p_prompt=>'Origen'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_ORIGENES'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select  cod_origen R, cod_origen||'' - ''|| descripcion D',
'from vt_origenes ',
'where cod_empresa = :P_COD_EMPRESA',
'order by descripcion'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'TODOS'
,p_lov_null_value=>'T'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'Y'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
,p_attribute_11=>','
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1051548869245520999)
,p_name=>'P591_IND_GARANTIA'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(1807338643736571699)
,p_prompt=>'Garantia/Particular'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC2:TODOS;T,GARANTIA;G,PARTICULAR;P'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(1051549209377521008)
,p_name=>'da_fi_rr'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P591_FECHA_INI'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1051549701635521010)
,p_event_id=>wwv_flow_imp.id(1051549209377521008)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(1807337240552571685)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(1051550100342521010)
,p_name=>'da_ff_rr'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P591_FECHA_FIN'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1051550679489521010)
,p_event_id=>wwv_flow_imp.id(1051550100342521010)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(1807337240552571685)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(1051551050396521011)
,p_name=>'da_origen'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P591_COD_ORIGEN'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1051551514398521011)
,p_event_id=>wwv_flow_imp.id(1051551050396521011)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(1807337240552571685)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(1051551941678521011)
,p_name=>'da_ind_garantia'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P591_IND_GARANTIA'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1051552492835521011)
,p_event_id=>wwv_flow_imp.id(1051551941678521011)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(1807337240552571685)
);
wwv_flow_imp.component_end;
end;
/
