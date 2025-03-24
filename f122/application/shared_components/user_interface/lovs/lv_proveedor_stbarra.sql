prompt --application/shared_components/user_interface/lovs/lv_proveedor_stbarra
begin
--   Manifest
--     LV_PROVEEDOR_STBARRA
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
 p_id=>wwv_flow_imp.id(901312808002570137)
,p_lov_name=>'LV_PROVEEDOR_STBARRA'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ltrim(pe.nombre) nombre, pr.cod_proveedor ',
'from personas pe, cm_proveedores pr ',
'where pr.cod_empresa = :P_COD_EMPRESA',
'and pr.cod_persona = pe.cod_persona ',
'order by nombre'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_return_column_name=>'COD_PROVEEDOR'
,p_display_column_name=>'NOMBRE'
);
wwv_flow_imp.component_end;
end;
/
