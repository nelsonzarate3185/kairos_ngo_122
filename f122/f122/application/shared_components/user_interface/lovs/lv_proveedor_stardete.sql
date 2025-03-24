prompt --application/shared_components/user_interface/lovs/lv_proveedor_stardete
begin
--   Manifest
--     LV_PROVEEDOR_STARDETE
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
 p_id=>wwv_flow_imp.id(143093250747208725)
,p_lov_name=>'LV_PROVEEDOR_STARDETE'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select nombre, ',
'       p1.cod_proveedor ',
'  from cm_proveedores p1, ',
'       personas p2 ',
' where p1.cod_empresa = :P_COD_EMPRESA',
'   and p1.cod_persona = p2.cod_persona ',
' order by nombre'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_return_column_name=>'COD_PROVEEDOR'
,p_display_column_name=>'COD_PROVEEDOR'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(143093635716203962)
,p_query_column_name=>'COD_PROVEEDOR'
,p_heading=>'Cod Proveedor'
,p_display_sequence=>10
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(143094097547203962)
,p_query_column_name=>'NOMBRE'
,p_heading=>'Nombre'
,p_display_sequence=>20
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp.component_end;
end;
/
