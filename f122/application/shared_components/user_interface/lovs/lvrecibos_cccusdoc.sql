prompt --application/shared_components/user_interface/lovs/lvrecibos_cccusdoc
begin
--   Manifest
--     LVRECIBOS_CCCUSDOC
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
 p_id=>wwv_flow_imp.id(112312667887813174)
,p_lov_name=>'LVRECIBOS_CCCUSDOC'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select to_char(rec.nro_recibo) nro_comprobante, ',
'rec.tip_recibo tipo_comprobante, ',
'rec.ser_recibo, nvl(rtrim(p.nombre), ',
'ltrim(p.nomb_fantasia)) nombre,',
' c.cod_cliente, rec.tot_recibo monto_cuota ',
' from cc_recibos rec, cc_clientes c, personas p ',
' where rec.cod_empresa = :P_COD_EMPRESA ',
' and nvl( rec.tip_recibo,''DFL'') = :P375_A_TIP_COMPROBANTE ',
' and rec.cod_custodio = :P375_COD_CUSTODIO_SAL ',
' and rec.cod_empresa = c.cod_empresa ',
'and rec.cod_cliente = c.cod_cliente ',
'and c.cod_persona = p.cod_persona ',
'order by 1'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_return_column_name=>'NRO_COMPROBANTE'
,p_display_column_name=>'NRO_COMPROBANTE'
);
wwv_flow_imp.component_end;
end;
/
