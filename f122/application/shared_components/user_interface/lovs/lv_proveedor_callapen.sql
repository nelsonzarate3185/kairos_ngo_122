prompt --application/shared_components/user_interface/lovs/lv_proveedor_callapen
begin
--   Manifest
--     LV_PROVEEDOR_CALLAPEN
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
 p_id=>wwv_flow_imp.id(78424149630109362)
,p_lov_name=>'LV_PROVEEDOR_CALLAPEN'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT O.COD_PROVEEDOR R, ',
'	   O.COD_PROVEEDOR||'' - ''||P.NOMBRE D, ',
'	   1 ORDEN',
'  FROM CA_SOLICITUD_SERVICIO_DIST S,VT_ORDENES_TRABAJO O, CM_PROVEEDORES PRO, PERSONAS P',
' WHERE S.COD_EMPRESA = :P_COD_EMPRESA',
'   AND S.ESTADO NOT IN  (''CONFIRMADO'',''ANULADO'')',
'   AND S.COD_EMPRESA = O.COD_EMPRESA ',
'   AND O.NRO_SERVICIO = S.NRO_PLANILLA',
'   AND O.TIP_SERVICIO = ''SU''',
'   AND PRO.COD_EMPRESA = O.COD_EMPRESA',
'   AND PRO.COD_PROVEEDOR = O.COD_PROVEEDOR',
'   AND PRO.COD_PERSONA = P.COD_PERSONA',
' GROUP BY O.COD_PROVEEDOR, P.NOMBRE',
'  UNION ALL',
'SELECT ''T'' R,',
'	   ''TODOS'' D,',
'	   2 ORDEN',
'  FROM DUAL;'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_return_column_name=>'R'
,p_display_column_name=>'D'
,p_default_sort_column_name=>'D'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp.component_end;
end;
/
