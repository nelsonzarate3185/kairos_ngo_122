prompt --application/pages/page_00545
begin
--   Manifest
--     PAGE: 00545
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
 p_id=>545
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Tracking Pedidos'
,p_alias=>'TRACKING-PEDIDOS'
,p_step_title=>'Tracking Pedidos'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.t-Form-label{',
'    color:  darkblue !important;',
'    font-weight: bold !important;',
'    }',
'',
'#parametros {',
'      background-color: #487ab8 !important;',
'      box-shadow: black 1px 1px 5px 1px;}',
'',
'        ',
' ',
'  .a-IRR-header u-tL , .a-IRR-headerLink, .a-IRR-header--linkCol{',
'      background: #003a85!important;',
'       color: yellow; ',
' }'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'INV'
,p_last_upd_yyyymmddhh24miss=>'20230605160711'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(161539066852493229)
,p_plug_name=>'parametros'
,p_region_name=>'parametros'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>10
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(163566295027500084)
,p_plug_name=>'Tracking Pedidos'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>30
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'NUMERO_FACTURA , NUMERO_PEDIDO,  sum(MONTO_GS)monto_gs ,  sum(CANTIDAD)cantidad , sum(CANTIDAD_FACTURADA)cantidad_facturada, CODIGO_VENDEDOR,  CODIGO_CLIENTE ,   TIP_COMPROBANTE,  ',
'SER_COMPROBANTE ,sum( VOLUMEN)volumen,  CODIGO_MOTIVO,  DESCRIPCION_MOTIVO,  CODIGO_SUCURSAL,  VENDEDOR_FACTURA , CATEGORIA_VENDEDOR_FACTURA ,   ESTADO_PEDIDO ,',
' AUTORIZADO  ,  COD_USUARIO , FLETE , TIPO_ENTREGA , FECHA_FACTURA2,  SUCURSAL_CLIENTE  ,CONDICION_VENTA, LISTA_DE_PRECIOS,  OBSERVACION,',
'    AUTORIZADO_POR,  RECHAZADO_POR,  FECHA_ANULACION , MOTIVO_CIERRE , ESTADO_FACTURA , REPARTO  ,FECHA_REPARTO2 , FECHA_RUTEO  ,sum(CANTIDAD_REPARTOS)cantidad_repartos,',
'      NOMBRE_SUCURSAL  ,DIRECCION_SUCURSAL , DEPARTAMENTO,  CIUDAD , COMENTARIO_PEDIDO ,   ESTADO_DISTRIBUCION , FECHA_PEDIDO , FECHA_IMPRESION ,',
'       FECHA_TRASLADO , FECHA_FACTURA , FECHA_GARANTIA , FECHA_REPARTO , FECHA_AUTORIZACION , COMENTARIO_ANULACION , IND_TIPO_PEDIDO,',
'         FEC_CONFIRMA_PEDIDO,  FECHA_ENTREGA_CLIENTE,  FECHA_CONFIRMACION_ENVIO , FECHA_RENDICION  ,FECHA_TRASLADO_FACTURA , FECHA_RECEPCION_FACTURA  ,COD_EMPRESA',
'',
' from (select NUMERO_FACTURA,',
'       NUMERO_PEDIDO,',
'       MONTO_GS,',
'       MONTO_USD,',
'       CANTIDAD,',
'       CANTIDAD_FACTURADA,',
'       DESCUENTO_GS,',
'       DESCUENTO_USD,',
'       IVA_GS,',
'       IVA_USD,',
'       CODIGO_TIEMPO,',
'       CODIGO_VENDEDOR,',
'       CODIGO_CLIENTE,',
'       CODIGO_ARTICULO,',
'       TIP_COMPROBANTE,',
'       SER_COMPROBANTE,',
'       CANTIDAD_PROMO,',
'       VOLUMEN,',
'       CODIGO_MOTIVO,',
'       DESCRIPCION_MOTIVO,',
'       CODIGO_SUCURSAL,',
'       VENDEDOR_FACTURA,',
'       CATEGORIA_VENDEDOR_FACTURA,',
'       PORCENTAJE_DESCUENTO,',
'       ESTADO_PEDIDO,',
'       AUTORIZADO,',
'       FEC_VENCIMIENTO,',
'       COD_USUARIO,',
'       FLETE,',
'       TIPO_ENTREGA,',
'       FECHA_FACTURA2,',
'       SUCURSAL_CLIENTE,',
'       CONDICION_VENTA,',
'       LISTA_DE_PRECIOS,',
'       OBSERVACION,',
'       OBSERVACION_CANAL_VERDE,',
'       AUTORIZADO_POR,',
'       RECHAZADO_POR,',
'       VOLUMEN_FACTURA,',
'       FECHA_ANULACION,',
'       MOTIVO_CIERRE,',
'       ESTADO_FACTURA,',
'       REPARTO,',
'       FECHA_REPARTO2,',
'       FECHA_RUTEO,',
'       CANTIDAD_REPARTOS,',
'       NOMBRE_SUCURSAL,',
'       DIRECCION_SUCURSAL,',
'       DEPARTAMENTO,',
'       CIUDAD,',
'       COMENTARIO_PEDIDO,',
'       LONGITUD,',
'       LATITUD,',
'       ESTADO_DISTRIBUCION,',
'       FECHA_PEDIDO,',
'       FECHA_IMPRESION,',
'       FECHA_TRASLADO,',
'       FECHA_FACTURA,',
'       FECHA_GARANTIA,',
'       FECHA_REPARTO,',
'       FECHA_AUTORIZACION,',
'       COMENTARIO_ANULACION,',
'       IND_TIPO_PEDIDO,',
'       FEC_CONFIRMA_PEDIDO,',
'       FECHA_ENTREGA_CLIENTE,',
'       FECHA_CONFIRMACION_ENVIO,',
'       FECHA_RENDICION,',
'       FECHA_TRASLADO_FACTURA,',
'       FECHA_RECEPCION_FACTURA,',
'       COD_EMPRESA',
'  from V_PEDIDOS_TRACK c',
'  where c.fecha_pedido between :P545_FECHA_INICIO and :P545_FECHA_FIN',
'  and (c.CODIGO_VENDEDOR= :P545_VENDEDOR or :P545_VENDEDOR is null)',
'  and(c.CODIGO_CLIENTE = :P545_CLIENTE or :P545_CLIENTE is null )',
'  AND (C.ESTADO_PEDIDO = :P545_ESTADO_PEDIDO OR :P545_ESTADO_PEDIDO=''T''))',
'  group by NUMERO_FACTURA , NUMERO_PEDIDO,       CODIGO_VENDEDOR,  CODIGO_CLIENTE ,   TIP_COMPROBANTE,  ',
'SER_COMPROBANTE ,  CODIGO_MOTIVO,  DESCRIPCION_MOTIVO,  CODIGO_SUCURSAL,  VENDEDOR_FACTURA , CATEGORIA_VENDEDOR_FACTURA ,   ESTADO_PEDIDO ,',
' AUTORIZADO  ,  COD_USUARIO , FLETE , TIPO_ENTREGA , FECHA_FACTURA2,  SUCURSAL_CLIENTE  ,CONDICION_VENTA, LISTA_DE_PRECIOS,  OBSERVACION,',
'    AUTORIZADO_POR,  RECHAZADO_POR,  FECHA_ANULACION , MOTIVO_CIERRE , ESTADO_FACTURA , REPARTO  ,FECHA_REPARTO2 , FECHA_RUTEO  ,',
'      NOMBRE_SUCURSAL  ,DIRECCION_SUCURSAL , DEPARTAMENTO,  CIUDAD , COMENTARIO_PEDIDO ,   ESTADO_DISTRIBUCION , FECHA_PEDIDO , FECHA_IMPRESION ,',
'       FECHA_TRASLADO , FECHA_FACTURA , FECHA_GARANTIA , FECHA_REPARTO , FECHA_AUTORIZACION , COMENTARIO_ANULACION , IND_TIPO_PEDIDO,',
'         FEC_CONFIRMA_PEDIDO,  FECHA_ENTREGA_CLIENTE,  FECHA_CONFIRMACION_ENVIO , FECHA_RENDICION  ,FECHA_TRASLADO_FACTURA , FECHA_RECEPCION_FACTURA  ,COD_EMPRESA',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P545_VENDEDOR,P545_CLIENTE,P545_FECHA_INICIO,P545_FECHA_FIN,P545_ESTADO_PEDIDO'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_page_header=>'Tracking Pedidos'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(163566361216500084)
,p_name=>'Tracking Pedidos'
,p_max_row_count_message=>unistr('El recuento m\00E1ximo de filas de este informe es #MAX_ROW_COUNT# filas. Aplique un filtro para reducir el n\00FAmero de registros de la consulta.')
,p_no_data_found_message=>unistr('No se ha encontrado ning\00FAn dato.')
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'INV'
,p_internal_uid=>163566361216500084
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(163566612133499955)
,p_db_column_name=>'NUMERO_FACTURA'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Numero Factura'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(163567042214499954)
,p_db_column_name=>'NUMERO_PEDIDO'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Numero Pedido'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(163567432699499953)
,p_db_column_name=>'MONTO_GS'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Monto Gs'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(163568200021499953)
,p_db_column_name=>'CANTIDAD'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Cantidad'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(163568679060499952)
,p_db_column_name=>'CANTIDAD_FACTURADA'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Cantidad Facturada'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(163571088803499950)
,p_db_column_name=>'CODIGO_VENDEDOR'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Codigo Vendedor'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(163571486898499949)
,p_db_column_name=>'CODIGO_CLIENTE'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Codigo Cliente'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(163572245461499949)
,p_db_column_name=>'TIP_COMPROBANTE'
,p_display_order=>15
,p_column_identifier=>'O'
,p_column_label=>'Tip Comprobante'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(163572655744499948)
,p_db_column_name=>'SER_COMPROBANTE'
,p_display_order=>16
,p_column_identifier=>'P'
,p_column_label=>'Ser Comprobante'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(163573435075499947)
,p_db_column_name=>'VOLUMEN'
,p_display_order=>18
,p_column_identifier=>'R'
,p_column_label=>'Volumen'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(163573894331499947)
,p_db_column_name=>'CODIGO_MOTIVO'
,p_display_order=>19
,p_column_identifier=>'S'
,p_column_label=>'Codigo Motivo'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(163574254317499947)
,p_db_column_name=>'DESCRIPCION_MOTIVO'
,p_display_order=>20
,p_column_identifier=>'T'
,p_column_label=>'Descripcion Motivo'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(163574631564499946)
,p_db_column_name=>'CODIGO_SUCURSAL'
,p_display_order=>21
,p_column_identifier=>'U'
,p_column_label=>'Codigo Sucursal'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(163575002607499946)
,p_db_column_name=>'VENDEDOR_FACTURA'
,p_display_order=>22
,p_column_identifier=>'V'
,p_column_label=>'Vendedor Factura'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(163575443641499946)
,p_db_column_name=>'CATEGORIA_VENDEDOR_FACTURA'
,p_display_order=>23
,p_column_identifier=>'W'
,p_column_label=>'Categoria Vendedor Factura'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(163576207547499945)
,p_db_column_name=>'ESTADO_PEDIDO'
,p_display_order=>25
,p_column_identifier=>'Y'
,p_column_label=>'Estado Pedido'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(163576696896499944)
,p_db_column_name=>'AUTORIZADO'
,p_display_order=>26
,p_column_identifier=>'Z'
,p_column_label=>'Autorizado'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(163577496767499944)
,p_db_column_name=>'COD_USUARIO'
,p_display_order=>28
,p_column_identifier=>'AB'
,p_column_label=>'Cod Usuario'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(163577880577499943)
,p_db_column_name=>'FLETE'
,p_display_order=>29
,p_column_identifier=>'AC'
,p_column_label=>'Flete'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(163578298320499943)
,p_db_column_name=>'TIPO_ENTREGA'
,p_display_order=>30
,p_column_identifier=>'AD'
,p_column_label=>'Tipo Entrega'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(163578640824499942)
,p_db_column_name=>'FECHA_FACTURA2'
,p_display_order=>31
,p_column_identifier=>'AE'
,p_column_label=>'Fecha Factura2'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(163579020454499942)
,p_db_column_name=>'SUCURSAL_CLIENTE'
,p_display_order=>32
,p_column_identifier=>'AF'
,p_column_label=>'Sucursal Cliente'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(163579421876499942)
,p_db_column_name=>'CONDICION_VENTA'
,p_display_order=>33
,p_column_identifier=>'AG'
,p_column_label=>'Condicion Venta'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(163579832617499941)
,p_db_column_name=>'LISTA_DE_PRECIOS'
,p_display_order=>34
,p_column_identifier=>'AH'
,p_column_label=>'Lista De Precios'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(163580267728499941)
,p_db_column_name=>'OBSERVACION'
,p_display_order=>35
,p_column_identifier=>'AI'
,p_column_label=>'Observacion'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(163581038276499940)
,p_db_column_name=>'AUTORIZADO_POR'
,p_display_order=>37
,p_column_identifier=>'AK'
,p_column_label=>'Autorizado Por'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(163581471987499939)
,p_db_column_name=>'RECHAZADO_POR'
,p_display_order=>38
,p_column_identifier=>'AL'
,p_column_label=>'Rechazado Por'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(163582272971499939)
,p_db_column_name=>'FECHA_ANULACION'
,p_display_order=>40
,p_column_identifier=>'AN'
,p_column_label=>'Fecha Anulacion'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(163582604028499938)
,p_db_column_name=>'MOTIVO_CIERRE'
,p_display_order=>41
,p_column_identifier=>'AO'
,p_column_label=>'Motivo Cierre'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(163583089079499938)
,p_db_column_name=>'ESTADO_FACTURA'
,p_display_order=>42
,p_column_identifier=>'AP'
,p_column_label=>'Estado Factura'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(163583400925499938)
,p_db_column_name=>'REPARTO'
,p_display_order=>43
,p_column_identifier=>'AQ'
,p_column_label=>'Reparto'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(163583846090499937)
,p_db_column_name=>'FECHA_REPARTO2'
,p_display_order=>44
,p_column_identifier=>'AR'
,p_column_label=>'Fecha Reparto2'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(163584235806499937)
,p_db_column_name=>'FECHA_RUTEO'
,p_display_order=>45
,p_column_identifier=>'AS'
,p_column_label=>'Fecha Ruteo'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(163584695284499937)
,p_db_column_name=>'CANTIDAD_REPARTOS'
,p_display_order=>46
,p_column_identifier=>'AT'
,p_column_label=>'Cantidad Repartos'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(163585091181499936)
,p_db_column_name=>'NOMBRE_SUCURSAL'
,p_display_order=>47
,p_column_identifier=>'AU'
,p_column_label=>'Nombre Sucursal'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(163585419095499936)
,p_db_column_name=>'DIRECCION_SUCURSAL'
,p_display_order=>48
,p_column_identifier=>'AV'
,p_column_label=>'Direccion Sucursal'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(163585805405499935)
,p_db_column_name=>'DEPARTAMENTO'
,p_display_order=>49
,p_column_identifier=>'AW'
,p_column_label=>'Departamento'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(163586259285499935)
,p_db_column_name=>'CIUDAD'
,p_display_order=>50
,p_column_identifier=>'AX'
,p_column_label=>'Ciudad'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(163586634619499934)
,p_db_column_name=>'COMENTARIO_PEDIDO'
,p_display_order=>51
,p_column_identifier=>'AY'
,p_column_label=>'Comentario Pedido'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(163587821030499933)
,p_db_column_name=>'ESTADO_DISTRIBUCION'
,p_display_order=>54
,p_column_identifier=>'BB'
,p_column_label=>'Estado Distribucion'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(163588219305499933)
,p_db_column_name=>'FECHA_PEDIDO'
,p_display_order=>55
,p_column_identifier=>'BC'
,p_column_label=>'Fecha Pedido'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_format_mask=>'DD-MM-YYYY HH24:MI:SS'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(163588642032499933)
,p_db_column_name=>'FECHA_IMPRESION'
,p_display_order=>56
,p_column_identifier=>'BD'
,p_column_label=>'Fecha Impresion'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_format_mask=>'DD-MM-YYYY HH24:MI:SS'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(163589089658499932)
,p_db_column_name=>'FECHA_TRASLADO'
,p_display_order=>57
,p_column_identifier=>'BE'
,p_column_label=>'Fecha Traslado'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_format_mask=>'DD-MM-YYYY HH24:MI:SS'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(163589490529499932)
,p_db_column_name=>'FECHA_FACTURA'
,p_display_order=>58
,p_column_identifier=>'BF'
,p_column_label=>'Fecha Factura'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_format_mask=>'DD-MM-YYYY HH24:MI:SS'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(163589820072499932)
,p_db_column_name=>'FECHA_GARANTIA'
,p_display_order=>59
,p_column_identifier=>'BG'
,p_column_label=>'Fecha Garantia'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_format_mask=>'DD-MM-YYYY HH24:MI:SS'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(163590294706499931)
,p_db_column_name=>'FECHA_REPARTO'
,p_display_order=>60
,p_column_identifier=>'BH'
,p_column_label=>'Fecha Reparto'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_format_mask=>'DD-MM-YYYY HH24:MI:SS'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(163590621230499931)
,p_db_column_name=>'FECHA_AUTORIZACION'
,p_display_order=>61
,p_column_identifier=>'BI'
,p_column_label=>'Fecha Autorizacion'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_format_mask=>'DD-MM-YYYY HH24:MI:SS'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(163591023322499931)
,p_db_column_name=>'COMENTARIO_ANULACION'
,p_display_order=>62
,p_column_identifier=>'BJ'
,p_column_label=>'Comentario Anulacion'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(163591493308499930)
,p_db_column_name=>'IND_TIPO_PEDIDO'
,p_display_order=>63
,p_column_identifier=>'BK'
,p_column_label=>'Ind Tipo Pedido'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(163591803472499930)
,p_db_column_name=>'FEC_CONFIRMA_PEDIDO'
,p_display_order=>64
,p_column_identifier=>'BL'
,p_column_label=>'Fec Confirma Pedido'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(163592245236499929)
,p_db_column_name=>'FECHA_ENTREGA_CLIENTE'
,p_display_order=>65
,p_column_identifier=>'BM'
,p_column_label=>'Fecha Entrega Cliente'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(163592640484499929)
,p_db_column_name=>'FECHA_CONFIRMACION_ENVIO'
,p_display_order=>66
,p_column_identifier=>'BN'
,p_column_label=>'Fecha Confirmacion Envio'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(163593087556499928)
,p_db_column_name=>'FECHA_RENDICION'
,p_display_order=>67
,p_column_identifier=>'BO'
,p_column_label=>'Fecha Rendicion'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(163593424928499928)
,p_db_column_name=>'FECHA_TRASLADO_FACTURA'
,p_display_order=>68
,p_column_identifier=>'BP'
,p_column_label=>'Fecha Traslado Factura'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(163593854099499927)
,p_db_column_name=>'FECHA_RECEPCION_FACTURA'
,p_display_order=>69
,p_column_identifier=>'BQ'
,p_column_label=>'Fecha Recepcion Factura'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(163594292853499927)
,p_db_column_name=>'COD_EMPRESA'
,p_display_order=>70
,p_column_identifier=>'BR'
,p_column_label=>'Cod Empresa'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(163594807881490356)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1635949'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'SER_COMPROBANTE:NUMERO_PEDIDO:ESTADO_PEDIDO:AUTORIZADO:TIPO_ENTREGA:FECHA_PEDIDO:FECHA_AUTORIZACION:FECHA_TRASLADO:FECHA_RUTEO:FECHA_FACTURA:FECHA_GARANTIA:FECHA_REPARTO:FECHA_REPARTO2:FECHA_ENTREGA_CLIENTE:NUMERO_FACTURA:MONTO_GS:CODIGO_CLIENTE:CODI'
||'GO_VENDEDOR:VENDEDOR_FACTURA:CANTIDAD:VOLUMEN:CANTIDAD_FACTURADA:FLETE:FECHA_FACTURA2:SUCURSAL_CLIENTE:OBSERVACION:AUTORIZADO_POR:ESTADO_FACTURA:REPARTO:NOMBRE_SUCURSAL:DIRECCION_SUCURSAL:DEPARTAMENTO:CIUDAD:COMENTARIO_PEDIDO:ESTADO_DISTRIBUCION:'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(161539576872493234)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(161539066852493229)
,p_button_name=>'Filtrar'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--iconRight:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Filtrar'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'u-color-21-bg u-color-43-text'
,p_icon_css_classes=>'fa-search'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>1
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(161539129197493230)
,p_name=>'P545_VENDEDOR'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(161539066852493229)
,p_prompt=>'Vendedor'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_VENDEDOR'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'--LV PARA VTFAPECO  ',
'  select cod_vendedor || '' - '' || ltrim( rtrim( nvl( p.nombre, p.nomb_fantasia ) ) ) D,',
'         cod_vendedor R',
'    from fv_vendedores u,',
'          personas p',
'   where u.cod_empresa = :p_cod_empresa',
'     and u.cod_persona = p.cod_persona;',
''))
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
 p_id=>wwv_flow_imp.id(161539202114493231)
,p_name=>'P545_CLIENTE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(161539066852493229)
,p_prompt=>'Cliente'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT  c.cod_cliente||'' - ''||p.nombre L, ',
'          c.cod_cliente V ',
'    FROM cc_clientes c, personas p, ident_personas i',
'    WHERE c.cod_empresa = :p_cod_empresa',
'      AND c.cod_persona = p.cod_persona',
'      AND c.estado =''A''',
'      AND I.COD_IDENT IN (''RUC'',''CI'')',
'      AND i.cod_persona = c.cod_persona',
' ORDER BY 1'))
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
 p_id=>wwv_flow_imp.id(161539319118493232)
,p_name=>'P545_FECHA_INICIO'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(161539066852493229)
,p_item_default=>'SYSDATE-5'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Fecha Desde'
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
 p_id=>wwv_flow_imp.id(161539486435493233)
,p_name=>'P545_FECHA_FIN'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(161539066852493229)
,p_item_default=>'SYSDATE'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Fecha Hasta'
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
 p_id=>wwv_flow_imp.id(161539898329493237)
,p_name=>'P545_ESTADO_PEDIDO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(161539066852493229)
,p_item_default=>'T'
,p_prompt=>'Estado Pedido'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:PENDIENTE;PENDIENTE,FACTURADO;FACTURADO,ANULADO;ANULADO,CERRADO;CERRADO,TODOS;T'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(161539673678493235)
,p_name=>'Ejecutar_reporte'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(161539576872493234)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(161539768191493236)
,p_event_id=>wwv_flow_imp.id(161539673678493235)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(163566295027500084)
);
wwv_flow_imp.component_end;
end;
/
