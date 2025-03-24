prompt --application/pages/page_00085
begin
--   Manifest
--     PAGE: 00085
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
 p_id=>85
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Reporte de Saldos'
,p_alias=>'REPORTE-DE-SALDOS'
,p_step_title=>'Reporte de Saldos'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'18'
,p_last_updated_by=>'CHARBA'
,p_last_upd_yyyymmddhh24miss=>'20240909090015'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(54775446050408919)
,p_plug_name=>'Filtros'
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40108275410263656)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(85817705674354616)
,p_plug_name=>'Saldo'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select COD_CLIENTE,',
'NOMBRE,',
'TIPO_COMPROBANTE,',
'SER_COMPROBANTE,',
'NRO_COMPROBANTE,',
'NRO_CUOTA,',
'FEC_EMISION,',
'FEC_VENCIMIENTO,',
'a.siglas,',
'a.monto_cuota,',
'SALDO',
' from v_saldos_apex a',
' where a.cod_cliente=:P85_COD_CLIENTE',
' AND a.cod_empresa = :P_COD_EMPRESA',
' AND A.FEC_VENCIMIENTO BETWEEN NVL(:P85_FECHA_INI,SYSDATE-9000)  AND NVL(:P85_FECHA_FIN,SYSDATE+9000)',
' AND A.FEC_EMISION BETWEEN NVL(:P85_FECHA_INI_EMI,SYSDATE-9000) AND NVL(:P85_FECHA_FIN_EMI,SYSDATE+9000)'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P85_COD_CLIENTE,P85_FECHA_INI,P85_FECHA_FIN,P85_FECHA_INI_EMI,P85_FECHA_FIN_EMI'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>210
,p_prn_height=>297
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#9bafde'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'normal'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#efefef'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(85817905568354618)
,p_max_row_count=>'1000000'
,p_allow_report_saving=>'N'
,p_show_nulls_as=>'0'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'INV'
,p_internal_uid=>85817905568354618
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13817780910418966)
,p_db_column_name=>'COD_CLIENTE'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Cod Cliente'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13818191892418966)
,p_db_column_name=>'NOMBRE'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Nombre'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13818589448418966)
,p_db_column_name=>'TIPO_COMPROBANTE'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Tipo Comprobante'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13818962951418967)
,p_db_column_name=>'SER_COMPROBANTE'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Ser Comprobante'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13819346276418967)
,p_db_column_name=>'NRO_COMPROBANTE'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Nro Comprobante'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13819740161418967)
,p_db_column_name=>'NRO_CUOTA'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Nro Cuota'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13820150784418967)
,p_db_column_name=>'FEC_EMISION'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Fec Emision'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_format_mask=>'DD-MM-YYYY'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13820500786418967)
,p_db_column_name=>'FEC_VENCIMIENTO'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Fec Vencimiento'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_format_mask=>'DD-MM-YYYY'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13820955736418967)
,p_db_column_name=>'SIGLAS'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Siglas'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13821765834418968)
,p_db_column_name=>'MONTO_CUOTA'
,p_display_order=>100
,p_column_identifier=>'K'
,p_column_label=>'Monto Cuota'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13821349771418968)
,p_db_column_name=>'SALDO'
,p_display_order=>110
,p_column_identifier=>'J'
,p_column_label=>'Saldo'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(85876582942197830)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_type=>'REPORT'
,p_report_alias=>'608443'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'COD_CLIENTE:NOMBRE:TIPO_COMPROBANTE:SER_COMPROBANTE:NRO_COMPROBANTE:NRO_CUOTA:FEC_EMISION:FEC_VENCIMIENTO:SIGLAS:MONTO_CUOTA:SALDO:'
,p_sum_columns_on_break=>'SALDO:MONTO_CUOTA'
);
wwv_flow_imp_page.create_worksheet_group_by(
 p_id=>wwv_flow_imp.id(13822414356418968)
,p_report_id=>wwv_flow_imp.id(85876582942197830)
,p_group_by_columns=>'TIPO_COMPROBANTE:SER_COMPROBANTE:NRO_COMPROBANTE'
,p_function_01=>'SUM'
,p_function_column_01=>'MONTO_CUOTA'
,p_function_db_column_name_01=>'APXWS_GBFC_01'
,p_function_label_01=>'Monto Cuota'
,p_function_format_mask_01=>'999G999G999G999G990D00'
,p_function_sum_01=>'Y'
,p_function_02=>'SUM'
,p_function_column_02=>'SALDO'
,p_function_db_column_name_02=>'APXWS_GBFC_02'
,p_function_label_02=>'Saldo Cuota'
,p_function_format_mask_02=>'999G999G999G999G990D00'
,p_function_sum_02=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(50530337594993606)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(54775446050408919)
,p_button_name=>'BTVOLVER'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Volver'
,p_button_position=>'CHANGE'
,p_button_redirect_url=>'f?p=&APP_ID.:215:&SESSION.::&DEBUG.:215::'
,p_button_condition=>'P85_CONTROL_LLAMADO'
,p_button_condition2=>'215'
,p_button_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(13813877691418964)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(54775446050408919)
,p_button_name=>'ejecutar'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Imprimir'
,p_button_position=>'CHANGE'
,p_button_redirect_url=>'f?p=&APP_ID.:86:&SESSION.::&DEBUG.:RP,86::'
,p_icon_css_classes=>'fa-print'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(13814249784418964)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(54775446050408919)
,p_button_name=>'BUSCAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Buscar'
,p_button_position=>'NEXT'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-search'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13814629592418964)
,p_name=>'P85_COD_CLIENTE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(54775446050408919)
,p_prompt=>'Cod Cliente'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select nombre||'' ''||numero||'' ''||cod_cliente nombre, cod_cliente',
'from cc_clientes c, personas p, telef_personas pt, ident_personas pi ',
'where c.cod_empresa = :P_COD_EMPRESA',
'and c.cod_persona = p.cod_persona',
'and p.cod_persona = pt.cod_persona(+) ',
'and p.cod_persona = pi.cod_persona(+) ',
'and nvl(c.estado,''X'') not in ''I'' ',
'order by nombre'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13815064604418964)
,p_name=>'P85_FECHA_INI_EMI'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(54775446050408919)
,p_prompt=>'Fecha Emision Inicial'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>20
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13815436835418964)
,p_name=>'P85_FECHA_FIN_EMI'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(54775446050408919)
,p_prompt=>'Fecha EmisionFinal'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>20
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13815801388418965)
,p_name=>'P85_FECHA_INI'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(54775446050408919)
,p_item_default=>'ADD_MONTHS(SYSDATE,-120)'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Fecha Vencimiento Inicial'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>20
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13816227349418965)
,p_name=>'P85_FECHA_FIN'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(54775446050408919)
,p_item_default=>'SYSDATE'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Fecha Vencimiento Final'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>20
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13816678588418965)
,p_name=>'P85_TIPO'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(54775446050408919)
,p_item_default=>'V'
,p_prompt=>'Tipo'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ''Ordenado por Vencimiento''d, ''V'' c from dual union all',
'select ''Ordenado por Comprobante''d, ''C'' c from dual union all',
unistr('select ''Por Secci\00F3n y Comprobantes''d, ''S'' c from dual'),
'',
'',
''))
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13817005740418965)
,p_name=>'P85_VER_CHEQUES'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(54775446050408919)
,p_item_default=>'N'
,p_prompt=>'Incluir Cheques'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ''Si'' d, ''S'' C',
'from dual union all',
'select ''No'' d, ''N'' C',
'from dual '))
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--radioButtonGroup'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'2'
,p_attribute_02=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(50530247342993605)
,p_name=>'P85_CONTROL_LLAMADO'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(54775446050408919)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(13822881779418969)
,p_name=>'collection_carga'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P85_COD_CLIENTE,P85_TIPO,P85_FECHA_INI,P85_FECHA_FIN,P85_VER_CHEQUES,P85_FECHA_INI_EMI,P85_FECHA_FIN_EMI'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(13823364114418969)
,p_event_id=>wwv_flow_imp.id(13822881779418969)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'if :P85_COD_CLIENTE is not null then ',
'apex_collection.CREATE_OR_TRUNCATE_COLLECTION (''PARAMETERS'');',
'',
'',
'',
'APEX_COLLECTION.ADD_MEMBER(p_collection_name=>''PARAMETERS'',',
'                             ',
'                                p_c001           =>''P_COD_CLIENTE'',',
'                                p_c002           =>:P85_COD_CLIENTE,',
'      p_c003 => nvl(:P85_FECHA_INI,add_months(sysdate,-96)),',
'          p_c004 => nvl(:P85_FECHA_FIN,add_months(sysdate,12)),',
'                           p_c005 => :P85_TIPO,',
'                           p_c006 => :P85_VER_CHEQUES,',
'                           p_c007 => nvl(:P85_FECHA_INI_EMI,add_months(sysdate,-36)),',
'          p_c008 => nvl(:P85_FECHA_FIN_EMI,add_months(sysdate,12))',
'                               );',
'COMMIT;',
'',
'end if;',
'END;',
''))
,p_attribute_02=>'P85_COD_CLIENTE,P85_FECHA_INI,P85_FECHA_FIN,P85_TIPO,P85_VER_CHEQUES,P85_FECHA_INI_EMI,P85_FECHA_FIN_EMI'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(13823792910418970)
,p_name=>'refescar'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(13814249784418964)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(13824297079418970)
,p_event_id=>wwv_flow_imp.id(13823792910418970)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(85817705674354616)
);
wwv_flow_imp.component_end;
end;
/
