prompt --application/pages/page_00458
begin
--   Manifest
--     PAGE: 00458
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
 p_id=>458
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Seguimiento de Solicitud Suministros MKT'
,p_alias=>'SEGUIMIENTO-DE-SOLICITUD-SUMINISTROS-MKT'
,p_step_title=>'Seguimiento de Solicitud Suministros MKT'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.t-Form-label{',
'    color:  darkblue !important;',
'    font-weight: bold !important;',
'    }',
'',
'#parametros {',
'      background-color: #487ab8 !important;',
'      box-shadow: black 1px 1px 5px 1px;}',
'',
'        ',
' ',
'  .a-IRR-header u-tL , .a-IRR-headerLink, .a-IRR-header--linkCol{',
'      background: #003a85!important;',
'       color: yellow; ',
' }'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'JUANSA'
,p_last_upd_yyyymmddhh24miss=>'20230417115002'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(136458739994824211)
,p_plug_name=>'PARAMETROS'
,p_region_name=>'parametros'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(137267067733554518)
,p_plug_name=>'Seguimiento de Solicitud Suministros MKT'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>20
,p_query_type=>'TABLE'
,p_query_table=>'SM_PRODUCTOS_MKT'
,p_query_where=>wwv_flow_string.join(wwv_flow_t_varchar2(
'    (:P458_FECHA_INI IS NULL OR :P458_FECHA_INI >= FECHA)',
'AND (:P458_FECHA_FIN IS NULL OR :P458_FECHA_FIN <= FECHA)'))
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P458_CLIENTE,P458_TIPO,P458_ESTADO,P458_FECHA_INI,P458_FECHA_FIN'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_page_header=>'Seguimiento de Solicitud Suministros MKT'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(137267180620554518)
,p_name=>'Seguimiento de Solicitud Suministros MKT'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:459:&SESSION.::&DEBUG.:RP,:P459_COD_EMPRESA,P459_NRO_SEGUIMIENTO:\#COD_EMPRESA#\,\#NRO_SEGUIMIENTO#\'
,p_detail_link_text=>'<span aria-label="Edit"><span class="fa fa-edit" aria-hidden="true" title="Edit"></span></span>'
,p_owner=>'JUANSA'
,p_internal_uid=>137267180620554518
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(137267947718554517)
,p_db_column_name=>'NRO_SEGUIMIENTO'
,p_display_order=>0
,p_column_identifier=>'B'
,p_column_label=>'Nro Solicitud'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(137268323884554517)
,p_db_column_name=>'USUARIO'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Usuario'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(137268709552554516)
,p_db_column_name=>'COD_EMPRESA'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Cod Empresa'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(137269135581554516)
,p_db_column_name=>'FECHA'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Fecha'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_format_mask=>'dd/mm/yyyy'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(137269519524554516)
,p_db_column_name=>'COD_CLIENTE'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Cliente'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_imp.id(6969834837818791)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(137269930479554516)
,p_db_column_name=>'FECHA_ENTREGA_CLI'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Fecha Entrega'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_format_mask=>'dd/mm/yyyy'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(137270352317554516)
,p_db_column_name=>'CIUDAD'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Ciudad'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(137270767900554516)
,p_db_column_name=>'CONTACTO_CLIENTE'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Contacto Cliente'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(137271194059554516)
,p_db_column_name=>'ESTADO'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Estado'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(137271509352554515)
,p_db_column_name=>'COD_PROVEEDOR'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Cod Proveedor'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(137271973900554515)
,p_db_column_name=>'FECHA_ENTREGA_PROV'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Fecha Entrega Prov'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(137272369199554515)
,p_db_column_name=>'OBSERVACION'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Observacion'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(137272703051554515)
,p_db_column_name=>'CORREO_CONTACTO'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'Correo Contacto'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(137273153607554515)
,p_db_column_name=>'TELEF_CONTACTO'
,p_display_order=>15
,p_column_identifier=>'O'
,p_column_label=>'Telef Contacto'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(137273573036554515)
,p_db_column_name=>'MONTO_PRESUPUESTO'
,p_display_order=>16
,p_column_identifier=>'P'
,p_column_label=>'Monto Presupuesto'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(137273918677554514)
,p_db_column_name=>'COD_VENDEDOR'
,p_display_order=>17
,p_column_identifier=>'Q'
,p_column_label=>'Codigo Vendedor'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(137274304253554514)
,p_db_column_name=>'COD_SUCURSAL_DIST'
,p_display_order=>18
,p_column_identifier=>'R'
,p_column_label=>'Sucursal'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(137274756658554514)
,p_db_column_name=>'LUGAR_ENTREGA'
,p_display_order=>19
,p_column_identifier=>'S'
,p_column_label=>'Lugar Entrega'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(137275152078554514)
,p_db_column_name=>'RUC'
,p_display_order=>20
,p_column_identifier=>'T'
,p_column_label=>'Ruc'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(137275562376554514)
,p_db_column_name=>'NRO_FACT_PROV'
,p_display_order=>21
,p_column_identifier=>'U'
,p_column_label=>'Nro Factura'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(137277559872554046)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1372776'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'NRO_SEGUIMIENTO:FECHA:ESTADO:COD_CLIENTE:CIUDAD:COD_SUCURSAL_DIST:NRO_FACT_PROV:FECHA_ENTREGA_CLI:MONTO_PRESUPUESTO:LUGAR_ENTREGA:COD_VENDEDOR:OBSERVACION:'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(136461343712824237)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(136458739994824211)
,p_button_name=>'Filtrar'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--iconRight:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Filtrar'
,p_button_css_classes=>'u-color-21-bg u-color-43-text'
,p_icon_css_classes=>'fa-search'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>1
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(137276005296554514)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(137267067733554518)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'NUEVO'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:459:&SESSION.::&DEBUG.:459'
,p_icon_css_classes=>'fa-plus'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(136458800444824212)
,p_name=>'P458_CLIENTE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(136458739994824211)
,p_prompt=>'Cliente'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct s.cod_cliente ||'' - ''|| p.nombre, s.cod_cliente',
'from SM_PRODUCTOS_MKT s,',
'     cc_clientes c,',
'     personas p',
'where  s.cod_empresa =  :P_COD_EMPRESA',
'AND s.cod_empresa = c.cod_empresa',
'and   s.cod_cliente = c.cod_cliente',
'and   c.cod_persona = p.cod_persona',
'order by s.cod_cliente ||'' - ''|| p.nombre',
'     '))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-TODOS-'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(136458958838824213)
,p_name=>'P458_TIPO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(136458739994824211)
,p_prompt=>'Tipo'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov_language=>'PLSQL'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'	SELECT distinct categoria, categoria COD',
'	from sm_productos_clasificacion s',
'	order by categoria asc',
'	 ;'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-TODOS-'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(136459045955824214)
,p_name=>'P458_ESTADO'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(136458739994824211)
,p_prompt=>'Estado'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct ESTADO, ESTADO COD',
'from SM_PRODUCTOS_MKT s ',
'where s.cod_empresa =  :P_COD_EMPRESA',
'AND ESTADO IS NOT NULL'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-TODOS-'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(136459116980824215)
,p_name=>'P458_FECHA_INI'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(136458739994824211)
,p_prompt=>'Fecha Desde:'
,p_format_mask=>'DD/MM/YYYY'
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>30
,p_cMaxlength=>12
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(136459253135824216)
,p_name=>'P458_FECHA_FIN'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(136458739994824211)
,p_prompt=>'Fecha Hasta:'
,p_format_mask=>'DD/MM/YYYY'
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>30
,p_cMaxlength=>12
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(137276388795554513)
,p_name=>'Edit Report - Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(137267067733554518)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(137276822768554513)
,p_event_id=>wwv_flow_imp.id(137276388795554513)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(137267067733554518)
);
wwv_flow_imp.component_end;
end;
/
