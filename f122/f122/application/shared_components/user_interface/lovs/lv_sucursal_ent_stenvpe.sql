prompt --application/shared_components/user_interface/lovs/lv_sucursal_ent_stenvpe
begin
--   Manifest
--     LV_SUCURSAL_ENT_STENVPE
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
 p_id=>wwv_flow_imp.id(109009275530354950)
,p_lov_name=>'LV_SUCURSAL_ENT_STENVPE'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cod_sucursal R, descripcion D',
'from sucursales ',
'where cod_empresa = :P_COD_EMPRESA',
'and cod_sucursal <> :P_COD_SUCURSAL',
'and  estado=''S'' order by descripcion'))
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
