prompt --application/shared_components/user_interface/lovs/lv_ciudad_barrios
begin
--   Manifest
--     LV_CIUDAD_BARRIOS
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
 p_id=>wwv_flow_imp.id(132316399845426715)
,p_lov_name=>'LV_CIUDAD_BARRIOS'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/*select DISTINCT c.COD_CIUDAD ||''-'' || c.descripcion D,',
'	    c.cod_ciudad R',
'            from ciudades c, barrios B',
'            where c.cod_pais = B.cod_pais',
'            and c.cod_provincia = B.cod_provincia',
'            and c.cod_ciudad = B.cod_ciudad',
'            and c.cod_pais = :P444_PAIS',
'            and c.cod_ciudad = :P444_PROVINCIA */',
'',
'            select DISTINCT COD_CIUDAD ||''-'' || descripcion D,',
'	                        cod_ciudad R',
'            from ciudades ',
'            where  cod_pais = :P444_PAIS',
'            and cod_provincia = :P444_PROVINCIA',
'            and cod_ciudad =:P444_CIUDAD'))
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
