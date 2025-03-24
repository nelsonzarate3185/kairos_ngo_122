prompt --application/shared_components/user_interface/lovs/lvfacturas
begin
--   Manifest
--     LVFACTURAS
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
 p_id=>wwv_flow_imp.id(112292850484766734)
,p_lov_name=>'LVFACTURAS'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select to_char(sal.nro_comprobante) nro_comprobante, sal.nro_valor, sal.nro_cuota, sal.tipo_comprobante, sal.ser_comprobante, nvl(rtrim(p.nombre ), ltrim(p.nomb_fantasia) )nombre, c.cod_cliente, sal.saldo_cuota, null cod_per_juridica ',
'from cc_saldos sal, cc_clientes c, personas p ',
'where sal.cod_empresa = :P_COD_EMPRESA',
'and sal.monto_cuota > 0 ',
'and sal.monto_cuota = sal.saldo_cuota ',
'and nvl( sal.tipo_comprobante,''DFL'' ) = :P375_A_TIP_COMPROBANTE ',
'and sal.cod_custodio = :P375_COD_CUSTODIO_SAL ',
'and sal.cod_empresa = c.cod_empresa ',
'and sal.cod_cliente = c.cod_cliente ',
'and c.cod_persona = p.cod_persona ',
'union all ',
'select sal.nro_valor, null, 0, sal.tip_documento, sal.ser_documento, ',
'nvl(rtrim(p.nombre ), ltrim( p.nomb_fantasia ) ) nombre, ',
'c.cod_cliente, sal.monto_valor, sal.cod_per_juridica ',
'from cc_valores sal, cc_clientes c, personas p ',
'where sal.cod_empresa = :p_cod_empresa ',
'and nvl(sal.estado_valor,''P'') in ( ''P'',''R'') ',
'and sal.cod_custodio = :P375_COD_CUSTODIO_SAL ',
'and sal.cod_empresa = c.cod_empresa ',
'and sal.cod_cliente = c.cod_cliente ',
'and c.cod_persona = p.cod_persona ',
'and sal.nro_comprobante is null ',
'order by 1'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_return_column_name=>'NRO_COMPROBANTE'
,p_display_column_name=>'NRO_COMPROBANTE'
);
wwv_flow_imp.component_end;
end;
/
