prompt --application/pages/page_00042
begin
--   Manifest
--     PAGE: 00042
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
 p_id=>42
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Datos Clientes'
,p_alias=>'DATOS-CLIENTES'
,p_page_mode=>'MODAL'
,p_step_title=>'Datos Clientes'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'18'
,p_last_updated_by=>'INV'
,p_last_upd_yyyymmddhh24miss=>'20220923081234'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(84542438134148860)
,p_plug_name=>'Datos Clientes'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(84543818621148873)
,p_plug_name=>'Saldo'
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40108275410263656)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select A.tipo_comprobante||'' ''||a.ser_comprobante||'' ''|| a.nro_comprobante comprobante,',
'a.fec_vencimiento,a.siglas, sum(a.monto_cuota)cuota,sum(a.saldo)saldo ,',
'TO_CHAR(fec_vencimiento,''MM/YYYY'')PERIODO',
'from V_SALDOS_APEX a',
'where cod_cliente = :P42_COD_CLIENTE',
'and fec_vencimiento between :P42_FECHA_INICIO',
'AND :P42_FECHA_FIN',
'group by a.tipo_comprobante, a.ser_comprobante,a.nro_comprobante,a.fec_vencimiento, a.siglas',
'',
'order by a.fec_vencimiento'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P42_COD_CLIENTE,P42_FECHA_INICIO,P42_FECHA_FIN'
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
 p_id=>wwv_flow_imp.id(84543929841148874)
,p_max_row_count=>'1000000'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'INV'
,p_internal_uid=>84543929841148874
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11364533886964510)
,p_db_column_name=>'COMPROBANTE'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Comprobante'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11364965278964511)
,p_db_column_name=>'FEC_VENCIMIENTO'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Fec Vencimiento'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_format_mask=>'DD/MM/YYYY'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11365367044964511)
,p_db_column_name=>'SIGLAS'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Siglas'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11365753603964511)
,p_db_column_name=>'CUOTA'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Cuota'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11366174765964511)
,p_db_column_name=>'SALDO'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Saldo'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11366524439964511)
,p_db_column_name=>'PERIODO'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Periodo'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(84635509950985744)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_type=>'GROUP_BY'
,p_report_alias=>'620568'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'COMPROBANTE:FEC_VENCIMIENTO:SIGLAS:CUOTA:SALDO:PERIODO'
,p_sort_column_1=>'FEC_VENCIMIENTO'
,p_sort_direction_1=>'DESC'
,p_sum_columns_on_break=>'SALDO:CUOTA'
);
wwv_flow_imp_page.create_worksheet_group_by(
 p_id=>wwv_flow_imp.id(11367268434964512)
,p_report_id=>wwv_flow_imp.id(84635509950985744)
,p_group_by_columns=>'PERIODO:SIGLAS'
,p_function_01=>'SUM'
,p_function_column_01=>'CUOTA'
,p_function_db_column_name_01=>'APXWS_GBFC_01'
,p_function_label_01=>'Cuota'
,p_function_format_mask_01=>'999G999G999G999G990D00'
,p_function_sum_01=>'Y'
,p_function_02=>'SUM'
,p_function_column_02=>'SALDO'
,p_function_db_column_name_02=>'APXWS_GBFC_02'
,p_function_label_02=>'Saldo'
,p_function_format_mask_02=>'999G999G999G999G990D00'
,p_function_sum_02=>'Y'
,p_sort_column_01=>'PERIODO'
,p_sort_direction_01=>'ASC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(84544466724148880)
,p_plug_name=>'Filtros'
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40108275410263656)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11367951003964513)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(84544466724148880)
,p_button_name=>'go'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187078917263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'go'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-search'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11360246663964508)
,p_name=>'P42_COD_CLIENTE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(84542438134148860)
,p_prompt=>'Cod Cliente'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select nombre ||'' ''||C.COD_CLIENTE NOMBRE,cod_cliente ',
'from cc_clientes c, personas p ',
'where c.cod_empresa = ''1''',
'and c.cod_persona = p.cod_persona ',
'order by nombre'))
,p_field_template=>wwv_flow_imp.id(40186463825263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11360697950964508)
,p_name=>'P42_TIPO_CLIENTE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(84542438134148860)
,p_prompt=>'Tipo Cliente'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(40186463825263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11361014584964509)
,p_name=>'P42_LINEA_CREDITO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(84542438134148860)
,p_prompt=>'Linea Credito Usd'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186463825263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11361400537964509)
,p_name=>'P42_SALDO_GS'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(84542438134148860)
,p_prompt=>'Saldo Gs'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(40186463825263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11361880860964509)
,p_name=>'P42_SALDO_US'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(84542438134148860)
,p_prompt=>'Saldo Us'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186463825263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11362236860964509)
,p_name=>'P42_VALORES_ADEPOSITAR'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(84542438134148860)
,p_prompt=>'Valores Adepositar'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186463825263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11362697671964509)
,p_name=>'P42_SALDO_TOTAL_USD'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(84542438134148860)
,p_prompt=>'Saldo Total Usd'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(40186463825263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11363048889964509)
,p_name=>'P42_POSIBLE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(84542438134148860)
,p_prompt=>'Posible Usd'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186463825263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11363479836964510)
,p_name=>'P42_CALIFICACION_COBRANZA'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(84542438134148860)
,p_prompt=>'Calificacion Cobranza'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(40186463825263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11363844901964510)
,p_name=>'P42_SOBREGIRADO'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(84542438134148860)
,p_prompt=>'Sobregirado'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_attributes=>'style=''color:red;text-align: right;font-size: 20px;'''
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186463825263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11368398150964513)
,p_name=>'P42_FECHA_INICIO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(84544466724148880)
,p_item_default=>'ADD_MONTHS(SYSDATE,-120)'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Inicio'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186463825263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11368779976964514)
,p_name=>'P42_FECHA_FIN'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(84544466724148880)
,p_item_default=>'SYSDATE'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Fecha Fin'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186463825263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(11369125750964514)
,p_name=>'trae_datos'
,p_event_sequence=>10
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11369628563964514)
,p_event_id=>wwv_flow_imp.id(11369125750964514)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare ',
'vjerarquia varchar2(100);',
'vtot number;',
' VMONEDA VARCHAR2(10);',
'				vtip number;',
'begin',
'	BEGIN   	',
'				SELECT TC.DESCRIPCION, cc.nro_jerarquia, Cc.LIMITE_CREDITO, cc.cod_moneda_limite',
'				  INTO :P42_TIPO_CLIENTE, VJERARQUIA,     	:P42_LINEA_CREDITO, VMONEDA',
'',
'				  FROM CC_TIPO_CLIENTE TC, CC_CLIENTES CC',
'				 WHERE TC.COD_TIP_CLIENTE=CC.TIP_CLIENTE',
'                                 AND CC.COD_EMPRESA=''1''',
'                                 AND CC.COD_CLIENTE = :P42_COD_CLIENTE;  ',
'		EXCEPTION',
'				WHEN OTHERS THEN',
'			      :P42_TIPO_CLIENTE:=NULL;',
'		END ;',
'                ',
'begin',
'				select descripcion',
'				  into :P42_CALIFICACION_COBRANZA',
'				  from cc_jerarquias',
'				 where cod_empresa   = ''1''',
'				   and nro_jerarquia = vjerarquia ;',
'		exception',
'				when others then',
'				:P42_CALIFICACION_COBRANZA:= null ;          ',
'		end;                ',
'                ',
'                ',
'',
'	Begin',
'				select nvl( sum( ',
'                                CASE WHEN COD_MONEDA_CUOTA=''2'' THEN        saldo_cuota ELSE 0 END',
'                                ), 0 ) ,',
'                                nvl( sum( ',
'                                CASE WHEN COD_MONEDA_CUOTA=''1'' THEN        saldo_cuota ELSE 0 END',
'                                ), 0 ) ',
'				  into :P42_SALDO_US, :P42_SALDO_GS',
'				  from cc_saldos',
'				 where cod_empresa      = ''1''',
'				   and cod_cliente      = :P42_cod_cliente;',
'		exception',
'				when others then',
'						:P42_SALDO_US := 0;',
'		end;',
'                ',
'                ',
'        	 ',
'				',
'		begin',
'				select tipo_cambio_dia',
'				  into vtip',
'				  from monedas',
'				 where cod_moneda = ''2'';',
'				 ',
'				begin',
'						select sum(nvl(SAL.monto_valor, 0) * nvl(mON.tipo_cambio_dia, 1)/ vtip)',
'						  into :P42_VALORES_ADEPOSITAR',
'						  from CC_VALORES sal,    ',
'						  		 monedas mon,         ',
'						  		 CC_FORMAS_COBROS CO',
'						 where SAL.cod_empresa = ''1''',
'							 and sal.cod_cliente = :P42_cod_CLIENTE',
'							 and nvl(SAL.ESTADO_VALOR,''P'' ) <> ''D''',
'							 AND nvl(SAL.ESTADO_VALOR,''P'' ) NOT IN (''CR'',''CP'',''C'',''R'')',
'							 and (SAL.FEC_EMISION >TO_DATE(''01/01/2000'') )',
'							 and SAL.COD_MONEDA = mon.cod_moneda',
'							 AND SAL.COD_EMPRESA = CO.COD_EMPRESA',
'							 AND SAL.COD_PER_JURIDICA = CO.COD_PER_JURIDICA',
'							 AND SAL.TIP_DOCUMENTO = CO.TIP_DOCUMENTO',
'							 AND SAL.NRO_VALOR = CO.NRO_VALOR',
'							 AND SAL.FEC_EMISION <> SAL.FEC_VENCIMIENTO ',
'							 AND CO.SUB_TIPO_TRANS=''16'';',
'				EXCEPTION',
'						WHEN OTHERS THEN ',
'								:P42_VALORES_ADEPOSITAR:=0;',
'				END;',
'               IF vmoneda=''1''       then          ',
'     	:P42_LINEA_CREDITO := nvl( :P42_LINEA_CREDITO, 0 ) * nvl( vtip, 1 );                           ',
'        end if;',
'        ',
'	vtot := nvl( :p42_saldo_gs, 0 ) / nvl( vtip, 1 );  ',
'				:p42_saldo_total_usd := nvl( vtot, 0 ) + nvl( :p42_saldo_us, 0 );                                ',
'',
'	:P42_posible := nvl( :P42_lINEA_credito, 0 ) - nvl( :p42_saldo_total_usd,0 )-nvl(:P42_VALORES_ADEPOSITAR,0);',
'',
'	if  f_linea_credito_cliente(:P42_cod_cliente )	>100 then',
'	:P42_sobregirado:=''SOBREGIRADO'';',
'else                                   ',
'	:P42_sobregirado:=NULL;',
'end if;',
':p42_saldo_gs:= to_char(:p42_saldo_gs,''999G999G999G990'');',
':p42_saldo_US:= to_char(:p42_saldo_US,''999G999G999G990D00'');',
':P42_linea_credito:= to_char(:P42_linea_credito,''999G999G999G990D00'');',
':P42_posible:= to_char(:P42_posible,''999G999G999G990D00'');',
':p42_saldo_total_usd:= to_char(:p42_saldo_total_usd,''999G999G999G990D00'');',
'',
'END;	        ',
'end;'))
,p_attribute_02=>'P42_COD_CLIENTE'
,p_attribute_03=>'P42_TIPO_CLIENTE,P42_LINEA_CREDITO,P42_SALDO_GS,P42_SALDO_US,P42_VALORES_ADEPOSITAR,P42_SALDO_TOTAL_USD,P42_POSIBLE,P42_CALIFICACION_COBRANZA,P42_SOBREGIRADO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(11370032066964515)
,p_name=>'GO'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(11367951003964513)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11370586028964515)
,p_event_id=>wwv_flow_imp.id(11370032066964515)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(84543818621148873)
);
wwv_flow_imp.component_end;
end;
/
