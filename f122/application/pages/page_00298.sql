prompt --application/pages/page_00298
begin
--   Manifest
--     PAGE: 00298
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
 p_id=>298
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'VTPEDAUT'
,p_alias=>'VTPEDAUT1'
,p_step_title=>'Pedido de Repuesto STA'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.btn{',
'    margin-top: 15px;',
'}',
'',
'.u-checkbox {',
'    margin-top: 25px !important;',
'}',
'',
'#btn_cobro {',
'    display: none !important;',
'}',
'',
' ',
'',
' .t-Body-contentInner{    background: #c0d0e6!important;}',
' ',
'',
'.t-Form-label, .t-Form-itemText--pre{',
'    color:  #003A85 !important;     ',
'    font-weight: bold !important; ',
'    } ',
'',
'',
'',
'    .a-IRR-toolbar, .a-IRR-content',
'    {    background: #d0e0f783!important;}',
'',
'',
'.t-Report-colHead, .a-IRR-headerLink, .t-fht-cell {',
'      background: #003a85!important;',
'       color: yellow !important; ',
' }'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'NZARATE'
,p_last_upd_yyyymmddhh24miss=>'20250306114506'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(72951956696453701)
,p_plug_name=>'VARIABLES'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>990
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(72953111174453713)
,p_plug_name=>'CABECERA'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>1050
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(72953236408453714)
,p_plug_name=>'IZQUIERDA'
,p_parent_plug_id=>wwv_flow_imp.id(72953111174453713)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(73909212982687102)
,p_plug_name=>'FACTURA'
,p_parent_plug_id=>wwv_flow_imp.id(72953236408453714)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(72953330845453715)
,p_plug_name=>'DERECHA'
,p_parent_plug_id=>wwv_flow_imp.id(72953111174453713)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(72954561513453727)
,p_plug_name=>'REPORTE ARTICULOSSSS'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>1060
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT    ',
'        seq_id SEQ_ID_ARTICULO,          ',
'        C001 COD_ARTICULO,',
'        C002 CANTIDAD,',
'        N001 PRECIO_UNITARIO,',
'        N002 PORC_DESCUENTO,',
'        N003 MONTO_TOTAL,',
'        C003 COD_EMPRESA,',
'        C004 TICOMPROBANTE,',
'        C005 SER_COMPROBANTE,',
'        C006 NRO_COMPROBANTE,',
'        NULL EDITAR,',
'        NULL ELIMINAR',
'           ',
'FROM APEX_COLLECTIONS',
'WHERE COLLECTION_NAME = ''ARTICULOS''',
'AND nvl(c020, ''O'') <> ''B''',
'AND :P298_INDICADOR_REPORT_ART = ''1'';'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P298_INDICADOR_REPORT_ART'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'REPORTE ARTICULOSSSS'
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
 p_id=>wwv_flow_imp.id(75542092584544108)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'EMILIANOP'
,p_internal_uid=>75542092584544108
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(75542129344544109)
,p_db_column_name=>'SEQ_ID_ARTICULO'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Seq Id Articulo'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(75542234802544110)
,p_db_column_name=>'COD_ARTICULO'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Articulo'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'CENTER'
,p_rpt_named_lov=>wwv_flow_imp.id(74281506810549066)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(75542360060544111)
,p_db_column_name=>'CANTIDAD'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Cantidad'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(75542401307544112)
,p_db_column_name=>'PRECIO_UNITARIO'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Precio Unitario'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(75542533787544113)
,p_db_column_name=>'PORC_DESCUENTO'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Porc Descuento'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(75542612569544114)
,p_db_column_name=>'MONTO_TOTAL'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Monto Total'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(75542715736544115)
,p_db_column_name=>'COD_EMPRESA'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Cod Empresa'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(75542800544544116)
,p_db_column_name=>'TICOMPROBANTE'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Ticomprobante'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(75542956723544117)
,p_db_column_name=>'SER_COMPROBANTE'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Ser Comprobante'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(75543086046544118)
,p_db_column_name=>'NRO_COMPROBANTE'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Nro Comprobante'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(75543159183544119)
,p_db_column_name=>'EDITAR'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Editar'
,p_column_link=>'javascript:$s(''P298_SEQ_ID_EDITAR_ARTICULO'',''#SEQ_ID_ARTICULO#'');'
,p_column_linktext=>'<span aria-hidden="true" class="fa fa-edit"></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(75543226254544120)
,p_db_column_name=>'ELIMINAR'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Eliminar'
,p_column_link=>'javascript:$s(''P298_SEQ_ID_ELIMINAR_ARTICULO'',''#SEQ_ID_ARTICULO#'');'
,p_column_linktext=>'<span class="fa fa-trash" aria-hidden="true"></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(75847106832391670)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'758472'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'SEQ_ID_ARTICULO:COD_ARTICULO:CANTIDAD:PRECIO_UNITARIO:PORC_DESCUENTO:MONTO_TOTAL:COD_EMPRESA:TICOMPROBANTE:SER_COMPROBANTE:NRO_COMPROBANTE:EDITAR:ELIMINAR'
,p_sum_columns_on_break=>'MONTO_TOTAL'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(73910397327687113)
,p_plug_name=>'CREAR/EDITAR ARTICULO'
,p_parent_plug_id=>wwv_flow_imp.id(72954561513453727)
,p_region_template_options=>'#DEFAULT#:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(40120082745263659)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(72954698120453728)
,p_plug_name=>'CABECERA_PIE'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>1070
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(72954711495453729)
,p_plug_name=>'IZQUIERDA'
,p_parent_plug_id=>wwv_flow_imp.id(72954698120453728)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(72954835856453730)
,p_plug_name=>'DERECHA'
,p_parent_plug_id=>wwv_flow_imp.id(72954698120453728)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(73911938556687129)
,p_plug_name=>'INDICADORES'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>1020
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(75543485147544122)
,p_plug_name=>'SEQ_ID'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>1030
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(78107958287254406)
,p_plug_name=>'BUSCADOR PEDIDO'
,p_region_css_classes=>'js-dialog-size1200x580'
,p_region_template_options=>'#DEFAULT#:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>1080
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(78108074101254407)
,p_plug_name=>'RESULTADO BUSQUEDA'
,p_parent_plug_id=>wwv_flow_imp.id(78107958287254406)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'    SELECT ',
'           NULL SELECCIONAR,',
'           TIP_COMPROBANTE,',
'           SER_COMPROBANTE,',
'           NRO_COMPROBANTE,',
'           TIP_COMPROBANTE_REF,',
'           SER_COMPROBANTE_REF,',
'           NRO_COMPROBANTE_REF,',
'           --NRO_DIARIO,',
'           COD_SUCURSAL,',
'           FEC_COMPROBANTE,',
'           --COD_CLIENTE,',
'           --COD_CONDICION_VENTA,',
'           --COD_LISTA_PRECIO,',
'           --COD_MONEDA,',
'           --COD_USUARIO,',
'           --FEC_ALTA,',
'           --RUC,                                                    ',
'           --OBSERVACION,',
'           --P_TIPO,',
'           --CI,',
'           --GARANTIA,',
'           --RETIRA_DE,',
'           ROWID ROW_ID_PROYECTO         ',
'',
'',
'    FROM   VT_PEDIDOS_CABECERA_REP',
'    WHERE  COD_EMPRESA = :P_COD_EMPRESA',
'    AND    NVL(:P298_COD_SUCURSAL_FILTRO, COD_SUCURSAL) = COD_SUCURSAL',
'    AND    NVL(:P298_TIP_COMPROBANTE_FILTRO, TIP_COMPROBANTE) = TIP_COMPROBANTE',
'    AND    NVL(:P298_SER_COMPROBANTE_FILTRO, SER_COMPROBANTE) = SER_COMPROBANTE    ',
'    AND    NRO_COMPROBANTE = :P298_NRO_COMPROBANTE_FILTRO',
'    AND    NVL(:P298_FEC_COMPROBANTE_FILTRO, FEC_COMPROBANTE) = FEC_COMPROBANTE',
'    AND    :P298_INDICADOR_REPORT_BUS = ''1''    ',
'    AND    NVL(:P298_COD_SUCURSAL_FILTRO, COD_SUCURSAL) = COD_SUCURSAL',
'    AND    NVL(:P298_COD_SUCURSAL_FILTRO, COD_SUCURSAL) = COD_SUCURSAL',
'',
'',
'',
' '))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P_COD_EMPRESA,P298_COD_SUCURSAL_FILTRO,P298_TIP_COMPROBANTE_FILTRO,P298_SER_COMPROBANTE_FILTRO,P298_NRO_COMPROBANTE_FILTRO,P298_FEC_COMPROBANTE_FILTRO,P298_INDICADOR_REPORT_BUS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'RESULTADO BUSQUEDA'
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
 p_id=>wwv_flow_imp.id(78108115128254408)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'EMILIANOP'
,p_internal_uid=>78108115128254408
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(78108991902254416)
,p_db_column_name=>'TIP_COMPROBANTE'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Tip Comprobante'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(78109089659254417)
,p_db_column_name=>'SER_COMPROBANTE'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Ser Comprobante'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(78109195763254418)
,p_db_column_name=>'NRO_COMPROBANTE'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Nro Comprobante'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(78109389035254420)
,p_db_column_name=>'COD_SUCURSAL'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Cod Sucursal'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(78109436380254421)
,p_db_column_name=>'FEC_COMPROBANTE'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Fec Comprobante'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(78111017424254437)
,p_db_column_name=>'SELECCIONAR'
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>'Seleccionar'
,p_column_link=>'javascript:$s(''P298_ROW_ID_SELECCIONAR_PED'',''#ROW_ID_PROYECTO#'');'
,p_column_linktext=>'<span aria-hidden="true" class="fa fa-edit"></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(78481787329266102)
,p_db_column_name=>'ROW_ID_PROYECTO'
,p_display_order=>200
,p_column_identifier=>'U'
,p_column_label=>'Row Id Proyecto'
,p_column_type=>'OTHER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(320971679718631901)
,p_db_column_name=>'TIP_COMPROBANTE_REF'
,p_display_order=>210
,p_column_identifier=>'V'
,p_column_label=>'Tip ORT'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(320971773747631902)
,p_db_column_name=>'SER_COMPROBANTE_REF'
,p_display_order=>220
,p_column_identifier=>'W'
,p_column_label=>'Ser ORT'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(320971878915631903)
,p_db_column_name=>'NRO_COMPROBANTE_REF'
,p_display_order=>230
,p_column_identifier=>'X'
,p_column_label=>'Nro ORT'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(78372277333975716)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'783723'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'SELECCIONAR:TIP_COMPROBANTE:SER_COMPROBANTE:NRO_COMPROBANTE:FEC_COMPROBANTE:TIP_COMPROBANTE_REF:SER_COMPROBANTE_REF:NRO_COMPROBANTE_REF:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(78108241032254409)
,p_plug_name=>'FILTROS'
,p_parent_plug_id=>wwv_flow_imp.id(78107958287254406)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>5
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(78112352447254450)
,p_plug_name=>'ROW_ID'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>1040
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(78482884065266113)
,p_plug_name=>'VARIABLES ENVIAR'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>1000
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(78483136663266116)
,p_plug_name=>'URLS'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>1010
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(320136341966046840)
,p_plug_name=>'BUSCADORES'
,p_region_template_options=>'#DEFAULT#:js-dialog-autoheight:js-dialog-size720x480'
,p_plug_template=>wwv_flow_imp.id(40120082745263659)
,p_plug_display_sequence=>2000
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(321540034044410003)
,p_plug_name=>'PEDIDOS'
,p_parent_plug_id=>wwv_flow_imp.id(320136341966046840)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select COD_EMPRESA,',
'       TIP_COMPROBANTE,',
'       SER_COMPROBANTE,',
'       NRO_COMPROBANTE,',
'       TIP_COMPROBANTE_REF,',
'       SER_COMPROBANTE_REF,',
'       NRO_COMPROBANTE_REF,',
'       NULL SELECCIONAR,',
'       ROWID ROW_ID_PED',
'from VT_PEDIDOS_CABECERA_REP',
'where cod_empresa = :P_COD_EMPRESA',
'--and tip_comprobante in (''FCR'',''FCO'',''NCR'')',
'AND TIP_COMPROBANTE_REF IS NOT NULL'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'PEDIDOS'
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
 p_id=>wwv_flow_imp.id(321540198379410004)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'EMILIANOP'
,p_internal_uid=>321540198379410004
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(321540279113410005)
,p_db_column_name=>'COD_EMPRESA'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Cod Empresa'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(321540305087410006)
,p_db_column_name=>'TIP_COMPROBANTE'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Tip Comprobante'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(321540453565410007)
,p_db_column_name=>'SER_COMPROBANTE'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Ser Comprobante'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(321540561449410008)
,p_db_column_name=>'NRO_COMPROBANTE'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Nro Comprobante'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(321541028291410013)
,p_db_column_name=>'TIP_COMPROBANTE_REF'
,p_display_order=>90
,p_column_identifier=>'E'
,p_column_label=>'Tipo ORT'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(321541148242410014)
,p_db_column_name=>'SER_COMPROBANTE_REF'
,p_display_order=>100
,p_column_identifier=>'F'
,p_column_label=>'Serie ORT'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(321541230968410015)
,p_db_column_name=>'NRO_COMPROBANTE_REF'
,p_display_order=>110
,p_column_identifier=>'G'
,p_column_label=>'Nro. ORT'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(321551428804425417)
,p_db_column_name=>'SELECCIONAR'
,p_display_order=>120
,p_column_identifier=>'H'
,p_column_label=>'Seleccionar'
,p_column_link=>'javascript:$s(''P298_SELECCIONAR_PED'',''#ROW_ID_PED#'');'
,p_column_linktext=>'<span aria-hidden="true" class="fa fa-edit"></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(321551571214425418)
,p_db_column_name=>'ROW_ID_PED'
,p_display_order=>130
,p_column_identifier=>'I'
,p_column_label=>'Row Id Ped'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_column_type=>'OTHER'
,p_column_alignment=>'CENTER'
,p_rpt_show_filter_lov=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(321565037622431121)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'3215651'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>10
,p_report_columns=>'SELECCIONAR:TIP_COMPROBANTE:SER_COMPROBANTE:NRO_COMPROBANTE:TIP_COMPROBANTE_REF:SER_COMPROBANTE_REF:NRO_COMPROBANTE_REF:'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(320104108678820301)
,p_button_sequence=>170
,p_button_plug_id=>wwv_flow_imp.id(73909212982687102)
,p_button_name=>'P298_ABRIR_BUSCAR_OT'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Buscar OT'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'LEFT'
,p_warn_on_unsaved_changes=>null
,p_button_condition_type=>'NEVER'
,p_icon_css_classes=>'fa-search'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(321539892866410001)
,p_button_sequence=>180
,p_button_plug_id=>wwv_flow_imp.id(73909212982687102)
,p_button_name=>'P298_ABRIR_BUSCAR_PEDIDO'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Cargar Pedido'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'LEFT'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-search'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(73912475610687134)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(72953330845453715)
,p_button_name=>'P298_BOTON_CREAR_CLIENTE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Crear Cliente'
,p_button_redirect_url=>'f?p=&APP_ID.:92:&SESSION.::&DEBUG.::P92_INDICADOR_PAG_298,P92_TIP_OPERACION:CREACION,PER'
,p_icon_css_classes=>'fa-address-book-o'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(75544311980544131)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(73910397327687113)
,p_button_name=>'P298_BOTON_CONSULTAR_STOCK'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Consultar Stock'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(73914003726687150)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_imp.id(73909212982687102)
,p_button_name=>'P298_BOTON_BUSCAR_FACTURA'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Detalles'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-search'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(75541376788544101)
,p_button_sequence=>110
,p_button_plug_id=>wwv_flow_imp.id(73909212982687102)
,p_button_name=>'P298_BOTON_BUSCAR_NCR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Detalles'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-search'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(76729288066030039)
,p_button_sequence=>130
,p_button_plug_id=>wwv_flow_imp.id(72953236408453714)
,p_button_name=>'P298_BOTON_BUSCAR_PEDIDO'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Buscar Pedido'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-search'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(75541461130544102)
,p_button_sequence=>160
,p_button_plug_id=>wwv_flow_imp.id(73909212982687102)
,p_button_name=>'P298_BOTON_BUSCAR_OT'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Detalles'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-search'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(78110729458254434)
,p_button_sequence=>130
,p_button_plug_id=>wwv_flow_imp.id(78108241032254409)
,p_button_name=>'BUSCAR_REPORTE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Buscar'
,p_button_position=>'BOTTOM'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp.component_end;
end;
/
begin
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.04.12'
,p_release=>'22.1.0'
,p_default_workspace_id=>2715162693355865
,p_default_application_id=>122
,p_default_id_offset=>0
,p_default_owner=>'INV'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(78111487481254441)
,p_button_sequence=>140
,p_button_plug_id=>wwv_flow_imp.id(78108241032254409)
,p_button_name=>'LIMPIAR_REPORTE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Limpiar'
,p_button_position=>'BOTTOM'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(73910690701687116)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(73910397327687113)
,p_button_name=>'P298_BOTON_CERRAR_CR_ED'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Cerrar'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(73911483320687124)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(73910397327687113)
,p_button_name=>'P298_BOTON_ACEPTAR_CR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Aceptar'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(73911512747687125)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(73910397327687113)
,p_button_name=>'P298_BOTON_ACEPTAR_ED'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Aceptar'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(73910042571687110)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(72954561513453727)
,p_button_name=>'P298_BOTON_AGREGAR_ARTICULO'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Agregar Articulo'
,p_button_position=>'TOP'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(347919807775606722)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(72953111174453713)
,p_button_name=>'P298_BOTON_volver'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Volver'
,p_button_position=>'TOP'
,p_button_redirect_url=>'f?p=&APP_ID.:315:&SESSION.::&DEBUG.:::'
,p_button_css_classes=>'u-color-24-bg'
,p_icon_css_classes=>'fa-angle-left'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(76725428898030001)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(72953111174453713)
,p_button_name=>'P298_BOTON_GUARDAR_CAMBIOS'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Guardar Cambios'
,p_button_position=>'TOP'
,p_button_execute_validations=>'N'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(75544937740544137)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(72953111174453713)
,p_button_name=>'P298_BOTON_LIMPIAR'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Limpiar'
,p_button_position=>'TOP'
,p_button_execute_validations=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(64602337350457122)
,p_name=>'P298_COD_ORIGEN'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(72951956696453701)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(72952001599453702)
,p_name=>'P298_COD_USUARIO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(72951956696453701)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(72952104320453703)
,p_name=>'P298_COD_MODULO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(72951956696453701)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(72952230968453704)
,p_name=>'P298_SER_REMISION'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(72951956696453701)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(72952344173453705)
,p_name=>'P298_COD_ARTICULO_REM'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(72951956696453701)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(72952421473453706)
,p_name=>'P298_TIP_REMISION'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(72951956696453701)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(72952593573453707)
,p_name=>'P298_CLIENTE_CONTADO'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(72951956696453701)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(72952628944453708)
,p_name=>'P298_CAMBIA_NRO'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(72951956696453701)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(72952793773453709)
,p_name=>'P298_CARGA_SUCURSAL'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(72951956696453701)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(72952863350453710)
,p_name=>'P298_MODIFICA_PRECIO_VENTA'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(72951956696453701)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(72952998608453711)
,p_name=>'P298_COD_EMPRESA'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(72951956696453701)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(72953073780453712)
,p_name=>'P298_COD_FORMA'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(72951956696453701)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(72953480760453716)
,p_name=>'P298_COD_CLIENTE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(72953330845453715)
,p_prompt=>'Cliente'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_CLIENTES_VTPEDAUT'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT c.cod_cliente || '' - '' || ltrim(rtrim(nvl(p.nombre, p.nomb_fantasia))) D, ',
'       c.cod_cliente R, ',
'       I.NUMERO',
'  FROM cc_clientes c, personas p, ident_personas i',
' WHERE c.cod_empresa = :P_COD_EMPRESA',
'   AND c.cod_persona = p.cod_persona',
'   AND c.estado <> ''B''',
'   AND c.estado <> ''I''',
'   AND i.cod_persona(+) = p.cod_persona',
'   AND i.cod_ident(+)=''CI''',
' ORDER BY 1'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(72953584509453717)
,p_name=>'P298_DIRECCION'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(72953330845453715)
,p_prompt=>unistr('Direcci\00F3n')
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
 p_id=>wwv_flow_imp.id(72953621233453718)
,p_name=>'P298_TELEFONO'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(72953330845453715)
,p_prompt=>unistr('Tel\00E9fono')
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
 p_id=>wwv_flow_imp.id(72953746553453719)
,p_name=>'P298_RUC'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(72953330845453715)
,p_prompt=>'R.U.C'
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
 p_id=>wwv_flow_imp.id(72953803464453720)
,p_name=>'P298_CI'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(72953330845453715)
,p_prompt=>'C.I'
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
 p_id=>wwv_flow_imp.id(72953957118453721)
,p_name=>'P298_GARANTIA'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(72953330845453715)
,p_prompt=>'Tipo'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:1-) GARANTIA;G,2-) PARTICULAR;P'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(72954099870453722)
,p_name=>'P298_RETIRA_DE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(72953330845453715)
,p_prompt=>'Retira de'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:ARTIGAS;ARTIGAS,CDE;CDE,SLO;SLO,OVIEDO;OVIEDO'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(72954153144453723)
,p_name=>'P298_COD_CONDICION_VENTA'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(72953330845453715)
,p_prompt=>'Cond. de venta'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_CONDICIONES_VENTA_VTPEDAUT'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT c.cod_condicion_venta || '' - '' || c.descripcion D, c.cod_condicion_venta R, c.cod_lista_precio, l.descripcion lista_precio ',
'FROM cc_condiciones_ventas c, vt_listas_precios_cab l ',
'WHERE c.cod_empresa = :P_COD_EMPRESA',
'AND c.estado = ''A'' ',
'AND l.cod_empresa = c.cod_empresa ',
'AND c.cod_lista_precio = l.cod_lista_precio'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(72954238676453724)
,p_name=>'P298_COD_LISTA_PRECIO'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(72953330845453715)
,p_prompt=>'Lista de precios'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LVLISTAPRECIO'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT l.cod_lista_precio||'' - ''||l.descripcion D, ',
'       l.cod_lista_precio R ',
'  FROM vt_listas_precios_cab l, monedas m ',
' WHERE l.cod_empresa = :P_COD_EMPRESA',
'   AND l.cod_moneda = m.cod_moneda ',
'   AND l.estado = ''A'';'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(72954306247453725)
,p_name=>'P298_COD_MONEDA'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(72953330845453715)
,p_prompt=>'Moneda'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LVMONEDAS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT COD_MONEDA R, ',
'	   SIGLAS, ',
'	   TIPO_CAMBIO_DIA, ',
'	   DESCRIPCION D',
'  FROM MONEDAS ',
' ORDER BY DESCRIPCION'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(72954462624453726)
,p_name=>'P298_OBSERVACION'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(72953330845453715)
,p_prompt=>unistr('Observaci\00F3n')
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cHeight=>5
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(72954927589453731)
,p_name=>'P298_FEC_ALTA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(72954711495453729)
,p_prompt=>'Fecha de alta'
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
 p_id=>wwv_flow_imp.id(72955042475453732)
,p_name=>'P298_HORA_ALTA'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(72954711495453729)
,p_prompt=>'Hora alta'
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
 p_id=>wwv_flow_imp.id(72955197426453733)
,p_name=>'P298_COD_USUARIO_CAB'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(72954711495453729)
,p_prompt=>'Usuario'
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
 p_id=>wwv_flow_imp.id(72955218326453734)
,p_name=>'P298_TRASLADO'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(72954711495453729)
,p_prompt=>'Traslado'
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
 p_id=>wwv_flow_imp.id(72955310455453735)
,p_name=>'P298_RUTEO'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(72954711495453729)
,p_prompt=>'Ruteo'
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
 p_id=>wwv_flow_imp.id(72955412694453736)
,p_name=>'P298_ANULADO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(72954835856453730)
,p_item_default=>'N'
,p_prompt=>'Anulado'
,p_source=>'N'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(72955591260453737)
,p_name=>'P298_COD_USUARIO_ANU'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(72954835856453730)
,p_prompt=>'Usuario'
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
 p_id=>wwv_flow_imp.id(72955616491453738)
,p_name=>'P298_FEC_ESTADO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(72954835856453730)
,p_prompt=>'Fecha'
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
 p_id=>wwv_flow_imp.id(72955747653453739)
,p_name=>'P298_COD_MOTIVO_ANU'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(72954835856453730)
,p_prompt=>'Motivo'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_MOTIVO_VTPEDAUT'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT cod_motivo_anu || '' - '' || descripcion D, cod_motivo_anu R',
'  FROM VT_MOTIVO_ANULACION ',
' WHERE cod_empresa = :P_COD_EMPRESA ',
'   AND tip_motivo = ''3'' ',
'ORDER BY 1'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(72955811916453740)
,p_name=>'P298_COD_SUCURSAL'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(72953236408453714)
,p_prompt=>'Sucursal'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_SUCURSALES'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT cod_sucursal||'' - ''||descripcion L, ',
'         cod_sucursal V',
'    FROM sucursales ',
'   WHERE cod_empresa = :P_COD_EMPRESA',
'ORDER BY descripcion'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(72955996781453741)
,p_name=>'P298_TIP_COMPROBANTE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(72953236408453714)
,p_prompt=>'Tip Comprobante'
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
 p_id=>wwv_flow_imp.id(72956001324453742)
,p_name=>'P298_SER_COMPROBANTE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(72953236408453714)
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
 p_id=>wwv_flow_imp.id(72956138926453743)
,p_name=>'P298_NRO_COMPROBANTE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(72953236408453714)
,p_prompt=>unistr('N\00FAmero')
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
 p_id=>wwv_flow_imp.id(72956264510453744)
,p_name=>'P298_FEC_COMPROBANTE'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(72953236408453714)
,p_prompt=>'Fecha'
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>30
,p_begin_on_new_line=>'N'
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
 p_id=>wwv_flow_imp.id(72956345368453745)
,p_name=>'P298_NRO_DIARIO'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(72953236408453714)
,p_prompt=>unistr('N\00FAmero Control')
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
 p_id=>wwv_flow_imp.id(72956437354453746)
,p_name=>'P298_TOT_CANTIDAD'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(72951956696453701)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(72956644700453748)
,p_name=>'P298_P_TIPO'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(72951956696453701)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(72956801846453750)
,p_name=>'P298_COD_CONCEPTO_REM'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(72951956696453701)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(73909108667687101)
,p_name=>'P298_IMPRIME_ART_CLIENTE'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(72951956696453701)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(73909323577687103)
,p_name=>'P298_TIP_FACTURA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(73909212982687102)
,p_prompt=>'Tipo Factura'
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
 p_id=>wwv_flow_imp.id(73909443392687104)
,p_name=>'P298_SER_FACTURA'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(73909212982687102)
,p_prompt=>'Serie Factura'
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
 p_id=>wwv_flow_imp.id(73909597725687105)
,p_name=>'P298_NRO_FACTURA'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(73909212982687102)
,p_prompt=>'Nro. Factura'
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
 p_id=>wwv_flow_imp.id(73909615057687106)
,p_name=>'P298_TIP_NCR'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(73909212982687102)
,p_prompt=>'Tipo NCR'
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
 p_id=>wwv_flow_imp.id(73909788663687107)
,p_name=>'P298_SER_NCR'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(73909212982687102)
,p_prompt=>'Serie NCR'
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
 p_id=>wwv_flow_imp.id(73909805505687108)
,p_name=>'P298_NRO_NCR'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(73909212982687102)
,p_prompt=>'Nro. NCR'
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
 p_id=>wwv_flow_imp.id(73910962200687119)
,p_name=>'P298_COD_ARTICULO_CR_ED'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(73910397327687113)
,p_prompt=>'Articulo'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_ARTICULOS_VTPEDAUT'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT cod_articulo || '' - '' || descripcion D, ',
'       cod_articulo R ',
'FROM st_articulos ',
'WHERE cod_empresa = :P_COD_EMPRESA ',
'AND ( estado is null or estado <> ''I'' ) ',
'ORDER BY descripcion'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186937130263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(73911012109687120)
,p_name=>'P298_CANTIDAD_CR_ED'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(73910397327687113)
,p_prompt=>'Cantidad'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186937130263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(73911165519687121)
,p_name=>'P298_PRECIO_UNITARIO_CR_ED'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(73910397327687113)
,p_prompt=>'Precio Unitario'
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
 p_id=>wwv_flow_imp.id(73911283500687122)
,p_name=>'P298_PORC_DESCUENTO_CR_ED'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(73910397327687113)
,p_prompt=>'Porc Descuento'
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
 p_id=>wwv_flow_imp.id(73911395102687123)
,p_name=>'P298_MONTO_TOTAL_CR_ED'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(73910397327687113)
,p_prompt=>'Monto Total'
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
 p_id=>wwv_flow_imp.id(73912005681687130)
,p_name=>'P298_INDICADOR_REPORT_ART'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(73911938556687129)
,p_item_default=>'1'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(73912112675687131)
,p_name=>'P298_TIP_COMPROBANTE_REF'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(73909212982687102)
,p_prompt=>'Tipo Orden de Trabajo'
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
 p_id=>wwv_flow_imp.id(73912287450687132)
,p_name=>'P298_SER_COMPROBANTE_REF'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(73909212982687102)
,p_prompt=>'Serie Orden de Trabajo'
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
 p_id=>wwv_flow_imp.id(73912384118687133)
,p_name=>'P298_NRO_COMPROBANTE_REF'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(73909212982687102)
,p_prompt=>'Nro. Orden de Trabajo'
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
 p_id=>wwv_flow_imp.id(73913834624687148)
,p_name=>'P298_COD_PERSONA'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(72951956696453701)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(75543557727544123)
,p_name=>'P298_SEQ_ID_ELIMINAR_ARTICULO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(75543485147544122)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(75543639754544124)
,p_name=>'P298_SEQ_ID_EDITAR_ARTICULO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(75543485147544122)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(76726687004030013)
,p_name=>'P298_INDICADOR_ALERTA'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(73911938556687129)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(76729761461030044)
,p_name=>'P298_INDICADOR_PED_NOT_FOUND'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(73911938556687129)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(78108366363254410)
,p_name=>'P298_COD_SUCURSAL_FILTRO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(78108241032254409)
,p_prompt=>'Sucursal'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_SUCURSALES'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT cod_sucursal||'' - ''||descripcion L, ',
'         cod_sucursal V',
'    FROM sucursales ',
'   WHERE cod_empresa = :P_COD_EMPRESA',
'ORDER BY descripcion'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(78108471672254411)
,p_name=>'P298_TIP_COMPROBANTE_FILTRO'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(78108241032254409)
,p_prompt=>'Tip Comprobante'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp.component_end;
end;
/
begin
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.04.12'
,p_release=>'22.1.0'
,p_default_workspace_id=>2715162693355865
,p_default_application_id=>122
,p_default_id_offset=>0
,p_default_owner=>'INV'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(78108566893254412)
,p_name=>'P298_SER_COMPROBANTE_FILTRO'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(78108241032254409)
,p_prompt=>'Serie Comprobante'
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
 p_id=>wwv_flow_imp.id(78108653544254413)
,p_name=>'P298_NRO_COMPROBANTE_FILTRO'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(78108241032254409)
,p_prompt=>unistr('N\00FAmero Comprobante')
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
 p_id=>wwv_flow_imp.id(78108716647254414)
,p_name=>'P298_FEC_COMPROBANTE_FILTRO'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(78108241032254409)
,p_prompt=>'Fecha'
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>30
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
 p_id=>wwv_flow_imp.id(78108888535254415)
,p_name=>'P298_NRO_DIARIO_FILTRO'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(78108241032254409)
,p_prompt=>unistr('N\00FAmero Control')
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
 p_id=>wwv_flow_imp.id(78111857862254445)
,p_name=>'P298_INDICADOR_REPORT_BUS'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(73911938556687129)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(78481693025266101)
,p_name=>'P298_ROW_ID_SELECCIONAR_PED'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(78112352447254450)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(78482964613266114)
,p_name=>'P298_COD_ARTICULO_ENVIAR'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(78482884065266113)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(78483286495266117)
,p_name=>'P298_URL_65'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(78483136663266116)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(78484186536266126)
,p_name=>'P298_URL_193'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(78483136663266116)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(78484247881266127)
,p_name=>'P298_TIP_COMPROBANTE_ENVIAR'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(78482884065266113)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(78484324120266128)
,p_name=>'P298_SER_COMPROBANTE_ENVIAR'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(78482884065266113)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(78484465621266129)
,p_name=>'P298_NRO_COMPROBANTE_ENVIAR'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(78482884065266113)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(78485031415266135)
,p_name=>'P298_URL_103'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(78483136663266116)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(78485693447266141)
,p_name=>'P298_URL_244'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(78483136663266116)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(83789882487167901)
,p_name=>'P298_INDICADOR_MOSTRAR_BOT'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(73911938556687129)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(320133946061046816)
,p_name=>'P298_SELECCIONAR_PED'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(72951956696453701)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(347922369899606747)
,p_name=>'P298_URL'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(73909212982687102)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(642181061898635229)
,p_name=>'P298_SER_PER'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(78482884065266113)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(642181107962635230)
,p_name=>'P298_NRO_PER'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(78482884065266113)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(76725853645030005)
,p_validation_name=>'VL_RETIRA_DE'
,p_validation_sequence=>10
,p_validation=>'P298_RETIRA_DE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Seleccione el lugar para retirar.'
,p_always_execute=>'Y'
,p_validation_condition=>'GUARDAR'
,p_validation_condition_type=>'REQUEST_EQUALS_CONDITION'
,p_associated_item=>wwv_flow_imp.id(72954099870453722)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(76725989713030006)
,p_validation_name=>'VL_TIP_COMPROBANTE'
,p_validation_sequence=>20
,p_validation=>'P298_TIP_COMPROBANTE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'El tipo de comprobante no puede ser nulo.'
,p_always_execute=>'Y'
,p_validation_condition=>'GUARDAR'
,p_validation_condition_type=>'REQUEST_EQUALS_CONDITION'
,p_associated_item=>wwv_flow_imp.id(72955996781453741)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(76726019092030007)
,p_validation_name=>'VL_NRO_COMPROBANTE'
,p_validation_sequence=>30
,p_validation=>'P298_NRO_COMPROBANTE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>unistr('El n\00FAmero de comprobante no puede ser nulo.')
,p_always_execute=>'Y'
,p_validation_condition=>'GUARDAR'
,p_validation_condition_type=>'REQUEST_EQUALS_CONDITION'
,p_associated_item=>wwv_flow_imp.id(72956138926453743)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(76726102730030008)
,p_validation_name=>'VL_SER_COMPROBANTE'
,p_validation_sequence=>40
,p_validation=>'P298_SER_COMPROBANTE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'La serie de comprobante no puede ser nula',
'.'))
,p_always_execute=>'Y'
,p_validation_condition=>'GUARDAR'
,p_validation_condition_type=>'REQUEST_EQUALS_CONDITION'
,p_associated_item=>wwv_flow_imp.id(72956001324453742)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(76726204688030009)
,p_validation_name=>'VL_FEC_COMPROBANTE'
,p_validation_sequence=>50
,p_validation=>'P298_FEC_COMPROBANTE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'La fecha del comprobante no puede ser nula.'
,p_always_execute=>'Y'
,p_validation_condition=>'GUARDAR'
,p_validation_condition_type=>'REQUEST_EQUALS_CONDITION'
,p_associated_item=>wwv_flow_imp.id(72956264510453744)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(76726321256030010)
,p_validation_name=>'VL_CLIENTE'
,p_validation_sequence=>60
,p_validation=>'P298_COD_CLIENTE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'El cliente no puede ser nulo.'
,p_always_execute=>'Y'
,p_validation_condition=>'GUARDAR'
,p_validation_condition_type=>'REQUEST_EQUALS_CONDITION'
,p_associated_item=>wwv_flow_imp.id(72953480760453716)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(76728229541030029)
,p_validation_name=>'VL_GARANTIA'
,p_validation_sequence=>70
,p_validation=>'P298_GARANTIA'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>unistr('La garant\00EDa no puede ser nula.')
,p_always_execute=>'Y'
,p_validation_condition=>'GUARDAR'
,p_validation_condition_type=>'REQUEST_EQUALS_CONDITION'
,p_associated_item=>wwv_flow_imp.id(72953957118453721)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(78485831317266143)
,p_validation_name=>'VL_COD_MOTIVO'
,p_validation_sequence=>80
,p_validation=>'P298_COD_MOTIVO_ANU'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'El motivo no puede ser nulo para un pedido anulado.'
,p_validation_condition=>'P298_ANULADO'
,p_validation_condition2=>'S'
,p_validation_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(73910132378687111)
,p_name=>'DA_SETEAR_USUARIO_ANU'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P298_ANULADO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(73910267582687112)
,p_event_id=>wwv_flow_imp.id(73910132378687111)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    IF nvl(:P298_ANULADO,''N'')=''S'' THEN',
'	    :P298_COD_USUARIO_ANU := :APP_USER;',
'        :P298_FEC_ESTADO := SYSDATE;',
'    ELSE',
'       :P298_COD_USUARIO_ANU := NULL; ',
'       :P298_FEC_ESTADO := NULL;',
'       :P298_COD_MOTIVO_ANU := NULL;',
'    END IF;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'         raise_application_error(-20000, SQLERRM);',
'END;'))
,p_attribute_02=>'P298_ANULADO'
,p_attribute_03=>'P298_COD_USUARIO_ANU,P298_FEC_ESTADO,P298_COD_MOTIVO_ANU'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(73910417134687114)
,p_name=>'DA_ABRIR_ARTICULO_CR_ED'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(73910042571687110)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(73911828823687128)
,p_event_id=>wwv_flow_imp.id(73910417134687114)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P298_COD_ARTICULO_CR_ED,P298_CANTIDAD_CR_ED,P298_PRECIO_UNITARIO_CR_ED,P298_PORC_DESCUENTO_CR_ED,P298_MONTO_TOTAL_CR_ED'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(73910578062687115)
,p_event_id=>wwv_flow_imp.id(73910417134687114)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(73910397327687113)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(73911600217687126)
,p_event_id=>wwv_flow_imp.id(73910417134687114)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(73911483320687124)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(73911705685687127)
,p_event_id=>wwv_flow_imp.id(73910417134687114)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(73911512747687125)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(73910784822687117)
,p_name=>'DA_CERRAR_ARTICULO_CR_ED'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(73910690701687116)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(73910887359687118)
,p_event_id=>wwv_flow_imp.id(73910784822687117)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(73910397327687113)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(73912973331687139)
,p_name=>'DA_SETEAR_CLIENTE'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(73912475610687134)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(73913192117687141)
,p_event_id=>wwv_flow_imp.id(73912973331687139)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'   	SELECT max(to_number(NVL(cod_cliente,0)))',
'   	 INTO :P298_COD_CLIENTE',
'   	 FROM cc_clientes',
'   	 WHERE cod_empresa = :P_COD_EMPRESA',
'   	 AND nro_llamada IS NULL',
'   	 AND TIP_OPERACION = ''PER'';',
'   	 actualiza_cliente(:P_COD_EMPRESA, :P298_COD_CLIENTE, ''1'');',
'',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        raise_application_error(-20000, SQLERRM);',
'END;'))
,p_attribute_02=>'P298_COD_EMPRESA,P298_COD_CLIENTE'
,p_attribute_03=>'P298_COD_CLIENTE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(73913535695687145)
,p_event_id=>wwv_flow_imp.id(73912973331687139)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P298_COD_CLIENTE'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(76728388446030030)
,p_event_id=>wwv_flow_imp.id(73912973331687139)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_FOCUS'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P298_COD_CLIENTE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(73913687562687146)
,p_name=>'DA_SETEAR_DATOS_CLIENTE'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P298_COD_CLIENTE'
,p_condition_element=>'P298_COD_CLIENTE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(73913751660687147)
,p_event_id=>wwv_flow_imp.id(73913687562687146)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'    DECLARE',
'        v_cod_persona varchar2(15);        ',
'    BEGIN',
'        SELECT c.cod_persona',
'            INTO v_cod_persona',
'            FROM cc_clientes c, personas p',
'            WHERE c.cod_empresa = :P_COD_EMPRESA',
'              AND c.cod_cliente = :P298_COD_CLIENTE',
'              AND c.cod_persona = p.cod_persona ',
'              AND  nvl (c.estado,''A'') <> ''I'';',
'',
'        BEGIN',
'            SELECT detalle',
'            INTO :P298_DIRECCION',
'            FROM direc_personas',
'            WHERE cod_persona = v_cod_persona',
'              AND nvl( por_defecto, ''N'' ) = ''S''',
'              AND rownum = 1;',
'',
'        EXCEPTION',
'            WHEN NO_DATA_FOUND THEN',
'               :P298_DIRECCION := NULL;',
'        END;',
'',
'        BEGIN',
'            SELECT decode( codigo_area, ''0''  , num_telefono, ',
'                                        ''021'', num_telefono, ',
'                                        ''NOD'', num_telefono,',
'                                        ''('' || codigo_area || '') '' ',
'                                            || num_telefono )',
'            INTO :P298_TELEFONO',
'            FROM telef_personas',
'            WHERE cod_persona = v_cod_persona',
'              AND nvl( por_defecto, ''N'' ) = ''S''',
'              AND rownum = 1;',
'                ',
'        EXCEPTION',
'            WHEN NO_DATA_FOUND THEN',
'            :P298_TELEFONO := NULL;',
'        END;',
'      ',
'        BEGIN',
'            SELECT numero',
'            INTO :P298_RUC',
'            FROM ident_personas',
'            WHERE cod_persona = v_cod_persona',
'              AND cod_ident = ''RUC''',
'              AND rownum    = 1 ;',
'        ',
'        EXCEPTION',
'            WHEN NO_DATA_FOUND THEN',
'            :P298_RUC := NULL;',
'        END;',
'      ',
'      ',
'       BEGIN',
'          SELECT numero',
'            INTO :P298_CI',
'            FROM ident_personas',
'            WHERE cod_persona = v_cod_persona',
'              AND cod_ident = ''CI''',
'              AND rownum    = 1;',
'',
'        EXCEPTION',
'            WHEN NO_DATA_FOUND THEN',
'            :P298_CI := NULL;	',
'        END;',
'',
'        IF :P298_COD_CLIENTE in (''1554'',''1553'',''437'',''4064'',''738'') THEN',
'        	:P298_COD_CONDICION_VENTA := ''30'';',
'        END IF;	',
'',
'    EXCEPTION',
'        WHEN OTHERS THEN',
'            raise_application_error(-20000, SQLERRM);',
'    END;'))
,p_attribute_02=>'P_COD_EMPRESA,P298_COD_CLIENTE'
,p_attribute_03=>'P298_DIRECCION,P298_TELEFONO,P298_RUC,P298_CI,P298_COD_CONDICION_VENTA'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(75541584419544103)
,p_name=>'DA_CREAR_ARTICULO_CR'
,p_event_sequence=>60
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(73911483320687124)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(75541616520544104)
,p_event_id=>wwv_flow_imp.id(75541584419544103)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    IF :P298_COD_ARTICULO_CR_ED IS NULL OR',
'       :P298_CANTIDAD_CR_ED IS NULL',
'    THEN ',
'',
'        :P298_INDICADOR_ALERTA := ''1'';',
'    ELSE',
'',
'        :P298_INDICADOR_ALERTA := ''0'';',
'        :P298_INDICADOR_REPORT_ART := ''1'';',
'        VTPEDAUT.PR_AGREGAR_MIEM_ARTICULOS (PI_COD_EMPRESA => :P_COD_EMPRESA,',
'                                            PI_TIP_COMPROBANTE => :P298_TIP_COMPROBANTE,',
'                                            PI_SER_COMPROBANTE => :P298_SER_COMPROBANTE,',
'                                            PI_NRO_COMPROBANTE => :P298_NRO_COMPROBANTE,',
'                                            PI_COD_ARTICULO => :P298_COD_ARTICULO_CR_ED,',
'                                            PI_CANTIDAD => :P298_CANTIDAD_CR_ED,',
'                                            PI_PRECIO_UNITARIO => :P298_PRECIO_UNITARIO_CR_ED,',
'                                            PI_PORC_DESCUENTO => :P298_PORC_DESCUENTO_CR_ED,',
'                                            PI_MONTO_TOTAL => :P298_MONTO_TOTAL_CR_ED); ',
'    END IF;',
'    ',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'         raise_application_error(-20000, SQLERRM);',
'END;',
'',
''))
,p_attribute_02=>'P_COD_EMPRESA,P298_TIP_COMPROBANTE,P298_SER_COMPROBANTE,P298_NRO_COMPROBANTE,P298_COD_ARTICULO_CR_ED,P298_CANTIDAD_CR_ED,P298_PRECIO_UNITARIO_CR_ED,P298_PORC_DESCUENTO_CR_ED,P298_MONTO_TOTAL_CR_ED'
,p_attribute_03=>'P298_INDICADOR_REPORT_ART,P298_INDICADOR_ALERTA'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(76726703818030014)
,p_event_id=>wwv_flow_imp.id(75541584419544103)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'Compruebe que los campos obligatorios no se encuentren vacios.'
,p_attribute_02=>'CAMPOS VACIOS'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P298_INDICADOR_ALERTA'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(75541781641544105)
,p_event_id=>wwv_flow_imp.id(75541584419544103)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(73910397327687113)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P298_INDICADOR_ALERTA'
,p_client_condition_expression=>'0'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(75541896593544106)
,p_event_id=>wwv_flow_imp.id(75541584419544103)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(72954561513453727)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P298_INDICADOR_ALERTA'
,p_client_condition_expression=>'0'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(75543742560544125)
,p_name=>'DA_ELIMINAR_ARTICULO'
,p_event_sequence=>70
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P298_SEQ_ID_ELIMINAR_ARTICULO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(75543866007544126)
,p_event_id=>wwv_flow_imp.id(75543742560544125)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\00BFDesea eliminar el registro?')
,p_attribute_02=>'ELIMINAR REGISTRO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(75543908023544127)
,p_event_id=>wwv_flow_imp.id(75543742560544125)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'',
'VTPEDAUT.PR_BORRAR_MIEM_ARTICULOS (:P298_SEQ_ID_ELIMINAR_ARTICULO);',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'         raise_application_error(-20000, SQLERRM);',
'END;'))
,p_attribute_02=>'P298_SEQ_ID_ELIMINAR_ARTICULO'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(75544058374544128)
,p_event_id=>wwv_flow_imp.id(75543742560544125)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(72954561513453727)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(75544153128544129)
,p_name=>'DA_SETEAR_DESCUENTO'
,p_event_sequence=>80
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P298_COD_ARTICULO_CR_ED'
,p_condition_element=>'P298_COD_ARTICULO_CR_ED'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(75544293738544130)
,p_event_id=>wwv_flow_imp.id(75544153128544129)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'	DECLARE ',
'		vneto varchar2(20);',
'    BEGIN',
'        SELECT IND_NO_DESCUENTO',
'          INTO vneto',
'          FROM st_articulos',
'         WHERE cod_empresa = :P_COD_EMPRESA',
'           AND cod_articulo = :P298_COD_ARTICULO_CR_ED;',
'',
'        :P298_PRECIO_UNITARIO_CR_ED := PRECIO(:P298_COD_ARTICULO_CR_ED, 0);',
'     ',
'        IF nvl(vneto,''N'')=''S'' THEN',
'     	    :P298_PORC_DESCUENTO_CR_ED := 0;',
'        ELSE',
'     		:P298_PORC_DESCUENTO_CR_ED := 30;',
'',
'     	IF :P298_COD_CLIENTE in (''1554'',''1553'',''437'',''4064'',''738'')           then',
'				:P298_PORC_DESCUENTO_CR_ED := 5;',
'     	END IF;	',
'     	',
'     	IF :P298_COD_CLIENTE IN (''117120'',''52512 '')  THEN',
'                :P298_PORC_DESCUENTO_CR_ED := 10;',
'     	END IF;     	',
'     	',
'        END IF;',
'         ',
'        IF :P298_COD_CLIENTE in (''197333'') THEN',
'         	 	:P298_PORC_DESCUENTO_CR_ED := 0;',
'        END IF;',
'   ',
'    END;',
'',
'    :P298_PORC_DESCUENTO_CR_ED := VTPEDAUT.FC_DESCUENTO (:P298_GARANTIA, ',
'                                                         :P298_P_TIPO, ',
'                                                         :P298_COD_CLIENTE,',
'                                                         :P298_CANTIDAD_CR_ED,',
'                                                         :P298_COD_ARTICULO_CR_ED);',
'',
'--descuento;',
'',
'',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        raise_application_error(-20000, SQLERRM);',
'END;'))
,p_attribute_02=>'P298_GARANTIA,P298_P_TIPO,P298_COD_CLIENTE,P298_CANTIDAD_CR_ED,P298_COD_ARTICULO_CR_ED,P_COD_EMPRESA'
,p_attribute_03=>'P298_PRECIO_UNITARIO_CR_ED,P298_PORC_DESCUENTO_CR_ED'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(75545603236544144)
,p_name=>'DA_MOSTRAR_BOTON_STOCK'
,p_event_sequence=>100
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P298_COD_ARTICULO_CR_ED'
,p_condition_element=>'P298_COD_ARTICULO_CR_ED'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(75545771982544145)
,p_event_id=>wwv_flow_imp.id(75545603236544144)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(75544311980544131)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(75545917616544147)
,p_event_id=>wwv_flow_imp.id(75545603236544144)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(75544311980544131)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(76726498350030011)
,p_name=>'DA_SETEAR_MONTO_TOTAL'
,p_event_sequence=>110
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P298_CANTIDAD_CR_ED'
,p_bind_type=>'bind'
,p_bind_event_type=>'keyup'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(76726542885030012)
,p_event_id=>wwv_flow_imp.id(76726498350030011)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    :P298_MONTO_TOTAL_CR_ED := PRECIO(:P298_COD_ARTICULO_CR_ED,:P298_PORC_DESCUENTO_CR_ED) * ',
'                                      nvl(:P298_CANTIDAD_CR_ED, 0);',
'    ',
'    :P298_PORC_DESCUENTO_CR_ED := VTPEDAUT.FC_DESCUENTO (:P298_GARANTIA, ',
'                                                         :P298_P_TIPO, ',
'                                                         :P298_COD_CLIENTE,',
'                                                         :P298_CANTIDAD_CR_ED,',
'                                                         :P298_COD_ARTICULO_CR_ED);    ',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'       raise_application_error(-20000, SQLERRM);',
'END;',
'',
''))
,p_attribute_02=>'P298_COD_ARTICULO_CR_ED,P298_PORC_DESCUENTO_CR_ED,P298_CANTIDAD_CR_ED,P298_GARANTIA,P298_P_TIPO,P298_COD_CLIENTE'
,p_attribute_03=>'P298_MONTO_TOTAL_CR_ED,P298_PORC_DESCUENTO_CR_ED'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(76726806221030015)
,p_name=>'DA_ABRIR_ARTICULO_ED'
,p_event_sequence=>120
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P298_SEQ_ID_EDITAR_ARTICULO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(76726907915030016)
,p_event_id=>wwv_flow_imp.id(76726806221030015)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    SELECT           ',
'            C001,',
'            C002,',
'            N001,',
'            N002,',
'            N003 ',
'',
'    INTO    :P298_COD_ARTICULO_CR_ED,',
'            :P298_CANTIDAD_CR_ED,',
'            :P298_PRECIO_UNITARIO_CR_ED,',
'            :P298_PORC_DESCUENTO_CR_ED,',
'            :P298_MONTO_TOTAL_CR_ED',
'',
'    FROM APEX_COLLECTIONS',
'    WHERE COLLECTION_NAME = ''ARTICULOS''',
'    AND SEQ_ID = :P298_SEQ_ID_EDITAR_ARTICULO;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'         raise_application_error(-20000, SQLERRM);',
'END;',
'',
''))
,p_attribute_02=>'P298_SEQ_ID_EDITAR_ARTICULO'
,p_attribute_03=>'P298_COD_ARTICULO_CR_ED,P298_CANTIDAD_CR_ED,P298_PRECIO_UNITARIO_CR_ED,P298_PORC_DESCUENTO_CR_ED,P298_MONTO_TOTAL_CR_ED'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(76727179356030018)
,p_event_id=>wwv_flow_imp.id(76726806221030015)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(73911512747687125)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(76727248196030019)
,p_event_id=>wwv_flow_imp.id(76726806221030015)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(73911483320687124)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(76727097030030017)
,p_event_id=>wwv_flow_imp.id(76726806221030015)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(73910397327687113)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(76727360564030020)
,p_name=>'DA_MODIFICAR_ARTICULO_ED'
,p_event_sequence=>130
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(73911512747687125)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(76727526674030022)
,p_event_id=>wwv_flow_imp.id(76727360564030020)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    IF :P298_COD_ARTICULO_CR_ED IS NULL OR',
'       :P298_CANTIDAD_CR_ED IS NULL',
'    THEN ',
'',
'        :P298_INDICADOR_ALERTA := ''1'';',
'    ELSE',
'',
'        :P298_INDICADOR_ALERTA := ''0'';',
'        :P298_INDICADOR_REPORT_ART := ''1'';',
'        VTPEDAUT.PR_MODIFICAR_MIE_ARTICULO (PI_SEQ_ID_EDITAR => :P298_SEQ_ID_EDITAR_ARTICULO,',
'                                            PI_COD_ARTICULO => :P298_COD_ARTICULO_CR_ED,',
'                                            PI_CANTIDAD => :P298_CANTIDAD_CR_ED,',
'                                            PI_PRECIO_UNITARIO => :P298_PRECIO_UNITARIO_CR_ED,',
'                                            PI_PORC_DESCUENTO => :P298_PORC_DESCUENTO_CR_ED,',
'                                            PI_MONTO_TOTAL => :P298_MONTO_TOTAL_CR_ED); ',
'    END IF;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        raise_application_error(-20000, SQLERRM);',
'END;',
'',
''))
,p_attribute_02=>'P298_SEQ_ID_EDITAR_ARTICULO,P298_COD_ARTICULO_CR_ED,P298_CANTIDAD_CR_ED,P298_PRECIO_UNITARIO_CR_ED,P298_PORC_DESCUENTO_CR_ED,P298_MONTO_TOTAL_CR_ED'
,p_attribute_03=>'P298_INDICADOR_REPORT_ART,P298_INDICADOR_ALERTA'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp.component_end;
end;
/
begin
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.04.12'
,p_release=>'22.1.0'
,p_default_workspace_id=>2715162693355865
,p_default_application_id=>122
,p_default_id_offset=>0
,p_default_owner=>'INV'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(76727620254030023)
,p_event_id=>wwv_flow_imp.id(76727360564030020)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'Compruebe que los campos obligatorios no se encuentren vacios.'
,p_attribute_02=>'CAMPOS VACIOS'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P298_INDICADOR_ALERTA'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(76727744700030024)
,p_event_id=>wwv_flow_imp.id(76727360564030020)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(73910397327687113)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P298_INDICADOR_ALERTA'
,p_client_condition_expression=>'0'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(76727878368030025)
,p_event_id=>wwv_flow_imp.id(76727360564030020)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(72954561513453727)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P298_INDICADOR_ALERTA'
,p_client_condition_expression=>'0'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(76728071130030027)
,p_name=>'DA_SETEAR_MONTO'
,p_event_sequence=>140
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P298_PRECIO_UNITARIO_CR_ED'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(76727980309030026)
,p_event_id=>wwv_flow_imp.id(76728071130030027)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    :P298_MONTO_TOTAL_CR_ED := PRECIO(:P298_COD_ARTICULO_CR_ED,:P298_PORC_DESCUENTO_CR_ED) * ',
'                                      nvl(:P298_CANTIDAD_CR_ED, 0);',
'    ',
'    :P298_PORC_DESCUENTO_CR_ED := VTPEDAUT.FC_DESCUENTO (:P298_GARANTIA, ',
'                                                         :P298_P_TIPO, ',
'                                                         :P298_COD_CLIENTE,',
'                                                         :P298_CANTIDAD_CR_ED,',
'                                                         :P298_COD_ARTICULO_CR_ED);    ',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'       raise_application_error(-20000, SQLERRM);',
'END;',
'',
''))
,p_attribute_02=>'P298_COD_ARTICULO_CR_ED,P298_PORC_DESCUENTO_CR_ED,P298_CANTIDAD_CR_ED,P298_GARANTIA,P298_P_TIPO,P298_COD_CLIENTE'
,p_attribute_03=>'P298_MONTO_TOTAL_CR_ED,P298_PORC_DESCUENTO_CR_ED'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(76728578441030032)
,p_name=>'DA_LOSE_FOCUS'
,p_event_sequence=>150
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P298_COD_CLIENTE'
,p_bind_type=>'bind'
,p_bind_event_type=>'focusout'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(76728670480030033)
,p_event_id=>wwv_flow_imp.id(76728578441030032)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P298_COD_CLIENTE'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(76729344219030040)
,p_name=>'DA_BUSCAR_PEDIDO'
,p_event_sequence=>160
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(76729288066030039)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(76729442793030041)
,p_event_id=>wwv_flow_imp.id(76729344219030040)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    SELECT TIP_COMPROBANTE,',
'           SER_COMPROBANTE,',
'           NRO_COMPROBANTE,',
'           NRO_DIARIO,',
'           COD_SUCURSAL,',
'           FEC_COMPROBANTE,',
'           COD_CLIENTE,',
'           COD_CONDICION_VENTA,',
'           COD_LISTA_PRECIO,',
'           COD_MONEDA,',
'           COD_USUARIO,',
'           FEC_ALTA,',
'           RUC,                                                    ',
'           OBSERVACION,',
'           P_TIPO,',
'           CI,',
'           GARANTIA,',
'           RETIRA_DE',
'',
'    INTO   ',
'           :P298_TIP_COMPROBANTE,',
'           :P298_SER_COMPROBANTE,',
'           :P298_NRO_COMPROBANTE,',
'           :P298_NRO_DIARIO,',
'           :P298_COD_SUCURSAL,',
'           :P298_FEC_COMPROBANTE,',
'           :P298_COD_CLIENTE,',
'           :P298_COD_CONDICION_VENTA,',
'           :P298_COD_LISTA_PRECIO,',
'           :P298_COD_MONEDA,',
'           :P298_COD_USUARIO_CAB,',
'           :P298_FEC_ALTA,',
'           :P298_RUC,',
'           :P298_OBSERVACION,',
'           :P298_P_TIPO,',
'           :P298_CI,',
'           :P298_GARANTIA,',
'           :P298_RETIRA_DE',
'',
'    FROM   VT_PEDIDOS_CABECERA_REP',
'    WHERE  COD_EMPRESA = :P_COD_EMPRESA',
'    --AND    TIP_COMPROBANTE = :P298_TIP_COMPROBANTE',
'    --AND    SER_COMPROBANTE = :P298_SER_COMPROBANTE',
'    AND    NRO_COMPROBANTE = :P298_NRO_COMPROBANTE',
'    AND    NRO_DIARIO = :P298_NRO_DIARIO;',
'',
'    BEGIN',
'    	SELECT d.ser_comprobante, d.nro_comprobante, d.tip_comprobante',
'    	 INTO :P298_SER_FACTURA, :P298_NRO_FACTURA, :P298_TIP_FACTURA',
'    	from vt_comprobantes_detalle d',
'    	where d.cod_empresa= :P_COD_EMPRESA',
'    	and d.ser_pedido = :P298_SER_COMPROBANTE',
'    	and d.nro_pedido = :P298_NRO_COMPROBANTE',
'    	and d.tip_comprobante not in (''NCR'')',
'    	and rownum=1;',
'    EXCEPTION',
'	    WHEN OTHERS THEN    ',
'	        :P298_SER_FACTURA := NULL;',
'            :P298_NRO_FACTURA := NULL;',
'            :P298_TIP_FACTURA := NULL;',
'    END;',
'',
'    BEGIN',
'    	SELECT d.nro_planilla',
'    	 INTO :P298_RUTEO',
'    	FROM rp_reparto_pedido_det d',
'    	WHERE d.cod_empresa= :P_COD_EMPRESA',
'    	AND d.ser_comprobante= :P298_SER_COMPROBANTE',
'    	AND d.nro_comprobante=:P298_NRO_COMPROBANTE',
'    	AND d.tip_comprobante= :P298_TIP_COMPROBANTE',
'    	AND rownum=1;',
'',
'    EXCEPTION',
'	    WHEN OTHERS THEN',
'	        :P298_RUTEO := NULL; ',
'    END;    ',
'',
'    :P298_INDICADOR_PED_NOT_FOUND := ''0'';',
'',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN        ',
'        :P298_INDICADOR_PED_NOT_FOUND := ''1'';        ',
'        --RAISE_APPLICATION_ERROR (-20111,''El pedido ingresado no existe.'' || '' '' || SQLERRM);',
'        ',
'    ',
'    WHEN OTHERS THEN',
'         raise_application_error(-20000, SQLERRM);',
'        ',
'END;',
'',
'',
''))
,p_attribute_02=>'P298_NRO_DIARIO,P298_NRO_COMPROBANTE,P298_SER_COMPROBANTE,P298_TIP_COMPROBANTE,P_COD_EMPRESA'
,p_attribute_03=>'P298_INDICADOR_PED_NOT_FOUND,P298_TIP_COMPROBANTE,P298_SER_COMPROBANTE,P298_NRO_COMPROBANTE,P298_NRO_DIARIO,P298_COD_SUCURSAL,P298_FEC_COMPROBANTE,P298_COD_CLIENTE,P298_COD_CONDICION_VENTA,P298_COD_LISTA_PRECIO,P298_COD_MONEDA,P298_COD_USUARIO_CAB,P2'
||'98_FEC_ALTA,P298_RUC,P298_OBSERVACION,P298_P_TIPO,P298_CI,P298_GARANTIA,P298_RETIRA_DE,P298_SER_FACTURA,P298_NRO_FACTURA,P298_TIP_FACTURA,P298_RUTEO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(78107734022254404)
,p_event_id=>wwv_flow_imp.id(76729344219030040)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'VTPEDAUT.PR_CREAR_COL_ARTICULOS (PI_COD_EMPRESA => :P_COD_EMPRESA,',
'                                 PI_TIP_COMPROBANTE => :P298_TIP_COMPROBANTE,',
'                                 PI_SER_COMPROBANTE => :P298_SER_COMPROBANTE,',
'                                 PI_NRO_COMPROBANTE => :P298_NRO_COMPROBANTE);',
'',
':P298_INDICADOR_REPORT_ART := ''1'';                                 ',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'       raise_application_error(-20000, SQLERRM);',
'END;',
'',
''))
,p_attribute_02=>'P_COD_EMPRESA,P298_TIP_COMPROBANTE,P298_SER_COMPROBANTE,P298_NRO_COMPROBANTE'
,p_attribute_03=>'P298_INDICADOR_REPORT_ART'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P298_INDICADOR_PED_NOT_FOUND'
,p_client_condition_expression=>'0'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(78107888894254405)
,p_event_id=>wwv_flow_imp.id(76729344219030040)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(72954561513453727)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P298_INDICADOR_PED_NOT_FOUND'
,p_client_condition_expression=>'0'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(76730001441030047)
,p_event_id=>wwv_flow_imp.id(76729344219030040)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'El pedido ingresado no existe.'
,p_attribute_02=>'PEDIDO NO ENCONTRADO'
,p_attribute_03=>'information'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P298_INDICADOR_PED_NOT_FOUND'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(78107485280254401)
,p_event_id=>wwv_flow_imp.id(76729344219030040)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P298_INDICADOR_PED_NOT_FOUND'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(78107568816254402)
,p_name=>'DA_GUARDAR_CAMBIOS'
,p_event_sequence=>170
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(76725428898030001)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(78107645502254403)
,p_event_id=>wwv_flow_imp.id(78107568816254402)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_01=>'GUARDAR'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(78110817990254435)
,p_name=>'DA_BUSCAR'
,p_event_sequence=>180
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(78110729458254434)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(78111993208254446)
,p_event_id=>wwv_flow_imp.id(78110817990254435)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    :P298_INDICADOR_REPORT_BUS := ''1'';',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        raise_application_error(-20000, SQLERRM);',
'END;'))
,p_attribute_02=>'P298_INDICADOR_REPORT_BUS'
,p_attribute_03=>'P298_INDICADOR_REPORT_BUS'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(78110974773254436)
,p_event_id=>wwv_flow_imp.id(78110817990254435)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(78108074101254407)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(78111150631254438)
,p_name=>'DA_ABRIR_REGION_BUSQUEDA'
,p_event_sequence=>190
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(76729288066030039)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(78111397240254440)
,p_event_id=>wwv_flow_imp.id(78111150631254438)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P298_COD_SUCURSAL_FILTRO,P298_TIP_COMPROBANTE_FILTRO,P298_SER_COMPROBANTE_FILTRO,P298_NRO_COMPROBANTE_FILTRO,P298_FEC_COMPROBANTE_FILTRO,P298_NRO_DIARIO_FILTRO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(83791300360167916)
,p_event_id=>wwv_flow_imp.id(78111150631254438)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    :P298_INDICADOR_REPORT_BUS := ''0'';',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        raise_application_error(-20000, SQLERRM);',
'END;'))
,p_attribute_03=>'P298_INDICADOR_REPORT_BUS'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(83791419080167917)
,p_event_id=>wwv_flow_imp.id(78111150631254438)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(78108074101254407)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(78111232120254439)
,p_event_id=>wwv_flow_imp.id(78111150631254438)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(78107958287254406)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(78111587646254442)
,p_name=>'DA_LIMPIAR_REPORTE'
,p_event_sequence=>200
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(78111487481254441)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(78111705531254444)
,p_event_id=>wwv_flow_imp.id(78111587646254442)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P298_COD_SUCURSAL_FILTRO,P298_TIP_COMPROBANTE_FILTRO,P298_SER_COMPROBANTE_FILTRO,P298_NRO_COMPROBANTE_FILTRO,P298_FEC_COMPROBANTE_FILTRO,P298_NRO_DIARIO_FILTRO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(78112012426254447)
,p_event_id=>wwv_flow_imp.id(78111587646254442)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    :P298_INDICADOR_REPORT_BUS := ''0'';',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        raise_application_error(-20000, SQLERRM);',
'END;'))
,p_attribute_02=>'P298_INDICADOR_REPORT_BUS'
,p_attribute_03=>'P298_INDICADOR_REPORT_BUS'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(78112155288254448)
,p_event_id=>wwv_flow_imp.id(78111587646254442)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(78108074101254407)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(78481884612266103)
,p_name=>'DA_SETEAR_BUSQUEDA'
,p_event_sequence=>210
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P298_ROW_ID_SELECCIONAR_PED'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(78482151351266106)
,p_event_id=>wwv_flow_imp.id(78481884612266103)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    SELECT TIP_COMPROBANTE,',
'           SER_COMPROBANTE,',
'           NRO_COMPROBANTE,',
'           NRO_DIARIO,',
'           COD_SUCURSAL,',
'           FEC_COMPROBANTE,',
'           COD_CLIENTE,',
'           COD_CONDICION_VENTA,',
'           COD_LISTA_PRECIO,',
'           COD_MONEDA,',
'           COD_USUARIO,',
'           FEC_ALTA,',
'           TRASLADO,',
'           RUC,                                                    ',
'           OBSERVACION,',
'           P_TIPO,',
'           CI,',
'           GARANTIA,',
'           RETIRA_DE,',
'           ANULADO,',
'           COD_USUARIO_ANU,',
'           COD_MOTIVO_ANU,',
'           FEC_ESTADO,',
'           NRO_COMPROBANTE_REF,',
'           SER_COMPROBANTE_REF,',
'           TIP_COMPROBANTE_REF',
'',
'    INTO   ',
'           :P298_TIP_COMPROBANTE,',
'           :P298_SER_COMPROBANTE,',
'           :P298_NRO_COMPROBANTE,',
'           :P298_NRO_DIARIO,',
'           :P298_COD_SUCURSAL,',
'           :P298_FEC_COMPROBANTE,',
'           :P298_COD_CLIENTE,',
'           :P298_COD_CONDICION_VENTA,',
'           :P298_COD_LISTA_PRECIO,',
'           :P298_COD_MONEDA,',
'           :P298_COD_USUARIO_CAB,',
'           :P298_FEC_ALTA,',
'           :P298_TRASLADO,',
'           :P298_RUC,',
'           :P298_OBSERVACION,',
'           :P298_P_TIPO,',
'           :P298_CI,',
'           :P298_GARANTIA,',
'           :P298_RETIRA_DE,',
'           :P298_ANULADO,',
'           :P298_COD_USUARIO_ANU,',
'           :P298_COD_MOTIVO_ANU,',
'           :P298_FEC_ESTADO,',
'           :P298_NRO_COMPROBANTE_REF,',
'           :P298_SER_COMPROBANTE_REF,',
'           :P298_TIP_COMPROBANTE_REF',
'',
'    FROM   VT_PEDIDOS_CABECERA_REP',
'    WHERE  ROWID = :P298_ROW_ID_SELECCIONAR_PED;',
'',
'    BEGIN',
'    	SELECT d.ser_comprobante, d.nro_comprobante, d.tip_comprobante',
'    	 INTO :P298_SER_FACTURA, :P298_NRO_FACTURA, :P298_TIP_FACTURA',
'    	from vt_comprobantes_detalle d',
'    	where d.cod_empresa= :P_COD_EMPRESA',
'    	and d.ser_pedido = :P298_SER_COMPROBANTE',
'    	and d.nro_pedido = :P298_NRO_COMPROBANTE',
'    	and d.tip_comprobante not in (''NCR'')',
'    	and rownum=1;',
'    EXCEPTION',
'	    WHEN OTHERS THEN    ',
'	        :P298_SER_FACTURA := NULL;',
'            :P298_NRO_FACTURA := NULL;',
'            :P298_TIP_FACTURA := NULL;',
'    END;',
'',
'    BEGIN',
'    	SELECT d.nro_planilla',
'    	 INTO :P298_RUTEO',
'    	FROM rp_reparto_pedido_det d',
'    	WHERE d.cod_empresa= :P_COD_EMPRESA',
'    	AND d.ser_comprobante= :P298_SER_COMPROBANTE',
'    	AND d.nro_comprobante=:P298_NRO_COMPROBANTE',
'    	AND d.tip_comprobante= :P298_TIP_COMPROBANTE',
'    	AND rownum=1;',
'',
'    EXCEPTION',
'	    WHEN OTHERS THEN',
'	        :P298_RUTEO := NULL; ',
'    END;',
'',
'    BEGIN',
'	    SELECT d.ser_comprobante, d.nro_comprobante, d.tip_comprobante',
'	     INTO :P298_SER_NCR, :P298_NRO_NCR, :P298_TIP_NCR',
'	     FROM vt_comprobantes_detalle d, VT_COMPROBANTES_CABECERA C',
'	    WHERE d.cod_empresa = :P_COD_EMPRESA',
'	    AND d.ser_pedido = :P298_SER_COMPROBANTE',
'    	AND d.nro_pedido = :P298_NRO_COMPROBANTE',
'    	AND c.cod_empresa = d.cod_empresa',
'    	AND c.tip_comprobante = d.tip_comprobante',
'    	AND c.ser_comprobante = d.ser_comprobante',
'    	AND c.nro_comprobante = d.nro_comprobante',
'    	AND c.nro_comprobante_ref = :P298_NRO_FACTURA',
'    	AND NVL(C.ESTADO,''P'')<>''A''',
'    	AND rownum=1;',
'    ',
'    EXCEPTION',
'	',
'        WHEN OTHERS THEN',
'            :P298_SER_NCR := NULL;',
'            :P298_NRO_NCR := NULL;',
'            :P298_TIP_NCR := NULL;',
'    END;    ',
'',
'    :P298_INDICADOR_PED_NOT_FOUND := ''0'';    ',
'',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN        ',
'        :P298_INDICADOR_PED_NOT_FOUND := ''1'';               ',
'        --RAISE_APPLICATION_ERROR (-20111,''El pedido ingresado no existe.'' || '' '' || SQLERRM);',
'        ',
'    ',
'    WHEN OTHERS THEN',
'        raise_application_error(-20000, SQLERRM);',
'        ',
'END;',
'',
'',
'',
'',
''))
,p_attribute_02=>'P298_NRO_DIARIO,P298_NRO_COMPROBANTE,P298_SER_COMPROBANTE,P298_TIP_COMPROBANTE,P_COD_EMPRESA,P298_ROW_ID_SELECCIONAR_PED'
,p_attribute_03=>'P298_INDICADOR_PED_NOT_FOUND,P298_TIP_COMPROBANTE,P298_SER_COMPROBANTE,P298_NRO_COMPROBANTE,P298_NRO_DIARIO,P298_COD_SUCURSAL,P298_FEC_COMPROBANTE,P298_COD_CLIENTE,P298_COD_CONDICION_VENTA,P298_COD_LISTA_PRECIO,P298_COD_MONEDA,P298_COD_USUARIO_CAB,P2'
||'98_FEC_ALTA,P298_RUC,P298_OBSERVACION,P298_P_TIPO,P298_CI,P298_GARANTIA,P298_RETIRA_DE,P298_SER_FACTURA,P298_NRO_FACTURA,P298_TIP_FACTURA,P298_RUTEO,P298_ANULADO,P298_COD_USUARIO_ANU,:P298_COD_MOTIVO_ANU,P298_FEC_ESTADO,P298_SER_NCR,P298_NRO_NCR,P298'
||'_TIP_NCR,P298_TRASLADO,P298_NRO_COMPROBANTE_REF,P298_SER_COMPROBANTE_REF'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(78482217056266107)
,p_event_id=>wwv_flow_imp.id(78481884612266103)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'VTPEDAUT.PR_CREAR_COL_ARTICULOS (PI_COD_EMPRESA => :P_COD_EMPRESA,',
'                                 PI_TIP_COMPROBANTE => :P298_TIP_COMPROBANTE,',
'                                 PI_SER_COMPROBANTE => :P298_SER_COMPROBANTE,',
'                                 PI_NRO_COMPROBANTE => :P298_NRO_COMPROBANTE);',
'',
':P298_INDICADOR_REPORT_ART := ''1'';                                 ',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        raise_application_error(-20000, SQLERRM);',
'END;',
'',
''))
,p_attribute_02=>'P_COD_EMPRESA,P298_TIP_COMPROBANTE,P298_SER_COMPROBANTE,P298_NRO_COMPROBANTE'
,p_attribute_03=>'P298_INDICADOR_REPORT_ART'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P298_INDICADOR_PED_NOT_FOUND'
,p_client_condition_expression=>'0'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(83789968757167902)
,p_event_id=>wwv_flow_imp.id(78481884612266103)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    IF :P298_NRO_FACTURA IS NOT NULL THEN',
'        :P298_INDICADOR_MOSTRAR_BOT := ''1'';',
'    ELSE',
'        :P298_INDICADOR_MOSTRAR_BOT := ''0'';',
'    END IF;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        raise_application_error(-20000, SQLERRM);',
'END;'))
,p_attribute_02=>'P298_NRO_FACTURA'
,p_attribute_03=>'P298_INDICADOR_MOSTRAR_BOT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(83790070571167903)
,p_event_id=>wwv_flow_imp.id(78481884612266103)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(73914003726687150)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P298_INDICADOR_MOSTRAR_BOT'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(83790977104167912)
,p_event_id=>wwv_flow_imp.id(78481884612266103)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    IF :P298_NRO_NCR IS NOT NULL THEN',
'        :P298_INDICADOR_MOSTRAR_BOT := ''1'';',
'    ELSE',
'        :P298_INDICADOR_MOSTRAR_BOT := ''0'';',
'    END IF;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        raise_application_error(-20000, SQLERRM);',
'END;'))
,p_attribute_02=>'P298_NRO_NCR'
,p_attribute_03=>'P298_INDICADOR_MOSTRAR_BOT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(83791035929167913)
,p_event_id=>wwv_flow_imp.id(78481884612266103)
,p_event_result=>'TRUE'
,p_action_sequence=>90
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(75541376788544101)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P298_INDICADOR_MOSTRAR_BOT'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(83791104187167914)
,p_event_id=>wwv_flow_imp.id(78481884612266103)
,p_event_result=>'TRUE'
,p_action_sequence=>100
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    IF :P298_NRO_COMPROBANTE_REF IS NOT NULL THEN',
'        :P298_INDICADOR_MOSTRAR_BOT := ''1'';',
'    ELSE',
'        :P298_INDICADOR_MOSTRAR_BOT := ''0'';',
'    END IF;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'       raise_application_error(-20000, SQLERRM);',
'END;'))
,p_attribute_02=>'P298_NRO_COMPROBANTE_REF'
,p_attribute_03=>'P298_INDICADOR_MOSTRAR_BOT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(83791284127167915)
,p_event_id=>wwv_flow_imp.id(78481884612266103)
,p_event_result=>'TRUE'
,p_action_sequence=>110
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(75541461130544102)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P298_INDICADOR_MOSTRAR_BOT'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(78482312239266108)
,p_event_id=>wwv_flow_imp.id(78481884612266103)
,p_event_result=>'TRUE'
,p_action_sequence=>130
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(72954561513453727)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P298_INDICADOR_PED_NOT_FOUND'
,p_client_condition_expression=>'0'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(78482093776266105)
,p_event_id=>wwv_flow_imp.id(78481884612266103)
,p_event_result=>'TRUE'
,p_action_sequence=>140
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(78107958287254406)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(347919992382606723)
,p_name=>'DA_SETEAR_BUSQUEDA_1'
,p_event_sequence=>220
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(347920012998606724)
,p_event_id=>wwv_flow_imp.id(347919992382606723)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'           v_SER_COMPROBANTE varchar2(10);',
'           v_NRO_COMPROBANTE varchar2(50);',
'           V_NRO_FACTURA     varchar2(50);',
'           V_SER_FACTURA    varchar2(10);',
'BEGIN',
'',
'    SELECT TIP_COMPROBANTE,SER_COMPROBANTE,NRO_COMPROBANTE,NRO_DIARIO,',
'           COD_SUCURSAL,FEC_COMPROBANTE,COD_CLIENTE,COD_CONDICION_VENTA,',
'           COD_LISTA_PRECIO,COD_MONEDA,COD_USUARIO,FEC_ALTA,TRASLADO,',
'           RUC,OBSERVACION,P_TIPO,CI,GARANTIA,RETIRA_DE,ANULADO,COD_USUARIO_ANU,',
'           COD_MOTIVO_ANU,FEC_ESTADO,NRO_COMPROBANTE_REF,SER_COMPROBANTE_REF,',
'           TIP_COMPROBANTE_REF,SER_COMPROBANTE,NRO_COMPROBANTE  ',
'    INTO   ',
'           :P298_TIP_COMPROBANTE,',
'           :P298_SER_COMPROBANTE,',
'           :P298_NRO_COMPROBANTE,',
'           :P298_NRO_DIARIO,',
'           :P298_COD_SUCURSAL,',
'           :P298_FEC_COMPROBANTE,',
'           :P298_COD_CLIENTE,',
'           :P298_COD_CONDICION_VENTA,',
'           :P298_COD_LISTA_PRECIO,',
'           :P298_COD_MONEDA,',
'           :P298_COD_USUARIO_CAB,',
'           :P298_FEC_ALTA,',
'           :P298_TRASLADO,',
'           :P298_RUC,',
'           :P298_OBSERVACION,',
'           :P298_P_TIPO,',
'           :P298_CI,',
'           :P298_GARANTIA,',
'           :P298_RETIRA_DE,',
'           :P298_ANULADO,',
'           :P298_COD_USUARIO_ANU,',
'           :P298_COD_MOTIVO_ANU,',
'           :P298_FEC_ESTADO,',
'           :P298_NRO_COMPROBANTE_REF,',
'           :P298_SER_COMPROBANTE_REF,',
'           :P298_TIP_COMPROBANTE_REF,',
'           v_SER_COMPROBANTE,',
'           v_NRO_COMPROBANTE',
'          --- ,:P298_ROW_ID_SELECCIONAR_PED',
'    FROM   VT_PEDIDOS_CABECERA_REP ',
'    WHERE  ROWID = :P298_ROW_ID_SELECCIONAR_PED;',
'    ----:P298_SER_PER =  SER_COMPROBANTE     AND :P298_NRO_PER= NRO_COMPROBANTE ;',
'',
'    BEGIN',
'    	SELECT d.ser_comprobante, d.nro_comprobante, d.tip_comprobante,d.ser_comprobante, d.nro_comprobante',
'    	 INTO :P298_SER_FACTURA, :P298_NRO_FACTURA, :P298_TIP_FACTURA, V_SER_FACTURA ,V_NRO_FACTURA',
'    	from vt_comprobantes_detalle d',
'    	where d.cod_empresa= :P_COD_EMPRESA',
'    	and d.ser_pedido = v_SER_COMPROBANTE',
'    	and d.nro_pedido = v_NRO_COMPROBANTE',
'    	and d.tip_comprobante not in (''NCR'')',
'    	and rownum=1;',
'    EXCEPTION',
'	    WHEN OTHERS THEN    ',
'	        :P298_SER_FACTURA := NULL;',
'            :P298_NRO_FACTURA := NULL;',
'            :P298_TIP_FACTURA := NULL;',
'    END;',
'',
'    BEGIN',
'    	SELECT d.nro_planilla',
'    	 INTO :P298_RUTEO',
'    	FROM rp_reparto_pedido_det d',
'    	WHERE d.cod_empresa= :P_COD_EMPRESA',
'    	AND d.ser_comprobante= v_SER_COMPROBANTE',
'    	AND d.nro_comprobante=v_NRO_COMPROBANTE',
'    	AND d.tip_comprobante= ''PER''',
'    	AND rownum=1;',
'    EXCEPTION',
'	    WHEN OTHERS THEN',
'	        :P298_RUTEO := NULL; ',
'    END;',
'',
'    BEGIN',
'	    SELECT d.ser_comprobante, d.nro_comprobante, d.tip_comprobante',
'	     INTO :P298_SER_NCR, :P298_NRO_NCR, :P298_TIP_NCR',
'	     FROM vt_comprobantes_detalle d, VT_COMPROBANTES_CABECERA C',
'	    WHERE d.cod_empresa = :P_COD_EMPRESA',
'	    AND d.ser_pedido = V_SER_COMPROBANTE',
'    	AND d.nro_pedido = V_NRO_COMPROBANTE',
'    	AND c.cod_empresa = d.cod_empresa',
'    	AND c.tip_comprobante = d.tip_comprobante',
'    	AND c.ser_comprobante = d.ser_comprobante',
'    	AND c.nro_comprobante = d.nro_comprobante',
'    	AND c.nro_comprobante_ref = V_NRO_FACTURA',
'    	AND c.SER_comprobante_ref = V_SER_FACTURA',
'    	AND NVL(C.ESTADO,''P'')<>''A''',
'    	AND rownum=1;    ',
'    EXCEPTION	',
'        WHEN OTHERS THEN',
'            :P298_SER_NCR := NULL;',
'            :P298_NRO_NCR := NULL;',
'            :P298_TIP_NCR := NULL;',
'    END;    ',
'    ',
'    :P298_INDICADOR_PED_NOT_FOUND := ''0'';    ',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN        ',
'        :P298_INDICADOR_PED_NOT_FOUND := ''1'';    ',
'    WHEN OTHERS THEN',
'        raise_application_error(-20000, SQLERRM);',
'END;',
'',
'',
''))
,p_attribute_02=>'P298_NRO_DIARIO,P298_NRO_COMPROBANTE,P298_SER_COMPROBANTE,P298_TIP_COMPROBANTE,P_COD_EMPRESA,P298_ROW_ID_SELECCIONAR_PED,P298_SER_PER,P298_NRO_PER'
,p_attribute_03=>'P298_INDICADOR_PED_NOT_FOUND,P298_TIP_COMPROBANTE,P298_SER_COMPROBANTE,P298_NRO_COMPROBANTE,P298_NRO_DIARIO,P298_COD_SUCURSAL,P298_FEC_COMPROBANTE,P298_COD_CLIENTE,P298_COD_CONDICION_VENTA,P298_COD_LISTA_PRECIO,P298_COD_MONEDA,P298_COD_USUARIO_CAB,P2'
||'98_FEC_ALTA,P298_RUC,P298_OBSERVACION,P298_P_TIPO,P298_CI,P298_GARANTIA,P298_RETIRA_DE,P298_SER_FACTURA,P298_NRO_FACTURA,P298_TIP_FACTURA,P298_RUTEO,P298_ANULADO,P298_COD_USUARIO_ANU,:P298_COD_MOTIVO_ANU,P298_FEC_ESTADO,P298_SER_NCR,P298_NRO_NCR,P298'
||'_TIP_NCR,P298_TRASLADO,P298_NRO_COMPROBANTE_REF,P298_SER_COMPROBANTE_REF'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp.component_end;
end;
/
begin
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.04.12'
,p_release=>'22.1.0'
,p_default_workspace_id=>2715162693355865
,p_default_application_id=>122
,p_default_id_offset=>0
,p_default_owner=>'INV'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(347920148244606725)
,p_event_id=>wwv_flow_imp.id(347919992382606723)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'VTPEDAUT.PR_CREAR_COL_ARTICULOS (PI_COD_EMPRESA => :P_COD_EMPRESA,',
'                                 PI_TIP_COMPROBANTE => :P298_TIP_COMPROBANTE,',
'                                 PI_SER_COMPROBANTE => :P298_SER_COMPROBANTE,',
'                                 PI_NRO_COMPROBANTE => :P298_NRO_COMPROBANTE);',
'',
':P298_INDICADOR_REPORT_ART := ''1'';                                 ',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        raise_application_error(-20000, SQLERRM);',
'END;',
'',
''))
,p_attribute_02=>'P_COD_EMPRESA,P298_TIP_COMPROBANTE,P298_SER_COMPROBANTE,P298_NRO_COMPROBANTE'
,p_attribute_03=>'P298_INDICADOR_REPORT_ART'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P298_INDICADOR_PED_NOT_FOUND'
,p_client_condition_expression=>'0'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(347920245156606726)
,p_event_id=>wwv_flow_imp.id(347919992382606723)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    IF :P298_NRO_FACTURA IS NOT NULL THEN',
'        :P298_INDICADOR_MOSTRAR_BOT := ''1'';',
'    ELSE',
'        :P298_INDICADOR_MOSTRAR_BOT := ''0'';',
'    END IF;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        raise_application_error(-20000, SQLERRM);',
'END;'))
,p_attribute_02=>'P298_NRO_FACTURA'
,p_attribute_03=>'P298_INDICADOR_MOSTRAR_BOT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(347920301011606727)
,p_event_id=>wwv_flow_imp.id(347919992382606723)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(73914003726687150)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P298_INDICADOR_MOSTRAR_BOT'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(347920411716606728)
,p_event_id=>wwv_flow_imp.id(347919992382606723)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    IF :P298_NRO_NCR IS NOT NULL THEN',
'        :P298_INDICADOR_MOSTRAR_BOT := ''1'';',
'    ELSE',
'        :P298_INDICADOR_MOSTRAR_BOT := ''0'';',
'    END IF;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        raise_application_error(-20000, SQLERRM);',
'END;'))
,p_attribute_02=>'P298_NRO_NCR'
,p_attribute_03=>'P298_INDICADOR_MOSTRAR_BOT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(347920537186606729)
,p_event_id=>wwv_flow_imp.id(347919992382606723)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(75541376788544101)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P298_INDICADOR_MOSTRAR_BOT'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(347920657257606730)
,p_event_id=>wwv_flow_imp.id(347919992382606723)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    IF :P298_NRO_COMPROBANTE_REF IS NOT NULL THEN',
'        :P298_INDICADOR_MOSTRAR_BOT := ''1'';',
'    ELSE',
'        :P298_INDICADOR_MOSTRAR_BOT := ''0'';',
'    END IF;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        raise_application_error(-20000, SQLERRM);',
'END;'))
,p_attribute_02=>'P298_NRO_COMPROBANTE_REF'
,p_attribute_03=>'P298_INDICADOR_MOSTRAR_BOT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(347920731815606731)
,p_event_id=>wwv_flow_imp.id(347919992382606723)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(75541461130544102)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P298_INDICADOR_MOSTRAR_BOT'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(347920884271606732)
,p_event_id=>wwv_flow_imp.id(347919992382606723)
,p_event_result=>'TRUE'
,p_action_sequence=>90
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(72954561513453727)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P298_INDICADOR_PED_NOT_FOUND'
,p_client_condition_expression=>'0'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(347920951744606733)
,p_event_id=>wwv_flow_imp.id(347919992382606723)
,p_event_result=>'TRUE'
,p_action_sequence=>100
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(78107958287254406)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(78482623436266111)
,p_name=>'DA_LLAMAR_STCONSTO'
,p_event_sequence=>230
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(75544311980544131)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(78482794334266112)
,p_event_id=>wwv_flow_imp.id(78482623436266111)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    :P298_COD_ARTICULO_ENVIAR := :P298_COD_ARTICULO_CR_ED; ',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'       raise_application_error(-20000, SQLERRM);',
'END;'))
,p_attribute_02=>'P298_COD_ARTICULO_CR_ED'
,p_attribute_03=>'P298_COD_ARTICULO_ENVIAR'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(78483052268266115)
,p_event_id=>wwv_flow_imp.id(78482623436266111)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'	SELECT APEX_PAGE.GET_URL (  p_page   => 65,',
'				    p_items  => ''P65_COD_ARTICULO'',',
'				    p_values => (''''||:P298_COD_ARTICULO_ENVIAR||'''')) f_url_1',
'		INTO :P298_URL_65',
'		FROM DUAL;        ',
'	  ',
'EXCEPTION',
'    WHEN OTHERS THEN',
'       raise_application_error(-20000, SQLERRM);',
'END;'))
,p_attribute_02=>'P298_COD_ARTICULO_ENVIAR'
,p_attribute_03=>'P298_URL_65'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(78483302635266118)
,p_event_id=>wwv_flow_imp.id(78482623436266111)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var url = apex.item("P298_URL_65").getValue();',
'',
'apex.navigation.openInNewWindow(url, "_blank");',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(78483661785266121)
,p_name=>'DA_LLAMAR_VTCONFAC'
,p_event_sequence=>240
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(73914003726687150)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(78483869698266123)
,p_event_id=>wwv_flow_imp.id(78483661785266121)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    :P298_TIP_COMPROBANTE_ENVIAR := :P298_TIP_FACTURA;',
'    :P298_NRO_COMPROBANTE_ENVIAR := :P298_NRO_FACTURA;',
'    :P298_SER_COMPROBANTE_ENVIAR := :P298_SER_FACTURA;',
'     ',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        raise_application_error(-20000, SQLERRM);',
'END;',
'',
'',
''))
,p_attribute_02=>'P298_TIP_FACTURA,P298_NRO_FACTURA,P298_SER_FACTURA'
,p_attribute_03=>'P298_TIP_COMPROBANTE_ENVIAR,P298_NRO_COMPROBANTE_ENVIAR,P298_SER_COMPROBANTE_ENVIAR'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(78483918483266124)
,p_event_id=>wwv_flow_imp.id(78483661785266121)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'	SELECT APEX_PAGE.GET_URL (  p_page   => 193,',
'				    p_items  => ''P193_TIP_COMPROBANTE,P193_SER_COMPROBANTE,P193_NRO_COMPROBANTE'', ',
'				    p_values =>  ''''||:P298_TIP_COMPROBANTE_ENVIAR||'',',
'                                  ''||:P298_SER_COMPROBANTE_ENVIAR||'',',
'                                  ''||:P298_NRO_COMPROBANTE_ENVIAR||'''') f_url_1',
'		INTO :P298_URL_193',
'		FROM DUAL;        ',
'	  ',
'EXCEPTION',
'    WHEN OTHERS THEN',
'         raise_application_error(-20000, SQLERRM);',
'END;',
'',
''))
,p_attribute_02=>'P298_TIP_COMPROBANTE_ENVIAR,P298_SER_COMPROBANTE_ENVIAR,P298_NRO_COMPROBANTE_ENVIAR'
,p_attribute_03=>'P298_URL_193'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(78484026173266125)
,p_event_id=>wwv_flow_imp.id(78483661785266121)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var url = apex.item("P298_URL_193").getValue();',
'',
'apex.navigation.openInNewWindow(url, "_blank");',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(78484513624266130)
,p_name=>'DA_LLAMAR_VTNOTCRE '
,p_event_sequence=>250
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(75541376788544101)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(78484719682266132)
,p_event_id=>wwv_flow_imp.id(78484513624266130)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    :P298_TIP_COMPROBANTE_ENVIAR := :P298_TIP_NCR;',
'    :P298_NRO_COMPROBANTE_ENVIAR := :P298_NRO_NCR;',
'    :P298_SER_COMPROBANTE_ENVIAR := :P298_SER_NCR;',
'     ',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        raise_application_error(-20000, SQLERRM);',
'END;',
'',
'',
'',
''))
,p_attribute_02=>'P298_TIP_NCR,P298_NRO_NCR,P298_SER_NCR'
,p_attribute_03=>'P298_TIP_COMPROBANTE_ENVIAR,P298_NRO_COMPROBANTE_ENVIAR,P298_SER_COMPROBANTE_ENVIAR'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(78484856540266133)
,p_event_id=>wwv_flow_imp.id(78484513624266130)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'	SELECT APEX_PAGE.GET_URL (  p_page   => 103,',
'				    p_items  => ''P103_TIP_COMPROBANTE,P103_SER_COMPROBANTE,P103_NRO_COMPROBANTE'', ',
'				    p_values =>  ''''||:P298_TIP_COMPROBANTE_ENVIAR||'',',
'                                  ''||:P298_SER_COMPROBANTE_ENVIAR||'',',
'                                  ''||:P298_NRO_COMPROBANTE_ENVIAR||'''') f_url_1',
'		INTO :P298_URL_103',
'		FROM DUAL;        ',
'	  ',
'EXCEPTION',
'    WHEN OTHERS THEN',
'         raise_application_error(-20000, SQLERRM);',
'END;',
'',
''))
,p_attribute_02=>'P298_TIP_COMPROBANTE_ENVIAR,P298_SER_COMPROBANTE_ENVIAR,P298_NRO_COMPROBANTE_ENVIAR'
,p_attribute_03=>'P298_URL_103'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(78484907992266134)
,p_event_id=>wwv_flow_imp.id(78484513624266130)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var url = apex.item("P298_URL_103").getValue();',
'',
'apex.navigation.openInNewWindow(url, "_blank");',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(78485125638266136)
,p_name=>'DA_LLAMAR_CAORDTRA'
,p_event_sequence=>260
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(75541461130544102)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(78485317956266138)
,p_event_id=>wwv_flow_imp.id(78485125638266136)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    :P298_TIP_COMPROBANTE_ENVIAR := :P298_TIP_COMPROBANTE_REF;',
'    :P298_NRO_COMPROBANTE_ENVIAR := :P298_NRO_COMPROBANTE_REF;',
'    :P298_SER_COMPROBANTE_ENVIAR := :P298_SER_COMPROBANTE_REF;',
'     ',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        raise_application_error(-20000, SQLERRM);',
'END;',
'',
'',
'',
'',
''))
,p_attribute_02=>'P298_NRO_COMPROBANTE_REF,P298_SER_COMPROBANTE_REF'
,p_attribute_03=>'P298_TIP_COMPROBANTE_ENVIAR,P298_NRO_COMPROBANTE_ENVIAR,P298_SER_COMPROBANTE_ENVIAR'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(78485470597266139)
,p_event_id=>wwv_flow_imp.id(78485125638266136)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'	SELECT APEX_PAGE.GET_URL (  p_page   => 244,',
'				    p_items  => ''P244_TIP_COMPROBANTE,P244_SER_COMPROBANTE,P244_NRO_COMPROBANTE'', ',
'				    p_values =>  ''''||''ORT''||'',',
'                                  ''||:P298_SER_COMPROBANTE_ENVIAR||'',',
'                                  ''||:P298_NRO_COMPROBANTE_ENVIAR||'''') f_url_1',
'		INTO :P298_URL_244',
'		FROM DUAL;        ',
'	  ',
'EXCEPTION',
'    WHEN OTHERS THEN',
'       raise_application_error(-20000, SQLERRM);',
'END;',
'',
''))
,p_attribute_02=>'P298_TIP_COMPROBANTE_ENVIAR,P298_SER_COMPROBANTE_ENVIAR,P298_NRO_COMPROBANTE_ENVIAR'
,p_attribute_03=>'P298_URL_244'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(78485506732266140)
,p_event_id=>wwv_flow_imp.id(78485125638266136)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var url = apex.item("P298_URL_244").getValue();',
'',
'apex.navigation.openInNewWindow(url, "_blank");',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(83790342260167906)
,p_name=>'DA_HABILITAR_BTN_FCR'
,p_event_sequence=>270
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(83790416121167907)
,p_event_id=>wwv_flow_imp.id(83790342260167906)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(73914003726687150)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(83790582022167908)
,p_name=>'DA_HABILITAR_BTN_NCR'
,p_event_sequence=>280
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(83790699619167909)
,p_event_id=>wwv_flow_imp.id(83790582022167908)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(75541376788544101)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(83790788607167910)
,p_name=>'DA_HABILITAR_BTN_OT'
,p_event_sequence=>290
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(83790820211167911)
,p_event_id=>wwv_flow_imp.id(83790788607167910)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(75541461130544102)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(110449713619068121)
,p_event_id=>wwv_flow_imp.id(83790788607167910)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(72954561513453727)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(347922190078606745)
,p_name=>'DA_IR_OT'
,p_event_sequence=>300
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P298_NRO_COMPROBANTE_REF'
,p_condition_element=>'P298_NRO_COMPROBANTE_REF'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(347922272238606746)
,p_event_id=>wwv_flow_imp.id(347922190078606745)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
' SELECT APEX_PAGE.GET_URL (  p_page   => 588,',
'                                        p_items  => ''P588_NRO_COMPROBANTE,P588_SER_COMPROBANTE'',',
'                                        p_values => (''''||:P298_NRO_COMPROBANTE_REF||'',''||:P298_SER_COMPROBANTE_REF||'''')) f_url_1',
'              INTO :P298_URL',
'              FROM DUAL;',
''))
,p_attribute_02=>'P298_NRO_COMPROBANTE_REF,P298_SER_COMPROBANTE_REF'
,p_attribute_03=>'P298_URL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(347922451630606748)
,p_event_id=>wwv_flow_imp.id(347922190078606745)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var url = apex.item("P298_URL").getValue();',
'apex.navigation.redirect (url);',
'',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(320104382513820303)
,p_name=>'DA_ABRIR_REGION_BUSCADOR_OT'
,p_event_sequence=>310
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(320104108678820301)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(320136509107046842)
,p_event_id=>wwv_flow_imp.id(320104382513820303)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P298_TIP_COMPROBANTE_REF_PED,P298_SER_COMPROBANTE_REF_PED,P298_NRO_COMPROBANTE_REF_PED'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(320104412632820304)
,p_event_id=>wwv_flow_imp.id(320104382513820303)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(320136341966046840)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(320134031283046817)
,p_name=>'DA_SELECCIONAR_PED'
,p_event_sequence=>320
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P298_SELECCIONAR_PED'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(320134477679046821)
,p_event_id=>wwv_flow_imp.id(320134031283046817)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    V_SER_PED VARCHAR2(20);',
'    V_NRO_PED VARCHAR2(50);',
'BEGIN',
'',
'    VTPEDAUT.PR_CARGAR_PEDIDO_POR_OT (PI_ROW_ID_PED             => :P298_SELECCIONAR_PED,',
'                                      ---------------------------------------------------',
'                                      PO_TIP_COMPROBANTE        => :P298_TIP_COMPROBANTE,',
'                                      PO_SER_COMPROBANTE        => V_SER_PED,-- :P298_SER_COMPROBANTE,',
'                                      PO_NRO_COMPROBANTE        => V_NRO_PED,---:P298_NRO_COMPROBANTE,',
'                                      PO_TIP_COMPROBANTE_REF    => :P298_TIP_COMPROBANTE_REF,',
'                                      PO_SER_COMPROBANTE_REF    => :P298_SER_COMPROBANTE_REF,',
'                                      PO_NRO_COMPROBANTE_REF    => :P298_NRO_COMPROBANTE_REF,',
'                                      PO_COD_CLIENTE            => :P298_COD_CLIENTE, ',
'                                      PO_COD_CONDICION_VENTA    => :P298_COD_CONDICION_VENTA, ',
'                                      PO_COD_LISTA_PRECIO       => :P298_COD_LISTA_PRECIO, ',
'                                      PO_COD_MONEDA             => :P298_COD_MONEDA,',
'                                      PO_TEL_CLIENTE            => :P298_TELEFONO, ',
'                                      PO_RUC                    => :P298_RUC, ',
'                                      PO_OBSERVACION            => :P298_OBSERVACION,',
'                                      PO_CI                     => :P298_CI,',
'                                      PO_RETIRA_DE              => :P298_RETIRA_DE, ',
'                                      PO_DIRECCION              => :P298_DIRECCION,',
'                                      PO_GARANTIA               => :P298_GARANTIA,',
'                                      PO_COD_SUCURSAL           => :P298_COD_SUCURSAL,',
'                                      PO_FEC_COMPROBANTE        => :P298_FEC_COMPROBANTE',
'                                      );',
'',
':P298_SER_COMPROBANTE:= V_SER_PED ;',
':P298_NRO_COMPROBANTE:= V_NRO_PED ;',
'     BEGIN',
'    	SELECT d.ser_comprobante, d.nro_comprobante, d.tip_comprobante',
'    	 INTO :P298_SER_FACTURA, :P298_NRO_FACTURA, :P298_TIP_FACTURA',
'    	from vt_comprobantes_detalle d',
'    	where d.cod_empresa= :P_COD_EMPRESA',
'    	and d.ser_pedido = V_SER_PED',
'    	and d.nro_pedido = V_NRO_PED',
'    	and d.tip_comprobante not in (''NCR'')',
'    	and rownum=1;',
'    EXCEPTION',
'	    WHEN OTHERS THEN    ',
'	        :P298_SER_FACTURA := NULL;',
'            :P298_NRO_FACTURA := NULL;',
'            :P298_TIP_FACTURA := NULL;',
'    END;',
'',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        raise_application_error(-20000, ''Error en DA_SELECCIONAR_OT - 01. '' || SQLERRM);',
'END;'))
,p_attribute_02=>'P298_SELECCIONAR_PED'
,p_attribute_03=>'P298_TIP_COMPROBANTE,P298_SER_COMPROBANTE,P298_NRO_COMPROBANTE,P298_TIP_COMPROBANTE_REF,P298_SER_COMPROBANTE_REF,P298_NRO_COMPROBANTE_REF,P298_COD_CLIENTE,P298_COD_CONDICION_VENTA,P298_COD_LISTA_PRECIO,P298_COD_MONEDA,P298_TELEFONO,P298_RUC,P298_OBSE'
||'RVACION,P298_CI,P298_RETIRA_DE,P298_DIRECCION,P298_GARANTIA,P298_COD_SUCURSAL,P298_FEC_COMPROBANTE,P298_TIP_FACTURA,P298_SER_FACTURA,P298_NRO_FACTURA'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(320134682518046823)
,p_event_id=>wwv_flow_imp.id(320134031283046817)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    VTPEDAUT.PR_CREAR_COL_ARTICULOS (PI_COD_EMPRESA     =>   :P_COD_EMPRESA,',
'                                     PI_TIP_COMPROBANTE =>   :P298_TIP_COMPROBANTE,',
'                                     PI_SER_COMPROBANTE =>   :P298_SER_COMPROBANTE,',
'                                     PI_NRO_COMPROBANTE =>   :P298_NRO_COMPROBANTE);',
'',
'    :P298_INDICADOR_REPORT_ART := ''1'';',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'         raise_application_error(-20000, SQLERRM);',
'END;',
'',
''))
,p_attribute_02=>'P298_TIP_COMPROBANTE,P298_SER_COMPROBANTE,P298_NRO_COMPROBANTE'
,p_attribute_03=>'P298_INDICADOR_REPORT_ART'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(320134118186046818)
,p_event_id=>wwv_flow_imp.id(320134031283046817)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(320136341966046840)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(320134588399046822)
,p_event_id=>wwv_flow_imp.id(320134031283046817)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(72954561513453727)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(320136076676046837)
,p_name=>'DA_MOSTRAR_PED_OT'
,p_event_sequence=>330
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P298_NRO_COMPROBANTE_REF_PED'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(321550814025425411)
,p_name=>'DA_ABRIR_BUSCADOR_DE_PEDIDOS'
,p_event_sequence=>330
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(321539892866410001)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(321551337967425416)
,p_event_id=>wwv_flow_imp.id(321550814025425411)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(320136341966046840)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(75546052864544148)
,p_process_sequence=>20
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'PR_LIMPIAR_CAMPOS'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_process_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(72661620772004350)
,p_process_sequence=>30
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_INIT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'  :P298_COD_MODULO := ''VT'';',
'  :P298_COD_FORMA := ''VTPEDAUT'';',
'  :P298_COD_EMPRESA := :P_COD_EMPRESA;',
'  :P298_COD_USUARIO := :P_COD_USUARIO;',
'',
'',
'  :P298_SER_REMISION := BS_BUSCA_PARAMETRO (:P298_COD_MODULO, ''SERIE_REMISION'');',
'  :P298_SER_REMISION := ''D'';',
'',
'  :P298_COD_ARTICULO_REM := BS_BUSCA_PARAMETRO (:P298_COD_MODULO, ''COD_ARTICULO_REM'');',
'  :P298_TIP_REMISION := ''PER'';',
'  :P298_CLIENTE_CONTADO := BS_BUSCA_PARAMETRO (:P298_COD_MODULO, ''CLIENTE_CONTADO'');',
'',
'  :P298_CAMBIA_NRO := BUSCA_PERMISO (:P_COD_EMPRESA, ',
'                                     :P298_COD_FORMA,',
'                                     :P_COD_USUARIO,',
'                                     ''CAMBIA_NUMERO_FAC'');',
'',
'  :P298_CARGA_SUCURSAL := BUSCA_PERMISO (:P_COD_EMPRESA, ',
'                                         :P298_COD_FORMA,',
'                                         :P_COD_USUARIO,',
'                                         ''CARGA_SUCURSAL'');',
'',
'   :P298_MODIFICA_PRECIO_VENTA := BUSCA_PERMISO (:P_COD_EMPRESA, ',
'                                                 :P298_COD_FORMA,',
'                                                 :P_COD_USUARIO,',
'                                                 ''MODIFICA_PRECIO'');',
'',
'',
'',
'    -- WHEN NEW INSTANCE FORM --',
'    ',
'',
'    :P298_COD_SUCURSAL := :P_COD_SUCURSAL;',
'    :P298_TIP_COMPROBANTE := ''PER'';',
'    :P298_SER_COMPROBANTE := ''W'';',
'',
'    :P298_FEC_COMPROBANTE := TRAE_FECHA (:P_COD_EMPRESA, :P298_COD_MODULO);',
'    :P298_TOT_CANTIDAD := 0;',
'    :P298_COD_USUARIO_CAB:= :P_COD_USUARIO;',
'    :P298_HORA_ALTA := to_char(sysdate, ''HH24:MI:SS'');',
'    :P298_ANULADO :=''N'';',
'    :P298_P_TIPO :=''W'';',
'    :P298_GARANTIA :=''G''; ',
'',
'    IF NVL(:P298_GARANTIA,''G'') = ''G'' THEN',
'',
'        :P298_COD_CONDICION_VENTA := ''65'';',
'        :P298_COD_LISTA_PRECIO := ''15'';',
'        :P298_COD_MONEDA := ''1'';',
'',
'    ELSE',
'',
'        :P298_COD_CONDICION_VENTA :=''1'';',
'        :P298_COD_LISTA_PRECIO :=''15'';',
'        :P298_COD_MONEDA := ''1'';',
'    END IF;',
'',
'    :P298_COD_CONCEPTO_REM := ''1'';',
'    :P298_IMPRIME_ART_CLIENTE := ''N'';',
'',
'    :P298_ANULADO :=''N'';',
'',
'',
'-- PRE INSERT --',
':P298_FEC_ALTA := SYSDATE;',
'IF :P298_NRO_COMPROBANTE IS NULL THEN',
'  BEGIN',
'    SELECT nvl( max( nro_comprobante ), 0 ) + 1',
'      INTO :P298_NRO_COMPROBANTE',
'      FROM VT_PEDIDOS_CABECERA_REP',
'     WHERE cod_empresa = :P_COD_EMPRESA',
'       AND tip_comprobante = :P298_TIP_COMPROBANTE',
'       AND ser_comprobante = :P298_SER_COMPROBANTE;',
'   ',
'    BEGIN',
'      	SELECT SUBSTR(TO_CHAR(SYSDATE,''DAY''),1,1)||(NVL(MAX(to_number(substr(NRO_DIARIO,2))),0)+1)',
'          INTO :P298_NRO_DIARIO',
'          FROM VT_PEDIDOS_CABECERA_REP',
'         WHERE cod_empresa = :P_COD_EMPRESA',
'           AND tip_comprobante = :P298_TIP_COMPROBANTE',
'           AND ser_comprobante = :P298_SER_COMPROBANTE',
'           AND TO_CHAR(SYSDATE,''DAY'')= to_char(fec_comprobante,''DAY'');',
'    EXCEPTION',
'      WHEN OTHERS THEN ',
'      	 raise_application_error(-20000, SQLERRM);',
'    END;',
'  ',
'    IF :P298_NRO_COMPROBANTE IS NULL THEN',
'      :P298_NRO_COMPROBANTE := 1;',
'    END IF;',
'',
'  EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'      :P298_NRO_COMPROBANTE := 1;',
'      :P298_NRO_DIARIO := SUBSTR(TO_CHAR(SYSDATE,''DAY''),1,1)||''1'';',
'    WHEN OTHERS THEN',
'       raise_application_error(-20000, SQLERRM);',
'  END;',
'END IF;',
'',
'-- CARGA COLLECTION ARTICULOS --',
' ',
'',
'VTPEDAUT.PR_CREAR_COL_ARTICULOS (PI_COD_EMPRESA => :P_COD_EMPRESA,',
'                                 PI_TIP_COMPROBANTE => :P298_TIP_COMPROBANTE,',
'                                 PI_SER_COMPROBANTE => :P298_SER_COMPROBANTE,',
'                                 PI_NRO_COMPROBANTE => :P298_NRO_COMPROBANTE/*,',
'                                 pi_tip_comprobante_ref => :P298_TIP_COMPROBANTE_REF,',
'                                 pi_ser_comprobante_ref => :P298_SER_COMPROBANTE_REF,',
'                                 pi_nro_comprobante_ref => :P298_NRO_COMPROBANTE_REF*/);',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        raise_application_error(-20000, SQLERRM);',
'END;',
'     '))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(75544871916544136)
,p_process_sequence=>50
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_TEST_BOTONES'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P298_NRO_NCR := ''AA'';',
':P298_SER_NCR := ''BB'';',
':P298_TIP_NCR := ''CC'';',
'',
'',
':P298_NRO_FACTURA := ''AA'';',
':P298_SER_FACTURA := ''BB'';',
':P298_TIP_FACTURA := ''CC'';',
'',
'',
':P298_NRO_COMPROBANTE_REF := ''AA'';',
':P298_SER_COMPROBANTE_REF := ''BB'';',
':P298_TIP_COMPROBANTE_REF := ''CC'';',
'',
'--:P298_ANULADO := ''S'';',
'',
'',
''))
,p_process_clob_language=>'PLSQL'
,p_process_when_type=>'NEVER'
);
wwv_flow_imp.component_end;
end;
/
begin
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.04.12'
,p_release=>'22.1.0'
,p_default_workspace_id=>2715162693355865
,p_default_application_id=>122
,p_default_id_offset=>0
,p_default_owner=>'INV'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(76725583304030002)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_GUARDAR_EN_BD'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    VTPEDAUT.PR_GUARDAR_CABECERA ( PI_COD_EMPRESA => :P_COD_EMPRESA,',
'                                   PI_TIP_COMPROBANTE => :P298_TIP_COMPROBANTE,',
'                                   PI_SER_COMPROBANTE => :P298_SER_COMPROBANTE,',
'                                   PI_NRO_COMPROBANTE => :P298_NRO_COMPROBANTE,',
'                                   PI_NRO_DIARIO => :P298_NRO_DIARIO,',
'                                   PI_COD_SUCURSAL => :P298_COD_SUCURSAL,',
'                                   PI_FEC_COMPROBANTE => :P298_FEC_COMPROBANTE,',
'                                   PI_COD_CLIENTE => :P298_COD_CLIENTE,',
'                                   PI_COD_CONDICION_VENTA => :P298_COD_CONDICION_VENTA,',
'                                   PI_COD_LISTA_PRECIO => :P298_COD_LISTA_PRECIO,',
'                                   PI_COD_MONEDA => :P298_COD_MONEDA,',
'                                   PI_COD_USUARIO => :P298_COD_USUARIO_CAB,',
'                                   PI_FEC_ALTA => :P298_FEC_ALTA,',
'                                   PI_RUC => :P298_RUC,',
'                                   PI_OBSERVACION => :P298_OBSERVACION,',
'                                   PI_P_TIPO => :P298_P_TIPO,',
'                                   PI_CI => :P298_CI,',
'                                   PI_GARANTIA => :P298_GARANTIA,',
'                                   PI_RETIRA_DE => :P298_RETIRA_DE,',
'                                   PI_ANULADO => :P298_ANULADO,',
'                                   PI_COD_USUARIO_ANU => :P298_COD_USUARIO_ANU,',
'                                   PI_FEC_ESTADO => :P298_FEC_ESTADO,',
'                                   PI_COD_MOTIVO_ANU => :P298_COD_MOTIVO_ANU);',
'',
'    VTPEDAUT.PR_CONFIRMAR_ACCION_ARTICULO;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'         raise_application_error(-20000, SQLERRM);',
'        ROLLBACK;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>unistr('\00A1Ups!... Ocurri\00F3 un error.')
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'GUARDAR'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
,p_process_success_message=>unistr('\00A1Los datos se guardaron exitosamente!')
);
null;
wwv_flow_imp.component_end;
end;
/
