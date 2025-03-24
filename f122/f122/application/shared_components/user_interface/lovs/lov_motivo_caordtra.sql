prompt --application/shared_components/user_interface/lovs/lov_motivo_caordtra
begin
--   Manifest
--     LOV_MOTIVO_CAORDTRA
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
 p_id=>wwv_flow_imp.id(124521243853365064)
,p_lov_name=>'LOV_MOTIVO_CAORDTRA'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT c.COD_MOTIVO codigo, DESCRIPCION nombre ,1 orden',
'',
'from CA_LLAMADAS_SALIENTES c , ca_motivo_lla m',
'where c.cod_empresa     = :P_COD_EMPRESA',
' and C.cod_motivo       = m.cod_motivo',
' and c.tip_comprobante = :P370_TIP_COMPROBANTE',
' and c.ser_comprobante = :P370_SER_COMPROBANTE',
' and c.nro_comprobante = :P370_NRO_COMPROBANTE',
' and c.motivo_principal is not null',
'and (c.motivo_principal = :P370_MOTIVO_PRINCIPAL OR ( NVL(:P370_MOTIVO_PRINCIPAL,''T'')=''T''))',
' and (c.motivo_secundario = :P370_MOTIVO_SECUNDARIO OR ( NVL(:P370_MOTIVO_SECUNDARIO,''T'')=''T''))',
' and (c.cod_motivo = :P370_COD_MOTIVO OR ( NVL(:P370_COD_MOTIVO,''T'')=''T''))',
'',
'GROUP BY c.COD_MOTIVO,DESCRIPCION',
'',
'',
'UNION ALL',
'SELECT ''T'' codigo_rapido,''TODOS'' nombre,3',
'FROM DUAL',
'order by 3 desc'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_return_column_name=>'CODIGO'
,p_display_column_name=>'NOMBRE'
);
wwv_flow_imp.component_end;
end;
/
