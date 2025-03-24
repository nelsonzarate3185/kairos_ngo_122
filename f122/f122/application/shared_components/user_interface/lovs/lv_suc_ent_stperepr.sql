prompt --application/shared_components/user_interface/lovs/lv_suc_ent_stperepr
begin
--   Manifest
--     LV_SUC_ENT_STPEREPR
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
 p_id=>wwv_flow_imp.id(141807204044740273)
,p_lov_name=>'LV_SUC_ENT_STPEREPR'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cod_sucursal, descripcion ',
'from sucursales ',
'where cod_empresa = :p_cod_empresa ',
'and cod_sucursal <> :p474_cod_sucursal ',
'order by descripcion'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_return_column_name=>'COD_SUCURSAL'
,p_display_column_name=>'DESCRIPCION'
);
wwv_flow_imp.component_end;
end;
/
