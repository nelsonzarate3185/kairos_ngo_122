prompt --application/shared_components/user_interface/lovs/lv_departamento
begin
--   Manifest
--     LV_DEPARTAMENTO
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
 p_id=>wwv_flow_imp.id(13723217938101280)
,p_lov_name=>'LV_DEPARTAMENTO'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select descripcion',
'		     , cod_provincia',
'		      from provincias'))
,p_source_type=>'LEGACY_SQL'
,p_location=>'LOCAL'
);
wwv_flow_imp.component_end;
end;
/
