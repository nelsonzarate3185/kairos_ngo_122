prompt --application/pages/page_00368
begin
--   Manifest
--     PAGE: 00368
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
 p_id=>368
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'STREENS'
,p_alias=>'STREENS'
,p_step_title=>'STREENS'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
' ',
'.t-Body-mainContent  { ',
'                        background: #082b642f!important;',
'                    } ',
'  ',
'  .t-Form-label{',
'                color:  darkblue !important;     ',
'                font-weight: bold;',
'                } ',
'            ',
'',
'',
'    #reg_env, #reg_rep, #reg_dim, #reg_exi{ ',
'                        background: #80a5bb2f!important;',
'                    } ',
'     ',
'',
'  .t-Report-colHead, .a-IRR-headerLink {',
'      background: #003a85!important;',
'       color: yellow !important;',
' }'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'NZARATE'
,p_last_upd_yyyymmddhh24miss=>'20250318093344'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(106563401138108516)
,p_plug_name=>'Parametros'
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40108275410263656)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(106727122930234431)
,p_plug_name=>'STREENSA'
,p_parent_plug_id=>wwv_flow_imp.id(106563401138108516)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select  a.cod_articulo cod_articulo , a.descripcion desc_art,null  cod_cliente,',
'        s.descripcion desc_sucursal, ''INVENTARIO'' desc_motivo, c.num_invent numero,',
'        fec_ini_invent fec_ent_sal, c.cod_sucursal, ''10'' cod_motivo_ent_sal,',
'        sum( ( nvl( d.cant_fisica, 0 ) ) ) cant_ent, 0 cant_sal, a.cod_articulo articulo,',
'        d.nro_lote nro_lote  ,c.hora_alta, c.ROWID CARGA, A.COD_ART_CORTO, c.ser_INVENT SERIE',
','''' ref, null planilla_reparto, null celda, null fecha_asignacion, null fecha_inicio, null fecha_fin,NULL ESTADO_REPARTO,',
'NULL tipo_entrega',
'   from st_invent_cab c, st_invent_det d, st_articulos a, sucursales s',
'  where C.cod_empresa  = :p_cod_empresa',
'    and lpad( c.cod_sucursal, 5, '' '' ) between lpad( nvl( :P368_SUCURSAL_DESDE, c.cod_sucursal ), 5, '' '' )',
'                                           and lpad( nvl( :P368_SUCURSAL_HASTA, c.cod_sucursal ), 5, '' '' )',
'    and ( c.fec_ini_invent ) between nvl( :P368_FEC_INI, c.fec_ini_invent ) and nvl( :P368_FEC_FIN, c.fec_ini_invent )',
'    and c.cod_empresa  = d.cod_empresa',
'    and c.ser_invent   = d.ser_invent',
'    and c.num_invent   = d.num_invent',
'    and d.cod_articulo between nvl( :P368_ARTICULO_DESDE, ''0'' )',
'                                              and ( nvl( :P368_ARTICULO_HASTA, ''ZZZZZZZZZZZZZZZZZZZZ'' ))',
'    and d.cod_empresa  = a.cod_empresa',
'    and d.cod_articulo = a.cod_articulo',
'    and ( :P368_COD_RUBRO   is null or a.cod_rubro   = :P368_COD_RUBRO  )',
'    and ( :P368_COD_FAMILIA  is null or a.cod_familia = :P368_COD_FAMILIA )',
'    and ( :P368_COD_LINEA   is null or a.cod_linea   = :P368_COD_LINEA  )',
'    and ( :P368_COD_MARCA    is null or a.cod_marca   = :P368_COD_MARCA   )',
'    and ( :P368_TIP_COMPROBANTE is null or ''INV'' = :P368_TIP_COMPROBANTE  )',
'    and c.cod_empresa  = s.cod_empresa',
'    and c.cod_sucursal = s.cod_sucursal',
'    and :P368_IND_REPORTE = 1',
'    AND :P368_TIPO = 1',
' group by lpad( a.cod_articulo, 20, '' '' ), a.descripcion,',
'        s.descripcion, ''INVENTARIO'', c.num_invent,',
'        fec_ini_invent, c.cod_sucursal, ''10'',',
'        a.cod_articulo,  c.hora_alta,c.ROWID , A.COD_ART_CORTO,c.ser_INVENT,d.nro_lote',
'UNION ALL',
'',
'  select   a.cod_articulo  cod_articulo, a.descripcion desc_art,C.COD_CLIENTE,',
'        s.descripcion desc_sucursal, upper( m.descripcion ) desc_motivo,',
'        c.num_ent_sal, c.fec_ent_sal, c.cod_sucursal, c.cod_motivo_ent_sal,',
'        decode( m.ind_ent_sal, ''E'', nvl( d.cantidad, 0 ), 0 ) cant_ent,',
'        decode( m.ind_ent_sal, ''S'', nvl( d.cantidad, 0 ), 0 ) cant_sal,',
'        a.cod_articulo articulo, d.nro_lote, c.hora_alta,c.ROWID CARGA, A.COD_ART_CORTO, C.SER_ENT_SAL',
','''' ref, null planilla_reparto, null celda, null fecha_asignacion, null fecha_inicio, null fecha_fin,NULL ESTADO_REPARTO, NULL GUARDA',
'  from st_entsal_cab c, st_entsal_det d, st_articulos a, sucursales s, st_motivo_ent_sal m',
'  where C.cod_empresa = :p_cod_empresa',
'    and lpad( c.cod_sucursal, 5, '' '' ) between lpad( nvl( :P368_SUCURSAL_DESDE, c.cod_sucursal ), 5, '' '' )',
'                                           and lpad( nvl( :P368_SUCURSAL_HASTA, c.cod_sucursal ), 5, '' '' )',
'    and (  d.cod_articulo between( nvl( :P368_ARTICULO_DESDE, ''0'' ))',
'                                              and ( nvl( :P368_ARTICULO_HASTA, ''ZZZZZZZZZZZZZZZZZZZZ'' )))',
'    and  c.fec_ent_sal  between nvl( :P368_FEC_INI, c.fec_ent_sal ) and nvl( :P368_FEC_FIN, c.fec_ent_sal )',
'    and c.cod_empresa = d.cod_empresa',
'    and c.tip_ent_sal = d.tip_ent_sal',
'    and c.ser_ent_sal = d.ser_ent_sal',
'    and c.num_ent_sal = d.num_ent_sal',
'    and d.cod_empresa = a.cod_empresa',
'    and d.cod_articulo = a.cod_articulo',
'    and ( :P368_COD_RUBRO   is null or a.cod_rubro   = :P368_COD_RUBRO  )',
'    and ( :P368_COD_FAMILIA  is null or a.cod_familia = :P368_COD_FAMILIA )',
'    and ( :P368_COD_LINEA   is null or a.cod_linea   = :P368_COD_LINEA  )',
'    and ( :P368_COD_MARCA    is null or a.cod_marca   = :P368_COD_MARCA   )',
'    and ( :P368_TIP_COMPROBANTE is null or c.tip_ent_sal = :P368_TIP_COMPROBANTE  )',
'    and c.cod_empresa = s.cod_empresa',
'    and c.cod_sucursal = s.cod_sucursal',
'    and c.cod_motivo_ent_sal = m.cod_motivo_ent_sal',
'AND NVL(C.IND_WEB,''N'')<>''S''',
'and :P368_IND_REPORTE = 1',
'AND :P368_TIPO = 1',
'UNION ALL',
'',
'  select  a.cod_articulo  cod_articulo, a.descripcion desc_art, c.nom_cliente,',
'        s.descripcion desc_sucursal, upper( t.descripcion ), c.nro_comprobante, c.fec_comprobante,',
'        nvl(d.cod_sucursal,c.cod_sucursal)cod_sucursal, c.tip_comprobante,',
'        decode( t.stock, ''S'', nvl( d.cantidad, 0 ), 0 ),',
'        decode( t.stock, ''R'', nvl( d.cantidad, 0 ), 0 ), a.cod_articulo articulo, d.nro_lote, nvl(c.hora_alta,to_char(sysdate,''hh24:mi:ss''))hora_alta,c.ROWID CARGA, A.COD_ART_CORTO,',
'C.SER_COMPROBANTE',
',(select to_char(nro_comprobante_ref)',
'from ca_conformidad cca',
'where cca.cod_empresa=''1''',
'and   cca.nro_solicitud=c.NRO_OT ',
'and   cca.ser_solicitud=c.SER_OT',
'and   cca.tipo_solicitud=c.TIP_OT',
'and   cca.tip_comprobante_ref=''ORT'')  ref,  (SELECT max(DD.Nro_Planilla)',
'                  FROM rp_reparto_detalle DD',
'                 WHERE DD.COD_EMPRESA = c.COD_EMPRESA',
'                   AND DD.TIP_COMPROBANTE = c.TIP_COMPROBANTE',
'                   AND DD.SER_COMPROBANTE = c.SER_COMPROBANTE',
'                   AND DD.NRO_COMPROBANTE = c.NRO_COMPROBANTE',
'                   ',
'                   )  planilla_reparto, (SELECT t.cod_posicion_celda',
'                  FROM rp_reparto_detalle DD, rp_reparto_tiempos t',
'                 WHERE DD.COD_EMPRESA = c.COD_EMPRESA',
'                   AND DD.TIP_COMPROBANTE = c.TIP_COMPROBANTE',
'                   AND DD.SER_COMPROBANTE = c.SER_COMPROBANTE',
'                   AND DD.NRO_COMPROBANTE = c.NRO_COMPROBANTE',
'                   and dd.cod_empresa=t.cod_empresa',
'                   and dd.nro_planilla=t.nro_planilla',
'                   and t.cod_sucursal=nvl(d.cod_sucursal,c.cod_sucursal)',
'                   and dd.nro_planilla = (select max(dd1.nro_planilla) from    rp_reparto_detalle DD1',
'                 WHERE DD1.COD_EMPRESA = c.COD_EMPRESA',
'                   AND DD1.TIP_COMPROBANTE = c.TIP_COMPROBANTE',
'                   AND DD1.SER_COMPROBANTE = c.SER_COMPROBANTE',
'                   AND DD1.NRO_COMPROBANTE = c.NRO_COMPROBANTE)',
'and rownum=1',
'',
'                   ) celda, (SELECT t.fec_asignacion_celda',
'                  FROM rp_reparto_detalle DD, rp_reparto_tiempos t',
'                 WHERE DD.COD_EMPRESA = c.COD_EMPRESA',
'                   AND DD.TIP_COMPROBANTE = c.TIP_COMPROBANTE',
'                   AND DD.SER_COMPROBANTE = c.SER_COMPROBANTE',
'                   AND DD.NRO_COMPROBANTE = c.NRO_COMPROBANTE',
'                   and dd.cod_empresa=t.cod_empresa',
'                   and dd.nro_planilla=t.nro_planilla',
'                   and t.cod_sucursal=nvl(d.cod_sucursal,c.cod_sucursal)',
'                   and dd.nro_planilla = (select max(dd1.nro_planilla) from    rp_reparto_detalle DD1',
'                 WHERE DD1.COD_EMPRESA = c.COD_EMPRESA',
'                   AND DD1.TIP_COMPROBANTE = c.TIP_COMPROBANTE',
'                   AND DD1.SER_COMPROBANTE = c.SER_COMPROBANTE',
'                   AND DD1.NRO_COMPROBANTE = c.NRO_COMPROBANTE)',
'',
'and rownum=1',
'                   ) fecha_asignacion, (SELECT t.fecha_inicio',
'                  FROM rp_reparto_detalle DD, rp_reparto_tiempos t',
'                 WHERE DD.COD_EMPRESA = c.COD_EMPRESA',
'                   AND DD.TIP_COMPROBANTE = c.TIP_COMPROBANTE',
'                   AND DD.SER_COMPROBANTE = c.SER_COMPROBANTE',
'                   AND DD.NRO_COMPROBANTE = c.NRO_COMPROBANTE',
'                   and dd.cod_empresa=t.cod_empresa',
'                   and dd.nro_planilla=t.nro_planilla',
'                   and t.cod_sucursal=nvl(d.cod_sucursal,c.cod_sucursal)',
'                   and dd.nro_planilla = (select max(dd1.nro_planilla) from    rp_reparto_detalle DD1',
'                 WHERE DD1.COD_EMPRESA = c.COD_EMPRESA',
'                   AND DD1.TIP_COMPROBANTE = c.TIP_COMPROBANTE',
'                   AND DD1.SER_COMPROBANTE = c.SER_COMPROBANTE',
'                   AND DD1.NRO_COMPROBANTE = c.NRO_COMPROBANTE)',
'and rownum=1',
'',
'                   ) fecha_inicio, (SELECT t.fecha_fin',
'                  FROM rp_reparto_detalle DD, rp_reparto_tiempos t',
'                 WHERE DD.COD_EMPRESA = c.COD_EMPRESA',
'                   AND DD.TIP_COMPROBANTE = c.TIP_COMPROBANTE',
'                   AND DD.SER_COMPROBANTE = c.SER_COMPROBANTE',
'                   AND DD.NRO_COMPROBANTE = c.NRO_COMPROBANTE',
'                   and dd.cod_empresa=t.cod_empresa',
'                   and dd.nro_planilla=t.nro_planilla',
'                   and t.cod_sucursal=nvl(d.cod_sucursal,c.cod_sucursal)',
'                   and dd.nro_planilla = (select max(dd1.nro_planilla) from    rp_reparto_detalle DD1',
'                 WHERE DD1.COD_EMPRESA = c.COD_EMPRESA',
'                   AND DD1.TIP_COMPROBANTE = c.TIP_COMPROBANTE',
'                   AND DD1.SER_COMPROBANTE = c.SER_COMPROBANTE',
'                   AND DD1.NRO_COMPROBANTE = c.NRO_COMPROBANTE)',
'',
'and rownum=1',
'                   ) fecha_fin,',
'                   (SELECT case when Tt.Estado=''R'' THEN ''RENDIDO''ELSE ',
'                   CASE WHEN DD.ESTADO=''E'' THEN ''EN_REPARTO'' ELSE NULL END END ',
'                  FROM rp_reparto_detalle DD, rp_reparto_cabecera tT ',
'                 WHERE DD.COD_EMPRESA = c.COD_EMPRESA',
'                   AND DD.TIP_COMPROBANTE = c.TIP_COMPROBANTE',
'                   AND DD.SER_COMPROBANTE = c.SER_COMPROBANTE',
'                   AND DD.NRO_COMPROBANTE = c.NRO_COMPROBANTE',
'                   and dd.cod_empresa=tT.cod_empresa',
'                   and dd.nro_planilla=Tt.nro_planilla',
'        ',
'                   and dd.nro_planilla = (select max(dd1.nro_planilla) from    rp_reparto_detalle DD1',
'                 WHERE DD1.COD_EMPRESA = c.COD_EMPRESA',
'                   AND DD1.TIP_COMPROBANTE = c.TIP_COMPROBANTE',
'                   AND DD1.SER_COMPROBANTE = c.SER_COMPROBANTE',
'                   AND DD1.NRO_COMPROBANTE = c.NRO_COMPROBANTE)',
'',
'and rownum=1',
'                   ) ESTADO_REPARTO,',
'NVL((SELECT CASE WHEN PED.IND_GUARDA=''S'' then ''GUARDA'' ',
'WHEN PED.ENTREGA_REMISION=''S'' THEN ''ENTREGA_REMISION'' WHEN PED.TIPO_ENTREGA =''CR'' THEN ''CLIENTE_RETIRA'' ELSE ''ENVIO'' END ',
'FROM VT_PEDIDOS_CABECERA PED WHERE PED.COD_EMPRESA=C.COD_EMPRESA',
'AND PED.TIP_COMPROBANTE=C.TIP_COMPROBANTE_REF',
'AND PED.SER_COMPROBANTE=C.SER_COMPROBANTE_REF',
'AND PED.NRO_COMPROBANTE=C.NRO_COMPROBANTE_REF),NULL) TIPO_ENTREGA                  ',
'   from vt_comprobantes_cabecera c, vt_comprobantes_detalle d, st_articulos a, sucursales s,',
'        tipos_comprobantes t',
'  where D.cod_empresa = :p_cod_empresa',
'    and  c.fec_comprobante  between nvl( :P368_FEC_INI, to_date( ''01/01/0001'', ''DD/MM/YYYY'' ) )',
'                              and nvl( :P368_FEC_FIN, to_date( ''31/12/9999'', ''DD/MM/YYYY'' ) )',
'    and lpad( nvl(d.cod_sucursal,c.cod_sucursal), 5, '' '' ) between lpad( nvl( :P368_SUCURSAL_DESDE, nvl(d.cod_sucursal,c.cod_sucursal)), 5, '' '' )',
'                                           and lpad( nvl( :P368_SUCURSAL_HASTA, nvl(d.cod_sucursal,c.cod_sucursal)), 5, '' '' )',
'    and c.cod_empresa = d.cod_empresa',
'    and c.tip_comprobante = d.tip_comprobante',
'    and c.ser_comprobante = d.ser_comprobante',
'    and c.nro_comprobante = d.nro_comprobante',
'    and (  d.cod_articulo between  nvl( :P368_ARTICULO_DESDE, ''0'' )',
'                                              and  nvl( :P368_ARTICULO_HASTA, ''ZZZZZZZZZZZZZZZZZZZZ'' ) )',
'    and d.cod_empresa = a.cod_empresa',
'    and d.cod_articulo = a.cod_articulo',
'    and ( :P368_COD_RUBRO   is null or a.cod_rubro   = :P368_COD_RUBRO  )',
'    AND (:P368_CLIENTE is null or c.cod_cliente =:P368_CLIENTE)',
'    and ( :P368_COD_FAMILIA  is null or a.cod_familia = :P368_COD_FAMILIA )',
'    and ( :P368_COD_LINEA   is null or a.cod_linea   = :P368_COD_LINEA  )',
'    and ( :P368_COD_MARCA    is null or a.cod_marca   = :P368_COD_MARCA   )',
'    and ( :P368_TIP_COMPROBANTE is null or c.tip_comprobante = :P368_TIP_COMPROBANTE  )',
'    and c.cod_empresa = s.cod_empresa',
'    and  nvl(d.cod_sucursal,c.cod_sucursal) = s.cod_sucursal',
'    and c.cod_empresa = t.cod_empresa',
'    and c.tip_comprobante = t.tip_comprobante',
'    and nvl( d.ind_no_stock,''N'') <> ''S''',
'    and nvl( c.estado, ''N'' ) <> ''A''',
'    and :P368_IND_REPORTE = 1',
'    AND :P368_TIPO = 1',
'union all',
'select  a.cod_articulo  cod_articulo, a.descripcion desc_art, ',
'''ANULADO: CANT: '' ||decode( t.stock, ''S'', nvl( d.cantidad, 0 ),  decode( t.stock, ''R'', nvl( d.cantidad, 0 ), 0 ) ),',
'        s.descripcion desc_sucursal, upper( t.descripcion ), c.nro_comprobante, c.fec_comprobante,',
'        nvl(d.cod_sucursal,c.cod_sucursal)cod_sucursal, c.tip_comprobante,',
'        0 ,',
'       0 , a.cod_articulo articulo, d.nro_lote, nvl(c.hora_alta,to_char(sysdate,''hh24:mi:ss''))hora_alta,c.ROWID CARGA, A.COD_ART_CORTO,',
'C.SER_COMPROBANTE',
',(select to_char(nro_comprobante_ref)',
'from ca_conformidad cca',
'where cca.cod_empresa=''1''',
'and   cca.nro_solicitud=c.NRO_OT ',
'and   cca.ser_solicitud=c.SER_OT',
'and   cca.tipo_solicitud=c.TIP_OT',
'and   cca.tip_comprobante_ref=''ORT'')  ref, null planilla_reparto, null celda, null fecha_asignacion, null fecha_inicio, null fecha_fin,NULL ESTADO_REPARTO,',
'NVL((SELECT CASE WHEN PED.IND_GUARDA=''S'' then ''GUARDA'' ',
'WHEN PED.ENTREGA_REMISION=''S'' THEN ''ENTREGA_REMISION'' WHEN PED.TIPO_ENTREGA =''CR'' THEN ''CLIENTE_RETIRA'' ELSE ''ENVIO'' END ',
'FROM VT_PEDIDOS_CABECERA PED WHERE PED.COD_EMPRESA=C.COD_EMPRESA',
'AND PED.TIP_COMPROBANTE=C.TIP_COMPROBANTE_REF',
'AND PED.SER_COMPROBANTE=C.SER_COMPROBANTE_REF',
'AND PED.NRO_COMPROBANTE=C.NRO_COMPROBANTE_REF),NULL) TIPO_ENTREGA ',
'   from vt_comprobantes_cabecera c, vt_comprobantes_detalle d, st_articulos a, sucursales s,',
'        tipos_comprobantes t',
'  where D.cod_empresa = :p_cod_empresa',
'    and  c.fec_comprobante  between nvl( :P368_FEC_INI, to_date( ''01/01/0001'', ''DD/MM/YYYY'' ) )',
'                              and nvl( :P368_FEC_FIN, to_date( ''31/12/9999'', ''DD/MM/YYYY'' ) )',
'    and lpad( nvl(d.cod_sucursal,c.cod_sucursal), 5, '' '' ) between lpad( nvl( :P368_SUCURSAL_DESDE, nvl(d.cod_sucursal,c.cod_sucursal)), 5, '' '' )',
'                                           and lpad( nvl( :P368_SUCURSAL_HASTA, nvl(d.cod_sucursal,c.cod_sucursal)), 5, '' '' )',
'    and c.cod_empresa = d.cod_empresa',
'    and c.tip_comprobante = d.tip_comprobante',
'    and c.ser_comprobante = d.ser_comprobante',
'    and c.nro_comprobante = d.nro_comprobante',
'    and (  d.cod_articulo between  nvl( :P368_ARTICULO_DESDE, ''0'' )',
'                                              and  nvl( :P368_ARTICULO_HASTA, ''ZZZZZZZZZZZZZZZZZZZZ'' ) )',
'    and d.cod_empresa = a.cod_empresa',
'    and d.cod_articulo = a.cod_articulo',
'    and ( :P368_COD_RUBRO   is null or a.cod_rubro   = :P368_COD_RUBRO  )',
'    AND (:P368_CLIENTE is null or c.cod_cliente =:P368_CLIENTE)',
'    and ( :P368_COD_FAMILIA  is null or a.cod_familia = :P368_COD_FAMILIA )',
'    and ( :P368_COD_LINEA   is null or a.cod_linea   = :P368_COD_LINEA  )',
'    and ( :P368_COD_MARCA    is null or a.cod_marca   = :P368_COD_MARCA   )',
'    and ( :P368_TIP_COMPROBANTE is null or c.tip_comprobante = :P368_TIP_COMPROBANTE  )',
'    and c.cod_empresa = s.cod_empresa',
'    and  nvl(d.cod_sucursal,c.cod_sucursal) = s.cod_sucursal',
'    and c.cod_empresa = t.cod_empresa',
'    and c.tip_comprobante = t.tip_comprobante',
'    and nvl( d.ind_no_stock,''N'') <> ''S''',
'    and nvl( c.estado, ''N'' ) = ''A''',
'and :P368_IND_REPORTE = 1',
'AND :P368_TIPO = 1',
'UNION ALL',
'',
'  Select  a.cod_articulo  cod_articulo, a.descripcion desc_art,null ,',
unistr('        s.descripcion desc_sucursal, ''NOTA DE ENV\00CDO'', c.nro_envio, c.fecha, c.cod_sucursal_ent,'),
'        c.tip_envio, nvl( d.cantidad, 0 ), 0, a.cod_articulo articulo, d.nro_lote, c.hora,c.ROWID CARGA, A.COD_ART_CORTO,',
'C.SER_ENVIO',
','''' ref, null planilla_reparto, null celda, null fecha_asignacion, null fecha_inicio, null fecha_fin,NULL ESTADO_REPARTO,',
'NULL TIPO_ENTREGA',
'   from st_notas_envio_cab c, st_notas_envio_det d, st_articulos a, sucursales s',
'  where D.cod_empresa = :p_cod_empresa',
'    and lpad( c.cod_sucursal_ent, 5, '' '' ) between lpad( nvl( :P368_SUCURSAL_DESDE, c.cod_sucursal_ent ), 5, '' '' )',
'                                               and lpad( nvl( :P368_SUCURSAL_HASTA, c.cod_sucursal_ent ), 5, '' '' )',
'    and (  d.cod_articulo  between ( nvl( :P368_ARTICULO_DESDE, ''0'' ) )',
'                                              and ( nvl( :P368_ARTICULO_HASTA, ''ZZZZZZZZZZZZZZZZZZZZ'' ) ) )',
'    and  c.fecha  between nvl( :P368_FEC_INI, c.fecha ) and nvl( :P368_FEC_FIN, c.fecha )',
'    and c.cod_empresa = d.cod_empresa',
'    and c.tip_envio = d.tip_envio',
'    and c.ser_envio = d.ser_envio',
'    and c.nro_envio = d.nro_envio',
'    and d.cod_empresa = a.cod_empresa',
'    and d.cod_articulo = a.cod_articulo',
'    and ( :P368_COD_RUBRO   is null or a.cod_rubro   = :P368_COD_RUBRO  )',
'    and ( :P368_COD_FAMILIA  is null or a.cod_familia = :P368_COD_FAMILIA )',
'    and ( :P368_COD_LINEA   is null or a.cod_linea   = :P368_COD_LINEA  )',
'    and ( :P368_COD_MARCA    is null or a.cod_marca   = :P368_COD_MARCA   )',
'    and ( :P368_TIP_COMPROBANTE is null or c.tip_envio = :P368_TIP_COMPROBANTE  )',
'    and c.cod_empresa = s.cod_empresa',
'    and c.cod_sucursal_ent = s.cod_sucursal',
'    and d.ind_recepcion = ''S''',
'    and nvl( c.estado, ''A'' ) = ''A''',
'and :P368_IND_REPORTE = 1',
'AND :P368_TIPO = 1',
'UNION ALL',
'',
'  select  a.cod_articulo  cod_articulo, a.descripcion desc_art,null ,',
unistr('        s.descripcion desc_sucursal, ''NOTA DE ENV\00CDO'', c.nro_envio, c.fecha, c.cod_sucursal,'),
'        c.tip_envio, 0, nvl( d.cantidad, 0 ), a.cod_articulo articulo, d.nro_lote, c.hora,c.ROWID CARGA, A.COD_ART_CORTO, C.SER_ENVIO',
','''' ref, null planilla_reparto, null celda, null fecha_asignacion, null fecha_inicio, null fecha_fin,NULL ESTADO_REPARTO, NULL TIPO_ENTREGA',
'   from st_notas_envio_cab c, st_notas_envio_det d, st_articulos a, sucursales s',
'  where d.cod_empresa = :p_cod_empresa',
'    and lpad( c.cod_sucursal, 5, '' '' ) between lpad( nvl( :P368_SUCURSAL_DESDE, c.cod_sucursal ), 5, '' '' )',
'                                           and lpad( nvl( :P368_SUCURSAL_HASTA, c.cod_sucursal ), 5, '' '' )',
'    and ( ( d.cod_articulo ) between ( nvl( :P368_ARTICULO_DESDE, ''0'' ))',
'                                              and ( nvl( :P368_ARTICULO_HASTA, ''ZZZZZZZZZZZZZZZZZZZZ'' ) ) )',
'    and  c.fecha  between nvl( :P368_FEC_INI, c.fecha ) and nvl( :P368_FEC_FIN, c.fecha )',
'    and c.cod_empresa = d.cod_empresa',
'    and c.tip_envio = d.tip_envio',
'    and c.ser_envio = d.ser_envio',
'    and c.nro_envio = d.nro_envio',
'    and d.cod_empresa = a.cod_empresa',
'    and d.cod_articulo = a.cod_articulo',
'    and ( :P368_COD_RUBRO   is null or a.cod_rubro   = :P368_COD_RUBRO  )',
'    and ( :P368_COD_FAMILIA  is null or a.cod_familia = :P368_COD_FAMILIA )',
'    and ( :P368_COD_LINEA   is null or a.cod_linea   = :P368_COD_LINEA  )',
'    and ( :P368_COD_MARCA    is null or a.cod_marca   = :P368_COD_MARCA   )',
'    and ( :P368_TIP_COMPROBANTE is null or c.tip_envio = :P368_TIP_COMPROBANTE  )',
'    and c.cod_empresa = s.cod_empresa',
'    and c.cod_sucursal = s.cod_sucursal',
'    and nvl( c.estado, ''A'' ) = ''A''',
'and :P368_IND_REPORTE = 1',
'AND :P368_TIPO = 1',
'UNION ALL',
'',
'  select  d.cod_articulo cod_articulo, a.descripcion desc_art,p.nombre,',
'        s.descripcion desc_sucursal, ''FACTURA DE COMPRA'' desc_motivo,',
'        c.nro_comprobante numero,  trunc( nvl(c.fec_estado,c.fec_comprobante) ) fec_ent_sal, c.cod_sucursal,',
'        ''FAC'' cod_motivo_ent_sal, nvl( d.cantidad, 0 ) cant_ent, 0 cant_sal,',
'        a.cod_articulo articulo, D.NRO_LOTE, c.hora_alta,c.ROWID CARGA, A.COD_ART_CORTO, C.SER_COMPROBANTE',
','''' ref, null planilla_reparto, null celda, null fecha_asignacion, null fecha_inicio, null fecha_fin,NULL ESTADO_REPARTO, NULL TIPO_ENTREGA',
'  from cm_compras_cabecera c, cm_compras_detalle d, st_articulos a, sucursales s,personas p,cm_proveedores cm--,',
'--       parametros_generales p',
'  where d.cod_empresa = :p_cod_empresa',
'--    and p.cod_modulo = ''CM''',
'--    and p.parametro = ''TIPO_FACTURA''',
'    and c.tip_comprobante = ''FAC'' --ltrim( rtrim( p.valor ) )',
'    and c.cod_empresa = d.cod_empresa',
'    and cm.cod_empresa=c.cod_empresa',
'    and cm.cod_persona=p.cod_persona',
'    and cm.cod_proveedor=c.cod_proveedor',
'    and c.tip_comprobante = d.tip_comprobante',
'    and c.ser_comprobante = d.ser_comprobante',
'    and c.nro_comprobante = d.nro_comprobante',
'    and lpad( c.cod_sucursal, 5, '' '' ) between lpad( nvl( :P368_SUCURSAL_DESDE, c.cod_sucursal ), 5, '' '' )',
'                                           and lpad( nvl( :P368_SUCURSAL_HASTA, c.cod_sucursal ), 5, '' '' )',
'    and trunc( trunc( nvl(c.fec_estado,c.fec_comprobante) ) ) between nvl( :P368_FEC_INI,  trunc( nvl(c.fec_estado,c.fec_comprobante) ) ) and nvl( :P368_FEC_FIN, trunc( nvl(c.fec_estado,c.fec_comprobante) ) )',
'    and nvl( c.estado, ''N'' ) = ''C''',
'    and c.cod_empresa = s.cod_empresa',
'    and c.cod_sucursal = s.cod_sucursal',
'    and ( ( d.cod_articulo) between ( nvl( :P368_ARTICULO_DESDE, ''0'' ) )',
'                                              and ( nvl( :P368_ARTICULO_HASTA, ''ZZZZZZZZZZZZZZZZZZZZ'' ) ) )',
'    and d.cod_empresa = a.cod_empresa',
'    and d.cod_articulo = a.cod_articulo',
'    and ( :P368_COD_RUBRO   is null or a.cod_rubro   = :P368_COD_RUBRO  )',
'    and ( :P368_COD_FAMILIA  is null or a.cod_familia = :P368_COD_FAMILIA )',
'    and ( :P368_COD_LINEA   is null or a.cod_linea   = :P368_COD_LINEA  )',
'    and ( :P368_COD_MARCA    is null or a.cod_marca   = :P368_COD_MARCA   )',
'    and ( :P368_TIP_COMPROBANTE is null or c.tip_comprobante = :P368_TIP_COMPROBANTE  )',
'and :P368_IND_REPORTE = 1',
'AND :P368_TIPO = 1',
'UNION ALL',
'',
'  select  d.cod_articulo cod_articulo, a.descripcion desc_art,null ,',
'        s.descripcion desc_sucursal, ''AJUSTE DE STOCK/ COSTOS'' desc_motivo,',
'        c.nro_comprobante numero,  trunc( nvl(c.fec_estado,c.fec_comprobante) ) fec_ent_sal, c.cod_sucursal,',
'        ''FAJ'' cod_motivo_ent_sal, nvl( d.cantidad, 0 ) cant_ent, 0 cant_sal,',
'        a.cod_articulo articulo, D.NRO_LOTE, c.hora_alta,c.ROWID CARGA, A.COD_ART_CORTO, C.SER_COMPROBANTE',
','''' ref, null planilla_reparto, null celda, null fecha_asignacion, null fecha_inicio, null fecha_fin,NULL ESTADO_REPARTO, null tipo_entrega',
'  from cm_compras_cabecera c, cm_compras_detalle d, st_articulos a, sucursales s--,',
'--       parametros_generales p',
'  where d.cod_empresa = :p_cod_empresa',
'--    and p.cod_modulo = ''CM''',
'--    and p.parametro = ''TIPO_FACTURA_AJUSTE''',
'    and c.tip_comprobante = ''FAJ'' --ltrim( rtrim( p.valor ) )',
'    and c.cod_empresa = d.cod_empresa',
'    and c.tip_comprobante = d.tip_comprobante',
'    and c.ser_comprobante = d.ser_comprobante',
'    and c.nro_comprobante = d.nro_comprobante',
'    and lpad( c.cod_sucursal, 5, '' '' ) between lpad( nvl( :P368_SUCURSAL_DESDE, c.cod_sucursal ), 5, '' '' )',
'                                           and lpad( nvl( :P368_SUCURSAL_HASTA, c.cod_sucursal ), 5, '' '' )',
'    and trunc( nvl(c.fec_estado,c.fec_comprobante) ) between nvl( :P368_FEC_INI,  trunc( nvl(c.fec_estado,c.fec_comprobante) )) and nvl( :P368_FEC_FIN,  trunc( nvl(c.fec_estado,c.fec_comprobante) ) )',
'    and nvl( c.estado, ''N'' ) = ''C''',
'    and c.cod_empresa = s.cod_empresa',
'    and c.cod_sucursal = s.cod_sucursal',
'    and ( ( d.cod_articulo ) between ( nvl( :P368_ARTICULO_DESDE, ''0'' ) )',
'                                              and ( nvl( :P368_ARTICULO_HASTA, ''ZZZZZZZZZZZZZZZZZZZZ'' )) )',
'    and d.cod_empresa = a.cod_empresa',
'    and d.cod_articulo = a.cod_articulo',
'    and ( :P368_COD_RUBRO   is null or a.cod_rubro   = :P368_COD_RUBRO  )',
'    and ( :P368_COD_FAMILIA  is null or a.cod_familia = :P368_COD_FAMILIA )',
'    and ( :P368_COD_LINEA   is null or a.cod_linea   = :P368_COD_LINEA  )',
'    and ( :P368_COD_MARCA    is null or a.cod_marca   = :P368_COD_MARCA   )',
'    and ( :P368_TIP_COMPROBANTE is null or c.tip_comprobante = :P368_TIP_COMPROBANTE  )',
'and :P368_IND_REPORTE = 1',
'AND :P368_TIPO = 1',
'ORDER BY 7,14,15,1,6'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P368_SUCURSAL_DESDE,P368_SUCURSAL_HASTA,P368_COD_RUBRO,P368_COD_FAMILIA,P368_COD_LINEA,P368_COD_MARCA,P368_CLIENTE,P368_ARTICULO_DESDE,P368_ARTICULO_HASTA,P368_TIP_COMPROBANTE,P368_FEC_INI,P368_FEC_FIN,P368_IND_REPORTE,P368_TIPO'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'STREENSA'
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
 p_id=>wwv_flow_imp.id(107272227950096932)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_display_row_count=>'Y'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'FPONCE'
,p_internal_uid=>107272227950096932
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(107272318524096933)
,p_db_column_name=>'COD_ARTICULO'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>unistr('C\00F3digo')
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(107272492452096934)
,p_db_column_name=>'DESC_ART'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>unistr('Art\00EDculo')
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(107272504654096935)
,p_db_column_name=>'COD_CLIENTE'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Cliente'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(107272620891096936)
,p_db_column_name=>'DESC_SUCURSAL'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Desc Sucursal'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(107272722679096937)
,p_db_column_name=>'DESC_MOTIVO'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Motivo'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(107272814577096938)
,p_db_column_name=>'NUMERO'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Numero'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(107272908784096939)
,p_db_column_name=>'FEC_ENT_SAL'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Fecha'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(107273072929096940)
,p_db_column_name=>'COD_SUCURSAL'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Cod Sucursal'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(107273141716096941)
,p_db_column_name=>'COD_MOTIVO_ENT_SAL'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Cod Motivo Ent Sal'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(107273236172096942)
,p_db_column_name=>'CANT_ENT'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Entrada'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(107273361377096943)
,p_db_column_name=>'CANT_SAL'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Salida'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(107273455728096944)
,p_db_column_name=>'ARTICULO'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Articulo'
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
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(107273595669096945)
,p_db_column_name=>'NRO_LOTE'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Lote'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(107273625848096946)
,p_db_column_name=>'HORA_ALTA'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Hora'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(107273707694096947)
,p_db_column_name=>'CARGA'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Carga'
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
 p_id=>wwv_flow_imp.id(107273894598096948)
,p_db_column_name=>'COD_ART_CORTO'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Cod Art Corto'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(107273970966096949)
,p_db_column_name=>'SERIE'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Serie'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(107274070117096950)
,p_db_column_name=>'REF'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'Ref'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(920104492887595349)
,p_db_column_name=>'PLANILLA_REPARTO'
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>'Planilla Reparto'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(920104579223595350)
,p_db_column_name=>'CELDA'
,p_display_order=>200
,p_column_identifier=>'T'
,p_column_label=>'Celda'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(963950428610292701)
,p_db_column_name=>'FECHA_ASIGNACION'
,p_display_order=>210
,p_column_identifier=>'U'
,p_column_label=>'Fecha Asignacion Celda'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_format_mask=>'DD-MM-YYYY HH24:MI'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(963950524248292702)
,p_db_column_name=>'FECHA_INICIO'
,p_display_order=>220
,p_column_identifier=>'V'
,p_column_label=>'Fecha Inicio Celda'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_format_mask=>'DD-MM-YYYY HH24:MI'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(963950631466292703)
,p_db_column_name=>'FECHA_FIN'
,p_display_order=>230
,p_column_identifier=>'W'
,p_column_label=>'Fecha Fin Celda'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_format_mask=>'DD-MM-YYYY HH24:MI'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1031321215653625515)
,p_db_column_name=>'ESTADO_REPARTO'
,p_display_order=>240
,p_column_identifier=>'X'
,p_column_label=>'Estado Reparto'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1103764279955237801)
,p_db_column_name=>'TIPO_ENTREGA'
,p_display_order=>250
,p_column_identifier=>'Y'
,p_column_label=>'Tipo Entrega'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(107301156233118168)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1073012'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'COD_SUCURSAL:COD_ARTICULO:DESC_ART:SERIE:NUMERO:FEC_ENT_SAL:HORA_ALTA:REF:NRO_LOTE:DESC_MOTIVO:COD_CLIENTE:CANT_ENT:CANT_SAL:PLANILLA_REPARTO:CELDA:FECHA_ASIGNACION:FECHA_INICIO:FECHA_FIN:ESTADO_REPARTO:TIPO_ENTREGA:'
,p_break_on=>'COD_SUCURSAL:0:0:0:0:0'
,p_break_enabled_on=>'COD_SUCURSAL:0:0:0:0:0'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(107032197086231904)
,p_plug_name=>'STFIMOAR'
,p_parent_plug_id=>wwv_flow_imp.id(106563401138108516)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select lpad( a.cod_articulo, 20, '' '' ) cod_articulo, a.descripcion desc_art,'''' cliente, ',
'        s.descripcion desc_sucursal, ''INVENTARIO'' desc_motivo, c.num_invent numero,',
'         TO_DATE(to_char(c.fec_ini_invent,''DD/MM/YYYY'')||'' ''|| C.Hora_Alta,''DD/MM/YYYY HH24:MI:SS'') fec_ent_sal , c.cod_sucursal, ''10'' cod_motivo_ent_sal,',
'        sum(( nvl( d.cant_fisica, 0 ) )) cant_ent, 0 cant_sal, a.cod_articulo articulo,',
'        '' '' nro_lote, ''I'' tipo, 1 orden, a.cod_art_corto',
'   from st_invent_cab c, st_invent_det d, st_articulos a, sucursales s',
'  where c.cod_empresa = :p_cod_empresa',
'    and lpad( c.cod_sucursal, 5, '' '' ) between lpad( nvl( :P368_SUCURSAL_DESDE, c.cod_sucursal ), 5, '' '' )',
'                                           and lpad( nvl( :P368_SUCURSAL_HASTA, c.cod_sucursal ), 5, '' '' )',
'    and c.fec_ini_invent between nvl( :P368_FEC_INI, c.fec_ini_invent ) and nvl( :P368_FEC_FIN, c.fec_ini_invent )',
'    and c.cod_empresa = d.cod_empresa',
'    and c.ser_invent = d.ser_invent',
'    and c.num_invent = d.num_invent',
'    and ( :P368_ARTICULO_DESDE is null or d.cod_articulo >= :P368_ARTICULO_DESDE)',
'    and ( :P368_ARTICULO_HASTA is null or d.cod_articulo <= :P368_ARTICULO_HASTA)',
'    and d.cod_empresa = a.cod_empresa',
'    and d.cod_articulo = a.cod_articulo',
'    and ( :P368_COD_RUBRO      is null or a.cod_rubro   = :P368_COD_RUBRO  )',
'    and ( :P368_COD_FAMILIA     is null or a.cod_familia = :P368_COD_FAMILIA )',
'    and ( :P368_COD_LINEA       is null or a.cod_linea   = :P368_COD_LINEA   )',
'    and ( :P368_COD_MARCA       is null or a.cod_marca   = :P368_COD_MARCA   )',
'    and ( :P368_TIP_COMPROBANTE is null or ''INV'' = :P368_TIP_COMPROBANTE )',
'    and c.cod_empresa = s.cod_empresa',
'    and c.cod_sucursal = s.cod_sucursal',
'    and :P368_IND_REPORTE = 1',
'    AND :P368_TIPO = 2',
'group by lpad( a.cod_articulo, 20, '' '' ), a.descripcion,',
'        s.descripcion, ''INVENTARIO'', c.num_invent,',
'       TO_DATE(to_char(c.fec_ini_invent,''DD/MM/YYYY'')||'' ''|| C.Hora_Alta,''DD/MM/YYYY HH24:MI:SS''), c.cod_sucursal, ''10'',',
'        0, a.cod_articulo, ''I'', a.cod_art_corto',
'',
'UNION ALL',
'',
'  select lpad( a.cod_articulo, 20, '' '' ) cod_articulo, a.descripcion desc_art,'''',',
'        s.descripcion desc_sucursal, upper( m.descripcion ) desc_motivo,',
'        c.num_ent_sal numero, ',
'         TO_DATE(to_char(fec_ent_sal,''DD/MM/YYYY'')||'' ''|| C.HORA_ALTA,''DD/MM/YYYY HH24:MI:SS'')',
'        fec_ent_sal, c.cod_sucursal, c.cod_motivo_ent_sal,',
'        decode( m.ind_ent_sal, ''E'', nvl( d.cantidad, 0 ), 0 ) cant_ent,',
'        decode( m.ind_ent_sal, ''S'', nvl( d.cantidad, 0 ), 0 ) cant_sal,',
'        a.cod_articulo articulo, d.nro_lote, ''A'' tipo, 3 orden, a.cod_art_corto',
'   from st_entsal_cab c, st_entsal_det d, st_articulos a, sucursales s, st_motivo_ent_sal m',
'  where c.cod_empresa = :p_cod_empresa',
'    and lpad( c.cod_sucursal, 5, '' '' ) between lpad( nvl( :P368_SUCURSAL_DESDE, c.cod_sucursal ), 5, '' '' )',
'                                           and lpad( nvl( :P368_SUCURSAL_HASTA, c.cod_sucursal ), 5, '' '' )',
'    and ( :P368_ARTICULO_DESDE is null or d.cod_articulo >= :P368_ARTICULO_DESDE)',
'    and ( :P368_ARTICULO_HASTA is null or d.cod_articulo <= :P368_ARTICULO_HASTA)',
'    and c.fec_ent_sal between nvl( :P368_FEC_INI, c.fec_ent_sal ) and nvl( :P368_FEC_FIN, c.fec_ent_sal )',
'    and c.cod_empresa = d.cod_empresa',
'    and c.tip_ent_sal = d.tip_ent_sal',
'    and c.ser_ent_sal = d.ser_ent_sal',
'    and c.num_ent_sal = d.num_ent_sal',
'    and d.cod_empresa = a.cod_empresa',
'    and d.cod_articulo = a.cod_articulo',
'    and ( :P368_COD_RUBRO      is null or a.cod_rubro   = :P368_COD_RUBRO  )',
'    and ( :P368_COD_FAMILIA     is null or a.cod_familia = :P368_COD_FAMILIA )',
'    and ( :P368_COD_LINEA       is null or a.cod_linea   = :P368_COD_LINEA   )',
'    and ( :P368_COD_MARCA       is null or a.cod_marca   = :P368_COD_MARCA   )',
'    and ( :P368_TIP_COMPROBANTE is null or c.tip_ent_sal = :P368_TIP_COMPROBANTE )',
'    and c.cod_empresa = s.cod_empresa',
'    and c.cod_sucursal = s.cod_sucursal',
'    and c.cod_motivo_ent_sal = m.cod_motivo_ent_sal',
'    and :P368_IND_REPORTE = 1',
'    AND :P368_TIPO = 2',
'UNION ALL',
'',
'  select lpad( a.cod_articulo, 20, '' '' ) cod_articulo, a.descripcion desc_art,c.nom_cliente,',
'        s.descripcion desc_sucursal, upper( t.descripcion ), c.nro_comprobante numero, ',
'         TO_DATE(to_char(fec_comprobante,''DD/MM/YYYY'')||'' ''|| C.HORA_ALTA,''DD/MM/YYYY HH24:MI:SS'') fec_comprobante,',
'        c.cod_sucursal, c.tip_comprobante,',
'        decode( t.stock, ''S'', nvl( d.cantidad, 0 ), 0 ),',
'        decode( t.stock, ''R'', nvl( d.cantidad, 0 ), 0 ), a.cod_articulo articulo, d.nro_lote, ''V'' tipo,',
'        3 orden, a.cod_art_corto',
'   from vt_comprobantes_cabecera c, vt_comprobantes_detalle d, st_articulos a, sucursales s,',
'        tipos_comprobantes t',
'  where c.cod_empresa = :p_cod_empresa',
'    and c.fec_comprobante between nvl( :P368_FEC_INI, to_date( ''01/01/0001'', ''DD/MM/YYYY'' ) )',
'                              and nvl( :P368_FEC_FIN, to_date( ''31/12/9999'', ''DD/MM/YYYY'' ) )',
'    and lpad( c.cod_sucursal, 5, '' '' ) between lpad( nvl( :P368_SUCURSAL_DESDE, c.cod_sucursal ), 5, '' '' )',
'                                           and lpad( nvl( :P368_SUCURSAL_HASTA, c.cod_sucursal ), 5, '' '' )',
'    and c.cod_empresa = d.cod_empresa',
'    and c.tip_comprobante = d.tip_comprobante',
'    and c.ser_comprobante = d.ser_comprobante',
'    AND (:P368_CLIENTE is null or c.cod_cliente =:P368_CLIENTE)',
'    and c.nro_comprobante = d.nro_comprobante',
'    and ( :P368_ARTICULO_DESDE is null or d.cod_articulo >= :P368_ARTICULO_DESDE)',
'    and ( :P368_ARTICULO_HASTA is null or d.cod_articulo <= :P368_ARTICULO_HASTA)',
'    and d.cod_empresa = a.cod_empresa',
'    and d.cod_articulo = a.cod_articulo',
'    and ( :P368_COD_RUBRO      is null or a.cod_rubro   = :P368_COD_RUBRO  )',
'    and ( :P368_COD_FAMILIA     is null or a.cod_familia = :P368_COD_FAMILIA )',
'    and ( :P368_COD_LINEA       is null or a.cod_linea   = :P368_COD_LINEA   )',
'    and ( :P368_COD_MARCA       is null or a.cod_marca   = :P368_COD_MARCA   )',
'    and ( :P368_TIP_COMPROBANTE is null or c.tip_comprobante = :P368_TIP_COMPROBANTE )',
'    and c.cod_empresa = s.cod_empresa',
'    and c.cod_sucursal = s.cod_sucursal',
'    and c.cod_empresa = t.cod_empresa',
'    and c.tip_comprobante = t.tip_comprobante',
'    and nvl( d.ind_no_stock,''N'') <> ''S''',
'    and nvl( c.estado, ''N'' ) <> ''A''',
'    and :P368_IND_REPORTE = 1',
'    AND :P368_TIPO = 2',
'UNION ALL',
'',
'  Select lpad( a.cod_articulo, 20, '' '' ) cod_articulo, a.descripcion desc_art,'''',',
unistr('        s.descripcion desc_sucursal, ''NOTA DE ENV\00CDO'', c.nro_envio numero,'),
'         TO_DATE(to_char(fecha,''DD/MM/YYYY'')||'' ''|| C.HORA,''DD/MM/YYYY HH24:MI:SS'') fecha, c.cod_sucursal_ent,',
'        c.tip_envio, nvl( d.cantidad, 0 ), 0, a.cod_articulo articulo, d.nro_lote, ''E'' tipo,',
'        3 orden, a.cod_art_corto',
'   from st_notas_envio_cab c, st_notas_envio_det d, st_articulos a, sucursales s',
'  where c.cod_empresa = :p_cod_empresa',
'    and lpad( c.cod_sucursal_ent, 5, '' '' ) between lpad( nvl( :P368_SUCURSAL_DESDE, c.cod_sucursal_ent ), 5, '' '' )',
'                                               and lpad( nvl( :P368_SUCURSAL_HASTA, c.cod_sucursal_ent ), 5, '' '' )',
'    and ( :P368_ARTICULO_DESDE is null or d.cod_articulo >= :P368_ARTICULO_DESDE)',
'    and ( :P368_ARTICULO_HASTA is null or d.cod_articulo <= :P368_ARTICULO_HASTA)',
'    and c.fecha between nvl( :P368_FEC_INI, c.fecha ) and nvl( :P368_FEC_FIN, c.fecha )',
'    and c.cod_empresa = d.cod_empresa',
'    and c.tip_envio = d.tip_envio',
'    and c.ser_envio = d.ser_envio',
'    and c.nro_envio = d.nro_envio',
'    and d.cod_empresa = a.cod_empresa',
'    and d.cod_articulo = a.cod_articulo',
'    and ( :P368_COD_RUBRO      is null or a.cod_rubro   = :P368_COD_RUBRO  )',
'    and ( :P368_COD_FAMILIA     is null or a.cod_familia = :P368_COD_FAMILIA )',
'    and ( :P368_COD_LINEA       is null or a.cod_linea   = :P368_COD_LINEA   )',
'    and ( :P368_COD_MARCA       is null or a.cod_marca   = :P368_COD_MARCA   )',
'    and ( :P368_TIP_COMPROBANTE is null or c.tip_envio   = :P368_TIP_COMPROBANTE )',
'    and c.cod_empresa = s.cod_empresa',
'    and c.cod_sucursal_ent = s.cod_sucursal',
'    and d.ind_recepcion = ''S''',
'    and nvl( c.estado, ''A'' ) = ''A''',
'    and :P368_IND_REPORTE = 1',
'    AND :P368_TIPO = 2',
'UNION ALL',
'',
'  select lpad( a.cod_articulo, 20, '' '' ) cod_articulo, a.descripcion desc_art,'''',',
unistr('        s.descripcion desc_sucursal, ''NOTA DE ENV\00CDO'', c.nro_envio numero, '),
'         TO_DATE(to_char(fecha,''DD/MM/YYYY'')||'' ''|| C.HORA,''DD/MM/YYYY HH24:MI:SS'') fecha, c.cod_sucursal,',
'        c.tip_envio, 0, nvl( d.cantidad, 0 ), a.cod_articulo articulo, d.nro_lote, ''E'' tipo,',
'        3 orden, a.cod_art_corto',
'   from st_notas_envio_cab c, st_notas_envio_det d, st_articulos a, sucursales s',
'  where c.cod_empresa = :p_cod_empresa',
'    and lpad( c.cod_sucursal, 5, '' '' ) between lpad( nvl( :P368_SUCURSAL_DESDE, c.cod_sucursal ), 5, '' '' )',
'                                           and lpad( nvl( :P368_SUCURSAL_HASTA, c.cod_sucursal ), 5, '' '' )',
'    and ( :P368_ARTICULO_DESDE is null or d.cod_articulo >= :P368_ARTICULO_DESDE)',
'    and ( :P368_ARTICULO_HASTA is null or d.cod_articulo <= :P368_ARTICULO_HASTA)',
'    and c.fecha between nvl( :P368_FEC_INI, c.fecha ) and nvl( :P368_FEC_FIN, c.fecha )',
'    and c.cod_empresa = d.cod_empresa',
'    and c.tip_envio = d.tip_envio',
'    and c.ser_envio = d.ser_envio',
'    and c.nro_envio = d.nro_envio',
'    and d.cod_empresa = a.cod_empresa',
'    and d.cod_articulo = a.cod_articulo',
'    and ( :P368_COD_RUBRO      is null or a.cod_rubro   = :P368_COD_RUBRO  )',
'    and ( :P368_COD_FAMILIA     is null or a.cod_familia = :P368_COD_FAMILIA )',
'    and ( :P368_COD_LINEA       is null or a.cod_linea   = :P368_COD_LINEA   )',
'    and ( :P368_COD_MARCA       is null or a.cod_marca   = :P368_COD_MARCA   )',
'    and ( :P368_TIP_COMPROBANTE is null or c.tip_envio   = :P368_TIP_COMPROBANTE )',
'    and c.cod_empresa = s.cod_empresa',
'    and c.cod_sucursal = s.cod_sucursal',
'    and nvl( c.estado, ''A'' ) = ''A''',
'    and :P368_IND_REPORTE = 1',
'    AND :P368_TIPO = 2',
'UNION ALL',
'',
'  select lpad( d.cod_articulo, 20, '' '' ) cod_articulo, a.descripcion desc_art,'' ''nombre,',
'        s.descripcion desc_sucursal, ''FACTURA DE COMPRA'' desc_motivo,',
'        c.nro_comprobante numero, nvl((c.fec_estado),c.fec_comprobante) fec_ent_sal, c.cod_sucursal,',
'        c.tip_comprobante cod_motivo_ent_sal, nvl( d.cantidad, 0 ) cant_ent, 0 cant_sal,',
'        a.cod_articulo articulo, null, ''C'' tipo,',
'        2 orden, a.cod_art_corto',
'  from cm_compras_cabecera c, cm_compras_detalle d, st_articulos a, sucursales s,/* personas p,cm_proveedores cm,*/tipos_comprobantes tc',
'--       parametros_generales p',
'  where c.cod_empresa = :p_cod_empresa',
'      /*and cm.cod_empresa=c.cod_empresa',
'    and cm.cod_persona=p.cod_persona',
'    and cm.cod_proveedor=c.cod_proveedor*/',
'',
'--    and p.cod_modulo = ''CM''',
'--    and p.parametro = ''TIPO_FACTURA''',
'---    and c.tip_comprobante = ''FAC''--ltrim( rtrim( p.valor ) )',
'    and c.cod_empresa = d.cod_empresa',
'    and c.tip_comprobante = d.tip_comprobante',
'    and c.ser_comprobante = d.ser_comprobante',
'    and c.nro_comprobante = d.nro_comprobante',
'    and lpad( c.cod_sucursal, 5, '' '' ) between lpad( nvl( :P368_SUCURSAL_DESDE, c.cod_sucursal ), 5, '' '' )',
'                                           and lpad( nvl( :P368_SUCURSAL_HASTA, c.cod_sucursal ), 5, '' '' )',
'    and trunc( nvl(c.fec_estado,c.fec_comprobante) ) between nvl( :P368_FEC_INI,  trunc( nvl(c.fec_estado,c.fec_comprobante) )) and nvl( :P368_FEC_FIN,  trunc( nvl(c.fec_estado,c.fec_comprobante) ) )',
'    and nvl( c.estado, ''N'' ) = ''C''',
'    and c.cod_empresa = s.cod_empresa',
'    and c.cod_sucursal = s.cod_sucursal',
'    and ( :P368_ARTICULO_DESDE is null or d.cod_articulo >= :P368_ARTICULO_DESDE)',
'    and ( :P368_ARTICULO_HASTA is null or d.cod_articulo <= :P368_ARTICULO_HASTA)',
'    and d.cod_empresa = a.cod_empresa',
'    and d.cod_articulo = a.cod_articulo',
'    and ( :P368_COD_RUBRO      is null or a.cod_rubro   = :P368_COD_RUBRO  )',
'    and ( :P368_COD_FAMILIA     is null or a.cod_familia = :P368_COD_FAMILIA )',
'    and ( :P368_COD_LINEA       is null or a.cod_linea   = :P368_COD_LINEA   )',
'    and ( :P368_COD_MARCA       is null or a.cod_marca   = :P368_COD_MARCA   )',
'    and ( :P368_TIP_COMPROBANTE is null or c.tip_comprobante = :P368_TIP_COMPROBANTE )',
'    and c.cod_empresa = tc.cod_empresa(+)',
'    and c.tip_comprobante = tc.tip_comprobante(+)',
'    and nvl( tc.stock,''S'') = ''S''',
'and :P368_IND_REPORTE = 1',
'AND :P368_TIPO = 2',
'UNION ALL',
'',
'  select lpad( d.cod_articulo, 20, '' '' ) cod_articulo, a.descripcion desc_art,p.nombre,',
'        s.descripcion desc_sucursal, ''FACTURA DE COMPRA'' desc_motivo,',
'        c.nro_comprobante numero, nvl((c.fec_estado),c.fec_comprobante) fec_ent_sal, c.cod_sucursal,',
'        c.tip_comprobante cod_motivo_ent_sal, 0 cant_ent, nvl( d.cantidad, 0 ) cant_sal,',
'        a.cod_articulo articulo, null, ''D'' tipo,',
'        2 orden, a.cod_art_corto',
'  from cm_compras_cabecera c, cm_compras_detalle d, st_articulos a, sucursales s, tipos_comprobantes tc, personas p,cm_proveedores cm',
'--       parametros_generales p',
'  where c.cod_empresa = :p_cod_empresa',
'--    and p.cod_modulo = ''CM''',
'--    and p.parametro = ''TIPO_FACTURA''',
'---    and c.tip_comprobante = ''FAC''--ltrim( rtrim( p.valor ) )',
'    and c.cod_empresa = d.cod_empresa',
'    and c.tip_comprobante = d.tip_comprobante',
'    and c.ser_comprobante = d.ser_comprobante',
'         and cm.cod_empresa=c.cod_empresa',
'    and cm.cod_persona=p.cod_persona',
'    and cm.cod_proveedor=c.cod_proveedor',
'    and c.nro_comprobante = d.nro_comprobante',
'    and lpad( c.cod_sucursal, 5, '' '' ) between lpad( nvl( :P368_SUCURSAL_DESDE, c.cod_sucursal ), 5, '' '' )',
'                                           and lpad( nvl( :P368_SUCURSAL_HASTA, c.cod_sucursal ), 5, '' '' )',
'    and trunc( nvl(c.fec_estado,c.fec_comprobante) ) between nvl( :P368_FEC_INI,  trunc( nvl(c.fec_estado,c.fec_comprobante) )) and nvl( :P368_FEC_FIN,  trunc( nvl(c.fec_estado,c.fec_comprobante) ) )',
'    and nvl( c.estado, ''N'' ) = ''C''',
'    and c.cod_empresa = s.cod_empresa',
'    and c.cod_sucursal = s.cod_sucursal',
'    and ( :P368_COD_RUBRO      is null or a.cod_rubro   = :P368_COD_RUBRO  )',
'    and ( :P368_COD_FAMILIA     is null or a.cod_familia = :P368_COD_FAMILIA )',
'    and ( :P368_COD_LINEA       is null or a.cod_linea   = :P368_COD_LINEA   )',
'    and ( :P368_COD_MARCA       is null or a.cod_marca   = :P368_COD_MARCA   )',
'    and ( :P368_TIP_COMPROBANTE is null or c.tip_comprobante = :P368_TIP_COMPROBANTE )',
'    and d.cod_empresa = a.cod_empresa',
'    and d.cod_articulo = a.cod_articulo',
'    and (:P368_COD_RUBRO is null or a.cod_rubro = :P368_COD_RUBRO)',
'    and (:P368_COD_MARCA is null or a.cod_marca = :P368_COD_MARCA)',
'    and c.cod_empresa = tc.cod_empresa(+)',
'    and c.tip_comprobante = tc.tip_comprobante(+)',
'    and nvl( tc.stock,''S'') <> ''S''',
'    and :P368_IND_REPORTE = 1',
'    AND :P368_TIPO = 2',
'ORDER BY 7, 15,16,1,6'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P368_SUCURSAL_DESDE,P368_SUCURSAL_HASTA,P368_COD_RUBRO,P368_COD_FAMILIA,P368_COD_LINEA,P368_COD_MARCA,P368_CLIENTE,P368_ARTICULO_DESDE,P368_ARTICULO_HASTA,P368_TIP_COMPROBANTE,P368_FEC_INI,P368_FEC_FIN,P368_IND_REPORTE,P368_TIPO'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'STFIMOAR'
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
 p_id=>wwv_flow_imp.id(107270478146096914)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_display_row_count=>'Y'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'FPONCE'
,p_internal_uid=>107270478146096914
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(107270559630096915)
,p_db_column_name=>'COD_ARTICULO'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>unistr('C\00F3digo')
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(107270632615096916)
,p_db_column_name=>'DESC_ART'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>unistr('Art\00EDculo')
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(107270711123096917)
,p_db_column_name=>'CLIENTE'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Cliente'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(107270899446096918)
,p_db_column_name=>'DESC_SUCURSAL'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Desc Sucursal'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(107270922837096919)
,p_db_column_name=>'DESC_MOTIVO'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Desc Motivo'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(107271067068096920)
,p_db_column_name=>'NUMERO'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Numero'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(107271162043096921)
,p_db_column_name=>'FEC_ENT_SAL'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Fecha'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(107271270095096922)
,p_db_column_name=>'COD_SUCURSAL'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Cod Sucursal'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(107271359756096923)
,p_db_column_name=>'COD_MOTIVO_ENT_SAL'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Cod Motivo Ent Sal'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(107271475063096924)
,p_db_column_name=>'CANT_ENT'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Entrada'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(107271527721096925)
,p_db_column_name=>'CANT_SAL'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Salida'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(107271699958096926)
,p_db_column_name=>'ARTICULO'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Articulo'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(107271795027096927)
,p_db_column_name=>'NRO_LOTE'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Lote'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(107271871794096928)
,p_db_column_name=>'TIPO'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Tipo'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(107271954836096929)
,p_db_column_name=>'ORDEN'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Orden'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(107272101754096931)
,p_db_column_name=>'COD_ART_CORTO'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Cod Art Corto'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(107288600852113051)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1072887'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'FEC_ENT_SAL:NUMERO:TIPO:COD_ARTICULO:DESC_ART:CANT_ENT:CANT_SAL:'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(121296009380956249)
,p_button_sequence=>240
,p_button_plug_id=>wwv_flow_imp.id(106563401138108516)
,p_button_name=>'BTN_LIMPIAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Limpiar Filtros'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(106726940842234429)
,p_button_sequence=>250
,p_button_plug_id=>wwv_flow_imp.id(106563401138108516)
,p_button_name=>'BTN_EJECUTAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Ejecutar'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(106563547033108517)
,p_name=>'P368_SUCURSAL_DESDE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(106563401138108516)
,p_prompt=>'Sucursal Desde'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'STREENS_SUCURSALES'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select descripcion ||''-''||cod_sucursal descripcion,cod_sucursal',
'from sucursales ',
'where cod_empresa=:P_cod_empresa'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'TODAS'
,p_lov_null_value=>'NULL'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
,p_attribute_08=>'600'
,p_attribute_09=>'600'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(106563829296108520)
,p_name=>'P368_SUCURSAL_HASTA'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(106563401138108516)
,p_prompt=>'Sucursal Hasta'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'STREENS_SUCURSALES'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select descripcion ||''-''||cod_sucursal descripcion,cod_sucursal',
'from sucursales ',
'where cod_empresa=:P_cod_empresa'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'TODAS'
,p_lov_null_value=>'NULL'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
,p_attribute_08=>'600'
,p_attribute_09=>'600'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(106564158236108523)
,p_name=>'P368_COD_ART_CORTO_INI'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(106563401138108516)
,p_prompt=>'Cod Art Corto'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select descripcion d, cod_articulo r',
'from st_articulos ',
'where cod_empresa = :p_cod_empresa ',
'order by descripcion'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'TODOS'
,p_lov_null_value=>'NULL'
,p_cSize=>30
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
,p_attribute_08=>'600'
,p_attribute_09=>'600'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(106564245491108524)
,p_name=>'P368_COD_ART_CORTO_FIN'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(106563401138108516)
,p_prompt=>'Cod Art Corto'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select descripcion d, cod_articulo r',
'from st_articulos ',
'where cod_empresa = :p_cod_empresa ',
'order by descripcion'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'TODOS'
,p_lov_null_value=>'NULL'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
,p_attribute_08=>'600'
,p_attribute_09=>'600'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(106564762916108529)
,p_name=>'P368_COD_RUBRO'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(106563401138108516)
,p_prompt=>'Rubro'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'STREENS_RUBROS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select descripcion d, cod_rubro r',
'from st_rubro ',
'where cod_empresa = :p_cod_empresa ',
'order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'TODAS'
,p_lov_null_value=>'NULL'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
,p_attribute_08=>'600'
,p_attribute_09=>'600'
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
 p_id=>wwv_flow_imp.id(106565058603108532)
,p_name=>'P368_COD_FAMILIA'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(106563401138108516)
,p_prompt=>'Familia'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'STREENS_FAMILIAS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select descripcion d, cod_familia r',
'from st_familia ',
'order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'TODAS'
,p_lov_null_value=>'NULL'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
,p_attribute_08=>'600'
,p_attribute_09=>'600'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(106565166960108533)
,p_name=>'P368_COD_LINEA'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(106563401138108516)
,p_prompt=>'Linea'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'STREENS_LINEAS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select descripcion d, cod_linea r',
'from st_linea ',
'order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'TODAS'
,p_lov_null_value=>'NULL'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
,p_attribute_08=>'600'
,p_attribute_09=>'600'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(106565245706108534)
,p_name=>'P368_COD_MARCA'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(106563401138108516)
,p_prompt=>'Marca'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'STREENS_MARCAS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select descripcion d, cod_marca r ',
'from st_marcas ',
'order by descripcion'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'TODAS'
,p_lov_null_value=>'NULL'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
,p_attribute_08=>'600'
,p_attribute_09=>'600'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(106565347948108535)
,p_name=>'P368_CLIENTE'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(106563401138108516)
,p_prompt=>'Cliente'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'STREENS_CLIENTES'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select p.nombre d, c.cod_cliente r',
'from cc_clientes c, personas p ',
'where c.cod_empresa=:p_cod_empresa ',
'and c.cod_persona=p.cod_persona'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'TODOS'
,p_lov_null_value=>'NULL'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
,p_attribute_08=>'600'
,p_attribute_09=>'600'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(106565440591108536)
,p_name=>'P368_ARTICULO_DESDE'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(106563401138108516)
,p_prompt=>'Articulo Desde'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'STREENS_ARTICULOS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select nvl(cod_art_corto,cod_articulo)||'' -''||descripcion descripcion,cod_art_corto, cod_articulo',
'from st_articulos ',
'where cod_empresa = :p_cod_empresa ',
'order by descripcion'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'TODOS'
,p_lov_null_value=>'NULL'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
,p_attribute_08=>'600'
,p_attribute_09=>'600'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(106565510017108537)
,p_name=>'P368_ARTICULO_HASTA'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(106563401138108516)
,p_prompt=>'Articulo Hasta'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'STREENS_ARTICULOS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select nvl(cod_art_corto,cod_articulo)||'' -''||descripcion descripcion,cod_art_corto, cod_articulo',
'from st_articulos ',
'where cod_empresa = :p_cod_empresa ',
'order by descripcion'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'TODOS'
,p_lov_null_value=>'NULL'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
,p_attribute_08=>'600'
,p_attribute_09=>'600'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(106565603894108538)
,p_name=>'P368_TIP_COMPROBANTE'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(106563401138108516)
,p_prompt=>'Tipo Comprob.'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'STREENS_TIP_COMPROBANTE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select  descripcion, tip_comprobante ',
'from tipos_comprobantes t ',
'where cod_empresa = :p_cod_empresa ',
'and nvl( stock, ''N'' ) <> ''N'' ',
'union all ',
'select ''INVENTARIO'' , ''INV''',
'from dual order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'TODOS'
,p_lov_null_value=>'NULL'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
,p_attribute_08=>'600'
,p_attribute_09=>'600'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(106565759610108539)
,p_name=>'P368_PERIODO'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(106563401138108516)
,p_prompt=>'Periodo'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>unistr('STATIC:D\00EDa;1,A\00F1o;2,Mes;3,General;4')
,p_lov_display_null=>'YES'
,p_lov_null_text=>'Seleccione...'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
,p_attribute_08=>'600'
,p_attribute_09=>'600'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(106566181539108543)
,p_name=>'P368_FEC_FIN'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_imp.id(106563401138108516)
,p_prompt=>'Fecha Hasta'
,p_format_mask=>'DD/MM/YYYY'
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>30
,p_begin_on_new_line=>'N'
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
 p_id=>wwv_flow_imp.id(106725029228234410)
,p_name=>'P368_TIPO'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_imp.id(106563401138108516)
,p_prompt=>'Tipo'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>'STATIC:1-Solo Cantidades Completo;1,2-Con Costos Completo;2,3-Solo Cantidades desde Enero 2010;3,4-Con Costos desde Enero 2010;4'
,p_lov_display_null=>'YES'
,p_lov_null_text=>'Seleccione...'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
,p_attribute_08=>'600'
,p_attribute_09=>'600'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(106726695623234426)
,p_name=>'P368_FEC_INI'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(106563401138108516)
,p_prompt=>'Fecha Desde'
,p_format_mask=>'DD/MM/YYYY'
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
 p_id=>wwv_flow_imp.id(106727068954234430)
,p_name=>'P368_RESUMIDO_CONTABILIDAD'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_imp.id(106563401138108516)
,p_prompt=>'Resumido Contabilidad'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--xlarge:margin-top-sm'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(107035607777231939)
,p_name=>'P368_IND_REPORTE'
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_imp.id(106563401138108516)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(106563640496108518)
,p_name=>'New'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P368_SUCURSAL_DESDE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(106563720065108519)
,p_event_id=>wwv_flow_imp.id(106563640496108518)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P368_SUCURSAL_DESDE'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(106563983061108521)
,p_name=>'New_1'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P368_SUCURSAL_HASTA'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(106564070936108522)
,p_event_id=>wwv_flow_imp.id(106563983061108521)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P368_SUCURSAL_HASTA'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(106564390161108525)
,p_name=>'New_2'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P368_COD_ART_CORTO_INI'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(106564402333108526)
,p_event_id=>wwv_flow_imp.id(106564390161108525)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'null;'
,p_attribute_02=>'P368_COD_ART_CORTO_INI'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(106564522135108527)
,p_name=>'New_3'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P368_COD_ART_CORTO_FIN'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(106564632987108528)
,p_event_id=>wwv_flow_imp.id(106564522135108527)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'null;'
,p_attribute_02=>'P368_COD_ART_CORTO_FIN'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(106564877437108530)
,p_name=>'New_4'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P368_COD_RUBRO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(106564985914108531)
,p_event_id=>wwv_flow_imp.id(106564877437108530)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P368_COD_RUBRO'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(106566261780108544)
,p_name=>'New_5'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P368_PERIODO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(106566329044108545)
,p_event_id=>wwv_flow_imp.id(106566261780108544)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'null;'
,p_attribute_02=>'P368_PERIODO'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(106566413256108546)
,p_name=>'New_6'
,p_event_sequence=>70
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P368_COD_FAMILIA'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(106566527097108547)
,p_event_id=>wwv_flow_imp.id(106566413256108546)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'null;'
,p_attribute_02=>'P368_COD_FAMILIA'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(106566637352108548)
,p_name=>'New_7'
,p_event_sequence=>80
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P368_COD_LINEA'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(106566764504108549)
,p_event_id=>wwv_flow_imp.id(106566637352108548)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'null;'
,p_attribute_02=>'P368_COD_LINEA'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(106566875716108550)
,p_name=>'New_8'
,p_event_sequence=>90
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P368_COD_MARCA'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(106724147191234401)
,p_event_id=>wwv_flow_imp.id(106566875716108550)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'null;'
,p_attribute_02=>'P368_COD_MARCA'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(106724281303234402)
,p_name=>'New_9'
,p_event_sequence=>100
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P368_CLIENTE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(106724317938234403)
,p_event_id=>wwv_flow_imp.id(106724281303234402)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'null;'
,p_attribute_02=>'P368_CLIENTE'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(106724470519234404)
,p_name=>'New_10'
,p_event_sequence=>110
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P368_ARTICULO_DESDE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(106724534017234405)
,p_event_id=>wwv_flow_imp.id(106724470519234404)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'null;'
,p_attribute_02=>'P368_ARTICULO_DESDE'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(106724677552234406)
,p_name=>'New_11'
,p_event_sequence=>120
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P368_ARTICULO_HASTA'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(106724712551234407)
,p_event_id=>wwv_flow_imp.id(106724677552234406)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'null;'
,p_attribute_02=>'P368_ARTICULO_HASTA'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(106724861663234408)
,p_name=>'New_12'
,p_event_sequence=>130
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P368_TIP_COMPROBANTE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(106724959116234409)
,p_event_id=>wwv_flow_imp.id(106724861663234408)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'null;'
,p_attribute_02=>'P368_TIP_COMPROBANTE'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(106725156783234411)
,p_name=>'New_13'
,p_event_sequence=>140
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P368_FEC_INI'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(106725238036234412)
,p_event_id=>wwv_flow_imp.id(106725156783234411)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'null;'
,p_attribute_02=>'P368_FEC_INI'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(106725317460234413)
,p_name=>'New_14'
,p_event_sequence=>150
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P368_FEC_INI'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(106725469117234414)
,p_event_id=>wwv_flow_imp.id(106725317460234413)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'null;'
,p_attribute_02=>'P368_FEC_INI'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(106725581870234415)
,p_name=>'New_15'
,p_event_sequence=>160
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P368_TIPO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(106725622324234416)
,p_event_id=>wwv_flow_imp.id(106725581870234415)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'null;'
,p_attribute_02=>'P368_TIPO'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(107310322925152606)
,p_event_id=>wwv_flow_imp.id(106725581870234415)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(106727122930234431)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P368_TIPO'
,p_client_condition_expression=>'2'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(107310459071152607)
,p_event_id=>wwv_flow_imp.id(106725581870234415)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(107032197086231904)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P368_TIPO'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(106725710784234417)
,p_name=>'New_16'
,p_event_sequence=>170
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P368_PERIODO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(106725826295234418)
,p_event_id=>wwv_flow_imp.id(106725710784234417)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P368_PERIODO= ''1'' then',
'     :P368_FEC_INI := SYSDATE ;',
'     :P368_FEC_FIN := SYSDATE ;',
'end if;',
'if :P368_PERIODO = ''2'' then',
'     :P368_FEC_INI := to_date(''01/''||substr(to_char(SYSDATE,''dd/mm/yyyy''),4,10),''dd/mm/yyyy'') ;',
'     :P368_FEC_FIN := last_day(add_months(SYSDATE,0)) ;',
'end if;',
'if :P368_PERIODO = ''3'' then',
'     :P368_FEC_INI := to_date(''01/01/''||substr(to_char(SYSDATE,''dd/mm/yyyy''),7,10),''dd/mm/yyyy'') ;',
'     :P368_FEC_FIN := to_date(''31/12/''||substr(to_char(SYSDATE,''dd/mm/yyyy''),7,10),''dd/mm/yyyy'') ;',
'end if;',
'if :P368_PERIODO = ''4'' then',
'     :P368_FEC_INI :=  to_date(''01/01/1900'',''dd/mm/yyyy'') ;',
'     :P368_FEC_FIN := to_date(''01/01/2099'',''dd/mm/yyyy'') ; ',
'end if;',
'if :P368_PERIODO =''NULL'' then',
'    :P368_FEC_INI :=  null;',
'     :P368_FEC_FIN := null; ',
'end if;'))
,p_attribute_02=>'P368_PERIODO,P368_FEC_FIN,P368_FEC_INI'
,p_attribute_03=>'P368_FEC_INI,P368_FEC_FIN'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(106725989974234419)
,p_event_id=>wwv_flow_imp.id(106725710784234417)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P368_FEC_INI'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(106726011607234420)
,p_event_id=>wwv_flow_imp.id(106725710784234417)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P368_FEC_INI'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(106726239621234422)
,p_event_id=>wwv_flow_imp.id(106725710784234417)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P368_FEC_INI'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(106726316038234423)
,p_name=>'New_13'
,p_event_sequence=>180
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P368_FEC_FIN'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(106726472455234424)
,p_event_id=>wwv_flow_imp.id(106726316038234423)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'null;'
,p_attribute_02=>'P368_FEC_FIN'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(106726761851234427)
,p_name=>'New_14'
,p_event_sequence=>190
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P368_FEC_INI'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(106726866555234428)
,p_event_id=>wwv_flow_imp.id(106726761851234427)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P368_FEC_INI'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(106729021492234450)
,p_name=>'New_17'
,p_event_sequence=>200
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(106726940842234429)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(107036105426231944)
,p_event_id=>wwv_flow_imp.id(106729021492234450)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'var spinner = apex.util.showSpinner();'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(107035765977231940)
,p_event_id=>wwv_flow_imp.id(106729021492234450)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P368_IND_REPORTE :=1;'
,p_attribute_02=>'P368_IND_REPORTE'
,p_attribute_03=>'P368_IND_REPORTE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(107310152197152604)
,p_event_id=>wwv_flow_imp.id(106729021492234450)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(107032197086231904)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P368_TIPO'
,p_client_condition_expression=>'2'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(107310259397152605)
,p_event_id=>wwv_flow_imp.id(106729021492234450)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(106727122930234431)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P368_TIPO'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(107031803445231901)
,p_event_id=>wwv_flow_imp.id(106729021492234450)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(106727122930234431)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(107035865800231941)
,p_event_id=>wwv_flow_imp.id(106729021492234450)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(107032197086231904)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(107036268137231945)
,p_event_id=>wwv_flow_imp.id(106729021492234450)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$("#apex_wait_overlay").remove();',
'$(".u-Processing").remove();'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(107035939118231942)
,p_name=>'New_18'
,p_event_sequence=>210
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P368_IND_REPORTE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(107036031586231943)
,p_event_id=>wwv_flow_imp.id(107035939118231942)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P368_IND_REPORTE'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(107309860015152601)
,p_name=>'New_19'
,p_event_sequence=>220
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(107309983256152602)
,p_event_id=>wwv_flow_imp.id(107309860015152601)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(107032197086231904)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(107310009177152603)
,p_event_id=>wwv_flow_imp.id(107309860015152601)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(106727122930234431)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(121296115822956250)
,p_name=>'Clean_items'
,p_event_sequence=>230
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(121296009380956249)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(124028452568866201)
,p_event_id=>wwv_flow_imp.id(121296115822956250)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(106726574770234425)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_INIT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P368_PERIODO:=NULL;',
':P368_SUCURSAL_DESDE:=NULL;',
':P368_SUCURSAL_HASTA:=NULL;',
':P368_COD_ART_CORTO_INI:=NULL;',
':P368_COD_ART_CORTO_FIN:=NULL;',
':P368_COD_RUBRO:=NULL;',
':P368_COD_FAMILIA:=NULL;',
':P368_COD_LINEA:=NULL;',
':P368_COD_MARCA:=NULL;',
':P368_CLIENTE:=NULL;',
':P368_ARTICULO_DESDE:=NULL;',
':P368_ARTICULO_HASTA:=NULL;',
':P368_TIP_COMPROBANTE:=NULL;',
':P368_PERIODO:=''1'';',
':P368_FEC_INI:=SYSDATE;',
':P368_FEC_FIN:=SYSDATE;',
':P368_TIPO:=''1'';',
':P368_RESUMIDO_CONTABILIDAD:=''N'';',
':P368_IND_REPORTE:=0;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp.component_end;
end;
/
