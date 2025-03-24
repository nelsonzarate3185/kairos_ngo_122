prompt --application/shared_components/user_interface/lovs/lv_bloque_stbloart
begin
--   Manifest
--     LV_BLOQUE_STBLOART
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
 p_id=>wwv_flow_imp.id(154394862011123469)
,p_lov_name=>'LV_BLOQUE_STBLOART'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select st.cod_bloque ||'' - '' ||st.desc_bloque D, ',
'       st.cod_bloque R',
'from st_bloques st, ST_BLOQUE_PRODUCTOS p',
'where st.cod_empresa  = :P_cod_empresa',
'and st.cod_sucursal = p.cod_sucursal',
'and st.cod_bloque = p.cod_bloque',
''))
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
