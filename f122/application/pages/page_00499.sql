prompt --application/pages/page_00499
begin
--   Manifest
--     PAGE: 00499
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
 p_id=>499
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Informe Incentivo por indicadores GPV-CAOBJGPV'
,p_alias=>'CAOBJGPV'
,p_step_title=>'Informe Incentivo por indicadores GPV-CAOBJGPV'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function descargarCAOBJEAGEN(p_cod_rubro_des,p_fec_fin,p_fecha_fin,p_cod_familia_has,p_cod_marca_des,p_cod_envase_des,p_fecha_ini,p_ruta_archivo,p_cod_marca_has,p_cod_empresa,p_cod_envase_has,p_cod_cliente,p_fec_final,p_cod_usuario,p_cod_motivo,p_cod'
||'_rubro_has,p_fec_ini,p_fec_inicial,p_cod_familia_des){',
'     var vURL = ''https://ngosaeca.com.py/reportes/rest_v2/reports/reports/CAOBJEAGEN.pdf?''',
'            + ''P_COD_RUBRO_DES=''+p_cod_rubro_des +''&P_FEC_FIN=''+p_fec_fin + ''&P_FECHA_FIN=''+p_fecha_fin+''&P_COD_FAMILIA_HAS=''+p_cod_familia_has',
'            +''&P_COD_MARCA_DES=''+p_cod_marca_des+''&P_COD_ENVASE_DES=''+p_cod_envase_des+''&P_FECHA_INI=''+p_fecha_ini+''&P_RUTA_ARCHIVO=''+p_ruta_archivo',
'            +''&P_COD_MARCA_HAS=''+p_cod_marca_has+''&P_COD_EMPRESA=''+p_cod_empresa+''&P_COD_ENVASE_HAS=''+p_cod_envase_has',
'            +''&P_COD_CLIENTE=''+p_cod_cliente+''&P_FEC_FINAL=''+p_fec_final+''&P_COD_USUARIO=''+p_cod_usuario+''&P_COD_MOTIVO=''+p_cod_motivo',
'            +''&P_COD_RUBRO_HAS=''+p_cod_rubro_has+''&P_FEC_INI=''+p_fec_ini+''&P_FEC_INICIAL=''+p_fec_inicial+''&P_COD_FAMILIA_DES=''+p_cod_familia_des',
'            +''&j_username=jasperadmin&j_password=jasperadmin'';',
'',
'    console.log(vURL);',
'    window.open(unescape(vURL.replace(/&amp;/g,''g'')),''_blank'');',
'}',
'',
'',
'',
'function descargarCAOBJEAGENDET(p_fecha_ini,p_fecha_fin,p_cod_usuario){',
'',
'    var vURL = ''https://ngosaeca.com.py/reportes/rest_v2/reports/reports/CAOBJEAGENDET.pdf?''',
'             +''P_FECHA_INI=''+p_fecha_ini+''&P_FECHA_FIN=''+p_fecha_fin+''&P_COD_USUARIO=''+p_cod_usuario',
'             +''&j_username=jasperadmin&j_password=jasperadmin'';',
'',
'    console.log(vURL);',
'    window.open(unescape(vURL.replace(/&amp;/g,''g'')),''_blank'');',
'',
'}',
'',
'function descargarCAOBJEAGENGASDET(p_fecha_ini,p_fecha_fin,p_cod_usuario){',
'',
'    var vURL = ''https://ngosaeca.com.py/reportes/rest_v2/reports/reports/CAOBJEAGENGASDET.pdf?''',
'             +''P_FECHA_INI=''+p_fecha_ini+''&P_FECHA_FIN=''+p_fecha_fin+''&P_COD_USUARIO=''+p_cod_usuario',
'             +''&j_username=jasperadmin&j_password=jasperadmin'';',
'',
'    console.log(vURL);',
'    window.open(unescape(vURL.replace(/&amp;/g,''g'')),''_blank'');',
'',
'}',
'',
'function descargarCAOBJEAGENGAS(p_fecha_ini,p_fecha_fin,p_cod_usuario){',
'',
'    var vURL = ''https://ngosaeca.com.py/reportes/rest_v2/reports/reports/CAOBJEAGENGAS.pdf?''',
'             +''P_FECHA_INI=''+p_fecha_ini+''&P_FECHA_FIN=''+p_fecha_fin+''&P_COD_USUARIO=''+p_cod_usuario',
'             +''&j_username=jasperadmin&j_password=jasperadmin'';',
'',
'    console.log(vURL);',
'    window.open(unescape(vURL.replace(/&amp;/g,''g'')),''_blank'');',
'',
'}',
'',
'function descargarCAOBJEAGENCORPO(p_cod_empresa,p_cod_cliente,p_cod_usuario,p_cod_motivo,p_fecha_ini,p_fecha_fin,p_fec_inicial,',
'                                    p_fec_final,p_fec_ini,p_fec_fin,p_cod_envase_des,p_cod_envase_has,p_cod_marca_des,p_cod_marca_has,',
'                                    p_cod_rubro_des,p_cod_rubro_has,p_cod_familia_des,p_cod_familia_has,p_ruta_archivo){',
'',
'    var vURL = ''https://ngosaeca.com.py/reportes/rest_v2/reports/reports/CAOBJEAGENCORPO.pdf?''',
'             + ''P_COD_RUBRO_DES=''+p_cod_rubro_des +''&P_FEC_FIN=''+p_fec_fin + ''&P_FECHA_FIN=''+p_fecha_fin+''&P_COD_FAMILIA_HAS=''+p_cod_familia_has',
'            +''&P_COD_MARCA_DES=''+p_cod_marca_des+''&P_COD_ENVASE_DES=''+p_cod_envase_des+''&P_FECHA_INI=''+p_fecha_ini+''&P_RUTA_ARCHIVO=''+p_ruta_archivo',
'            +''&P_COD_MARCA_HAS=''+p_cod_marca_has+''&P_COD_EMPRESA=''+p_cod_empresa+''&P_COD_ENVASE_HAS=''+p_cod_envase_has',
'            +''&P_COD_CLIENTE=''+p_cod_cliente+''&P_FEC_FINAL=''+p_fec_final+''&P_COD_USUARIO=''+p_cod_usuario+''&P_COD_MOTIVO=''+p_cod_motivo',
'            +''&P_COD_RUBRO_HAS=''+p_cod_rubro_has+''&P_FEC_INI=''+p_fec_ini+''&P_FEC_INICIAL=''+p_fec_inicial+''&P_COD_FAMILIA_DES=''+p_cod_familia_des',
'            +''&j_username=jasperadmin&j_password=jasperadmin'';',
'',
'    console.log(vURL);',
'    window.open(unescape(vURL.replace(/&amp;/g,''g'')),''_blank'');',
'',
'}',
'',
'function descargarCAOBJEAGENCORPODET(p_cod_empresa,p_cod_cliente,p_cod_usuario,p_cod_motivo,p_fecha_ini,p_fecha_fin,p_fec_inicial,',
'                                    p_fec_final,p_fec_ini,p_fec_fin,p_cod_envase_des,p_cod_envase_has,p_cod_marca_des,p_cod_marca_has,',
'                                    p_cod_rubro_des,p_cod_rubro_has,p_cod_familia_des,p_cod_familia_has,p_ruta_archivo){',
'',
'    var vURL = ''https://ngosaeca.com.py/reportes/rest_v2/reports/reports/CAOBJEAGENCORPODET.pdf?''',
'             + ''P_COD_RUBRO_DES=''+p_cod_rubro_des +''&P_FEC_FIN=''+p_fec_fin + ''&P_FECHA_FIN=''+p_fecha_fin+''&P_COD_FAMILIA_HAS=''+p_cod_familia_has',
'            +''&P_COD_MARCA_DES=''+p_cod_marca_des+''&P_COD_ENVASE_DES=''+p_cod_envase_des+''&P_FECHA_INI=''+p_fecha_ini+''&P_RUTA_ARCHIVO=''+p_ruta_archivo',
'            +''&P_COD_MARCA_HAS=''+p_cod_marca_has+''&P_COD_EMPRESA=''+p_cod_empresa+''&P_COD_ENVASE_HAS=''+p_cod_envase_has',
'            +''&P_COD_CLIENTE=''+p_cod_cliente+''&P_FEC_FINAL=''+p_fec_final+''&P_COD_USUARIO=''+p_cod_usuario+''&P_COD_MOTIVO=''+p_cod_motivo',
'            +''&P_COD_RUBRO_HAS=''+p_cod_rubro_has+''&P_FEC_INI=''+p_fec_ini+''&P_FEC_INICIAL=''+p_fec_inicial+''&P_COD_FAMILIA_DES=''+p_cod_familia_des',
'            +''&j_username=jasperadmin&j_password=jasperadmin'';',
'',
'    console.log(vURL);',
'    window.open(unescape(vURL.replace(/&amp;/g,''g'')),''_blank'');',
'',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'FCARDOZO'
,p_last_upd_yyyymmddhh24miss=>'20230508080825'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(148013615734078416)
,p_plug_name=>'VARIABLES'
,p_region_template_options=>'#DEFAULT#:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>990
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(148016688337078446)
,p_plug_name=>'Informe Incentivo por indicadores GPV-CAOBJGPV'
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>1010
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(148015325439078433)
,p_plug_name=>'PARAMETRO'
,p_parent_plug_id=>wwv_flow_imp.id(148016688337078446)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>1000
,p_plug_grid_column_span=>6
,p_plug_display_column=>4
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(148482849455869105)
,p_plug_name=>'REPORT - caobjeagen'
,p_parent_plug_id=>wwv_flow_imp.id(148016688337078446)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>1020
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select   ',
'TIPO , COD_USUARIO , NOMBRE , TRAMO, sum( TOTAL_APRO_RECHA) TOTAL_APRO_RECHA,sum( TOTAL_OTS) TOTAL_OTS,1 ORDEN,',
'sum(cantidad_proceso)cantida_proceso,''TODOS'' TIPO_COMISION',
'',
'from (SELECT',
'  TIPO,',
'  COD_USUARIO,',
'  nombre,',
'  TRAMO, SUM(CANTIDAD_APRO_RECHA)TOTAL_APRO_RECHA,',
'  SUM(TOTAL)TOTAL_OTS,',
'  sum(cantidad_proceso)cantidad_proceso',
'  FROM (select ',
'  CASE WHEN CL.TIP_CLIENTE IN (''1'',''27'') THEN',
'    ''PRESUPUESTOS''',
'    ELSE',
'  ''PRESUPUESTOS''',
'  END TIPO,per.nombre,',
'  ag.cod_usuario,',
'   sumar_Dias_Habiles(c.fec_presupuestado,  nvl(c.fec_aprobacion,c.fec_rechazo))dias,',
'   (SELECT OB.TRAMO_GESTION',
'   FROM CA_objetivos_call OB',
'   WHERE OB.COD_EMPRESA=C.COD_EMPRESA',
'   AND OB.TIPO_VENDEDOR=''TODOS''',
'   AND OB.TIPO=CASE WHEN CL.TIP_CLIENTE IN (''1'',''27'') THEN',
'    ''PRESUPUESTOS''',
'    ELSE',
'  ''PRESUPUESTOS''',
'  END',
'  AND  sumar_Dias_Habiles(c.fec_presupuestado,  nvl(c.fec_aprobacion,c.fec_rechazo)) BETWEEN OB.DIAS_INI AND DIAS_FIN',
'  )TRAMO,',
'   (SELECT OB.PORCENTAJE',
'   FROM CA_objetivos_call OB',
'   WHERE OB.COD_EMPRESA=C.COD_EMPRESA',
'   AND OB.TIPO_VENDEDOR=''TODOS''',
'   AND OB.TIPO=CASE WHEN CL.TIP_CLIENTE IN (''1'',''27'') THEN',
'    ''PRESUPUESTOS''',
'    ELSE',
'  ''PRESUPUESTOS''',
'  END',
'  AND  sumar_Dias_Habiles(c.fec_presupuestado,  nvl(c.fec_aprobacion,c.fec_rechazo)) BETWEEN OB.DIAS_INI AND DIAS_FIN',
'  )PORCENTAJE,',
' (SELECT OB.MONTO',
' FROM CA_objetivos_call OB',
' WHERE OB.COD_EMPRESA=C.COD_EMPRESA',
' AND OB.TIPO_VENDEDOR=''TODOS''',
' AND OB.TIPO=CASE WHEN CL.TIP_CLIENTE IN (''1'',''27'') THEN',
'  ''PRESUPUESTOS''',
'  ELSE',
'''PRESUPUESTOS''',
'END',
'AND  sumar_Dias_Habiles(c.fec_presupuestado,  nvl(c.fec_aprobacion,c.fec_rechazo)) BETWEEN OB.DIAS_INI AND DIAS_FIN',
')MONTO,',
' ',
' CASE WHEN nvl(c.fec_aprobacion,c.fec_rechazo) IS NOT NULL THEN 1 ELSE 0 END CANTIDAD_APRO_RECHA,',
'   1 TOTAL,',
'   CASE WHEN nvl(c.fec_aprobacion,c.fec_rechazo) IS NOT NULL AND',
'   (select max(sal.fec_movimiento)',
'                                     from ca_llamadas_salientes sal',
'                                    where sal.cod_empresa = c.cod_empresa',
'                                     ',
'                                      and sal.tip_comprobante =',
'                                          c.tip_comprobante',
'                                      and sal.ser_comprobante =',
'                                          c.ser_comprobante',
'                                      and sal.nro_comprobante =',
'                                          c.nro_comprobante',
'                                          AND SAL.COD_USUARIO=AG.COD_USUARIO',
'                                          and sal.cod_motivo in (''279'',''271'',''270'',''280'',''269'',''281'',''315'',''316'',''71'',''79'',''290'')) IS NOT NULL    THEN 1 ELSE 0 END cantidad_proceso',
'   from vt_ordenes_trabajo c, st_articulos a, monedas m,',
'    cc_clientes cl, personas p',
'        , CM_PROVEEDORES CL2, PERSONAS P2, ca_estado_ot es, vt_origenes ori,',
'         ca_agente_call ag, personas per, usuarios u',
'',
'  where c.cod_empresa = ''1''',
'',
'and ag.cod_empresa(+)=cl.cod_empresa',
'and ag.cod_vendedor(+)=cl.cod_vendedor',
'    and m.cod_moneda = ''1''',
'   AND CL2.COD_EMPRESA=C.COD_EMPRESA',
'   AND CL2.COD_PROVEEDOR=C.COD_PROVEEDOR',
'   AND CL2.COD_PERSONA=P2.COD_PERSONA',
'and u.cod_empresa=ag.cod_empresa',
'and u.cod_usuario=ag.cod_usuario',
'and u.cod_persona=per.cod_persona',
' AND C.Fec_Presupuestado between to_date(:P499_FEC_INI,''dd/mm/yyyy'') and to_date(:P499_FEC_FIN,''dd/mm/yyyy'')',
' and cl.cod_vendedor in (select fv.cod_vendedor',
' from fv_vendedores fv',
' where fv.cod_empresa=cl.cod_empresa',
' and fv.cod_vendedor=cl.cod_vendedor',
' AND FV.COD_TIPO_GRUPO NOT IN (bs_busca_parametro(''FV'',''VEN_CAT_DIV_CORP'')))',
'and nvl(c.ind_garantia,''N'')<>''S''   ',
' ',
' ',
'',
'  and ori.cod_empresa=c.cod_empresa',
'  and ori.cod_origen=c.cod_origen',
'  and ori.origen=''STNGO''',
'    AND C.COD_ORIGEN IN (''1'',''3'',''24'',''42'')',
'    AND NVL(C.ANULADO,''N'') NOT IN (''S'')',
' and NVL(u.Estado,''N'')=''A''',
'  and es.cod_empresa=c.cod_empresa',
'  and es.cod_estado=c.estado_presu',
'    and c.cod_empresa = cl.cod_empresa',
'    and c.cod_cliente = cl.cod_cliente',
'    and cl.cod_persona = p.cod_persona',
'    and c.cod_empresa = a.cod_empresa',
'    and c.cod_articulo = a.cod_articulo',
'   )',
'   WHERE (COD_USUARIO= :P499_COD_USUARIO_AUX OR :P499_COD_USUARIO_AUX IS NULL)',
'     and cod_usuario not in (''GASTROST'',''CALL4'')',
'   GROUP BY TIPO,',
'COD_USUARIO,TRAMO,nombre',
'UNION ALL',
'SELECT',
'TIPO,',
'COD_USUARIO,',
'nombre,',
'TRAMO, SUM(CANTIDAD_APRO_RECHA)TOTAL_APRO_RECHA,',
'SUM(TOTAL)TOTAL_OTS,',
'sum(cantidad_proceso)cantidad_proceso',
'',
'FROM (select ',
'CASE WHEN NVL(C.IND_GARANTIA,''N'')=''S'' THEN',
'  ''ENTREGADAS_GARANTIA''',
'  ELSE',
'''ENTREGADAS_PARTICULAR''',
'END TIPO,per.nombre,',
'ag.cod_usuario,',
'sumar_Dias_Habiles(  C.FEC_CIERRE,nvl(nvl(c.Fecha_Retirado, Fec_Entrega),c.fecha_abandonado))dias,',
' ',
' (SELECT OB.TRAMO_GESTION',
' FROM CA_objetivos_call OB',
' WHERE OB.COD_EMPRESA=C.COD_EMPRESA',
' AND OB.TIPO_VENDEDOR=''TODOS''',
' AND OB.TIPO=CASE WHEN NVL(C.IND_GARANTIA,''N'')=''S'' THEN',
'  ''ENTREGADAS_GARANTIA''',
'  ELSE',
'''ENTREGADAS_PARTICULAR''',
'END',
'AND   sumar_Dias_Habiles(  C.FEC_CIERRE,nvl(nvl(c.Fecha_Retirado, Fec_Entrega),c.fecha_abandonado)) BETWEEN OB.DIAS_INI AND DIAS_FIN',
')TRAMO,',
' (SELECT OB.PORCENTAJE',
' FROM CA_objetivos_call OB',
' WHERE OB.COD_EMPRESA=C.COD_EMPRESA',
' AND OB.TIPO_VENDEDOR=''TODOS''',
' AND OB.TIPO=CASE WHEN NVL(C.IND_GARANTIA,''N'')=''S'' THEN',
'  ''ENTREGADAS_GARANTIA''',
'  ELSE',
'''ENTREGADAS_PARTICULAR''',
'END',
'AND   sumar_Dias_Habiles(  C.FEC_CIERRE,nvl(nvl(c.Fecha_Retirado, Fec_Entrega),c.fecha_abandonado)) BETWEEN OB.DIAS_INI AND DIAS_FIN',
')PORCENTAJE,',
' (SELECT OB.MONTO',
' FROM CA_objetivos_call OB',
' WHERE OB.COD_EMPRESA=C.COD_EMPRESA',
' AND OB.TIPO_VENDEDOR=''TODOS''',
' AND OB.TIPO=CASE WHEN NVL(C.IND_GARANTIA,''N'')=''S'' THEN',
'  ''ENTREGADAS_GARANTIA''',
'  ELSE',
'''ENTREGADAS_PARTICULAR''',
'END',
'AND  sumar_Dias_Habiles(  C.FEC_CIERRE,nvl(nvl(c.Fecha_Retirado, Fec_Entrega),c.fecha_abandonado)) BETWEEN OB.DIAS_INI AND DIAS_FIN',
')MONTO,',
'',
' CASE WHEN  fec_cierre is not null THEN 1 ELSE 0 END CANTIDAD_APRO_RECHA,',
'    1 TOTAL,',
'    CASE WHEN (nvl(nvl(c.Fecha_Retirado, Fec_Entrega),c.fecha_abandonado)    BETWEEN   to_date(:P499_FEC_INI,''dd/mm/yyyy'') and to_date(:P499_FEC_FIN,''dd/mm/yyyy'')  OR NVL(C.IND_SNC,''N'')=''S'')',
'      AND   ',
'   (select max(sal.fec_movimiento)',
'                                     from ca_llamadas_salientes sal',
'                                    where sal.cod_empresa = c.cod_empresa                                    ',
'                                      and sal.tip_comprobante =',
'                                          c.tip_comprobante',
'                                      and sal.ser_comprobante =',
'                                          c.ser_comprobante',
'                                      and sal.nro_comprobante =',
'                                          c.nro_comprobante',
'                                          AND SAL.COD_USUARIO=AG.COD_USUARIO',
'                                          and sal.cod_motivo not  in (''279'',''271'',''270'',''280'',''269'',''281'',''315'',''316'',''71'',''79'',''290'')) IS NOT NULL  ',
'      ',
'      THEN 1 ELSE 0 END cantidad_proceso',
'   ',
'   from vt_ordenes_trabajo c, st_articulos a, monedas m,',
'    cc_clientes cl, personas p',
'        , CM_PROVEEDORES CL2, PERSONAS P2, ca_estado_ot es, vt_origenes ori, ca_agente_call ag, personas per, usuarios u',
'',
'  where c.cod_empresa = ''1''',
'',
'and ag.cod_empresa(+)=cl.cod_empresa',
'and ag.cod_vendedor(+)=cl.cod_vendedor',
'    and m.cod_moneda = ''1''',
'   AND CL2.COD_EMPRESA=C.COD_EMPRESA',
'   AND CL2.COD_PROVEEDOR=C.COD_PROVEEDOR',
'   AND CL2.COD_PERSONA=P2.COD_PERSONA',
'and u.cod_empresa=ag.cod_empresa',
'and u.cod_usuario=ag.cod_usuario',
'and u.cod_persona=per.cod_persona',
'  and cl.cod_vendedor in (select fv.cod_vendedor',
' from fv_vendedores fv',
' where fv.cod_empresa=cl.cod_empresa',
' and fv.cod_vendedor=cl.cod_vendedor',
' AND FV.COD_TIPO_GRUPO NOT IN (bs_busca_parametro(''FV'',''VEN_CAT_DIV_CORP'')))',
'',
' AND C.FEC_CIERRE between to_date(:P499_FEC_INI,''dd/mm/yyyy'') and to_date(:P499_FEC_FIN,''dd/mm/yyyy'')',
'  and ori.cod_empresa=c.cod_empresa',
'  and ori.cod_origen=c.cod_origen',
'  and ori.origen=''STNGO''',
'  AND C.COD_ORIGEN IN (''1'',''3'',''24'',''42'')',
' and NVL(u.Estado,''N'')=''A''',
'     AND NVL(C.ANULADO,''N'') NOT IN ''S''',
'  and es.cod_empresa=c.cod_empresa',
'  and es.cod_estado=c.estado_presu',
'    and c.cod_empresa = cl.cod_empresa',
'    and c.cod_cliente = cl.cod_cliente',
'    and cl.cod_persona = p.cod_persona',
'    and c.cod_empresa = a.cod_empresa',
'    and nvl(c.cod_articulo,c.cod_articulo_call) = a.cod_articulo',
'   )',
'   WHERE (COD_USUARIO= :P499_COD_USUARIO_AUX OR :P499_COD_USUARIO_AUX IS NULL)',
'    and cod_usuario not in (''GASTROST'',''CALL4'')',
'',
'   GROUP BY TIPO,',
'COD_USUARIO,TRAMO,nombre',
'union all',
'',
'SELECT TIPO,',
'       COD_USUARIO,',
'       nombre,',
'       TRAMO,',
'       SUM(CANTIDAD_APRO_RECHA) TOTAL_APRO_RECHA,',
'       SUM(TOTAL) TOTAL_OTS,',
'       sum(cantidad_proceso) cantidad_proceso',
'',
'  FROM (select',
'        ',
'         ''STA'' TIPO,',
'         per.nombre,',
'         ag.cod_usuario,',
'         sumar_Dias_Habiles(c.fec_comprobante,',
'                            (select max(sal.fec_movimiento)',
'                               from ca_llamadas_salientes sal',
'                              where sal.cod_empresa = c.cod_empresa',
'                                and sal.cod_motivo = ''59''',
'                                and sal.tip_comprobante = c.tip_comprobante',
'                                and sal.ser_comprobante = c.ser_comprobante',
'                                and sal.nro_comprobante = c.nro_comprobante)) dias,',
'         ',
'         (SELECT OB.TRAMO_GESTION',
'            FROM CA_objetivos_call OB',
'           WHERE OB.COD_EMPRESA = C.COD_EMPRESA',
'             AND OB.TIPO = ''STA''',
'                AND OB.TIPO_VENDEDOR=''TODOS''',
'             AND sumar_Dias_Habiles(c.fec_comprobante,',
'                                    (select max(sal.fec_movimiento)',
'                                       from ca_llamadas_salientes sal',
'                                      where sal.cod_empresa = c.cod_empresa',
'                                        and sal.cod_motivo = ''59''',
'                                        and sal.tip_comprobante =',
'                                            c.tip_comprobante',
'                                        and sal.ser_comprobante =',
'                                            c.ser_comprobante',
'                                        and sal.nro_comprobante =',
'                                            c.nro_comprobante)',
'                                            ) BETWEEN',
'         OB.DIAS_INI AND DIAS_FIN) TRAMO,',
'       (SELECT OB.PORCENTAJE',
'          FROM CA_objetivos_call OB',
'         WHERE OB.COD_EMPRESA = C.COD_EMPRESA',
'           AND OB.TIPO = ''STA''',
'           AND OB.TIPO_VENDEDOR=''TODOS''',
'           AND sumar_Dias_Habiles(c.fec_comprobante,',
'                                  (select max(sal.fec_movimiento)',
'                                     from ca_llamadas_salientes sal',
'                                    where sal.cod_empresa = c.cod_empresa',
'                                      and sal.cod_motivo = ''59''',
'                                      and sal.tip_comprobante =',
'                                          c.tip_comprobante',
'                                      and sal.ser_comprobante =',
'                                          c.ser_comprobante',
'                                      and sal.nro_comprobante =',
'                                          c.nro_comprobante)) BETWEEN',
'               OB.DIAS_INI AND DIAS_FIN) PORCENTAJE,',
'       (SELECT OB.MONTO',
'          FROM CA_objetivos_call OB',
'         WHERE OB.COD_EMPRESA = C.COD_EMPRESA',
'           AND OB.TIPO = ''STA''',
'           AND OB.TIPO_VENDEDOR=''TODOS''',
'           AND sumar_Dias_Habiles(c.fec_comprobante,',
'                                  (select max(sal.fec_movimiento)',
'                                     from ca_llamadas_salientes sal',
'                                    where sal.cod_empresa = c.cod_empresa',
'                                      and sal.cod_motivo = ''59''',
'                                      and sal.tip_comprobante =',
'                                          c.tip_comprobante',
'                                      and sal.ser_comprobante =',
'                                          c.ser_comprobante',
'                                      and sal.nro_comprobante =',
'                                          c.nro_comprobante',
'                                          )) BETWEEN OB.DIAS_INI AND DIAS_FIN',
'                                          ) MONTO,',
'       ',
'       CASE',
'         WHEN fec_comprobante is not null THEN',
'          1',
'         ELSE',
'          0',
'       END CANTIDAD_APRO_RECHA,',
'       CASE WHEN (select max(sal.fec_movimiento)',
'                    from ca_llamadas_salientes sal',
'                   where sal.cod_empresa = c.cod_empresa',
'                     and sal.cod_motivo = ''59''',
'                     and sal.tip_comprobante = c.tip_comprobante',
'                     and sal.ser_comprobante = c.ser_comprobante',
'                     and sal.nro_comprobante = c.nro_comprobante',
'                     AND SAL.COD_USUARIO=AG.COD_USUARIO) BETWEEN to_date(:P499_FEC_INI,''dd/mm/yyyy'') and to_date(:P499_FEC_FIN,''dd/mm/yyyy'') THEN 1 ELSE 0 END cantidad_proceso, 1 TOTAL',
'  from vt_ordenes_trabajo c,',
'       st_articulos       a,',
'       monedas            m,',
'       cc_clientes        cl,',
'       personas           p,',
'       CM_PROVEEDORES     CL2,',
'       PERSONAS           P2,',
'       ca_estado_ot       es,',
'       vt_origenes        ori,',
'       USUARIOS     ag,',
'       personas           per,',
'       usuarios           u',
'',
' where c.cod_empresa = ''1''',
'      ',
'  and ag.cod_empresa = c.cod_empresa',
'   and ag.cod_usuario = c.cod_usuario',
'   and m.cod_moneda = ''1''',
'   AND CL2.COD_EMPRESA = C.COD_EMPRESA',
'   AND CL2.COD_PROVEEDOR = C.COD_PROVEEDOR',
'   AND CL2.COD_PERSONA = P2.COD_PERSONA',
'   and u.cod_empresa = ag.cod_empresa',
'   and u.cod_usuario = ag.cod_usuario',
'   and u.cod_persona = per.cod_persona',
'     and c.cod_usuario not in (''CALL4'',''CARGAST1'',''WEBSERVER'')',
' ',
' AND C.fec_comprobante between to_date(:P499_FEC_INI,''dd/mm/yyyy'') and to_date(:P499_FEC_FIN,''dd/mm/yyyy'')',
' ',
'   and ori.cod_empresa = c.cod_empresa',
'   and ori.cod_origen = c.cod_origen',
'   and ori.origen = ''STA''',
'   AND C.COD_ORIGEN IN (''2'',''27'')',
'   and NVL(u.Estado, ''N'') = ''A''',
'   AND NVL(C.ANULADO, ''N'') NOT IN ''S''',
'   and es.cod_empresa = c.cod_empresa',
'   and es.cod_estado = c.estado_presu',
'   and c.cod_empresa = cl.cod_empresa',
'   and nvl(c.cod_distribuidor,c.cod_cliente) = cl.cod_cliente',
'   and cl.cod_persona = p.cod_persona',
'   and c.cod_empresa = a.cod_empresa',
'   and NVL(c.cod_articulo, C.COD_ARTICULO_CALL)= a.cod_articulo)',
' WHERE (COD_USUARIO = :P499_COD_USUARIO_AUX OR :P499_COD_USUARIO_AUX IS NULL)',
'  and cod_usuario not in (''GASTROST'',''CALL4'')',
' GROUP BY TIPO, COD_USUARIO, TRAMO, nombre',
'',
'union all',
'SELECT',
'TIPO,',
'COD_USUARIO,',
'nombre,',
'TRAMO,  (CANTIDAD_APRO_RECHA)TOTAL_APRO_RECHA,',
' (TOTAL)TOTAL_OTS,',
' sum(cantidad_proceso)cantidad_proceso',
'',
'',
'',
'FROM (select  obj.tipo, u.cod_usuario, p.nombre,0 CANTIDAD_APRO_RECHA,0 TOTAL,0 cantidad_proceso, obj.tramo_gestion tramo',
'from CA_objetivos_call obj , ca_agente_call ag, personas p, usuarios u',
'where obj.cod_empresa=''1''',
'and obj.cod_empresa=ag.cod_empresa',
'and ag.cod_empresa=u.cod_empresa',
'  ',
' AND OBJ.TIPO_VENDEDOR=''TODOS''',
'and ag.cod_usuario=u.cod_usuario',
' and NVL(u.Estado,''N'')=''A''',
'  AND OBJ.ACTIVO=''S''',
'and p.cod_persona=u.cod_persona)',
' WHERE (COD_USUARIO= :P499_COD_USUARIO_AUX OR :P499_COD_USUARIO_AUX IS NULL)',
' group by TIPO,',
'COD_USUARIO,',
'nombre,',
'TRAMO,  (CANTIDAD_APRO_RECHA) ,',
' (TOTAL) )',
'   where cod_usuario not in (''GASTROST'',''CALL4'')',
' group by TIPO , COD_USUARIO , NOMBRE , TRAMO',
'UNION ALL',
' ',
'select ',
'TIPO , COD_USUARIO , NOMBRE , TRAMO, sum( TOTAL_APRO_RECHA) TOTAL_APRO_RECHA,sum( TOTAL_OTS) TOTAL_OTS,2 ORDEN ,',
'sum(cantidad_proceso)cantidad_proceso,',
'''TODOS'' TIPO_COMISION',
'',
'from (SELECT',
'TIPO,',
'bs_busca_parametro(''CA'',''USR_JEF_GPV'') COD_USUARIO,',
'(SELECT P.NOMBRE',
'FROM USUARIOS U , PERSONAS P',
'WHERE U.COD_EMPRESA=''1''',
'AND U.COD_USUARIO=bs_busca_parametro(''CA'',''USR_JEF_GPV'')',
'AND U.COD_PERSONA=P.COD_PERSONA) nombre,',
'TRAMO, SUM(CANTIDAD_APRO_RECHA)TOTAL_APRO_RECHA,',
'SUM(TOTAL)TOTAL_OTS,',
'sum(cantidad_proceso)cantidad_proceso',
'',
'',
'',
'FROM (select ',
'CASE WHEN CL.TIP_CLIENTE IN (''1'',''27'') THEN',
'  ''PRESUPUESTOS''',
'  ELSE',
'''PRESUPUESTOS''',
'END TIPO,per.nombre,',
'ag.cod_usuario,',
' sumar_Dias_Habiles(c.fec_presupuestado,  nvl(c.fec_aprobacion,c.fec_rechazo))dias,',
' ',
' (SELECT OB.TRAMO_GESTION',
' FROM CA_objetivos_call OB',
' WHERE OB.COD_EMPRESA=C.COD_EMPRESA',
' AND OB.TIPO_VENDEDOR=''TODOS''',
' AND OB.TIPO=CASE WHEN CL.TIP_CLIENTE IN (''1'',''27'') THEN',
'  ''PRESUPUESTOS''',
'  ELSE',
'''PRESUPUESTOS''',
'END',
'AND  sumar_Dias_Habiles(c.fec_presupuestado,  nvl(c.fec_aprobacion,c.fec_rechazo)) BETWEEN OB.DIAS_INI AND DIAS_FIN',
')TRAMO,',
' (SELECT OB.PORCENTAJE',
' FROM CA_objetivos_call OB',
' WHERE OB.COD_EMPRESA=C.COD_EMPRESA',
' AND OB.TIPO_VENDEDOR=''TODOS''',
' AND OB.TIPO=CASE WHEN CL.TIP_CLIENTE IN (''1'',''27'') THEN',
'  ''PRESUPUESTOS''',
'  ELSE',
'''PRESUPUESTOS''',
'END',
'AND  sumar_Dias_Habiles(c.fec_presupuestado,  nvl(c.fec_aprobacion,c.fec_rechazo)) BETWEEN OB.DIAS_INI AND DIAS_FIN',
')PORCENTAJE,',
' (SELECT OB.MONTO',
' FROM CA_objetivos_call OB',
' WHERE OB.COD_EMPRESA=C.COD_EMPRESA',
' AND OB.TIPO_VENDEDOR=''TODOS''',
' AND OB.TIPO=CASE WHEN CL.TIP_CLIENTE IN (''1'',''27'') THEN',
'  ''PRESUPUESTOS''',
'  ELSE',
'''PRESUPUESTOS''',
'END',
'AND  sumar_Dias_Habiles(c.fec_presupuestado,  nvl(c.fec_aprobacion,c.fec_rechazo)) BETWEEN OB.DIAS_INI AND DIAS_FIN',
')MONTO,',
' ',
' CASE WHEN nvl(c.fec_aprobacion,c.fec_rechazo) IS NOT NULL THEN 1 ELSE 0 END CANTIDAD_APRO_RECHA,',
'   1 TOTAL,',
'    CASE WHEN nvl(c.fec_aprobacion,c.fec_rechazo) IS NOT NULL THEN 1 ELSE 0 END cantidad_proceso',
'   from vt_ordenes_trabajo c, st_articulos a, monedas m,',
'    cc_clientes cl, personas p',
'        , CM_PROVEEDORES CL2, PERSONAS P2, ca_estado_ot es, vt_origenes ori, ca_agente_call ag, personas per, usuarios u',
'',
'  where c.cod_empresa = ''1''',
'',
'and ag.cod_empresa(+)=cl.cod_empresa',
'and ag.cod_vendedor(+)=cl.cod_vendedor',
'    and m.cod_moneda = ''1''',
'   AND CL2.COD_EMPRESA=C.COD_EMPRESA',
'   AND CL2.COD_PROVEEDOR=C.COD_PROVEEDOR',
'   AND CL2.COD_PERSONA=P2.COD_PERSONA',
'and u.cod_empresa=ag.cod_empresa',
'and u.cod_usuario=ag.cod_usuario',
'and u.cod_persona=per.cod_persona',
'  and cl.cod_vendedor in (select fv.cod_vendedor',
' from fv_vendedores fv',
' where fv.cod_empresa=cl.cod_empresa',
' and fv.cod_vendedor=cl.cod_vendedor',
' AND FV.COD_TIPO_GRUPO NOT IN (bs_busca_parametro(''FV'',''VEN_CAT_DIV_CORP'')))',
' ',
' ',
' AND C.Fec_Presupuestado between to_date(:P499_FEC_INI,''dd/mm/yyyy'') and to_date(:P499_FEC_FIN,''dd/mm/yyyy'')',
'  and ori.cod_empresa=c.cod_empresa',
'  and ori.cod_origen=c.cod_origen',
'  and ori.origen=''STNGO''',
'    AND C.COD_ORIGEN IN (''1'',''3'',''24'',''42'')',
'    AND NVL(C.ANULADO,''N'') NOT IN (''S'')',
' and NVL(u.Estado,''N'')=''A''',
'  and es.cod_empresa=c.cod_empresa',
'  and es.cod_estado=c.estado_presu',
'    and c.cod_empresa = cl.cod_empresa',
'    and c.cod_cliente = cl.cod_cliente',
'    and cl.cod_persona = p.cod_persona',
'    and c.cod_empresa = a.cod_empresa',
'    and c.cod_articulo = a.cod_articulo',
'   )',
'   WHERE (COD_USUARIO= :P499_COD_USUARIO_AUX OR :P499_COD_USUARIO_AUX IS NULL)',
'     and cod_usuario not in (''GASTROST'',''CALL4'')',
'   GROUP BY TIPO, tramo',
' ',
'UNION ALL',
'',
'SELECT',
'TIPO,',
'bs_busca_parametro(''CA'',''USR_JEF_GPV'') COD_USUARIO,',
'(SELECT P.NOMBRE',
'FROM USUARIOS U , PERSONAS P',
'WHERE U.COD_EMPRESA=''1''',
'AND U.COD_USUARIO=bs_busca_parametro(''CA'',''USR_JEF_GPV'')',
'AND U.COD_PERSONA=P.COD_PERSONA) nombre,',
'TRAMO, SUM(CANTIDAD_APRO_RECHA)TOTAL_APRO_RECHA,',
'SUM(TOTAL)TOTAL_OTS,',
'sum(cantidad_proceso)cantidad_proceso',
'',
'  FROM (select',
'        ',
'         ''STA'' TIPO,',
'         per.nombre,',
'         ag.cod_usuario,',
'         sumar_Dias_Habiles(c.fec_comprobante,',
'                            (select max(sal.fec_movimiento)',
'                               from ca_llamadas_salientes sal',
'                              where sal.cod_empresa = c.cod_empresa',
'                                and sal.cod_motivo = ''59''',
'                                and sal.tip_comprobante = c.tip_comprobante',
'                                and sal.ser_comprobante = c.ser_comprobante',
'                                and sal.nro_comprobante = c.nro_comprobante)) dias,',
'         ',
'         (SELECT OB.TRAMO_GESTION',
'            FROM CA_objetivos_call OB',
'           WHERE OB.COD_EMPRESA = C.COD_EMPRESA',
'             AND OB.TIPO = ''STA''',
'             AND OB.TIPO_VENDEDOR=''TODOS''                ',
'             AND sumar_Dias_Habiles(c.fec_comprobante,',
'                                    (select max(sal.fec_movimiento)',
'                                       from ca_llamadas_salientes sal',
'                                      where sal.cod_empresa = c.cod_empresa',
'                                        and sal.cod_motivo = ''59''',
'                                        and sal.tip_comprobante =',
'                                            c.tip_comprobante',
'                                        and sal.ser_comprobante =',
'                                            c.ser_comprobante',
'                                        and sal.nro_comprobante =',
'                                            c.nro_comprobante)',
'                                            ) BETWEEN',
'         OB.DIAS_INI AND DIAS_FIN) TRAMO,',
'       (SELECT OB.PORCENTAJE',
'          FROM CA_objetivos_call OB',
'         WHERE OB.COD_EMPRESA = C.COD_EMPRESA',
'           AND OB.TIPO = ''STA''',
'           AND OB.TIPO_VENDEDOR=''TODOS''',
'           AND sumar_Dias_Habiles(c.fec_comprobante,',
'                                  (select max(sal.fec_movimiento)',
'                                     from ca_llamadas_salientes sal',
'                                    where sal.cod_empresa = c.cod_empresa',
'                                      and sal.cod_motivo = ''59''',
'                                      and sal.tip_comprobante =',
'                                          c.tip_comprobante',
'                                      and sal.ser_comprobante =',
'                                          c.ser_comprobante',
'                                      and sal.nro_comprobante =',
'                                          c.nro_comprobante)) BETWEEN',
'               OB.DIAS_INI AND DIAS_FIN) PORCENTAJE,',
'       (SELECT OB.MONTO',
'          FROM CA_objetivos_call OB',
'         WHERE OB.COD_EMPRESA = C.COD_EMPRESA',
'           AND OB.TIPO = ''STA''',
'           AND OB.TIPO_VENDEDOR=''TODOS''',
'           AND sumar_Dias_Habiles(c.fec_comprobante,',
'                                  (select max(sal.fec_movimiento)',
'                                     from ca_llamadas_salientes sal',
'                                    where sal.cod_empresa = c.cod_empresa',
'                                      and sal.cod_motivo = ''59''',
'                                      and sal.tip_comprobante =',
'                                          c.tip_comprobante',
'                                      and sal.ser_comprobante =',
'                                          c.ser_comprobante',
'                                      and sal.nro_comprobante =',
'                                          c.nro_comprobante)) BETWEEN OB.DIAS_INI AND DIAS_FIN',
'                                          ) MONTO,',
'       ',
'       CASE',
'         WHEN fec_comprobante is not null THEN',
'          1',
'         ELSE',
'          0',
'       END CANTIDAD_APRO_RECHA,',
'       CASE WHEN (select max(sal.fec_movimiento)',
'                    from ca_llamadas_salientes sal',
'                   where sal.cod_empresa = c.cod_empresa',
'                     and sal.cod_motivo = ''59''',
'                     and sal.tip_comprobante = c.tip_comprobante',
'                     and sal.ser_comprobante = c.ser_comprobante',
'                     and sal.nro_comprobante = c.nro_comprobante) BETWEEN to_date(:P499_FEC_INI,''dd/mm/yyyy'') and to_date(:P499_FEC_FIN,''dd/mm/yyyy'') THEN 1 ELSE 0 END cantidad_proceso, 1 TOTAL',
'  from vt_ordenes_trabajo c,',
'       st_articulos       a,',
'       monedas            m,',
'       cc_clientes        cl,',
'       personas           p,',
'       CM_PROVEEDORES     CL2,',
'       PERSONAS           P2,',
'       ca_estado_ot       es,',
'       vt_origenes        ori,',
'       USUARIOS     ag,',
'       personas           per,',
'       usuarios           u',
'',
' where c.cod_empresa = ''1''',
'      ',
'  and ag.cod_empresa = c.cod_empresa',
'   and ag.cod_usuario = c.cod_usuario',
'   and m.cod_moneda = ''1''',
'   AND CL2.COD_EMPRESA = C.COD_EMPRESA',
'   AND CL2.COD_PROVEEDOR = C.COD_PROVEEDOR',
'   AND CL2.COD_PERSONA = P2.COD_PERSONA',
'   and u.cod_empresa = ag.cod_empresa',
'   and u.cod_usuario = ag.cod_usuario',
'   and u.cod_persona = per.cod_persona',
'   and c.fec_comprobante >= to_date(:P499_FEC_INI,''dd/mm/yyyy'') - 180',
'      AND C.fec_comprobante between to_date(:P499_FEC_INI,''dd/mm/yyyy'') and to_date(:P499_FEC_FIN,''dd/mm/yyyy'')',
'      and c.cod_usuario not in (''CALL4'',''CARGAST1'',''WEBSERVER'',''GASTROST'')',
' ',
'  ',
'   and ori.cod_empresa = c.cod_empresa',
'   and ori.cod_origen = c.cod_origen',
'   and ori.origen = ''STA''',
'   AND C.COD_ORIGEN IN (''2'',''27'')',
'   and NVL(u.Estado, ''N'') = ''A''',
'   AND NVL(C.ANULADO, ''N'') NOT IN ''S''',
'   and es.cod_empresa = c.cod_empresa',
'   and es.cod_estado = c.estado_presu',
'   and c.cod_empresa = cl.cod_empresa',
'   and c.cod_cliente = cl.cod_cliente',
'   and cl.cod_persona = p.cod_persona',
'   and c.cod_empresa = a.cod_empresa',
'   and c.cod_articulo = a.cod_articulo)',
' WHERE (COD_USUARIO = :P499_COD_USUARIO_AUX OR :P499_COD_USUARIO_AUX IS NULL)',
'    and cod_usuario not in (''GASTROST'',''CALL4'')',
' GROUP BY TIPO, TRAMO',
'',
'UNION ALL',
'SELECT',
'TIPO,',
'bs_busca_parametro(''CA'',''USR_JEF_GPV'') COD_USUARIO,',
'(SELECT P.NOMBRE',
'FROM USUARIOS U , PERSONAS P',
'WHERE U.COD_EMPRESA=''1''',
'AND U.COD_USUARIO=bs_busca_parametro(''CA'',''USR_JEF_GPV'')',
'AND U.COD_PERSONA=P.COD_PERSONA) nombre,',
'TRAMO, SUM(CANTIDAD_APRO_RECHA)TOTAL_APRO_RECHA,',
'SUM(TOTAL)TOTAL_OTS,',
'sum(cantidad_proceso)cantidad_proceso',
'',
'',
'',
'FROM (select ',
'CASE WHEN NVL(C.IND_GARANTIA,''N'')=''S'' THEN',
'  ''ENTREGADAS_GARANTIA''',
'  ELSE',
'''ENTREGADAS_PARTICULAR''',
'END TIPO,per.nombre,',
'ag.cod_usuario,',
'sumar_Dias_Habiles(  C.FEC_CIERRE,nvl(c.Fecha_Retirado, Fec_Entrega))dias,',
' ',
' (SELECT OB.TRAMO_GESTION',
' FROM CA_objetivos_call OB',
' WHERE OB.COD_EMPRESA=C.COD_EMPRESA',
' AND OB.TIPO_VENDEDOR=''TODOS''',
' AND OB.TIPO=CASE WHEN NVL(C.IND_GARANTIA,''N'')=''S'' THEN',
'  ''ENTREGADAS_GARANTIA''',
'  ELSE',
'''ENTREGADAS_PARTICULAR''',
'END',
'AND   sumar_Dias_Habiles(  C.FEC_CIERRE,nvl(c.Fecha_Retirado, Fec_Entrega)) BETWEEN OB.DIAS_INI AND DIAS_FIN',
')TRAMO,',
' (SELECT OB.PORCENTAJE',
' FROM CA_objetivos_call OB',
' WHERE OB.COD_EMPRESA=C.COD_EMPRESA',
' AND OB.TIPO_VENDEDOR=''TODOS''',
' AND OB.TIPO=CASE WHEN NVL(C.IND_GARANTIA,''N'')=''S'' THEN',
'  ''ENTREGADAS_GARANTIA''',
'  ELSE',
'''ENTREGADAS_PARTICULAR''',
'END',
'AND   sumar_Dias_Habiles(  C.FEC_CIERRE,nvl(c.Fecha_Retirado, Fec_Entrega)) BETWEEN OB.DIAS_INI AND DIAS_FIN',
')PORCENTAJE,',
' (SELECT OB.MONTO',
' FROM CA_objetivos_call OB',
' WHERE OB.COD_EMPRESA=C.COD_EMPRESA',
' AND OB.TIPO_VENDEDOR=''TODOS''',
' AND OB.TIPO=CASE WHEN NVL(C.IND_GARANTIA,''N'')=''S'' THEN',
'  ''ENTREGADAS_GARANTIA''',
'  ELSE',
'''ENTREGADAS_PARTICULAR''',
'END',
'AND  sumar_Dias_Habiles(  C.FEC_CIERRE,nvl(c.Fecha_Retirado, Fec_Entrega)) BETWEEN OB.DIAS_INI AND DIAS_FIN',
')MONTO,',
' ',
'CASE WHEN C.FEC_CIERRE IS NOT NULL THEN 1 ELSE 0 END CANTIDAD_APRO_RECHA,',
' CASE WHEN nvl(c.Fecha_Retirado, Fec_Entrega)    BETWEEN   to_date(:P499_FEC_INI,''dd/mm/yyyy'') and to_date(:P499_FEC_FIN,''dd/mm/yyyy'')THEN 1 ELSE 0 END cantidad_proceso,',
'   1 TOTAL',
'   from vt_ordenes_trabajo c, st_articulos a, monedas m,',
'    cc_clientes cl, personas p',
'        , CM_PROVEEDORES CL2, PERSONAS P2, ca_estado_ot es, vt_origenes ori, ',
'        ca_agente_call ag, personas per, usuarios u',
'',
'  where c.cod_empresa = ''1''',
'',
'and ag.cod_empresa(+)=cl.cod_empresa',
'and ag.cod_vendedor(+)=cl.cod_vendedor',
'    and m.cod_moneda = ''1''',
'   AND CL2.COD_EMPRESA=C.COD_EMPRESA',
'   AND CL2.COD_PROVEEDOR=C.COD_PROVEEDOR',
'   AND CL2.COD_PERSONA=P2.COD_PERSONA',
'and u.cod_empresa=ag.cod_empresa',
'and u.cod_usuario=ag.cod_usuario',
'and u.cod_persona=per.cod_persona',
'  and cl.cod_vendedor in (select fv.cod_vendedor',
' from fv_vendedores fv',
' where fv.cod_empresa=cl.cod_empresa',
' and fv.cod_vendedor=cl.cod_vendedor',
' AND FV.COD_TIPO_GRUPO NOT IN (bs_busca_parametro(''FV'',''VEN_CAT_DIV_CORP'')))             ',
' ',
'',
' AND C.FEC_CIERRE between to_date(:P499_FEC_INI,''dd/mm/yyyy'') and to_date(:P499_FEC_FIN,''dd/mm/yyyy'')',
'  and ori.cod_empresa=c.cod_empresa',
'  and ori.cod_origen=c.cod_origen',
'  and ori.origen=''STNGO''',
'   AND C.COD_ORIGEN IN (''1'',''3'',''24'',''42'')',
' and NVL(u.Estado,''N'')=''A''',
'     AND NVL(C.ANULADO,''N'') NOT IN ''S''',
'  and es.cod_empresa=c.cod_empresa',
'  and es.cod_estado=c.estado_presu',
'    and c.cod_empresa = cl.cod_empresa',
'    and c.cod_cliente = cl.cod_cliente',
'    and cl.cod_persona = p.cod_persona',
'    and c.cod_empresa = a.cod_empresa',
'    and c.cod_articulo = a.cod_articulo',
'   )',
'   WHERE (COD_USUARIO= :P499_COD_USUARIO_AUX OR :P499_COD_USUARIO_AUX IS NULL)',
'  and cod_usuario not in (''GASTROST'',''CALL4'')',
' GROUP BY TIPO, tramo',
' ',
'union all',
'SELECT',
'TIPO,',
'bs_busca_parametro(''CA'',''USR_JEF_GPV'') COD_USUARIO,',
'(SELECT P.NOMBRE',
'FROM USUARIOS U , PERSONAS P',
'WHERE U.COD_EMPRESA=''1''',
'AND U.COD_USUARIO=bs_busca_parametro(''CA'',''USR_JEF_GPV'')',
'AND U.COD_PERSONA=P.COD_PERSONA) nombre,',
'TRAMO,  (CANTIDAD_APRO_RECHA)TOTAL_APRO_RECHA,',
' (TOTAL)TOTAL_OTS,',
' sum(cantidad_proceso)cantidad_proceso',
'',
'',
'',
'FROM (select  obj.tipo, u.cod_usuario, p.nombre,0 CANTIDAD_APRO_RECHA,0 TOTAL,0 cantidad_proceso, obj.tramo_gestion tramo',
'from CA_objetivos_call obj , ca_agente_call ag, personas p, usuarios u',
'where obj.cod_empresa=''1''',
'and obj.cod_empresa=ag.cod_empresa',
'and ag.cod_empresa=u.cod_empresa',
'and ag.cod_usuario=u.cod_usuario',
'AND OBJ.TIPO_VENDEDOR=''TODOS''',
' and NVL(u.Estado,''N'')=''A''',
' AND OBJ.ACTIVO=''S''',
'',
'and p.cod_persona=u.cod_persona)',
' WHERE (COD_USUARIO= :P499_COD_USUARIO_AUX OR :P499_COD_USUARIO_AUX IS NULL)',
' group by TIPO,',
' ',
'TRAMO,  (CANTIDAD_APRO_RECHA) ,',
' (TOTAL) )',
unistr('  WHERE (COD_USUARIO= :P499_COD_USUARIO_AUX OR :P499_COD_USUARIO_AUX IS NULL) AND :P499_EJECUTAR_REPORTE = ''1'' --CONDICION DE EJECUCI\00D3N'),
'  and cod_usuario not in (''GASTROST'',''CALL4'')',
' group by TIPO ,   TRAMO,COD_USUARIO , NOMBRE',
'order by 7,1, 3,4'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P499_COD_USUARIO_AUX,P499_FEC_INI,P499_FEC_FIN,P499_ESTADO_REPORTE'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'REPORT - caobjeagen'
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
 p_id=>wwv_flow_imp.id(148484899903869125)
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
,p_internal_uid=>148484899903869125
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(148484935906869126)
,p_db_column_name=>'TIPO'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Tipo'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(148485017639869127)
,p_db_column_name=>'COD_USUARIO'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Cod Usuario'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(148485161958869128)
,p_db_column_name=>'NOMBRE'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Nombre'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(148485231940869129)
,p_db_column_name=>'TRAMO'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Tramo'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(148485722994869134)
,p_db_column_name=>'TIPO_COMISION'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Tipo Comision'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(152913596472431022)
,p_db_column_name=>'TOTAL_APRO_RECHA'
,p_display_order=>100
,p_column_identifier=>'N'
,p_column_label=>'Total Apro Recha'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(152913612634431023)
,p_db_column_name=>'TOTAL_OTS'
,p_display_order=>110
,p_column_identifier=>'O'
,p_column_label=>'Total Ots'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(152913767038431024)
,p_db_column_name=>'ORDEN'
,p_display_order=>120
,p_column_identifier=>'P'
,p_column_label=>'Orden'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(152913860365431025)
,p_db_column_name=>'CANTIDA_PROCESO'
,p_display_order=>130
,p_column_identifier=>'Q'
,p_column_label=>'Cantida Proceso'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(148630067912073707)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1486301'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>5
,p_report_columns=>'TIPO:COD_USUARIO:NOMBRE:TRAMO:TIPO_COMISION'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(148482990864869106)
,p_plug_name=>'REPORT - caobjeagendet'
,p_parent_plug_id=>wwv_flow_imp.id(148016688337078446)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>1030
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select  ',
'tip_comprobante, ser_comprobante, nro_comprobante,',
'fec_creacion, fec_presupuesto, fec_aprobado, fec_rechazo, fec_cierre, fec_entrega,',
'TIPO , COD_USUARIO , NOMBRE , TRAMO, sum( TOTAL_APRO_RECHA) TOTAL_APRO_RECHA,sum( TOTAL_OTS) TOTAL_OTS,1 ORDEN,',
' fec_seguimiento, cod_cliente, nombre_cliente',
'',
'from (SELECT',
'tip_comprobante, ser_comprobante, nro_comprobante,',
'fec_creacion, fec_presupuesto, fec_aprobado, fec_rechazo,fec_cierre, fec_entrega,',
'TIPO,',
'COD_USUARIO,',
'nombre,',
'TRAMO, SUM(CANTIDAD_APRO_RECHA)TOTAL_APRO_RECHA,',
'SUM(TOTAL)TOTAL_OTS,',
'',
'fecha_seguimiento fec_seguimiento, cod_cliente, nombre_cliente',
'',
'FROM (select ',
'CASE WHEN CL.TIP_CLIENTE IN (''1'',''27'') THEN',
'  ''PRESUPUESTOS''',
'  ELSE',
'''PRESUPUESTOS''',
'END TIPO,per.nombre,',
'ag.cod_usuario,',
' sumar_Dias_Habiles(c.fec_presupuestado,  nvl(c.fec_aprobacion,c.fec_rechazo))dias,',
' ',
' (SELECT OB.TRAMO_GESTION',
' FROM CA_objetivos_call OB',
' WHERE OB.COD_EMPRESA=C.COD_EMPRESA',
'   and ob.tipo_vendedor=''TODOS''',
' AND OB.TIPO=CASE WHEN CL.TIP_CLIENTE IN (''1'',''27'') THEN',
'  ''PRESUPUESTOS''',
'  ELSE',
'''PRESUPUESTOS''',
'END',
'AND  sumar_Dias_Habiles(c.fec_presupuestado,  nvl(c.fec_aprobacion,c.fec_rechazo)) BETWEEN OB.DIAS_INI AND DIAS_FIN',
')TRAMO,',
' (SELECT OB.PORCENTAJE',
' FROM CA_objetivos_call OB',
' WHERE OB.COD_EMPRESA=C.COD_EMPRESA',
'  and ob.tipo_vendedor=''TODOS''',
' AND OB.TIPO=CASE WHEN CL.TIP_CLIENTE IN (''1'',''27'') THEN',
'  ''PRESUPUESTOS''',
'  ELSE',
'''PRESUPUESTOS''',
'END',
'AND  sumar_Dias_Habiles(c.fec_presupuestado,  nvl(c.fec_aprobacion,c.fec_rechazo)) BETWEEN OB.DIAS_INI AND DIAS_FIN',
')PORCENTAJE,',
' (SELECT OB.MONTO',
' FROM CA_objetivos_call OB',
' WHERE OB.COD_EMPRESA=C.COD_EMPRESA',
' and ob.tipo_vendedor=''TODOS''',
' AND OB.TIPO=CASE WHEN CL.TIP_CLIENTE IN (''1'',''27'') THEN',
'  ''PRESUPUESTOS''',
'  ELSE',
'''PRESUPUESTOS''',
'END',
'AND  sumar_Dias_Habiles(c.fec_presupuestado,  nvl(c.fec_aprobacion,c.fec_rechazo)) BETWEEN OB.DIAS_INI AND DIAS_FIN',
')MONTO,',
' ',
' CASE WHEN nvl(c.fec_aprobacion,c.fec_rechazo) IS NOT NULL and',
' (select max(sal.fec_movimiento)',
'                                     from ca_llamadas_salientes sal',
'                                    where sal.cod_empresa = c.cod_empresa',
'                                     ',
'                                      and sal.tip_comprobante =',
'                                          c.tip_comprobante',
'                                      and sal.ser_comprobante =',
'                                          c.ser_comprobante',
'                                      and sal.nro_comprobante =',
'                                          c.nro_comprobante',
'                                          AND SAL.COD_USUARIO=AG.COD_USUARIO',
'                                            and sal.cod_motivo in (''279'',''271'',''270'',''280'',''269'',''281'',''71'',''79'')) IS NOT NULL  THEN 1 ELSE 0 END CANTIDAD_APRO_RECHA,',
'   1 TOTAL, ',
'   c.tip_comprobante, c.ser_comprobante, c.nro_comprobante,',
'   c.fec_comprobante fec_creacion, c.fec_presupuestado fec_presupuesto, c.fec_aprobacion fec_aprobado,c.fec_rechazo fec_rechazo,',
'   c.fec_cierre, nvl(c.fecha_retirado,c.fec_entrega)fec_entrega, ',
'      (select max(sal.fec_movimiento)',
'                                     from ca_llamadas_salientes sal',
'                                    where sal.cod_empresa = c.cod_empresa',
'                                     ',
'                                      and sal.tip_comprobante =',
'                                          c.tip_comprobante',
'                                      and sal.ser_comprobante =',
'                                          c.ser_comprobante',
'                                      and sal.nro_comprobante =',
'                                          c.nro_comprobante',
'                                          AND SAL.COD_USUARIO=AG.COD_USUARIO',
'                                            and sal.cod_motivo in (''279'',''271'',''270'',''280'',''269'',''281''))fecha_seguimiento',
'                                            , c.cod_cliente,c.nom_cliente nombre_cliente',
'   from vt_ordenes_trabajo c, st_articulos a, monedas m,',
'    cc_clientes cl, personas p',
'        , CM_PROVEEDORES CL2, PERSONAS P2, ca_estado_ot es, vt_origenes ori,',
'         ca_agente_call ag, personas per, usuarios u',
'',
unistr('  where c.cod_empresa = ''1''AND :P499_EJECUTAR_REPORTE = ''1'' --CONDICION DE EJECUCI\00D3N'),
'',
'and ag.cod_empresa(+)=cl.cod_empresa',
'and ag.cod_vendedor(+)=cl.cod_vendedor',
'    and m.cod_moneda = ''1''',
'   AND CL2.COD_EMPRESA=C.COD_EMPRESA',
'   AND CL2.COD_PROVEEDOR=C.COD_PROVEEDOR',
'   AND CL2.COD_PERSONA=P2.COD_PERSONA',
'and u.cod_empresa=ag.cod_empresa',
'and u.cod_usuario=ag.cod_usuario',
'and u.cod_persona=per.cod_persona',
' AND C.Fec_Presupuestado between to_date(:P499_FEC_INI,''dd/mm/yyyy'') and to_date(:P499_FEC_FIN,''dd/mm/yyyy'')',
' and cl.cod_vendedor in (select fv.cod_vendedor',
' from fv_vendedores fv',
' where fv.cod_empresa=cl.cod_empresa',
' and fv.cod_vendedor=cl.cod_vendedor',
' AND FV.COD_TIPO_GRUPO NOT IN (bs_busca_parametro(''FV'',''VEN_CAT_DIV_CORP'')))',
'and nvl(c.ind_garantia,''N'')<>''S''',
'  and ori.cod_empresa=c.cod_empresa',
'  and ori.cod_origen=c.cod_origen',
'  and ori.origen=''STNGO''',
'    AND C.COD_ORIGEN IN (''1'',''3'',''24'',''42'')',
'    AND NVL(C.ANULADO,''N'') NOT IN (''S'')',
' and NVL(u.Estado,''N'')=''A''',
'  and es.cod_empresa=c.cod_empresa',
'  and es.cod_estado=c.estado_presu',
'    and c.cod_empresa = cl.cod_empresa',
'    and c.cod_cliente = cl.cod_cliente',
'    and cl.cod_persona = p.cod_persona',
'    and c.cod_empresa = a.cod_empresa',
'    and c.cod_articulo = a.cod_articulo',
'   )',
'   WHERE (COD_USUARIO= :P499_COD_USUARIO_AUX OR :P499_COD_USUARIO_AUX IS NULL)',
'   GROUP BY TIPO,',
'COD_USUARIO,TRAMO,nombre,',
'tip_comprobante, ser_comprobante, nro_comprobante,fec_creacion ,fec_presupuesto, fec_aprobado, fec_rechazo,',
'fec_cierre, fec_entrega,fecha_seguimiento, cod_cliente, nombre_cliente',
'UNION ALL',
'SELECT',
'tip_comprobante, ser_comprobante, nro_comprobante,fec_creacion, fec_presupuesto, fec_aprobado, fec_rechazo,',
'fec_cierre, fec_entrega,',
'TIPO,',
'COD_USUARIO,',
'nombre,',
'TRAMO, SUM(CANTIDAD_APRO_RECHA)TOTAL_APRO_RECHA,',
'SUM(TOTAL)TOTAL_OTS, fecha_seguimiento fec_seguimiento',
', cod_cliente, nombre_cliente',
'FROM (select ',
'CASE WHEN NVL(C.IND_GARANTIA,''N'')=''S'' THEN',
'  ''ENTREGADAS_GARANTIA''',
'  ELSE',
'''ENTREGADAS_PARTICULAR''',
'END TIPO,per.nombre,',
'ag.cod_usuario,',
'sumar_Dias_Habiles(  C.FEC_CIERRE,nvl(nvl(c.fecha_retirado,c.fec_entrega),c.fecha_abandonado))dias,',
' ',
' (SELECT OB.TRAMO_GESTION',
' FROM CA_objetivos_call OB',
' WHERE OB.COD_EMPRESA=C.COD_EMPRESA',
'  and ob.tipo_vendedor=''TODOS''',
' AND OB.TIPO=CASE WHEN NVL(C.IND_GARANTIA,''N'')=''S'' THEN',
'  ''ENTREGADAS_GARANTIA''',
'  ELSE',
'''ENTREGADAS_PARTICULAR''',
'END',
'AND   sumar_Dias_Habiles(  C.FEC_CIERRE, nvl(nvl(c.fecha_retirado,c.fec_entrega),c.fecha_abandonado)) BETWEEN OB.DIAS_INI AND DIAS_FIN',
')TRAMO,',
' (SELECT OB.PORCENTAJE',
' FROM CA_objetivos_call OB',
' WHERE OB.COD_EMPRESA=C.COD_EMPRESA',
'  and ob.tipo_vendedor=''TODOS''',
' AND OB.TIPO=CASE WHEN NVL(C.IND_GARANTIA,''N'')=''S'' THEN',
'  ''ENTREGADAS_GARANTIA''',
'  ELSE',
'''ENTREGADAS_PARTICULAR''',
'END',
'AND   sumar_Dias_Habiles(  C.FEC_CIERRE, nvl(nvl(c.fecha_retirado,c.fec_entrega),c.fecha_abandonado)) BETWEEN OB.DIAS_INI AND DIAS_FIN',
')PORCENTAJE,',
' (SELECT OB.MONTO',
' FROM CA_objetivos_call OB',
' WHERE OB.COD_EMPRESA=C.COD_EMPRESA',
'   and ob.tipo_vendedor=''TODOS''',
' AND OB.TIPO=CASE WHEN NVL(C.IND_GARANTIA,''N'')=''S'' THEN',
'  ''ENTREGADAS_GARANTIA''',
'  ELSE',
'''ENTREGADAS_PARTICULAR''',
'END',
'AND  sumar_Dias_Habiles(  C.FEC_CIERRE, nvl(nvl(c.fecha_retirado,c.fec_entrega),c.fecha_abandonado)) BETWEEN OB.DIAS_INI AND DIAS_FIN',
')MONTO,',
' CASE WHEN ( nvl(nvl(c.fecha_retirado,c.fec_entrega),c.fecha_abandonado) IS NOT NULL or NVL(c.ind_snc,''N'')=''S'') and',
' (select max(sal.fec_movimiento)',
'                                     from ca_llamadas_salientes sal',
'                                    where sal.cod_empresa = c.cod_empresa',
'                                     ',
'                                      and sal.tip_comprobante =',
'                                          c.tip_comprobante',
'                                      and sal.ser_comprobante =',
'                                          c.ser_comprobante',
'                                      and sal.nro_comprobante =',
'                                          c.nro_comprobante',
'                                          AND SAL.COD_USUARIO=AG.COD_USUARIO',
'                                            and sal.cod_motivo NOT in (''279'',''271'',''270'',''280'',''269'',''281'',''71'')) IS NOT NULL  THEN 1 ELSE 0 END CANTIDAD_APRO_RECHA,',
'   1 TOTAL, c.tip_comprobante, c.ser_comprobante, c.nro_comprobante,',
'   c.fec_comprobante fec_creacion, c.fec_presupuestado fec_presupuesto, c.fec_aprobacion fec_aprobado,c.fec_rechazo fec_rechazo,',
'   c.fec_cierre, nvl(nvl(c.fecha_retirado,c.fec_entrega),c.fecha_abandonado)fec_entrega,',
'   (select max(sal.fec_movimiento)',
'                                     from ca_llamadas_salientes sal',
'                                    where sal.cod_empresa = c.cod_empresa',
'                                     ',
'                                      and sal.tip_comprobante =',
'                                          c.tip_comprobante',
'                                      and sal.ser_comprobante =',
'                                          c.ser_comprobante',
'                                      and sal.nro_comprobante =',
'                                          c.nro_comprobante',
'                                          AND SAL.COD_USUARIO=AG.COD_USUARIO',
'                                            and sal.cod_motivo NOT in (''279'',''271'',''270'',''280'',''269'',''281'')) fecha_seguimiento',
'                                            , c.cod_cliente,c.nom_cliente nombre_cliente',
'  from vt_ordenes_trabajo c, st_articulos a, monedas m,',
'    cc_clientes cl, personas p',
'        , CM_PROVEEDORES CL2, PERSONAS P2, ca_estado_ot es, vt_origenes ori, ca_agente_call ag, personas per, usuarios u',
'',
'  where c.cod_empresa = ''1''',
'',
'and ag.cod_empresa(+)=cl.cod_empresa',
'and ag.cod_vendedor(+)=cl.cod_vendedor',
'    and m.cod_moneda = ''1''',
'   AND CL2.COD_EMPRESA=C.COD_EMPRESA',
'   AND CL2.COD_PROVEEDOR=C.COD_PROVEEDOR',
'   AND CL2.COD_PERSONA=P2.COD_PERSONA',
'and u.cod_empresa=ag.cod_empresa',
'and u.cod_usuario=ag.cod_usuario',
'and u.cod_persona=per.cod_persona',
'and c.cod_usuario not in (''GASTROST'',''CALL4'')',
'  and cl.cod_vendedor in (select fv.cod_vendedor',
' from fv_vendedores fv',
' where fv.cod_empresa=cl.cod_empresa',
' and fv.cod_vendedor=cl.cod_vendedor',
' AND FV.COD_TIPO_GRUPO NOT IN (bs_busca_parametro(''FV'',''VEN_CAT_DIV_CORP'')))',
'',
' AND C.FEC_CIERRE between to_date(:P499_FEC_INI,''dd/mm/yyyy'') and to_date(:P499_FEC_FIN,''dd/mm/yyyy'')',
'  and ori.cod_empresa=c.cod_empresa',
'  and ori.cod_origen=c.cod_origen',
'  and ori.origen=''STNGO''',
'  AND C.COD_ORIGEN IN (''1'',''3'',''24'',''42'')',
' and NVL(u.Estado,''N'')=''A''',
'     AND NVL(C.ANULADO,''N'') NOT IN ''S''',
'  and es.cod_empresa=c.cod_empresa',
'  and es.cod_estado=c.estado_presu',
'    and c.cod_empresa = cl.cod_empresa',
'    and c.cod_cliente = cl.cod_cliente',
'    and cl.cod_persona = p.cod_persona',
'    and c.cod_empresa = a.cod_empresa',
'    and c.cod_articulo = a.cod_articulo',
'   )',
'   WHERE (COD_USUARIO= :P499_COD_USUARIO_AUX OR :P499_COD_USUARIO_AUX IS NULL)',
'   GROUP BY TIPO,',
'COD_USUARIO,TRAMO,nombre,',
'tip_comprobante, ser_comprobante, nro_comprobante,fec_creacion ,fec_presupuesto, fec_aprobado, fec_rechazo,',
'fec_cierre, fec_entrega , fecha_seguimiento, cod_cliente, nombre_cliente',
' )',
'where  cod_usuario not in (''GASTROST'',''CALL4'')',
'',
' group by TIPO , COD_USUARIO , NOMBRE , TRAMO,',
' tip_comprobante, ser_comprobante, nro_comprobante,fec_creacion ,fec_presupuesto, fec_aprobado, fec_rechazo,',
' fec_cierre, fec_entrega,fec_seguimiento, cod_cliente, nombre_cliente',
'',
'union all',
'SELECT',
'tip_comprobante, ser_comprobante, nro_comprobante,',
'fec_creacion, fec_presupuesto, fec_aprobado, fec_rechazo, fec_cierre, fec_entrega,',
'TIPO , COD_USUARIO , NOMBRE , TRAMO, sum(cantidad_proceso) TOTAL_APRO_RECHA,sum( TOTAL_OTS) TOTAL_OTS,1 ORDEN,',
' fec_seguimiento, cod_cliente, nombre_cliente',
'  FROM (select',
'        ',
'         ''STA'' TIPO,',
'         per.nombre,',
'         ag.cod_usuario,',
'         sumar_Dias_Habiles(c.fec_comprobante,',
'                            (select max(sal.fec_movimiento)',
'                               from ca_llamadas_salientes sal',
'                              where sal.cod_empresa = c.cod_empresa',
'                                and sal.cod_motivo = ''59''',
'                                and sal.tip_comprobante = c.tip_comprobante',
'                                and sal.ser_comprobante = c.ser_comprobante',
'                                and sal.nro_comprobante = c.nro_comprobante',
'                                AND SAL.COD_USUARIO=AG.COD_USUARIO)) dias,',
'         ',
'         (SELECT OB.TRAMO_GESTION',
'            FROM CA_objetivos_call OB',
'           WHERE OB.COD_EMPRESA = C.COD_EMPRESA',
'             AND OB.TIPO = ''STA''',
'                  and ob.tipo_vendedor=''TODOS''',
'             AND sumar_Dias_Habiles(c.fec_comprobante,',
'                                    (select max(sal.fec_movimiento)',
'                                       from ca_llamadas_salientes sal',
'                                      where sal.cod_empresa = c.cod_empresa',
'                                        and sal.cod_motivo = ''59''',
'                                        and sal.tip_comprobante =',
'                                            c.tip_comprobante',
'                                        and sal.ser_comprobante =',
'                                            c.ser_comprobante',
'                                        and sal.nro_comprobante =',
'                                            c.nro_comprobante',
'                                            AND SAL.COD_USUARIO=AG.COD_USUARIO)',
'                                            ) BETWEEN',
'         OB.DIAS_INI AND DIAS_FIN) TRAMO,',
'       (SELECT OB.PORCENTAJE',
'          FROM CA_objetivos_call OB',
'         WHERE OB.COD_EMPRESA = C.COD_EMPRESA',
'           AND OB.TIPO = ''STA''',
'             and ob.tipo_vendedor=''TODOS''',
'           AND sumar_Dias_Habiles(c.fec_comprobante,',
'                                  (select max(sal.fec_movimiento)',
'                                     from ca_llamadas_salientes sal',
'                                    where sal.cod_empresa = c.cod_empresa',
'                                      and sal.cod_motivo = ''59''',
'                                      and sal.tip_comprobante =',
'                                          c.tip_comprobante',
'                                      and sal.ser_comprobante =',
'                                          c.ser_comprobante',
'                                      and sal.nro_comprobante =',
'                                          c.nro_comprobante',
'                                          AND SAL.COD_USUARIO=AG.COD_USUARIO)) BETWEEN',
'               OB.DIAS_INI AND DIAS_FIN) PORCENTAJE,',
'       (SELECT OB.MONTO',
'          FROM CA_objetivos_call OB',
'         WHERE OB.COD_EMPRESA = C.COD_EMPRESA',
'           AND OB.TIPO = ''STA''',
'             and ob.tipo_vendedor=''TODOS''',
'           AND sumar_Dias_Habiles(c.fec_comprobante,',
'                                  (select max(sal.fec_movimiento)',
'                                     from ca_llamadas_salientes sal',
'                                    where sal.cod_empresa = c.cod_empresa',
'                                      and sal.cod_motivo = ''59''',
'                                      and sal.tip_comprobante =',
'                                          c.tip_comprobante',
'                                      and sal.ser_comprobante =',
'                                          c.ser_comprobante',
'                                      and sal.nro_comprobante =',
'                                          c.nro_comprobante',
'                                          AND SAL.COD_USUARIO=AG.COD_USUARIO)) BETWEEN OB.DIAS_INI AND DIAS_FIN',
'                                          ) MONTO,    ',
'       CASE',
'         WHEN fec_comprobante is not null THEN',
'          1',
'         ELSE',
'          0',
'       END CANTIDAD_APRO_RECHA,',
'       CASE WHEN (select max(sal.fec_movimiento)',
'                    from ca_llamadas_salientes sal',
'                   where sal.cod_empresa = c.cod_empresa',
'                     and sal.cod_motivo = ''59''',
'                     and sal.tip_comprobante = c.tip_comprobante',
'                     and sal.ser_comprobante = c.ser_comprobante',
'                     and sal.nro_comprobante = c.nro_comprobante',
'                     AND SAL.COD_USUARIO=AG.COD_USUARIO) BETWEEN to_date(:P499_FEC_INI,''dd/mm/yyyy'') and to_date(:P499_FEC_FIN,''dd/mm/yyyy'') THEN 1 ELSE 0 END cantidad_proceso, 1 TOTAL',
'                     ,',
'(select max(sal.fec_movimiento)',
'                                     from ca_llamadas_salientes sal',
'                                    where sal.cod_empresa = c.cod_empresa',
'                                      and sal.cod_motivo = ''59''',
'                                      and sal.tip_comprobante =',
'                                          c.tip_comprobante',
'                                      and sal.ser_comprobante =',
'                                          c.ser_comprobante',
'                                      and sal.nro_comprobante =',
'                                          c.nro_comprobante)fec_seguimiento ,',
'                                          c.fec_entrega      , c.fec_cierre     , ',
'                                          c.fec_rechazo, c.fec_presupuestado  ,',
'                                          c.fec_aprobacion fec_aprobado  ,',
'                                          c.fec_comprobante fec_creacion  , ',
'                                          c.fec_presupuestado fec_presupuesto  , ',
'                                          c.nro_comprobante, c.ser_comprobante,',
'                                          c.tip_comprobante ,1 TOTAL_OTS',
'                                          , c.cod_cliente,c.nom_cliente nombre_cliente',
' from vt_ordenes_trabajo c,',
'       st_articulos       a,',
'       monedas            m,',
'       cc_clientes        cl,',
'       personas           p,',
'       CM_PROVEEDORES     CL2,',
'       PERSONAS           P2,',
'       ca_estado_ot       es,',
'       vt_origenes        ori,',
'       USUARIOS     ag,',
'       personas           per,',
'       usuarios           u',
'',
' where c.cod_empresa = ''1''',
'      ',
'  and ag.cod_empresa = c.cod_empresa',
'   and ag.cod_usuario = c.cod_usuario',
'   and m.cod_moneda = ''1''',
'   AND CL2.COD_EMPRESA = C.COD_EMPRESA',
'   AND CL2.COD_PROVEEDOR = C.COD_PROVEEDOR',
'   AND CL2.COD_PERSONA = P2.COD_PERSONA',
'   and u.cod_empresa = ag.cod_empresa',
'   and u.cod_usuario = ag.cod_usuario',
'   and u.cod_persona = per.cod_persona',
'    and c.cod_usuario not in (''CALL4'',''CARGAST1'',''WEBSERVER'')',
'      and c.cod_usuario not in (''GASTROST'',''CALL4'')',
'',
' AND C.fec_comprobante between to_date(:P499_FEC_INI,''dd/mm/yyyy'') and to_date(:P499_FEC_FIN,''dd/mm/yyyy'')',
' ',
'   and ori.cod_empresa = c.cod_empresa',
'   and ori.cod_origen = c.cod_origen',
'   and ori.origen = ''STA''',
'   AND C.COD_ORIGEN IN (''2'',''27'')',
'   and NVL(u.Estado, ''N'') = ''A''',
'   AND NVL(C.ANULADO, ''N'') NOT IN ''S''',
'   and es.cod_empresa = c.cod_empresa',
'   and es.cod_estado = c.estado_presu',
'   and c.cod_empresa = cl.cod_empresa',
'   and nvl(c.cod_distribuidor,c.cod_cliente) = cl.cod_cliente',
'   and cl.cod_persona = p.cod_persona',
'   and c.cod_empresa = a.cod_empresa',
'   and  NVL(c.cod_articulo, C.COD_ARTICULO_CALL) = a.cod_articulo)',
' WHERE (COD_USUARIO = :P499_COD_USUARIO_AUX OR :P499_COD_USUARIO_AUX IS NULL)',
' and cod_usuario not in (''GASTROST'',''CALL4'')',
'  GROUP BY TIPO,',
'COD_USUARIO,TRAMO,nombre,',
'tip_comprobante, ser_comprobante, nro_comprobante,fec_creacion ,fec_presupuesto, fec_aprobado, fec_rechazo,',
'fec_cierre, fec_entrega, fec_seguimiento, cod_cliente, nombre_cliente',
'',
' ',
' ',
'order by 7,1, 3,4'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P499_FEC_INI,P499_FEC_FIN,P499_COD_USUARIO_AUX,P499_EJECUTAR_REPORTE'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'REPORT - caobjeagendet'
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
 p_id=>wwv_flow_imp.id(148486094136869137)
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
,p_internal_uid=>148486094136869137
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(148486257272869139)
,p_db_column_name=>'SER_COMPROBANTE'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Ser Comprobante'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(148487084943869147)
,p_db_column_name=>'TIPO'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Tipo'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(148487175844869148)
,p_db_column_name=>'COD_USUARIO'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Cod Usuario'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(148487211584869149)
,p_db_column_name=>'NOMBRE'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Nombre'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(148487386090869150)
,p_db_column_name=>'TRAMO'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Tramo'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(149004997338384205)
,p_db_column_name=>'COD_CLIENTE'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'Cod Cliente'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(149005067073384206)
,p_db_column_name=>'NOMBRE_CLIENTE'
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>'Nombre Cliente'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(152912355045431010)
,p_db_column_name=>'TIP_COMPROBANTE'
,p_display_order=>200
,p_column_identifier=>'AE'
,p_column_label=>'Tip Comprobante'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(152912425989431011)
,p_db_column_name=>'NRO_COMPROBANTE'
,p_display_order=>210
,p_column_identifier=>'AF'
,p_column_label=>'Nro Comprobante'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(152912502512431012)
,p_db_column_name=>'FEC_CREACION'
,p_display_order=>220
,p_column_identifier=>'AG'
,p_column_label=>'Fec Creacion'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(152912697614431013)
,p_db_column_name=>'FEC_PRESUPUESTO'
,p_display_order=>230
,p_column_identifier=>'AH'
,p_column_label=>'Fec Presupuesto'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(152912787999431014)
,p_db_column_name=>'FEC_APROBADO'
,p_display_order=>240
,p_column_identifier=>'AI'
,p_column_label=>'Fec Aprobado'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(152912808643431015)
,p_db_column_name=>'FEC_RECHAZO'
,p_display_order=>250
,p_column_identifier=>'AJ'
,p_column_label=>'Fec Rechazo'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(152912940158431016)
,p_db_column_name=>'FEC_CIERRE'
,p_display_order=>260
,p_column_identifier=>'AK'
,p_column_label=>'Fec Cierre'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(152913092402431017)
,p_db_column_name=>'FEC_ENTREGA'
,p_display_order=>270
,p_column_identifier=>'AL'
,p_column_label=>'Fec Entrega'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(152913189896431018)
,p_db_column_name=>'TOTAL_APRO_RECHA'
,p_display_order=>280
,p_column_identifier=>'AM'
,p_column_label=>'Total Apro Recha'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(152913292339431019)
,p_db_column_name=>'TOTAL_OTS'
,p_display_order=>290
,p_column_identifier=>'AN'
,p_column_label=>'Total Ots'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(152913301999431020)
,p_db_column_name=>'ORDEN'
,p_display_order=>300
,p_column_identifier=>'AO'
,p_column_label=>'Orden'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(152913465826431021)
,p_db_column_name=>'FEC_SEGUIMIENTO'
,p_display_order=>310
,p_column_identifier=>'AP'
,p_column_label=>'Fec Seguimiento'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(149017655362342474)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1490177'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'SER_COMPROBANTE:TIPO:COD_USUARIO:NOMBRE:TRAMO:COD_CLIENTE:NOMBRE_CLIENTE'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(148483046773869107)
,p_plug_name=>'REPORT - caobjeagencorpo'
,p_parent_plug_id=>wwv_flow_imp.id(148016688337078446)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>1040
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select TIPO,',
'       COD_USUARIO,',
'       NOMBRE,',
'       TRAMO,',
'       sum(TOTAL_APRO_RECHA) TOTAL_APRO_RECHA,',
'       sum(TOTAL_OTS) TOTAL_OTS,',
'       1 ORDEN,',
'       sum(cantidad_proceso) cantida_proceso,',
'       ''TODOS'' TIPO_COMISION',
'from (SELECT TIPO,',
'   COD_USUARIO,',
'   nombre,',
'   TRAMO,',
'   SUM(CANTIDAD_APRO_RECHA) TOTAL_APRO_RECHA,',
'   SUM(TOTAL) TOTAL_OTS,',
'   sum(cantidad_proceso) cantidad_proceso',
'',
'FROM (select CASE',
'             WHEN CL.TIP_CLIENTE IN (''1'', ''27'') THEN',
'              ''PRESUPUESTOS''',
'             ELSE',
'              ''PRESUPUESTOS''',
'           END TIPO,',
'           per.nombre,',
'           ag.cod_usuario,',
'           sumar_Dias_Habiles(c.fec_presupuestado,',
'                              nvl(c.fec_aprobacion, c.fec_rechazo)) dias,',
'           ',
'           (SELECT OB.TRAMO_GESTION',
'              FROM CA_objetivos_call OB',
'             WHERE OB.COD_EMPRESA = C.COD_EMPRESA',
'               AND OB.TIPO_VENDEDOR = ''CORPORATIVO''',
'               AND OB.TIPO = CASE',
'                     WHEN CL.TIP_CLIENTE IN (''1'', ''27'') THEN',
'                      ''PRESUPUESTOS''',
'                     ELSE',
'                      ''PRESUPUESTOS''',
'                   END',
'               AND sumar_Dias_Habiles(c.fec_presupuestado,',
'                                      nvl(c.fec_aprobacion,',
'                                          c.fec_rechazo)) BETWEEN',
'                   OB.DIAS_INI AND DIAS_FIN) TRAMO,',
'           (SELECT OB.PORCENTAJE',
'              FROM CA_objetivos_call OB',
'             WHERE OB.COD_EMPRESA = C.COD_EMPRESA',
'               AND OB.TIPO_VENDEDOR = ''CORPORATIVO''',
'               AND OB.TIPO = CASE',
'                     WHEN CL.TIP_CLIENTE IN (''1'', ''27'') THEN',
'                      ''PRESUPUESTOS''',
'                     ELSE',
'                      ''PRESUPUESTOS''',
'                   END',
'               AND sumar_Dias_Habiles(c.fec_presupuestado,',
'                                      nvl(c.fec_aprobacion,',
'                                          c.fec_rechazo)) BETWEEN',
'                   OB.DIAS_INI AND DIAS_FIN) PORCENTAJE,',
'           (SELECT OB.MONTO',
'              FROM CA_objetivos_call OB',
'             WHERE OB.COD_EMPRESA = C.COD_EMPRESA',
'               AND OB.TIPO_VENDEDOR = ''CORPORATIVO''',
'               AND OB.TIPO = CASE',
'                     WHEN CL.TIP_CLIENTE IN (''1'', ''27'') THEN',
'                      ''PRESUPUESTOS''',
'                     ELSE',
'                      ''PRESUPUESTOS''',
'                   END',
'               AND sumar_Dias_Habiles(c.fec_presupuestado,',
'                                      nvl(c.fec_aprobacion,',
'                                          c.fec_rechazo)) BETWEEN',
'                   OB.DIAS_INI AND DIAS_FIN) MONTO,',
'           ',
'           CASE',
'             WHEN nvl(c.fec_aprobacion, c.fec_rechazo) IS NOT NULL THEN',
'              1',
'             ELSE',
'              0',
'           END CANTIDAD_APRO_RECHA,',
'           1 TOTAL,',
'            CASE WHEN nvl(c.fec_aprobacion,c.fec_rechazo) IS NOT NULL AND',
'(select max(sal.fec_movimiento)',
'                         from ca_llamadas_salientes sal',
'                        where sal.cod_empresa = c.cod_empresa',
'                         ',
'                          and sal.tip_comprobante =',
'                              c.tip_comprobante',
'                          and sal.ser_comprobante =',
'                              c.ser_comprobante',
'                          and sal.nro_comprobante =',
'                              c.nro_comprobante',
'                              AND SAL.COD_USUARIO=AG.COD_USUARIO',
'                              and sal.cod_motivo in (''279'',''271'',''270'',''280'',''269'',''281'',''315'',''316'',''71'',''79'' ,''290'')) IS NOT NULL    THEN 1 ELSE 0 END  cantidad_proceso',
'      from vt_ordenes_trabajo c,',
'           st_articulos       a,',
'           monedas            m,',
'           cc_clientes        cl,',
'           personas           p,',
'           CM_PROVEEDORES     CL2,',
'           PERSONAS           P2,',
'           ca_estado_ot       es,',
'           vt_origenes        ori,',
'           ca_agente_call     ag,',
'           personas           per,',
'           usuarios           u',
'    ',
'     where c.cod_empresa = ''1''',
unistr('       AND :P499_EJECUTAR_REPORTE = ''1'' --CONDICION DE EJECUCI\00D3N  '),
'       and ag.cod_empresa(+) = cl.cod_empresa',
'       and ag.cod_vendedor(+) = cl.cod_vendedor',
'       and m.cod_moneda = ''1''',
'       AND CL2.COD_EMPRESA = C.COD_EMPRESA',
'       AND CL2.COD_PROVEEDOR = C.COD_PROVEEDOR',
'       AND CL2.COD_PERSONA = P2.COD_PERSONA',
'       and u.cod_empresa = ag.cod_empresa',
'       and u.cod_usuario = ag.cod_usuario',
'       and u.cod_persona = per.cod_persona',
'       AND C.Fec_Presupuestado between to_date(:P499_FEC_INI,''dd/mm/yyyy'') and',
'           to_date(:P499_FEC_FIN,''dd/mm/yyyy'')',
'       and cl.cod_vendedor in',
'           (select fv.cod_vendedor',
'              from fv_vendedores fv',
'             where fv.cod_empresa = cl.cod_empresa',
'               and fv.cod_vendedor = cl.cod_vendedor',
'               AND FV.COD_TIPO_GRUPO IN',
'                   (bs_busca_parametro(''FV'', ''VEN_CAT_DIV_CORP'')))',
'          /* and nvl(c.ind_garantia,''N'')<>''S''  solicitud de diana amarilla 18/11/2020*/',
'       and ori.cod_empresa = c.cod_empresa',
'       and ori.cod_origen = c.cod_origen',
'       and ori.origen = ''STNGO''',
'       AND C.COD_ORIGEN IN (''1'', ''3'')',
'       AND NVL(C.ANULADO, ''N'') NOT IN (''S'')',
'       and NVL(u.Estado, ''N'') = ''A''',
'       and es.cod_empresa = c.cod_empresa',
'       and es.cod_estado = c.estado_presu',
'       and c.cod_empresa = cl.cod_empresa',
'       and c.cod_cliente = cl.cod_cliente',
'       and cl.cod_persona = p.cod_persona',
'       and c.cod_empresa = a.cod_empresa',
'       and c.cod_articulo = a.cod_articulo)',
'WHERE (COD_USUARIO = :P499_COD_USUARIO_AUX OR :P499_COD_USUARIO_AUX IS NULL)',
'GROUP BY TIPO, COD_USUARIO, TRAMO, nombre',
'UNION ALL',
'SELECT TIPO,',
'   COD_USUARIO,',
'   nombre,',
'   TRAMO,',
'   SUM(CANTIDAD_APRO_RECHA) TOTAL_APRO_RECHA,',
'   SUM(TOTAL) TOTAL_OTS,',
'   sum(cantidad_proceso) cantidad_proceso',
'',
'FROM (select CASE',
'             WHEN NVL(C.IND_GARANTIA, ''N'') = ''S'' THEN',
'              ''ENTREGADAS_GARANTIA''',
'             ELSE',
'              ''ENTREGADAS_PARTICULAR''',
'           END TIPO,',
'           per.nombre,',
'           ag.cod_usuario,',
'           sumar_Dias_Habiles(C.FEC_CIERRE,',
'                              nvl(c.Fecha_Retirado, Fec_Entrega)) dias,',
'           ',
'           (SELECT OB.TRAMO_GESTION',
'              FROM CA_objetivos_call OB',
'             WHERE OB.COD_EMPRESA = C.COD_EMPRESA',
'               AND OB.TIPO_VENDEDOR = ''CORPORATIVO''',
'               AND OB.TIPO = CASE',
'                     WHEN NVL(C.IND_GARANTIA, ''N'') = ''S'' THEN',
'                      ''ENTREGADAS_GARANTIA''',
'                     ELSE',
'                      ''ENTREGADAS_PARTICULAR''',
'                   END',
'               AND sumar_Dias_Habiles(C.FEC_CIERRE,',
'                                      nvl(c.Fecha_Retirado,',
'                                          Fec_Entrega)) BETWEEN',
'                   OB.DIAS_INI AND DIAS_FIN) TRAMO,',
'           (SELECT OB.PORCENTAJE',
'              FROM CA_objetivos_call OB',
'             WHERE OB.COD_EMPRESA = C.COD_EMPRESA',
'               AND OB.TIPO_VENDEDOR = ''CORPORATIVO''',
'               AND OB.TIPO = CASE',
'                     WHEN NVL(C.IND_GARANTIA, ''N'') = ''S'' THEN',
'                      ''ENTREGADAS_GARANTIA''',
'                     ELSE',
'                      ''ENTREGADAS_PARTICULAR''',
'                   END',
'               AND sumar_Dias_Habiles(C.FEC_CIERRE,',
'                                      nvl(c.Fecha_Retirado,',
'                                          Fec_Entrega)) BETWEEN',
'                   OB.DIAS_INI AND DIAS_FIN) PORCENTAJE,',
'           (SELECT OB.MONTO',
'              FROM CA_objetivos_call OB',
'             WHERE OB.COD_EMPRESA = C.COD_EMPRESA',
'               AND OB.TIPO_VENDEDOR = ''CORPORATIVO''',
'               AND OB.TIPO = CASE',
'                     WHEN NVL(C.IND_GARANTIA, ''N'') = ''S'' THEN',
'                      ''ENTREGADAS_GARANTIA''',
'                     ELSE',
'                      ''ENTREGADAS_PARTICULAR''',
'                   END',
'               AND sumar_Dias_Habiles(C.FEC_CIERRE,',
'                                      nvl(c.Fecha_Retirado,',
'                                          Fec_Entrega)) BETWEEN',
'                   OB.DIAS_INI AND DIAS_FIN) MONTO,',
'           ',
'           CASE',
'             WHEN fec_cierre is not null THEN',
'              1',
'             ELSE',
'              0',
'           END CANTIDAD_APRO_RECHA,',
'               1 TOTAL,',
'            CASE WHEN (nvl(c.Fecha_Retirado, Fec_Entrega)    BETWEEN   to_date(:P499_FEC_INI,''dd/mm/yyyy'') and to_date(:P499_FEC_FIN,''dd/mm/yyyy'')  OR NVL(C.IND_SNC,''N'')=''S'')',
'AND   ',
'(select max(sal.fec_movimiento)',
'                         from ca_llamadas_salientes sal',
'                        where sal.cod_empresa = c.cod_empresa                                    ',
'                          and sal.tip_comprobante =',
'                              c.tip_comprobante',
'                          and sal.ser_comprobante =',
'                              c.ser_comprobante',
'                          and sal.nro_comprobante =',
'                              c.nro_comprobante',
'                              AND SAL.COD_USUARIO=AG.COD_USUARIO',
'                              and sal.cod_motivo not  in (''279'',''271'',''270'',''280'',''269'',''281'',''315'',''316'',''71'',''79'',''290'')) IS NOT NULL  ',
'',
'THEN 1 ELSE 0 END cantidad_proceso  ',
'       ',
'      from vt_ordenes_trabajo c,',
'           st_articulos       a,',
'           monedas            m,',
'           cc_clientes        cl,',
'           personas           p,',
'           CM_PROVEEDORES     CL2,',
'           PERSONAS           P2,',
'           ca_estado_ot       es,',
'           vt_origenes        ori,',
'           ca_agente_call     ag,',
'           personas           per,',
'           usuarios           u',
'    ',
'     where c.cod_empresa = ''1''',
'          ',
'       and ag.cod_empresa(+) = cl.cod_empresa',
'       and ag.cod_vendedor(+) = cl.cod_vendedor',
'       and m.cod_moneda = ''1''',
'       AND CL2.COD_EMPRESA = C.COD_EMPRESA',
'       AND CL2.COD_PROVEEDOR = C.COD_PROVEEDOR',
'       AND CL2.COD_PERSONA = P2.COD_PERSONA',
'       and u.cod_empresa = ag.cod_empresa',
'       and u.cod_usuario = ag.cod_usuario',
'       and u.cod_persona = per.cod_persona',
'       and cl.cod_vendedor in',
'           (select fv.cod_vendedor',
'              from fv_vendedores fv',
'             where fv.cod_empresa = cl.cod_empresa',
'               and fv.cod_vendedor = cl.cod_vendedor',
'               AND FV.COD_TIPO_GRUPO IN',
'                   (bs_busca_parametro(''FV'', ''VEN_CAT_DIV_CORP'')))',
'          ',
'       AND C.FEC_CIERRE between to_date(:P499_FEC_INI,''dd/mm/yyyy'') and to_date(:P499_FEC_FIN,''dd/mm/yyyy'')',
'       and ori.cod_empresa = c.cod_empresa',
'       and ori.cod_origen = c.cod_origen',
'       and ori.origen = ''STNGO''',
'       AND C.COD_ORIGEN IN (''1'', ''3'' )',
'       and NVL(u.Estado, ''N'') = ''A''',
'       AND NVL(C.ANULADO, ''N'') NOT IN ''S''',
'       and es.cod_empresa = c.cod_empresa',
'       and es.cod_estado = c.estado_presu',
'       and c.cod_empresa = cl.cod_empresa',
'       and c.cod_cliente = cl.cod_cliente',
'       and cl.cod_persona = p.cod_persona',
'       and c.cod_empresa = a.cod_empresa',
'       and c.cod_articulo = a.cod_articulo)',
'WHERE (COD_USUARIO = :P499_COD_USUARIO_AUX OR :P499_COD_USUARIO_AUX IS NULL)',
'',
'GROUP BY TIPO, COD_USUARIO, TRAMO, nombre',
'union all',
'',
'SELECT TIPO,',
'   COD_USUARIO,',
'   nombre,',
'   TRAMO,',
'   SUM(CANTIDAD_APRO_RECHA) TOTAL_APRO_RECHA,',
'   SUM(TOTAL) TOTAL_OTS,',
'   sum(cantidad_proceso) cantidad_proceso',
'',
'FROM (select',
'    ',
'     ''STA'' TIPO,',
'     per.nombre,',
'     C.cod_usuario,',
'     sumar_Dias_Habiles(c.fec_comprobante,',
'                        (select max(sal.fec_movimiento)',
'                           from ca_llamadas_salientes sal',
'                          where sal.cod_empresa = c.cod_empresa',
'                            and sal.cod_motivo = ''59''',
'                            and sal.tip_comprobante =',
'                                c.tip_comprobante',
'                            and sal.ser_comprobante =',
'                                c.ser_comprobante',
'                            and sal.nro_comprobante =',
'                                c.nro_comprobante',
'                                AND SAL.COD_USUARIO=C.COD_USUARIO)) dias,',
'     ',
'     (SELECT OB.TRAMO_GESTION',
'        FROM CA_objetivos_call OB',
'       WHERE OB.COD_EMPRESA = C.COD_EMPRESA',
'         AND OB.TIPO = ''STA''',
'         AND OB.TIPO_VENDEDOR = ''CORPORATIVO''',
'         AND sumar_Dias_Habiles(c.fec_comprobante,',
'                                (select max(sal.fec_movimiento)',
'                                   from ca_llamadas_salientes sal',
'                                  where sal.cod_empresa =',
'                                        c.cod_empresa',
'                                    and sal.cod_motivo = ''59''',
'                                    and sal.tip_comprobante =',
'                                        c.tip_comprobante',
'                                    and sal.ser_comprobante =',
'                                        c.ser_comprobante',
'                                    and sal.nro_comprobante =',
'                                        c.nro_comprobante',
'                                        AND SAL.COD_USUARIO=C.COD_USUARIO)) BETWEEN',
'             OB.DIAS_INI AND DIAS_FIN) TRAMO,',
'     (SELECT OB.PORCENTAJE',
'        FROM CA_objetivos_call OB',
'       WHERE OB.COD_EMPRESA = C.COD_EMPRESA',
'         AND OB.TIPO = ''STA''',
'         AND OB.TIPO_VENDEDOR = ''CORPORATIVO''',
'         AND sumar_Dias_Habiles(c.fec_comprobante,',
'                                (select max(sal.fec_movimiento)',
'                                   from ca_llamadas_salientes sal',
'                                  where sal.cod_empresa =',
'                                        c.cod_empresa',
'                                    and sal.cod_motivo = ''59''',
'                                    and sal.tip_comprobante =',
'                                        c.tip_comprobante',
'                                    and sal.ser_comprobante =',
'                                        c.ser_comprobante',
'                                    and sal.nro_comprobante =',
'                                        c.nro_comprobante',
'                                        AND SAL.COD_USUARIO=C.COD_USUARIO)) BETWEEN',
'             OB.DIAS_INI AND DIAS_FIN) PORCENTAJE,',
'     (SELECT OB.MONTO',
'        FROM CA_objetivos_call OB',
'       WHERE OB.COD_EMPRESA = C.COD_EMPRESA',
'         AND OB.TIPO = ''STA''',
'         AND OB.TIPO_VENDEDOR = ''CORPORATIVO''',
'         AND sumar_Dias_Habiles(c.fec_comprobante,',
'                                (select max(sal.fec_movimiento)',
'                                   from ca_llamadas_salientes sal',
'                                  where sal.cod_empresa =',
'                                        c.cod_empresa',
'                                    and sal.cod_motivo = ''59''',
'                                    and sal.tip_comprobante =',
'                                        c.tip_comprobante',
'                                    and sal.ser_comprobante =',
'                                        c.ser_comprobante',
'                                    and sal.nro_comprobante =',
'                                        c.nro_comprobante',
'                                        AND SAL.COD_USUARIO=C.COD_USUARIO)) BETWEEN',
'             OB.DIAS_INI AND DIAS_FIN) MONTO,',
'     ',
'     CASE',
'       WHEN fec_comprobante is not null THEN',
'        1',
'       ELSE',
'        0',
'     END CANTIDAD_APRO_RECHA,',
'       1 TOTAL,',
'     CASE',
'       WHEN (select max(sal.fec_movimiento)',
'               from ca_llamadas_salientes sal',
'              where sal.cod_empresa = c.cod_empresa',
'                and sal.cod_motivo = ''59''',
'                and sal.tip_comprobante = c.tip_comprobante',
'                and sal.ser_comprobante = c.ser_comprobante',
'                and sal.nro_comprobante = c.nro_comprobante',
'                AND SAL.COD_USUARIO=C.COD_USUARIO) BETWEEN',
'            to_date(:P499_FEC_INI,''dd/mm/yyyy'') and to_date(:P499_FEC_FIN,''dd/mm/yyyy'') THEN',
'        1',
'       ELSE',
'        0',
'     END cantidad_proceso',
'   ',
'      from vt_ordenes_trabajo c,',
'           st_articulos       a,',
'           monedas            m,',
'           cc_clientes        cl,',
'           personas           p,',
'           CM_PROVEEDORES     CL2,',
'           PERSONAS           P2,',
'           ca_estado_ot       es,',
'           vt_origenes        ori,',
'         ',
'           personas           per,',
'           usuarios           u',
'    ',
'     where c.cod_empresa = ''1''                      ',
'      ',
'       and m.cod_moneda = ''1''',
'       AND CL2.COD_EMPRESA = C.COD_EMPRESA',
'       AND CL2.COD_PROVEEDOR = C.COD_PROVEEDOR',
'       AND CL2.COD_PERSONA = P2.COD_PERSONA',
'       and u.cod_empresa = C.cod_empresa',
'       and u.cod_usuario = C.cod_usuario',
'       and u.cod_persona = per.cod_persona',
'       AND C.COD_USUARIO =bs_busca_parametro(''CA'', ''AGENTE_GPV_DIV_CORP'')',
'     ',
'          ',
'       AND C.fec_comprobante between to_date(:P499_FEC_INI,''dd/mm/yyyy'') and',
'           to_date(:P499_FEC_FIN,''dd/mm/yyyy'')',
'          ',
'       and ori.cod_empresa = c.cod_empresa',
'       and ori.cod_origen = c.cod_origen',
'   ',
'       AND C.COD_ORIGEN IN (''2'',''23'')',
'       and NVL(u.Estado, ''N'') = ''A''',
'       AND NVL(C.ANULADO, ''N'') NOT IN ''S''',
'       and es.cod_empresa = c.cod_empresa',
'       and es.cod_estado = c.estado_presu',
'       and c.cod_empresa = cl.cod_empresa',
'       and c.cod_cliente = cl.cod_cliente',
'       and cl.cod_persona = p.cod_persona',
'       and c.cod_empresa = a.cod_empresa',
'       and c.cod_articulo = a.cod_articulo',
'    union all',
'    select',
'    ',
'     ''ORIGEN_40'' TIPO,',
'     per.nombre,',
'     ag.cod_usuario,',
'     sumar_Dias_Habiles(c.fec_comprobante,',
'                        (select max(sal.fec_movimiento)',
'                           from ca_llamadas_salientes sal',
'                          where sal.cod_empresa = c.cod_empresa',
'                            and sal.cod_motivo = ''59''',
'                            and sal.tip_comprobante =',
'                                c.tip_comprobante',
'                            and sal.ser_comprobante =',
'                                c.ser_comprobante',
'                            and sal.nro_comprobante =',
'                                c.nro_comprobante',
'                                AND SAL.COD_USUARIO=AG.COD_USUARIO)) dias,',
'     ',
'     (SELECT OB.TRAMO_GESTION',
'        FROM CA_objetivos_call OB',
'       WHERE OB.COD_EMPRESA = C.COD_EMPRESA',
'         AND OB.TIPO = ''ORIGEN_40''',
'         AND OB.TIPO_VENDEDOR = ''CORPORATIVO''',
'         AND sumar_Dias_Habiles(c.fec_comprobante,',
'                                (select max(sal.fec_movimiento)',
'                                   from ca_llamadas_salientes sal',
'                                  where sal.cod_empresa =',
'                                        c.cod_empresa',
'                                    and sal.cod_motivo = ''59''',
'                                    and sal.tip_comprobante =',
'                                        c.tip_comprobante',
'                                    and sal.ser_comprobante =',
'                                        c.ser_comprobante',
'                                    and sal.nro_comprobante =',
'                                        c.nro_comprobante',
'                                        AND SAL.COD_USUARIO=AG.COD_USUARIO)) BETWEEN',
'             OB.DIAS_INI AND DIAS_FIN) TRAMO,',
'     (SELECT OB.PORCENTAJE',
'        FROM CA_objetivos_call OB',
'       WHERE OB.COD_EMPRESA = C.COD_EMPRESA',
'         AND OB.TIPO = ''ORIGEN_40''',
'         AND OB.TIPO_VENDEDOR = ''CORPORATIVO''',
'         AND sumar_Dias_Habiles(c.fec_comprobante,',
'                                (select max(sal.fec_movimiento)',
'                                   from ca_llamadas_salientes sal',
'                                  where sal.cod_empresa =',
'                                        c.cod_empresa',
'                                    and sal.cod_motivo = ''59''',
'                                    and sal.tip_comprobante =',
'                                        c.tip_comprobante',
'                                    and sal.ser_comprobante =',
'                                        c.ser_comprobante',
'                                    and sal.nro_comprobante =',
'                                        c.nro_comprobante',
'                                        AND SAL.COD_USUARIO=AG.COD_USUARIO)) BETWEEN',
'             OB.DIAS_INI AND DIAS_FIN) PORCENTAJE,',
'     (SELECT OB.MONTO',
'        FROM CA_objetivos_call OB',
'       WHERE OB.COD_EMPRESA = C.COD_EMPRESA',
'         AND OB.TIPO = ''ORIGEN_40''',
'         AND OB.TIPO_VENDEDOR = ''CORPORATIVO''',
'         AND sumar_Dias_Habiles(c.fec_comprobante,',
'                                (select max(sal.fec_movimiento)',
'                                   from ca_llamadas_salientes sal',
'                                  where sal.cod_empresa =',
'                                        c.cod_empresa',
'                                    and sal.cod_motivo = ''59''',
'                                    and sal.tip_comprobante =',
'                                        c.tip_comprobante',
'                                    and sal.ser_comprobante =',
'                                        c.ser_comprobante',
'                                    and sal.nro_comprobante =',
'                                        c.nro_comprobante',
'                                        AND SAL.COD_USUARIO=AG.COD_USUARIO)) BETWEEN',
'             OB.DIAS_INI AND DIAS_FIN) MONTO,',
'     ',
'     CASE',
'       WHEN fec_comprobante is not null THEN',
'        1',
'       ELSE',
'        0',
'     END CANTIDAD_APRO_RECHA,',
'       1 TOTAL,',
'     CASE',
'       WHEN (select max(sal.fec_movimiento)',
'               from ca_llamadas_salientes sal',
'              where sal.cod_empresa = c.cod_empresa',
'                and sal.cod_motivo = ''59''',
'                and sal.tip_comprobante = c.tip_comprobante',
'                and sal.ser_comprobante = c.ser_comprobante',
'                and sal.nro_comprobante = c.nro_comprobante',
'                AND SAL.COD_USUARIO=AG.COD_USUARIO) BETWEEN',
'            to_date(:P499_FEC_INI,''dd/mm/yyyy'') and to_date(:P499_FEC_FIN,''dd/mm/yyyy'') THEN',
'        1',
'       ELSE',
'        0',
'     END cantidad_proceso',
'   ',
'      from vt_ordenes_trabajo c,',
'           st_articulos       a,',
'           monedas            m,',
'           cc_clientes        cl,',
'           personas           p,',
'           CM_PROVEEDORES     CL2,',
'           PERSONAS           P2,',
'           ca_estado_ot       es,',
'           vt_origenes        ori,',
'           usuarios     ag,',
'           personas           per,',
'           usuarios           u',
'    ',
'     where c.cod_empresa = ''1''',
'          ',
'       and ag.cod_empresa(+) = c.cod_empresa',
'       and ag.cod_usuario(+) = c.cod_usuario',
'       and m.cod_moneda = ''1''',
'       AND CL2.COD_EMPRESA = C.COD_EMPRESA',
'       AND CL2.COD_PROVEEDOR = C.COD_PROVEEDOR',
'       AND CL2.COD_PERSONA = P2.COD_PERSONA',
'       and u.cod_empresa = ag.cod_empresa',
'       and u.cod_usuario = ag.cod_usuario',
'       and u.cod_persona = per.cod_persona',
'        AND C.COD_USUARIO =bs_busca_parametro(''CA'', ''AGENTE_GPV_DIV_CORP'')',
'       /*and cl.cod_vendedor in',
'           (select fv.cod_vendedor',
'              from fv_vendedores fv',
'             where fv.cod_empresa = cl.cod_empresa',
'               and fv.cod_vendedor = cl.cod_vendedor',
'               AND FV.COD_TIPO_GRUPO IN',
'                   (bs_busca_parametro(''FV'', ''VEN_CAT_DIV_CORP'')))*/',
'          -- and c.fec_comprobante >= to_date(:P499_FEC_INI,''dd/mm/yyyy'') - 180',
'          ',
'       AND C.fec_comprobante between to_date(:P499_FEC_INI,''dd/mm/yyyy'') and',
'           to_date(:P499_FEC_FIN,''dd/mm/yyyy'')',
'          ',
'       and ori.cod_empresa = c.cod_empresa',
'       and ori.cod_origen = c.cod_origen',
'          ',
'       AND C.COD_ORIGEN IN (''40'')',
'       and NVL(u.Estado, ''N'') = ''A''',
'       AND NVL(C.ANULADO, ''N'') NOT IN ''S''',
'       and es.cod_empresa = c.cod_empresa',
'       and es.cod_estado = c.estado_presu',
'       and c.cod_empresa = cl.cod_empresa',
'       and c.cod_cliente = cl.cod_cliente',
'       and cl.cod_persona = p.cod_persona',
'       and c.cod_empresa = a.cod_empresa',
'       and c.cod_articulo = a.cod_articulo',
'    union all',
'    select',
'    ',
'     ''ORIGEN_14_CIERRE'' TIPO,',
'     per.nombre,',
'     ag.cod_usuario,',
'     sumar_Dias_Habiles(c.fec_comprobante, C.FEC_CIERRE) dias,',
'     ',
'     (SELECT OB.TRAMO_GESTION',
'        FROM CA_objetivos_call OB',
'       WHERE OB.COD_EMPRESA = C.COD_EMPRESA',
'         AND OB.TIPO = ''ORIGEN_14_CIERRE''',
'         AND OB.TIPO_VENDEDOR = ''CORPORATIVO''',
'         AND sumar_Dias_Habiles(c.fec_comprobante, C.FEC_CIERRE) BETWEEN',
'             OB.DIAS_INI AND DIAS_FIN) TRAMO,',
'     (SELECT OB.PORCENTAJE',
'        FROM CA_objetivos_call OB',
'       WHERE OB.COD_EMPRESA = C.COD_EMPRESA',
'         AND OB.TIPO = ''ORIGEN_14_CIERRE''',
'         AND OB.TIPO_VENDEDOR = ''CORPORATIVO''',
'         AND sumar_Dias_Habiles(c.fec_comprobante, C.FEC_CIERRE) BETWEEN',
'             OB.DIAS_INI AND DIAS_FIN) PORCENTAJE,',
'     (SELECT OB.MONTO',
'        FROM CA_objetivos_call OB',
'       WHERE OB.COD_EMPRESA = C.COD_EMPRESA',
'         AND OB.TIPO = ''ORIGEN_14_CIERRE''',
'         AND OB.TIPO_VENDEDOR = ''CORPORATIVO''',
'         AND sumar_Dias_Habiles(c.fec_comprobante, C.FEC_CIERRE) BETWEEN',
'             OB.DIAS_INI AND DIAS_FIN) MONTO,',
'     ',
'     CASE',
'       WHEN fec_comprobante is not null THEN',
'        1',
'       ELSE',
'        0',
'     END CANTIDAD_APRO_RECHA,',
'      1 TOTAL,',
'     CASE',
'       WHEN C.FEC_CIERRE BETWEEN to_date(:P499_FEC_INI,''dd/mm/yyyy'') and to_date(:P499_FEC_FIN,''dd/mm/yyyy'') THEN',
'        1',
'       ELSE',
'        0',
'     END cantidad_proceso',
'     ',
'      from vt_ordenes_trabajo c,',
'           st_articulos       a,',
'           monedas            m,',
'           cc_clientes        cl,',
'           personas           p,',
'           CM_PROVEEDORES     CL2,',
'           PERSONAS           P2,',
'           ca_estado_ot       es,',
'           vt_origenes        ori,',
'           USUARIOS     ag,',
'           personas           per,',
'           usuarios           u',
'    ',
'     where c.cod_empresa = ''1''',
'          ',
'       and ag.cod_empresa = c.cod_empresa',
'       and ag.cod_usuario = c.cod_usuario',
'       and m.cod_moneda = ''1''',
'       AND CL2.COD_EMPRESA = C.COD_EMPRESA',
'       AND CL2.COD_PROVEEDOR = C.COD_PROVEEDOR',
'       AND CL2.COD_PERSONA = P2.COD_PERSONA',
'       and u.cod_empresa = ag.cod_empresa',
'       and u.cod_usuario = ag.cod_usuario',
'       and u.cod_persona = per.cod_persona',
'          AND C.COD_USUARIO =bs_busca_parametro(''CA'', ''AGENTE_GPV_DIV_CORP'')',
'          -- and c.fec_comprobante >= to_date(:P499_FEC_INI,''dd/mm/yyyy'') - 180',
'          ',
'       AND C.FEC_COMPROBANTE between to_date(:P499_FEC_INI,''dd/mm/yyyy'') and',
'           to_date(:P499_FEC_FIN,''dd/mm/yyyy'')',
'          ',
'       and ori.cod_empresa = c.cod_empresa',
'       and ori.cod_origen = c.cod_origen',
'          --  AND NVL(C.IND_GARANTIA,''N'')<>''S''',
'       AND C.COD_ORIGEN IN (''14'')',
'       and NVL(u.Estado, ''N'') = ''A''',
'       AND NVL(C.ANULADO, ''N'') NOT IN ''S''',
'       and es.cod_empresa = c.cod_empresa',
'       and es.cod_estado = c.estado_presu',
'       and c.cod_empresa = cl.cod_empresa',
'       and c.cod_cliente = cl.cod_cliente',
'       and cl.cod_persona = p.cod_persona',
'       and c.cod_empresa = a.cod_empresa',
'       and c.cod_articulo = a.cod_articulo',
'    ',
'    UNION ALL',
'    --ORIGEN 14 FACTUACION',
'    select',
'    ',
'     ''ORIGEN_14_FACTURA'' TIPO,',
'     per.nombre,',
'     ag.cod_usuario,',
'     sumar_Dias_Habiles(c.FEC_CIERRE, C.FEC_ENTREGA) dias,',
'     ',
'     (SELECT OB.TRAMO_GESTION',
'        FROM CA_objetivos_call OB',
'       WHERE OB.COD_EMPRESA = C.COD_EMPRESA',
'         AND OB.TIPO = ''ORIGEN_14_FACTURA''',
'         AND OB.TIPO_VENDEDOR = ''CORPORATIVO''',
'         AND sumar_Dias_Habiles(c.FEC_CIERRE, C.FEC_ENTREGA) BETWEEN',
'             OB.DIAS_INI AND DIAS_FIN) TRAMO,',
'     (SELECT OB.PORCENTAJE',
'        FROM CA_objetivos_call OB',
'       WHERE OB.COD_EMPRESA = C.COD_EMPRESA',
'         AND OB.TIPO = ''ORIGEN_14_FACTURA''',
'         AND OB.TIPO_VENDEDOR = ''CORPORATIVO''',
'         AND sumar_Dias_Habiles(c.FEC_CIERRE, C.FEC_ENTREGA) BETWEEN',
'             OB.DIAS_INI AND DIAS_FIN) PORCENTAJE,',
'     (SELECT OB.MONTO',
'        FROM CA_objetivos_call OB',
'       WHERE OB.COD_EMPRESA = C.COD_EMPRESA',
'         AND OB.TIPO = ''ORIGEN_14_FACTURA''',
'         AND OB.TIPO_VENDEDOR = ''CORPORATIVO''',
'         AND sumar_Dias_Habiles(c.FEC_CIERRE, C.FEC_ENTREGA) BETWEEN',
'             OB.DIAS_INI AND DIAS_FIN) MONTO,',
'     ',
'     CASE',
'       WHEN FEC_CIERRE is not null THEN',
'        1',
'       ELSE',
'        0',
'     END CANTIDAD_APRO_RECHA,',
'         1 TOTAL,',
'     CASE',
'       WHEN C.FEC_ENTREGA BETWEEN to_date(:P499_FEC_INI,''dd/mm/yyyy'') and to_date(:P499_FEC_FIN,''dd/mm/yyyy'') THEN',
'        1',
'       ELSE',
'        0',
'     END cantidad_proceso',
' ',
'      from vt_ordenes_trabajo c,',
'           st_articulos       a,',
'           monedas            m,',
'           cc_clientes        cl,',
'           personas           p,',
'           CM_PROVEEDORES     CL2,',
'           PERSONAS           P2,',
'           ca_estado_ot       es,',
'           vt_origenes        ori,',
'           usuarios     ag,',
'           personas           per,',
'           usuarios           u',
'    ',
'     where c.cod_empresa = ''1''',
'          ',
'       and ag.cod_empresa = c.cod_empresa',
'       and ag.cod_usuario = c.cod_usuario',
'       and m.cod_moneda = ''1''',
'       AND CL2.COD_EMPRESA = C.COD_EMPRESA',
'       AND CL2.COD_PROVEEDOR = C.COD_PROVEEDOR',
'       AND CL2.COD_PERSONA = P2.COD_PERSONA',
'       and u.cod_empresa = ag.cod_empresa',
'       and u.cod_usuario = ag.cod_usuario',
'       and u.cod_persona = per.cod_persona',
'        AND C.COD_USUARIO =bs_busca_parametro(''CA'', ''AGENTE_GPV_DIV_CORP'')',
'       /*and cl.cod_vendedor in',
'           (select fv.cod_vendedor',
'              from fv_vendedores fv',
'             where fv.cod_empresa = cl.cod_empresa',
'               and fv.cod_vendedor = cl.cod_vendedor',
'               AND FV.COD_TIPO_GRUPO IN',
'                   (bs_busca_parametro(''FV'', ''VEN_CAT_DIV_CORP'')))*/',
'          -- and c.fec_comprobante >= to_date(:P499_FEC_INI,''dd/mm/yyyy'') - 180',
'          ',
'       AND C.FEC_CIERRE between to_date(:P499_FEC_INI,''dd/mm/yyyy'') and to_date(:P499_FEC_FIN,''dd/mm/yyyy'')',
'          ',
'       and ori.cod_empresa = c.cod_empresa',
'       and ori.cod_origen = c.cod_origen',
'       AND NVL(C.IND_GARANTIA, ''N'') <> ''S''',
'       AND C.COD_ORIGEN IN (''14'')',
'    --   and NVL(u.Estado, ''N'') = ''A''',
'       AND NVL(C.ANULADO, ''N'') NOT IN ''S''',
'       and es.cod_empresa = c.cod_empresa',
'       and es.cod_estado = c.estado_presu',
'       and c.cod_empresa = cl.cod_empresa',
'       and c.cod_cliente = cl.cod_cliente',
'       and cl.cod_persona = p.cod_persona',
'       and c.cod_empresa = a.cod_empresa',
'       and c.cod_articulo = a.cod_articulo)',
'WHERE (COD_USUARIO = :P499_COD_USUARIO_AUX OR :P499_COD_USUARIO_AUX IS NULL)',
'',
'GROUP BY TIPO, COD_USUARIO, TRAMO, nombre',
'',
'union all',
'SELECT TIPO,',
'   COD_USUARIO,',
'   nombre,',
'   TRAMO,',
'   (CANTIDAD_APRO_RECHA) TOTAL_APRO_RECHA,',
'   (TOTAL) TOTAL_OTS,',
'   sum(cantidad_proceso) cantidad_proceso',
'',
'FROM (select obj.tipo,',
'           u.cod_usuario,',
'           p.nombre,',
'           0                 CANTIDAD_APRO_RECHA,',
'           0                 TOTAL,',
'           0                 cantidad_proceso,',
'           obj.tramo_gestion tramo',
'      from CA_objetivos_call obj,',
'           ca_agente_call    ag,',
'           personas          p,',
'           usuarios          u',
'     where obj.cod_empresa = ''1''',
'       and obj.cod_empresa = ag.cod_empresa',
'       and ag.cod_empresa = u.cod_empresa',
'       and ag.cod_vendedor in',
'           (select fv.cod_vendedor',
'              from fv_vendedores fv',
'             where fv.cod_empresa = ag.cod_empresa',
'               and fv.cod_vendedor = ag.cod_vendedor',
'                  ',
'               AND FV.COD_TIPO_GRUPO IN',
'                   (bs_busca_parametro(''FV'', ''VEN_CAT_DIV_CORP'')))',
'       AND OBJ.TIPO_VENDEDOR = ''CORPORATIVO''',
'       and ag.cod_usuario = u.cod_usuario',
'       and NVL(u.Estado, ''N'') = ''A''',
'       AND OBJ.ACTIVO = ''S''',
'       and p.cod_persona = u.cod_persona)',
'WHERE (COD_USUARIO = :P499_COD_USUARIO_AUX OR :P499_COD_USUARIO_AUX IS NULL)',
'group by TIPO,',
'      COD_USUARIO,',
'      nombre,',
'      TRAMO,',
'      (CANTIDAD_APRO_RECHA),',
'      (TOTAL))',
'group by TIPO, COD_USUARIO, NOMBRE, TRAMO',
'order by 7, 1, 3, 4'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P499_FEC_INI,P499_FEC_FIN,P499_COD_USUARIO_AUX,P499_EJECUTAR_REPORTE'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'REPORT - caobjeagencorpo'
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
 p_id=>wwv_flow_imp.id(149009372498384249)
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
,p_internal_uid=>149009372498384249
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(149009482321384250)
,p_db_column_name=>'TIPO'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Tipo'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(149552696465140701)
,p_db_column_name=>'COD_USUARIO'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Cod Usuario'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(149552745833140702)
,p_db_column_name=>'NOMBRE'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Nombre'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(149552884948140703)
,p_db_column_name=>'TRAMO'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Tramo'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(149553376178140708)
,p_db_column_name=>'TIPO_COMISION'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Tipo Comision'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(152911964909431006)
,p_db_column_name=>'TOTAL_APRO_RECHA'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Total Apro Recha'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(152912059146431007)
,p_db_column_name=>'TOTAL_OTS'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Total Ots'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(152912147918431008)
,p_db_column_name=>'ORDEN'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Orden'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(152912272223431009)
,p_db_column_name=>'CANTIDA_PROCESO'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Cantida Proceso'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(149573871891023232)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1495739'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'TIPO:COD_USUARIO:NOMBRE:TRAMO:TIPO_COMISION'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(148483125824869108)
,p_plug_name=>'REPORT - caobjeagencorpodet'
,p_parent_plug_id=>wwv_flow_imp.id(148016688337078446)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>1050
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT  c001 tip_comprobante,',
'       c002 ser_comprobante,',
'       c003 fec_creacion,',
'       c004 fec_presupuesto,',
'       c005 fec_aprobado,',
'       c006 fec_rechazo,',
'       c007 fec_cierre,',
'       c008 fec_entrega,',
'       c009 TIPO,',
'       c010 COD_USUARIO,',
'       c011 NOMBRE,',
'       c012 TRAMO,',
'       c013 TOTAL_APRO_RECHA,',
'       c014 TOTAL_OTS,',
'       c015 ORDEN',
'from APEX_COLLECTIONS',
unistr('  WHERE COLLECTION_NAME = ''COL_DET_CAOBJGPV2''AND :P499_EJECUTAR_REPORTE = ''1'' --CONDICION DE EJECUCI\00D3N')))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P499_FEC_INI,P499_FEC_FIN,P499_COD_USUARIO_AUXP499_FEC_INI,P499_FEC_FIN,P499_COD_USUARIO_AUX,P499_EJECUTAR_REPORTE'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'REPORT - caobjeagencorpodet'
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
 p_id=>wwv_flow_imp.id(149008345410384239)
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
,p_internal_uid=>149008345410384239
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(149008496457384240)
,p_db_column_name=>'TIPO'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Tipo'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(149008521476384241)
,p_db_column_name=>'COD_USUARIO'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Cod Usuario'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(149008672957384242)
,p_db_column_name=>'NOMBRE'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Nombre'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(149008714462384243)
,p_db_column_name=>'TRAMO'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Tramo'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(149008881831384244)
,p_db_column_name=>'TOTAL_APRO_RECHA'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Total Apro Recha'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(149008940691384245)
,p_db_column_name=>'TOTAL_OTS'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Total Ots'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(149009050377384246)
,p_db_column_name=>'ORDEN'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Orden'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(149553461052140709)
,p_db_column_name=>'TIP_COMPROBANTE'
,p_display_order=>80
,p_column_identifier=>'J'
,p_column_label=>'Tip Comprobante'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(149553541727140710)
,p_db_column_name=>'SER_COMPROBANTE'
,p_display_order=>90
,p_column_identifier=>'K'
,p_column_label=>'Ser Comprobante'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(149553641471140711)
,p_db_column_name=>'FEC_CREACION'
,p_display_order=>100
,p_column_identifier=>'L'
,p_column_label=>'Fec Creacion'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(149553745061140712)
,p_db_column_name=>'FEC_PRESUPUESTO'
,p_display_order=>110
,p_column_identifier=>'M'
,p_column_label=>'Fec Presupuesto'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(149553865559140713)
,p_db_column_name=>'FEC_APROBADO'
,p_display_order=>120
,p_column_identifier=>'N'
,p_column_label=>'Fec Aprobado'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(149553909376140714)
,p_db_column_name=>'FEC_RECHAZO'
,p_display_order=>130
,p_column_identifier=>'O'
,p_column_label=>'Fec Rechazo'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(149554035671140715)
,p_db_column_name=>'FEC_CIERRE'
,p_display_order=>140
,p_column_identifier=>'P'
,p_column_label=>'Fec Cierre'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(149554174334140716)
,p_db_column_name=>'FEC_ENTREGA'
,p_display_order=>150
,p_column_identifier=>'Q'
,p_column_label=>'Fec Entrega'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(149546022268346088)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1495461'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>10
,p_report_columns=>'TIPO:COD_USUARIO:NOMBRE:TRAMO:TOTAL_APRO_RECHA:TOTAL_OTS:ORDEN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(148483259229869109)
,p_plug_name=>'REPORT - caobjeagengas'
,p_parent_plug_id=>wwv_flow_imp.id(148016688337078446)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>1060
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select       nombre ,',
'       cod_usuario ,',
'       CASO tipo ,',
'       tramo ,',
'       monto ,',
'       PORCENTAJE ,',
'       sum(val)cant ,  ',
'       total ',
'FROM(',
'select v.nro_comprobante,',
'       v.nombre,',
'       v.cod_usuario, ',
'                       (SELECT OB.TRAMO_GESTION',
'                          FROM CA_OBJETIVOS_GASTRO OB',
'                         WHERE OB.COD_EMPRESA = v.COD_EMPRESA',
'                           AND OB.TIPO = v.caso ',
'                           AND v.dias  BETWEEN OB.DIAS_INI AND DIAS_FIN) TRAMO,',
'                       (SELECT OB.PORCENTAJE',
'                          FROM CA_OBJETIVOS_GASTRO OB',
'                         WHERE OB.COD_EMPRESA = v.COD_EMPRESA',
'                           AND OB.TIPO = v.caso ',
'                           AND v.dias  BETWEEN OB.DIAS_INI AND DIAS_FIN) PORCENTAJE,',
'                       (SELECT OB.MONTO',
'                          FROM CA_OBJETIVOS_GASTRO OB',
'                         WHERE OB.COD_EMPRESA = v.COD_EMPRESA',
'                           AND OB.TIPO = v.caso ',
'                           AND v.dias  BETWEEN OB.DIAS_INI AND DIAS_FIN) MONTO,',
'                           v.fecha,',
'                           v.FEC_CIERRE,',
'                           v.caso ',
'                           ,nvl((select sum(v2.val) from  iNV.VW_COMISIONES_CALL_GASTRO v2',
'                             where v2.caso = v.caso',
'                             and   v2.cod_usuario = v.cod_usuario',
'                             and   v2.FEC_CIERRE between to_date(:P499_FEC_INI,''dd/mm/yyyy'') and to_date(:P499_FEC_FIN,''dd/mm/yyyy'')',
'                            ),0)total',
'                          , 1 val',
'from INV.VW_COMISIONES_CALL_GASTRO v',
'where v.FEC_CIERRE between to_date(:P499_FEC_INI,''dd/mm/yyyy'') and to_date(:P499_FEC_FIN,''dd/mm/yyyy'')',
'',
'union all',
'',
'select distinct',
'       0,',
'       nn.nombre,',
'       nn.cod_usuario, ',
'       gg.TRAMO_GESTION TRAMO,',
'       gg.PORCENTAJE,',
'       gg.MONTO,',
'       null fecha,',
'       null FEC_CIERRE,',
'       gg.tipo caso ',
'                                ,nvl((select sum(v2.val) from  iNV.VW_COMISIONES_CALL_GASTRO v2',
'                             where v2.caso = gg.tipo',
'                             and   v2.cod_usuario = nn.cod_usuario',
'                             and   v2.FEC_CIERRE between to_date(:P499_FEC_INI,''dd/mm/yyyy'') and to_date(:P499_FEC_FIN,''dd/mm/yyyy'')',
'                            ),0)total',
'                          , 0 val',
'from VW_COMISIONES_CALL_GASTRO nn,',
'     CA_OBJETIVOS_GASTRO gg     ',
'where nn.FEC_CIERRE between to_date(:P499_FEC_INI,''dd/mm/yyyy'') and to_date(:P499_FEC_FIN,''dd/mm/yyyy'')',
'     ',
'',
'',
'',
') vw',
unistr('where (COD_USUARIO= :P499_COD_USUARIO_AUX OR :P499_COD_USUARIO_AUX IS NULL)AND :P499_EJECUTAR_REPORTE = ''1'' --CONDICION DE EJECUCI\00D3N'),
'group by nombre,',
'       cod_usuario,',
'       tramo,',
'       monto,',
'       PORCENTAJE,',
'        --GRUPO,',
'      caso,',
'       total',
'order by 1,3,4'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P499_FEC_INI,P499_FEC_FIN,P499_COD_USUARIO_AUX,P499_EJECUTAR_REPORTE'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'REPORT - caobjeagengas'
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
 p_id=>wwv_flow_imp.id(152914629208431033)
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
,p_internal_uid=>152914629208431033
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(152914743047431034)
,p_db_column_name=>'NOMBRE'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Nombre'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(152914989543431036)
,p_db_column_name=>'COD_USUARIO'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Cod Usuario'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(152915074862431037)
,p_db_column_name=>'TRAMO'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Tramo'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(152915171148431038)
,p_db_column_name=>'PORCENTAJE'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Porcentaje'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(152915256782431039)
,p_db_column_name=>'MONTO'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Monto'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(152915596127431042)
,p_db_column_name=>'TOTAL'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Total'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(153297195377473001)
,p_db_column_name=>'TIPO'
,p_display_order=>100
,p_column_identifier=>'R'
,p_column_label=>'Tipo'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(153297229614473002)
,p_db_column_name=>'CANT'
,p_display_order=>110
,p_column_identifier=>'S'
,p_column_label=>'Cant'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(153296572296484167)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1532966'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'NOMBRE:COD_USUARIO:TRAMO:PORCENTAJE:MONTO:TOTAL'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(148483398997869110)
,p_plug_name=>'REPORT - caobjeagengasdet'
,p_parent_plug_id=>wwv_flow_imp.id(148016688337078446)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>1070
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'        v.nombre,',
'        v.caso ,',
'        v.cod_usuario,',
'',
'                       (SELECT OB.TRAMO_GESTION',
'                          FROM CA_OBJETIVOS_GASTRO OB',
'                         WHERE OB.COD_EMPRESA = v.COD_EMPRESA',
'                           AND OB.TIPO = v.caso ',
'                           AND v.dias  BETWEEN OB.DIAS_INI AND DIAS_FIN) TRAMO,',
'                       (SELECT OB.PORCENTAJE',
'                          FROM CA_OBJETIVOS_GASTRO OB',
'                         WHERE OB.COD_EMPRESA = v.COD_EMPRESA',
'                           AND OB.TIPO = v.caso ',
'                           AND v.dias  BETWEEN OB.DIAS_INI AND DIAS_FIN) PORCENTAJE,',
'                       (SELECT OB.MONTO',
'                          FROM CA_OBJETIVOS_GASTRO OB',
'                         WHERE OB.COD_EMPRESA = v.COD_EMPRESA',
'                           AND OB.TIPO = v.caso ',
'                           AND v.dias  BETWEEN OB.DIAS_INI AND DIAS_FIN) MONTO,',
'                           v.fecha,',
'                           v.FEC_CIERRE,',
'                           nvl((select sum(v2.val) from  iNV.VW_COMISIONES_CALL_GASTRO v2',
'                             where v2.caso = v.caso',
'                             and   v2.cod_usuario = v.cod_usuario',
'                             and   v2.FEC_CIERRE between to_date(:P499_FEC_INI,''dd/mm/yyyy'') and to_date(:P499_FEC_FIN,''dd/mm/yyyy'')',
'                            ),0)total ',
', v.dias, v.nro_comprobante ',
',fec_presupuestado,',
'       fec_aprobacion,',
'       fec_rechazado,',
'       fecha_cierre,',
'       fec_entrega',
'       ,FEC_RETIRADO',
'from INV.VW_COMISIONES_CALL_GASTRO v',
unistr('where v.FEC_CIERRE between to_date(:P499_FEC_INI,''dd/mm/yyyy'') and to_date(:P499_FEC_FIN,''dd/mm/yyyy'') AND :P499_EJECUTAR_REPORTE = ''1'' --CONDICION DE EJECUCI\00D3N'),
' ',
'     order by 1,2,4'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P499_FEC_INI,P499_FEC_FIN,P499_COD_USUARIO_AUX,P499_EJECUTAR_REPORTE'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'REPORT - caobjeagengasdet'
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
 p_id=>wwv_flow_imp.id(149005415552384210)
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
,p_internal_uid=>149005415552384210
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(149005581828384211)
,p_db_column_name=>'NOMBRE'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Nombre'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(149005669176384212)
,p_db_column_name=>'CASO'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Caso'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(149005744665384213)
,p_db_column_name=>'COD_USUARIO'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Cod Usuario'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(149005898879384214)
,p_db_column_name=>'TRAMO'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Tramo'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(149005965509384215)
,p_db_column_name=>'PORCENTAJE'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Porcentaje'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(149006096844384216)
,p_db_column_name=>'MONTO'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Monto'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(149006111809384217)
,p_db_column_name=>'FECHA'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Fecha'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(149006294208384218)
,p_db_column_name=>'FEC_CIERRE'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Fec Cierre'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(149006397144384219)
,p_db_column_name=>'TOTAL'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Total'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(149006498683384220)
,p_db_column_name=>'DIAS'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Dias'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(149006599420384221)
,p_db_column_name=>'NRO_COMPROBANTE'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Nro Comprobante'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(149006655156384222)
,p_db_column_name=>'FEC_PRESUPUESTADO'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Fec Presupuestado'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(149006747477384223)
,p_db_column_name=>'FEC_APROBACION'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Fec Aprobacion'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(149006884491384224)
,p_db_column_name=>'FEC_RECHAZADO'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Fec Rechazado'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(149006980400384225)
,p_db_column_name=>'FECHA_CIERRE'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Fecha Cierre'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(149007093422384226)
,p_db_column_name=>'FEC_ENTREGA'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Fec Entrega'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(149007154795384227)
,p_db_column_name=>'FEC_RETIRADO'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Fec Retirado'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(149127309868555146)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1491274'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'NOMBRE:CASO:COD_USUARIO:TRAMO:PORCENTAJE:MONTO:FECHA:FEC_CIERRE:TOTAL:DIAS:NRO_COMPROBANTE:FEC_PRESUPUESTADO:FEC_APROBACION:FEC_RECHAZADO:FECHA_CIERRE:FEC_ENTREGA:FEC_RETIRADO'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(148016550831078445)
,p_button_sequence=>120
,p_button_plug_id=>wwv_flow_imp.id(148015325439078433)
,p_button_name=>'BT_EJECUTAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Ejecutar'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(148016882123078448)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(148015325439078433)
,p_button_name=>'Bt_Limpiar'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Limpiar'
,p_button_position=>'NEXT'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(148013791223078417)
,p_name=>'P499_DERECHOS'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(148013615734078416)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(148013849978078418)
,p_name=>'P499_COD_MODULO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(148013615734078416)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(148013948133078419)
,p_name=>'P499_NOM_MODULO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(148013615734078416)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(148014003699078420)
,p_name=>'P499_VER_OTROS_AGENTES'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(148013615734078416)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(148014179262078421)
,p_name=>'P499_COD_FORMA'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(148013615734078416)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(148014211559078422)
,p_name=>'P499_NOM_FORMA'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(148013615734078416)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(148014317505078423)
,p_name=>'P499_COD_EMPRESA'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(148013615734078416)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(148014480323078424)
,p_name=>'P499_NOM_EMPRESA'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(148013615734078416)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(148014568629078425)
,p_name=>'P499_COD_SUCURSAL'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(148013615734078416)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(148014675233078426)
,p_name=>'P499_NOM_SUCURSAL'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(148013615734078416)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(148014719047078427)
,p_name=>'P499_COD_USUARIO'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(148013615734078416)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(148014879185078428)
,p_name=>'P499_COD_IDIOMA'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(148013615734078416)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(148014937223078429)
,p_name=>'P499_CODSISMENU'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(148013615734078416)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(148015037575078430)
,p_name=>'P499_TIP_CONTADO'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(148013615734078416)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(148015114731078431)
,p_name=>'P499_TIP_CREDITO'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(148013615734078416)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(148015272130078432)
,p_name=>'P499_TIP_NOTACRE'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(148013615734078416)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(148015472352078434)
,p_name=>'P499_RADIO_FECHA'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(148015325439078433)
,p_prompt=>'&nbsp'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>unistr('STATIC:DIA;1,MES;2,A\00D1O;3,GENERAL;4')
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'4'
,p_attribute_02=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(148015523813078435)
,p_name=>'P499_COD_USUARIO_AUX'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(148015325439078433)
,p_prompt=>'Cod Usuario'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_USUARIOS_CAOBJGPV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select u.cod_usuario, p.nombre   from usuarios u, personas p   where u.cod_persona = p.cod_persona ',
'and nvl(u.estado,''I'') = ''A''',
'and :P499_VER_OTROS_AGENTES=''S''',
'UNION ALL',
'select u.cod_usuario, p.nombre   from usuarios u, personas p   where u.cod_persona = p.cod_persona ',
'and nvl(u.estado,''I'') = ''A''',
'and NVL(:P499_VER_OTROS_AGENTES,''N'')<>''S''',
'order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--Seleccionar--'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>6
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
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
 p_id=>wwv_flow_imp.id(148015698817078436)
,p_name=>'P499_COD_CLIENTE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(148015325439078433)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(148015797551078437)
,p_name=>'P499_DESC_CLIENTE'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(148015325439078433)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(148015876944078438)
,p_name=>'P499_COD_MOTIVO'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(148015325439078433)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(148015926299078439)
,p_name=>'P499_DESC_MOTIVO'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(148015325439078433)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(148016053792078440)
,p_name=>'P499_FEC_INI'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(148015325439078433)
,p_prompt=>'Fec Ini'
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>30
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
 p_id=>wwv_flow_imp.id(148016134560078441)
,p_name=>'P499_FEC_FIN'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(148015325439078433)
,p_prompt=>'Fec Fin'
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
 p_id=>wwv_flow_imp.id(148016289597078442)
,p_name=>'P499_USUARIO'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(148015325439078433)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(148016368663078443)
,p_name=>'P499_REPORTE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(148015325439078433)
,p_prompt=>'Reporte'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:AGENTE POST-VENTA;APV,AGENTE GASTRO;AG,AGENTE DIVISION CORPORATIVO;AGC'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(148016415922078444)
,p_name=>'P499_VER_DETALLE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(148015325439078433)
,p_prompt=>'Ver Detalle'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(148482434401869101)
,p_name=>'P499_EJECUTAR'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(148013615734078416)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(148483518623869112)
,p_name=>'P499_ESTADO_REPORTE'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(148015325439078433)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(152914595571431032)
,p_name=>'P499_EJECUTAR_REPORTE'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(148013615734078416)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(153297406588473004)
,p_name=>'P499_COD_RUBRO_DES'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(148013615734078416)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(153297503110473005)
,p_name=>'P499_FECHA_FIN'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(148013615734078416)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(153297672998473006)
,p_name=>'P499_COD_FAMILIA_HAS'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_imp.id(148013615734078416)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(153297752546473007)
,p_name=>'P499_COD_MARCA'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_imp.id(148013615734078416)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(153297846654473008)
,p_name=>'P499_COD_ENVASE_DES'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_imp.id(148013615734078416)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(153297929122473009)
,p_name=>'P499_RUTA_ARCHIVO'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_imp.id(148013615734078416)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(153298069123473010)
,p_name=>'P499_COD_MARCA_HAS'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_imp.id(148013615734078416)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(153298181741473011)
,p_name=>'P499_COD_ENVASE_HAS'
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_imp.id(148013615734078416)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(153298245046473012)
,p_name=>'P499_FEC_INICIAL'
,p_item_sequence=>270
,p_item_plug_id=>wwv_flow_imp.id(148013615734078416)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(153298552854473015)
,p_name=>'P499_COD_FAMILIA_DES'
,p_item_sequence=>280
,p_item_plug_id=>wwv_flow_imp.id(148013615734078416)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(153298638969473016)
,p_name=>'P499_COD_RUBRO_HAS'
,p_item_sequence=>290
,p_item_plug_id=>wwv_flow_imp.id(148013615734078416)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(153298778875473017)
,p_name=>'P499_COD_RUBRO'
,p_item_sequence=>300
,p_item_plug_id=>wwv_flow_imp.id(148013615734078416)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(153298832895473018)
,p_name=>'P499_FEC_FINAL'
,p_item_sequence=>310
,p_item_plug_id=>wwv_flow_imp.id(148013615734078416)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(153298993144473019)
,p_name=>'P499_FECHA_INI'
,p_item_sequence=>320
,p_item_plug_id=>wwv_flow_imp.id(148013615734078416)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(153299024597473020)
,p_name=>'P499_TEST'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(148015325439078433)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(148016972925078449)
,p_name=>'DA_EJECUTAR'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(148016550831078445)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(148482792937869104)
,p_event_id=>wwv_flow_imp.id(148016972925078449)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P499_EJECUTAR := ''S'';',
':P499_EJECUTAR_REPORTE := ''1'';',
'/* ',
'IF (:P499_REPORTE = ''APV'' ) then',
'    IF (:P499_VER_DETALLE <> ''S'' ) then',
'        :P499_ESTADO_REPORTE:=''1'';',
'    ELSE ',
'        :P499_ESTADO_REPORTE:=''2'';',
'    END IF;',
'else',
'    IF (:P499_REPORTE = ''AGC'') then',
'        IF (:P499_VER_DETALLE <> ''S'' ) then',
'            :P499_ESTADO_REPORTE:=''3'';',
'        ELSE ',
'            :P499_ESTADO_REPORTE:=''4'';',
'        END IF;',
'    END IF;',
'END IF; ',
'',
'IF (:P499_REPORTE = ''AG'') then',
'        IF (:P499_VER_DETALLE <> ''S'' ) then',
'            :P499_ESTADO_REPORTE:=''5'';',
'        ELSE ',
'            :P499_ESTADO_REPORTE:=''6'';',
'        END IF;',
'END IF;',
'*/',
'',
'',
'',
'IF (:P499_REPORTE = ''APV'' ) then',
'    IF (:P499_VER_DETALLE <> ''S'' ) then',
'        :P499_ESTADO_REPORTE:=''1'';',
'    ELSE ',
'        :P499_ESTADO_REPORTE:=''2'';',
'    END IF;',
'elsif (:P499_REPORTE = ''AGC'') then',
'        IF (:P499_VER_DETALLE <> ''S'' ) then',
'            :P499_ESTADO_REPORTE:=''3'';',
'        ELSE ',
'            :P499_ESTADO_REPORTE:=''4'';',
'        END IF;',
'elsif (:P499_REPORTE = ''AG'') then',
'        IF (:P499_VER_DETALLE <> ''S'' ) then',
'            :P499_ESTADO_REPORTE:=''5'';',
'        ELSE ',
'            :P499_ESTADO_REPORTE:=''6'';',
'        END IF;',
'END IF;',
''))
,p_attribute_02=>'P499_COD_USUARIO_AUX,P499_REPORTE,P499_RADIO_FECHA,P499_FEC_INI,P499_FEC_FIN,P499_VER_DETALLE'
,p_attribute_03=>'P499_EJECUTAR,P499_ESTADO_REPORTE,P499_EJECUTAR_REPORTE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(149554962179140724)
,p_event_id=>wwv_flow_imp.id(148016972925078449)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/*CAOBJGPV.PR_OBTENER_REPORTE(PI_COD_USUARIO => :P499_COD_USUARIO_AUX,',
'                                PI_FEC_INI => :P499_FEC_INI,',
'                                PI_FEC_FIN => :P499_FEC_FIN);',
'',
'CAOBJGPV.PR_REPORTE_DETALLE(PI_COD_USUARIO => :P499_COD_USUARIO_AUX,',
'                                PI_FEC_INI => :P499_FEC_INI,',
'                                PI_FEC_FIN => :P499_FEC_FIN);',
'',
'CAOBJGPV.PR_OBTENER_caobjeagen(PI_COD_USUARIO => :P499_COD_USUARIO_AUX,',
'                                PI_FEC_INI => :P499_FEC_INI,',
'                                PI_FEC_FIN => :P499_FEC_FIN);',
'',
'CAOBJGPV.PR_OBTENER_caobjeagendet(PI_COD_USUARIO => :P499_COD_USUARIO_AUX,',
'                                PI_FEC_INI => :P499_FEC_INI,',
'                                PI_FEC_FIN => :P499_FEC_FIN);*/',
'',
'CAOBJGPV.PR_REPORTE_DETALLE(PI_COD_USUARIO => :P499_COD_USUARIO_AUX,',
'                                PI_FEC_INI => :P499_FEC_INI,',
'                                PI_FEC_FIN => :P499_FEC_FIN);'))
,p_attribute_02=>'P499_COD_USUARIO_AUX,P499_FEC_INI,P499_FEC_FIN'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P499_ESTADO_REPORTE'
,p_client_condition_expression=>'4'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(148483680604869113)
,p_event_id=>wwv_flow_imp.id(148016972925078449)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(148483259229869109)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P499_ESTADO_REPORTE'
,p_client_condition_expression=>'5'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(157223989667678303)
,p_event_id=>wwv_flow_imp.id(148016972925078449)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'descargarCAOBJEAGENGAS(apex.item(''P499_FEC_INI'').getValue(),apex.item(''P499_FEC_FIN'').getValue(),apex.item(''P499_COD_USUARIO_AUX'').getValue());'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P499_ESTADO_REPORTE'
,p_client_condition_expression=>'5'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(148484218261869119)
,p_event_id=>wwv_flow_imp.id(148016972925078449)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(148483259229869109)
,p_client_condition_type=>'NOT_EQUALS'
,p_client_condition_element=>'P499_ESTADO_REPORTE'
,p_client_condition_expression=>'5'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(152914330477431030)
,p_event_id=>wwv_flow_imp.id(148016972925078449)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(148483259229869109)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P499_ESTADO_REPORTE'
,p_client_condition_expression=>'5'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(148483705934869114)
,p_event_id=>wwv_flow_imp.id(148016972925078449)
,p_event_result=>'TRUE'
,p_action_sequence=>90
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(148483398997869110)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P499_ESTADO_REPORTE'
,p_client_condition_expression=>'6'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(131687639347333402)
,p_event_id=>wwv_flow_imp.id(148016972925078449)
,p_event_result=>'TRUE'
,p_action_sequence=>100
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'descargarCAOBJEAGENGASDET(apex.item(''P499_FEC_INI'').getValue(),apex.item(''P499_FEC_FIN'').getValue(),apex.item(''P499_COD_USUARIO_AUX'').getValue());     '
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P499_ESTADO_REPORTE'
,p_client_condition_expression=>'6'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(148484344164869120)
,p_event_id=>wwv_flow_imp.id(148016972925078449)
,p_event_result=>'TRUE'
,p_action_sequence=>110
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(148483398997869110)
,p_client_condition_type=>'NOT_EQUALS'
,p_client_condition_element=>'P499_ESTADO_REPORTE'
,p_client_condition_expression=>'6'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(152914422195431031)
,p_event_id=>wwv_flow_imp.id(148016972925078449)
,p_event_result=>'TRUE'
,p_action_sequence=>120
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(148483398997869110)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P499_ESTADO_REPORTE'
,p_client_condition_expression=>'6'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(148483877516869115)
,p_event_id=>wwv_flow_imp.id(148016972925078449)
,p_event_result=>'TRUE'
,p_action_sequence=>130
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(148482849455869105)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P499_ESTADO_REPORTE'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(153297359767473003)
,p_event_id=>wwv_flow_imp.id(148016972925078449)
,p_event_result=>'TRUE'
,p_action_sequence=>140
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/*descargarCAOBJEAGEN(p_cod_rubro_des,p_fec_fin,p_fecha_fin,p_cod_familia_has,p_cod_marca,p_cod_envase_des,p_fecha_ini,p_ruta_archivo,p_cod_marca_has,p_cod_empresa,p_cod_envase_has,p_cod_cliente,p_fec_final,p_cod_usuario,p_cod_motivo,p_cod_rubro_has,'
||'p_fec_ini,p_fec_inicial,p_cod_familia_des)*/',
'',
'/*descargarCAOBJEAGEN(null,apex.item(''31/03/2099'').getValue(),apex.item(''P499_FEC_FIN'').getValue(),null,null,null,apex.item(''P499_FEC_INI'').getValue(),null,null,apex.item(''P_COD_EMPRESA'').getValue(),null,apex.item(''P499_COD_CLIENTE'').getValue(),null,'
||'apex.item(''P499_COD_USUARIO_AUX'').getValue(),apex.item(''P499_COD_MOTIVO'').getValue(),null,apex.item(''01/01/2000'').getValue(),null,null);*/',
'',
'',
'descargarCAOBJEAGEN(apex.item(''P499_COD_RUBRO_DES'').getValue(),apex.item(''P499_FECHA_FIN'').getValue(),',
'     apex.item(''P499_FEC_FIN'').getValue(),apex.item(''P499_COD_FAMILIA_HAS'').getValue(),apex.item(''P499_COD_MARCA'').getValue(),apex.item(''P499_COD_ENVASE_DES'').getValue(),',
'     apex.item(''P499_FEC_INI'').getValue(),apex.item(''P499_RUTA_ARCHIVO'').getValue(),apex.item(''P499_COD_MARCA_HAS'').getValue(),apex.item(''P_COD_EMPRESA'').getValue(),apex.item(''P499_COD_ENVASE_HAS'').getValue(),',
'     apex.item(''P499_COD_CLIENTE'').getValue(),apex.item(''P499_FEC_FINAL'').getValue(),apex.item(''P499_COD_USUARIO_AUX'').getValue(),',
'     apex.item(''P499_COD_MOTIVO'').getValue(),apex.item(''P499_COD_RUBRO_HAS'').getValue(),apex.item(''P499_FECHA_INI'').getValue(),apex.item(''P499_FEC_INICIAL'').getValue(),apex.item(''P499_COD_FAMILIA_DES'').getValue());'))
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P499_ESTADO_REPORTE'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(148484446472869121)
,p_event_id=>wwv_flow_imp.id(148016972925078449)
,p_event_result=>'TRUE'
,p_action_sequence=>150
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(148482849455869105)
,p_client_condition_type=>'NOT_EQUALS'
,p_client_condition_element=>'P499_ESTADO_REPORTE'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(152913946485431026)
,p_event_id=>wwv_flow_imp.id(148016972925078449)
,p_event_result=>'TRUE'
,p_action_sequence=>160
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(148482849455869105)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P499_ESTADO_REPORTE'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(148483992931869116)
,p_event_id=>wwv_flow_imp.id(148016972925078449)
,p_event_result=>'TRUE'
,p_action_sequence=>170
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(148482990864869106)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P499_ESTADO_REPORTE'
,p_client_condition_expression=>'2'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(154808953085405905)
,p_event_id=>wwv_flow_imp.id(148016972925078449)
,p_event_result=>'TRUE'
,p_action_sequence=>180
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/*descargarCAOBJEAGEN(apex.item(''P499_COD_RUBRO_DES'').getValue(),apex.item(''P499_FECHA_FIN'').getValue(),',
'     apex.item(''P499_FEC_FIN'').getValue(),apex.item(''P499_COD_FAMILIA_HAS'').getValue(),apex.item(''P499_COD_MARCA'').getValue(),apex.item(''P499_COD_ENVASE_DES'').getValue(),',
'     apex.item(''P499_FEC_INI'').getValue(),apex.item(''P499_RUTA_ARCHIVO'').getValue(),apex.item(''P499_COD_MARCA_HAS'').getValue(),apex.item(''P_COD_EMPRESA'').getValue(),apex.item(''P499_COD_ENVASE_HAS'').getValue(),',
'     apex.item(''P499_COD_CLIENTE'').getValue(),apex.item(''P499_FEC_FINAL'').getValue(),apex.item(''P499_COD_USUARIO_AUX'').getValue(),',
'     apex.item(''P499_COD_MOTIVO'').getValue(),apex.item(''P499_COD_RUBRO_HAS'').getValue(),apex.item(''P499_FECHA_INI'').getValue(),apex.item(''P499_FEC_INICIAL'').getValue(),apex.item(''P499_COD_FAMILIA_DES'').getValue());*/',
'',
'',
'descargarCAOBJEAGENDET(apex.item(''P499_FEC_INI'').getValue(),apex.item(''P499_FEC_FIN'').getValue(),apex.item(''P499_COD_USUARIO_AUX'').getValue());     '))
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P499_ESTADO_REPORTE'
,p_client_condition_expression=>'2'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(148484576515869122)
,p_event_id=>wwv_flow_imp.id(148016972925078449)
,p_event_result=>'TRUE'
,p_action_sequence=>190
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(148482990864869106)
,p_client_condition_type=>'NOT_EQUALS'
,p_client_condition_element=>'P499_ESTADO_REPORTE'
,p_client_condition_expression=>'2'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(152914266546431029)
,p_event_id=>wwv_flow_imp.id(148016972925078449)
,p_event_result=>'TRUE'
,p_action_sequence=>200
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(148482990864869106)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P499_ESTADO_REPORTE'
,p_client_condition_expression=>'2'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(148484085583869117)
,p_event_id=>wwv_flow_imp.id(148016972925078449)
,p_event_result=>'TRUE'
,p_action_sequence=>210
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(148483046773869107)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P499_ESTADO_REPORTE'
,p_client_condition_expression=>'3'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(157228626832678350)
,p_event_id=>wwv_flow_imp.id(148016972925078449)
,p_event_result=>'TRUE'
,p_action_sequence=>220
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/*descargarCAOBJEAGEN(p_cod_rubro_des,p_fec_fin,p_fecha_fin,p_cod_familia_has,p_cod_marca,p_cod_envase_des,p_fecha_ini,p_ruta_archivo,p_cod_marca_has,p_cod_empresa,p_cod_envase_has,p_cod_cliente,p_fec_final,p_cod_usuario,p_cod_motivo,p_cod_rubro_has,'
||'p_fec_ini,p_fec_inicial,p_cod_familia_des)*/',
'',
'/*descargarCAOBJEAGEN(null,apex.item(''31/03/2099'').getValue(),apex.item(''P499_FEC_FIN'').getValue(),null,null,null,apex.item(''P499_FEC_INI'').getValue(),null,null,apex.item(''P_COD_EMPRESA'').getValue(),null,apex.item(''P499_COD_CLIENTE'').getValue(),null,'
||'apex.item(''P499_COD_USUARIO_AUX'').getValue(),apex.item(''P499_COD_MOTIVO'').getValue(),null,apex.item(''01/01/2000'').getValue(),null,null);*/',
'',
'/*p_cod_empresa,p_cod_cliente,p_cod_usuario,p_cod_motivo,',
'p_fecha_ini,p_fecha_fin,p_fec_inicial,',
'',
'p_fec_final,p_fec_ini,p_fec_fin,',
'',
'p_cod_envase_des,p_cod_envase_has,p_cod_marca_des,p_cod_marca_has,',
'                                    p_cod_rubro_des,p_cod_rubro_has,p_cod_familia_des,p_cod_familia_has,p_ruta_archivo*/',
'',
'descargarCAOBJEAGENCORPO(apex.item(''P_COD_EMPRESA'').getValue(),',
'apex.item(''P499_COD_CLIENTE'').getValue(),',
'apex.item(''P499_COD_USUARIO_AUX'').getValue(),',
'apex.item(''P499_COD_MOTIVO'').getValue(),',
'',
'apex.item(''P499_FEC_INI'').getValue(),',
'apex.item(''P499_FEC_FIN'').getValue(),',
'apex.item(''P499_FEC_INICIAL'').getValue(),',
'apex.item(''P499_FEC_FINAL'').getValue(),',
'apex.item(''P499_FECHA_INI'').getValue(),',
'apex.item(''P499_FECHA_FIN'').getValue(),',
'',
'apex.item(''P499_COD_ENVASE_DES'').getValue(),',
'apex.item(''P499_COD_ENVASE_HAS'').getValue(),',
'apex.item(''P499_COD_MARCA'').getValue(),',
'apex.item(''P499_COD_MARCA_HAS'').getValue(),',
'apex.item(''P499_COD_RUBRO_DES'').getValue(),',
'apex.item(''P499_COD_RUBRO_HAS'').getValue(),',
'apex.item(''P499_COD_FAMILIA_DES'').getValue(),',
'apex.item(''P499_COD_FAMILIA_HAS'').getValue(),',
'apex.item(''P499_RUTA_ARCHIVO'').getValue());'))
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P499_ESTADO_REPORTE'
,p_client_condition_expression=>'3'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(148484640349869123)
,p_event_id=>wwv_flow_imp.id(148016972925078449)
,p_event_result=>'TRUE'
,p_action_sequence=>230
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(148483046773869107)
,p_client_condition_type=>'NOT_EQUALS'
,p_client_condition_element=>'P499_ESTADO_REPORTE'
,p_client_condition_expression=>'3'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(152914042956431027)
,p_event_id=>wwv_flow_imp.id(148016972925078449)
,p_event_result=>'TRUE'
,p_action_sequence=>240
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(148483046773869107)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P499_ESTADO_REPORTE'
,p_client_condition_expression=>'3'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(148484158570869118)
,p_event_id=>wwv_flow_imp.id(148016972925078449)
,p_event_result=>'TRUE'
,p_action_sequence=>250
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(148483125824869108)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P499_ESTADO_REPORTE'
,p_client_condition_expression=>'4'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(159179820871757501)
,p_event_id=>wwv_flow_imp.id(148016972925078449)
,p_event_result=>'TRUE'
,p_action_sequence=>260
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'descargarCAOBJEAGENCORPODET(apex.item(''P_COD_EMPRESA'').getValue(),',
'apex.item(''P499_COD_CLIENTE'').getValue(),',
'apex.item(''P499_COD_USUARIO_AUX'').getValue(),',
'apex.item(''P499_COD_MOTIVO'').getValue(),',
'',
'apex.item(''P499_FEC_INI'').getValue(),',
'apex.item(''P499_FEC_FIN'').getValue(),',
'apex.item(''P499_FEC_INICIAL'').getValue(),',
'apex.item(''P499_FEC_FINAL'').getValue(),',
'apex.item(''P499_FECHA_INI'').getValue(),',
'apex.item(''P499_FECHA_FIN'').getValue(),',
'',
'apex.item(''P499_COD_ENVASE_DES'').getValue(),',
'apex.item(''P499_COD_ENVASE_HAS'').getValue(),',
'apex.item(''P499_COD_MARCA'').getValue(),',
'apex.item(''P499_COD_MARCA_HAS'').getValue(),',
'apex.item(''P499_COD_RUBRO_DES'').getValue(),',
'apex.item(''P499_COD_RUBRO_HAS'').getValue(),',
'apex.item(''P499_COD_FAMILIA_DES'').getValue(),',
'apex.item(''P499_COD_FAMILIA_HAS'').getValue(),',
'apex.item(''P499_RUTA_ARCHIVO'').getValue());'))
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P499_ESTADO_REPORTE'
,p_client_condition_expression=>'4'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(148484704175869124)
,p_event_id=>wwv_flow_imp.id(148016972925078449)
,p_event_result=>'TRUE'
,p_action_sequence=>270
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(148483125824869108)
,p_client_condition_type=>'NOT_EQUALS'
,p_client_condition_element=>'P499_ESTADO_REPORTE'
,p_client_condition_expression=>'4'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(152914142998431028)
,p_event_id=>wwv_flow_imp.id(148016972925078449)
,p_event_result=>'TRUE'
,p_action_sequence=>280
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(148483125824869108)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P499_ESTADO_REPORTE'
,p_client_condition_expression=>'4'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(148485832441869135)
,p_name=>'DA_LIMPIAR'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(148016882123078448)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(148485964513869136)
,p_event_id=>wwv_flow_imp.id(148485832441869135)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P499_FEC_INI,P499_FEC_FIN,P499_REPORTE'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(148016702931078447)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_INIT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P499_COD_EMPRESA := NVL(:P_COD_EMPRESA,''1'') ;',
':P499_COD_SUCURSAL := NVL(:P_COD_SUCURSAL,''01'') ;',
':P499_COD_USUARIO := NVL(:P_COD_USUARIO,:APP_USER) ;',
':P499_COD_MODULO := NVL(:P_COD_MODULO,''VT'') ;',
':P499_EJECUTAR := ''N'';',
':P499_EJECUTAR_REPORTE := ''2'';',
''))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp.component_end;
end;
/
