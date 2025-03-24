prompt --application/pages/page_00661
begin
--   Manifest
--     PAGE: 00661
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
 p_id=>661
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>unistr('Reporte de Control de Garant\00EDas - RPCONGAR')
,p_alias=>'RPCONGAR'
,p_step_title=>unistr('Reporte de Control de Garant\00EDas')
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function verDetalle(p_tip, p_ser, p_nro){',
'    var filtro = apex.item("P661_VER_GRAL").getValue();',
'    console.log(filtro);',
'    if (filtro == ''N''){',
'        apex.item("P661_TIP_COMPROBANTE_DET").setValue(p_tip);',
'        apex.item("P661_SER_COMPROBANTE_DET").setValue(p_ser);',
'        apex.item("P661_NRO_COMPROBANTE_DET").setValue(p_nro);',
'    } else {        ',
'        apex.item("P661_TIP_COMPROBANTE_DET").setValue('''');',
'        apex.item("P661_SER_COMPROBANTE_DET").setValue('''');',
'        apex.item("P661_NRO_COMPROBANTE_DET").setValue('''');',
'    }',
'}'))
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
,p_last_upd_yyyymmddhh24miss=>'20250318101746'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(231716046408262212)
,p_plug_name=>unistr('Reporte de Control de Garant\00EDas')
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40108275410263656)
,p_plug_display_sequence=>960
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(231718252215262234)
,p_plug_name=>unistr('Informe de Registros de Garant\00EDas de Facturas')
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--accent1:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40108275410263656)
,p_plug_display_sequence=>970
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT FEC_COMPROBANTE,',
'       --COD_SUCURSAL,',
'      -- DESC_SUCURSAL,',
'       TIP_COMPROBANTE,',
'       SER_COMPROBANTE,',
'       nro_comprobante,',
'       --COD_CLIENTE,',
'       NOM_CLIENTE,',
'       --COD_ARTICULO,',
'       --DESC_ARTICULO,',
unistr('       sum(cantidad) cs_cantidad_factura, ------------ agregu\00E9 las cols virtuales'),
'       --VENDEDOR,',
unistr('       count(NRO_GARANTIA) cs_garantia, ---------------- agregu\00E9 las cols virtuales'),
'       --COD_USUARIO,',
'       --FEC_ALTA fecha_alta_garantia, ',
'       guarda, ',
'       nc, ',
'       anulada,',
unistr('       sum(cantidad) - nvl(count(NRO_GARANTIA), 0) cf_pendientes, ---------------- agregu\00E9 las cols virtuales'),
'       NULL DETALLE,',
'       CASE ',
'        WHEN ANULADA = ''S'' THEN ''NEGRO''',
'        WHEN NC = ''S'' THEN ''CYAN''        ',
'        WHEN sum(cantidad) - nvl(count(NRO_GARANTIA), 0) > 0 AND guarda = ''S'' THEN ''AZUL''',
'        WHEN sum(cantidad) - nvl(count(NRO_GARANTIA), 0) > 0 THEN ''ROJO''             ',
'       END ESTADO ',
'  FROM (select cc.fec_comprobante,',
'               --NVL(CD.COD_SUCURSAL, cc.cod_sucursal) cod_sucursal,',
'               --su.descripcion desc_sucursal,',
'               cc.tip_comprobante,',
'               cc.ser_comprobante,',
'               --cd.nro_lote,',
'               --cc.columna,',
'               cc.nro_comprobante,',
'               --NVL(CC.NRO_COMPROBANTE_REF, 0) ref,',
'               --cc.cod_cliente,',
'                SUBSTR(pc.nombre,0,30) ||''-''||',
'               case   when nvl(cc.estado, ''P'') <> ''A''  then null ELSE ''(ANULADO)'' END nom_cliente,',
'               --cc.cod_moneda,',
'              -- mo.descripcion desc_moneda,',
'               --mo.siglas,',
'               --cc.tip_cambio,',
'               --cc.cod_vendedor,',
'               --tc.descripcion desc_comprobante,',
'               --mo.decimales,',
'               --cd.cod_articulo,',
'               --ar.descripcion desc_articulo,',
'               --cd.precio_unitario,',
'               --cd.descuento,',
'               --ar.cod_rubro,',
'               --ru.descripcion desc_rubro,',
'               --cc.cambio_moneda_precio,',
'               --pg.valor cod_moneda_base,',
'               decode(tc.stock,',
'                      ''R'',',
'                      nvl(cd.cantidad, 0),',
'                      nvl(cd.cantidad, 0) * -1) cantidad,',
'               /*decode(tc.stock,',
'                      ''R'',',
'                      nvl((ar.largo_cm / 100 * ar.ancho_cm / 100 * ar.alto_cm / 100),',
'                          0),',
'                      nvl((ar.largo_cm / 100 * ar.ancho_cm / 100 * ar.alto_cm / 100),',
'                          0)) *',
'               decode(tc.stock,',
'                      ''R'',',
'                      nvl(cd.cantidad, 0),',
'                      nvl(cd.cantidad, 0) * -1) volumencm3,*/',
'               --((s1.largo_cm/100*s1.ancho_cm/100*s1.alto_cm/100)',
'               ',
'               /*decode(tc.saldos,',
'                      ''R'',',
'                      nvl(cd.total_iva, 0) * -1,',
'                      nvl(cd.total_iva, 0)) total_iva,',
'               decode(tc.saldos,',
'                      ''R'',',
'                      nvl(cd.monto_total, 0) * -1,',
'                      nvl(cd.monto_total, 0)) monto_total,',
'               round(decode(tc.saldos,',
'                            ''R'',',
'                            nvl(cc.tot_gravadas, 0) * -1,',
'                            nvl(cc.tot_gravadas, 0)),',
'                     nvl(mo.decimales, 0)) tot_gravadas,',
'               round(decode(tc.saldos,',
'                            ''R'',',
'                            nvl(cc.tot_exentas, 0) * -1,',
'                            nvl(cc.tot_exentas, 0)),',
'                     nvl(mo.decimales, 0)) tot_exentas,',
'               round(decode(tc.saldos,',
'                            ''R'',',
'                            nvl(cc.tot_iva, 0) * -1,',
'                            nvl(cc.tot_iva, 0)),',
'                     nvl(mo.decimales, 0)) tot_iva,',
'               round(decode(tc.saldos,',
'                            ''R'',',
'                            (nvl(cc.descuento, 0) +',
'                            nvl(cc.tot_descuento_det, 0)) * -1,',
'                            nvl(cc.descuento, 0) +',
'                            nvl(cc.tot_descuento_det, 0)),',
'                     nvl(mo.decimales, 0)) descuento_det,*/',
'               /*round(decode(tc.saldos,',
'                            ''R'',',
'                            nvl(cc.tot_comprobante, 0) * -1,',
'                            nvl(cc.tot_comprobante, 0)),',
'                     nvl(mo.decimales, 0)) tot_comprobante,',
'               nvl(cd.porc_descuento, 0) porcentaje_desc,*/',
'               /*cc.hora_alta,',
'               CC.TIP_COMPROBANTE_REF,',
'               CC.SER_COMPROBANTE_REF,',
'               CC.NRO_COMPROBANTE_REF,',
'               (select cv.descripcion',
'                  from cc_condiciones_ventas cv',
'                 WHERE :P661_EJECUTAR_REPORTE is not null and  cv.cod_empresa = cc.cod_empresa',
'                   and cv.cod_condicion_venta = cc.cod_condicion_venta) condicion_venta,',
'              ',
'               (select ltrim(rtrim(nvl(p.nombre, p.nomb_fantasia)))',
'                  from fv_vendedores v, personas p',
'                 WHERE :P661_EJECUTAR_REPORTE is not null and  v.cod_empresa = cc.cod_empresa',
'                   and v.cod_vendedor = cc.cod_vendedor',
'                   and v.cod_persona = p.cod_persona) vendedor,*/',
'               NULL NRO_GARANTIA,',
'               --NULL COD_USUARIO,',
'              -- NULL FEC_ALTA,',
'                nvl((select distinct cab.ind_guarda',
'                     from vt_pedidos_cabecera cab',
'                    WHERE :P661_EJECUTAR_REPORTE is not null and  cab.cod_empresa = cc.cod_empresa',
'                      and cab.tip_comprobante = cc.tip_comprobante_ref',
'                      and cab.ser_comprobante = cc.ser_comprobante_ref',
'                      and cab.nro_comprobante = cc.nro_comprobante_ref),',
'                   ''N'') GUARDA,',
'               nvl((select distinct ''S''',
'                     from vt_comprobantes_cabecera nc',
'                    WHERE :P661_EJECUTAR_REPORTE is not null and  cc.cod_empresa = nc.cod_empresa',
'                      and cc.tip_comprobante = nc.tip_comprobante_ref',
'                      and cc.ser_comprobante = nc.ser_comprobante_ref',
'                      and cc.nro_comprobante = nc.nro_comprobante_ref),',
'                   ''N'') nc,',
'case   when nvl(cc.estado, ''P'') <> ''A''  then ''N'' ELSE ''S'' END ANULADA',
'        ',
'          from vt_comprobantes_cabecera cc,',
'               cc_clientes              cl,',
'               personas                 pc,',
'               monedas                  mo,',
'               sucursales               su,',
'               tipos_comprobantes       tc,',
'               vt_comprobantes_detalle  cd,',
'               st_articulos             ar,',
'               st_rubro                 ru,',
'               parametros_generales     pg,',
'               fv_vendedores            fv,',
'               zonas_geograficas        zo,',
'               st_familia               fa,',
'               st_linea                 li,',
'               st_marcas                ma',
'         WHERE :P661_EJECUTAR_REPORTE is not null and  cc.cod_empresa = :p_cod_empresa',
'           and cc.fec_comprobante between',
'               nvl(to_date(:P661_P_FEC_INICIAL, ''DD/MM/YYYY''), to_date(''01/01/0001'', ''DD/MM/YYYY'')) and',
'               nvl(to_date(:P661_P_FEC_FINAL, ''DD/MM/YYYY''), to_date(''31/12/2099'', ''DD/MM/YYYY''))',
'           and (:P661_P_COD_SUCURSAL IS NULL OR',
'               nvl(cd.cod_sucursal, cc.cod_sucursal) = :P661_P_COD_SUCURSAL)',
'         ',
'           and (:P661_P_COD_CLIENTE IS NULL OR cc.cod_cliente = :P661_P_COD_CLIENTE)',
'           and (:P661_P_NRO_LOTE is null or cd.nro_lote = :P661_P_NRO_LOTE)',
'           and ((:P661_P_COD_ARTICULO_DES IS NULL OR :P661_P_COD_ARTICULO_HAS IS NULL) OR',
'               ar.cod_articulo between :P661_P_COD_ARTICULO_DES and',
'               :P661_P_COD_ARTICULO_HAS)',
'           and (:P661_P_COD_VENDEDOR IS NULL OR cc.cod_vendedor = :P661_P_COD_VENDEDOR)',
'           and (:P661_P_COD_CATEGORIA IS NULL OR',
'               AR.COD_CATEGORIA = :P661_P_COD_CATEGORIA)',
'                ',
'           and (:P661_P_COD_RUBRO IS NULL OR ar.cod_rubro = :P661_P_COD_RUBRO)',
'           and (:P661_P_COD_FAMILIA IS NULL OR ar.cod_familia = :P661_P_COD_FAMILIA)',
'           and (:P661_P_COD_MARCA IS NULL OR ar.cod_marca = :P661_P_COD_MARCA)',
'           and (:P661_P_COD_LINEA IS NULL OR ar.cod_linea = :P661_P_COD_LINEA)',
'           and (:P661_P_COD_ZONA IS NULL OR fv.cod_zona = :P661_P_COD_ZONA)',
'           AND (:P661_P_COD_LISTA IS NULL OR CC.cod_LISTA_PRECIO = :P661_P_COD_LISTA)',
'           AND (:P661_P_CONDICION_VENTA IS NULL OR',
'               CC.cod_CONDICION_VENTA = :P661_P_COD_CONDICION)',
'           and ((nvl(:P661_P_EXCLUIDO, ''a'') = ''E'' and',
'               (:P661_TIP_COMPROBANTE IS NULL OR',
'               cc.tip_comprobante <> :P661_TIP_COMPROBANTE)) OR',
'               (nvl(:P661_P_EXCLUIDO, ''a'') <> ''E'' and',
'               (:P661_TIP_COMPROBANTE IS NULL OR',
'               cc.tip_comprobante = :P661_TIP_COMPROBANTE)))',
'           and cc.cod_empresa = cl.cod_empresa',
'           and cc.cod_cliente = cl.cod_cliente',
'           and cl.cod_persona = pc.cod_persona',
'           and cc.cod_empresa = tc.cod_empresa',
'      ',
'           and cc.tip_comprobante = tc.tip_comprobante',
'           and cc.cod_empresa = su.cod_empresa',
'           and (fv.cod_tipo_grupo = :P661_P_COD_TIPO_GRUPO or',
'               :P661_P_COD_TIPO_GRUPO is null)',
'           and NVL(CD.COD_SUCURSAL, cc.cod_sucursal) = su.cod_sucursal',
'           and cc.cod_moneda = mo.cod_moneda',
'           and (cc.cod_empresa = cd.cod_empresa and',
'               cc.tip_comprobante = cd.tip_comprobante and',
'               cc.ser_comprobante = cd.ser_comprobante and',
'               cc.nro_comprobante = cd.nro_comprobante)',
'           and fv.cod_empresa = cc.cod_empresa',
'           AND (MO.COD_MONEDA = :P661_P_COD_MONEDA OR :P661_P_COD_MONEDA IS NULL)',
'           and (cl.tip_cliente = :P661_P_TIP_CLIENTE or :P661_P_TIP_CLIENTE is null)',
'           and fv.cod_vendedor = cc.cod_vendedor',
'           and (:P661_P_COD_SECTOR IS NULL OR cc.cod_sector = :P661_P_COD_SECTOR)',
'           and fv.cod_zona = zo.cod_zona(+)',
'           and cd.cod_empresa = ar.cod_empresa',
'           and cd.cod_articulo = ar.cod_articulo',
'           and ar.cod_empresa = ru.cod_empresa(+)',
'           and ar.cod_rubro = ru.cod_rubro(+)',
'           AND AR.COD_EMPRESA=FA.COD_EMPRESA',
'           and ar.cod_familia = fa.cod_familia(+)',
'           AND AR.COD_EMPRESA=LI.COD_EMPRESA',
'           and ar.cod_linea = li.cod_linea(+)',
'           and ar.cod_marca = ma.cod_marca(+)',
'           and pg.parametro = ''COD_MONEDA_BASE''',
'        ',
'        UNION ALL',
'        select cc.fec_comprobante,',
'              /* NVL(CD.COD_SUCURSAL, cc.cod_sucursal) cod_sucursal,',
'               su.descripcion desc_sucursal,*/',
'               cc.tip_comprobante,',
'               cc.ser_comprobante,',
'              /* cd.nro_lote,',
'               cc.columna,*/',
'               cc.nro_comprobante,',
'             /*  null ref,',
'               cc.cod_cliente,*/',
'              SUBSTR(pc.nombre,0,30) ||''-''||',
'               case   when nvl(cc.estado, ''P'') <> ''A''  then null ELSE ''(ANULADO)'' END nom_cliente,',
'               /*cc.cod_moneda,',
'               mo.descripcion desc_moneda,',
'               mo.siglas,',
'               cc.tip_cambio,',
'               cc.cod_vendedor,',
'               tc.descripcion desc_comprobante,',
'               mo.decimales,',
'               cd.cod_articulo,',
'               ar.descripcion desc_articulo,',
'               0 precio_unitario,',
'               0 descuento,',
'               ar.cod_rubro,',
'               ru.descripcion desc_rubro,',
'               cc.cambio_moneda_precio,',
'               pg.valor cod_moneda_base,*/',
'               0 cantidad,',
'               /*0 volumencm3,',
'               ',
'               0                      total_iva,',
'               0                      monto_total,',
'               0                      tot_gravadas,',
'               0                      tot_exentas,',
'               0                      tot_iva,',
'               0                      descuento_det,',
'               0                      tot_comprobante,',
'               0                      porcentaje_desc,',
'               null                   hora_alta,',
'               CC.TIP_COMPROBANTE_REF,',
'               CC.SER_COMPROBANTE_REF,',
'               CC.NRO_COMPROBANTE_REF,',
'               null                   condicion_venta,',
'               ',
'               null            vendedor,*/',
'               GD.NRO_GARANTIA,',
'               /*GD.COD_USUARIO,',
'               GD.FEC_ALTA,*/',
'                nvl((select distinct cab.ind_guarda',
'                     from vt_pedidos_cabecera cab',
'                    WHERE :P661_EJECUTAR_REPORTE is not null and  cab.cod_empresa = cc.cod_empresa',
'                      and cab.tip_comprobante = cc.tip_comprobante_ref',
'                      and cab.ser_comprobante = cc.ser_comprobante_ref',
'                      and cab.nro_comprobante = cc.nro_comprobante_ref),',
'                   ''N'') GUARDA,',
'               nvl((select distinct ''S''',
'                     from vt_comprobantes_cabecera nc',
'                    WHERE :P661_EJECUTAR_REPORTE is not null and  cc.cod_empresa = nc.cod_empresa',
'                      and cc.tip_comprobante = nc.tip_comprobante_ref',
'                      and cc.ser_comprobante = nc.ser_comprobante_ref',
'                      and cc.nro_comprobante = nc.nro_comprobante_ref),',
'                   ''N'') nc,',
'case  when  nvl(cc.estado, ''P'') <> ''A''  then ''N'' ELSE ''S'' END ANULADA',
'        ',
'          from vt_comprobantes_cabecera  cc,',
'               cc_clientes               cl,',
'               personas                  pc,',
'               monedas                   mo,',
'               sucursales                su,',
'               tipos_comprobantes        tc,',
'               vt_comprobantes_detalle   cd,',
'               st_articulos              ar,',
'               st_rubro                  ru,',
'               parametros_generales      pg,',
'               fv_vendedores             fv,',
'               zonas_geograficas         zo,',
'               st_familia                fa,',
'               st_linea                  li,',
'               st_marcas                 ma,',
'               st_garantia_productos_det gd',
'         WHERE :P661_EJECUTAR_REPORTE is not null and  cc.cod_empresa = :p_cod_empresa',
'           and cc.fec_comprobante between',
'               nvl(to_date(:P661_P_FEC_INICIAL,''dd/mm/yyyy''), to_date(''01/01/0001'', ''DD/MM/YYYY'')) and',
'               nvl(to_date(:P661_P_FEC_FINAL,''dd/mm/yyyy''), to_date(''31/12/2099'', ''DD/MM/YYYY''))',
'           and (:P661_P_COD_SUCURSAL IS NULL OR',
'               nvl(cd.cod_sucursal, cc.cod_sucursal) = :P661_P_COD_SUCURSAL)',
'        ',
'           and (:P661_P_COD_CLIENTE IS NULL OR cc.cod_cliente = :P661_P_COD_CLIENTE)',
'           and (:P661_P_NRO_LOTE is null or cd.nro_lote = :P661_P_NRO_LOTE)',
'           and ((:P661_P_COD_ARTICULO_DES IS NULL OR :P661_P_COD_ARTICULO_HAS IS NULL) OR',
'               ar.cod_articulo between :P661_P_COD_ARTICULO_DES and',
'               :P661_P_COD_ARTICULO_HAS)',
'           and (:P661_P_COD_VENDEDOR IS NULL OR cc.cod_vendedor = :P661_P_COD_VENDEDOR)',
'           and (:P661_P_COD_CATEGORIA IS NULL OR',
'               AR.COD_CATEGORIA = :P661_P_COD_CATEGORIA)',
'           and (:P661_P_COD_RUBRO IS NULL OR ar.cod_rubro = :P661_P_COD_RUBRO)',
'           and (:P661_P_COD_FAMILIA IS NULL OR ar.cod_familia = :P661_P_COD_FAMILIA)',
'           and (:P661_P_COD_MARCA IS NULL OR ar.cod_marca = :P661_P_COD_MARCA)',
'           and (:P661_P_COD_LINEA IS NULL OR ar.cod_linea = :P661_P_COD_LINEA)',
'           and (:P661_P_COD_ZONA IS NULL OR fv.cod_zona = :P661_P_COD_ZONA)',
'           AND (:P661_P_COD_LISTA IS NULL OR CC.cod_LISTA_PRECIO = :P661_P_COD_LISTA)',
'           AND (:P661_P_CONDICION_VENTA IS NULL OR',
'               CC.cod_CONDICION_VENTA = :P661_P_COD_CONDICION)',
'              ',
'           and cc.cod_empresa = cl.cod_empresa',
'           and cc.cod_cliente = cl.cod_cliente',
'           and cl.cod_persona = pc.cod_persona',
'           and cc.cod_empresa = tc.cod_empresa',
' ',
'           and gd.cod_empresa = cd.cod_empresa',
'           and gd.tip_comprobante = cd.tip_comprobante',
'           and gd.ser_comprobante = cd.ser_comprobante',
'           and gd.nro_comprobante = cd.nro_comprobante',
'           and gd.cod_articulo = cd.cod_articulo',
'           and ar.cod_rubro = ''PR''',
'         ',
'           and cc.tip_comprobante = tc.tip_comprobante',
'           and cc.cod_empresa = su.cod_empresa',
'           and (fv.cod_tipo_grupo = :P661_P_COD_TIPO_GRUPO or',
'               :P661_P_COD_TIPO_GRUPO is null)',
'           and NVL(CD.COD_SUCURSAL, cc.cod_sucursal) = su.cod_sucursal',
'           and cc.cod_moneda = mo.cod_moneda',
'           and (cc.cod_empresa = cd.cod_empresa and',
'               cc.tip_comprobante = cd.tip_comprobante and',
'               cc.ser_comprobante = cd.ser_comprobante and',
'               cc.nro_comprobante = cd.nro_comprobante)',
'           and fv.cod_empresa = cc.cod_empresa',
'           AND (MO.COD_MONEDA = :P661_P_COD_MONEDA OR :P661_P_COD_MONEDA IS NULL)',
'           and (cl.tip_cliente = :P661_P_TIP_CLIENTE or :P661_P_TIP_CLIENTE is null)',
'           and fv.cod_vendedor = cc.cod_vendedor',
'           and (:P661_P_COD_SECTOR IS NULL OR cc.cod_sector = :P661_P_COD_SECTOR)',
'           and fv.cod_zona = zo.cod_zona(+)',
'           and cd.cod_empresa = ar.cod_empresa',
'           and cd.cod_articulo = ar.cod_articulo',
'           and ar.cod_empresa = ru.cod_empresa(+)',
'           and ar.cod_rubro = ru.cod_rubro(+)',
'             AND AR.COD_EMPRESA=FA.COD_EMPRESA',
'           and ar.cod_familia = fa.cod_familia(+)',
'           AND AR.COD_EMPRESA=LI.COD_EMPRESA',
'           and ar.cod_familia = fa.cod_familia(+)',
'           and ar.cod_linea = li.cod_linea(+)',
'           and ar.cod_marca = ma.cod_marca(+)',
'           and pg.parametro = ''COD_MONEDA_BASE''',
'           and ar.cod_rubro = ''PR''',
'         group by cc.cod_empresa,cc.fec_comprobante,',
'                  NVL(CD.COD_SUCURSAL, cc.cod_sucursal),',
'                  su.descripcion,',
'                  cc.tip_comprobante,',
'                  cc.ser_comprobante,',
'                  cd.nro_lote,',
'                  cc.columna,',
'                  cc.nro_comprobante,',
'                  cc.cod_cliente,',
'                  ltrim(rtrim(nvl(pc.nombre, pc.nomb_fantasia))),',
'                  cc.cod_moneda,',
'                  mo.descripcion,',
'                  mo.siglas,',
'                  cc.tip_cambio,',
'                  cc.cod_vendedor,',
'                  pc.nombre,',
'                  tc.descripcion,',
'                  mo.decimales,',
'                  cd.cod_articulo,',
'                  ar.descripcion,',
'                  ar.cod_rubro,',
'                  ru.descripcion,',
'                  cc.cambio_moneda_precio,',
'                  pg.valor,',
'                  ',
'                  CC.TIP_COMPROBANTE_REF,',
'                  CC.SER_COMPROBANTE_REF,',
'                  CC.NRO_COMPROBANTE_REF,',
'                  GD.NRO_GARANTIA,',
'                  GD.COD_USUARIO,',
'                  GD.FEC_ALTA,',
'                  GD.IND_DEVUELTO,',
'                  GD.ANULADO, cc.estado) ',
' WHERE :P661_EJECUTAR_REPORTE is not null and  TIP_COMPROBANTE not in (''NCR'')',
' GROUP BY FEC_COMPROBANTE,',
'       TIP_COMPROBANTE,',
'       SER_COMPROBANTE,',
'       nro_comprobante,',
'       NOM_CLIENTE,',
'        guarda,',
'        nc, ',
'       anulada'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P661_EJECUTAR_REPORTE,P661_P_FEC_INICIAL, P661_P_FEC_FINAL, P661_P_COD_SUCURSAL, P661_P_COD_CLIENTE, P661_P_NRO_LOTE, P661_P_COD_ARTICULO_DES,:P661_P_COD_ARTICULO_HAS, P661_P_COD_VENDEDOR, P661_P_COD_CATEGORIA, P661_P_COD_RUBRO, P661_P_COD_FAMILIA, P'
||'661_P_COD_MARCA, P661_P_COD_LINEA, P661_P_COD_ZONA, P661_P_COD_LISTA, P661_P_CONDICION_VENTA, P661_P_COD_CONDICION, P661_TIP_COMPROBANTE, P661_P_COD_TIPO_GRUPO, P661_P_COD_MONEDA, P661_P_TIP_CLIENTE, P661_P_COD_SECTOR, P661_P_EXCLUIDO'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>unistr('Informe de Registros de Garant\00EDas de Facturas')
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
 p_id=>wwv_flow_imp.id(231718361443262235)
,p_max_row_count=>'1000000'
,p_no_data_found_message=>'No se encontraron registros.'
,p_allow_report_saving=>'N'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_rows_per_page=>'N'
,p_show_filter=>'N'
,p_show_sort=>'N'
,p_show_control_break=>'N'
,p_show_highlight=>'N'
,p_show_computation=>'N'
,p_show_aggregate=>'N'
,p_show_chart=>'N'
,p_show_group_by=>'N'
,p_show_pivot=>'N'
,p_show_flashback=>'N'
,p_show_help=>'N'
,p_download_formats=>'CSV:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'JUANASIS'
,p_internal_uid=>231718361443262235
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(231718722959262239)
,p_db_column_name=>'TIP_COMPROBANTE'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Tipo '
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(231718891934262240)
,p_db_column_name=>'SER_COMPROBANTE'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Serie '
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(231718939182262241)
,p_db_column_name=>'NRO_COMPROBANTE'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>unistr('N\00FAmero ')
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(231719151671262243)
,p_db_column_name=>'NOM_CLIENTE'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Cliente'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(231718441337262236)
,p_db_column_name=>'FEC_COMPROBANTE'
,p_display_order=>90
,p_column_identifier=>'A'
,p_column_label=>'Fecha'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(232393835712632101)
,p_db_column_name=>'GUARDA'
,p_display_order=>190
,p_column_identifier=>'P'
,p_column_label=>'Guarda'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(233121586538005507)
,p_db_column_name=>'CS_CANTIDAD_FACTURA'
,p_display_order=>220
,p_column_identifier=>'S'
,p_column_label=>'Factura'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(233121629463005508)
,p_db_column_name=>'CS_GARANTIA'
,p_display_order=>230
,p_column_identifier=>'T'
,p_column_label=>unistr('Garant\00EDa')
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(233121743248005509)
,p_db_column_name=>'CF_PENDIENTES'
,p_display_order=>240
,p_column_identifier=>'U'
,p_column_label=>'Pendiente'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(233122802295005520)
,p_db_column_name=>'DETALLE'
,p_display_order=>250
,p_column_identifier=>'V'
,p_column_label=>'Detalle'
,p_column_link=>'javascript:verDetalle(''#TIP_COMPROBANTE#'',''#SER_COMPROBANTE#'',''#NRO_COMPROBANTE#'')'
,p_column_linktext=>'<span class="fa fa-eye" aria-hidden="true"></span>'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(233125643182005548)
,p_db_column_name=>'NC'
,p_display_order=>260
,p_column_identifier=>'W'
,p_column_label=>'Nc'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(233125729852005549)
,p_db_column_name=>'ANULADA'
,p_display_order=>270
,p_column_identifier=>'X'
,p_column_label=>'Anulada'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(234944914082993820)
,p_db_column_name=>'ESTADO'
,p_display_order=>280
,p_column_identifier=>'Y'
,p_column_label=>'Estado'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(232404734455633038)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'2324048'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>10
,p_report_columns=>'DETALLE:TIP_COMPROBANTE:SER_COMPROBANTE:NRO_COMPROBANTE:GUARDA:NOM_CLIENTE:FEC_COMPROBANTE:CS_CANTIDAD_FACTURA:CS_GARANTIA:CF_PENDIENTES'
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
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(236539373843106961)
,p_report_id=>wwv_flow_imp.id(232404734455633038)
,p_name=>'GUARDA'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'ESTADO'
,p_operator=>'='
,p_expr=>'AZUL'
,p_condition_sql=>' (case when ("ESTADO" = #APXWS_EXPR#) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# = ''AZUL''  '
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_row_bg_color=>'#cce5ff'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(236539705151106961)
,p_report_id=>wwv_flow_imp.id(232404734455633038)
,p_name=>'NC'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'ESTADO'
,p_operator=>'='
,p_expr=>'CYAN'
,p_condition_sql=>' (case when ("ESTADO" = #APXWS_EXPR#) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# = ''CYAN''  '
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_row_bg_color=>'#e0ffff'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(236540136588106962)
,p_report_id=>wwv_flow_imp.id(232404734455633038)
,p_name=>'ANULADA'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'ESTADO'
,p_operator=>'='
,p_expr=>'NEGRO'
,p_condition_sql=>' (case when ("ESTADO" = #APXWS_EXPR#) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# = ''NEGRO''  '
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_row_bg_color=>'#fff5ce'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(236540580901106962)
,p_report_id=>wwv_flow_imp.id(232404734455633038)
,p_name=>'PENDIENTES'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'ESTADO'
,p_operator=>'='
,p_expr=>'ROJO'
,p_condition_sql=>' (case when ("ESTADO" = #APXWS_EXPR#) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# = ''ROJO''  '
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_row_bg_color=>'#ffd6d2'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(232398133460632144)
,p_plug_name=>'variables'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>1000
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(233029585910964012)
,p_plug_name=>'AUXILIARES'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>1010
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(233125898848005550)
,p_plug_name=>'Detalle'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>980
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(233121840273005510)
,p_plug_name=>'Detalle &P661_TIP_COMPROBANTE_DET. &P661_SER_COMPROBANTE_DET. &P661_NRO_COMPROBANTE_DET.'
,p_parent_plug_id=>wwv_flow_imp.id(233125898848005550)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>990
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/*select cc.tip_comprobante,',
'               cc.ser_comprobante,',
'               cc.nro_comprobante,',
'               cd.cod_articulo,',
'               ar.descripcion desc_articulo,               ',
'                NULL NRO_GARANTIA,',
'               NULL COD_USUARIO,',
'               NULL FEC_ALTA',
'        ',
'          from vt_comprobantes_cabecera cc,',
'               cc_clientes              cl,',
'               personas                 pc,',
'               monedas                  mo,',
'               sucursales               su,',
'               tipos_comprobantes       tc,',
'               vt_comprobantes_detalle  cd,',
'               st_articulos             ar,',
'               st_rubro                 ru,',
'               parametros_generales     pg,',
'               fv_vendedores            fv,',
'               zonas_geograficas        zo,',
'               st_familia               fa,',
'               st_linea                 li,',
'               st_marcas                ma',
'         where cc.cod_empresa = 1',
'          ',
'           and cc.cod_empresa = cl.cod_empresa',
'           and cc.cod_cliente = cl.cod_cliente',
'           and cl.cod_persona = pc.cod_persona',
'           and cc.cod_empresa = tc.cod_empresa',
'  and CC.tip_comprobante = :P661_TIP_COMPROBANTE_DET',
' and CC.ser_comprobante = :P661_SER_COMPROBANTE_DET',
' and CC.nro_comprobante = :P661_NRO_COMPROBANTE_DET',
'           and cc.tip_comprobante = tc.tip_comprobante',
'           and cc.cod_empresa = su.cod_empresa',
'',
'           and NVL(CD.COD_SUCURSAL, cc.cod_sucursal) = su.cod_sucursal',
'           and cc.cod_moneda = mo.cod_moneda',
'           and (cc.cod_empresa = cd.cod_empresa and',
'               cc.tip_comprobante = cd.tip_comprobante and',
'               cc.ser_comprobante = cd.ser_comprobante and',
'               cc.nro_comprobante = cd.nro_comprobante)',
'           and fv.cod_empresa = cc.cod_empresa',
'',
'           and fv.cod_vendedor = cc.cod_vendedor',
'',
'             and fv.cod_zona = zo.cod_zona(+)',
'           and cd.cod_empresa = ar.cod_empresa',
'           and cd.cod_articulo = ar.cod_articulo',
'           and ar.cod_empresa = ru.cod_empresa(+)',
'           and ar.cod_rubro = ru.cod_rubro(+)',
'           AND AR.COD_EMPRESA=FA.COD_EMPRESA',
'           and ar.cod_familia = fa.cod_familia(+)',
'           AND AR.COD_EMPRESA=LI.COD_EMPRESA',
'           and ar.cod_linea = li.cod_linea(+)',
'           and ar.cod_marca = ma.cod_marca(+)',
'           and pg.parametro = ''COD_MONEDA_BASE''',
'           and :P661_EJECUTAR_REPORTE is not null',
'        ',
'        UNION ALL*/',
'        select cc.tip_comprobante,',
'               cc.ser_comprobante,',
'               cc.nro_comprobante,',
'                cd.cod_articulo,',
'               ar.descripcion desc_articulo,',
'              GD.NRO_GARANTIA,',
'               GD.COD_USUARIO,',
'               GD.FEC_ALTA',
'        ',
'          from vt_comprobantes_cabecera  cc,',
'               cc_clientes               cl,',
'               personas                  pc,',
'               monedas                   mo,',
'               sucursales                su,',
'               tipos_comprobantes        tc,',
'               vt_comprobantes_detalle   cd,',
'               st_articulos              ar,',
'               st_rubro                  ru,',
'               parametros_generales      pg,',
'               fv_vendedores             fv,',
'               zonas_geograficas         zo,',
'               st_familia                fa,',
'               st_linea                  li,',
'               st_marcas                 ma,',
'               st_garantia_productos_det gd',
'         where cc.cod_empresa = 1         ',
'           and cc.cod_empresa = cl.cod_empresa',
'           and cc.cod_cliente = cl.cod_cliente',
'           and cl.cod_persona = pc.cod_persona',
'           and cc.cod_empresa = tc.cod_empresa',
'',
'           and gd.cod_empresa = cd.cod_empresa',
'           and gd.tip_comprobante = cd.tip_comprobante',
'           and gd.ser_comprobante = cd.ser_comprobante',
'           and gd.nro_comprobante = cd.nro_comprobante',
'           and gd.cod_articulo = cd.cod_articulo',
'           and ar.cod_rubro = ''PR''',
'           and ((GD.tip_comprobante = :P661_TIP_COMPROBANTE_DET) OR :P661_VER_GRAL = ''S'')',
'           and ((GD.ser_comprobante = :P661_SER_COMPROBANTE_DET) OR :P661_VER_GRAL = ''S'')',
'           and ((GD.nro_comprobante = :P661_NRO_COMPROBANTE_DET) OR :P661_VER_GRAL = ''S'')',
'           and cc.tip_comprobante = tc.tip_comprobante',
'           and cc.cod_empresa = su.cod_empresa',
'',
'           and NVL(CD.COD_SUCURSAL, cc.cod_sucursal) = su.cod_sucursal',
'           and cc.cod_moneda = mo.cod_moneda',
'           and (cc.cod_empresa = cd.cod_empresa and',
'               cc.tip_comprobante = cd.tip_comprobante and',
'               cc.ser_comprobante = cd.ser_comprobante and',
'               cc.nro_comprobante = cd.nro_comprobante)',
'           and fv.cod_empresa = cc.cod_empresa',
'           and fv.cod_vendedor = cc.cod_vendedor',
'           and fv.cod_zona = zo.cod_zona(+)',
'           and cd.cod_empresa = ar.cod_empresa',
'           and cd.cod_articulo = ar.cod_articulo',
'           and ar.cod_empresa = ru.cod_empresa(+)',
'           and ar.cod_rubro = ru.cod_rubro(+)',
'             AND AR.COD_EMPRESA=FA.COD_EMPRESA',
'           and ar.cod_familia = fa.cod_familia(+)',
'           AND AR.COD_EMPRESA=LI.COD_EMPRESA',
'           and ar.cod_familia = fa.cod_familia(+)',
'           and ar.cod_linea = li.cod_linea(+)',
'           and ar.cod_marca = ma.cod_marca(+)',
'           and pg.parametro = ''COD_MONEDA_BASE''',
'           and ar.cod_rubro = ''PR''',
'           and :P661_EJECUTAR_REPORTE is not null',
'           and GD.NRO_GARANTIA is not null',
'           and (:P661_VER_GRAL = ''N'' OR ( cc.fec_comprobante between',
'                                               to_date(:P661_P_FEC_INICIAL,''dd/mm/yyyy'') and to_date(:P661_P_FEC_FINAL,''dd/mm/yyyy'')',
'                                           and (:P661_P_COD_SUCURSAL IS NULL OR',
'                                               nvl(cd.cod_sucursal, cc.cod_sucursal) = :P661_P_COD_SUCURSAL)        ',
'                                           and (:P661_P_COD_CLIENTE IS NULL OR cc.cod_cliente = :P661_P_COD_CLIENTE)',
'                                           and (:P661_P_NRO_LOTE is null or cd.nro_lote = :P661_P_NRO_LOTE)',
'                                           and ((:P661_P_COD_ARTICULO_DES IS NULL OR :P661_P_COD_ARTICULO_HAS IS NULL) OR',
'                                               ar.cod_articulo between :P661_P_COD_ARTICULO_DES and',
'                                               :P661_P_COD_ARTICULO_HAS)',
'                                           and (:P661_P_COD_VENDEDOR IS NULL OR cc.cod_vendedor = :P661_P_COD_VENDEDOR)',
'                                           and (:P661_P_COD_CATEGORIA IS NULL OR',
'                                               AR.COD_CATEGORIA = :P661_P_COD_CATEGORIA)',
'                                           and (:P661_P_COD_RUBRO IS NULL OR ar.cod_rubro = :P661_P_COD_RUBRO)',
'                                           and (:P661_P_COD_FAMILIA IS NULL OR ar.cod_familia = :P661_P_COD_FAMILIA)',
'                                           and (:P661_P_COD_MARCA IS NULL OR ar.cod_marca = :P661_P_COD_MARCA)',
'                                           and (:P661_P_COD_LINEA IS NULL OR ar.cod_linea = :P661_P_COD_LINEA)',
'                                           and (:P661_P_COD_ZONA IS NULL OR fv.cod_zona = :P661_P_COD_ZONA)',
'                                           AND (:P661_P_COD_LISTA IS NULL OR CC.cod_LISTA_PRECIO = :P661_P_COD_LISTA)',
'                                           AND (:P661_P_CONDICION_VENTA IS NULL OR',
'                                               CC.cod_CONDICION_VENTA = :P661_P_COD_CONDICION)',
'                                           and (fv.cod_tipo_grupo = :P661_P_COD_TIPO_GRUPO or',
'                                               :P661_P_COD_TIPO_GRUPO is null)',
'                                           AND (MO.COD_MONEDA = :P661_P_COD_MONEDA OR :P661_P_COD_MONEDA IS NULL)',
'                                           and (cl.tip_cliente = :P661_P_TIP_CLIENTE or :P661_P_TIP_CLIENTE is null)',
'                                           and (:P661_P_COD_SECTOR IS NULL OR cc.cod_sector = :P661_P_COD_SECTOR)))'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P661_VER_GRAL,P661_TIP_COMPROBANTE_DET,P661_SER_COMPROBANTE_DET,P661_NRO_COMPROBANTE_DET,P661_EJECUTAR_REPORTE,P661_P_FEC_INICIAL, P661_P_FEC_FINAL, P661_P_COD_SUCURSAL, P661_P_COD_CLIENTE, P661_P_NRO_LOTE, P661_P_COD_ARTICULO_DES,:P661_P_COD_ARTICUL'
||'O_HAS, P661_P_COD_VENDEDOR, P661_P_COD_CATEGORIA, P661_P_COD_RUBRO, P661_P_COD_FAMILIA, P661_P_COD_MARCA, P661_P_COD_LINEA, P661_P_COD_ZONA, P661_P_COD_LISTA, P661_P_CONDICION_VENTA, P661_P_COD_CONDICION, P661_TIP_COMPROBANTE, P661_P_COD_TIPO_GRUPO, '
||'P661_P_COD_MONEDA, P661_P_TIP_CLIENTE, P661_P_COD_SECTOR, P661_P_EXCLUIDO'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Detalle Comprobante &P661_TIP_COMPROBANTE_DET. &P661_SER_COMPROBANTE_DET. &P661_NRO_COMPROBANTE_DET.'
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
 p_id=>wwv_flow_imp.id(233121972111005511)
,p_max_row_count=>'1000000'
,p_no_data_found_message=>'Seleccione un comprobante para visualizar el detalle.'
,p_allow_report_saving=>'N'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_select_columns=>'N'
,p_show_rows_per_page=>'N'
,p_show_filter=>'N'
,p_show_sort=>'N'
,p_show_control_break=>'N'
,p_show_highlight=>'N'
,p_show_computation=>'N'
,p_show_aggregate=>'N'
,p_show_chart=>'N'
,p_show_group_by=>'N'
,p_show_pivot=>'N'
,p_show_flashback=>'N'
,p_show_help=>'N'
,p_download_formats=>'CSV:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'MBLANCO'
,p_internal_uid=>233121972111005511
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(233122028759005512)
,p_db_column_name=>'TIP_COMPROBANTE'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Tip Comprobante'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(233122117632005513)
,p_db_column_name=>'SER_COMPROBANTE'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Ser Comprobante'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(233122244019005514)
,p_db_column_name=>'NRO_COMPROBANTE'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Nro Comprobante'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(233122321091005515)
,p_db_column_name=>'COD_ARTICULO'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>unistr('C\00F3digo Art\00EDculo')
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(233122488057005516)
,p_db_column_name=>'DESC_ARTICULO'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>unistr('Descripci\00F3n')
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(233122599221005517)
,p_db_column_name=>'NRO_GARANTIA'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>unistr('Garant\00EDa')
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(233122681197005518)
,p_db_column_name=>'COD_USUARIO'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Usuario'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(233122713862005519)
,p_db_column_name=>'FEC_ALTA'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Fecha'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(234101977120499371)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'2341020'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'COD_ARTICULO:DESC_ARTICULO:NRO_GARANTIA:FEC_ALTA:COD_USUARIO:'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(232397814226632141)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(231716046408262212)
,p_button_name=>'bt_ejecutar'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--simple:t-Button--iconRight:t-Button--hoverIconPush'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Ejecutar'
,p_button_position=>'NEXT'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-refresh'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(233029448511964011)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(231716046408262212)
,p_button_name=>'BT_LIMPIAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--simple:t-Button--iconRight:t-Button--hoverIconPush'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Limpiar'
,p_button_position=>'PREVIOUS'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(231715878413262210)
,p_name=>'P661_P_FEC_INICIAL'
,p_item_sequence=>290
,p_item_plug_id=>wwv_flow_imp.id(231716046408262212)
,p_item_default=>'SYSDATE-1'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Fecha Inicial'
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>30
,p_colspan=>4
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
 p_id=>wwv_flow_imp.id(231715907750262211)
,p_name=>'P661_P_FEC_FINAL'
,p_item_sequence=>300
,p_item_plug_id=>wwv_flow_imp.id(231716046408262212)
,p_item_default=>'SYSDATE-1'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Fecha Final'
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>4
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
 p_id=>wwv_flow_imp.id(231716112539262213)
,p_name=>'P661_P_COD_SUCURSAL'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(231716046408262212)
,p_prompt=>unistr('C\00F3digo Sucursal')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_SUCURSALES'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT cod_sucursal||'' - ''||descripcion L, ',
'         cod_sucursal V',
'    FROM sucursales ',
'   WHERE cod_empresa = :P_COD_EMPRESA',
'ORDER BY descripcion'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'TODOS'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'Y'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(231716267569262214)
,p_name=>'P661_P_COD_CLIENTE'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_imp.id(231716046408262212)
,p_prompt=>'Cliente'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_CLIENTES_RPCONGAR'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ltrim( rtrim( nvl( p.nombre, p.nomb_fantasia ) ) ) nombre, c.cod_cliente ',
'from cc_clientes c, personas p ',
'where c.cod_empresa = :P_COD_EMPRESA',
'and c.cod_persona = p.cod_persona ',
'order by 1'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(231716300451262215)
,p_name=>'P661_P_COD_VENDEDOR'
,p_item_sequence=>270
,p_item_plug_id=>wwv_flow_imp.id(231716046408262212)
,p_prompt=>'Vendedor'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LVVENDEDORES'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT v.cod_vendedor||'' - ''||nvl( v.descripcion, p.nombre ) L, ',
'         v.cod_vendedor V, p.nombre',
'    FROM fv_vendedores v, personas p ',
'   WHERE v.cod_empresa = :p_cod_empresa ',
'     AND v.cod_persona = p.cod_persona ',
'     AND v.estado = ''A'' ',
'ORDER BY 1'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_colspan=>4
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
 p_id=>wwv_flow_imp.id(231716427902262216)
,p_name=>'P661_P_COD_ARTICULO_DES'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(231716046408262212)
,p_prompt=>'Articulo Desde'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_DES_ARTICULO'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'--VTRFAPRO',
'  SELECT cod_articulo||'' - ''||descripcion D, ',
'         cod_articulo R',
'    FROM st_articulos ',
'   WHERE cod_empresa = :P_COD_EMPRESA',
'ORDER BY lpad( cod_articulo, 30, '' '' );'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'TODOS'
,p_cSize=>30
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(231716510068262217)
,p_name=>'P661_P_COD_RUBRO'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(231716046408262212)
,p_prompt=>'Rubro'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_RUBROS_RPCONGAR'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select descripcion, cod_rubro ',
'from st_rubro ',
'where cod_empresa = :P_COD_EMPRESA',
'order by descripcion'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'TODOS'
,p_cSize=>30
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(231716617588262218)
,p_name=>'P661_P_NRO_LOTE'
,p_item_sequence=>320
,p_item_plug_id=>wwv_flow_imp.id(231716046408262212)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(231716774852262219)
,p_name=>'P661_P_COD_ARTICULO_HAS'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(231716046408262212)
,p_prompt=>unistr('Art\00EDculo Hasta')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_HAS_ARTICULO'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'--VTRFAPRO',
'  SELECT cod_articulo||'' - ''||descripcion D, ',
'         cod_articulo R',
'    FROM st_articulos ',
'   WHERE cod_empresa = :P_COD_EMPRESA',
'ORDER BY lpad( cod_articulo, 30, '' '' );'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'TODOS'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(231716893867262220)
,p_name=>'P661_P_COD_CATEGORIA'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(231716046408262212)
,p_prompt=>unistr('Categor\00EDa')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_CATEGORIAS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT cod_categoria||'' - '' ||descripcion D, ',
'         cod_categoria R',
'    FROM st_categorias',
'  ',
'  WHERE COD_EMPRESA=:P_COD_EMPRESA',
'  AND ESTADO IN(''S'',''A'');',
' '))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(231716963614262221)
,p_name=>'P661_P_COD_FAMILIA'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(231716046408262212)
,p_prompt=>unistr('C\00F3digo Familia')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_FAMILIA'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT cod_familia||'' - ''||descripcion D, ',
'       cod_familia R',
'  FROM st_familia',
'  WHERE COD_EMPRESA=:P_COD_EMPRESA',
'  AND ESTADO=''S'';'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'TODOS'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(231717047498262222)
,p_name=>'P661_P_COD_LISTA'
,p_item_sequence=>350
,p_item_plug_id=>wwv_flow_imp.id(231716046408262212)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(231717114056262223)
,p_name=>'P661_P_COD_LINEA'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(231716046408262212)
,p_prompt=>unistr('C\00F3digo L\00EDnea')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_DES_LINEA'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT cod_linea||'' - ''||descripcion D,',
'         cod_linea R',
'    FROM st_linea ',
'ORDER BY 2;'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'TODAS'
,p_cSize=>30
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(231717247640262224)
,p_name=>'P661_P_COD_CONDICION'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_imp.id(231716046408262212)
,p_prompt=>unistr('Condici\00F3n Venta')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_CONDICION_RPCONGAR'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
' select descripcion, cod_condicion_venta ',
'',
'      from cc_condiciones_ventas ',
'      where  cod_empresa=:P_COD_EMPRESA',
''))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(231717303672262225)
,p_name=>'P661_P_COD_MARCA'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(231716046408262212)
,p_prompt=>unistr('C\00F3digo Marca')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_DES_MARCA'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT cod_marca R, ',
'         cod_marca||'' - ''||descripcion D',
'    FROM st_marcas ',
'ORDER BY 2;'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'TODAS'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(231717468238262226)
,p_name=>'P661_P_COD_ZONA'
,p_item_sequence=>340
,p_item_plug_id=>wwv_flow_imp.id(231716046408262212)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(231717501194262227)
,p_name=>'P661_P_CONDICION_VENTA'
,p_item_sequence=>360
,p_item_plug_id=>wwv_flow_imp.id(231716046408262212)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(231717653033262228)
,p_name=>'P661_P_COD_TIPO_GRUPO'
,p_item_sequence=>370
,p_item_plug_id=>wwv_flow_imp.id(231716046408262212)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(231717751671262229)
,p_name=>'P661_P_COD_MONEDA'
,p_item_sequence=>380
,p_item_plug_id=>wwv_flow_imp.id(231716046408262212)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
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
 p_id=>wwv_flow_imp.id(231717825557262230)
,p_name=>'P661_P_TIP_CLIENTE'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_imp.id(231716046408262212)
,p_prompt=>'Tipo Cliente'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_TIP_CLIENTE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT cod_tip_cliente||'' - ''||descripcion D, ',
'         cod_tip_cliente R',
'    FROM cc_tipo_cliente ',
'ORDER BY 1;'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(231718092075262232)
,p_name=>'P661_P_COD_SECTOR'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(231716046408262212)
,p_prompt=>unistr('C\00F3digo Sector')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LVSECTORES'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT cod_sector||'' - ''||descripcion D, ',
'         cod_sector R',
'    FROM sectores ',
'   WHERE cod_empresa = :P_COD_EMPRESA ',
'ORDER BY descripcion;'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(231797266893814512)
,p_name=>'P661_TIP_COMPROBANTE'
,p_item_sequence=>330
,p_item_plug_id=>wwv_flow_imp.id(231716046408262212)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(231797345929814513)
,p_name=>'P661_P_EXCLUIDO'
,p_item_sequence=>390
,p_item_plug_id=>wwv_flow_imp.id(231716046408262212)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(231797451869814514)
,p_name=>'P661_P_DESC_SUCURSAL'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(231716046408262212)
,p_prompt=>'Sucursal'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(231797722999814517)
,p_name=>'P661_MSG_ERR'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(233029585910964012)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(231797843108814518)
,p_name=>'P661_P_DESC_SECTOR'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(231716046408262212)
,p_prompt=>'Sector'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(231798113612814521)
,p_name=>'P661_P_DESC_ARTICULO_DES'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(231716046408262212)
,p_prompt=>unistr('Descripci\00F3n Art\00EDculo Desde')
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(231798486357814524)
,p_name=>'P661_P_DESC_ARTICULO_HAS'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(231716046408262212)
,p_prompt=>unistr('Descripci\00F3n Art\00EDculo Hasta')
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(231798793361814527)
,p_name=>'P661_DESC_RUBRO'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(231716046408262212)
,p_prompt=>unistr('Descripci\00F3n Rubro')
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(231799322955814533)
,p_name=>'P661_P_DESC_FAMILIA'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(231716046408262212)
,p_prompt=>unistr('Descripci\00F3n Familia')
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(231799665667814536)
,p_name=>'P661_P_DESC_LINEA'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(231716046408262212)
,p_prompt=>unistr('Descripci\00F3n Linea')
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(231799968792814539)
,p_name=>'P661_DESC_MARCA'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(231716046408262212)
,p_prompt=>unistr('Descripci\00F3n Marca')
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(231800316683814543)
,p_name=>'P661_P_DESC_CATEGORIA'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(231716046408262212)
,p_prompt=>unistr('Descripci\00F3n Categor\00EDa')
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(231800945987814549)
,p_name=>'P661_P_DESC_CLIENTE'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_imp.id(231716046408262212)
,p_prompt=>'Nombre Cliente'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(232398292046632145)
,p_name=>'P661_EJECUTAR_REPORTE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(233029585910964012)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(233028576027964002)
,p_name=>'P661_P_NOM_CLIENTE'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_imp.id(231716046408262212)
,p_prompt=>unistr('Descripci\00F3n Cliente')
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(233028846910964005)
,p_name=>'P661_P_DESC_CONDICION_VENTA'
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_imp.id(231716046408262212)
,p_prompt=>unistr('Descripci\00F3n Condici\00F3n Venta')
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(233029117578964008)
,p_name=>'P661_P_NOM_VENDEDOR'
,p_item_sequence=>280
,p_item_plug_id=>wwv_flow_imp.id(231716046408262212)
,p_prompt=>'Nombre Vendedor'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(233029646949964013)
,p_name=>'P661_TIP_CONTADO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(232398133460632144)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(233029709723964014)
,p_name=>'P661_TIP_CREDITO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(232398133460632144)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(233029865528964015)
,p_name=>'P661_TIP_NOTACRE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(232398133460632144)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(233029926608964016)
,p_name=>'P661_TIP_TICKET'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(232398133460632144)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(233122993531005521)
,p_name=>'P661_TIP_COMPROBANTE_DET'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(233125898848005550)
,p_prompt=>'Tipo'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(233123072656005522)
,p_name=>'P661_SER_COMPROBANTE_DET'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(233125898848005550)
,p_prompt=>'Serie'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(233123194987005523)
,p_name=>'P661_NRO_COMPROBANTE_DET'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(233125898848005550)
,p_prompt=>unistr('N\00FAmero')
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(234945020815993821)
,p_name=>'P661_VER_GRAL'
,p_item_sequence=>310
,p_item_plug_id=>wwv_flow_imp.id(231716046408262212)
,p_item_default=>'N'
,p_prompt=>'Mostrar detalle general'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#:margin-top-md'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(232397951780632142)
,p_name=>'da_ejecutar'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(232397814226632141)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(234944637937993817)
,p_event_id=>wwv_flow_imp.id(232397951780632142)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P661_MSG_ERR := null;',
'IF :P661_P_FEC_INICIAL IS NOT NULL AND :P661_P_FEC_FINAL IS NOT NULL THEN',
'    IF TO_DATE(:P661_P_FEC_INICIAL,''dd/mm/yyyy'') > TO_DATE(:P661_P_FEC_FINAL,''dd/mm/yyyy'') THEN',
'        :P661_MSG_ERR := ''La fecha final debe ser mayor que la fecha inicial.'';',
'    END IF;    ',
'ELSE',
'    :P661_MSG_ERR := ''Debe completar las fechas desde y hasta para continuar.'';',
'END IF;'))
,p_attribute_02=>'P661_P_FEC_INICIAL,P661_P_FEC_FINAL'
,p_attribute_03=>'P661_MSG_ERR'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(234944705824993818)
,p_event_id=>wwv_flow_imp.id(232397951780632142)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P661_MSG_ERR.'
,p_attribute_03=>'information'
,p_attribute_06=>'Aceptar'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P661_MSG_ERR'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(232398439438632147)
,p_event_id=>wwv_flow_imp.id(232397951780632142)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P661_EJECUTAR_REPORTE := 1;',
':P661_TIP_COMPROBANTE_DET := null;',
':P661_SER_COMPROBANTE_DET := null;',
':P661_NRO_COMPROBANTE_DET := null;'))
,p_attribute_03=>'P661_EJECUTAR_REPORTE,P661_TIP_COMPROBANTE_DET,P661_SER_COMPROBANTE_DET,P661_NRO_COMPROBANTE_DET'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P661_MSG_ERR'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(232398036788632143)
,p_event_id=>wwv_flow_imp.id(232397951780632142)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(231718252215262234)
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P661_MSG_ERR'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(234944446263993815)
,p_event_id=>wwv_flow_imp.id(232397951780632142)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(233121840273005510)
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P661_MSG_ERR'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(231797580799814515)
,p_name=>'DA_SUCURSAL'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P661_P_COD_SUCURSAL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(231797626739814516)
,p_event_id=>wwv_flow_imp.id(231797580799814515)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P661_P_COD_SUCURSAL IS NOT NULL THEN',
'  BEGIN',
'    select descripcion',
'      into :P661_P_DESC_SUCURSAL',
'      from sucursales',
'     where cod_empresa = :P_COD_EMPRESA',
'       and cod_sucursal = :P661_P_COD_SUCURSAL;',
'  EXCEPTION',
'    when no_data_found then',
'      :P661_P_DESC_SUCURSAL := NULL;',
unistr('      :P661_MSG_ERR := ''No se encuentra el c\00F3digo de sucursal.'';'),
'',
'    when others then',
'      :P661_P_DESC_SUCURSAL := NULL;',
'      APEX_DEBUG.ERROR(''Error en la tabla de Sucursales ''||sqlerrm);',
'',
'  END;',
'ELSE',
'  :P661_P_DESC_SUCURSAL := NULL;',
'END IF;'))
,p_attribute_02=>'P661_P_COD_SUCURSAL'
,p_attribute_03=>'P661_P_DESC_SUCURSAL,P661_MSG_ERR'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(231797999731814519)
,p_name=>'DA_SECTOR'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P661_P_COD_SECTOR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(231798027744814520)
,p_event_id=>wwv_flow_imp.id(231797999731814519)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P661_P_COD_SECTOR IS NOT NULL THEN',
'  BEGIN',
'    select descripcion',
'      into :P661_P_DESC_SECTOR',
'      from sectores',
'     where cod_empresa = :P_COD_EMPRESA',
'       and cod_sector = :P661_P_COD_SECTOR;',
'  EXCEPTION',
'    when no_data_found then',
'      :P661_P_DESC_SECTOR := NULL;',
unistr('      :P661_MSG_ERR := ''No se encuentra el c\00F3digo de sector.'';'),
'',
'    when others then',
'      :P661_P_DESC_SUCURSAL := NULL;',
'      APEX_DEBUG.ERROR(''Error en la tabla de Sectores ''||sqlerrm);',
'',
'  END;',
'ELSE',
'  :P661_P_DESC_SUCURSAL := NULL;',
'END IF;'))
,p_attribute_02=>'P661_P_COD_SECTOR'
,p_attribute_03=>'P661_P_DESC_SECTOR,P661_MSG_ERR'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(231798297897814522)
,p_name=>'DA_ARTICULO_DES'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P661_P_COD_ARTICULO_DES'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(231798302798814523)
,p_event_id=>wwv_flow_imp.id(231798297897814522)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P661_P_COD_ARTICULO_DES IS NOT NULL THEN',
'  BEGIN',
'    select descripcion',
'      into :P661_P_DESC_ARTICULO_DES',
'      from st_articulos',
'     where cod_empresa = :P_COD_EMPRESA',
'       and cod_articulo = :P661_P_COD_ARTICULO_DES;',
'  EXCEPTION',
'    when no_data_found then',
'      :P661_P_DESC_ARTICULO_DES := NULL;',
unistr('      :P661_MSG_ERR := ''No se encuentra el c\00F3digo del art\00EDculo.'';'),
'',
'    when others then',
'      :P661_P_DESC_ARTICULO_DES := NULL;',
unistr('      APEX_DEBUG.ERROR (''Error en la tabla de Art\00EDculos ''||sqlerrm);'),
'',
'  END;',
'ELSE',
'  :P661_P_DESC_ARTICULO_DES := NULL;',
'END IF;'))
,p_attribute_02=>'P661_P_COD_ARTICULO_DES'
,p_attribute_03=>'P661_P_DESC_ARTICULO_DES,P661_MSG_ERR'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(231798574957814525)
,p_name=>'DA_ARTICULO_HAS'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P661_P_COD_ARTICULO_HAS'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(231798628926814526)
,p_event_id=>wwv_flow_imp.id(231798574957814525)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P661_P_COD_ARTICULO_HAS IS NOT NULL THEN',
'  BEGIN',
'    select descripcion',
'      into :P661_P_DESC_ARTICULO_HAS',
'      from st_articulos',
'     where cod_empresa = :P_COD_EMPRESA',
'       and cod_articulo = :P661_P_COD_ARTICULO_HAS;',
'  EXCEPTION',
'    when no_data_found then',
'      :P661_P_DESC_ARTICULO_HAS := NULL;',
unistr('      :P661_MSG_ERR := ''No se encuentra el c\00F3digo del art\00EDculo.'';'),
'',
'    when others then',
'      :P661_P_DESC_ARTICULO_HAS := NULL;',
unistr('      APEX_DEBUG.ERROR(''Error en la tabla de Art\00EDculos ''||sqlerrm);'),
'',
'  END;',
'ELSE',
'  :P661_P_DESC_ARTICULO_HAS := NULL;',
'END IF;'))
,p_attribute_02=>'P661_P_COD_ARTICULO_HAS'
,p_attribute_03=>'P661_P_DESC_ARTICULO_HAS,P661_MSG_ERR'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(231798824298814528)
,p_name=>'DA_RUBRO'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P661_P_COD_RUBRO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(231798909235814529)
,p_event_id=>wwv_flow_imp.id(231798824298814528)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P661_P_COD_RUBRO IS NOT NULL THEN',
'  BEGIN',
'    select descripcion',
'      into :P661_DESC_RUBRO',
'      from st_rubro',
'     where cod_empresa = :P_COD_EMPRESA',
'       and cod_rubro = :P661_P_COD_RUBRO;',
'  EXCEPTION',
'    when no_data_found then',
'      :P661_DESC_RUBRO := NULL;',
unistr('      :P661_MSG_ERR := ''No se encuentra el c\00F3digo de rubro.'';'),
'',
'    when others then',
'      :P661_DESC_RUBRO := NULL;',
'      APEX_DEBUG.ERROR(''Error en la tabla de Rubros ''||sqlerrm );',
'',
'  END;',
'ELSE',
'  :P661_DESC_RUBRO := NULL;',
'END IF;'))
,p_attribute_02=>'P661_P_COD_RUBRO'
,p_attribute_03=>'P661_DESC_RUBRO,P661_MSG_ERR'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(231799410863814534)
,p_name=>'DA_COD_FAMILIA'
,p_event_sequence=>70
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P661_P_COD_FAMILIA'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(231799583153814535)
,p_event_id=>wwv_flow_imp.id(231799410863814534)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P661_P_COD_FAMILIA is not null',
'then',
'   begin',
'      select descripcion',
'         into :P661_P_DESC_FAMILIA',
'         from st_familia',
'         where cod_familia = :P661_P_COD_FAMILIA ;',
'   exception',
'      when no_data_found then',
'         :P661_P_DESC_FAMILIA := null ;',
'         :P661_MSG_ERR :=  ''No se encuentra familia de articulo''  ;',
'--         raise form_trigger_failure ;',
'      when others then',
'         :P661_P_DESC_FAMILIA := null ;',
'         APEX_DEBUG.ERROR ( ''Error en la tabla de Familia '' || sqlerrm ) ;',
'--         raise form_trigger_failure ;',
'   end ;',
'end if;'))
,p_attribute_02=>'P661_P_COD_FAMILIA'
,p_attribute_03=>'P661_P_DESC_FAMILIA,P661_MSG_ERR'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(231799746595814537)
,p_name=>'DA_LINEA'
,p_event_sequence=>80
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P661_P_COD_LINEA'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(231799878092814538)
,p_event_id=>wwv_flow_imp.id(231799746595814537)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P661_P_COD_LINEA is not null then',
'',
'   begin',
'      select descripcion',
'         into :P661_P_DESC_LINEA',
'         from st_linea',
'         where cod_linea = :P661_P_COD_LINEA ;',
'   exception',
'      when no_data_found then',
'         :P661_P_DESC_LINEA := null ;',
'         :P661_MSG_ERR :=  ''No se encuentra linea de articulo''  ;',
'',
'      when others then',
'         :P661_P_DESC_LINEA := null ;',
unistr('         APEX_DEBUG.ERROR ( ''Error en la tabla de L\00EDneas '' || sqlerrm) ;'),
'',
'   end ;',
'else',
'   :P661_P_DESC_LINEA := null ;',
'end if ;'))
,p_attribute_02=>'P661_P_COD_LINEA'
,p_attribute_03=>'P661_P_DESC_LINEA,P661_MSG_ERR'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(231800068525814540)
,p_name=>'DA_MARCA'
,p_event_sequence=>90
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P661_P_COD_MARCA'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(231800119979814541)
,p_event_id=>wwv_flow_imp.id(231800068525814540)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P661_P_COD_MARCA is not null then',
'',
'   begin',
'      select descripcion',
'         into :P661_DESC_MARCA',
'         from st_marcas',
'         where cod_marca= :P661_P_COD_MARCA ;',
'   exception',
'      when no_data_found then',
'         :P661_DESC_MARCA := null ;',
'         :P661_MSG_ERR :=  ''No se encuentra marca'';',
'      when others then',
'         :P661_DESC_MARCA := null ;',
'         APEX_DEBUG.ERROR (''Error en la tabla de Marcas '' || sqlerrm ) ;',
'',
'   end ;',
'else',
'   :P661_DESC_MARCA := NULL ;',
'end if ;'))
,p_attribute_02=>'P661_P_COD_MARCA'
,p_attribute_03=>'P661_DESC_MARCA,P661_MSG_ERR'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(231800409332814544)
,p_name=>'DA_CATEGORIA'
,p_event_sequence=>100
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P661_P_COD_CATEGORIA'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(231800508841814545)
,p_event_id=>wwv_flow_imp.id(231800409332814544)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P661_P_COD_CATEGORIA is not null THEN',
'',
'	BEGIN',
'	  select descripcion',
'	    into :P661_P_DESC_CATEGORIA',
'	    from st_categorias',
'	   where cod_categoria = :P661_P_COD_CATEGORIA;',
'	EXCEPTION',
'	  when no_data_found then',
'	    :P661_P_DESC_CATEGORIA:= null;',
unistr('	    :P661_MSG_ERR := ''No se encuentra c\00F3digo de Categoria.'';'),
'	 ',
'	  when others then	',
'	   :P661_P_DESC_CATEGORIA :=null;',
'	    APEX_DEBUG.ERROR(''Error en la tabla Categorias ''||sqlerrm);',
'',
'	    END;',
'	ELSE',
'	  :P661_P_DESC_CATEGORIA := NULL;',
'	END IF;  '))
,p_attribute_02=>'P661_P_COD_CATEGORIA'
,p_attribute_03=>'P661_P_DESC_CATEGORIA,P661_MSG_ERR'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(231801088544814550)
,p_name=>'DA_CLIENTE'
,p_event_sequence=>110
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P661_P_COD_CLIENTE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(233028474790964001)
,p_event_id=>wwv_flow_imp.id(231801088544814550)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P661_P_COD_CLIENTE IS NOT NULL THEN',
'  BEGIN',
'    select ltrim( rtrim( nvl( p.nombre, p.nomb_fantasia ) ) )',
'      into :P661_P_DESC_CLIENTE',
'      from cc_clientes v, personas p',
'     where v.cod_empresa = :P_COD_EMPRESA',
'       and v.cod_cliente = :P661_P_COD_CLIENTE',
'       and v.cod_persona = p.cod_persona;',
'  EXCEPTION',
'    when no_data_found then',
'      :P661_P_DESC_CLIENTE := NULL;',
'      :P661_MSG_ERR := ''No se encuentra el codigo de cliente.'';',
'',
'    when others then',
'      :P661_P_DESC_CLIENTE := NULL;',
'      APEX_DEBUG.ERROR(''Error en la tabla de Clientes/Personas ''||sqlerrm);',
'',
'  END;',
'ELSE',
'  :P661_P_DESC_CLIENTE := NULL;',
'END IF;'))
,p_attribute_02=>'P661_P_COD_CLIENTE'
,p_attribute_03=>'P661_P_DESC_CLIENTE,P661_MSG_ERR'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(233028668970964003)
,p_name=>'DA_TIP_CLIENTE'
,p_event_sequence=>120
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P661_P_TIP_CLIENTE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(233028711190964004)
,p_event_id=>wwv_flow_imp.id(233028668970964003)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P661_P_TIP_CLIENTE IS NOT NULL THEN',
'  BEGIN',
'    select descripcion',
'      into :P661_P_DESC_CLIENTE',
'      from cc_tipo_cliente c',
'     where c.cod_tip_cliente = :P661_P_TIP_CLIENTE ;',
'  EXCEPTION',
'    when no_data_found then',
'      :P661_P_DESC_CLIENTE := NULL;',
'      :P661_MSG_ERR := ''No se encuentra tipo de cliente.'';',
'    when others then',
'      :P661_P_DESC_CLIENTE := NULL;',
'      APEX_DEBUG.ERROR(''Error en la tabla de tipos de clientes '' || sqlerrm);',
'',
'  END;',
'ELSE',
'  :P661_P_DESC_CLIENTE := NULL;',
'END IF;'))
,p_attribute_02=>'P661_P_TIP_CLIENTE'
,p_attribute_03=>'P661_P_NOM_CLIENTE,P661_MSG_ERR'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(233028968029964006)
,p_name=>'DA_COD_CONDICION'
,p_event_sequence=>130
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P661_P_COD_CONDICION'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(233029098165964007)
,p_event_id=>wwv_flow_imp.id(233028968029964006)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P661_P_COD_CONDICION IS NOT NULL THEN',
'  BEGIN',
'    select descripcion',
'      into :P661_P_DESC_CONDICION_VENTA',
'      from cc_condiciones_ventas ',
'      where  cod_empresa=:P_COD_EMPRESA',
'      and cod_condicion_venta = :P661_P_COD_CONDICION;',
'  EXCEPTION',
'    when no_data_found then',
'      :P661_P_DESC_CONDICION_VENTA := NULL;',
'      :P661_MSG_ERR := ''No se encuentra zona de cod_condicion_venta.'';',
'    when others then',
'      :P661_P_DESC_CONDICION_VENTA := NULL;',
'      APEX_DEBUG.ERROR(''Error en la tabla de cod_condicion_venta '' || sqlerrm);',
'',
'  END;',
'ELSE',
'  :P661_P_DESC_CONDICION_VENTA := NULL;',
'END IF;'))
,p_attribute_02=>'P661_P_COD_CONDICION'
,p_attribute_03=>'P661_P_DESC_CONDICION_VENTA,P661_MSG_ERR'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(233029233009964009)
,p_name=>'DA_COD_VENDEDOR'
,p_event_sequence=>140
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P661_P_COD_VENDEDOR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(233029328221964010)
,p_event_id=>wwv_flow_imp.id(233029233009964009)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P661_P_COD_VENDEDOR IS NOT NULL THEN',
'  BEGIN',
'    select ltrim( rtrim( nvl( p.nombre, p.nomb_fantasia ) ) )',
'      into :P661_P_NOM_VENDEDOR',
'      from fv_vendedores v, personas p',
'     where v.cod_empresa = :P_COD_EMPRESA',
'       and v.cod_vendedor = :P661_P_COD_VENDEDOR',
'       and v.cod_persona = p.cod_persona;',
'  EXCEPTION',
'    when no_data_found then',
'      :P661_P_NOM_VENDEDOR := NULL;',
'      :P661_MSG_ERR := ''No se encuentra el codigo del vendedor.'';',
'',
'    when others then',
'      :P661_P_NOM_VENDEDOR := NULL;',
'      APEX_DEBUG.ERROR(''Error en la tabla de Vendedores/Personas ''||sqlerrm);',
'',
'  END;',
'ELSE',
'  :P661_P_NOM_VENDEDOR := NULL;',
'END IF;'))
,p_attribute_02=>'P661_P_COD_VENDEDOR'
,p_attribute_03=>'P661_P_NOM_VENDEDOR,P661_MSG_ERR'
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
 p_id=>wwv_flow_imp.id(233030010221964017)
,p_name=>'DA_LIMPIAR'
,p_event_sequence=>150
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(233029448511964011)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(233030118842964018)
,p_event_id=>wwv_flow_imp.id(233030010221964017)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\00BFSeguro/a que desea limpiar los datos ingresados?')
,p_attribute_03=>'information'
,p_attribute_07=>'Aceptar'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(233030205492964019)
,p_event_id=>wwv_flow_imp.id(233030010221964017)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P661_P_COD_SUCURSAL := NULL;',
':P661_P_COD_SECTOR := NULL;',
':P661_P_COD_ARTICULO_DES := NULL;',
':P661_P_COD_ARTICULO_HAS := NULL;',
':P661_P_COD_RUBRO := NULL;',
':P661_P_COD_FAMILIA := NULL;',
':P661_P_COD_LINEA := NULL;',
':P661_P_COD_MARCA := NULL;',
':P661_P_COD_CATEGORIA := NULL;',
':P661_P_COD_CLIENTE := NULL;',
':P661_P_TIP_CLIENTE := NULL;',
':P661_P_COD_CONDICION := NULL;',
':P661_P_COD_VENDEDOR := NULL;',
':P661_P_FEC_FINAL:= SYSDATE;',
':P661_P_FEC_INICIAL := SYSDATE;',
':P661_TIP_COMPROBANTE_DET := null;',
':P661_SER_COMPROBANTE_DET := null;',
':P661_NRO_COMPROBANTE_DET := null;',
':P661_EJECUTAR_REPORTE := null;',
':P661_VER_GRAL := ''N'';'))
,p_attribute_03=>'P661_VER_GRAL,P661_EJECUTAR_REPORTE,P661_NRO_COMPROBANTE_DET,P661_SER_COMPROBANTE_DET,P661_TIP_COMPROBANTE_DET,P661_P_COD_SUCURSAL,P661_P_COD_SECTOR,P661_P_COD_ARTICULO_DES,P661_P_COD_ARTICULO_HAS,P661_P_COD_FAMILIA,P661_P_COD_RUBRO,P661_P_COD_LINEA,'
||'P661_P_COD_MARCA,P661_P_COD_CATEGORIA,P661_P_COD_CLIENTE,P661_P_TIP_CLIENTE,P661_P_COD_CONDICION,P661_P_COD_VENDEDOR,P661_P_FEC_INICIAL,P661_P_FEC_FINAL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(233030446797964021)
,p_event_id=>wwv_flow_imp.id(233030010221964017)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(231718252215262234)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(234944544263993816)
,p_event_id=>wwv_flow_imp.id(233030010221964017)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(233121840273005510)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(233030567484964022)
,p_name=>'DA_LOAD'
,p_event_sequence=>160
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(233030674176964023)
,p_event_id=>wwv_flow_imp.id(233030567484964022)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(231718252215262234)
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(233123241296005524)
,p_name=>'DA_REFRESH'
,p_event_sequence=>170
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P661_NRO_COMPROBANTE_DET'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'apex.item("P661_TIP_COMPROBANTE_DET").getValue() != "" && apex.item("P661_SER_COMPROBANTE_DET").getValue() != "" && apex.item("P661_NRO_COMPROBANTE_DET").getValue() != ""'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(233123311858005525)
,p_event_id=>wwv_flow_imp.id(233123241296005524)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(233121840273005510)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(234945143351993822)
,p_name=>'DA_VER_GRAL'
,p_event_sequence=>180
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P661_VER_GRAL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(234945276457993823)
,p_event_id=>wwv_flow_imp.id(234945143351993822)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P661_TIP_COMPROBANTE_DET := null;',
':P661_SER_COMPROBANTE_DET := null;',
':P661_NRO_COMPROBANTE_DET := null;'))
,p_attribute_02=>'P661_VER_GRAL'
,p_attribute_03=>'P661_TIP_COMPROBANTE_DET,P661_SER_COMPROBANTE_DET,P661_NRO_COMPROBANTE_DET'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(232398308952632146)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_INIT'
,p_process_sql_clob=>':P661_EJECUTAR_REPORTE := null;'
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(231800259381814542)
,p_process_sequence=>20
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'PR_INIT_1'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
);
wwv_flow_imp.component_end;
end;
/
