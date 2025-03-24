prompt --application/shared_components/user_interface/lovs/lv_tipos_bssubtra
begin
--   Manifest
--     LV_TIPOS_BSSUBTRA
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
 p_id=>wwv_flow_imp.id(75707562702740619)
,p_lov_name=>'LV_TIPOS_BSSUBTRA'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select t.tipo_trans||'' - ''||t.descripcion D,',
'       t.tipo_trans R',
'  from tipos_trans t',
' where t.cod_empresa= :p_cod_empresa',
'   and t.cod_modulo= :cod_modulo'))
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
