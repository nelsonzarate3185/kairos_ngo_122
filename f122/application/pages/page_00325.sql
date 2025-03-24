prompt --application/pages/page_00325
begin
--   Manifest
--     PAGE: 00325
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
 p_id=>325
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'VTCONMAR'
,p_alias=>'VTCONMAR'
,p_step_title=>'VTCONMAR'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'JASIS'
,p_last_upd_yyyymmddhh24miss=>'20230210101908'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(158845815440647450)
,p_plug_name=>'VARIABLES'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>1000
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(158846523859647457)
,p_plug_name=>'VTCONMAR'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>990
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(158846625837647458)
,p_plug_name=>'PARAMETROS'
,p_parent_plug_id=>wwv_flow_imp.id(158846523859647457)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(158846761189647459)
,p_plug_name=>'REPORTE'
,p_parent_plug_id=>wwv_flow_imp.id(158846523859647457)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT null link322, C.NRO_COMPROBANTE,m.cod_marca, m.descripcion, C.SER_COMPROBANTE',
'FROM VT_PEDIDOS_CABECERA_REP C, VT_PEDIDOS_DETALLE_REP D, ST_ARTICULOS S, st_marcas m',
'WHERE C.COD_EMPRESA=''1''',
'AND C.COD_EMPRESA=D.COD_EMPRESA',
'AND C.TIP_COMPROBANTE=D.TIP_COMPROBANTE',
'AND C.SER_COMPROBANTE=D.SER_COMPROBANTE',
'AND C.NRO_COMPROBANTE=D.NRO_COMPROBANTE',
'and d.cod_articulo is not null',
'AND S.COD_EMPRESA(+)=D.COD_EMPRESA',
'AND S.COD_ARTICULO(+)=D.COD_ARTICULO',
'AND NVL(C.ANULADO,''N'')<>''S''',
'and m.cod_marca = s.cod_marca',
'and (c.nro_comprobante = :P325_NRO_COMPROBANTE or :P325_NRO_COMPROBANTE is null)',
'and (c.SER_comprobante = :P325_SER_COMPROBANTE or :P325_SER_COMPROBANTE is null)',
'and (s.cod_marca = :P325_COD_MARCA or :P325_COD_MARCA is null)',
'GROUP BY C.NRO_COMPROBANTE,m.cod_marca, m.descripcion, C.SER_COMPROBANTE',
'union all',
'SELECT null link322,C.NRO_COMPROBANTE,''SS'',''SIN MARCA'' descripcion, C.SER_COMPROBANTE',
'FROM VT_PEDIDOS_CABECERA_REP C, VT_PEDIDOS_DETALLE_REP D, ST_ARTICULOS S',
'WHERE C.COD_EMPRESA=''1''',
'AND C.COD_EMPRESA=D.COD_EMPRESA',
'AND C.TIP_COMPROBANTE=D.TIP_COMPROBANTE',
'AND C.SER_COMPROBANTE=D.SER_COMPROBANTE',
'AND C.NRO_COMPROBANTE=D.NRO_COMPROBANTE',
'AND S.COD_EMPRESA(+)=D.COD_EMPRESA',
'AND S.COD_ARTICULO(+)=D.COD_ARTICULO',
'AND NVL(C.ANULADO,''N'')<>''S''',
'and d.cod_articulo is null',
'and :P325_COD_MARCA is null',
'and (c.nro_comprobante = :P325_NRO_COMPROBANTE or :P325_NRO_COMPROBANTE is null)',
'and (c.SER_comprobante = :P325_SER_COMPROBANTE or :P325_SER_COMPROBANTE is null)',
'GROUP BY C.NRO_COMPROBANTE, C.SER_COMPROBANTE',
'union all',
'SELECT null link322,C.NRO_COMPROBANTE,NVL(m.cod_marca,''SS'') , NVL(m.descripcion,''SIN MARCA''), C.SER_COMPROBANTE',
'FROM CA_PEDIDO_REPUESTO_CAB  C, CA_PEDIDO_REPUESTO_DET D, ST_ARTICULOS S, st_marcas m',
'WHERE C.COD_EMPRESA=''1''',
'AND C.COD_EMPRESA=D.COD_EMPRESA',
'AND C.TIP_COMPROBANTE=D.TIP_COMPROBANTE',
'AND C.SER_COMPROBANTE=D.SER_COMPROBANTE',
'AND C.NRO_COMPROBANTE=D.NRO_COMPROBANTE',
'and d.cod_articulo is not null',
'AND S.COD_EMPRESA(+)=D.COD_EMPRESA',
'AND S.COD_ARTICULO(+)=D.COD_ARTICULO',
'AND NVL(C.ANULADO,''N'')<>''S''',
'and m.cod_marca(+) = s.cod_marca',
'and (c.nro_comprobante = :P325_NRO_COMPROBANTE or :P325_NRO_COMPROBANTE is null)',
'and (c.SER_comprobante = :P325_SER_COMPROBANTE or :P325_SER_COMPROBANTE is null)',
'and (s.cod_marca = :P325_COD_MARCA or :P325_COD_MARCA is null)',
'GROUP BY C.NRO_COMPROBANTE,m.cod_marca, m.descripcion, C.SER_COMPROBANTE;',
' ',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P325_NRO_COMPROBANTE,P325_SER_COMPROBANTE,P325_COD_MARCA'
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
 p_id=>wwv_flow_imp.id(158847178686647464)
,p_max_row_count=>'1000000'
,p_no_data_found_message=>'NO SE ENCONTRARON REGISTROS'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'JUANASIS'
,p_internal_uid=>158847178686647464
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(79529153296915059)
,p_db_column_name=>'NRO_COMPROBANTE'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Nro Comprobante'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(79529558971915059)
,p_db_column_name=>'COD_MARCA'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Cod Marca'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(79529972518915059)
,p_db_column_name=>'DESCRIPCION'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Descripcion'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(79321501942732422)
,p_db_column_name=>'SER_COMPROBANTE'
,p_display_order=>40
,p_column_identifier=>'E'
,p_column_label=>'Ser Comprobante'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(108046086398228025)
,p_db_column_name=>'LINK322'
,p_display_order=>50
,p_column_identifier=>'F'
,p_column_label=>'Ver'
,p_column_link=>'f?p=&APP_ID.:322:&SESSION.::&DEBUG.:RP,322:P322_P_NRO_COMPROBANTE,P322_P_SER_COMPROBANTE,P322_P_COD_MARCA:#NRO_COMPROBANTE#,#SER_COMPROBANTE#,#COD_MARCA#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-view.png" class="apex-edit-view" alt="">'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(159051547543813381)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'795252'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'NRO_COMPROBANTE:COD_MARCA:DESCRIPCION:LINK322:'
,p_break_on=>'0:0:0:0:0'
,p_break_enabled_on=>'0:0:0:0:0'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(79321721891732424)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(158846625837647458)
,p_button_name=>'bt_limpiar'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Limpiar'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(79527265435915055)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(158846625837647458)
,p_button_name=>'bt_Buscar'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Buscar'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(79527629751915055)
,p_name=>'P325_NRO_COMPROBANTE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(158846625837647458)
,p_prompt=>'Nro Comprobante'
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
 p_id=>wwv_flow_imp.id(79528079696915057)
,p_name=>'P325_SER_COMPROBANTE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(158846625837647458)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(79528485903915057)
,p_name=>'P325_COD_MARCA'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(158846625837647458)
,p_prompt=>'Marca'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_MARCAS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cod_marca||'' - ''||descripcion D, cod_marca R',
'from st_marcas',
'order by descripcion;'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- seleccione -'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(79531383526915061)
,p_name=>'P325_COD_EMPRESA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(158845815440647450)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(79531758752915061)
,p_name=>'P325_NOM_EMPRESA'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(158845815440647450)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(79532198622915061)
,p_name=>'P325_COD_SUCURSAL'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(158845815440647450)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(79532570962915062)
,p_name=>'P325_NOM_SUCURSAL'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(158845815440647450)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(79532924050915062)
,p_name=>'P325_COD_USUARIO'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(158845815440647450)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(79533333894915062)
,p_name=>'P325_COD_MODULO'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(158845815440647450)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(79534136684915065)
,p_name=>'da_buscar'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(79527265435915055)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(79534684556915066)
,p_event_id=>wwv_flow_imp.id(79534136684915065)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(158846761189647459)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(79321894851732425)
,p_name=>'da_limpiar'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(79321721891732424)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(79321955220732426)
,p_event_id=>wwv_flow_imp.id(79321894851732425)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P325_NRO_COMPROBANTE,P325_COD_MARCA'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(79533735134915064)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_INIT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P325_COD_USUARIO :=  nvl( :p_Cod_Usuario,user);',
':P325_COD_EMPRESA :=  nvl( :p_Cod_Empresa,''1'' );',
':P325_NOM_EMPRESA :=  nvl( :p_Nom_Empresa, null );',
':P325_COD_SUCURSAL :=  nvl(:p_Cod_Sucursal, ''01'' );',
':P325_NOM_SUCURSAL :=  nvl( :p_Nom_Sucursal,null );',
':P325_COD_MODULO :=  nvl( :p_Cod_Modulo,''VT'') ;',
' ',
''))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp.component_end;
end;
/
