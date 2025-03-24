prompt --application/shared_components/user_interface/lovs/lv_areas
begin
--   Manifest
--     LV_AREAS
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
 p_id=>wwv_flow_imp.id(307117145729094858)
,p_lov_name=>'LV_AREAS'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct rh.descripcion || '' - ''  || rh.cod_area dES,',
'                rh.cod_area COD',
' from rh_areas rh ',
' where rh.cod_empresa = :p_cod_empresa ;'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_return_column_name=>'COD'
,p_display_column_name=>'DES'
,p_default_sort_column_name=>'DES'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp.component_end;
end;
/
