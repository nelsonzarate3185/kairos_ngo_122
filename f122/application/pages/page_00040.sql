prompt --application/pages/page_00040
begin
--   Manifest
--     PAGE: 00040
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
 p_id=>40
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Resumen de Vta. por Vendedor'
,p_alias=>'RESUMEN-DE-VTA-POR-VENDEDOR'
,p_step_title=>'Resumen de Vta. por Vendedor'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
' ',
'.t-Form-label{',
'    color:  darkblue !important;',
'    font-weight: bold !important;;',
'    }',
'',
'#reg_parametros{',
'      background-color: #003a85 !important;',
'      box-shadow: black 1px 1px 5px 1px;}',
'',
'#P40_FECHA_FIN, #P40_FECHA_INI, #P40_SUCURSAL, #P40_MARCA, #P40_CATEGORIA, #P40_VENDEDOR, #P40_CONDICION_VTA {',
'    background: white;',
'    border-color: yellow; ',
'    color: darkblue;',
'}      ',
'',
'   .a-IRR-header--group{',
'      background-color: #003a85 !important;',
'	  font-weight: bold !important;',
'       color: #FFED00 !important;  ',
'      /*border:0.5px solid #16488a !important;*/',
'   }',
'',
'  /*.a-IRR-headerLink,*/ .radio_group label , #P40_OPCION_LABEL {',
'    background-color: #003a85 !important;',
'	  color: #FFED00 !important;   ',
'      /*padding: 0; */',
'      }',
'   ',
'.a-IRR-table tr td { ',
'        color: black !important;',
'   }',
' ',
'.a-IRR-table td* { ',
'    border: 1px solid #003a85b7 !important;',
'}',
''))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'NZARATE'
,p_last_upd_yyyymmddhh24miss=>'20240923151654'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(20358723428557542)
,p_plug_name=>'PARAMETROS'
,p_region_name=>'reg_parametros'
,p_region_template_options=>'t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(20359938897557554)
,p_plug_name=>'reporte'
,p_region_template_options=>'#DEFAULT#:t-TabsRegion-mod--simple'
,p_plug_template=>wwv_flow_imp.id(40132096801263663)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'FUNCTION_BODY'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P40_FECHA_INI is null and :P40_FECHA_FIN is null then',
'    return false;',
'else',
'        return true;',
'end if;'))
,p_plug_display_when_cond2=>'PLSQL'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(20360012187557555)
,p_plug_name=>'Resumen de Ventas'
,p_parent_plug_id=>wwv_flow_imp.id(20359938897557554)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'/*+ rule*/p.nombre,',
'       c.cod_sucursal,',
'       su.descripcion     desc_sucursal,',
'       v.cod_vendedor,/*',
'       v.descripcion      vend_desc,       ',
'       v.cod_vendedor_gru,',
'       v.cod_persona,',
'       c.cod_moneda,',
'       m.decimales,',
'       m.siglas,',
'       m.siglas siglas_vend,',
'       decimales deci_per,*/',
'       sum(decode(c.tip_comprobante, p1.valor, nvl(d.monto_total, 0), 0)) contado,',
'       sum(decode(c.tip_comprobante,',
'                  p2.valor,',
'                  nvl(d.monto_total, 0),',
'                  p3.valor,',
'                  nvl(d.monto_total, 0) * -1,',
'                  0)) credito,',
'       sum(decode(tc.stock,',
'                  ''R'',',
'                  nvl(d.descuento, 0),',
'                  ''S'',',
'                  nvl(d.descuento, 0) * -1)) descuentos,',
'',
'       sum(decode(tc.stock,',
'                  ''R'',',
'                  nvl(d.recargo, 0),',
'                  ''S'',',
'                  nvl(d.recargo, 0) * -1)) recargos,',
'       sum(decode(tc.stock,',
'                  ''R'',',
'                  nvl(d.total_iva, 0),',
'                  ''S'',',
'                  nvl(d.total_iva, 0) * -1)) iva,',
'                ',
'       sum(decode(tc.stock,',
'                  ''R'',',
'                  decode(c.cod_moneda,',
'                         ''1'',',
'                         nvl(ca.costo_prom_nue, 0),',
'                         nvl(ca.costo_prom_nue_us, 0)) * nvl(d.cantidad, 0),',
'                  ''S'',',
'                  (decode(c.cod_moneda,',
'                          ''1'',',
'                          nvl(ca.costo_prom_nue, 0),',
'                          nvl(ca.costo_prom_nue_us, 0)) *',
'                  nvl(d.cantidad, 0)) * -1)) costo,',
'                   ',
'       sum(nvl(d.cantidad, 0) * decode(tc.stock, ''S'', -1, 1)) cantidad ',
'  from vt_comprobantes_cabecera c,',
'       vt_comprobantes_detalle  d,',
'       fv_vendedores            v,',
'       personas                 p,',
'       tipos_comprobantes       tc,',
'       sucursales               su,',
'       monedas                  m,',
'       st_costos_art            ca,',
'       st_articulos             a,',
'       parametros_generales     p1,',
'       parametros_generales     p2,',
'       parametros_generales     p3',
' where c.cod_empresa = :P_COD_EMPRESA ',
'  and ( :P40_FECHA_INI is null or c.fec_comprobante>=:P40_FECHA_INI )',
'  and ( :P40_FECHA_FIN is null or  c.fec_comprobante<=:P40_FECHA_FIN )',
'  and ( :P40_SUCURSAL IS NULL OR c.cod_sucursal = :P40_SUCURSAL )',
'  and ( :P40_VENDEDOR IS NULL OR c.COD_VENDEDOR= :P40_VENDEDOR ) ',
'  and (:P40_CATEGORIA is null or a.cod_categoria = :P40_CATEGORIA)',
'  and (:P40_MARCA is null or a.cod_marca = :P40_MARCA)',
'  and (:P40_condicion_vta IS NULL OR c.COD_CONDICION_VENTA = :P40_condicion_vta) ',
'   and c.cod_empresa      = d.cod_empresa',
'   and c.tip_comprobante = d.tip_comprobante',
'   and c.ser_comprobante = d.ser_comprobante',
'   and c.nro_comprobante = d.nro_comprobante',
'',
'   and c.cod_empresa    = v.cod_empresa(+)',
'   and c.cod_vendedor   = v.cod_vendedor(+)',
'   and v.cod_persona    = p.cod_persona(+)',
'',
'   and c.cod_empresa     = tc.cod_empresa',
'   and c.tip_comprobante = tc.tip_comprobante',
'',
'   and (c.estado IS NULL OR c.estado <> ''A'')',
'',
'   and d.cod_empresa  = a.cod_empresa',
'   and d.cod_articulo = a.cod_articulo',
'',
'   and c.cod_empresa  = su.cod_empresa(+)',
'   and c.cod_sucursal = su.cod_sucursal(+)',
'',
'   and c.cod_moneda = m.cod_moneda',
'',
'   and p1.parametro = ''TIPO_CONTADO''',
'   and p2.parametro = ''TIPO_CREDITO''',
'   and p3.parametro = ''TIPO_NOTACRE''',
' ',
'   and d.cod_empresa  = ca.cod_empresa',
'   and d.cod_articulo = ca.cod_articulo',
'   and c.fec_comprobante >= ca.fec_comprobante',
'  ',
'   and to_char(ca.fec_comprobante, ''YYYYMMDD'') || ca.rowid = (select max(to_char(co.fec_comprobante, ''YYYYMMDD'') || co.rowid)',
'                                                                from st_costos_art co',
'                                                               where co.cod_empresa = d.cod_empresa',
'                                                                 and co.cod_articulo = d.cod_articulo',
'                                                             and co.fec_comprobante <= c.fec_comprobante)  ',
' group by p.nombre,',
'       c.cod_sucursal,',
'       su.descripcion,',
'       v.cod_vendedor',
'',
'',
'',
'',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P40_SUCURSAL,P40_CATEGORIA,P40_FECHA_INI,P40_VENDEDOR,P40_MARCA,P40_FECHA_FIN,P40_CONDICION_VTA,P40_OPCION'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'FUNCTION_BODY'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
' if nvl(:P40_OPCION,''T'') in (''T'',''M'',''G'') then ',
'        return false;',
'else',
'        return true; ',
'end if;'))
,p_plug_display_when_cond2=>'PLSQL'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Resumen de Ventas'
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
,p_plug_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
' if :P5_OPCION in (''T'',''M'',''G'') then ',
'    return false;',
'else',
'  if  :P5_FECHA_INI is not null or',
'      :P5_FECHA_FIN is not null then',
'        return true;',
'    else',
'        return false;',
'    end if;   ',
'end if;'))
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(21195435244598564)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_search_textbox=>'N'
,p_report_list_mode=>'NONE'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_reset=>'N'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'INV'
,p_internal_uid=>21195435244598564
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10931318303917821)
,p_db_column_name=>'NOMBRE'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Nombre'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10931756309917821)
,p_db_column_name=>'COD_VENDEDOR'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>unistr('C\00F3digo Vendedor')
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10932137895917821)
,p_db_column_name=>'CONTADO'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Contado'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10932596672917822)
,p_db_column_name=>'CREDITO'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Credito'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10932923271917822)
,p_db_column_name=>'DESCUENTOS'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Descuentos'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10933322439917822)
,p_db_column_name=>'RECARGOS'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Recargos'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10933794981917823)
,p_db_column_name=>'IVA'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Iva'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10934139837917823)
,p_db_column_name=>'COSTO'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Costo'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G990'
,p_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_display_condition=>'P40_OPCION'
,p_display_condition2=>'C'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10934541572917823)
,p_db_column_name=>'CANTIDAD'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Cantidad'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10934915507917824)
,p_db_column_name=>'COD_SUCURSAL'
,p_display_order=>140
,p_column_identifier=>'O'
,p_column_label=>unistr('C\00F3digo Suc.')
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10935337176917824)
,p_db_column_name=>'DESC_SUCURSAL'
,p_display_order=>150
,p_column_identifier=>'P'
,p_column_label=>unistr('Descripci\00F3n Sucursal')
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(21563823389859221)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'106373'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'COD_VENDEDOR:NOMBRE:COD_SUCURSAL:DESC_SUCURSAL:CANTIDAD:CONTADO:CREDITO:COSTO:APXWS_CC_001:DESCUENTOS:RECARGOS:IVA:APXWS_CC_002:'
,p_break_on=>'NOMBRE:0:0:0:0:0'
,p_break_enabled_on=>'NOMBRE:0:0:0:0:0'
,p_sum_columns_on_break=>'CANTIDAD:CONTADO:CREDITO:DESCUENTOS:RECARGOS:APXWS_CC_002:APXWS_CC_001:IVA:COSTO'
);
wwv_flow_imp_page.create_worksheet_computation(
 p_id=>wwv_flow_imp.id(10936012877917825)
,p_report_id=>wwv_flow_imp.id(21563823389859221)
,p_db_column_name=>'APXWS_CC_001'
,p_column_identifier=>'C01'
,p_computation_expr=>'nvl(G,0)+nvl( H,0)'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_column_type=>'NUMBER'
,p_column_label=>'Venta Neta'
,p_report_label=>'Venta Neta'
);
wwv_flow_imp_page.create_worksheet_computation(
 p_id=>wwv_flow_imp.id(10936475558917825)
,p_report_id=>wwv_flow_imp.id(21563823389859221)
,p_db_column_name=>'APXWS_CC_002'
,p_column_identifier=>'C02'
,p_computation_expr=>'nvl(G,0)+nvl(H,0)+nvl(k,0)'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_column_type=>'NUMBER'
,p_column_label=>'Venta Total'
,p_report_label=>'Venta Total'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(20360087435557556)
,p_plug_name=>'Por Marca y Cantidad'
,p_parent_plug_id=>wwv_flow_imp.id(20359938897557554)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select C.COD_EMPRESA, ',
'      v.cod_vendedor||'' - ''||v.descripcion vendedor,',
'      v.cod_vendedor,',
'      v.descripcion nomb_vendedor, a.cod_marca, mar.descripcion desc_marca, ',
'    sum( nvl( d.cantidad, 0 ) * decode( tc.stock, ''S'', -1, 1 ) ) cantidad                                                             ',
' from vt_comprobantes_cabecera c, vt_comprobantes_detalle d, fv_vendedores v, personas p, tipos_comprobantes tc,',
'      sucursales su, monedas m, st_articulos a, parametros_generales p1, parametros_generales p2,',
'      parametros_generales p3, st_marcas mar',
'where c.cod_empresa =  :p_cod_empresa',
'  and ( :P40_FECHA_INI is null or  c.fec_comprobante>=:P40_FECHA_INI )',
'  and ( :P40_FECHA_FIN is null or  c.fec_comprobante<=:P40_FECHA_FIN )',
'  and ( :P40_SUCURSAL IS NULL OR c.cod_sucursal = :P40_SUCURSAL )',
'  and ( :P40_VENDEDOR IS NULL OR V.COD_VENDEDOR= :P40_VENDEDOR )',
'  --- and ( :p_cod_persona IS NULL OR p.cod_persona = :p_cod_persona )',
'  and c.cod_empresa = v.cod_empresa (+)',
'  and c.cod_vendedor = v.cod_vendedor (+)',
'  and mar.cod_marca = a.cod_marca',
'  and p.cod_persona (+) = v.cod_persona',
'  and c.cod_empresa = tc.cod_empresa',
'  and c.tip_comprobante = tc.tip_comprobante',
'  and ( c.estado IS NULL OR c.estado <> ''A'' )',
'  and c.cod_empresa = d.cod_empresa',
'  and c.tip_comprobante = d.tip_comprobante',
'  and c.ser_comprobante = d.ser_comprobante',
'  and c.nro_comprobante = d.nro_comprobante',
'  and a.cod_empresa = d.cod_empresa',
'  and a.cod_articulo = d.cod_articulo',
'  and c.cod_empresa = su.cod_empresa (+)',
'  and c.cod_sucursal = su.cod_sucursal (+)',
'  and c.cod_moneda = m.cod_moneda',
'  and p1.parametro = ''TIPO_CONTADO''',
'  and p2.parametro = ''TIPO_CREDITO''',
'  and p3.parametro = ''TIPO_NOTACRE''',
'  and (:P40_MARCA is null or a.cod_marca = :P40_MARCA )',
'group by   v.cod_vendedor_gru,v.cod_vendedor,',
' v.descripcion , a.cod_marca, mar.descripcion ,C.COD_EMPRESA '))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P40_SUCURSAL,P40_CATEGORIA,P40_FECHA_INI,P40_VENDEDOR,P40_MARCA,P40_FECHA_FIN,P40_CONDICION_VTA'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P40_OPCION'
,p_plug_display_when_cond2=>'M'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Marca y Cant.'
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
 p_id=>wwv_flow_imp.id(21190703584598517)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_search_bar=>'N'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_enable_mail_download=>'Y'
,p_owner=>'INV'
,p_internal_uid=>21190703584598517
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10937125777917826)
,p_db_column_name=>'COD_EMPRESA'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Cod Empresa'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10937598921917826)
,p_db_column_name=>'COD_VENDEDOR'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Codigo'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10937913323917826)
,p_db_column_name=>'NOMB_VENDEDOR'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Nombre Vendedor'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10938327669917827)
,p_db_column_name=>'COD_MARCA'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Cod.Marca'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10938748762917827)
,p_db_column_name=>'DESC_MARCA'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>unistr('Descripci\00F3n Marca')
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10939156171917827)
,p_db_column_name=>'CANTIDAD'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Cantidad'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10939504869917827)
,p_db_column_name=>'VENDEDOR'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Vendedor'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(21670105740159296)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_type=>'REPORT'
,p_report_alias=>'107436'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'VENDEDOR:COD_VENDEDOR:NOMB_VENDEDOR:COD_MARCA:DESC_MARCA:CANTIDAD:'
,p_sort_column_1=>'COD_VENDEDOR'
,p_sort_direction_1=>'ASC'
,p_sort_column_2=>'NOMB_VENDEDOR'
,p_sort_direction_2=>'ASC'
,p_sort_column_3=>'DESC_MARCA'
,p_sort_direction_3=>'ASC'
,p_sort_column_4=>'0'
,p_sort_direction_4=>'ASC'
,p_sort_column_5=>'0'
,p_sort_direction_5=>'ASC'
,p_sort_column_6=>'0'
,p_sort_direction_6=>'ASC'
,p_break_on=>'VENDEDOR:0:0:0:0:0'
,p_break_enabled_on=>'VENDEDOR:0:0:0:0:0'
,p_sum_columns_on_break=>'CANTIDAD'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(20360250444557557)
,p_plug_name=>'Por Categoria y Cantidades'
,p_parent_plug_id=>wwv_flow_imp.id(20359938897557554)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select C.COD_EMPRESA, ',
'        v.cod_vendedor||'' - ''||v.descripcion vendedor_gru,',
'       v.cod_vendedor,',
'       v.descripcion nomb_vendedor,',
'       a.cod_categoria, ',
'       cat.descripcion desc_categoria, ',
'       sum( nvl( d.cantidad, 0 ) * decode( tc.stock, ''S'', -1, 1 ) ) cantidad                                                             ',
' from vt_comprobantes_cabecera c,',
'      vt_comprobantes_detalle d,',
'      fv_vendedores v, ',
'      personas p,',
'      tipos_comprobantes tc,',
'      sucursales su,',
'      monedas m, ',
'      st_articulos a,',
'      parametros_generales p1, ',
'      parametros_generales p2,',
'      parametros_generales p3, ',
'      st_categorias cat',
'--      st_marcas mar',
'where c.cod_empresa = :P_COD_EMPRESA',
'  and ( :P40_FECHA_INI is null or  c.fec_comprobante>=:P40_FECHA_INI )',
'  and ( :P40_FECHA_FIN is null or  c.fec_comprobante<=:P40_FECHA_FIN )',
'  and ( :P40_SUCURSAL IS NULL OR c.cod_sucursal = :P40_SUCURSAL )',
'  and ( :P40_VENDEDOR IS NULL OR V.COD_VENDEDOR= :P40_VENDEDOR )',
' --and ( :p_cod_persona IS NULL OR p.cod_persona = :p_cod_persona )',
'   and (:P40_CATEGORIA is null or a.cod_categoria = :P40_CATEGORIA)',
'   and (:P40_MARCA is null or a.cod_marca = :P40_MARCA)',
'  and c.cod_empresa = v.cod_empresa (+)',
'  and c.cod_vendedor = v.cod_vendedor (+)',
'  and a.cod_empresa  = cat.cod_empresa',
'  and a.cod_categoria = cat.cod_categoria',
'  and p.cod_persona (+) = v.cod_persona',
'  and c.cod_empresa = tc.cod_empresa',
'  and c.tip_comprobante = tc.tip_comprobante',
'  and ( c.estado IS NULL OR c.estado <> ''A'' )',
'  and c.cod_empresa = d.cod_empresa',
'  and c.tip_comprobante = d.tip_comprobante',
'  and c.ser_comprobante = d.ser_comprobante',
'  and c.nro_comprobante = d.nro_comprobante',
'  and a.cod_empresa = d.cod_empresa',
'  and a.cod_articulo = d.cod_articulo',
'  and c.cod_empresa = su.cod_empresa (+)',
'  and c.cod_sucursal = su.cod_sucursal (+)',
'  and c.cod_moneda = m.cod_moneda',
'  and p1.parametro = ''TIPO_CONTADO''',
'  and p2.parametro = ''TIPO_CREDITO''',
'  and p3.parametro = ''TIPO_NOTACRE''',
'group by   v.cod_vendedor_gru,',
'           v.cod_vendedor,',
'           v.descripcion , ',
'           a.cod_categoria, ',
'           cat.descripcion ,',
'           C.COD_EMPRESA',
'/*order by  2,5v.cod_vendedor_gru,',
'          a.cod_categoria*/'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P40_SUCURSAL,P40_VENDEDOR,P40_CATEGORIA,P40_CONDICION_VTA,P40_MARCA,P40_FECHA_INI,P40_FECHA_FIN'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P40_OPCION'
,p_plug_display_when_cond2=>'G'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Por Categoria y Cantidades'
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
 p_id=>wwv_flow_imp.id(21556415218847943)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_search_textbox=>'N'
,p_report_list_mode=>'NONE'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'JUANSA'
,p_internal_uid=>21556415218847943
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10940521298917828)
,p_db_column_name=>'COD_EMPRESA'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Cod Empresa'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10940901676917829)
,p_db_column_name=>'COD_VENDEDOR'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Cod.Vendedor'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10941353503917829)
,p_db_column_name=>'NOMB_VENDEDOR'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Nombre Vendedor'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10941753316917829)
,p_db_column_name=>'COD_CATEGORIA'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Cod.Categoria'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10942172308917829)
,p_db_column_name=>'DESC_CATEGORIA'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Descripcion Categoria'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10942538006917829)
,p_db_column_name=>'CANTIDAD'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Cantidad'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10942952479917830)
,p_db_column_name=>'VENDEDOR_GRU'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Vendedor'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(22062508100753646)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'111360'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'VENDEDOR_GRU:COD_VENDEDOR:NOMB_VENDEDOR:COD_CATEGORIA:DESC_CATEGORIA:CANTIDAD:'
,p_break_on=>'VENDEDOR_GRU:0:0:0:0:0'
,p_break_enabled_on=>'VENDEDOR_GRU:0:0:0:0:0'
,p_sum_columns_on_break=>'CANTIDAD'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(20360278291557558)
,p_plug_name=>'Consolidado'
,p_parent_plug_id=>wwv_flow_imp.id(20359938897557554)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>40
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'/*+ rule*/p.nombre, ',
'       v.cod_vendedor,/*',
'       v.descripcion      vend_desc,       ',
'       v.cod_vendedor_gru,',
'       v.cod_persona,',
'       c.cod_moneda,',
'       m.decimales,',
'       m.siglas,',
'       m.siglas siglas_vend,',
'       decimales deci_per,*/',
'       sum(decode(c.tip_comprobante, p1.valor, nvl(d.monto_total, 0), 0)) contado,',
'       sum(decode(c.tip_comprobante,',
'                  p2.valor,',
'                  nvl(d.monto_total, 0),',
'                  p3.valor,',
'                  nvl(d.monto_total, 0) * -1,',
'                  0)) credito,',
'       sum(decode(tc.stock,',
'                  ''R'',',
'                  nvl(d.descuento, 0),',
'                  ''S'',',
'                  nvl(d.descuento, 0) * -1)) descuentos,',
'',
'       sum(decode(tc.stock,',
'                  ''R'',',
'                  nvl(d.recargo, 0),',
'                  ''S'',',
'                  nvl(d.recargo, 0) * -1)) recargos,',
'       sum(decode(tc.stock,',
'                  ''R'',',
'                  nvl(d.total_iva, 0),',
'                  ''S'',',
'                  nvl(d.total_iva, 0) * -1)) iva,',
'                ',
'       sum(decode(tc.stock,',
'                  ''R'',',
'                  decode(c.cod_moneda,',
'                         ''1'',',
'                         nvl(ca.costo_prom_nue, 0),',
'                         nvl(ca.costo_prom_nue_us, 0)) * nvl(d.cantidad, 0),',
'                  ''S'',',
'                  (decode(c.cod_moneda,',
'                          ''1'',',
'                          nvl(ca.costo_prom_nue, 0),',
'                          nvl(ca.costo_prom_nue_us, 0)) *',
'                  nvl(d.cantidad, 0)) * -1)) costo,',
'                   ',
'       sum(nvl(d.cantidad, 0) * decode(tc.stock, ''S'', -1, 1)) cantidad ',
'  from vt_comprobantes_cabecera c,',
'       vt_comprobantes_detalle  d,',
'       fv_vendedores            v,',
'       personas                 p,',
'       tipos_comprobantes       tc,',
'       sucursales               su,',
'       monedas                  m,',
'       st_costos_art            ca,',
'       st_articulos             a,',
'       parametros_generales     p1,',
'       parametros_generales     p2,',
'       parametros_generales     p3',
' where c.cod_empresa = ''1'' ',
'  and ( :P40_FECHA_INI is null or c.fec_comprobante>=:P40_FECHA_INI )',
'  and ( :P40_FECHA_FIN is null or  c.fec_comprobante<=:P40_FECHA_FIN )',
'  and ( :P40_SUCURSAL IS NULL OR c.cod_sucursal = :P40_SUCURSAL )',
'  and ( :P40_VENDEDOR IS NULL OR c.COD_VENDEDOR= :P40_VENDEDOR ) ',
'  and (:P40_CATEGORIA is null or a.cod_categoria = :P40_CATEGORIA)',
'  and (:P40_MARCA is null or a.cod_marca = :P40_MARCA)',
'  and (:P40_condicion_vta IS NULL OR c.COD_CONDICION_VENTA = :P40_condicion_vta) ',
'   and c.cod_empresa      = d.cod_empresa',
'   and c.tip_comprobante = d.tip_comprobante',
'   and c.ser_comprobante = d.ser_comprobante',
'   and c.nro_comprobante = d.nro_comprobante',
'',
'   and c.cod_empresa    = v.cod_empresa(+)',
'   and c.cod_vendedor   = v.cod_vendedor(+)',
'   and v.cod_persona    = p.cod_persona(+)',
'',
'   and c.cod_empresa     = tc.cod_empresa',
'   and c.tip_comprobante = tc.tip_comprobante',
'',
'   and (c.estado IS NULL OR c.estado <> ''A'')',
'',
'   and d.cod_empresa  = a.cod_empresa',
'   and d.cod_articulo = a.cod_articulo',
'',
'   and c.cod_empresa  = su.cod_empresa(+)',
'   and c.cod_sucursal = su.cod_sucursal(+)',
'',
'   and c.cod_moneda = m.cod_moneda',
'',
'   and p1.parametro = ''TIPO_CONTADO''',
'   and p2.parametro = ''TIPO_CREDITO''',
'   and p3.parametro = ''TIPO_NOTACRE''',
' ',
'   and d.cod_empresa  = ca.cod_empresa',
'   and d.cod_articulo = ca.cod_articulo',
'   and c.fec_comprobante >= ca.fec_comprobante',
'  ',
'   and to_char(ca.fec_comprobante, ''YYYYMMDD'') || ca.rowid = (select max(to_char(co.fec_comprobante, ''YYYYMMDD'') || co.rowid)',
'                                                                from st_costos_art co',
'                                                               where co.cod_empresa = d.cod_empresa',
'                                                                 and co.cod_articulo = d.cod_articulo',
'                                                             and co.fec_comprobante <= c.fec_comprobante)  ',
' group by p.nombre, ',
'       v.cod_vendedor',
'',
'order by p.nombre, ',
'       v.cod_vendedor',
'',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P40_SUCURSAL,P40_MARCA,P40_CATEGORIA,P40_VENDEDOR,P40_CONDICION_VTA,P40_FECHA_INI,P40_FECHA_FIN'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P40_OPCION'
,p_plug_display_when_cond2=>'T'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Consolidado'
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
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(23365521477718844)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_search_textbox=>'N'
,p_report_list_mode=>'NONE'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'JUANSA'
,p_internal_uid=>23365521477718844
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10943929540917831)
,p_db_column_name=>'NOMBRE'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Nombre del Vendedor'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10944316274917831)
,p_db_column_name=>'COD_VENDEDOR'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Cod Vendedor'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10944748277917831)
,p_db_column_name=>'CONTADO'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Contado'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10945160474917832)
,p_db_column_name=>'CREDITO'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Credito'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10945562192917832)
,p_db_column_name=>'DESCUENTOS'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Descuentos'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10945975732917832)
,p_db_column_name=>'RECARGOS'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Recargos'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10946376062917833)
,p_db_column_name=>'IVA'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Iva'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10946713545917833)
,p_db_column_name=>'COSTO'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Costo'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10947191054917833)
,p_db_column_name=>'CANTIDAD'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Cantidad'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(24391076277852609)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'134646'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'COD_VENDEDOR:NOMBRE:CANTIDAD:COSTO:CONTADO:CREDITO:APXWS_CC_001:DESCUENTOS:RECARGOS:IVA:APXWS_CC_002:'
);
wwv_flow_imp_page.create_worksheet_computation(
 p_id=>wwv_flow_imp.id(10947850886917834)
,p_report_id=>wwv_flow_imp.id(24391076277852609)
,p_db_column_name=>'APXWS_CC_001'
,p_column_identifier=>'C01'
,p_computation_expr=>'NVL(C,0) + NVL(D,0)'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_column_type=>'NUMBER'
,p_column_label=>'Venta Neta'
,p_report_label=>'Venta Neta'
);
wwv_flow_imp_page.create_worksheet_computation(
 p_id=>wwv_flow_imp.id(10948283558917834)
,p_report_id=>wwv_flow_imp.id(24391076277852609)
,p_db_column_name=>'APXWS_CC_002'
,p_column_identifier=>'C02'
,p_computation_expr=>'nvl( C,0)+nvl( D,0)+nvl( G,0)'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_column_type=>'NUMBER'
,p_column_label=>'Venta Total'
,p_report_label=>'Venta Total'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(10927148044917816)
,p_button_sequence=>110
,p_button_plug_id=>wwv_flow_imp.id(20358723428557542)
,p_button_name=>'Generar'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'t-Button--iconLeft:t-Button--hoverIconPush'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Generar'
,p_button_css_classes=>'u-color-21-bg u-color-43-text'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10927516206917818)
,p_name=>'P40_SUCURSAL'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(20358723428557542)
,p_prompt=>'Sucursal'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  select descripcion ||'' - ''||cod_sucursal,  cod_sucursal   ',
'      from sucursales',
'     where cod_empresa =:P_COD_EMPRESA',
'     ',
'        order by 1 asc',
'       '))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'...'
,p_cSize=>30
,p_colspan=>3
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
 p_id=>wwv_flow_imp.id(10927977928917818)
,p_name=>'P40_MARCA'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(20358723428557542)
,p_prompt=>'Marca'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select descripcion ||'' - ''||cod_marca descmarca ,cod_marca  ',
'  from st_marcas ',
'        order by 1 asc',
''))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
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
 p_id=>wwv_flow_imp.id(10928382606917818)
,p_name=>'P40_CATEGORIA'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(20358723428557542)
,p_prompt=>'Categoria'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  select descripcion ||'' - ''|| cod_categoria descat ,cod_categoria cod',
'	    from st_categorias ',
'        order by 1 asc'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
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
 p_id=>wwv_flow_imp.id(10928764327917819)
,p_name=>'P40_VENDEDOR'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(20358723428557542)
,p_prompt=>'Vendedor'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov_language=>'PLSQL'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
' ',
'	 SELECT  P.NOMBRE||'' - ''||f.cod_vendedor d ,F.COD_VENDEDOR FROM FV_VENDEDORES F, PERSONAS P',
'WHERE F.COD_EMPRESA=:P_COD_EMPRESA',
'AND F.COD_PERSONA=P.COD_PERSONA',
'AND NVL(F.ESTADO,''I'')NOT IN ''I''',
'union all',
'SELECT  ''TODOS'' NOMBRE,NULL COD_VENDEDOR FROM dual',
'order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'...'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>3
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
 p_id=>wwv_flow_imp.id(10929137899917819)
,p_name=>'P40_CONDICION_VTA'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(20358723428557542)
,p_prompt=>unistr('Condici\00F3n de venta')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
' select c.descripcion ||'' - ''||c.cod_condicion_venta descond, c.cod_condicion_venta',
'      from cc_condiciones_ventas c,  vt_listas_precios_cab lp',
'     where c.cod_empresa = :P_cod_empresa',
'     ----  and c.cod_condicion_venta = :b_parametro.cod_condicion_venta',
'       and lp.cod_empresa = c.cod_empresa',
'       and lp.cod_lista_precio = c.cod_lista_precio',
'       order by 1 asc;',
'',
''))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
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
 p_id=>wwv_flow_imp.id(10929587225917819)
,p_name=>'P40_OPCION'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(20358723428557542)
,p_prompt=>'<STRONG>VISUALIZAR</STRONG>'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC2:Resumen de Venta;R,Mostrar costos;C,Por Marcas y Cantidades;M,Por Categorias y Cantidades;G,Consolidado;T'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'1'
,p_attribute_02=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10929964229917819)
,p_name=>'P40_FECHA_INI'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(20358723428557542)
,p_prompt=>'Fecha desde'
,p_format_mask=>'DD/MM/YYYY'
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>30
,p_colspan=>3
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
 p_id=>wwv_flow_imp.id(10930349208917819)
,p_name=>'P40_FECHA_FIN'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(20358723428557542)
,p_prompt=>'Fecha hasta'
,p_format_mask=>'DD/MM/YYYY'
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(10948794980917835)
,p_validation_name=>'val_null_ffini'
,p_validation_sequence=>10
,p_validation=>'P40_FECHA_INI'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Debe seleccionar el rango de fecha inicial'
,p_when_button_pressed=>wwv_flow_imp.id(10927148044917816)
,p_associated_item=>wwv_flow_imp.id(10929964229917819)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(10949160188917835)
,p_validation_name=>'val_null_ffin'
,p_validation_sequence=>20
,p_validation=>'P40_FECHA_FIN'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Debe seleccionar el rango de Fecha Final.'
,p_when_button_pressed=>wwv_flow_imp.id(10927148044917816)
,p_associated_item=>wwv_flow_imp.id(10930349208917819)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(10949565596917835)
,p_validation_name=>'New'
,p_validation_sequence=>30
,p_validation=>'P40_OPCION'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Debe seleccionar un tipo de Informe!'
,p_when_button_pressed=>wwv_flow_imp.id(10927148044917816)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp.component_end;
end;
/
