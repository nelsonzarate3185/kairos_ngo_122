prompt --application/pages/page_00002
begin
--   Manifest
--     PAGE: 00002
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
 p_id=>2
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Copia 14'
,p_alias=>'COPIA-14'
,p_step_title=>'Copia 14'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'18'
,p_last_updated_by=>'JGUZMAN'
,p_last_upd_yyyymmddhh24miss=>'20220829092331'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(46408668130573018)
,p_plug_name=>'B_AUTVEN'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT SER_COMPROBANTE,',
'       NRO_COMPROBANTE,',
'       FEC_COMPROBANTE,',
'       COD_CLIENTE,',
'       NOM_CLIENTE,',
'       TOT_COMPROBANTE,',
'       NULL OPCION,',
'       --DESCRIPCION,',
'       COD_USUARIO,',
'       COD_VENDEDOR,',
'       --DESC_VENDEDOR,',
'       COD_CONDICION_VENTA,',
'       COD_MONEDA,',
'       --DESC_MONEDA,',
'       FEC_ESTADO,',
'       COD_CUSTODIO',
'  FROM VT_COMPROBANTES_CABECERA',
' WHERE COD_EMPRESA = :P_COD_EMPRESA ',
'   AND NRO_MOV_CAJ IS NULL ',
'   AND NVL(ESTADO,''N'') <> ''A''',
'   AND TIP_COMPROBANTE = ''FCO''',
'   AND FEC_COMPROBANTE > SYSDATE-10',
'   AND (SER_COMPROBANTE = :P2_SERIE OR :P2_SERIE =''T'')'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P2_SERIE'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'B_AUTVEN'
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
 p_id=>wwv_flow_imp.id(46408817177573019)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'JOSEFINAGU'
,p_internal_uid=>46408817177573019
);
wwv_flow_imp_page.create_worksheet_col_group(
 p_id=>wwv_flow_imp.id(46410398354573035)
,p_name=>'Factura'
,p_display_sequence=>10
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5272873576367000)
,p_db_column_name=>'SER_COMPROBANTE'
,p_display_order=>10
,p_group_id=>wwv_flow_imp.id(46410398354573035)
,p_column_identifier=>'A'
,p_column_label=>'&nsbp'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5273237544367001)
,p_db_column_name=>'NRO_COMPROBANTE'
,p_display_order=>20
,p_group_id=>wwv_flow_imp.id(46410398354573035)
,p_column_identifier=>'B'
,p_column_label=>'&nsbp'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5273608594367001)
,p_db_column_name=>'FEC_COMPROBANTE'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Fecha'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5274082707367001)
,p_db_column_name=>'COD_CLIENTE'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Cliente'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5274434413367001)
,p_db_column_name=>'NOM_CLIENTE'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Nombre'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5274819034367002)
,p_db_column_name=>'TOT_COMPROBANTE'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Total'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5277644257367003)
,p_db_column_name=>'OPCION'
,p_display_order=>70
,p_column_identifier=>'N'
,p_column_label=>'Actualiza'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5275250522367002)
,p_db_column_name=>'COD_USUARIO'
,p_display_order=>80
,p_column_identifier=>'G'
,p_column_label=>'Cod Usuario'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5275617200367002)
,p_db_column_name=>'COD_VENDEDOR'
,p_display_order=>90
,p_column_identifier=>'H'
,p_column_label=>'Cod Vendedor'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5276086708367002)
,p_db_column_name=>'COD_CONDICION_VENTA'
,p_display_order=>100
,p_column_identifier=>'I'
,p_column_label=>'Cod Condicion Venta'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5276469630367002)
,p_db_column_name=>'COD_MONEDA'
,p_display_order=>110
,p_column_identifier=>'J'
,p_column_label=>'Cod Moneda'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5276876247367003)
,p_db_column_name=>'FEC_ESTADO'
,p_display_order=>120
,p_column_identifier=>'K'
,p_column_label=>'Fec Estado'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5277298986367003)
,p_db_column_name=>'COD_CUSTODIO'
,p_display_order=>130
,p_column_identifier=>'L'
,p_column_label=>'Cod Custodio'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(5284241631390228)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'52843'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'SER_COMPROBANTE:NRO_COMPROBANTE:FEC_COMPROBANTE:COD_CLIENTE:NOM_CLIENTE:TOT_COMPROBANTE:OPCION:COD_USUARIO:COD_VENDEDOR:COD_CONDICION_VENTA:COD_MONEDA:FEC_ESTADO:COD_CUSTODIO'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(46410140299573032)
,p_plug_name=>'VARIABLES'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(46410593591573037)
,p_plug_name=>'VARIABLES 2'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(5279403566367007)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(46410593591573037)
,p_button_name=>'BT_CONSULTAR_RECIBO'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Bt Consultar Recibo'
,p_button_position=>'BELOW_BOX'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(5278347697367005)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(46410140299573032)
,p_button_name=>'BT_ACTUALIZAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Bt Actualizar'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5278725030367006)
,p_name=>'P2_SERIE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(46410140299573032)
,p_prompt=>'Serie'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT V.SER_COMPROBANTE CODIGO_RAPIDO,',
'         V.SER_COMPROBANTE NOMBRE',
'    FROM VT_COMPROBANTES_CABECERA V',
'   WHERE COD_EMPRESA = :P_COD_EMPRESA ',
'     AND NVL(ESTADO,''N'') != ''A''',
'     AND TIP_COMPROBANTE = ''FCO''',
'     AND FEC_COMPROBANTE > SYSDATE-10',
'     AND NVL(ESTADO,''P'') !=''A''',
'   GROUP BY SER_COMPROBANTE'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5279857797367008)
,p_name=>'P2_COD_MONEDA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(46410593591573037)
,p_prompt=>'Moneda'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5280275562367008)
,p_name=>'P2_DESC_MONEDA'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(46410593591573037)
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
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
 p_id=>wwv_flow_imp.id(5280645964367008)
,p_name=>'P2_COD_VENDEDOR'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(46410593591573037)
,p_prompt=>'Vendedor'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5281087457367008)
,p_name=>'P2_DESC_VENDEDOR'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(46410593591573037)
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
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
 p_id=>wwv_flow_imp.id(5281497373367008)
,p_name=>'P2_FEC_ESTADO'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(46410593591573037)
,p_prompt=>'Fecha de alta'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(5281895889367015)
,p_name=>'DA_POST_QUERY'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(46408668130573018)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterrefresh'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5282311538367016)
,p_event_id=>wwv_flow_imp.id(5281895889367015)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'BEGIN',
'  SELECT LTRIM( RTRIM( NVL( P.NOMBRE, P.NOMB_FANTASIA ) ) )',
'    INTO :P2_DESC_VENDEDOR',
'    FROM FV_VENDEDORES U,',
'         PERSONAS P',
'   WHERE U.COD_EMPRESA = :P_COD_EMPRESA',
'     AND U.COD_VENDEDOR = :COD_VENDEDOR',
'     AND U.COD_PERSONA = P.COD_PERSONA;',
'',
'     :P2_COD_VENDEDOR := :COD_VENDEDOR;',
'EXCEPTION',
'  WHEN OTHERS THEN',
'    :P2_DESC_VENDEDOR := NULL;',
'END;',
'',
'BEGIN',
'  SELECT DESCRIPCION',
'    INTO :P2_DESC_MONEDA',
'    FROM MONEDAS',
'   WHERE COD_MONEDA = :COD_MONEDA;',
'',
'   :P2_COD_MONEDA := :COD_MONEDA;',
'EXCEPTION',
'  WHEN OTHERS THEN',
'    :P2_DESC_MONEDA := NULL;',
'    --MENSAJE_EX(''ERROR EN LA TABLA DE MONEDAS '' || SQLERRM );',
'    --RAISE FORM_TRIGGER_FAILURE;',
'END;',
':OPCION:=''N'';'))
,p_attribute_02=>'COD_VENDEDOR,COD_MONEDA'
,p_attribute_03=>'P2_COD_VENDEDOR ,P2_DESC_VENDEDOR,P2_COD_MONEDA,P2_DESC_MONEDA'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(5282751383367016)
,p_name=>'DA_REFRESH_AUTVEN'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(5278347697367005)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5283279874367017)
,p_event_id=>wwv_flow_imp.id(5282751383367016)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(46408668130573018)
);
wwv_flow_imp.component_end;
end;
/
