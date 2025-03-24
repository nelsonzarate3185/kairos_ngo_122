prompt --application/shared_components/user_interface/lovs/lv_distribuidor_callapen
begin
--   Manifest
--     LV_DISTRIBUIDOR_CALLAPEN
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
 p_id=>wwv_flow_imp.id(78394725205040791)
,p_lov_name=>'LV_DISTRIBUIDOR_CALLAPEN'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT CC.COD_DISTRIBUIDOR R,',
'       CC.COD_DISTRIBUIDOR|| '' - ''||P.NOMBRE D,',
'       1 ORDEN',
'  FROM CA_SOLICITUD_SERVICIO_DIST CC, CC_CLIENTES C, PERSONAS P ',
' WHERE CC.COD_EMPRESA = :P_COD_EMPRESA ',
'   AND CC.COD_EMPRESA = C.COD_EMPRESA',
'   AND CC.COD_DISTRIBUIDOR = C.COD_CLIENTE',
'   AND C.COD_PERSONA = P.COD_PERSONA',
'   AND NVL(CC.ESTADO,''S'') NOT IN (''CONFIRMADO'',''ANULADO'')',
' GROUP BY CC.COD_DISTRIBUIDOR,P.NOMBRE',
'UNION ALL',
' SELECT ''T'' R, ',
'        ''TODOS'' D,',
'        2 ORDEN',
'   FROM DUAL',
'ORDER BY 3 DESC,2;'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_return_column_name=>'R'
,p_display_column_name=>'D'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp.component_end;
end;
/
