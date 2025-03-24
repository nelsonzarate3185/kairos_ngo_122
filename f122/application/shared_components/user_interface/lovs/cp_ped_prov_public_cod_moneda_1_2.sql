prompt --application/shared_components/user_interface/lovs/cp_ped_prov_public_cod_moneda_1_2
begin
--   Manifest
--     CP_PED_PROV_PUBLIC.COD_MONEDA_1_2
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
 p_id=>wwv_flow_imp.id(133080361434155727)
,p_lov_name=>'CP_PED_PROV_PUBLIC.COD_MONEDA_1_2'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_query_table=>'CP_PED_PROV_PUBLIC'
,p_return_column_name=>'COD_PROVEEDOR'
,p_display_column_name=>'COD_MONEDA'
,p_default_sort_column_name=>'COD_MONEDA'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp.component_end;
end;
/
