prompt --application/shared_components/user_interface/lovs/lv_condiciones_vtnotcre
begin
--   Manifest
--     LV_CONDICIONES_VTNOTCRE
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
 p_id=>wwv_flow_imp.id(16620557516821750)
,p_lov_name=>'LV_CONDICIONES_VTNOTCRE'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT c.cod_condicion_venta||'' - ''||c.descripcion D, ',
'       c.cod_condicion_venta R',
'  FROM cc_condiciones_ventas c, vt_listas_precios_cab l ',
' WHERE c.cod_empresa = :P_COD_EMPRESA',
'   AND l.cod_empresa = c.cod_empresa ',
'   AND c.cod_lista_precio = l.cod_lista_precio'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_return_column_name=>'R'
,p_display_column_name=>'D'
,p_group_sort_direction=>'ASC'
,p_default_sort_column_name=>'D'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp.component_end;
end;
/
