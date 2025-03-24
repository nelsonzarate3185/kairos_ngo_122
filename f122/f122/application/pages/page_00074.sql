prompt --application/pages/page_00074
begin
--   Manifest
--     PAGE: 00074
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
 p_id=>74
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Cartera de Clientes'
,p_alias=>'CARTERA-DE-CLIENTES'
,p_step_title=>'Cartera de Clientes'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'18'
,p_last_updated_by=>'NZARATE'
,p_last_upd_yyyymmddhh24miss=>'20240919111519'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(61232240127881350)
,p_plug_name=>'Filtro'
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40108275410263656)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(63298922590707848)
,p_plug_name=>'Cartera de Clientes'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>40
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'',
'COD_CLIENTE,',
'NOMBRE,',
'VENTAS_FECHA_PERIODO,VENTAS_FECHA_PERIODO_ANT,',
'case when VENTAS_FECHA_PERIODO_ANT>0 then',
'VENTAS_FECHA_PERIODO *100/ VENTAS_FECHA_PERIODO_ANT',
'when VENTAS_FECHA_PERIODO_ANT=0 and VENTAS_FECHA_PERIODO=0 then',
'0',
'else 100 end venta_variacion,',
'DIRECCION,',
'CODIGO_CIUDAD,',
'DESCRIPCION_CIUDAD,',
'CODIGO_DEPARTAMENTO,',
'DESCRIPCION_DEPARTAMENTO,',
'TELEFONO,',
'RUC,',
'ESTADO,',
'MOTIVO,',
'AGENTE_CREDITO,',
'AGENTE_COBRO,',
'COD_LISTA_PRECIO,',
'COD_CONDICION_VENTA,',
'LINEA_DE_CREDITO,',
'MONEDA,',
'COD_TIP_CLIENTE,',
'TIPO_CLIENTE,',
'FEC_ULTIMA_COMPRA,',
'FECHA_ULTIMA_VISITA,',
'LINEA_EJECUTADA,',
'DEUDA_VENCIDA,',
'DEUDA_TOTAL,',
'TIPO_IMPUESTO,',
'CREDITO_DISPONIBLE,',
'PEDIDOS_PENDIENTES,',
'SIN_VENTA_60_DIAS,',
'SIN_VENTA_30_DIAS,',
'HOJA_RUTA_inventiva,efectividad,NOMBRE_VENDEDOR',
'FROM ',
'(select COD_CLIENTE,',
'NOMBRE,',
'DIRECCION,',
'CODIGO_CIUDAD,',
'DESCRIPCION_CIUDAD,',
'CODIGO_DEPARTAMENTO,',
'DESCRIPCION_DEPARTAMENTO,',
'TELEFONO,',
'RUC,',
'ESTADO,',
'MOTIVO,',
'AGENTE_CREDITO,',
'AGENTE_COBRO,',
'COD_LISTA_PRECIO,',
'COD_CONDICION_VENTA,',
'LINEA_DE_CREDITO,',
'MONEDA,',
'COD_TIP_CLIENTE,',
'TIPO_CLIENTE,',
'FEC_ULTIMA_COMPRA,',
'FECHA_ULTIMA_VISITA,',
'LINEA_EJECUTADA,',
'DEUDA_VENCIDA,',
'DEUDA_TOTAL,',
'TIPO_IMPUESTO,',
'CREDITO_DISPONIBLE,',
'PEDIDOS_PENDIENTES,',
'',
'',
'NVL(',
'           (select sum(nvl(vd.monto_total,0)+NVL(VD.TOTAL_IVA,0)*',
'           CASE WHEN VC.TIP_COMPROBANTE=''NCR'' THEN -1 ELSE 1 END',
'           )',
'           from VT_COMPROBANTES_CABECERA vc, VT_COMPROBANTES_DETALLE vd',
'           where vc.cod_empresa=:P_COD_EMPRESA',
'           and vc.cod_cliente=CAR.COD_CLIENTE',
'           and vc.cod_empresa=vd.cod_empresa',
'           AND VC.FEC_COMPROBANTE BETWEEN :P74_FECHA_INICIAL AND :P74_FECHA_FINAL',
'           and vc.tip_comprobante=vd.tip_comprobante',
'           and vc.ser_comprobante=vd.ser_comprobante',
'           and vc.nro_comprobante=vd.nro_comprobante',
'',
'           and vc.estado not in (''A'',''C'')),0)VENTAS_FECHA_PERIODO,',
'           NVL(',
'           (select sum(',
'           nvl(vd.monto_total,0)+NVL(VD.TOTAL_IVA,0)*CASE WHEN VC.TIP_COMPROBANTE=''NCR'' THEN -1 ELSE 1 END',
'',
'           )',
'           from VT_COMPROBANTES_CABECERA vc, VT_COMPROBANTES_DETALLE vd',
'           where vc.cod_empresa=:P_COD_EMPRESA',
'           and vc.cod_cliente=CAR.cod_cliente',
'           and vc.cod_empresa=vd.cod_empresa',
'           AND VC.FEC_COMPROBANTE BETWEEN ADD_MONTHS(:P74_FECHA_INICIAL,-12) AND ADD_MONTHS(:P74_FECHA_FINAL,-12)',
'           and vc.tip_comprobante=vd.tip_comprobante',
'           and vc.ser_comprobante=vd.ser_comprobante',
'           and vc.nro_comprobante=vd.nro_comprobante',
'',
'           and NVL(vc.estado,''P'') not in (''A'')),0)VENTAS_FECHA_PERIODO_ANT,',
'           ',
'CODIGO_VENDEDOR, NOMBRE_VENDEDOR,',
'sucursales, cod_persona,',
'SIN_VENTA_60_DIAS,',
'SIN_VENTA_30_DIAS,',
'(select count(*)',
'from fv_hoja_ruta_vendedor hr',
'where hr.cod_empresa=:P_COD_EMPRESA',
'and hr.cod_cliente=car.COD_CLIENTE',
'AND HR.FECHA  BETWEEN :P74_FECHA_INICIAL AND :P74_FECHA_FINAL',
'and hr.cod_vendedor=car.CODIGO_VENDEDOR)',
'',
'',
'||''/''||',
'	(select s.cant_visita_mes',
'	 ',
'		 from  cc_segmentacion_cliente s,',
'		       cc_clientes cc',
'		 where s.cod_empresa=:P_COD_EMPRESA',
'		 and   s.cod_tip_cliente=cc.tip_cliente ',
'		 and   s.cod_empresa=cc.cod_empresa',
'		 and   cc.cod_cliente= car.cod_cliente',
'		 and   nvl(s.vta_anual_min,0)<=venta_anio',
'		 and 	 nvl(s.vta_anual_max,0)>=venta_anio)',
'',
'',
'',
'HOJA_RUTA_inventiva,',
'nvl((select sum(tot_gravadas)',
'from vt_comprobantes_cabecera vv',
'where vv.cod_empresa  = :P_COD_EMPRESA',
'and nvl(vv.estado,''P'')<>''A''',
'and vv.cod_cliente = car.COD_CLIENTE',
'and vv.cod_vendedor = :P74_COD_vendedor',
'',
' ',
'and vv.fec_comprobante between (select',
'(min(R.FECHA) -2 )',
'from  fv_hoja_ruta_vendedor r',
'where   r.cod_cliente=car.COD_CLIENTE',
'AND r.FECHA  BETWEEN :P74_FECHA_INICIAL AND :P74_FECHA_FINAL',
'and r.cod_vendedor=:P74_COD_vendedor',
'AND R.COD_EMPRESA=:P_COD_EMPRESA) ',
'',
'',
' and  ',
' (select',
'(max(R.FECHA) +3)',
'from  fv_hoja_ruta_vendedor r',
'where   r.cod_cliente=car.COD_CLIENTE',
'AND r.FECHA  BETWEEN :P74_FECHA_INICIAL AND :P74_FECHA_FINAL',
'and r.cod_vendedor=:P74_COD_vendedor',
'AND R.COD_EMPRESA=:P_COD_EMPRESA) ',
'),0) efectividad',
'',
' from v_clienteS_CARTERA CAR',
'   /*(CODIGO_VENDEDOR = :P74_COD_VENDEDOR OR :P74_COD_VENDEDOR IS NULL)*/',
'  ',
' where (',
' (select v.cod_vendedor',
' from cc_vendedores_clientes v where v.cod_empresa=:p_cod_empresa',
' and v.cod_cliente=car.cod_cliente',
' and v.cod_vendedor=:P74_COD_VENDEDOR',
' and v.cod_vendedor<>car.CODIGO_VENDEDOR',
' union all ',
' select car.codigo_vendedor from dual',
' where car.codigo_vendedor=:P74_COD_VENDEDOR ) = :P74_COD_VENDEDOR OR :P74_COD_VENDEDOR IS NULL)',
'',
'  and car.cod_empresa=:p_cod_empresa',
'and REGEXP_LIKE ( :P74_ESTADO,ESTADO)',
' /*AND (COD_TIP_CLIENTE = :P74_TIPO_CLIENTE OR :P74_TIPO_CLIENTE IS NULL)*/',
' and (REGEXP_LIKE (:P74_TIPO_CLIENTE,TIPo_CLIENTE)OR :P74_TIPO_CLIENTE IS NULL)',
' and (COD_SUPERVISOR = :P74_COD_SUPERVISOR OR :P74_COD_SUPERVISOR IS NULL)',
' AND :P74_FECHA_INICIAL  ',
' IS NOT NULL',
' and (:P74_COD_VENDEDOR IS NOT NULL OR :P74_COD_SUPERVISOR IS NOT NULL or :P74_TIPO_CLIENTE IS NOT NULL)',
' )',
' order by 2'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P74_COD_VENDEDOR,P74_COD_SUPERVISOR,P74_FECHA_INICIAL,P74_FECHA_FINAL,P74_ESTADO,P74_TIPO_CLIENTE'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_page_header=>'Cartera de Clientes'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(63299086387707848)
,p_name=>'Cartera de Clientes'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'INV'
,p_internal_uid=>63299086387707848
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13173524665615072)
,p_db_column_name=>'COD_CLIENTE'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Cod Cliente'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13173877599615073)
,p_db_column_name=>'NOMBRE'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Nombre'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13184246636615083)
,p_db_column_name=>'VENTAS_FECHA_PERIODO'
,p_display_order=>3
,p_column_identifier=>'AB'
,p_column_label=>'Ventas Periodo'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13184680477615084)
,p_db_column_name=>'VENTAS_FECHA_PERIODO_ANT'
,p_display_order=>4
,p_column_identifier=>'AC'
,p_column_label=>unistr('Ventas A\00F1o Anterior')
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13174638241615073)
,p_db_column_name=>'CODIGO_CIUDAD'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Codigo Ciudad'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13175027651615074)
,p_db_column_name=>'DESCRIPCION_CIUDAD'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Ciudad'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13175494271615074)
,p_db_column_name=>'CODIGO_DEPARTAMENTO'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Codigo Departamento'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13175876249615074)
,p_db_column_name=>'DESCRIPCION_DEPARTAMENTO'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Descripcion Departamento'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13176291164615075)
,p_db_column_name=>'TELEFONO'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Telefono'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13176621072615075)
,p_db_column_name=>'RUC'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Ruc'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13177856404615076)
,p_db_column_name=>'AGENTE_CREDITO'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Agente Credito'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13178240711615076)
,p_db_column_name=>'AGENTE_COBRO'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Agente Cobro'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13178691868615077)
,p_db_column_name=>'COD_LISTA_PRECIO'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'Cod Lista Precio'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13179096636615077)
,p_db_column_name=>'COD_CONDICION_VENTA'
,p_display_order=>15
,p_column_identifier=>'O'
,p_column_label=>'Cod Condicion Venta'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13179426091615078)
,p_db_column_name=>'LINEA_DE_CREDITO'
,p_display_order=>16
,p_column_identifier=>'P'
,p_column_label=>'Linea De Credito'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13179865306615078)
,p_db_column_name=>'MONEDA'
,p_display_order=>17
,p_column_identifier=>'Q'
,p_column_label=>'Moneda'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13180224727615078)
,p_db_column_name=>'COD_TIP_CLIENTE'
,p_display_order=>18
,p_column_identifier=>'R'
,p_column_label=>'Cod Tip Cliente'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13180616473615079)
,p_db_column_name=>'TIPO_CLIENTE'
,p_display_order=>19
,p_column_identifier=>'S'
,p_column_label=>'Tipo Cliente'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13181007139615079)
,p_db_column_name=>'FEC_ULTIMA_COMPRA'
,p_display_order=>20
,p_column_identifier=>'T'
,p_column_label=>'Fec Ultima Compra'
,p_column_type=>'DATE'
,p_format_mask=>'DD-MM-YYYY'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13181403424615080)
,p_db_column_name=>'FECHA_ULTIMA_VISITA'
,p_display_order=>21
,p_column_identifier=>'U'
,p_column_label=>'Fecha Ultima Visita'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13182223072615081)
,p_db_column_name=>'DEUDA_VENCIDA'
,p_display_order=>31
,p_column_identifier=>'W'
,p_column_label=>'Deuda Vencida'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13174216082615073)
,p_db_column_name=>'DIRECCION'
,p_display_order=>39
,p_column_identifier=>'C'
,p_column_label=>'Direccion'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13181817116615080)
,p_db_column_name=>'LINEA_EJECUTADA'
,p_display_order=>41
,p_column_identifier=>'V'
,p_column_label=>'Linea Ejecutada'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13182622561615081)
,p_db_column_name=>'DEUDA_TOTAL'
,p_display_order=>51
,p_column_identifier=>'X'
,p_column_label=>'Deuda Total'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13183042100615082)
,p_db_column_name=>'TIPO_IMPUESTO'
,p_display_order=>61
,p_column_identifier=>'Y'
,p_column_label=>'Tipo Impuesto'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13183438680615082)
,p_db_column_name=>'CREDITO_DISPONIBLE'
,p_display_order=>71
,p_column_identifier=>'Z'
,p_column_label=>'Credito Disponible'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13177037127615075)
,p_db_column_name=>'ESTADO'
,p_display_order=>81
,p_column_identifier=>'J'
,p_column_label=>'Estado'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13183877810615082)
,p_db_column_name=>'PEDIDOS_PENDIENTES'
,p_display_order=>81
,p_column_identifier=>'AA'
,p_column_label=>'Pedidos Pendientes'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13177480634615075)
,p_db_column_name=>'MOTIVO'
,p_display_order=>82
,p_column_identifier=>'K'
,p_column_label=>'Motivo'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13185056651615084)
,p_db_column_name=>'SIN_VENTA_60_DIAS'
,p_display_order=>91
,p_column_identifier=>'AD'
,p_column_label=>'Sin Venta 60 Dias'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13185433838615084)
,p_db_column_name=>'EFECTIVIDAD'
,p_display_order=>111
,p_column_identifier=>'AF'
,p_column_label=>'Efectividad'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13185844283615085)
,p_db_column_name=>'VENTA_VARIACION'
,p_display_order=>121
,p_column_identifier=>'AG'
,p_column_label=>'Crec/Decre(%)'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13186246881615085)
,p_db_column_name=>'NOMBRE_VENDEDOR'
,p_display_order=>131
,p_column_identifier=>'AH'
,p_column_label=>'Nombre Vendedor'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13186669111615085)
,p_db_column_name=>'HOJA_RUTA_INVENTIVA'
,p_display_order=>141
,p_column_identifier=>'AI'
,p_column_label=>'Hoja Ruta Inventiva'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13187003836615086)
,p_db_column_name=>'SIN_VENTA_30_DIAS'
,p_display_order=>151
,p_column_identifier=>'AJ'
,p_column_label=>'Sin Venta 30 Dias'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(63556014992393005)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'391676'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'COD_CLIENTE:NOMBRE:VENTAS_FECHA_PERIODO:VENTAS_FECHA_PERIODO_ANT:VENTA_VARIACION:SIN_VENTA_60_DIAS:SIN_VENTA_30_DIAS:FEC_ULTIMA_COMPRA:HOJA_RUTA_INVENTIVA:EFECTIVIDAD:LINEA_DE_CREDITO:CREDITO_DISPONIBLE:ESTADO:MOTIVO:NOMBRE_VENDEDOR:DESCRIPCION_CIUDA'
||'D:TELEFONO:'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(13187749526615087)
,p_report_id=>wwv_flow_imp.id(63556014992393005)
,p_name=>'Sin Venta 30 Dias'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'SIN_VENTA_30_DIAS'
,p_operator=>'='
,p_expr=>'SIN-VENTA-30-DIAS'
,p_condition_sql=>' (case when ("SIN_VENTA_30_DIAS" = #APXWS_EXPR#) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# = ''SIN-VENTA-30-DIAS''  '
,p_enabled=>'Y'
,p_highlight_sequence=>1
,p_row_font_color=>'#E6DC1C'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(13188194139615087)
,p_report_id=>wwv_flow_imp.id(63556014992393005)
,p_name=>unistr('Sin Venta 60 D\00EDas')
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'SIN_VENTA_60_DIAS'
,p_operator=>'='
,p_expr=>'SIN-VENTA-60-DIAS'
,p_condition_sql=>' (case when ("SIN_VENTA_60_DIAS" = #APXWS_EXPR#) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# = ''SIN-VENTA-60-DIAS''  '
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_row_bg_color=>'#FFFFFF'
,p_row_font_color=>'#F50505'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(63546455570382427)
,p_plug_name=>'Resumen Vendedor'
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40108275410263656)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(13170004632615070)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(61232240127881350)
,p_button_name=>'Ejecutar'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187078917263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Ejecutar'
,p_button_position=>'BELOW_BOX'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-refresh'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13170466011615070)
,p_name=>'P74_COD_VENDEDOR'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(61232240127881350)
,p_prompt=>'Vendedor'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT  P.NOMBRE,F.COD_VENDEDOR FROM FV_VENDEDORES F, PERSONAS P',
'WHERE F.COD_EMPRESA=:p_cod_empresa',
'AND F.COD_PERSONA=P.COD_PERSONA',
'AND NVL(F.ESTADO,''I'')NOT IN ''I'''))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P_COD_EMPRESA'
,p_ajax_items_to_submit=>'P_COD_EMPRESA'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13170839505615071)
,p_name=>'P74_COD_SUPERVISOR'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(61232240127881350)
,p_prompt=>'Cod Supervisor'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LV_SUPERVISORES'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT  P.NOMBRE,Fc.COD_VENDEDOR FROM FV_VENDEDORES F, PERSONAS P, fv_vendedores fc',
'WHERE F.COD_EMPRESA=:p_cod_empresa',
'and f.cod_empresa=fc.cod_empresa',
'and f.cod_supervisor=fc.cod_vendedor',
'AND Fc.COD_PERSONA=P.COD_PERSONA',
'AND NVL(F.ESTADO,''I'')NOT IN ''I''',
'group by  P.NOMBRE,Fc.COD_VENDEDOR'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13171252888615071)
,p_name=>'P74_TIPO_CLIENTE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(61232240127881350)
,p_item_default=>'MAYORISTA A'
,p_prompt=>'Tipo Cliente'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select descripcion d, descripcion c',
'from cc_tipo_cliente',
'ORDER BY 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'TODOS'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'Y'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
,p_attribute_11=>'-'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13171600719615071)
,p_name=>'P74_ESTADO'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(61232240127881350)
,p_item_default=>'ACTIVO'
,p_prompt=>'Estado Cliente'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ''ACTIVO'' d, ''ACTIVO'' C FROM DUAL UNION ALL',
'select ''BLOQUEADO'' d, ''BLOQUEADO'' C FROM DUAL UNION ALL',
'select ''CREDITO BLOQUEADO'' d, ''CREDITO BLOQUEADO'' C FROM DUAL',
'union all',
'select ''INACTIVO'' d, ''INACTIVO'' C FROM DUAL',
'',
''))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'Y'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
,p_attribute_11=>'-'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13172053495615071)
,p_name=>'P74_FECHA_INICIAL'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(61232240127881350)
,p_prompt=>'Fecha Inicial'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13172465341615071)
,p_name=>'P74_FECHA_FINAL'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(61232240127881350)
,p_prompt=>'Fecha Final'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13172836382615072)
,p_name=>'P74_PERIODO'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(61232240127881350)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13188878494615088)
,p_name=>'P74_META'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(63546455570382427)
,p_prompt=>'Objetivo Periodo Comision'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13189260980615088)
,p_name=>'P74_MONTO_VENTA'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(63546455570382427)
,p_prompt=>'Monto Venta'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13189662271615088)
,p_name=>'P74_META_PORCENTAJE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(63546455570382427)
,p_prompt=>'% Logrado'
,p_format_mask=>'999G999G999G999G990D00'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13190023503615088)
,p_name=>'P74_META_MES'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(63546455570382427)
,p_prompt=>'Objetivo Periodo Mensual'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13190478883615088)
,p_name=>'P74_MONTO_VENTA_MES'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(63546455570382427)
,p_prompt=>'Monto Venta'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13190817834615088)
,p_name=>'P74_META_PORCENTAJE_MES'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(63546455570382427)
,p_prompt=>'% Logrado'
,p_format_mask=>'999G999G999G999G990D00'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(13191220236615089)
,p_name=>'actualiza_reporte'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(13170004632615070)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(13191712349615089)
,p_event_id=>wwv_flow_imp.id(13191220236615089)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(63298922590707848)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(13192285279615089)
,p_event_id=>wwv_flow_imp.id(13191220236615089)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  select  MAX(NUM_PERIODO)',
'   INTO  :P74_PERIODO',
'   from FV_PERIODOS_COMISION a',
'where a.cod_empresa=''1''',
'AND FEC_INICIAL>=:P74_FECHA_INICIAL',
'AND FEC_FINAL<=:P74_FECHA_FINAL;',
' ',
'EXCEPTION',
'WHEN OTHERS THEN',
'    NULL;',
'  END;',
'declare ',
'v_meta number;',
'v_meta_mes number;',
'v_MONTO_VENTA number;',
'v_monto_venta_mes number;',
'begin',
'BEGIN ',
'select to_char(SUM(mt.monto),''999G999G999G999G999G999G990'')monto, sum(mt.monto)',
'INTO :P74_META, v_meta',
'from fv_metas_vend mt, FV_VENDEDORES FV',
'where mt.cod_empresa=''1''',
'AND MT.COD_EMPRESA=FV.COD_EMPRESA',
'AND MT.COD_VENDEDOR=FV.COD_VENDEDOR',
'and (mt.cod_vendedor =  :P74_COD_VENDEDOR OR :P74_COD_VENDEDOR IS NULL)',
'AND (FV.COD_SUPERVISOR= :P74_COD_SUPERVISOR OR :P74_COD_SUPERVISOR IS NULL)',
'and mt.fec_inicio =:P74_FECHA_INICIAL',
'AND MT.FEC_FIN = :P74_FECHA_FINAL;',
'EXCEPTION',
'WHEN OTHERS THEN ',
':P74_META:=0;',
'END;',
'',
'',
'--------------------meta mes---------',
'BEGIN ',
'select to_char(SUM(mt.proyeccion),''999G999G999G999G999G999G990'')monto, sum(mt.proyeccion)',
'INTO :P74_META_MES, v_meta_mes',
'from FV_PROYECCIONES_UN mt, FV_VENDEDORES FV',
'where mt.cod_empresa=''1''',
'AND MT.COD_EMPRESA=FV.COD_EMPRESA',
'AND MT.COD_VENDEDOR=FV.COD_VENDEDOR',
'and (mt.cod_vendedor =  :P74_COD_VENDEDOR OR :P74_COD_VENDEDOR IS NULL)',
'AND (FV.COD_SUPERVISOR= :P74_COD_SUPERVISOR OR :P74_COD_SUPERVISOR IS NULL)',
'/*and mt.mes =to_char(:P74_FECHA_FINAL,''MM'')',
'AND MT.ANIO = TO_CHAR(:P74_FECHA_FINAL,''RRRR'')*/',
'AND LAST_DAY(TO_DATE(''01/''||MT.MES||''/''||MT.ANhO,''DD/MM/YYYY''))=LAST_DAY(:P74_FECHA_FINAL);',
'EXCEPTION',
'WHEN OTHERS THEN ',
':P74_META_MES:=0;',
'END;',
'',
'',
'BEGIN',
' select  to_char(sum(monto),''999G999G999G999G990'')monto, sum(monto)',
'INTO :P74_MONTO_VENTA, v_MONTO_VENTA',
'',
'from V_VENTAS',
'WHERE (COD_VENDEDOR= :P74_COD_VENDEDOR OR :P74_COD_VENDEDOR IS NULL)',
'AND (FEC_FACTURA BETWEEN :P74_FECHA_INICIAL AND :P74_FECHA_FINAL)',
'      AND (COD_SUPERVISOR= :P74_COD_SUPERVISOR OR :P74_COD_SUPERVISOR IS NULL);',
' ',
'',
'EXCEPTION',
'WHEN OTHERS THEN',
':P74_MONTO_VENTA:=0;',
'v_MONTO_VENTA:=0;',
'END;',
'',
'',
'BEGIN',
' select  to_char(sum(monto),''999G999G999G999G990'')monto, sum(monto)',
'INTO :P74_MONTO_VENTA_MES, v_MONTO_VENTA_mes',
'',
'from V_VENTAS',
'WHERE (COD_VENDEDOR= :P74_COD_VENDEDOR OR :P74_COD_VENDEDOR IS NULL)',
'AND (FEC_FACTURA BETWEEN last_day(add_months(:P74_FECHA_FINAL,-1))+1 AND last_day(:P74_FECHA_FINAL))',
'      AND (COD_SUPERVISOR= :P74_COD_SUPERVISOR OR :P74_COD_SUPERVISOR IS NULL);',
' ',
'',
'EXCEPTION',
'WHEN OTHERS THEN',
':P74_MONTO_VENTA_MES:=0;',
'v_MONTO_VENTA_mes:=0;',
'END;',
'',
'if v_meta>0 then',
':P74_META_PORCENTAJE:=round(v_MONTO_VENTA/v_META*100,2);',
'end if;',
'if v_meta_mes>0 then',
':P74_META_PORCENTAJE_mes:=round(v_MONTO_VENTA_mes/v_META_mes*100,2);',
'end if;',
'end;'))
,p_attribute_02=>'P74_COD_SUPERVISOR,P74_COD_VENDEDOR,P74_FECHA_INICIAL,P74_FECHA_FINAL'
,p_attribute_03=>'P74_META,P74_PERIODO,P74_MONTO_VENTA,P74_META_PORCENTAJE,P74_MONTO_VENTA_MES,P74_META_MES,P74_META_PORCENTAJE_MES'
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
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(13192680192615089)
,p_name=>'da_global'
,p_event_sequence=>20
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(13193121272615090)
,p_event_id=>wwv_flow_imp.id(13192680192615089)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'BEGIN',
'  select MAX(FEC_INICIAL), MAX(FEC_FINAL) , MAX(NUM_PERIODO)',
'   INTO :P74_FECHA_INICIAL ,:P74_FECHA_FINAL, :P74_PERIODO',
'   from FV_PERIODOS_COMISION a',
'where a.cod_empresa=''1'';',
' ',
'EXCEPTION',
'WHEN OTHERS THEN',
'    :P74_FECHA_INICIAL:=LAST_DAY(ADD_MONTHS(SYSDATE,-1))+1;',
'    :P74_FECHA_FINAL:=TRUNC(SYSDATE);',
'  END;',
'  if :P0_COD_VENDEDOR IS NOT NULL THEN',
'    :P74_COD_VENDEDOR := NVL(:P0_COD_VENDEDOR,''26''); ',
'    :P74_COD_VENDEDOR:=''26'';',
'    END IF;',
'    ',
'  :P74_ESTADO:=''ACTIVO'';',
' ',
'   ',
'  ',
'  END;'))
,p_attribute_03=>'P74_COD_VENDEDOR,P74_FECHA_INICIAL,P74_FECHA_FINAL,P74_ESTADO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp.component_end;
end;
/
