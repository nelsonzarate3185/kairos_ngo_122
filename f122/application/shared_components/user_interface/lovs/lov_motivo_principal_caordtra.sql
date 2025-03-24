prompt --application/shared_components/user_interface/lovs/lov_motivo_principal_caordtra
begin
--   Manifest
--     LOV_MOTIVO_PRINCIPAL_CAORDTRA
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
 p_id=>wwv_flow_imp.id(124519881222308480)
,p_lov_name=>'LOV_MOTIVO_PRINCIPAL_CAORDTRA'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT C.MOTIVO_PRINCIPAL codigo, C.MOTIVO_PRINCIPAL nombre ,1 orden',
' from CA_LLAMADAS_SALIENTES c , ca_motivo_lla m',
'where c.cod_empresa     = :P_COD_EMPRESA',
' and C.cod_motivo       = m.cod_motivo',
' and c.tip_comprobante = :P370_TIP_COMPROBANTE',
' and c.ser_comprobante = :P370_SER_COMPROBANTE',
' and c.nro_comprobante = :P370_NRO_COMPROBANTE',
' AND C.MOTIVO_PRINCIPAL IS NOT NULL ',
' group by c.MOTIVO_PRINCIPAL',
'UNION ALL',
'SELECT ''T'' codigo_rapido,''TODOS'' nombre,3',
'FROM DUAL',
'ORDER BY 3 desc'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_return_column_name=>'CODIGO'
,p_display_column_name=>'NOMBRE'
);
wwv_flow_imp.component_end;
end;
/
