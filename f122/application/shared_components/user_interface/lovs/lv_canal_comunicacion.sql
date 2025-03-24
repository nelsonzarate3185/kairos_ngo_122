prompt --application/shared_components/user_interface/lovs/lv_canal_comunicacion
begin
--   Manifest
--     LV_CANAL_COMUNICACION
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
 p_id=>wwv_flow_imp.id(78417483358078345)
,p_lov_name=>'LV_CANAL_COMUNICACION'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT CC.CANAL_COMUNICACION CODIGO_RAPIDO,',
'	   CC.CANAL_COMUNICACION NOMBRE,',
'	   1 ORDEN',
'  FROM CA_SOLICITUD_SERVICIO_DIST CC, CC_CLIENTES C, PERSONAS P ',
' WHERE CC.COD_EMPRESA = :P_COD_EMPRESA ',
'   AND CC.COD_EMPRESA = C.COD_EMPRESA',
'   AND CC.COD_DISTRIBUIDOR = C.COD_CLIENTE',
'   AND C.COD_PERSONA = P.COD_PERSONA',
'   AND NVL(CC.ESTADO,''S'') NOT IN (''CONFIRMADO'',''ANULADO'')',
' GROUP BY CANAL_COMUNICACION',
'UNION ALL',
' SELECT ''T'' CODIGO_RAPIDO,',
'		''TODOS'' NOMBRE,',
'		2 ORDEN',
'   FROM DUAL',
'ORDER BY 3 DESC,2;'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_return_column_name=>'CODIGO_RAPIDO'
,p_display_column_name=>'NOMBRE'
);
wwv_flow_imp.component_end;
end;
/
