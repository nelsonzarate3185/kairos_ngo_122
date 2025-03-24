prompt --application/pages/page_00027
begin
--   Manifest
--     PAGE: 00027
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
 p_id=>27
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>unistr('Entrega de Productos Dep\00F3sitos')
,p_alias=>unistr('ENTREGA-DE-PRODUCTOS-DEP\00D3SITOS')
,p_step_title=>unistr('Entrega de Productos Dep\00F3sitos')
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#INF1{',
'    ',
'    font-weight: bold !important;;',
'    }',
'',
''))
,p_step_template=>wwv_flow_imp.id(40090628970263651)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'ETRINIDAD'
,p_last_upd_yyyymmddhh24miss=>'20221006113550'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(20746647211710332)
,p_plug_name=>unistr('Entrega de Productos Dep\00F3sitos')
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--compactTitle:t-BreadcrumbRegion--useRegionTitle'
,p_plug_template=>wwv_flow_imp.id(40134615190263663)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(20746856940710334)
,p_plug_name=>'Datos'
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--textContent:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>10
,p_plug_grid_column_span=>4
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(20910634561172814)
,p_plug_name=>'Listado de Productos'
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody:margin-top-md'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>20
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(20910737089172815)
,p_plug_name=>'Entrega de Productos Deposito'
,p_region_name=>'INF1'
,p_parent_plug_id=>wwv_flow_imp.id(20910634561172814)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT C.NRO_COMPROBANTE,',
'       CC.NOM_CLIENTE,',
'       C.SER_COMPROBANTE,',
'       C.TIP_COMPROBANTE,',
'       CC.COD_CLIENTE,',
'       C.NRO_PLANILLA,',
'       SUM(CD.CANTIDAD) CANTIDAD,',
'       C.COD_BLOQUE,',
'       B.DESC_BLOQUE,',
'       C.COD_SUCURSAL SUC_COD,',
'       ''X''DETALLES',
'  FROM VT_ENTREGA_CABECERA_DEP  C,',
'       VT_ENTREGA_DETALLE_DEP   D,',
'       ST_ARTICULOS             S,',
'       VT_COMPROBANTES_CABECERA CC,',
'       VT_COMPROBANTES_DETALLE  CD,',
'       ST_BLOQUES               B',
' WHERE C.COD_EMPRESA = ''1''',
'   AND C.COD_EMPRESA = D.COD_EMPRESA',
'   AND C.TIP_COMPROBANTE = D.TIP_COMPROBANTE',
'   AND C.SER_COMPROBANTE = D.SER_COMPROBANTE',
'   AND C.NRO_COMPROBANTE = D.NRO_COMPROBANTE',
'   AND CC.COD_EMPRESA = C.COD_EMPRESA',
'   AND CC.TIP_COMPROBANTE = C.TIP_COMPROBANTE',
'   AND CC.SER_COMPROBANTE = C.SER_COMPROBANTE',
'   AND CC.NRO_COMPROBANTE = C.NRO_COMPROBANTE',
'   AND CD.COD_EMPRESA = C.COD_EMPRESA',
'   AND CD.TIP_COMPROBANTE = C.TIP_COMPROBANTE',
'   AND CD.SER_COMPROBANTE = C.SER_COMPROBANTE',
'   AND CD.NRO_COMPROBANTE = C.NRO_COMPROBANTE',
'   AND CD.COD_ARTICULO = D.COD_ARTICULO',
'   AND C.NRO_PLANILLA = D.NRO_PLANILLA',
'   AND B.COD_BLOQUE   = C.COD_BLOQUE',
'   AND S.COD_EMPRESA(+) = D.COD_EMPRESA',
'   AND S.COD_ARTICULO(+) = D.COD_ARTICULO',
'   AND (NVL(ANULADO, ''N'') <> ''S'' OR NVL(IND_DEVOLUCION_ANULADA, ''N'') = ''S'')',
'   AND NVL(C.CONFIRMADO, ''N'') <> ''S''',
'      /*AND NVL(CC.ESTADO,''N'')<>''A''*/',
'      ',
'   AND (C.TIP_COMPROBANTE = :P27_TIPO_COMPROB OR',
'       :P27_TIPO_COMPROB IS NULL)',
'      ',
'   AND C.COD_BLOQUE = :P27_COD_BLOQUE ',
'       ',
'   AND (C.SER_COMPROBANTE = :P27_SERIE_COMPROB OR',
'       :P27_SERIE_COMPROB IS NULL)',
'   AND (C.NRO_COMPROBANTE = :P27_NRO_COMPROB OR',
'       :P27_NRO_COMPROB IS NULL)',
'   AND C.COD_SUCURSAL = :P27_DESPOSITO_COD ',
' GROUP BY C.NRO_COMPROBANTE,',
'          CC.NOM_CLIENTE,',
'          C.SER_COMPROBANTE,',
'          C.TIP_COMPROBANTE,',
'          CC.COD_CLIENTE,',
'          C.NRO_PLANILLA,',
'          C.COD_BLOQUE,',
'          B.DESC_BLOQUE,',
'          C.COD_SUCURSAL',
'HAVING SUM(CD.CANTIDAD) > (SELECT (COUNT(DISTINCT(G.NRO_GARANTIA)))',
'                             FROM ST_GARANTIA_PRODUCTOS_DET G',
'                            WHERE G.COD_EMPRESA = ''1''',
'                              AND G.TIP_COMPROBANTE = C.TIP_COMPROBANTE',
'                              AND G.SER_COMPROBANTE = C.SER_COMPROBANTE',
'                              AND G.NRO_COMPROBANTE = C.NRO_COMPROBANTE',
'                              AND G.COD_ARTICULO <> ''ZZGASFIN''',
'                              AND NVL(IND_DEVUELTO, ''N'') <> ''S'');',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Entrega de Productos Deposito'
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
 p_id=>wwv_flow_imp.id(20910893377172816)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'ETRINIDAD'
,p_internal_uid=>20910893377172816
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10756465310450914)
,p_db_column_name=>'TIP_COMPROBANTE'
,p_display_order=>10
,p_column_identifier=>'D'
,p_column_label=>'Tipo'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10755215595450913)
,p_db_column_name=>'NRO_COMPROBANTE'
,p_display_order=>20
,p_column_identifier=>'A'
,p_column_label=>'Numero'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10756046149450914)
,p_db_column_name=>'SER_COMPROBANTE'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Serie'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10756894266450915)
,p_db_column_name=>'COD_CLIENTE'
,p_display_order=>40
,p_column_identifier=>'E'
,p_column_label=>'Cliente'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10755636868450914)
,p_db_column_name=>'NOM_CLIENTE'
,p_display_order=>50
,p_column_identifier=>'B'
,p_column_label=>'Nombre'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10757250485450915)
,p_db_column_name=>'NRO_PLANILLA'
,p_display_order=>70
,p_column_identifier=>'F'
,p_column_label=>'Nro Planilla'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10757651775450915)
,p_db_column_name=>'CANTIDAD'
,p_display_order=>80
,p_column_identifier=>'G'
,p_column_label=>'Cantidad'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10758034250450915)
,p_db_column_name=>'COD_BLOQUE'
,p_display_order=>90
,p_column_identifier=>'H'
,p_column_label=>'Cod Bloque'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10758442732450916)
,p_db_column_name=>'DESC_BLOQUE'
,p_display_order=>100
,p_column_identifier=>'I'
,p_column_label=>'Bloque'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10758893781450916)
,p_db_column_name=>'DETALLES'
,p_display_order=>110
,p_column_identifier=>'J'
,p_column_label=>'Detalles'
,p_column_link=>'f?p=&APP_ID.:28:&SESSION.::&DEBUG.::P28_SUCURSAL,P28_COD_CLIENTE,P28_NRO_COMPROBANTE,P28_NRO_PLANILLA,P28_SERIE_COMPROB,P28_TIPO_COMPROB,P28_BLOQUE:#SUC_COD#,#NOM_CLIENTE#,#NRO_COMPROBANTE#,#NRO_PLANILLA#,#SER_COMPROBANTE#,#TIP_COMPROBANTE#,#DESC_BLO'
||'QUE#'
,p_column_linktext=>'<img src="#APP_FILES#orden.png" width="20" height="20">'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10759299193450916)
,p_db_column_name=>'SUC_COD'
,p_display_order=>120
,p_column_identifier=>'K'
,p_column_label=>'Suc Cod'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(21013465745108725)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'102591'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'DESC_BLOQUE:TIP_COMPROBANTE:NRO_COMPROBANTE:SER_COMPROBANTE:COD_CLIENTE:NOM_CLIENTE:DETALLES:'
,p_break_on=>'DESC_BLOQUE'
,p_break_enabled_on=>'DESC_BLOQUE'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(17876904215084824)
,p_report_id=>wwv_flow_imp.id(21013465745108725)
,p_name=>'10'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'DESC_BLOQUE'
,p_operator=>'is not null'
,p_condition_sql=>' (case when ("DESC_BLOQUE" is not null) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# #APXWS_OP_NAME#'
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_row_bg_color=>'#c6e3f7'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(10760628466450920)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(20746856940710334)
,p_button_name=>'CANCELAR'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--simple:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Cancelar'
,p_button_position=>'CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:27:&SESSION.::&DEBUG.:27::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(10760206596450919)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(20746856940710334)
,p_button_name=>'ACTUALIZAR'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--simple:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Actualizar'
,p_button_position=>'CREATE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10761003281450920)
,p_name=>'P27_DESPOSITO_COD'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(20746856940710334)
,p_prompt=>unistr('Dep\00F3sito')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LOV_SUCURSAL_COD'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT COD_SUCURSAL||''-''||DESCRIPCION d,',
'       COD_SUCURSAL r',
'  FROM SUCURSALES',
'WHERE COD_EMPRESA = :P_COD_EMPRESA'))
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
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
 p_id=>wwv_flow_imp.id(10761498509450922)
,p_name=>'P27_COD_BLOQUE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(20746856940710334)
,p_prompt=>'Bloque'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DESC_BLOQUE, ',
'       COD_BLOQUE',
'  FROM ST_BLOQUES',
' WHERE COD_EMPRESA = :P_COD_EMPRESA',
'   AND COD_SUCURSAL = :P27_DESPOSITO_COD ',
' ORDER BY 1'))
,p_lov_cascade_parent_items=>'P_COD_EMPRESA,P27_DESPOSITO_COD'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
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
 p_id=>wwv_flow_imp.id(10761863514450922)
,p_name=>'P27_TIPO_COMPROB'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(20746856940710334)
,p_prompt=>'Factura'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10762252128450922)
,p_name=>'P27_SERIE_COMPROB'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(20746856940710334)
,p_prompt=>'Serie'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10762618384450923)
,p_name=>'P27_NRO_COMPROB'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(20746856940710334)
,p_prompt=>'Nro.'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(10763409844450928)
,p_validation_name=>'Valida_Deposito'
,p_validation_sequence=>10
,p_validation=>'P27_DESPOSITO_COD'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Debe seleccionar Deposito'
,p_associated_item=>wwv_flow_imp.id(10761003281450920)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(10763886410450928)
,p_validation_name=>'Valida Bloque'
,p_validation_sequence=>20
,p_validation=>'P27_COD_BLOQUE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Debe seleccionar Bloque'
,p_always_execute=>'Y'
,p_associated_item=>wwv_flow_imp.id(10761498509450922)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(10764166044450929)
,p_name=>'Cerrar Recuadro de Dialogo'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(20910737089172815)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10764633557450930)
,p_event_id=>wwv_flow_imp.id(10764166044450929)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(20910737089172815)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(17827454663747706)
,p_event_id=>wwv_flow_imp.id(10764166044450929)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>unistr('apex.message.showPageSuccess(''\00A1Dato Actualizado Correctamente!'');')
);
wwv_flow_imp.component_end;
end;
/
