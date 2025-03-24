prompt --application/shared_components/user_interface/lovs/lv_proveedores_carepsta
begin
--   Manifest
--     LV_PROVEEDORES_CAREPSTA
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.04.12'
,p_release=>'22.1.0'
,p_default_workspace_id=>2715162693355865
,p_default_application_id=>122
,p_default_id_offset=>0
,p_default_owner=>'INV'
);
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(77119996445985742)
,p_lov_name=>'LV_PROVEEDORES_CAREPSTA'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT v.COD_CLIENTE codigo_rapido,p.nombre nombre,1 ORDEN',
'  FROM vt_pedidos_cabecera_rep v, cc_clientes cc, personas p ',
' where v.cod_empresa=:P_COD_EMPRESA',
'   AND NVL(ANULADO,''N'')<>''S''',
'   AND NVL(FACTURADO,''N'')<>''S''',
'   and (nvl(p_tipo,''A'')=''W'' ',
'       OR (ENVIO_INTERIOR=''S'' AND NVL(CONFIRMADO,''N'')<>''S''))',
'   AND NVL(IND_SIN_STOCK,''N'')<>''S''',
'   and v.cod_empresA=cc.cod_empresa',
'   and v.cod_cliente=cc.cod_cliente',
'   and cc.cod_persona=p.cod_persona',
'   and v.nro_comprobante not  in ( select d.nro_comprobante',
'                                    from VT_PEDIDOS_DETALLE_REP D, vt_pedidos_cabecera_rep c',
'                                    WHERE d.COD_EMPRESA=:P_COD_EMPRESA',
'                                    AND v.TIP_COMPROBANTE=D.TIP_COMPROBANTE',
'                                    AND v.SER_COMPROBANTE=D.SER_COMPROBANTE',
'                                    AND v.NRO_COMPROBANTE=D.NRO_COMPROBANTE',
'                                    and c.cod_empresa=d.cod_empresa',
'                                    AND c.TIP_COMPROBANTE=D.TIP_COMPROBANTE',
'                                    AND c.SER_COMPROBANTE=D.SER_COMPROBANTE',
'                                    AND c.NRO_COMPROBANTE=D.NRO_COMPROBANTE  ',
'                                    and c.fec_comprobante<sysdate - 10',
'                                    group  by d.nro_comprobante',
'                                    having  SUM(CANTIDAD_CONFIRMADA)=0)',
'   and fec_comprobante>sysdate-60',
'   and :P315_TIPO_RETIRA not in (''STNGO'')',
' group by v.COD_CLIENTE,p.nombre',
' union all',
'select  a.cod_proveedor, p.nombre,1 ORDEN',
'  from   cm_proveedores a, personas p',
' where a.cod_empresa = :P_COD_EMPRESA',
'   and a.ind_servicio_tecnico = ''STNGO''',
'   AND A.ESTADO = ''A''',
'   and p.cod_persona=a.cod_persona',
'   and :P315_TIPO_RETIRA   in (''STNGO'')',
'union all',
'SELECT ''T'' codigo_rapido,''TODOS'' nombre,2',
'  FROM dual',
'ORDER BY 3 DESC,2'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_return_column_name=>'CODIGO_RAPIDO'
,p_display_column_name=>'NOMBRE'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(77120555137992058)
,p_query_column_name=>'CODIGO_RAPIDO'
,p_heading=>unistr('C\00F3digo R\00E1pido')
,p_display_sequence=>10
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(77120946075992058)
,p_query_column_name=>'NOMBRE'
,p_heading=>'Nombre'
,p_display_sequence=>20
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp.component_end;
end;
/
