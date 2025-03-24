prompt --application/shared_components/user_interface/lovs/lv_serie
begin
--   Manifest
--     LV_SERIE
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
 p_id=>wwv_flow_imp.id(5317007549158691)
,p_lov_name=>'LV_SERIE'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'--LV_SERIE PARA EL FORM VTFAPECO',
'SELECT DISTINCT V.SER_COMPROBANTE CODIGO_RAPIDO,',
'       V.SER_COMPROBANTE NOMBRE,1 ORDEN',
'  FROM VT_COMPROBANTES_CABECERA V',
' WHERE COD_EMPRESA = :P_COD_EMPRESA ',
'	--AND NRO_MOV_CAJ IS NULL ',
'   AND NVL(ESTADO,''N'') <> ''A''',
'   AND TIP_COMPROBANTE = ''FCO''',
'   AND FEC_COMPROBANTE > SYSDATE-10',
'   AND NVL(ESTADO,''P'') <> ''A''',
' GROUP BY SER_COMPROBANTE'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_return_column_name=>'CODIGO_RAPIDO'
,p_display_column_name=>'CODIGO_RAPIDO'
,p_group_sort_direction=>'ASC'
,p_default_sort_column_name=>'CODIGO_RAPIDO'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp.component_end;
end;
/
