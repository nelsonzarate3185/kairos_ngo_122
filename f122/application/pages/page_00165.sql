prompt --application/pages/page_00165
begin
--   Manifest
--     PAGE: 00165
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
 p_id=>165
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'VTCPEDRE - Consulta de pedido de repuestos'
,p_alias=>'VTCPEDRE-CONSULTA-DE-PEDIDO-DE-REPUESTOS'
,p_step_title=>'VTCPEDRE - Consulta de pedido de repuestos'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'JUANASIS'
,p_last_upd_yyyymmddhh24miss=>'20221110171148'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(32175432263545583)
,p_plug_name=>'Consulta de pedido de repuestos'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--compactTitle:t-BreadcrumbRegion--useRegionTitle'
,p_plug_template=>wwv_flow_imp.id(40134615190263663)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(32181635588559901)
,p_plug_name=>'Pedidos'
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(32181937816559904)
,p_plug_name=>'Lista de Pedidos'
,p_parent_plug_id=>wwv_flow_imp.id(32181635588559901)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'	C.SER_COMPROBANTE||'' - ''||C.NRO_COMPROBANTE NRO_COMPROBANTE,',
'	c.observacion,',
'	''X'' VER_PEDIDOS,',
'	C.SER_COMPROBANTE SERIE,',
'	C.NRO_COMPROBANTE PEDIDO	',
'FROM',
'	VT_PEDIDOS_CABECERA_REP C,',
'	VT_PEDIDOS_DETALLE_REP D,',
'	ST_ARTICULOS S',
'WHERE',
'	C.COD_EMPRESA = ''1''',
'	AND C.COD_EMPRESA = D.COD_EMPRESA',
'	AND C.TIP_COMPROBANTE = D.TIP_COMPROBANTE',
'	AND C.SER_COMPROBANTE = D.SER_COMPROBANTE',
'	AND C.NRO_COMPROBANTE = D.NRO_COMPROBANTE',
'	AND S.COD_EMPRESA(+)= D.COD_EMPRESA',
'	AND S.COD_ARTICULO(+)= D.COD_ARTICULO',
'	AND NVL(C.ANULADO, ''N'')<> ''S''',
'	AND NVL(C.FACTURADO, ''N'')<> ''S''',
'	AND NVL(P_TIPO, ''A'')<> ''W''',
'	AND NVL(ESPERA_CALL, ''S'')<> ''N''',
'	--AND c.fec_comprobante = to_date(to_char(sysdate, ''DD/MM/YYYY''), ''DD/MM/YYYY'')',
'	AND (c.nro_comprobante = :P165_NRO_PEDIDO',
'		OR :P165_NRO_PEDIDO IS NULL)',
'	AND (s.cod_marca = :P165_COD_MARCA',
'		OR :P165_COD_MARCA IS NULL)',
'GROUP BY',
'	C.NRO_COMPROBANTE,',
'	C.observacion,',
'	C.SER_COMPROBANTE;'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P165_COD_MARCA,P165_NRO_PEDIDO'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Lista de Pedidos'
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
 p_id=>wwv_flow_imp.id(32182065144559905)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'CHARBA'
,p_internal_uid=>32182065144559905
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(32182229840559907)
,p_db_column_name=>'OBSERVACION'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Observacion'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(32182457200559909)
,p_db_column_name=>'NRO_COMPROBANTE'
,p_display_order=>30
,p_column_identifier=>'D'
,p_column_label=>'Nro Comprobante'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(32182911453559914)
,p_db_column_name=>'VER_PEDIDOS'
,p_display_order=>40
,p_column_identifier=>'E'
,p_column_label=>'Ver Pedidos'
,p_column_link=>'f?p=&APP_ID.:141:&SESSION.::&DEBUG.:::'
,p_column_linktext=>'<img src="#APP_FILES#orden.png" width="20" height="20">'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(32183057194559915)
,p_db_column_name=>'SERIE'
,p_display_order=>50
,p_column_identifier=>'F'
,p_column_label=>'Serie'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(32183117963559916)
,p_db_column_name=>'PEDIDO'
,p_display_order=>60
,p_column_identifier=>'G'
,p_column_label=>'Pedido'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(32199862370639578)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'321999'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'NRO_COMPROBANTE:OBSERVACION:VER_PEDIDOS:'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(32181715861559902)
,p_name=>'P165_COD_MARCA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(32181635588559901)
,p_prompt=>'Marca'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_MARCAS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cod_marca||'' - ''||descripcion D, cod_marca R',
'from st_marcas',
'order by descripcion;'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
,p_attribute_08=>'600'
,p_attribute_09=>'400'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(32181804827559903)
,p_name=>'P165_NRO_PEDIDO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(32181635588559901)
,p_prompt=>'Pedido'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(32182576256559910)
,p_name=>'DA_CAMBIAR_COD_MARCA'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P165_COD_MARCA'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(32182672971559911)
,p_event_id=>wwv_flow_imp.id(32182576256559910)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(32181937816559904)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(32182765700559912)
,p_name=>'DA_CAMBIAR_NRO_PEDIDO'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P165_NRO_PEDIDO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(32182894543559913)
,p_event_id=>wwv_flow_imp.id(32182765700559912)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(32181937816559904)
);
wwv_flow_imp.component_end;
end;
/
