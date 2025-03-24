prompt --application/shared_components/user_interface/lovs/lv_motivo_anu
begin
--   Manifest
--     LV_MOTIVO_ANU
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
 p_id=>wwv_flow_imp.id(12484048625384711)
,p_lov_name=>'LV_MOTIVO_ANU'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  select cod_motivo_anu||'' - ''||descripcion D, cod_motivo_anu R',
'    from vt_motivo_anulacion',
'   where cod_empresa = :P_COD_EMPRESA;'))
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
