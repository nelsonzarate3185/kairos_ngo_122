prompt --application/shared_components/user_interface/lovs/lv_repartidores
begin
--   Manifest
--     LV_REPARTIDORES
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
 p_id=>wwv_flow_imp.id(22826330480737714)
,p_lov_name=>'LV_REPARTIDORES'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT R.COD_REPARTIDOR||''-''||LTRIM(RTRIM(NVL(P.NOMBRE, P.NOMB_FANTASIA))) NOMBRE ,',
'       R.COD_REPARTIDOR R',
'  FROM RP_REPARTIDORES R, PERSONAS P',
' WHERE R.COD_EMPRESA = :P_COD_EMPRESA',
'   AND R.COD_PERSONA = P.COD_PERSONA',
'   AND NVL(R.ACTIVO, ''S'') = ''S''',
' ORDER BY LTRIM(RTRIM(NVL(P.NOMBRE, P.NOMB_FANTASIA)))',
''))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_return_column_name=>'R'
,p_display_column_name=>'NOMBRE'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp.component_end;
end;
/
