prompt --application/pages/page_00622
begin
--   Manifest
--     PAGE: 00622
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
 p_id=>622
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>unistr('Carga de Notas de Cr\00E9dito')
,p_alias=>unistr('CARGA-DE-NOTAS-DE-CR\00C9DITO')
,p_step_title=>unistr('Carga de Notas de Cr\00E9dito')
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'FCARDOZO'
,p_last_upd_yyyymmddhh24miss=>'20230922120744'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(210432384480211406)
,p_plug_name=>unistr('Carga de Notas de Cr\00E9dito')
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>940
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(210432404589211407)
,p_plug_name=>unistr('Carga de Notas de Cr\00E9dito')
,p_parent_plug_id=>wwv_flow_imp.id(210432384480211406)
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
'       COD_SUCURSAL,',
'       FEC_COMPROBANTE,',
'       COD_CLIENTE,',
'       COD_VENDEDOR,',
'              (  select nvl( fv.descripcion, ltrim(p.nombre) )',
'    from fv_vendedores fv, personas p ',
'   where fv.cod_empresa = :P_COD_EMPRESA',
'     and fv.cod_persona = p.cod_persona ',
'     and fv.cod_vendedor = v.cod_vendedor',
'     and fv.estado = ''A'' ) nombre_vendedor,',
'       TIP_COMPROBANTE_REF,',
'       SER_COMPROBANTE_REF,',
'       NRO_COMPROBANTE_REF,',
'       COD_CONDICION_VENTA,',
'       COD_LISTA_PRECIO,',
'       DESCUENTO,',
'       COD_MONEDA,',
'       TIP_CAMBIO,',
'       TOT_COMPROBANTE,',
'       TOT_GRAVADAS,',
'       TOT_EXENTAS,',
'       TOT_IVA,',
'       NRO_MOV_CAJ,',
'       ESTADO,',
'       FEC_ESTADO,',
'       COD_USUARIO,',
'       FEC_ALTA,',
'       DESCUENTO_DET,',
'       TOT_DESCUENTO_DET,',
'       CAMBIO_DOLAR,',
'       CAMBIO_MONEDA_PRECIO,',
'       NOM_CLIENTE,',
'       ESTADO_REPARTO,',
'       TOT_IVA_SIN_REDONDEO,',
'       TIP_CAMBIO_COMPRA,',
'       COMENTARIO,',
'       GRU_COMPROBANTE,',
'       COD_PERSONA,',
'       ENTREGA_INICIAL,',
'       COD_SECTOR,',
'       VENCIMIENTO_INICIAL,',
'       TIP_MOV_CAJ,',
'       REFERENCIA,',
'       TEL_CLIENTE,',
'       COLUMNA,',
'       SER_MOV_CAJ,',
'       RUC,',
'       NRO_REMISION,',
'       NOMBRE_CAB,',
'       LIBRO_IVA,',
'       ESTADO_EMPAQUE,',
'       DIR_CLIENTE,',
'       DIAS,',
'       COD_DIRECCION,',
'       COD_ENCARGADO_FAC,',
'       COD_USUARIO_ANU,',
'       COD_MOTIVO_ANU,',
'       AJUSTE_IVA,',
'       TOT_RECARGO_DET,',
'       COD_CUSTODIO,',
'       TOT_EXENTAS_GEN,',
'       COD_TIPO_VENTA,',
'       ASIENTOS,',
'       SENIA,',
'       DESCUENTO_EX,',
'       DESCUENTO_GR,',
'       RECARGO_EX,',
'       RECARGO_GR,',
'       COD_CONDICION_VENTA_FAC,',
'       NRO_INSCRIPCION_AD,',
'       IND_EXENTO_AD,',
'       HORA_ALTA,',
'       RECARGO,',
'       CONTROL_FIN,',
'       FECHA_INICIAL,',
'       FECHA_FINAL,',
'       TIP_OT,',
'       SER_OT,',
'       NRO_OT,',
'       IND_OT,',
'       FEC_PAGO,',
'       IND_IMPRESO,',
'       IND_REPARTO,',
'       COD_SUCURSAL_CLI,',
'       LUGAR_ENTREGA,',
'       NRO_ORDEN_COMPRA,',
'       IND_CAJA,',
'       FEC_PLANILLA_CAJA,',
'       COD_USUARIO_CAJA,',
'       NRO_REGISTRO_DEV,',
'       IND_PLAN_ENTREGA,',
'       IND_ANTICIPO_OT,',
'       IND_IMPRESO_ORDEN,',
'       MONTO_ORDEN_REG,',
'       NRO_PLANILLA_PEDIDO,',
'       IMPORTE_CAPITAL,',
'       IMPORTE_INTERES,',
'       IND_CONFIRMA_ENVIO,',
'       NRO_FACTURA_QM,',
'       MONTO_DEV_NCR,',
'       ASIENTO_DEVOLUCION_VALOR,',
'       ASIENTOS_COSTO,',
'       ASIENTOS_ANULACION,',
'       ID_FACTURA_ELECTRONICA,',
'       CDC,',
'       FECHA_ALTA_COMPROBANTE,',
'       IND_AFECTA_GUARDA,',
'       FECHA_CONFIRMACION_ENVIO,',
'       NULL EDITAR,',
'       NULL ELIMINAR',
'  from VT_COMPROBANTES_CABECERA v',
'where cod_empresa=:p_cod_empresa',
'and tip_comprobante=''NCR'''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>unistr('Carga de Notas de Cr\00E9dito')
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
 p_id=>wwv_flow_imp.id(210432522717211408)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'FCARDOZO'
,p_internal_uid=>210432522717211408
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(210432652599211409)
,p_db_column_name=>'COD_EMPRESA'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Cod Empresa'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(210432706246211410)
,p_db_column_name=>'TIP_COMPROBANTE'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Tip Comprobante'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(210432811389211411)
,p_db_column_name=>'SER_COMPROBANTE'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Ser Comprobante'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(210432902494211412)
,p_db_column_name=>'NRO_COMPROBANTE'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Nro Comprobante'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(210433047939211413)
,p_db_column_name=>'COD_SUCURSAL'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Cod Sucursal'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(210433197854211414)
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
 p_id=>wwv_flow_imp.id(210433248044211415)
,p_db_column_name=>'COD_CLIENTE'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Cod Cliente'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(210433383670211416)
,p_db_column_name=>'COD_VENDEDOR'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Cod Vendedor'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(210433488883211417)
,p_db_column_name=>'TIP_COMPROBANTE_REF'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Tip Comprobante Ref'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(210433577952211418)
,p_db_column_name=>'SER_COMPROBANTE_REF'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Ser Comprobante Ref'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(210433697149211419)
,p_db_column_name=>'NRO_COMPROBANTE_REF'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Nro Comprobante Ref'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(210433705124211420)
,p_db_column_name=>'COD_CONDICION_VENTA'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Cod Condicion Venta'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(210433815949211421)
,p_db_column_name=>'COD_LISTA_PRECIO'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Cod Lista Precio'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(210433911188211422)
,p_db_column_name=>'DESCUENTO'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Descuento'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(210434033649211423)
,p_db_column_name=>'COD_MONEDA'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Cod Moneda'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(210434188745211424)
,p_db_column_name=>'TIP_CAMBIO'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Tip Cambio'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(210434235589211425)
,p_db_column_name=>'TOT_COMPROBANTE'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Tot Comprobante'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(210434391921211426)
,p_db_column_name=>'TOT_GRAVADAS'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'Tot Gravadas'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(210434468419211427)
,p_db_column_name=>'TOT_EXENTAS'
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>'Tot Exentas'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(210434585853211428)
,p_db_column_name=>'TOT_IVA'
,p_display_order=>200
,p_column_identifier=>'T'
,p_column_label=>'Tot Iva'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(210434688488211429)
,p_db_column_name=>'NRO_MOV_CAJ'
,p_display_order=>210
,p_column_identifier=>'U'
,p_column_label=>'Nro Mov Caj'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(210434737829211430)
,p_db_column_name=>'ESTADO'
,p_display_order=>220
,p_column_identifier=>'V'
,p_column_label=>'Estado'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(210434848213211431)
,p_db_column_name=>'FEC_ESTADO'
,p_display_order=>230
,p_column_identifier=>'W'
,p_column_label=>'Fec Estado'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(210434941147211432)
,p_db_column_name=>'COD_USUARIO'
,p_display_order=>240
,p_column_identifier=>'X'
,p_column_label=>'Cod Usuario'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(210435028389211433)
,p_db_column_name=>'FEC_ALTA'
,p_display_order=>250
,p_column_identifier=>'Y'
,p_column_label=>'Fec Alta'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(210435139740211434)
,p_db_column_name=>'DESCUENTO_DET'
,p_display_order=>260
,p_column_identifier=>'Z'
,p_column_label=>'Descuento Det'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(210435293833211435)
,p_db_column_name=>'TOT_DESCUENTO_DET'
,p_display_order=>270
,p_column_identifier=>'AA'
,p_column_label=>'Tot Descuento Det'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(210435359714211436)
,p_db_column_name=>'CAMBIO_DOLAR'
,p_display_order=>280
,p_column_identifier=>'AB'
,p_column_label=>'Cambio Dolar'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(210435451695211437)
,p_db_column_name=>'CAMBIO_MONEDA_PRECIO'
,p_display_order=>290
,p_column_identifier=>'AC'
,p_column_label=>'Cambio Moneda Precio'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(210435550418211438)
,p_db_column_name=>'NOM_CLIENTE'
,p_display_order=>300
,p_column_identifier=>'AD'
,p_column_label=>'Nom Cliente'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(210435660168211439)
,p_db_column_name=>'ESTADO_REPARTO'
,p_display_order=>310
,p_column_identifier=>'AE'
,p_column_label=>'Estado Reparto'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(210435794438211440)
,p_db_column_name=>'TOT_IVA_SIN_REDONDEO'
,p_display_order=>320
,p_column_identifier=>'AF'
,p_column_label=>'Tot Iva Sin Redondeo'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(210435802489211441)
,p_db_column_name=>'TIP_CAMBIO_COMPRA'
,p_display_order=>330
,p_column_identifier=>'AG'
,p_column_label=>'Tip Cambio Compra'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(210435956031211442)
,p_db_column_name=>'COMENTARIO'
,p_display_order=>340
,p_column_identifier=>'AH'
,p_column_label=>'Comentario'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(210436037543211443)
,p_db_column_name=>'GRU_COMPROBANTE'
,p_display_order=>350
,p_column_identifier=>'AI'
,p_column_label=>'Gru Comprobante'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(210436141213211444)
,p_db_column_name=>'COD_PERSONA'
,p_display_order=>360
,p_column_identifier=>'AJ'
,p_column_label=>'Cod Persona'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(210436279211211445)
,p_db_column_name=>'ENTREGA_INICIAL'
,p_display_order=>370
,p_column_identifier=>'AK'
,p_column_label=>'Entrega Inicial'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(210436332093211446)
,p_db_column_name=>'COD_SECTOR'
,p_display_order=>380
,p_column_identifier=>'AL'
,p_column_label=>'Cod Sector'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(210436477652211447)
,p_db_column_name=>'VENCIMIENTO_INICIAL'
,p_display_order=>390
,p_column_identifier=>'AM'
,p_column_label=>'Vencimiento Inicial'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(210436525561211448)
,p_db_column_name=>'TIP_MOV_CAJ'
,p_display_order=>400
,p_column_identifier=>'AN'
,p_column_label=>'Tip Mov Caj'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(210436625896211449)
,p_db_column_name=>'REFERENCIA'
,p_display_order=>410
,p_column_identifier=>'AO'
,p_column_label=>'Referencia'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(210436746481211450)
,p_db_column_name=>'TEL_CLIENTE'
,p_display_order=>420
,p_column_identifier=>'AP'
,p_column_label=>'Tel Cliente'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(210545068428102701)
,p_db_column_name=>'COLUMNA'
,p_display_order=>430
,p_column_identifier=>'AQ'
,p_column_label=>'Columna'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(210545168569102702)
,p_db_column_name=>'SER_MOV_CAJ'
,p_display_order=>440
,p_column_identifier=>'AR'
,p_column_label=>'Ser Mov Caj'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(210545232102102703)
,p_db_column_name=>'RUC'
,p_display_order=>450
,p_column_identifier=>'AS'
,p_column_label=>'Ruc'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(210545322876102704)
,p_db_column_name=>'NRO_REMISION'
,p_display_order=>460
,p_column_identifier=>'AT'
,p_column_label=>'Nro Remision'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(210545432914102705)
,p_db_column_name=>'NOMBRE_CAB'
,p_display_order=>470
,p_column_identifier=>'AU'
,p_column_label=>'Nombre Cab'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(210545573385102706)
,p_db_column_name=>'LIBRO_IVA'
,p_display_order=>480
,p_column_identifier=>'AV'
,p_column_label=>'Libro Iva'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(210545678136102707)
,p_db_column_name=>'ESTADO_EMPAQUE'
,p_display_order=>490
,p_column_identifier=>'AW'
,p_column_label=>'Estado Empaque'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(210545780486102708)
,p_db_column_name=>'DIR_CLIENTE'
,p_display_order=>500
,p_column_identifier=>'AX'
,p_column_label=>'Dir Cliente'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(210545819849102709)
,p_db_column_name=>'DIAS'
,p_display_order=>510
,p_column_identifier=>'AY'
,p_column_label=>'Dias'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(210545976913102710)
,p_db_column_name=>'COD_DIRECCION'
,p_display_order=>520
,p_column_identifier=>'AZ'
,p_column_label=>'Cod Direccion'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(210546041072102711)
,p_db_column_name=>'COD_ENCARGADO_FAC'
,p_display_order=>530
,p_column_identifier=>'BA'
,p_column_label=>'Cod Encargado Fac'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(210546175537102712)
,p_db_column_name=>'COD_USUARIO_ANU'
,p_display_order=>540
,p_column_identifier=>'BB'
,p_column_label=>'Cod Usuario Anu'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(210546272790102713)
,p_db_column_name=>'COD_MOTIVO_ANU'
,p_display_order=>550
,p_column_identifier=>'BC'
,p_column_label=>'Cod Motivo Anu'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(210546303654102714)
,p_db_column_name=>'AJUSTE_IVA'
,p_display_order=>560
,p_column_identifier=>'BD'
,p_column_label=>'Ajuste Iva'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(210546412035102715)
,p_db_column_name=>'TOT_RECARGO_DET'
,p_display_order=>570
,p_column_identifier=>'BE'
,p_column_label=>'Tot Recargo Det'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(210546585594102716)
,p_db_column_name=>'COD_CUSTODIO'
,p_display_order=>580
,p_column_identifier=>'BF'
,p_column_label=>'Cod Custodio'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(210546687127102717)
,p_db_column_name=>'TOT_EXENTAS_GEN'
,p_display_order=>590
,p_column_identifier=>'BG'
,p_column_label=>'Tot Exentas Gen'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(210546728268102718)
,p_db_column_name=>'COD_TIPO_VENTA'
,p_display_order=>600
,p_column_identifier=>'BH'
,p_column_label=>'Cod Tipo Venta'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(210546854584102719)
,p_db_column_name=>'ASIENTOS'
,p_display_order=>610
,p_column_identifier=>'BI'
,p_column_label=>'Asientos'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(210546993837102720)
,p_db_column_name=>'SENIA'
,p_display_order=>620
,p_column_identifier=>'BJ'
,p_column_label=>'Senia'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(210547078651102721)
,p_db_column_name=>'DESCUENTO_EX'
,p_display_order=>630
,p_column_identifier=>'BK'
,p_column_label=>'Descuento Ex'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(210547170440102722)
,p_db_column_name=>'DESCUENTO_GR'
,p_display_order=>640
,p_column_identifier=>'BL'
,p_column_label=>'Descuento Gr'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(210547230795102723)
,p_db_column_name=>'RECARGO_EX'
,p_display_order=>650
,p_column_identifier=>'BM'
,p_column_label=>'Recargo Ex'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(210547311095102724)
,p_db_column_name=>'RECARGO_GR'
,p_display_order=>660
,p_column_identifier=>'BN'
,p_column_label=>'Recargo Gr'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(210547452279102725)
,p_db_column_name=>'COD_CONDICION_VENTA_FAC'
,p_display_order=>670
,p_column_identifier=>'BO'
,p_column_label=>'Cod Condicion Venta Fac'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(210547585548102726)
,p_db_column_name=>'NRO_INSCRIPCION_AD'
,p_display_order=>680
,p_column_identifier=>'BP'
,p_column_label=>'Nro Inscripcion Ad'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(210547664731102727)
,p_db_column_name=>'IND_EXENTO_AD'
,p_display_order=>690
,p_column_identifier=>'BQ'
,p_column_label=>'Ind Exento Ad'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(210547787083102728)
,p_db_column_name=>'HORA_ALTA'
,p_display_order=>700
,p_column_identifier=>'BR'
,p_column_label=>'Hora Alta'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(210547826068102729)
,p_db_column_name=>'RECARGO'
,p_display_order=>710
,p_column_identifier=>'BS'
,p_column_label=>'Recargo'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(210547941856102730)
,p_db_column_name=>'CONTROL_FIN'
,p_display_order=>720
,p_column_identifier=>'BT'
,p_column_label=>'Control Fin'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(210548074323102731)
,p_db_column_name=>'FECHA_INICIAL'
,p_display_order=>730
,p_column_identifier=>'BU'
,p_column_label=>'Fecha Inicial'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(210548148428102732)
,p_db_column_name=>'FECHA_FINAL'
,p_display_order=>740
,p_column_identifier=>'BV'
,p_column_label=>'Fecha Final'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(210548227811102733)
,p_db_column_name=>'TIP_OT'
,p_display_order=>750
,p_column_identifier=>'BW'
,p_column_label=>'Tip Ot'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(210548361256102734)
,p_db_column_name=>'SER_OT'
,p_display_order=>760
,p_column_identifier=>'BX'
,p_column_label=>'Ser Ot'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(210548487353102735)
,p_db_column_name=>'NRO_OT'
,p_display_order=>770
,p_column_identifier=>'BY'
,p_column_label=>'Nro Ot'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(210548536602102736)
,p_db_column_name=>'IND_OT'
,p_display_order=>780
,p_column_identifier=>'BZ'
,p_column_label=>'Ind Ot'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(210548658074102737)
,p_db_column_name=>'FEC_PAGO'
,p_display_order=>790
,p_column_identifier=>'CA'
,p_column_label=>'Fec Pago'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(210548708651102738)
,p_db_column_name=>'IND_IMPRESO'
,p_display_order=>800
,p_column_identifier=>'CB'
,p_column_label=>'Ind Impreso'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(210548803478102739)
,p_db_column_name=>'IND_REPARTO'
,p_display_order=>810
,p_column_identifier=>'CC'
,p_column_label=>'Ind Reparto'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(210548940885102740)
,p_db_column_name=>'COD_SUCURSAL_CLI'
,p_display_order=>820
,p_column_identifier=>'CD'
,p_column_label=>'Cod Sucursal Cli'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(210549026365102741)
,p_db_column_name=>'LUGAR_ENTREGA'
,p_display_order=>830
,p_column_identifier=>'CE'
,p_column_label=>'Lugar Entrega'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(210549142873102742)
,p_db_column_name=>'NRO_ORDEN_COMPRA'
,p_display_order=>840
,p_column_identifier=>'CF'
,p_column_label=>'Nro Orden Compra'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(210549249480102743)
,p_db_column_name=>'IND_CAJA'
,p_display_order=>850
,p_column_identifier=>'CG'
,p_column_label=>'Ind Caja'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(210549325507102744)
,p_db_column_name=>'FEC_PLANILLA_CAJA'
,p_display_order=>860
,p_column_identifier=>'CH'
,p_column_label=>'Fec Planilla Caja'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(210549486295102745)
,p_db_column_name=>'COD_USUARIO_CAJA'
,p_display_order=>870
,p_column_identifier=>'CI'
,p_column_label=>'Cod Usuario Caja'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(210549594872102746)
,p_db_column_name=>'NRO_REGISTRO_DEV'
,p_display_order=>880
,p_column_identifier=>'CJ'
,p_column_label=>'Nro Registro Dev'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(210549688365102747)
,p_db_column_name=>'IND_PLAN_ENTREGA'
,p_display_order=>890
,p_column_identifier=>'CK'
,p_column_label=>'Ind Plan Entrega'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(210549713007102748)
,p_db_column_name=>'IND_ANTICIPO_OT'
,p_display_order=>900
,p_column_identifier=>'CL'
,p_column_label=>'Ind Anticipo Ot'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(210549810561102749)
,p_db_column_name=>'IND_IMPRESO_ORDEN'
,p_display_order=>910
,p_column_identifier=>'CM'
,p_column_label=>'Ind Impreso Orden'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(210549976066102750)
,p_db_column_name=>'MONTO_ORDEN_REG'
,p_display_order=>920
,p_column_identifier=>'CN'
,p_column_label=>'Monto Orden Reg'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(210550022505102701)
,p_db_column_name=>'NRO_PLANILLA_PEDIDO'
,p_display_order=>930
,p_column_identifier=>'CO'
,p_column_label=>'Nro Planilla Pedido'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(210550112881102702)
,p_db_column_name=>'IMPORTE_CAPITAL'
,p_display_order=>940
,p_column_identifier=>'CP'
,p_column_label=>'Importe Capital'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
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
 p_id=>wwv_flow_imp.id(210550271111102703)
,p_db_column_name=>'IMPORTE_INTERES'
,p_display_order=>950
,p_column_identifier=>'CQ'
,p_column_label=>'Importe Interes'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(210550355490102704)
,p_db_column_name=>'IND_CONFIRMA_ENVIO'
,p_display_order=>960
,p_column_identifier=>'CR'
,p_column_label=>'Ind Confirma Envio'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(210550440846102705)
,p_db_column_name=>'NRO_FACTURA_QM'
,p_display_order=>970
,p_column_identifier=>'CS'
,p_column_label=>'Nro Factura Qm'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(210550578311102706)
,p_db_column_name=>'MONTO_DEV_NCR'
,p_display_order=>980
,p_column_identifier=>'CT'
,p_column_label=>'Monto Dev Ncr'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(210550659078102707)
,p_db_column_name=>'ASIENTO_DEVOLUCION_VALOR'
,p_display_order=>990
,p_column_identifier=>'CU'
,p_column_label=>'Asiento Devolucion Valor'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(210550753942102708)
,p_db_column_name=>'ASIENTOS_COSTO'
,p_display_order=>1000
,p_column_identifier=>'CV'
,p_column_label=>'Asientos Costo'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(210550805468102709)
,p_db_column_name=>'ASIENTOS_ANULACION'
,p_display_order=>1010
,p_column_identifier=>'CW'
,p_column_label=>'Asientos Anulacion'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(210550975054102710)
,p_db_column_name=>'ID_FACTURA_ELECTRONICA'
,p_display_order=>1020
,p_column_identifier=>'CX'
,p_column_label=>'Id Factura Electronica'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(210551024391102711)
,p_db_column_name=>'CDC'
,p_display_order=>1030
,p_column_identifier=>'CY'
,p_column_label=>'Cdc'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(210551193939102712)
,p_db_column_name=>'FECHA_ALTA_COMPROBANTE'
,p_display_order=>1040
,p_column_identifier=>'CZ'
,p_column_label=>'Fecha Alta Comprobante'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(210551251347102713)
,p_db_column_name=>'IND_AFECTA_GUARDA'
,p_display_order=>1050
,p_column_identifier=>'DA'
,p_column_label=>'Ind Afecta Guarda'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(210551357072102714)
,p_db_column_name=>'FECHA_CONFIRMACION_ENVIO'
,p_display_order=>1060
,p_column_identifier=>'DB'
,p_column_label=>'Fecha Confirmacion Envio'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(210019286535258517)
,p_db_column_name=>'EDITAR'
,p_display_order=>1070
,p_column_identifier=>'DC'
,p_column_label=>'Editar'
,p_column_link=>'f?p=&APP_ID.:103:&SESSION.::&DEBUG.:RP,103:P103_ACCION_CONSULTA,P103_NRO_COMPROBANTE,P103_SER_COMPROBANTE,P103_TIP_COMPROBANTE,P103_COD_EMPRESA_VAR:1,#NRO_COMPROBANTE#,#SER_COMPROBANTE#,#TIP_COMPROBANTE#,#COD_EMPRESA#'
,p_column_linktext=>'<span aria-hidden="true" class="fa fa-edit"></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(210019362669258518)
,p_db_column_name=>'ELIMINAR'
,p_display_order=>1080
,p_column_identifier=>'DD'
,p_column_label=>'Eliminar'
,p_column_link=>'javascript:$s(''P622_ELIMINAR'',''#ROWID#''),$s(''P622_NRO_COMPROBANTE'',''#NRO_COMPROBANTE#''),$s(''P622_SER_COMPROBANTE'',''#SER_COMPROBANTE#''),$s(''P622_TIP_COMPROBANTE'',''#TIP_COMPROBANTE#''),$s(''P622_COD_EMPRESA'',''#COD_EMPRESA#'');'
,p_column_linktext=>'<span class="fa fa-trash-o" aria-hidden="true"></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(210021272150258537)
,p_db_column_name=>'NOMBRE_VENDEDOR'
,p_display_order=>1090
,p_column_identifier=>'DE'
,p_column_label=>'Nombre Vendedor'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(210587927059101171)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'2105880'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>10
,p_report_columns=>'EDITAR:TIP_COMPROBANTE:SER_COMPROBANTE:NRO_COMPROBANTE:COD_SUCURSAL:FEC_COMPROBANTE:COD_CLIENTE:NOM_CLIENTE:COD_VENDEDOR:NOMBRE_VENDEDOR:TIP_COMPROBANTE_REF:SER_COMPROBANTE_REF:NRO_COMPROBANTE_REF:COD_CONDICION_VENTA:TOT_COMPROBANTE:TOT_GRAVADAS:ELIM'
||'INAR:'
,p_sort_column_1=>'FEC_COMPROBANTE'
,p_sort_direction_1=>'DESC'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(210019616847258521)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(210432404589211407)
,p_button_name=>'BT_AGREGAR_NOTA'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Agregar Nota'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:103:&SESSION.::&DEBUG.:103::'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(210019459924258519)
,p_name=>'P622_ELIMINAR'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(210432404589211407)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(210020057208258525)
,p_name=>'P622_NRO_COMPROBANTE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(210432404589211407)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(210020155335258526)
,p_name=>'P622_SER_COMPROBANTE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(210432404589211407)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(210020271426258527)
,p_name=>'P622_TIP_COMPROBANTE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(210432404589211407)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(210020351728258528)
,p_name=>'P622_COD_EMPRESA'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(210432404589211407)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(210020470267258529)
,p_name=>'P622_ERR'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(210432404589211407)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(210019899818258523)
,p_name=>'DA_ELIMINAR'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P622_ELIMINAR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(210021042668258535)
,p_event_id=>wwv_flow_imp.id(210019899818258523)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>'Desea eliminar este registro?'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(210020965884258534)
,p_event_id=>wwv_flow_imp.id(210019899818258523)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P622_ERR:=NULL;',
'BEGIN',
'    DELETE FROM VT_COMPROBANTES_CABECERA',
'    WHERE COD_EMPRESA = :P622_COD_EMPRESA',
'      and TIP_COMPROBANTE = :P622_TIP_COMPROBANTE    ',
'      and SER_COMPROBANTE = :P622_SER_COMPROBANTE',
'      and NRO_COMPROBANTE = :P622_NRO_COMPROBANTE;',
'     EXCEPTION',
'    WHEN OTHERS THEN',
'        RAISE_APPLICATION_ERROR(-20000, ''Ha ocurrido un error al eliminar la nota. ''||sqlerrm);',
'        :P6122_ERR:=''Ha ocurrido un error al eliminar la nota. ''; ',
'END;',
'',
'BEGIN',
'    DELETE FROM VT_COMPROBANTES_DETALLE',
'    WHERE COD_EMPRESA = :P622_COD_EMPRESA',
'      and TIP_COMPROBANTE = :P622_TIP_COMPROBANTE    ',
'      and SER_COMPROBANTE = :P622_SER_COMPROBANTE',
'      and NRO_COMPROBANTE = :P622_NRO_COMPROBANTE;',
'     EXCEPTION',
'    WHEN OTHERS THEN',
'        RAISE_APPLICATION_ERROR(-20000, ''Ha ocurrido un error al eliminar la nota. ''||sqlerrm);',
'        :P622_ERR:=''Ha ocurrido un error al eliminar la nota. '';',
'END;'))
,p_attribute_02=>'P622_COD_EMPRESA,P622_TIP_COMPROBANTE,P622_SER_COMPROBANTE,P622_NRO_COMPROBANTE'
,p_attribute_03=>'P622_ERR'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(210021128734258536)
,p_event_id=>wwv_flow_imp.id(210019899818258523)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(210432404589211407)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(210020503631258530)
,p_name=>'DA_ERR'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P622_ERR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(210020623144258531)
,p_event_id=>wwv_flow_imp.id(210020503631258530)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P622_ERR.'
,p_attribute_03=>'warning'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P622_ERR'
);
wwv_flow_imp.component_end;
end;
/
