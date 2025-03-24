prompt --application/pages/page_00733
begin
--   Manifest
--     PAGE: 00733
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
 p_id=>733
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'CPACUEROV'
,p_alias=>'CPACUEROV'
,p_step_title=>'CPACUEROV'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'NZARATE'
,p_last_upd_yyyymmddhh24miss=>'20240909101355'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(280538771294066408)
,p_plug_name=>'Filtro'
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40108275410263656)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(336403994418339204)
,p_plug_name=>'CPACUERDO'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>30
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'NRO_ACUERDO,',
'FECHA_ACUERDO,',
'FECHA_INICIO_ACUERDO,',
'FECHA_FIN_ACUERDO,',
'COD_CLIENTE,',
'ESTADO,',
'VIGENCIA,',
'PORCENTAJE_APOYO,',
'PORCENTAJE_APOYO_2,',
'REPRESENTADO_POR,',
'FECHA_INGRESO,',
'COD_USUARIO_INGRESO,',
'FECHA_REVISION,',
'ESTADO_REVISION,',
'COMENTARIO_REVISION,',
'FECHA_REVISION_GC,',
'ESTADO_REVISION_GC,',
'COMENTARIO_REVISION_GC,',
'FECHA_REVISION_CO,',
'ESTADO_REVISION_CO,',
'COMENTARIO_REVISION_CO,',
'FECHA_REVISION_GG,',
'ESTADO_REVISION_GG,',
'COMENTARIO_REVISION_GG,',
'FECHA_REVISION_AU,',
'ESTADO_REVISION_AU,',
'COMENTARIO_REVISION_AU,',
'FECHA_FIRMA_CONTRATO,',
'FECHA_ARCHIVO_CONTRATO,',
'ARCHIVO_CONTRATO,',
'venta, publicidad, acuerdo,',
'importe_objetivo,',
'tipo_acuerdo,',
'importe_objetivo2,',
'',
'venta/importe_objetivo porc_cumplido,',
'(nvl(publicidad,0)+nvl(acuerdo,0))/venta ejecutado_sobre_ventas,',
'',
'CASE ',
'           WHEN nvl(ind_apoyo_comercial,''N'') = ''S'' THEN ''fa-check-circle'' ',
'           ELSE NULL ',
'       END AS IND_COMERCIAL,',
'       ',
'CASE ',
'           WHEN nvl(ind_apoyo_MKT,''N'') = ''S'' THEN ''fa-check-circle'' ',
'           ELSE NULL ',
'       END AS IND_MKT,',
'       CASE ',
'           WHEN nvl(IND_APOYO_DIGITAL,''N'') = ''S'' THEN ''fa-check-circle'' ',
'           ELSE NULL ',
'       END AS IND_ngo_digital,',
'       case when trunc(sysdate) BETWEEN FECHA_INICIO_ACUERDO AND  FECHA_FIN_ACUERDO then''VIGENTE''',
'       when trunc(sysdate)> FECHA_FIN_ACUERDO then''VENCIDO''',
'       when ESTADO=''ANULADO''then''ANULADO''END',
'Estado_actual',
',nombre_cliente',
'',
'',
' ',
'from (select  a.COD_EMPRESA,',
'NRO_ACUERDO,',
'FECHA_ACUERDO,',
'FECHA_INICIO_ACUERDO,',
'FECHA_FIN_ACUERDO,',
'COD_CLIENTE,',
'ESTADO,',
'VIGENCIA,',
'PORCENTAJE_APOYO,',
'REPRESENTADO_POR,',
'FECHA_INGRESO,',
'COD_USUARIO_INGRESO,',
'FECHA_REVISION,',
'ESTADO_REVISION,',
'COMENTARIO_REVISION,',
'FECHA_REVISION_GC,',
'ESTADO_REVISION_GC,',
'COMENTARIO_REVISION_GC,',
'FECHA_REVISION_CO,',
'ESTADO_REVISION_CO,',
'COMENTARIO_REVISION_CO,',
'FECHA_REVISION_GG,',
'ESTADO_REVISION_GG,',
'COMENTARIO_REVISION_GG,',
'FECHA_REVISION_AU,',
'ESTADO_REVISION_AU,',
'COMENTARIO_REVISION_AU,',
'FECHA_FIRMA_CONTRATO,',
'FECHA_ARCHIVO_CONTRATO,',
'ARCHIVO_CONTRATO,',
'PORCENTAJE_APOYO_2,',
'tipo_acuerdo,',
'',
' ',
'NOMBRE_ARCHIVO,',
'',
'(select sum(v.monto) from v_ventas_apex v',
'where v.cod_cliente=a.cod_cliente',
'and v.fec_factura between a.fecha_inicio_acuerdo and a.fecha_fin_acuerdo)venta,',
'( select',
' sum((ccl.monto-monto_iva)*com.tip_cambio) from cp_comprobantes_cabecera com,cm_proveedores pro, personas per,',
'      monedas m, cp_medios me, ',
'      cp_comprobantes_clientes ccl,  cc_clientes cc, st_marcas ma, personas p',
'where com.cod_empresa =a.cod_empresa',
'',
'',
'   and   com.fec_comprobante between a.fecha_inicio_acuerdo and a.fecha_fin_acuerdo',
'',
'   and coM.cod_empresa = pro.cod_empresa',
'   and coM.cod_proveedor = pro.cod_proveedor',
'   and pro.cod_persona = per.cod_persona',
'   and com.cod_empresa = ccl.cod_empresa',
'   and ccl.cod_cliente=a.cod_cliente',
'   and com.tip_comprobante = ccl.tip_comprobante',
'   and com.ser_comprobante = ccl.ser_comprobante',
'   and com.num_comprobante = ccl.num_comprobante',
'   and com.cod_proveedor    =ccl.cod_proveedor',
'   and ccl.cod_cliente=a.cod_cliente',
'AND NVL(COM.ANULADO,''N'')<>''S''',
'   and ccl.cod_empresa = cc.cod_empresa',
'   and ccl.cod_cliente = cc.cod_cliente',
'and p.cod_persona = cc.cod_persona',
'',
'   and ma.cod_marca = ccl.cod_marca',
'   and com.cod_moneda = m.cod_moneda',
'   and me.cod_medio = ccl.cod_medio)publicidad,',
'   ( select',
' sum((ccl.monto_total)*com.tip_cambio) ',
' ',
' from cp_comprobantes_cabecera com,cm_proveedores pro, personas per,',
'      monedas m,  ',
'      cp_comprobantes_detalle ccl , cc_clientes cc',
'where com.cod_empresa =a.cod_empresa',
'',
'',
'   and   com.fec_comprobante between a.fecha_inicio_acuerdo and a.fecha_fin_acuerdo',
'',
'   and coM.cod_empresa = pro.cod_empresa',
'   and coM.cod_proveedor = pro.cod_proveedor',
'   and pro.cod_persona = per.cod_persona',
'   and com.cod_empresa = ccl.cod_empresa',
'   and cc.cod_cliente=a.cod_cliente',
'   and com.tip_comprobante = ccl.tip_comprobante',
'   and com.ser_comprobante = ccl.ser_comprobante',
'   and com.num_comprobante = ccl.num_comprobante',
'   and com.cod_proveedor    =ccl.cod_proveedor',
'   ',
'AND NVL(COM.ANULADO,''N'')<>''S''',
'   and ccl.cod_empresa = cc.cod_empresa',
'   and per.cod_persona = cc.cod_persona',
'',
'and cc.cod_cliente=a.cod_cliente',
'',
' ',
'   and com.cod_moneda = m.cod_moneda',
'  )acuerdo,',
'  (select sum(ad.monto_objetivo)',
'  from vt_acuerdo_clientes_det ad where ad.cod_empresa=a.cod_empresa and ad.nro_acuerdo=a.nro_acuerdo)importe_objetivo,',
'    (select sum(ad.monto_objetivo_2)',
'  from vt_acuerdo_clientes_det ad where ad.cod_empresa=a.cod_empresa and ad.nro_acuerdo=a.nro_acuerdo)importe_objetivo2,',
'  a.ind_apoyo_comercial, a.ind_apoyo_mkt,a.IND_APOYO_DIGITAL',
'  , (select v.nombre from v_cliente_apex v where v.cod_cliente=a.cod_cliente)nombre_cliente',
'',
'',
'  from vt_acuerdo_clientes_cab a',
'  where A.cod_empresa=:p_cod_empresa',
'    and (A.cod_cliente = :P733_cod_cliente OR :P733_cod_cliente IS NULL)',
'  AND FECHA_ACUERDO BETWEEN :P733_FECHA_INICIO AND :P733_FECHA_FIN ',
'    and nvl(A.estado,''PENDIENTE'') not in (''ANULADO'',''CONTRATO ARCHIVADO'')',
'  AND (SELECT ''S''',
'  FROM  PERMISOS_OPCIONES PO',
'  WHERE PO.COD_EMPRESA=A.COD_EMPRESA',
'  AND PO.NOM_FORMA=''VTACUERD''',
'   AND (CASE WHEN A.ESTADO=''PENDIENTE_REVISION'' THEN',
'   ''PUEDE_REVISAR''',
'     WHEN A.ESTADO IN(''REVISADO OK'',''INFORME COBRANZA CLIENTE AL DIA'',''INFORME CO CLIENTE MOROSO'',''INFORME CO CLIENTE RIESGOSO'',''INFORME CO CLIENTE NO RECOMENDADO'') THEN',
'   ''PUEDE_COMERCIAL''',
'   WHEN A.ESTADO=''REVISADO OK'' THEN',
'   ''PUEDE_COBRANZA''',
'   WHEN A.ESTADO IN(''REVISADO OK'',''INFORME COBRANZA CLIENTE AL DIA'',''INFORME CO CLIENTE MOROSO'',''INFORME CO CLIENTE RIESGOSO'',''INFORME CO CLIENTE NO RECOMENDADO'') THEN',
'   ''PUEDE_COMERCIAL''',
'   WHEN A.ESTADO=''REVISADO OK GC'' THEN',
'   ''PUEDE_GG''',
'   WHEN A.ESTADO=''GG APROBADO'' THEN',
'   ''PUEDE_AUDITORIA''',
'     WHEN A.ESTADO=''AUDIT OK'' THEN',
'   ''PUEDE_FIRMA''',
'    WHEN A.ESTADO=''ACUERDO FIRMADO'' THEN',
'   ''PUEDE_ARCHIVAR''',
'   END = PO.PARAMETRO',
'   AND PO.PERMISO=''S'' or busca_permiso(a.cod_empresa,''VTACUERD'',:P_COD_USUARIO,''VER_TODOS'')=''S'')',
'     AND PO.NOM_FORMA=''VTACUERD''',
'     and po.cod_usuario=:P_COD_USUARIO',
'     AND ROWNUM=1)=''S''',
'  ',
'  ',
'  order by FECHA_ACUERDO desc, a.rowid desc, nro_acuerdo  asc)'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P733_COD_CLIENTE,P733_FECHA_INICIO,P733_FECHA_FIN,P_COD_EMPRESA'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'CPACUERDO'
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
 p_id=>wwv_flow_imp.id(336404032249339204)
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
,p_detail_link=>'f?p=&APP_ID.:723:&SESSION.::&DEBUG.:RP,723:P723_PARAM_NRO_ACUERDO:\#NRO_ACUERDO#\#NRO_COMPROBANTE#\,MODIFICAR,\#SER_COMPROBANTE#\'
,p_detail_link_text=>'<span aria-label="Editar"><span class="fa fa-edit" aria-hidden="true" title="Editar"></span></span>'
,p_owner=>'HSEGOVIA'
,p_internal_uid=>336404032249339204
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(280327536053559492)
,p_db_column_name=>'COD_CLIENTE'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Cliente'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(280331979600559496)
,p_db_column_name=>'ESTADO'
,p_display_order=>19
,p_column_identifier=>'S'
,p_column_label=>'Flujo Actual'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(279152762776711718)
,p_db_column_name=>'NRO_ACUERDO'
,p_display_order=>151
,p_column_identifier=>'EU'
,p_column_label=>'Nro Acuerdo'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(279152861931711719)
,p_db_column_name=>'FECHA_ACUERDO'
,p_display_order=>161
,p_column_identifier=>'EV'
,p_column_label=>'Fecha Acuerdo'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(279152972442711720)
,p_db_column_name=>'FECHA_INICIO_ACUERDO'
,p_display_order=>171
,p_column_identifier=>'EW'
,p_column_label=>'Fecha Inicio Acuerdo'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(279153052786711721)
,p_db_column_name=>'FECHA_FIN_ACUERDO'
,p_display_order=>181
,p_column_identifier=>'EX'
,p_column_label=>'Fecha Fin Acuerdo'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(279153108920711722)
,p_db_column_name=>'VIGENCIA'
,p_display_order=>191
,p_column_identifier=>'EY'
,p_column_label=>'Vigencia'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(279153256141711723)
,p_db_column_name=>'PORCENTAJE_APOYO'
,p_display_order=>201
,p_column_identifier=>'EZ'
,p_column_label=>'Porcentaje Apoyo'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(279153365425711724)
,p_db_column_name=>'REPRESENTADO_POR'
,p_display_order=>211
,p_column_identifier=>'FA'
,p_column_label=>'Representado Por'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(279153408618711725)
,p_db_column_name=>'FECHA_INGRESO'
,p_display_order=>221
,p_column_identifier=>'FB'
,p_column_label=>'Fecha Ingreso'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(279153536669711726)
,p_db_column_name=>'COD_USUARIO_INGRESO'
,p_display_order=>231
,p_column_identifier=>'FC'
,p_column_label=>'Cod Usuario Ingreso'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(279153629528711727)
,p_db_column_name=>'FECHA_REVISION'
,p_display_order=>241
,p_column_identifier=>'FD'
,p_column_label=>'Fecha Revision'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(279153762746711728)
,p_db_column_name=>'ESTADO_REVISION'
,p_display_order=>251
,p_column_identifier=>'FE'
,p_column_label=>'Estado Revision'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(279153843506711729)
,p_db_column_name=>'COMENTARIO_REVISION'
,p_display_order=>261
,p_column_identifier=>'FF'
,p_column_label=>'Comentario Revision'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(279153991753711730)
,p_db_column_name=>'FECHA_REVISION_GC'
,p_display_order=>271
,p_column_identifier=>'FG'
,p_column_label=>'Fecha Revision Gc'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(279154007379711731)
,p_db_column_name=>'ESTADO_REVISION_GC'
,p_display_order=>281
,p_column_identifier=>'FH'
,p_column_label=>'Estado Revision Gc'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(279154124295711732)
,p_db_column_name=>'COMENTARIO_REVISION_GC'
,p_display_order=>291
,p_column_identifier=>'FI'
,p_column_label=>'Comentario Revision Gc'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(279154289538711733)
,p_db_column_name=>'FECHA_REVISION_CO'
,p_display_order=>301
,p_column_identifier=>'FJ'
,p_column_label=>'Fecha Revision Co'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(279154396178711734)
,p_db_column_name=>'ESTADO_REVISION_CO'
,p_display_order=>311
,p_column_identifier=>'FK'
,p_column_label=>'Estado Revision Co'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(279154404346711735)
,p_db_column_name=>'COMENTARIO_REVISION_CO'
,p_display_order=>321
,p_column_identifier=>'FL'
,p_column_label=>'Comentario Revision Co'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(279154575360711736)
,p_db_column_name=>'FECHA_REVISION_GG'
,p_display_order=>331
,p_column_identifier=>'FM'
,p_column_label=>'Fecha Revision Gg'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(279154679252711737)
,p_db_column_name=>'ESTADO_REVISION_GG'
,p_display_order=>341
,p_column_identifier=>'FN'
,p_column_label=>'Estado Revision Gg'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(279154703429711738)
,p_db_column_name=>'COMENTARIO_REVISION_GG'
,p_display_order=>351
,p_column_identifier=>'FO'
,p_column_label=>'Comentario Revision Gg'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(279154918645711740)
,p_db_column_name=>'COMENTARIO_REVISION_AU'
,p_display_order=>371
,p_column_identifier=>'FQ'
,p_column_label=>'Comentario Revision Au'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(279155034635711741)
,p_db_column_name=>'FECHA_FIRMA_CONTRATO'
,p_display_order=>381
,p_column_identifier=>'FR'
,p_column_label=>'Fecha Firma Contrato'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(280539789160066418)
,p_db_column_name=>'FECHA_REVISION_AU'
,p_display_order=>391
,p_column_identifier=>'FU'
,p_column_label=>'Fecha Revision Au'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(280539858911066419)
,p_db_column_name=>'ESTADO_REVISION_AU'
,p_display_order=>401
,p_column_identifier=>'FV'
,p_column_label=>'Estado Revision Au'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(280539981473066420)
,p_db_column_name=>'FECHA_ARCHIVO_CONTRATO'
,p_display_order=>411
,p_column_identifier=>'FW'
,p_column_label=>'Fecha Archivo Contrato'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(280540039747066421)
,p_db_column_name=>'ARCHIVO_CONTRATO'
,p_display_order=>421
,p_column_identifier=>'FX'
,p_column_label=>'Archivo Contrato'
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
 p_id=>wwv_flow_imp.id(280540176172066422)
,p_db_column_name=>'VENTA'
,p_display_order=>431
,p_column_identifier=>'FY'
,p_column_label=>'Venta'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(280540267066066423)
,p_db_column_name=>'PUBLICIDAD'
,p_display_order=>441
,p_column_identifier=>'FZ'
,p_column_label=>'Marketing'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(280540347137066424)
,p_db_column_name=>'ACUERDO'
,p_display_order=>451
,p_column_identifier=>'GA'
,p_column_label=>'Comercial'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(280540476016066425)
,p_db_column_name=>'IMPORTE_OBJETIVO'
,p_display_order=>461
,p_column_identifier=>'GB'
,p_column_label=>'Importe Objetivo'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(280540539963066426)
,p_db_column_name=>'PORC_CUMPLIDO'
,p_display_order=>471
,p_column_identifier=>'GC'
,p_column_label=>'Porc Cumplido'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(280540634135066427)
,p_db_column_name=>'EJECUTADO_SOBRE_VENTAS'
,p_display_order=>481
,p_column_identifier=>'GD'
,p_column_label=>'Ejecutado Sobre Ventas'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(373229200470924209)
,p_db_column_name=>'IND_COMERCIAL'
,p_display_order=>491
,p_column_identifier=>'GE'
,p_column_label=>'Comercial'
,p_column_html_expression=>'<span class="fa #IND_COMERCIAL#"></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(373229317729924210)
,p_db_column_name=>'IND_MKT'
,p_display_order=>501
,p_column_identifier=>'GF'
,p_column_label=>'Marketing'
,p_column_html_expression=>'<span class="fa #IND_MKT#"></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(373229877315924215)
,p_db_column_name=>'PORCENTAJE_APOYO_2'
,p_display_order=>511
,p_column_identifier=>'GG'
,p_column_label=>'Porcentaje Apoyo 2'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(373229963988924216)
,p_db_column_name=>'TIPO_ACUERDO'
,p_display_order=>521
,p_column_identifier=>'GH'
,p_column_label=>'Tipo Acuerdo'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(373230068947924217)
,p_db_column_name=>'IMPORTE_OBJETIVO2'
,p_display_order=>531
,p_column_identifier=>'GI'
,p_column_label=>'Importe Objetivo2'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(373230185631924218)
,p_db_column_name=>'ESTADO_ACTUAL'
,p_display_order=>541
,p_column_identifier=>'GJ'
,p_column_label=>'Estado Actual'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(373230878716924225)
,p_db_column_name=>'IND_NGO_DIGITAL'
,p_display_order=>551
,p_column_identifier=>'GK'
,p_column_label=>'Ngo Digital'
,p_column_html_expression=>'<span class="fa #IND_NGO_DIGITAL#"></span>'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(373232280519924239)
,p_db_column_name=>'NOMBRE_CLIENTE'
,p_display_order=>561
,p_column_identifier=>'GL'
,p_column_label=>'Nombre Cliente'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(336459400221339666)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'561345'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>10
,p_report_columns=>'NRO_ACUERDO:COD_CLIENTE:NOMBRE_CLIENTE:TIPO_ACUERDO:ESTADO_ACTUAL:ESTADO:FECHA_ACUERDO:FECHA_INGRESO:FECHA_REVISION:FECHA_REVISION_GG:FECHA_FIRMA_CONTRATO:PORCENTAJE_APOYO:IMPORTE_OBJETIVO:PORCENTAJE_APOYO_2:IMPORTE_OBJETIVO2:VENTA:PORC_CUMPLIDO:IND_'
||'COMERCIAL:IND_MKT:IND_NGO_DIGITAL:EJECUTADO_SOBRE_VENTAS:'
,p_sort_column_1=>'NRO_ACUERDO'
,p_sort_direction_1=>'DESC'
,p_sort_column_2=>'FEC_COMPROBANTE'
,p_sort_direction_2=>'DESC NULLS LAST'
,p_sort_column_3=>'NRO_COMPROBANTE'
,p_sort_direction_3=>'DESC NULLS LAST'
,p_sort_column_4=>'0'
,p_sort_direction_4=>'ASC'
,p_sort_column_5=>'0'
,p_sort_direction_5=>'ASC'
,p_sort_column_6=>'0'
,p_sort_direction_6=>'ASC'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(280538864293066409)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(280538771294066408)
,p_button_name=>'Refrescar'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Refrescar'
,p_button_position=>'NEXT'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-refresh'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(280542484258066445)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(336403994418339204)
,p_button_name=>'Volver'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Volver'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:162:&SESSION.::&DEBUG.::P162_COD_CLIENTE:&P733_COD_CLIENTE.'
,p_button_css_classes=>'u-color-29-bg u-normal-text'
,p_icon_css_classes=>'fa-undo-arrow'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(280361406423559518)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(336403994418339204)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Agregar'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:723:&SESSION.::&DEBUG.:723:P723_PARAM_NRO_ACUERDO:'
,p_icon_css_classes=>'fa-plus'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(280362551519559521)
,p_name=>'P733_COD_CLIENTE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(280538771294066408)
,p_prompt=>'Cod Cliente'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select nombre|| '' ''|| codigo_area|| '' ''|| num_telefono || '' ''||numero||'' ''||cod_cliente nombre, cod_cliente',
'from cc_clientes c, personas p, telef_personas pt, ident_personas pi ',
'where c.cod_empresa = ''1''',
'and c.cod_persona = p.cod_persona',
'and p.cod_persona = pt.cod_persona(+) ',
'and p.cod_persona = pi.cod_persona(+) ',
'and nvl(c.estado,''X'') IN(''A'' ,''B'',''C'')',
'order by nombre'))
,p_lov_display_null=>'YES'
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
 p_id=>wwv_flow_imp.id(280362981018559523)
,p_name=>'P733_FECHA_INICIO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(280538771294066408)
,p_item_default=>'last_day(add_months(SYSDATE,-to_char(sysdate,''mm'')))+1'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Inicio'
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
 p_id=>wwv_flow_imp.id(280363368961559523)
,p_name=>'P733_FECHA_FIN'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(280538771294066408)
,p_item_default=>'last_day(add_months(SYSDATE,12-to_char(sysdate,''mm'')))'
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
 p_id=>wwv_flow_imp.id(280363781600559523)
,p_name=>'P733_USUARIO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(280538771294066408)
,p_source=>'&APP_USER.'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(280365044269559530)
,p_name=>unistr('Editar Informe: Cuadro de Di\00E1logo Cerrado')
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(336403994418339204)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(280365550291559530)
,p_event_id=>wwv_flow_imp.id(280365044269559530)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(336403994418339204)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(280539076590066411)
,p_name=>'refrescar'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(280538864293066409)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(280539141218066412)
,p_event_id=>wwv_flow_imp.id(280539076590066411)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(336403994418339204)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(280542282512066443)
,p_name=>'refrescar_1'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P733_COD_CLIENTE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(280542384402066444)
,p_event_id=>wwv_flow_imp.id(280542282512066443)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(336403994418339204)
);
wwv_flow_imp.component_end;
end;
/
