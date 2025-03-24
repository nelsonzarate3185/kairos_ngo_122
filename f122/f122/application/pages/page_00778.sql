prompt --application/pages/page_00778
begin
--   Manifest
--     PAGE: 00778
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
 p_id=>778
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'VTPRESUPUESTOV'
,p_alias=>'PRESPUESTO-NUEVO'
,p_step_title=>'Prespuesto Nuevo'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'NZARATE'
,p_last_upd_yyyymmddhh24miss=>'20240917151101'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(441422406805505174)
,p_plug_name=>'Vpresupuestov'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>20
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'COD_EMPRESA, TIP_COMPROBANTE, SER_COMPROBANTE, NRO_COMPROBANTE, COD_SUCURSAL , FEC_COMPROBANTE, COD_CLIENTE ,COD_VENDEDOR , COD_CONDICION_VENTA, COD_LISTA_PRECIO,  DESCUENTO, COD_MONEDA ,',
' TIP_CAMBIO , TOT_COMPROBANTE ,TOT_GRAVADAS  ,TOT_EXENTAS ,TOT_IVA ,ESTADO , FEC_ESTADO,  COD_USUARIO, FEC_ALTA  ,NRO_AUTORIZACION , CAMBIO_MONEDA_PRECIO,  TIP_CAMBIO_COMPRA,',
'  FEC_VENCIMIENTO   ,TIP_COMPROBANTE_REF, TEL_CLIENTE, RUC PROCESADO, NRO_COMPROBANTE_REF ,NOM_CLIENTE, NOMBRE_CAB,  GRU_COMPROBANTE, FEC_NACIMIENTO,',
'    DIR_CLIENTE  ,  DESCUENTO_DET ,COMENTARIO ,      CAMBIO_DOLAR  ,            COD_USUARIO_AUTORIZACION , FECHA_AUTORIZACION  ,',
'    case when AUTORIZADO=''S'' THEN ''AUTORIZADO'' ELSE ''PENDIENTE'' END AUTORIZADO ,',
'     RECARGO ,   COD_MOTIVO_ANULACION , COD_USUARIO_ANU, COD_MOTIVO_ANU , OBSERVACION  , FECHA_APROBADO ,   FEC_SEGUIMIENTO, PESO_TOTAL , VOLUMEN_TOTAL ,FLETE_TOTAL, COD_FLETE ,',
'        HORA_ALTA FEC_APRO_RECHA  ,  LUGAR_ENTREGA, NRO_ORDEN_COMPRA , COD_SUCURSAL_DIST ESTADO_REPARTO  ,  TIPO_ENTREGA,  ',
'       ',
'       ',
'        FECHA_ENTREGA, IND_GUARDA           ,  ENTREGA_REMISION  ,',
'         IND_CLIENTE_FINAL  ,OBSERVACION_INTERNA ,',
'           COD_DEPARTAMENTO_ENTREGA , COD_CIUDAD_ENTREGA, ',
'            DESC_TIPO_ENTREGA, DESC_FLETE',
'          ,COSTO_TOTAL,monto_total ,',
'          case when nvl(monto_total,0)>0 then round((monto_total-costo_total)/monto_total*100,2) else 0 end margen, motivo_anulacion, anulado_por',
'          ',
'',
'from (select COD_EMPRESA,',
'       TIP_COMPROBANTE,',
'       SER_COMPROBANTE,',
'       NRO_COMPROBANTE,',
'       COD_SUCURSAL,',
'       FEC_COMPROBANTE,',
'       COD_CLIENTE,',
'       COD_VENDEDOR,',
'       COD_CONDICION_VENTA,',
'       COD_LISTA_PRECIO,',
'       DESCUENTO,',
'       COD_MONEDA,',
'       TIP_CAMBIO,',
'       TOT_COMPROBANTE,',
'       TOT_GRAVADAS,',
'       TOT_EXENTAS,',
'       TOT_IVA,',
'       case when estado=''P'' THEN ''PENDIENTE'' ',
'         when estado=''F'' THEN ''FACTURADO''',
'           when estado=''C'' THEN ''CERRADO''',
'             when estado=''A'' THEN ''ANULADO'' END',
'',
'ESTADO,',
'       FEC_ESTADO,',
'       COD_USUARIO,',
'       FEC_ALTA,',
'       NRO_AUTORIZACION,',
'       CAMBIO_MONEDA_PRECIO,',
'       TIP_CAMBIO_COMPRA,',
'       FEC_VENCIMIENTO,',
'       TOT_DESCUENTO_DET,',
'       TIP_COMPROBANTE_REF,',
'       TEL_CLIENTE,',
'       RUC,',
'       PROCESADO,',
'       NRO_COMPROBANTE_REF,',
'       NOM_CLIENTE,',
'       NOMBRE_CAB,',
'       GRU_COMPROBANTE,',
'       FEC_NACIMIENTO,',
'       DIR_CLIENTE,',
'       DIAS,',
'       DESCUENTO_DET,',
'       COMENTARIO,',
'       COLUMNA,',
'       COD_SECTOR,',
'       CAMBIO_DOLAR,',
'       COD_DIRECCION,',
'       TIP_COMPROBANTE_PET,',
'       SER_COMPROBANTE_PET,',
'       NRO_COMPROBANTE_PET,',
'       NRO_INSCRIPCION_AD,',
'       IND_EXENTO_AD,',
'       COD_USUARIO_AUTORIZACION,',
'       FECHA_AUTORIZACION,',
'       AUTORIZADO,',
'       RECARGO,',
'       CONTROL_FIN,',
'       IND_IMPRESO,',
'       COD_MOTIVO_ANULACION,',
'       COD_USUARIO_ANU,',
'       COD_MOTIVO_ANU,',
'       OBSERVACION,',
'       PRESUPUESTO,',
'       FECHA_APROBADO,',
'       NRO_LLAMADA,',
'       FEC_SEGUIMIENTO,',
'       PESO_TOTAL,',
'       VOLUMEN_TOTAL,',
'       FLETE_TOTAL,',
'       COD_FLETE,',
'       SER_COMPROBANTE_REF,',
'       ENTREGA_INICIAL,',
'       PORC_ENT_INICIAL,',
'       FEC_PAGO,',
'       CONSULTA_INFORMCONF,',
'       DESC_ERROR,',
'       HORA_ALTA,',
'       FEC_APRO_RECHA,',
'       COD_USU_APRO_RECHA,',
'       LUGAR_ENTREGA,',
'       NRO_ORDEN_COMPRA,',
'       COD_SUCURSAL_DIST,',
'       ',
'       ',
'       TIPO_ENTREGA,',
'    ',
'       ',
'       ',
'       ',
'       ',
'       ',
'       ',
'       FECHA_ENTREGA,',
'       IND_GUARDA,',
'       ',
'       IND_TRANSPORTADORA,',
'       ',
'       ',
'       ENTREGA_REMISION,',
'',
'       IND_CLIENTE_FINAL,',
'   ',
'       OBSERVACION_INTERNA,',
'       ',
'       COD_DEPARTAMENTO_ENTREGA,',
'       COD_CIUDAD_ENTREGA,',
'       ',
'       ',
'       ',
'       ',
'       ',
'     ',
'        CASE WHEN  a.tipo_entrega=''CA'' THEN ''CAPITAL'' WHEN a.TIPO_ENTREGA=''IN'' THEN ''INTERIOR''',
'WHEN a.TIPO_ENTREGA=''CR'' THEN ''CLIENTE RETIRA'' END  desc_tipo_entrega,',
'  (select fl.descripcion',
'FROM VT_FLETES FL',
'WHERE FL.COD_EMPRESA=a.COD_EMPRESA',
'AND FL.COD_FLETE=a.COD_FLETE)desc_flete,',
'',
' ',
'                     ',
' ',
'nvl((select  sum((  (nvl(s.costo_prom_nue,0))/ decode(a.cOD_MONEDA,''2'',a.TIP_CAMBIO, 1))* (d.cantidad))',
'        from st_costos_art s, vt_pedidos_detalle d',
'       where s.cod_empresa = a.cod_empresa',
'       and a.cod_empresa=d.COD_EMPRESA',
'       and a.tip_comprobante=d.tip_comprobante',
'       and a.ser_comprobante=d.ser_comprobante',
'       and a.nro_comprobante=d.nro_comprobante',
'         and s.cod_articulo = d.cod_articulo',
'         and s.tip_comprobante <> ''INI''',
'         and  nvl(s.fec_proceso,a.fec_comprobante) <= a.FEC_COMPROBANTE',
'         and  (nvl(s.fec_proceso, a.fec_comprobante) )   =',
'                               ( select max( (nvl(s1.fec_proceso, a.fec_comprobante) ) )',
'                                  from st_costos_art s1',
'                                 where s1.cod_empresa =a.cod_empresa',
'                                   and s1.cod_articulo = d.cod_articulo',
'                                   and s1.tip_comprobante <> ''INI''',
'                                   and nvl(s1.fec_proceso, a.fec_comprobante) <= a.FEC_COMPROBANTE) ),0 )costo_total,',
'            nvl((select sum(d.monto_total)/*/a.tip_cambio*/',
'        from   vt_presupuesto_detalle d',
'       where  a.cod_empresa=d.COD_EMPRESA',
'       and a.tip_comprobante=d.tip_comprobante',
'       and a.ser_comprobante=d.ser_comprobante',
'       and a.nro_comprobante=d.nro_comprobante ),0 )monto_total,',
'       (select descripcion from vt_motivo_anulacion z where z.cod_empresa=a.cod_empresa and z.cod_motivo_anu=a.cod_motivo_anu) motivo_anulacion, a.cod_usuario_anu anulado_por',
'',
'  from vt_presupuesto_cabecera a',
'  where cod_empresa=:p_cod_empresa',
'    and (cod_vendedor = :P778_VENDEDOR OR :P778_VENDEDOR IS NULL)',
'  AND FEC_COMPROBANTE BETWEEN :P778_FECHA_INICIO AND :P778_FECHA_FIN ',
'  order by fec_comprobante desc, a.rowid desc,ser_comprobante, nro_comprobante  asc)'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P778_VENDEDOR,P778_FECHA_INICIO,P778_FECHA_FIN,P_COD_EMPRESA'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Vpresupuestov'
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
 p_id=>wwv_flow_imp.id(441422444636505174)
,p_name=>'VTPEDIDOV'
,p_max_row_count_message=>unistr('El recuento m\00E1ximo de filas de este informe es #MAX_ROW_COUNT# filas. Aplique un filtro para reducir el n\00FAmero de registros de la consulta.')
,p_no_data_found_message=>unistr('No se ha encontrado ning\00FAn dato.')
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:788:&SESSION.::&DEBUG.:RP,788:P788_PARAM_NRO_PED,P788_PARAM_SER_PED:\#NRO_COMPROBANTE#\,\#SER_COMPROBANTE#\'
,p_detail_link_text=>'<span aria-label="Editar"><span class="fa fa-edit" aria-hidden="true" title="Editar"></span></span>'
,p_owner=>'HSEGOVIA'
,p_internal_uid=>441422444636505174
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(385343983575725447)
,p_db_column_name=>'TIP_COMPROBANTE'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Tipo Comprobante'
,p_column_type=>'STRING'
,p_use_as_row_header=>'Y'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(385344377818725448)
,p_db_column_name=>'SER_COMPROBANTE'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Ser Comprobante'
,p_column_type=>'STRING'
,p_use_as_row_header=>'Y'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(385344739015725448)
,p_db_column_name=>'NRO_COMPROBANTE'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Nro. Comprobante'
,p_column_type=>'NUMBER'
,p_use_as_row_header=>'Y'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(385345160228725448)
,p_db_column_name=>'COD_SUCURSAL'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Sucursal'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_imp.id(57557475286695231)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(385345548409725449)
,p_db_column_name=>'FEC_COMPROBANTE'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Fecha Comprobante'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(385345952742725449)
,p_db_column_name=>'COD_CLIENTE'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Cliente'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(385346306178725449)
,p_db_column_name=>'COD_VENDEDOR'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Vendedor'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_imp.id(94579312435396545)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(385346723667725449)
,p_db_column_name=>'COD_CONDICION_VENTA'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>unistr('Condici\00F3n Venta')
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_imp.id(94562971203273556)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(385347193186725450)
,p_db_column_name=>'COD_LISTA_PRECIO'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Lista Precio'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_imp.id(94569444264309907)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(385347527726725450)
,p_db_column_name=>'DESCUENTO'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Descuento'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G999G999G999G990'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(385347978995725450)
,p_db_column_name=>'COD_MONEDA'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Moneda'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_imp.id(74024092307836957)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(385348368233725451)
,p_db_column_name=>'TIP_CAMBIO'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'Cambio'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(385348778050725451)
,p_db_column_name=>'TOT_COMPROBANTE'
,p_display_order=>15
,p_column_identifier=>'O'
,p_column_label=>'Comprobante'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(385349178180725451)
,p_db_column_name=>'TOT_GRAVADAS'
,p_display_order=>16
,p_column_identifier=>'P'
,p_column_label=>'Gravadas'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(385349553353725451)
,p_db_column_name=>'TOT_EXENTAS'
,p_display_order=>17
,p_column_identifier=>'Q'
,p_column_label=>'Exentas'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(385349956512725452)
,p_db_column_name=>'TOT_IVA'
,p_display_order=>18
,p_column_identifier=>'R'
,p_column_label=>'IVA'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G999G999G999G990D0'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(385350387924725452)
,p_db_column_name=>'ESTADO'
,p_display_order=>19
,p_column_identifier=>'S'
,p_column_label=>'Estado'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(385350712470725452)
,p_db_column_name=>'FEC_ESTADO'
,p_display_order=>20
,p_column_identifier=>'T'
,p_column_label=>'Fecha Estado'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(385351124331725452)
,p_db_column_name=>'COD_USUARIO'
,p_display_order=>21
,p_column_identifier=>'U'
,p_column_label=>'Cod Usuario'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(385351553128725453)
,p_db_column_name=>'FEC_ALTA'
,p_display_order=>22
,p_column_identifier=>'V'
,p_column_label=>'Fec Alta'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(385351947606725453)
,p_db_column_name=>'NRO_AUTORIZACION'
,p_display_order=>23
,p_column_identifier=>'W'
,p_column_label=>'Nro Autorizacion'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(385352351849725453)
,p_db_column_name=>'CAMBIO_MONEDA_PRECIO'
,p_display_order=>24
,p_column_identifier=>'X'
,p_column_label=>'Cambio Moneda Precio'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G999G999G999G990'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(385352729867725453)
,p_db_column_name=>'TIP_CAMBIO_COMPRA'
,p_display_order=>25
,p_column_identifier=>'Y'
,p_column_label=>'Tip Cambio Compra'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G999G999G999G990'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(385353195620725453)
,p_db_column_name=>'FEC_VENCIMIENTO'
,p_display_order=>26
,p_column_identifier=>'Z'
,p_column_label=>'Fec Vencimiento'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(385353594819725454)
,p_db_column_name=>'TIP_COMPROBANTE_REF'
,p_display_order=>28
,p_column_identifier=>'AB'
,p_column_label=>'Tip Comprobante Ref'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(385353910475725454)
,p_db_column_name=>'TEL_CLIENTE'
,p_display_order=>29
,p_column_identifier=>'AC'
,p_column_label=>'Tel Cliente'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(385354349579725454)
,p_db_column_name=>'PROCESADO'
,p_display_order=>31
,p_column_identifier=>'AE'
,p_column_label=>'Procesado'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(385354751708725454)
,p_db_column_name=>'NRO_COMPROBANTE_REF'
,p_display_order=>32
,p_column_identifier=>'AF'
,p_column_label=>'Nro Comprobante Ref'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G999G999G999G990'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(385355136744725455)
,p_db_column_name=>'NOM_CLIENTE'
,p_display_order=>33
,p_column_identifier=>'AG'
,p_column_label=>'Nom Cliente'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(385355529654725455)
,p_db_column_name=>'NOMBRE_CAB'
,p_display_order=>34
,p_column_identifier=>'AH'
,p_column_label=>'Nombre Cab'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(385355986006725455)
,p_db_column_name=>'GRU_COMPROBANTE'
,p_display_order=>35
,p_column_identifier=>'AI'
,p_column_label=>'Gru Comprobante'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(385356364587725455)
,p_db_column_name=>'FEC_NACIMIENTO'
,p_display_order=>36
,p_column_identifier=>'AJ'
,p_column_label=>'Fec Nacimiento'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(385356798650725455)
,p_db_column_name=>'DIR_CLIENTE'
,p_display_order=>37
,p_column_identifier=>'AK'
,p_column_label=>'Dir Cliente'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(385357194543725456)
,p_db_column_name=>'DESCUENTO_DET'
,p_display_order=>39
,p_column_identifier=>'AM'
,p_column_label=>'Descuento Det'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G999G999G999G990'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(385357549467725456)
,p_db_column_name=>'COMENTARIO'
,p_display_order=>40
,p_column_identifier=>'AN'
,p_column_label=>'Comentario'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(385357919276725456)
,p_db_column_name=>'CAMBIO_DOLAR'
,p_display_order=>43
,p_column_identifier=>'AQ'
,p_column_label=>'Cambio Dolar'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G999G999G999G990'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(385358322471725456)
,p_db_column_name=>'COD_USUARIO_AUTORIZACION'
,p_display_order=>50
,p_column_identifier=>'AX'
,p_column_label=>'Cod Usuario Autorizacion'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(385358753439725457)
,p_db_column_name=>'FECHA_AUTORIZACION'
,p_display_order=>51
,p_column_identifier=>'AY'
,p_column_label=>'Fecha Autorizacion'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(385359144679725457)
,p_db_column_name=>'AUTORIZADO'
,p_display_order=>52
,p_column_identifier=>'AZ'
,p_column_label=>'Autorizado'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(385359546352725457)
,p_db_column_name=>'RECARGO'
,p_display_order=>53
,p_column_identifier=>'BA'
,p_column_label=>'Recargo'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G999G999G999G990'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(385359957621725457)
,p_db_column_name=>'COD_MOTIVO_ANULACION'
,p_display_order=>56
,p_column_identifier=>'BD'
,p_column_label=>'Cod Motivo Anulacion'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(385360376510725457)
,p_db_column_name=>'COD_USUARIO_ANU'
,p_display_order=>57
,p_column_identifier=>'BE'
,p_column_label=>'Cod Usuario Anu'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(385360759712725458)
,p_db_column_name=>'COD_MOTIVO_ANU'
,p_display_order=>58
,p_column_identifier=>'BF'
,p_column_label=>'Cod Motivo Anu'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(385361199317725458)
,p_db_column_name=>'OBSERVACION'
,p_display_order=>59
,p_column_identifier=>'BG'
,p_column_label=>'Observacion'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(385361524280725458)
,p_db_column_name=>'FECHA_APROBADO'
,p_display_order=>61
,p_column_identifier=>'BI'
,p_column_label=>'Fecha Aprobado'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(385361975828725458)
,p_db_column_name=>'FEC_SEGUIMIENTO'
,p_display_order=>63
,p_column_identifier=>'BK'
,p_column_label=>'Fec Seguimiento'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(385362315030725459)
,p_db_column_name=>'PESO_TOTAL'
,p_display_order=>64
,p_column_identifier=>'BL'
,p_column_label=>'Peso Total'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G999G999G999G990'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(385362772204725459)
,p_db_column_name=>'VOLUMEN_TOTAL'
,p_display_order=>65
,p_column_identifier=>'BM'
,p_column_label=>'Volumen Total'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G999G999G999G990'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(385363198048725459)
,p_db_column_name=>'FLETE_TOTAL'
,p_display_order=>66
,p_column_identifier=>'BN'
,p_column_label=>'Flete Total'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G999G999G999G990D00'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(385363588293725459)
,p_db_column_name=>'COD_FLETE'
,p_display_order=>67
,p_column_identifier=>'BO'
,p_column_label=>'Cod Flete'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(385363977913725460)
,p_db_column_name=>'LUGAR_ENTREGA'
,p_display_order=>77
,p_column_identifier=>'BY'
,p_column_label=>'Lugar Entrega'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(385364326642725460)
,p_db_column_name=>'NRO_ORDEN_COMPRA'
,p_display_order=>78
,p_column_identifier=>'BZ'
,p_column_label=>'Nro Orden Compra'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(385364740215725460)
,p_db_column_name=>'ESTADO_REPARTO'
,p_display_order=>80
,p_column_identifier=>'CB'
,p_column_label=>'Estado Reparto'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(385365156309725460)
,p_db_column_name=>'TIPO_ENTREGA'
,p_display_order=>82
,p_column_identifier=>'CD'
,p_column_label=>'Tipo Entrega'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(385368366534725462)
,p_db_column_name=>'FECHA_ENTREGA'
,p_display_order=>109
,p_column_identifier=>'DE'
,p_column_label=>'Fecha Entrega'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(385368760545725462)
,p_db_column_name=>'IND_GUARDA'
,p_display_order=>110
,p_column_identifier=>'DF'
,p_column_label=>'Ind Guarda'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(385369170442725463)
,p_db_column_name=>'ENTREGA_REMISION'
,p_display_order=>115
,p_column_identifier=>'DK'
,p_column_label=>'Entrega Remision'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(385371057477725464)
,p_db_column_name=>'OBSERVACION_INTERNA'
,p_display_order=>122
,p_column_identifier=>'DR'
,p_column_label=>'Observacion Interna'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(385371418268725464)
,p_db_column_name=>'COD_DEPARTAMENTO_ENTREGA'
,p_display_order=>124
,p_column_identifier=>'DT'
,p_column_label=>'Cod Departamento Entrega'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(385371839688725464)
,p_db_column_name=>'COD_CIUDAD_ENTREGA'
,p_display_order=>125
,p_column_identifier=>'DU'
,p_column_label=>'Cod Ciudad Entrega'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(385375020150725466)
,p_db_column_name=>'COD_EMPRESA'
,p_display_order=>141
,p_column_identifier=>'EC'
,p_column_label=>'Cod Empresa'
,p_column_type=>'STRING'
,p_use_as_row_header=>'Y'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(385375474682725466)
,p_db_column_name=>'DESC_TIPO_ENTREGA'
,p_display_order=>171
,p_column_identifier=>'EF'
,p_column_label=>'Tipo Entrega'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(385375829957725466)
,p_db_column_name=>'DESC_FLETE'
,p_display_order=>181
,p_column_identifier=>'EG'
,p_column_label=>'Flete'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(385377042462725467)
,p_db_column_name=>'FEC_APRO_RECHA'
,p_display_order=>241
,p_column_identifier=>'EM'
,p_column_label=>'Fec Apro Recha'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(385378676380725468)
,p_db_column_name=>'COSTO_TOTAL'
,p_display_order=>281
,p_column_identifier=>'EQ'
,p_column_label=>'Costo Total'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(385379076863725468)
,p_db_column_name=>'MONTO_TOTAL'
,p_display_order=>291
,p_column_identifier=>'ER'
,p_column_label=>'Monto Total'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(385379467782725468)
,p_db_column_name=>'MARGEN'
,p_display_order=>301
,p_column_identifier=>'ES'
,p_column_label=>'Margen'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(385374210590725465)
,p_db_column_name=>'MOTIVO_ANULACION'
,p_display_order=>311
,p_column_identifier=>'ET'
,p_column_label=>'Motivo Anulacion'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(385374643053725466)
,p_db_column_name=>'ANULADO_POR'
,p_display_order=>321
,p_column_identifier=>'EU'
,p_column_label=>'Anulado Por'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(373232366417924240)
,p_db_column_name=>'IND_CLIENTE_FINAL'
,p_display_order=>331
,p_column_identifier=>'EV'
,p_column_label=>'Ind Cliente Final'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
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
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(441477812608505636)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'561345'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>20
,p_report_columns=>'FEC_COMPROBANTE:SER_COMPROBANTE:NRO_COMPROBANTE:COD_CLIENTE:NOM_CLIENTE:COD_VENDEDOR:COD_CONDICION_VENTA:COD_LISTA_PRECIO:TOT_COMPROBANTE:ESTADO:DESC_FLETE:DESC_TIPO_ENTREGA:AUTORIZADO:NRO_ORDEN_COMPRA:MOTIVO_ANULACION:ANULADO_POR:MARGEN'
,p_sort_column_1=>'FEC_COMPROBANTE'
,p_sort_direction_1=>'DESC NULLS LAST'
,p_sort_column_2=>'NRO_COMPROBANTE'
,p_sort_direction_2=>'DESC NULLS LAST'
,p_sort_column_3=>'0'
,p_sort_direction_3=>'ASC'
,p_sort_column_4=>'0'
,p_sort_direction_4=>'ASC'
,p_sort_column_5=>'0'
,p_sort_direction_5=>'ASC'
,p_sort_column_6=>'0'
,p_sort_direction_6=>'ASC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(648729709384753912)
,p_plug_name=>'Filtro'
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40108275410263656)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(385380840788725470)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(648729709384753912)
,p_button_name=>'Refrescar'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Refrescar'
,p_button_position=>'NEXT'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-refresh'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(385380119307725469)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(441422406805505174)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Agregar'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:788:&SESSION.::&DEBUG.:CR,788:P788_PARAM_NRO_PED,P788_PARAM_SER_PED:,'
,p_icon_css_classes=>'fa-plus'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(385381260880725470)
,p_name=>'P778_VENDEDOR'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(648729709384753912)
,p_prompt=>'Vendedor'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT  P.NOMBRE ||''(''||F.COD_VENDEDOR||'')'' NOMBRE,F.COD_VENDEDOR FROM FV_VENDEDORES F, PERSONAS P',
'WHERE F.COD_EMPRESA=:p_cod_empresa',
'AND F.COD_PERSONA=P.COD_PERSONA',
'AND NVL(F.ESTADO,''I'')NOT IN ''I''',
'and (F.COD_VENDEDOR = :P_COD_VENDEDOR )',
'UNION ALL',
'SELECT  P.NOMBRE ||''(''||F.COD_VENDEDOR||'')'' NOMBRE,F.COD_VENDEDOR FROM FV_VENDEDORES F, PERSONAS P',
'WHERE F.COD_EMPRESA=:p_cod_empresa',
'AND F.COD_PERSONA=P.COD_PERSONA',
'AND NVL(F.ESTADO,''I'')NOT IN ''I''',
'',
' /*AND :P0_VER_OTROS_VENDEDORES = ''S''*/',
'ORDER BY 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'TODOS'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_icon_css_classes=>'fa-user-check'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(385381679385725470)
,p_name=>'P778_FECHA_INICIO'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(648729709384753912)
,p_item_default=>'SYSDATE-30'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Inicio'
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>30
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
 p_id=>wwv_flow_imp.id(385382060969725471)
,p_name=>'P778_FECHA_FIN'
,p_is_required=>true
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(648729709384753912)
,p_item_default=>'SYSDATE'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Fecha Fin'
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
 p_id=>wwv_flow_imp.id(385382455536725471)
,p_name=>'P778_USUARIO'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(648729709384753912)
,p_source=>'&APP_USER.'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(385382802593725471)
,p_name=>unistr('Editar Informe: Cuadro de Di\00E1logo Cerrado')
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(441422406805505174)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(385383311148725473)
,p_event_id=>wwv_flow_imp.id(385382802593725471)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(441422406805505174)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(385383731977725473)
,p_name=>'REFRESCAR'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(385380840788725470)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(385384226871725473)
,p_event_id=>wwv_flow_imp.id(385383731977725473)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(441422406805505174)
);
wwv_flow_imp.component_end;
end;
/
