prompt --application/shared_components/user_interface/lovs/lv_promotor_cavispro
begin
--   Manifest
--     LV_PROMOTOR_CAVISPRO
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
 p_id=>wwv_flow_imp.id(80655665566358840)
,p_lov_name=>'LV_PROMOTOR_CAVISPRO'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DISTINCT p.cod_persona || ''- '' || nvl(p.nombre,p.nomb_fantasia) D,',
'                p.cod_persona R',
'FROM  vt_asignacion_promotora a,',
'      rh_empleados e,',
'      personas p',
'WHERE a.cod_empresa = :P_COD_EMPRESA',
'AND   nvl(a.estado,''S'') = ''S''',
'AND   a.cod_empleado = e.cod_empleado',
'AND   e.cod_persona = p.cod_persona',
'',
'UNION ALL',
'SELECT ''269932'',''SILVIO DAVID ALFONSO BAREIRO'' ',
'FROM dual',
'ORDER BY 2 DESC'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_return_column_name=>'R'
,p_display_column_name=>'D'
);
wwv_flow_imp.component_end;
end;
/
