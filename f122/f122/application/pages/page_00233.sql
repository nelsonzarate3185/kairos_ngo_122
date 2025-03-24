prompt --application/pages/page_00233
begin
--   Manifest
--     PAGE: 00233
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
 p_id=>233
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'VTPEDIDOV'
,p_alias=>'VTPEDIDOV'
,p_step_title=>'VTPEDIDOV'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'NZARATE'
,p_last_upd_yyyymmddhh24miss=>'20240919094840'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(56079088945779729)
,p_plug_name=>'VTPEDIDOV'
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
'       COD_DEPARTAMENTO , DERIVADO , FEC_RECHAZADO ,RECHAZADO_POR     ,  FEC_AUTORIZACION  ,     ',
'       AUTORIZADO_POR  ,IND_ENVIAR , FEC_ENVIO COD_USUARIO_ENVIO, MOTIVO  ,         ',
'        FECHA_ENTREGA, IND_GUARDA           ,  ENTREGA_REMISION  ,COMENTARIO_ANULACION ,',
'         IND_CLIENTE_FINAL NRO_PEDIDO_ANTERIOR ,FECHA_ENTREGA_CLIENTE_RETIRA  ,HORA_ENTREGA_CLIENTE_RETIRA ,SER_PEDIDO_ANTERIOR ,OBSERVACION_INTERNA ,',
'           COD_DEPARTAMENTO_ENTREGA , COD_CIUDAD_ENTREGA,  LATITUD_ENTREGA, LONGITUD_ENTREGA,  IND_CONFIRMAR_FACTURA IND_TIPO_PEDIDO ',
'         ,FEC_CONFIRMA_PEDIDO ,FECHA_TOPE_FACTURACION,     DESC_TIPO_ENTREGA, DESC_FLETE,  SITUACION AUTORIZACION  ,FACTURA PLANILLA_REPARTO ',
'          ,ESTADO_DISTRIBUCION_LOG ,COSTO_TOTAL,monto_total ,',
'          case when nvl(monto_total,0)>0 then round((monto_total-costo_total)/monto_total*100,2) else 0 end margen, motivo_anulacion, anulado_por, null imprimir ,',
'          ROWPED',
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
'       ESTADO_REPARTO,',
'       DEPOSITO_FACT,',
'       TIPO_ENTREGA,',
'       CONTROL_FIN_2,',
'       CONTROL_FIN_3,',
'       RECHAZAR,',
'       PR_FMA,',
'       ORDEN_IMPRESA,',
'       ORDEN_AUTORIZADA,',
'       COD_DEPARTAMENTO,',
'       DERIVADO,',
'       FEC_RECHAZADO,',
'       RECHAZADO_POR,',
'       USR_SA_FMA,',
'       FCH_SA_FMA,',
'       SA_FMA,',
'       FEC_AUTORIZACION,',
'       USR_PR_FMA,',
'       FCH_PR_FMA,',
'       AUTORIZADO_POR,',
'       IND_ENVIAR,',
'       FEC_ENVIO,',
'       COD_USUARIO_ENVIO,',
'       MOTIVO,',
'       IND_OFERTAS,',
'       COD_SUC_OFER,',
'       IND_CANAL_VERDE,',
'       OBSERVACION_CANAL_VERDE,',
'       RESULTADO_CANAL_VERDE,',
'       FECHA_ENTREGA,',
'       IND_GUARDA,',
'       OBSERVACION_ANULA,',
'       IND_TRANSPORTADORA,',
'       NRO_OBRA,',
'       SECCION_PRESTAMO,',
'       ENTREGA_REMISION,',
'       COMENTARIO_ANULACION,',
'       IND_CLIENTE_FINAL,',
'       NRO_PEDIDO_ANTERIOR,',
'       FECHA_ENTREGA_CLIENTE_RETIRA,',
'       HORA_ENTREGA_CLIENTE_RETIRA,',
'       SER_PEDIDO_ANTERIOR,',
'       OBSERVACION_INTERNA,',
'       NRO_PEDIDO_QM,',
'       COD_DEPARTAMENTO_ENTREGA,',
'       COD_CIUDAD_ENTREGA,',
'       LATITUD_ENTREGA,',
'       LONGITUD_ENTREGA,',
'       IND_CONFIRMAR_FACTURA,',
'       IND_TIPO_PEDIDO,',
'       FEC_CONFIRMA_PEDIDO,',
'       FECHA_TOPE_FACTURACION,',
'       LATITUD,',
'       LONGITUD,',
'        CASE WHEN  a.tipo_entrega=''CA'' THEN ''CAPITAL'' WHEN a.TIPO_ENTREGA=''IN'' THEN ''INTERIOR''',
'WHEN a.TIPO_ENTREGA=''CR'' THEN ''CLIENTE RETIRA'' END  desc_tipo_entrega,',
'  (select fl.descripcion',
'FROM VT_FLETES FL',
'WHERE FL.COD_EMPRESA=a.COD_EMPRESA',
'AND FL.COD_FLETE=a.COD_FLETE)desc_flete,',
' F_situacion_PEDIDO(a.ser_comprobante,a.nro_comprobante)situacion,',
'    case when nvl(A.autorizado,''P'') =''S'' THEN ''AUTORIZADO''',
'     when nvl(A.autorizado,''P'') =''P''  THEN',
'       ''PENDIENTE''',
'                  WHEN nvl(deposito_fact,''X'') IS NOT NULL or autorizado=''S'' THEN ''AUTORIZADO''',
'                    WHEN nvl(A.autorizado,''N'')=''N'' THEN ''RECHAZADO''',
'                      ELSE ''PENDIENTE'' END AUTORIZACION,',
'                      (SELECT listagg(tip_comprobante || ''-'' || ser_comprobante || ''-'' ||',
'               nro_comprobante, '';  '') within GROUP(ORDER BY rownum) descripcion',
'        ',
'          FROM vt_comprobantes_cabecera f1',
'         WHERE f1.cod_empresa = a.cod_empresa',
'           AND f1.tip_comprobante_ref = a.tip_comprobante',
'           AND f1.ser_comprobante_ref = a.ser_comprobante',
'           AND f1.nro_comprobante_ref = a.nro_comprobante',
'           AND nvl(a.estado, ''P'') <> ''A'')FACTURA,',
'((select (RC.NRO_PLANILLA)',
'                        from vt_comprobantes_cabecera c1,',
'                             rp_reparto_cabecera      rc,',
'                             rp_reparto_detalle       rd--,                             rp_ent_sal_vehiculos ecli',
'                       where c1.cod_empresa = A.COD_EMPRESA',
'                         and c1.tip_comprobante_ref = A.tip_comprobante',
'                         and c1.ser_comprobante_ref = A.ser_comprobante',
'                         and c1.nro_comprobante_ref = A.nro_comprobante',
'                         and nvl(c1.estado, ''P'') <> ''A''',
'                         and rd.cod_empresa = c1.cod_empresa',
'                         and rd.tip_comprobante = c1.tip_comprobante',
'                         and rd.ser_comprobante = c1.ser_comprobante',
'                         and rd.nro_comprobante = c1.nro_comprobante',
'                         and rd.cod_empresa = rc.cod_empresa',
'                         and rd.nro_planilla = rc.nro_planilla',
' AND ROWNUM=1))PLANILLA_REPARTO,',
'  F_ESTADO_PEDIDO_logistica(A.ser_comprobante, A.nro_comprobante)estado_distribucion_log,',
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
'        from   vt_pedidos_detalle d',
'       where  a.cod_empresa=d.COD_EMPRESA',
'       and a.tip_comprobante=d.tip_comprobante',
'       and a.ser_comprobante=d.ser_comprobante',
'       and a.nro_comprobante=d.nro_comprobante ),0 )monto_total,',
'       (select descripcion from vt_motivo_anulacion z where z.cod_empresa=a.cod_empresa and z.cod_motivo_anu=a.cod_motivo_anu) motivo_anulacion, a.cod_usuario_anu anulado_por,',
'       A.ROWID ROWPED',
'',
'  from VT_PEDIDOS_CABECERA a',
'  where cod_empresa=:P_COD_EMPRESA',
'    and (cod_vendedor = :P233_VENDEDOR OR :P233_VENDEDOR IS NULL)',
'  AND FEC_COMPROBANTE BETWEEN :P233_FECHA_INICIO AND :P233_FECHA_FIN ',
'  order by fec_comprobante desc, a.rowid desc,ser_comprobante, nro_comprobante  asc)'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P233_VENDEDOR,P233_FECHA_INICIO,P233_FECHA_FIN'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_page_header=>'VTPEDIDOV'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(56079126776779729)
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
,p_detail_link=>'f?p=&APP_ID.:34:&SESSION.::&DEBUG.:RP,34:P34_PARAM_NRO_PED,P34_PARAM_SER_PED:\#NRO_COMPROBANTE#\,\#SER_COMPROBANTE#\'
,p_detail_link_text=>'<span aria-label="Editar"><span class="fa fa-edit" aria-hidden="true" title="Editar"></span></span>'
,p_owner=>'HSEGOVIA'
,p_internal_uid=>56079126776779729
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(56080343983779735)
,p_db_column_name=>'TIP_COMPROBANTE'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Tipo Comprobante'
,p_column_type=>'STRING'
,p_use_as_row_header=>'Y'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(56080779075779736)
,p_db_column_name=>'SER_COMPROBANTE'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Ser Comprobante'
,p_column_type=>'STRING'
,p_use_as_row_header=>'Y'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(56081148575779736)
,p_db_column_name=>'NRO_COMPROBANTE'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Nro. Comprobante'
,p_column_link=>'f?p=&APP_ID.:99:&SESSION.::&DEBUG.:CR,99:P99_NRO_COMPROBANTE_REF,P99_P_SER_COMPROBANTE_REF:#NRO_COMPROBANTE#,#SER_COMPROBANTE#'
,p_column_linktext=>'#NRO_COMPROBANTE#'
,p_column_type=>'NUMBER'
,p_use_as_row_header=>'Y'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(56081599038779736)
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
 p_id=>wwv_flow_imp.id(56081966213779736)
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
 p_id=>wwv_flow_imp.id(56082371652779736)
,p_db_column_name=>'COD_CLIENTE'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Cliente'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(56082708427779736)
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
 p_id=>wwv_flow_imp.id(56083190914779737)
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
 p_id=>wwv_flow_imp.id(56083504375779737)
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
 p_id=>wwv_flow_imp.id(56083953698779737)
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
 p_id=>wwv_flow_imp.id(56084386034779737)
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
 p_id=>wwv_flow_imp.id(56084796509779737)
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
 p_id=>wwv_flow_imp.id(56085126037779738)
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
 p_id=>wwv_flow_imp.id(56085562648779738)
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
 p_id=>wwv_flow_imp.id(56085956938779738)
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
 p_id=>wwv_flow_imp.id(56086382863779739)
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
 p_id=>wwv_flow_imp.id(56086719783779739)
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
 p_id=>wwv_flow_imp.id(56087104443779739)
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
 p_id=>wwv_flow_imp.id(56087540882779739)
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
 p_id=>wwv_flow_imp.id(56087986824779740)
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
 p_id=>wwv_flow_imp.id(56088374677779740)
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
 p_id=>wwv_flow_imp.id(56088766559779740)
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
 p_id=>wwv_flow_imp.id(56089190117779740)
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
 p_id=>wwv_flow_imp.id(56089545566779740)
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
 p_id=>wwv_flow_imp.id(56090331899779741)
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
 p_id=>wwv_flow_imp.id(56090777602779741)
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
 p_id=>wwv_flow_imp.id(56091596760779741)
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
 p_id=>wwv_flow_imp.id(56091962453779742)
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
 p_id=>wwv_flow_imp.id(56092332768779742)
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
 p_id=>wwv_flow_imp.id(56092736059779742)
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
 p_id=>wwv_flow_imp.id(56093150467779742)
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
 p_id=>wwv_flow_imp.id(56093518222779742)
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
 p_id=>wwv_flow_imp.id(56093953234779742)
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
 p_id=>wwv_flow_imp.id(56094734190779743)
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
 p_id=>wwv_flow_imp.id(56095149795779743)
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
 p_id=>wwv_flow_imp.id(56096386092779744)
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
 p_id=>wwv_flow_imp.id(56099182013779745)
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
 p_id=>wwv_flow_imp.id(56099537951779745)
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
 p_id=>wwv_flow_imp.id(56099905582779746)
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
 p_id=>wwv_flow_imp.id(56100393539779746)
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
 p_id=>wwv_flow_imp.id(56101557527779746)
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
 p_id=>wwv_flow_imp.id(56101966893779747)
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
 p_id=>wwv_flow_imp.id(56102352681779747)
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
 p_id=>wwv_flow_imp.id(56102769527779747)
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
 p_id=>wwv_flow_imp.id(56103533651779747)
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
 p_id=>wwv_flow_imp.id(56104321429779748)
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
 p_id=>wwv_flow_imp.id(56104763969779748)
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
 p_id=>wwv_flow_imp.id(56105108943779748)
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
 p_id=>wwv_flow_imp.id(56105554797779748)
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
 p_id=>wwv_flow_imp.id(56105964032779749)
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
 p_id=>wwv_flow_imp.id(56109966261779751)
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
 p_id=>wwv_flow_imp.id(56110387376779751)
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
 p_id=>wwv_flow_imp.id(56111132002779752)
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
 p_id=>wwv_flow_imp.id(56111928097779752)
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
 p_id=>wwv_flow_imp.id(56115195450779754)
,p_db_column_name=>'DERIVADO'
,p_display_order=>90
,p_column_identifier=>'CL'
,p_column_label=>'Derivado'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_imp.id(846719139969138835)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(56115578061779754)
,p_db_column_name=>'FEC_RECHAZADO'
,p_display_order=>91
,p_column_identifier=>'CM'
,p_column_label=>'Fec Rechazado'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(56115947218779754)
,p_db_column_name=>'RECHAZADO_POR'
,p_display_order=>92
,p_column_identifier=>'CN'
,p_column_label=>'Rechazado Por'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(56117567662779755)
,p_db_column_name=>'FEC_AUTORIZACION'
,p_display_order=>96
,p_column_identifier=>'CR'
,p_column_label=>'Fec Autorizacion'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(56118718343779755)
,p_db_column_name=>'AUTORIZADO_POR'
,p_display_order=>99
,p_column_identifier=>'CU'
,p_column_label=>'Autorizado Por'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(56119197531779755)
,p_db_column_name=>'IND_ENVIAR'
,p_display_order=>100
,p_column_identifier=>'CV'
,p_column_label=>'Ind Enviar'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
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
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(56120381840779756)
,p_db_column_name=>'MOTIVO'
,p_display_order=>103
,p_column_identifier=>'CY'
,p_column_label=>'Motivo'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(56122700139779757)
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
 p_id=>wwv_flow_imp.id(56123114641779757)
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
 p_id=>wwv_flow_imp.id(56125184830779758)
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
 p_id=>wwv_flow_imp.id(56125563676779759)
,p_db_column_name=>'COMENTARIO_ANULACION'
,p_display_order=>116
,p_column_identifier=>'DL'
,p_column_label=>'Comentario Anulacion'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(56126725214779759)
,p_db_column_name=>'FECHA_ENTREGA_CLIENTE_RETIRA'
,p_display_order=>119
,p_column_identifier=>'DO'
,p_column_label=>'Fecha Entrega Cliente Retira'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(56127179995779760)
,p_db_column_name=>'HORA_ENTREGA_CLIENTE_RETIRA'
,p_display_order=>120
,p_column_identifier=>'DP'
,p_column_label=>'Hora Entrega Cliente Retira'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(56127551747779760)
,p_db_column_name=>'SER_PEDIDO_ANTERIOR'
,p_display_order=>121
,p_column_identifier=>'DQ'
,p_column_label=>'Ser Pedido Anterior'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(56127971527779760)
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
 p_id=>wwv_flow_imp.id(56128714849779760)
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
 p_id=>wwv_flow_imp.id(56129147683779761)
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
 p_id=>wwv_flow_imp.id(56129591726779761)
,p_db_column_name=>'LATITUD_ENTREGA'
,p_display_order=>126
,p_column_identifier=>'DV'
,p_column_label=>'Latitud Entrega'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(56129992077779761)
,p_db_column_name=>'LONGITUD_ENTREGA'
,p_display_order=>127
,p_column_identifier=>'DW'
,p_column_label=>'Longitud Entrega'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(56130717589779762)
,p_db_column_name=>'IND_TIPO_PEDIDO'
,p_display_order=>129
,p_column_identifier=>'DY'
,p_column_label=>'Ind Tipo Pedido'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(56131172140779762)
,p_db_column_name=>'FEC_CONFIRMA_PEDIDO'
,p_display_order=>130
,p_column_identifier=>'DZ'
,p_column_label=>'Fec Confirma Pedido'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(56131565753779762)
,p_db_column_name=>'FECHA_TOPE_FACTURACION'
,p_display_order=>131
,p_column_identifier=>'EA'
,p_column_label=>'Fecha Tope Facturacion'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(78073095756103129)
,p_db_column_name=>'COD_EMPRESA'
,p_display_order=>141
,p_column_identifier=>'EC'
,p_column_label=>'Cod Empresa'
,p_column_type=>'STRING'
,p_use_as_row_header=>'Y'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(156805697317017228)
,p_db_column_name=>'DESC_TIPO_ENTREGA'
,p_display_order=>171
,p_column_identifier=>'EF'
,p_column_label=>'Tipo Entrega'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(156805743090017229)
,p_db_column_name=>'DESC_FLETE'
,p_display_order=>181
,p_column_identifier=>'EG'
,p_column_label=>'Flete'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(156805980785017231)
,p_db_column_name=>'AUTORIZACION'
,p_display_order=>201
,p_column_identifier=>'EI'
,p_column_label=>'Estado Distrib'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(156806263308017234)
,p_db_column_name=>'ESTADO_DISTRIBUCION_LOG'
,p_display_order=>231
,p_column_identifier=>'EL'
,p_column_label=>'Estado Distribucion Log'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(172914814780833227)
,p_db_column_name=>'FEC_APRO_RECHA'
,p_display_order=>241
,p_column_identifier=>'EM'
,p_column_label=>'Fec Apro Recha'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(172914910500833228)
,p_db_column_name=>'COD_USUARIO_ENVIO'
,p_display_order=>251
,p_column_identifier=>'EN'
,p_column_label=>'Cod Usuario Envio'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(172915020826833229)
,p_db_column_name=>'NRO_PEDIDO_ANTERIOR'
,p_display_order=>261
,p_column_identifier=>'EO'
,p_column_label=>'Nro Pedido Anterior'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(172915188833833230)
,p_db_column_name=>'PLANILLA_REPARTO'
,p_display_order=>271
,p_column_identifier=>'EP'
,p_column_label=>'Planilla Reparto'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(172915213809833231)
,p_db_column_name=>'COSTO_TOTAL'
,p_display_order=>281
,p_column_identifier=>'EQ'
,p_column_label=>'Costo Total'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(172915302002833232)
,p_db_column_name=>'MONTO_TOTAL'
,p_display_order=>291
,p_column_identifier=>'ER'
,p_column_label=>'Monto Total'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(172915403010833233)
,p_db_column_name=>'MARGEN'
,p_display_order=>301
,p_column_identifier=>'ES'
,p_column_label=>'Margen'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(76101538578162841)
,p_db_column_name=>'MOTIVO_ANULACION'
,p_display_order=>311
,p_column_identifier=>'ET'
,p_column_label=>'Motivo Anulacion'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(76101626283162842)
,p_db_column_name=>'ANULADO_POR'
,p_display_order=>321
,p_column_identifier=>'EU'
,p_column_label=>'Anulado Por'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(815771831827065948)
,p_db_column_name=>'IMPRIMIR'
,p_display_order=>331
,p_column_identifier=>'EV'
,p_column_label=>'Imprimir'
,p_column_link=>'javascript:$s(''P233_IMPRIMIR'',''#ROWPED#'');'
,p_column_linktext=>'<span class="fa fa-print" aria-hidden="true"></span>'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(842565169358550002)
,p_db_column_name=>'ROWPED'
,p_display_order=>341
,p_column_identifier=>'EW'
,p_column_label=>'Rowped'
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
,p_rpt_show_filter_lov=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(842567109835550022)
,p_db_column_name=>'COD_DEPARTAMENTO'
,p_display_order=>351
,p_column_identifier=>'EX'
,p_column_label=>'Cod Departamento'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(56134494748780191)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'561345'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>10
,p_report_columns=>'IMPRIMIR:COD_CLIENTE:NOM_CLIENTE:TIP_COMPROBANTE:SER_COMPROBANTE:NRO_COMPROBANTE:FEC_COMPROBANTE:COD_CONDICION_VENTA:MONTO_TOTAL:AUTORIZADO:ESTADO:DERIVADO:ENTREGA_REMISION:IND_GUARDA:IND_TIPO_PEDIDO:OBSERVACION_INTERNA:OBSERVACION:PLANILLA_REPARTO:D'
||'ESC_TIPO_ENTREGA:COD_VENDEDOR:ESTADO_DISTRIBUCION_LOG:COD_LISTA_PRECIO:DESC_FLETE:MOTIVO_ANULACION:ANULADO_POR:MARGEN:'
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
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(842665768920112808)
,p_report_id=>wwv_flow_imp.id(56134494748780191)
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'AUTORIZADO'
,p_operator=>'='
,p_expr=>'AUTORIZADO'
,p_condition_sql=>' (case when ("AUTORIZADO" = #APXWS_EXPR#) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# = ''AUTORIZADO''  '
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_column_bg_color=>'#2bc618'
,p_column_font_color=>'#000000'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(842666168615112809)
,p_report_id=>wwv_flow_imp.id(56134494748780191)
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'AUTORIZADO'
,p_operator=>'='
,p_expr=>'PENDIENTE'
,p_condition_sql=>' (case when ("AUTORIZADO" = #APXWS_EXPR#) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# = ''PENDIENTE''  '
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_column_bg_color=>'#f9ad16'
,p_column_font_color=>'#000000'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(842666576141112810)
,p_report_id=>wwv_flow_imp.id(56134494748780191)
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'ESTADO'
,p_operator=>'='
,p_expr=>'FACTURADO'
,p_condition_sql=>' (case when ("ESTADO" = #APXWS_EXPR#) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# = ''FACTURADO''  '
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_column_bg_color=>'#2bc618'
,p_column_font_color=>'#000000'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(842666986627112811)
,p_report_id=>wwv_flow_imp.id(56134494748780191)
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'ESTADO'
,p_operator=>'='
,p_expr=>'PENDIENTE'
,p_condition_sql=>' (case when ("ESTADO" = #APXWS_EXPR#) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# = ''PENDIENTE''  '
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_column_bg_color=>'#f9ad16'
,p_column_font_color=>'#000000'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(263386391525028467)
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
 p_id=>wwv_flow_imp.id(225196118135271925)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(263386391525028467)
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
 p_id=>wwv_flow_imp.id(56132044374779763)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(56079088945779729)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Agregar'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:34:&SESSION.::&DEBUG.:CR,34:P34_PARAM_NRO_PED,P34_PARAM_SER_PED:,'
,p_icon_css_classes=>'fa-plus'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(225196597505271922)
,p_name=>'P233_VENDEDOR'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(263386391525028467)
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
 p_id=>wwv_flow_imp.id(225197772280271919)
,p_name=>'P233_FECHA_INICIO'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(263386391525028467)
,p_item_default=>'SYSDATE-TO_CHAR(SYSDATE,''dd'')+1'
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
 p_id=>wwv_flow_imp.id(225198128103271919)
,p_name=>'P233_FECHA_FIN'
,p_is_required=>true
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(263386391525028467)
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
 p_id=>wwv_flow_imp.id(225198510350271918)
,p_name=>'P233_USUARIO'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(263386391525028467)
,p_source=>'&APP_USER.'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(815771915839065949)
,p_name=>'P233_IMPRIMIR'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(263386391525028467)
,p_source=>'&APP_USER.'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(842565215963550003)
,p_name=>'P233_SER_PEDIDO'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(263386391525028467)
,p_source=>'&APP_USER.'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(842565306026550004)
,p_name=>'P233_NRO_PEDIDO'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(263386391525028467)
,p_source=>'&APP_USER.'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(56132337097779763)
,p_name=>unistr('Editar Informe: Cuadro de Di\00E1logo Cerrado')
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(56079088945779729)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(56132875766779764)
,p_event_id=>wwv_flow_imp.id(56132337097779763)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(56079088945779729)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(172916667435833245)
,p_name=>'REFRESCAR'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(225196118135271925)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(172916722432833246)
,p_event_id=>wwv_flow_imp.id(172916667435833245)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(56079088945779729)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(815772037975065950)
,p_name=>'DA_IMPRIMIR'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P233_IMPRIMIR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(842565059099550001)
,p_event_id=>wwv_flow_imp.id(815772037975065950)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    SELECT SER_COMPROBANTE, NRO_COMPROBANTE',
'    INTO :P233_SER_PEDIDO, :P233_NRO_PEDIDO',
'',
'    FROM VT_PEDIDOS_CABECERA',
'    WHERE COD_EMPRESA = :P_COD_EMPRESA',
'    AND ROWID = :P233_IMPRIMIR;',
'    ',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_02=>'P233_IMPRIMIR,P_COD_EMPRESA'
,p_attribute_03=>'P233_SER_PEDIDO,P233_NRO_PEDIDO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(842565424112550005)
,p_event_id=>wwv_flow_imp.id(815772037975065950)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var comprobante = document.getElementById("P233_NRO_PEDIDO").value; ',
'var params = []',
'var empresa = apex.item("P_COD_EMPRESA").getValue();',
'var tip_comprobante =''PED'';',
'var ser_comprobante = apex.item("P233_SER_PEDIDO").getValue();',
'var nro_comprobante = apex.item("P233_NRO_PEDIDO").getValue();',
'',
'var usuario = ''&APP_USER.'';',
'var vfacnom = "VTPEDIDO";',
'params.push({ name: ''p_cod_empresa'', value: empresa})',
'params.push({ name: ''p_tip_comprobante'', value: tip_comprobante})',
'params.push({ name: ''p_ser_comprobante'', value: ser_comprobante}) ',
'params.push({ name: ''p_nro_comprobante'', value: nro_comprobante}) ',
'',
'createReportUrl(vfacnom, params)',
'',
'',
''))
);
wwv_flow_imp.component_end;
end;
/
