prompt --application/shared_components/user_interface/lovs/lv_monedas_ccingegr
begin
--   Manifest
--     LV_MONEDAS_CCINGEGR
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
 p_id=>wwv_flow_imp.id(140146054328157006)
,p_lov_name=>'LV_MONEDAS_CCINGEGR'
,p_lov_query=>'select descripcion, cod_moneda from monedas order by 1'
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_return_column_name=>'COD_MONEDA'
,p_display_column_name=>'DESCRIPCION'
);
wwv_flow_imp.component_end;
end;
/
