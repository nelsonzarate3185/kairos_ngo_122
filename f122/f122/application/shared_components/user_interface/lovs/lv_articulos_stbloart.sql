prompt --application/shared_components/user_interface/lovs/lv_articulos_stbloart
begin
--   Manifest
--     LV_ARTICULOS_STBLOART
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
 p_id=>wwv_flow_imp.id(154374311111240030)
,p_lov_name=>'LV_ARTICULOS_STBLOART'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.cod_articulo ||'' - '' ||a.descripcion D, ',
'       a.cod_articulo R',
'from st_articulos a, ST_BLOQUE_PRODUCTOS p',
'where a.cod_empresa  = :p_cod_empresa',
'and a.cod_articulo = p.cod_articulo',
'order by 1 '))
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
