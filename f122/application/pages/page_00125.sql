prompt --application/pages/page_00125
begin
--   Manifest
--     PAGE: 00125
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
 p_id=>125
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'VTRANUPE'
,p_alias=>'VTRANUPE'
,p_step_title=>'VTRANUPE'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'INV'
,p_last_upd_yyyymmddhh24miss=>'20230204103204'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(29595193790400504)
,p_plug_name=>'Parametros'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody:margin-top-lg:margin-left-lg:margin-right-lg'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(31108575508050922)
,p_plug_name=>'VARIABLES'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(82258229952874025)
,p_plug_name=>'REPORTE_VTRANUPE'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>60
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
'  where :P125_AUX_CONTROL_REPORTE is not null',
'  and c.cod_empresa        =  :P125_COD_EMPRESA',
'  and ( c.cod_sucursal     =  :P125_COD_SUCURSAL or :P125_COD_SUCURSAL is null )',
'  and ( c.fec_ESTADO >= to_date(:P125_FEC_PED_INICIAL,''dd/mm/yyyy'') or :P125_FEC_PED_INICIAL is null )',
'  and ( c.fec_ESTADO  <= to_date(:P125_FEC_PED_FINAL,''dd/mm/yyyy'') or :P125_FEC_PED_FINAL is null )',
'  and ( c.cod_cliente  =  :P125_COD_CLIENTE or :P125_COD_CLIENTE is null )',
'  and ( c.cod_vendedor =  :P125_COD_VENDEDOR or :P125_COD_VENDEDOR is null )',
'  and ( c.ser_comprobante = :P125_SER_COMPROBANTE or :P125_SER_COMPROBANTE is null )',
'  and ( det.cod_articulo = :P125_COD_ARTICULO or :P125_COD_ARTICULO is null )',
'   ',
'  and (r.cod_rubro = :P125_COD_RUBRO or :P125_COD_RUBRO is null )',
'  and c.cod_empresa = cc.cod_empresa',
'  and c.cod_cliente = cc.cod_cliente',
'  and cc.cod_persona = pc.cod_persona',
'  and (nvl(det.cod_motivo_anu,c.cod_motivo_anu) = :P125_COD_MOTIVO_ANU or :P125_COD_MOTIVO_ANU is null)',
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
,p_ajax_items_to_submit=>'P125_COD_SUCURSAL,P125_COD_VENDEDOR,P125_COD_CLIENTE,P125_COD_RUBRO,P125_COD_ARTICULO,P125_COD_MOTIVO_ANU,P125_FEC_PED_INICIAL,P125_FEC_PED_FINAL,P125_SER_COMPROBANTE,P125_VER_AGENTES,P125_AUX_CONTROL_REPORTE'
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
 p_id=>wwv_flow_imp.id(82258454796874027)
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
,p_internal_uid=>82258454796874027
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(45050446571363021)
,p_db_column_name=>'COD_SUCURSAL'
,p_display_order=>10
,p_column_identifier=>'AB'
,p_column_label=>'Cod Sucursal'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(45050851888363022)
,p_db_column_name=>'SUCURSAL'
,p_display_order=>20
,p_column_identifier=>'AC'
,p_column_label=>'Sucursal'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(45051269792363022)
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
 p_id=>wwv_flow_imp.id(45051662225363022)
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
 p_id=>wwv_flow_imp.id(45052036761363022)
,p_db_column_name=>'TIP_COMPROBANTE'
,p_display_order=>50
,p_column_identifier=>'AF'
,p_column_label=>'Tip Comprobante'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(45052441148363023)
,p_db_column_name=>'SER_COMPROBANTE'
,p_display_order=>60
,p_column_identifier=>'AG'
,p_column_label=>'Ser Comprobante'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(45052852658363023)
,p_db_column_name=>'NRO_COMPROBANTE'
,p_display_order=>70
,p_column_identifier=>'AH'
,p_column_label=>'Nro Comprobante'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(45053221903363023)
,p_db_column_name=>'COD_CLIENTE'
,p_display_order=>80
,p_column_identifier=>'AI'
,p_column_label=>'Cod Cliente'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(45053609397363023)
,p_db_column_name=>'CLIENTE'
,p_display_order=>90
,p_column_identifier=>'AJ'
,p_column_label=>'Cliente'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(45054009191363023)
,p_db_column_name=>'COD_CONDICION_VENTA'
,p_display_order=>100
,p_column_identifier=>'AK'
,p_column_label=>'Cod Condicion Venta'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(45054431692363023)
,p_db_column_name=>'COD_MONEDA'
,p_display_order=>110
,p_column_identifier=>'AL'
,p_column_label=>'Cod Moneda'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(45054888376363024)
,p_db_column_name=>'MONEDA'
,p_display_order=>120
,p_column_identifier=>'AM'
,p_column_label=>'Moneda'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(45055223464363024)
,p_db_column_name=>'SIGLAS'
,p_display_order=>130
,p_column_identifier=>'AN'
,p_column_label=>'Siglas'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(45055672123363024)
,p_db_column_name=>'DECIMALES'
,p_display_order=>140
,p_column_identifier=>'AO'
,p_column_label=>'Decimales'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(45056053822363024)
,p_db_column_name=>'TIP_CAMBIO'
,p_display_order=>150
,p_column_identifier=>'AP'
,p_column_label=>'Tip Cambio'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(45056422513363024)
,p_db_column_name=>'COD_VENDEDOR'
,p_display_order=>160
,p_column_identifier=>'AQ'
,p_column_label=>'Cod Vendedor'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(45056820084363025)
,p_db_column_name=>'VENDEDOR'
,p_display_order=>170
,p_column_identifier=>'AR'
,p_column_label=>'Vendedor'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(45057252698363025)
,p_db_column_name=>'RUBRO'
,p_display_order=>180
,p_column_identifier=>'AS'
,p_column_label=>'Rubro'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(45057649146363025)
,p_db_column_name=>'DESC_TIPO_COMPROBANTE'
,p_display_order=>190
,p_column_identifier=>'AT'
,p_column_label=>'Desc Tipo Comprobante'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(45058097359363025)
,p_db_column_name=>'TOT_IVA'
,p_display_order=>200
,p_column_identifier=>'AU'
,p_column_label=>'Tot Iva'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(45058407853363025)
,p_db_column_name=>'DESCUENTO'
,p_display_order=>210
,p_column_identifier=>'AV'
,p_column_label=>'Descuento'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(45058881113363025)
,p_db_column_name=>'MONTO_TOTAL'
,p_display_order=>220
,p_column_identifier=>'AW'
,p_column_label=>'Monto Total'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(45059286776363026)
,p_db_column_name=>'COD_MOTIVO_ANU'
,p_display_order=>230
,p_column_identifier=>'AX'
,p_column_label=>'Cod Motivo Anu'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(45059640917363026)
,p_db_column_name=>'MOTIVO_CIERRE'
,p_display_order=>240
,p_column_identifier=>'AY'
,p_column_label=>'Motivo Cierre'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(45060033553363026)
,p_db_column_name=>'ARTICULO'
,p_display_order=>250
,p_column_identifier=>'AZ'
,p_column_label=>'Articulo'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(45060471933363026)
,p_db_column_name=>'CANTIDAD'
,p_display_order=>260
,p_column_identifier=>'BA'
,p_column_label=>'Cantidad'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(84718455414302964)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'396684'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ARTICULO:CANTIDAD:CLIENTE:COD_CLIENTE:COD_CONDICION_VENTA:COD_MONEDA:COD_MOTIVO_ANU:COD_SUCURSAL:COD_VENDEDOR:DECIMALES:DESC_TIPO_COMPROBANTE:DESCUENTO:FEC_COMPROBANTE:FEC_ESTADO:MONEDA:MONTO_TOTAL:MOTIVO_CIERRE:NRO_COMPROBANTE:RUBRO:SER_COMPROBANTE:'
||'SIGLAS:SUCURSAL:TIP_CAMBIO:TIP_COMPROBANTE:TOT_IVA:VENDEDOR:'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(33957636282918905)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(29595193790400504)
,p_button_name=>'Ejecutar'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Ejecutar'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(32505581596870637)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(29595193790400504)
,p_button_name=>'Limpiar'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Limpiar'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(33958366415918912)
,p_branch_action=>'f?p=&APP_ID.:159:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(29595389992400506)
,p_name=>'P125_COD_SUCURSAL'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(29595193790400504)
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
,p_lov_null_text=>'...'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(29595495827400507)
,p_name=>'P125_P_NOM_SUCURSAL'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_imp.id(29595193790400504)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(29596158035400514)
,p_name=>'P125_COD_VENDEDOR'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(29595193790400504)
,p_prompt=>'Vendedor'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_VENDEDORES_VTRANUPE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select nombre, cod_vendedor from fv_vendedores v, personas p ',
'where v.cod_empresa = :P_COD_EMPRESA',
'and v.cod_persona = p.cod_persona ',
'order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'...'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(29596284361400515)
,p_name=>'P125_P_NOM_VENDEDOR'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_imp.id(29595193790400504)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(29596457394400517)
,p_name=>'P125_P_NOM_CLIENTE'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_imp.id(29595193790400504)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(29596511373400518)
,p_name=>'P125_COD_CLIENTE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(29595193790400504)
,p_prompt=>'Cliente'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_CLIENTES_VTRANUPE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cod_cliente, ltrim(nombre) nombre ',
'from cc_clientes, personas ',
'where cc_clientes.cod_cliente = personas.cod_persona ',
'--order by nombre',
'order by cod_cliente'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'...'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(29596694054400519)
,p_name=>'P125_COD_RUBRO'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(29595193790400504)
,p_prompt=>'Rubro'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_RUBROS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT cod_rubro||'' - ''||descripcion D, ',
'         cod_rubro R',
'    FROM st_rubro ',
'   WHERE cod_empresa = :P_COD_EMPRESA',
'ORDER BY descripcion;'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'...'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(29596792450400520)
,p_name=>'P125_P_DESC_RUBRO'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_imp.id(29595193790400504)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(29596820020400521)
,p_name=>'P125_COD_ARTICULO'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(29595193790400504)
,p_prompt=>'Articulo'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_ARTICULOS_VTRANUPE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select descripcion, cod_articulo ',
'from st_articulos ',
'where cod_empresa = :P_COD_EMPRESA',
'order by descripcion'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'...'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(29596971272400522)
,p_name=>'P125_P_DESC_ARTICULO'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_imp.id(29595193790400504)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(29597025219400523)
,p_name=>'P125_COD_MOTIVO_ANU'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(29595193790400504)
,p_prompt=>'Motivo'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_ANULACION'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'    descripcion,',
'    cod_motivo_anu ',
'from VT_MOTIVO_ANULACION',
'where cod_empresa = :P_COD_EMPRESA ',
'and TIP_MOTIVO=''3'' ',
'order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'...'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(29597114088400524)
,p_name=>'P125_P_DESC_MOTIVO'
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_imp.id(29595193790400504)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(29597997521400532)
,p_name=>'P125_VER_AGENTES'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(29595193790400504)
,p_prompt=>'Ver Agentes de Centro De Contactos'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(29598154149400534)
,p_name=>'P125_FEC_PED_INICIAL'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(29595193790400504)
,p_prompt=>'Fecha Inicial'
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>30
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(29598243512400535)
,p_name=>'P125_FEC_PED_FINAL'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(29595193790400504)
,p_prompt=>'Fecha Final'
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(29598353441400536)
,p_name=>'P125_SER_COMPROBANTE'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(29595193790400504)
,p_prompt=>'Serie'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(31108665299050923)
,p_name=>'P125_COD_EMPRESA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(31108575508050922)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(31108765086050924)
,p_name=>'P125_COD_USUARIO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(31108575508050922)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(31108833709050925)
,p_name=>'P125_NOM_EMPRESA'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(31108575508050922)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(31108910481050926)
,p_name=>'P125_NOM_SUCURSAL'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(31108575508050922)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(31109005577050927)
,p_name=>'P125_NOM_MODULO'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(31108575508050922)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(31109109210050928)
,p_name=>'P125_COD_MODULO'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(31108575508050922)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(32502700637870609)
,p_name=>'P125_COD_PERSONA'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(31108575508050922)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(37207933810511004)
,p_name=>'P125_URL'
,p_item_sequence=>270
,p_item_plug_id=>wwv_flow_imp.id(29595193790400504)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(44172973022881315)
,p_name=>'P125_AUX_CONTROL_REPORTE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(31108575508050922)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(55469625845684401)
,p_name=>'P125_AUX_MSJ_CONTROL'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(31108575508050922)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(31109498475050931)
,p_name=>'DA_OCULTAR'
,p_event_sequence=>20
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(31109795803050934)
,p_event_id=>wwv_flow_imp.id(31109498475050931)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P125_COD_SUCURSAL,P125_COD_VENDEDOR,P125_COD_CLIENTE,P125_COD_RUBRO,P125_COD_ARTICULO,P125_COD_MOTIVO_ANU,P125_FEC_PED_INICIAL,P125_FEC_PED_FINAL,P125_SER_COMPROBANTE'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(44173237388881318)
,p_event_id=>wwv_flow_imp.id(31109498475050931)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(82258229952874025)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(32505673682870638)
,p_name=>'DA_LIMPIAR_PARAMETROS'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(32505581596870637)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(32505716328870639)
,p_event_id=>wwv_flow_imp.id(32505673682870638)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P125_COD_SUCURSAL,P125_COD_VENDEDOR,P125_COD_CLIENTE,P125_COD_RUBRO,P125_COD_ARTICULO,P125_COD_MOTIVO_ANU,P125_FEC_PED_INICIAL,P125_FEC_PED_FINAL,P125_SER_COMPROBANTE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(33957864785918907)
,p_name=>'da_mostrar_reporte'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(33957636282918905)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(37207809442511003)
,p_event_id=>wwv_flow_imp.id(33957864785918907)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P125_FEC_PED_INICIAL is null or :P125_FEC_PED_FINAL is null then',
'    :P125_AUX_MSJ_CONTROL := ''La fecha no puede ser nula'';',
'    elsif to_date(:P125_FEC_PED_INICIAL, ''dd/mm/yyyy'') > to_date( :P125_FEC_PED_FINAL, ''dd/mm/yyyy'') then',
'        :P125_AUX_MSJ_CONTROL := ''La fecha inicial no puede ser mayor a la fecha final'';',
'            else ',
'                :P125_AUX_CONTROL_REPORTE := ''EJECUTAR'';',
'                :P125_AUX_MSJ_CONTROL := NULL;',
'',
'end if;'))
,p_attribute_02=>'P125_AUX_CONTROL_REPORTE,P125_FEC_PED_INICIAL,P125_FEC_PED_FINAL,P125_AUX_MSJ_CONTROL'
,p_attribute_03=>'P125_AUX_CONTROL_REPORTE,P125_AUX_MSJ_CONTROL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(55469763834684402)
,p_event_id=>wwv_flow_imp.id(33957864785918907)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P125_AUX_MSJ_CONTROL.'
,p_attribute_02=>'ERROR'
,p_attribute_03=>'warning'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P125_AUX_MSJ_CONTROL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(44173029497881316)
,p_event_id=>wwv_flow_imp.id(33957864785918907)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(82258229952874025)
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P125_AUX_MSJ_CONTROL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(44173114213881317)
,p_event_id=>wwv_flow_imp.id(33957864785918907)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(82258229952874025)
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P125_AUX_MSJ_CONTROL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(35404639157310526)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'limpiar_items'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(29595071857400503)
,p_process_sequence=>20
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_INIT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P_COD_MODULO := ''VT'';',
'--:P_COD_EMPRESA := ''1'';',
'--INICIALIZA GLOBALES',
'-- Asigna los valores por defecto en caso de que no existan las GLOBALES',
'--Almacena los valores en variables locales',
':P125_COD_USUARIO := nvl(:P_COD_USUARIO, :APP_USER);',
':P125_COD_EMPRESA := ''1'';',
':P125_NOM_EMPRESA := NVL(:P_NOM_EMPRESA, NULL);',
':P125_COD_SUCURSAL:= nvl(:P_COD_SUCURSAL,''01'');',
':P125_NOM_SUCURSAL   := NVL(:P_NOM_SUCURSAL,NULL);',
':P125_COD_MODULO  := nvl(:P_COD_MODULO,''VT'');',
'--WHEN-VALIDATE-ITEM --BLOQUE PARAMETRO COD_SUCURSAL',
' ',
'APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(P_COLLECTION_NAME => ''PARAMETROS_VTRANUPE'');',
':P125_AUX_CONTROL_REPORTE := null;',
':P125_AUX_MSJ_CONTROL := null;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp.component_end;
end;
/
