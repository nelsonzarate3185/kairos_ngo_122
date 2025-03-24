prompt --application/pages/page_00014
begin
--   Manifest
--     PAGE: 00014
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
 p_id=>14
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Factura Contado Pendiente de Cobro'
,p_alias=>'FACTURA-CONTADO-PENDIENTE-DE-COBRO'
,p_step_title=>'Factura Contado Pendiente de Cobro'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function recupera_datos(){',
'	apex.server.process("datos_comprobantes",',
'		{',
'           x01: apex.item(''P14_COD_MONEDA'').getValue(),',
'           x02: apex.item(''P14_COD_VENDEDOR'').getValue() ',
'        },',
'		{',
'            success: function(datos){',
'                console.log(datos);',
'                if (datos.estado == 1){',
'                    apex.item(''P14_DESC_MONEDA'').setvalue(datos.desc_moneda);',
'                    apex.item(''P14_DESC_VENDEDOR'').setvalue(datos.nombre_vendedor);',
'                }else{',
'                    apex.message.clearErrors();',
'                    apex.message.showErrors({',
'                        type: "errors",',
'                        location: "page",',
'                        message: "No se encontraron datos",',
'                        unsafe: false',
'                    });',
'                }',
'            }',
'		}',
'	);',
'}'))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.btn {',
'  display: block;',
'  width: 100%;',
'  background-color: #505f6d;',
'  border: none;',
'  color: white !important;',
'  cursor: pointer;',
'  padding: 3px 30px;',
'  font-weight: bold;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'18'
,p_last_updated_by=>'WVEGA'
,p_last_upd_yyyymmddhh24miss=>'20250225144806'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(41136709351206026)
,p_plug_name=>'B_AUTVEN'
,p_region_name=>'B_AUTVEN'
,p_region_template_options=>'#DEFAULT#'
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
'       NULL BOTON,',
'       COD_USUARIO,',
'       COD_VENDEDOR,',
'       COD_CONDICION_VENTA,',
'       COD_MONEDA,',
'       FEC_ESTADO,',
'       COD_CUSTODIO',
'  FROM VT_COMPROBANTES_CABECERA',
' WHERE COD_EMPRESA = :P_COD_EMPRESA ',
'   AND NRO_MOV_CAJ IS NULL ',
'   AND NVL(ESTADO,''N'') <> ''A''',
'   AND TIP_COMPROBANTE = ''FCO''',
'   --AND FEC_COMPROBANTE > SYSDATE-10',
'   AND (SER_COMPROBANTE = :P14_SERIE OR :P14_SERIE = ''T'')'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P14_SERIE'
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
 p_id=>wwv_flow_imp.id(41596013676799836)
,p_max_row_count=>'1000000'
,p_allow_report_saving=>'N'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_select_columns=>'N'
,p_show_rows_per_page=>'N'
,p_show_filter=>'N'
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
,p_show_help=>'N'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'JOSEFINAGU'
,p_internal_uid=>41596013676799836
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(41596167267799837)
,p_db_column_name=>'SER_COMPROBANTE'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Serie'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(41596257604799838)
,p_db_column_name=>'NRO_COMPROBANTE'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Comprobante'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(41596395250799839)
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
 p_id=>wwv_flow_imp.id(41596409785799840)
,p_db_column_name=>'COD_CLIENTE'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Cliente'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(41596515156799841)
,p_db_column_name=>'NOM_CLIENTE'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Nombre'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(41596615239799842)
,p_db_column_name=>'TOT_COMPROBANTE'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Total'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(41596873163799844)
,p_db_column_name=>'COD_USUARIO'
,p_display_order=>90
,p_column_identifier=>'H'
,p_column_label=>'Cod Usuario'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(41596939492799845)
,p_db_column_name=>'COD_VENDEDOR'
,p_display_order=>100
,p_column_identifier=>'I'
,p_column_label=>'Vendedor'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(6512217793593966)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(41597057716799846)
,p_db_column_name=>'COD_CONDICION_VENTA'
,p_display_order=>110
,p_column_identifier=>'J'
,p_column_label=>'Cod Condicion Venta'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(41597191399799847)
,p_db_column_name=>'COD_MONEDA'
,p_display_order=>120
,p_column_identifier=>'K'
,p_column_label=>'Moneda'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(41249848670130454)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(41597265914799848)
,p_db_column_name=>'FEC_ESTADO'
,p_display_order=>130
,p_column_identifier=>'L'
,p_column_label=>'Fecha de Alta'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(41597301199799849)
,p_db_column_name=>'COD_CUSTODIO'
,p_display_order=>140
,p_column_identifier=>'M'
,p_column_label=>'Cod Custodio'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(6324223900278633)
,p_db_column_name=>'BOTON'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'&nbsp'
,p_column_link=>'javascript:$s(''P14_NRO_COMPROBANTE'',''#NRO_COMPROBANTE#'');$s(''P14_COD_CLIENTE'',''#COD_CLIENTE#'');$s(''P14_COD_CUSTODIO'',''#COD_CUSTODIO#'');$s(''P14_FEC_COMPROBANTE'',''#FEC_COMPROBANTE#'');$s(''P14_SER_COMPROBANTE'',''#SER_COMPROBANTE#'')'
,p_column_linktext=>'<input type="button" value="Forma de Pago" class="btn"style="color:white;"/>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(5892839580053615)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'58929'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>10
,p_report_columns=>'SER_COMPROBANTE:NRO_COMPROBANTE:COD_MONEDA:COD_VENDEDOR:FEC_COMPROBANTE:COD_CLIENTE:NOM_CLIENTE:TOT_COMPROBANTE:FEC_ESTADO:BOTON:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(41138181520206040)
,p_plug_name=>'VARIABLES'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(41138381926206042)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(41138181520206040)
,p_button_name=>'BT_ACTUALIZAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Actualizar'
,p_warn_on_unsaved_changes=>null
,p_button_cattributes=>'style="margin-top:9px;"'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(6324867395278639)
,p_branch_name=>'GO_TO_PAG1'
,p_branch_action=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5911553929181109)
,p_name=>'P14_OPCION'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(41138181520206040)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6324087883278631)
,p_name=>'P14_TIPO_PEDIDO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(41138181520206040)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6324128575278632)
,p_name=>'P14_LOGO'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(41138181520206040)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6324372794278634)
,p_name=>'P14_NRO_COMPROBANTE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(41138181520206040)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(16691884809277250)
,p_name=>'P14_COD_USUARIO'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(41138181520206040)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(17119279349637601)
,p_name=>'P14_COD_EMPRESA'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(41138181520206040)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(17119311026637602)
,p_name=>'P14_COD_SUCURSAL'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(41138181520206040)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(17119493810637603)
,p_name=>'P14_COD_MODULO'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(41138181520206040)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(17119592580637604)
,p_name=>'P14_FEC_COMPROBANTE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(41136709351206026)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(17119688950637605)
,p_name=>'P14_COD_CUSTODIO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(41136709351206026)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(17119799743637606)
,p_name=>'P14_COD_CLIENTE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(41136709351206026)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(17119832098637607)
,p_name=>'P14_SER_COMPROBANTE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(41136709351206026)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(21000541641158220)
,p_name=>'P14_URL'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(41138181520206040)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(41138290674206041)
,p_name=>'P14_SERIE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(41138181520206040)
,p_prompt=>'Serie'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT V.SER_COMPROBANTE CODIGO_RAPIDO,',
'           V.SER_COMPROBANTE NOMBRE',
'	  FROM VT_COMPROBANTES_CABECERA V',
'	 WHERE COD_EMPRESA = :P_COD_EMPRESA ',
'	   AND NVL(ESTADO,''N'') != ''A''',
'	   AND TIP_COMPROBANTE = ''FCO''',
'	  -- AND FEC_COMPROBANTE > SYSDATE-10',
'	   AND NVL(ESTADO,''P'') != ''A''',
'	 GROUP BY SER_COMPROBANTE;',
''))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'TODOS'
,p_lov_null_value=>'T'
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
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(41139184228206050)
,p_name=>'DA_POST_QUERY'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(41136709351206026)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterrefresh'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(41592585711799801)
,p_event_id=>wwv_flow_imp.id(41139184228206050)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'BEGIN',
'  SELECT LTRIM( RTRIM( NVL( P.NOMBRE, P.NOMB_FANTASIA ) ) )',
'    INTO :P14_DESC_VENDEDOR',
'    FROM FV_VENDEDORES U,',
'         PERSONAS P',
'   WHERE U.COD_EMPRESA = :P_COD_EMPRESA',
'     AND U.COD_VENDEDOR = :COD_VENDEDOR',
'     AND U.COD_PERSONA = P.COD_PERSONA;',
'',
'     :P14_COD_VENDEDOR := :COD_VENDEDOR;',
'EXCEPTION',
'  WHEN OTHERS THEN',
'    :P14_DESC_VENDEDOR := NULL;',
'END;',
'',
'BEGIN',
'  SELECT DESCRIPCION',
'    INTO :P14_DESC_MONEDA',
'    FROM MONEDAS',
'   WHERE COD_MONEDA = :COD_MONEDA;',
'',
'   :P14_COD_MONEDA := :COD_MONEDA;',
'EXCEPTION',
'  WHEN OTHERS THEN',
'    :P14_DESC_MONEDA := NULL;',
'    --MENSAJE_EX(''ERROR EN LA TABLA DE MONEDAS '' || SQLERRM );',
'    --RAISE FORM_TRIGGER_FAILURE;',
'END;',
':OPCION:=''N'';'))
,p_attribute_02=>'COD_VENDEDOR,COD_MONEDA'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(41592667042799802)
,p_name=>'DA_REFRESH_AUTVEN'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(41138381926206042)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(41592761744799803)
,p_event_id=>wwv_flow_imp.id(41592667042799802)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(41136709351206026)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(5911231371181106)
,p_name=>'DA_RECU_DESC'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P14_COD_MONEDA'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5911365735181107)
,p_event_id=>wwv_flow_imp.id(5911231371181106)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  SELECT DESCRIPCION',
'    INTO :P14_DESC_MONEDA',
'    FROM MONEDAS',
'   WHERE COD_MONEDA = :P14_COD_MONEDA;',
'EXCEPTION',
'  WHEN OTHERS THEN',
'    :P14_DESC_MONEDA := NULL;',
'    --MENSAJE_EX(''ERROR EN LA TABLA DE MONEDAS '' || SQLERRM );',
'END;'))
,p_attribute_02=>'P14_COD_MONEDA'
,p_attribute_03=>'P14_DESC_MONEDA'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(6324483489278635)
,p_name=>'DA_CONFIRMAR'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P14_NRO_COMPROBANTE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(6324546923278636)
,p_event_id=>wwv_flow_imp.id(6324483489278635)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\00BFDesea darle cobro a la factura &P14_NRO_COMPROBANTE. ?')
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(16691789564277249)
,p_event_id=>wwv_flow_imp.id(6324483489278635)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'APEX_COLLECTION.ADD_MEMBER (p_collection_name => ''COL_PARAMETROS_VTFAPECO'',',
'                            P_C001 => ''FCO'', --TIPO_COMPROBANTE',
'                            P_C002 => NULL, --P_TIP_PLANILLA',
'                            P_C003 => NULL, --P_TIP_MOV_CAJ',
'                            P_C004 => NULL, --P_SER_MOV_CAJ ',
'                            P_C005 => :P14_SER_COMPROBANTE, --P_SER_COMPROBANTE',
'                            P_C006 => :P14_FEC_COMPROBANTE, --P_FECHA',
'                            P_C007 => :P14_COD_CLIENTE, --P_COD_CLIENTE',
'                            P_C008 => :P14_COD_SUCURSAL, --P_COD_SUCURSAL',
'                            P_C009 => :P14_COD_CUSTODIO, --P_COD_CUSTODIO',
'                            P_C010 => NULL, --P_COD_CUSTODIO_ENT',
'                            P_C011 => NULL, --P_IND_GENERA_MD',
'                            P_C012 => NULL, --P_COD_USUARIO',
'                            P_C013 => NULL, --P_NRO_ORT',
'                            P_C014 => NULL, --P_SER_ORT ',
'                            P_N001 => NULL, --P_NRO_PLANILLA',
'                            P_N002 => :P14_NRO_COMPROBANTE, --P_NRO_COMPROBANTE',
'                            P_N003 => NULL, --P_NRO_MOV_CAJ',
'                            P_N004 => NULL); --P_SENIA_FCR'))
,p_attribute_02=>'P14_SER_COMPROBANTE,P14_COD_CLIENTE,P14_COD_SUCURSAL,P14_COD_CUSTODIO,P14_NRO_COMPROBANTE'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(6324664691278637)
,p_event_id=>wwv_flow_imp.id(6324483489278635)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT APEX_PAGE.GET_URL (  p_page   => 95) f_url_1',
'  INTO :P14_URL',
'  FROM DUAL;'))
,p_attribute_03=>'P14_URL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(21000769283158222)
,p_event_id=>wwv_flow_imp.id(6324483489278635)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'	var url = apex.item("P14_URL").getValue();',
'',
'	apex.navigation.redirect (url);'))
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(6323982316278630)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_INIT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(p_collection_name => ''COL_PARAMETROS_VTFAPECO'');',
'--INICIA_GLOBALES',
':P14_COD_USUARIO := :P_COD_USUARIO;',
':P14_COD_EMPRESA := :P_COD_EMPRESA;',
':P14_COD_SUCURSAL := :P_COD_SUCURSAL;',
':P14_COD_MODULO := :P_COD_MODULO;',
'',
':P14_COD_MODULO := ''VT'';',
'',
'--RUTINA_INICIAL',
'',
':P_COD_MODULO := BS_BUSCA_PARAMETRO( :P_COD_MODULO, ''TIPO_PEDIDO'' );',
'',
':P14_LOGO := ''Cobro de Factura'';',
'IF :P14_COD_SUCURSAL = ''190'' THEN',
'    :P14_SERIE := ''L4.2'';',
'ELSE',
'    :P14_SERIE := ''J7.2'';',
'END IF;',
''))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp.component_end;
end;
/
