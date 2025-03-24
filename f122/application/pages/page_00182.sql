prompt --application/pages/page_00182
begin
--   Manifest
--     PAGE: 00182
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
 p_id=>182
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'REPORTE_VTRANUPE'
,p_alias=>'REPORTE-VTRANUPE1'
,p_page_mode=>'MODAL'
,p_step_title=>'REPORTE_VTRANUPE'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'JUANASIS'
,p_last_upd_yyyymmddhh24miss=>'20221111175744'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(37208124541511006)
,p_plug_name=>'REPORTE_VTRANUPE'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select c.cod_sucursal, s.descripcion sucursal, c.fec_comprobante, c.fec_ESTADO ,',
'       c.tip_comprobante, c.ser_comprobante, c.nro_comprobante,',
'       c.cod_cliente, pc.nombre cliente, c.cod_condicion_venta,',
'       c.cod_moneda, m.descripcion moneda, m.siglas, m.decimales, c.tip_cambio,',
'       c.cod_vendedor, pv.nombre vendedor,',
'       r.cod_rubro rubro,',
'       tc.descripcion desc_tipo_comprobante,',
'       sum(det.total_iva)TOT_IVA, sum(det.descuento)DESCUENTO,',
'       sum(det.monto_total+nvl(det.total_iva,0)) monto_total,',
'       anu.cod_motivo_anu, anu.descripcion motivo_cierre,',
'       det.cod_articulo articulo, ',
'       SUM(DET.CANTIDAD+NVL(DET.CANTIDAD_PENDIENTE,0)-NVL(DET.CANTIDAD_FACTURADA,0))CANTIDAD',
' from  vt_pedidos_cabecera c,  ',
'       monedas m, ',
'       sucursales s, ',
'       tipos_comprobantes tc, ',
'       cc_clientes cc, ',
'       personas pc, ',
'       fv_vendedores v, ',
'       personas pv, ',
'       vt_motivo_anulacion anu, ',
'       VT_PEDIDOS_DETALLE DET,',
'       st_rubro r',
'  where c.cod_empresa        =  :P182_P_COD_EMPRESA',
'  and ( c.cod_sucursal     =  :P182_P_COD_SUCURSAL or :P182_P_COD_SUCURSAL is null )',
'  and ( c.fec_ESTADO >= to_date(:P182_P_FEC_PED_INICIAL,''dd/mm/yyyy'') or :P182_P_FEC_PED_INICIAL is null )',
'  and ( c.fec_ESTADO  <= to_date(:P182_P_FEC_PED_FINAL,''dd/mm/yyyy'') or :P182_P_FEC_PED_FINAL is null )',
'  and ( c.cod_cliente  =  :P182_P_COD_CLIENTE or :P182_P_COD_CLIENTE is null )',
'  and ( c.cod_vendedor =  :P182_P_COD_VENDEDOR or :P182_P_COD_VENDEDOR is null )',
'  and ( c.ser_comprobante = :P182_P_SER_COMPROBANTE or :P182_P_SER_COMPROBANTE is null )',
'  and ( det.cod_articulo = :P182_P_COD_ARTICULO or :P182_P_COD_ARTICULO is null )',
'   ',
'  and (r.cod_rubro = :P182_P_COD_RUBRO or :P182_P_COD_RUBRO is null )',
'  and c.cod_empresa = cc.cod_empresa',
'  and c.cod_cliente = cc.cod_cliente',
'  and cc.cod_persona = pc.cod_persona',
'  and (nvl(det.cod_motivo_anu,c.cod_motivo_anu) = :P182_P_COD_MOTIVO_ANU or :P182_P_COD_MOTIVO_ANU is null)',
'  and c.cod_empresa=anu.cod_empresa(+)',
'  and nvl(det.cod_motivo_anu,c.cod_motivo_anu)  = anu.cod_motivo_anu(+)',
'  and c.cod_empresa        = tc.cod_empresa',
'  and c.tip_comprobante    = tc.tip_comprobante',
'  and c.cod_empresa        = s.cod_empresa',
'  and c.cod_sucursal       = s.cod_sucursal',
'  and c.cod_moneda         = m.cod_moneda',
'  and c.cod_empresa        = v.cod_empresa',
'  and c.cod_vendedor       = v.cod_vendedor',
'  and v.cod_persona        = pv.cod_persona',
'  and c.cod_empresa=det.cod_empresa',
'  and c.tip_comprobante=det.tip_comprobante',
'  and c.ser_comprobante=det.ser_comprobante',
'  and c.nro_comprobante=det.nro_comprobante',
'  and (  c.estado in( ''A'' ,''C'') or nvl(det.cantidad_pendiente,0)>0  )',
'',
'group by  c.cod_sucursal, s.descripcion  , c.fec_comprobante, c.fec_ESTADO ,',
'       c.tip_comprobante, c.ser_comprobante, c.nro_comprobante,',
'       c.cod_cliente, pc.nombre  , c.cod_condicion_venta,',
'       c.cod_moneda, m.descripcion  , m.siglas, m.decimales, c.tip_cambio,',
'       c.cod_vendedor, pv.nombre,',
'       tc.descripcion  ,anu.cod_motivo_anu, anu.descripcion, det.cod_articulo , r.cod_rubro',
'order by c.cod_sucursal, c.cod_moneda, c.tip_comprobante, c.ser_comprobante, c.nro_comprobante',
'',
' '))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P182_P_COD_EMPRESA,P182_P_COD_SUCURSAL,P182_P_FEC_PED_INICIAL,P182_P_FEC_PED_FINAL,P182_P_COD_CLIENTE,P182_P_COD_VENDEDOR,P182_P_COD_ARTICULO,P182_P_COD_RUBRO,P182_P_COD_MOTIVO_ANU,P182_P_SER_COMPROBANTE'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'REPORTE_VTRANUPE'
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
 p_id=>wwv_flow_imp.id(37208349385511008)
,p_max_row_count=>'1000000'
,p_no_data_found_message=>'No se encontraron registros'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'JUANASIS'
,p_internal_uid=>37208349385511008
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(38809793947639650)
,p_db_column_name=>'COD_SUCURSAL'
,p_display_order=>10
,p_column_identifier=>'AB'
,p_column_label=>'Cod Sucursal'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(39854909003467001)
,p_db_column_name=>'SUCURSAL'
,p_display_order=>20
,p_column_identifier=>'AC'
,p_column_label=>'Sucursal'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(39855045616467002)
,p_db_column_name=>'FEC_COMPROBANTE'
,p_display_order=>30
,p_column_identifier=>'AD'
,p_column_label=>'Fec Comprobante'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(39855193542467003)
,p_db_column_name=>'FEC_ESTADO'
,p_display_order=>40
,p_column_identifier=>'AE'
,p_column_label=>'Fec Estado'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(39855224287467004)
,p_db_column_name=>'TIP_COMPROBANTE'
,p_display_order=>50
,p_column_identifier=>'AF'
,p_column_label=>'Tip Comprobante'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(39855319732467005)
,p_db_column_name=>'SER_COMPROBANTE'
,p_display_order=>60
,p_column_identifier=>'AG'
,p_column_label=>'Ser Comprobante'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(39855401909467006)
,p_db_column_name=>'NRO_COMPROBANTE'
,p_display_order=>70
,p_column_identifier=>'AH'
,p_column_label=>'Nro Comprobante'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(39855587196467007)
,p_db_column_name=>'COD_CLIENTE'
,p_display_order=>80
,p_column_identifier=>'AI'
,p_column_label=>'Cod Cliente'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(39855616920467008)
,p_db_column_name=>'CLIENTE'
,p_display_order=>90
,p_column_identifier=>'AJ'
,p_column_label=>'Cliente'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(39855736400467009)
,p_db_column_name=>'COD_CONDICION_VENTA'
,p_display_order=>100
,p_column_identifier=>'AK'
,p_column_label=>'Cod Condicion Venta'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(39855804651467010)
,p_db_column_name=>'COD_MONEDA'
,p_display_order=>110
,p_column_identifier=>'AL'
,p_column_label=>'Cod Moneda'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(39855938772467011)
,p_db_column_name=>'MONEDA'
,p_display_order=>120
,p_column_identifier=>'AM'
,p_column_label=>'Moneda'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(39856027498467012)
,p_db_column_name=>'SIGLAS'
,p_display_order=>130
,p_column_identifier=>'AN'
,p_column_label=>'Siglas'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(39856125477467013)
,p_db_column_name=>'DECIMALES'
,p_display_order=>140
,p_column_identifier=>'AO'
,p_column_label=>'Decimales'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(39856265637467014)
,p_db_column_name=>'TIP_CAMBIO'
,p_display_order=>150
,p_column_identifier=>'AP'
,p_column_label=>'Tip Cambio'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(39856308831467015)
,p_db_column_name=>'COD_VENDEDOR'
,p_display_order=>160
,p_column_identifier=>'AQ'
,p_column_label=>'Cod Vendedor'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(39856476342467016)
,p_db_column_name=>'VENDEDOR'
,p_display_order=>170
,p_column_identifier=>'AR'
,p_column_label=>'Vendedor'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(39856551169467017)
,p_db_column_name=>'RUBRO'
,p_display_order=>180
,p_column_identifier=>'AS'
,p_column_label=>'Rubro'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(39856631441467018)
,p_db_column_name=>'DESC_TIPO_COMPROBANTE'
,p_display_order=>190
,p_column_identifier=>'AT'
,p_column_label=>'Desc Tipo Comprobante'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(39856775782467019)
,p_db_column_name=>'TOT_IVA'
,p_display_order=>200
,p_column_identifier=>'AU'
,p_column_label=>'Tot Iva'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(39856857519467020)
,p_db_column_name=>'DESCUENTO'
,p_display_order=>210
,p_column_identifier=>'AV'
,p_column_label=>'Descuento'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(39856934242467021)
,p_db_column_name=>'MONTO_TOTAL'
,p_display_order=>220
,p_column_identifier=>'AW'
,p_column_label=>'Monto Total'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(39857004383467022)
,p_db_column_name=>'COD_MOTIVO_ANU'
,p_display_order=>230
,p_column_identifier=>'AX'
,p_column_label=>'Cod Motivo Anu'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(39857142352467023)
,p_db_column_name=>'MOTIVO_CIERRE'
,p_display_order=>240
,p_column_identifier=>'AY'
,p_column_label=>'Motivo Cierre'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(39857258931467024)
,p_db_column_name=>'ARTICULO'
,p_display_order=>250
,p_column_identifier=>'AZ'
,p_column_label=>'Articulo'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(39857398244467025)
,p_db_column_name=>'CANTIDAD'
,p_display_order=>260
,p_column_identifier=>'BA'
,p_column_label=>'Cantidad'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(39668350002939945)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'396684'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(37211002492511035)
,p_plug_name=>'PARAMETROS_PARA_REPORTE'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(37211143798511036)
,p_name=>'P182_P_COD_EMPRESA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(37211002492511035)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(37211290456511037)
,p_name=>'P182_P_COD_SUCURSAL'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(37211002492511035)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(37211300567511038)
,p_name=>'P182_P_FEC_PED_INICIAL'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(37211002492511035)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(37211492047511039)
,p_name=>'P182_P_FEC_PED_FINAL'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(37211002492511035)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(37211596660511040)
,p_name=>'P182_P_COD_CLIENTE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(37211002492511035)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(37211631893511041)
,p_name=>'P182_P_COD_VENDEDOR'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(37211002492511035)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(37211762517511042)
,p_name=>'P182_P_SER_COMPROBANTE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(37211002492511035)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(37211809205511043)
,p_name=>'P182_P_COD_ARTICULO'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(37211002492511035)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(37211944285511044)
,p_name=>'P182_P_COD_RUBRO'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(37211002492511035)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(37212048459511045)
,p_name=>'P182_P_COD_MOTIVO_ANU'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(37211002492511035)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(30806820850914212)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'limpiar_items'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(37207778783511002)
,p_process_sequence=>20
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_INIT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'        c001 COD_EMPRESA,',
'        c002 COD_SUCURSAL,',
'        c003 FEC_PED_INICIAL,',
'        c004 FEC_PED_FINAL,',
'        c005 COD_CLIENTE,',
'        c006 COD_VENDEDOR,',
'        c007 SER_COMPROBANTE,',
'        c008 COD_ARTICULO,',
'        c009 COD_RUBRO,',
'        c010 COD_MOTIVO_ANU',
'    INTO',
'        :P182_P_COD_EMPRESA,',
'        :P182_P_COD_SUCURSAL,',
'        :P182_P_FEC_PED_INICIAL,',
'        :P182_P_FEC_PED_FINAL,',
'        :P182_P_COD_CLIENTE,',
'        :P182_P_COD_VENDEDOR,',
'        :P182_P_SER_COMPROBANTE,',
'        :P182_P_COD_ARTICULO,',
'        :P182_P_COD_RUBRO,',
'        :P182_P_COD_MOTIVO_ANU',
'        ',
'',
'    from apex_collections',
'   where collection_name = ''PARAMETROS_VTRANUPE'' ',
'    and seq_id = 1;  ',
'',
''))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp.component_end;
end;
/
