prompt --application/shared_components/user_interface/lovs/lov_seguimientos_caordtra
begin
--   Manifest
--     LOV_SEGUIMIENTOS_CAORDTRA
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
 p_id=>wwv_flow_imp.id(124509993381224467)
,p_lov_name=>'LOV_SEGUIMIENTOS_CAORDTRA'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT d.cod_motivo codigo_rapido, m.descripcion  nombre ,1 orden',
' from ca_llamadas_cabecera c, ca_llamadas_detalle d, ca_motivo_lla m',
'where c.cod_empresa     = :P_COD_EMPRESA',
' and  c.nro_llamada     = d.nro_llamada',
' and d.cod_motivo       = m.cod_motivo',
' and (d.tip_comprobante = :P370_TIP_COMPROBANTE)',
' and (d.ser_comprobante = :P370_SER_COMPROBANTE)',
' and (d.nro_comprobante = :P370_NRO_COMPROBANTE) ',
' group by d.cod_motivo,descripcion',
'UNION ALL',
'select c.cod_motivo codigo_rapido, m.descripcion desc_motivo,2',
' from CA_LLAMADAS_SALIENTES c , ca_motivo_lla m',
'where c.cod_empresa     = :P_COD_EMPRESA',
' and C.cod_motivo       = m.cod_motivo',
' and c.tip_comprobante = :P370_TIP_COMPROBANTE',
' and c.ser_comprobante = :P370_SER_COMPROBANTE',
' and c.nro_comprobante = :P370_NRO_COMPROBANTE',
' AND C.MOTIVO_PRINCIPAL IS NULL ',
' group by c.cod_motivo,descripcion',
'UNION ALL',
' ',
'SELECT ''SNC'' codigo_rapido,''SOLICITUD NO CONFORME'' nombre,2',
' from ca_seguimiento_conformidad c ,  ca_conformidad t',
'where t.cod_empresa     =  :P_COD_EMPRESA',
'and t.cod_empresa=c.cod_empresa',
'and t.nro_solicitud=c.nro_solicitud',
'',
' and T.tip_comprobante_ref = :P370_TIP_COMPROBANTE',
' and T.ser_comprobante_ref = :P370_SER_COMPROBANTE',
' and t.nro_comprobante_ref = :P370_NRO_COMPROBANTE ',
' AND ROWNUM=1',
'UNION ALL',
'SELECT ''T'' codigo_rapido,''TODOS'' nombre,3',
'FROM DUAL',
'ORDER BY 3 desc'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_return_column_name=>'CODIGO_RAPIDO'
,p_display_column_name=>'NOMBRE'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp.component_end;
end;
/
