prompt --application/shared_components/user_interface/lovs/lvmotivo
begin
--   Manifest
--     LVMOTIVO
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
 p_id=>wwv_flow_imp.id(41122997095056747)
,p_lov_name=>'LVMOTIVO'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT cod_motivo_anu||'' - ''||descripcion L, ',
'         cod_motivo_anu V ',
'    FROM VT_MOTIVO_ANULACION ',
'   WHERE cod_empresa = :p_cod_empresa ',
'     AND tip_motivo=''7'' ',
'ORDER BY 1'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_return_column_name=>'V'
,p_display_column_name=>'L'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp.component_end;
end;
/
