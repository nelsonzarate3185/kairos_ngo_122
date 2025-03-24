prompt --application/shared_components/user_interface/lovs/lv_nro_pedido
begin
--   Manifest
--     LV_NRO_PEDIDO
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
 p_id=>wwv_flow_imp.id(136364359589490931)
,p_lov_name=>'LV_NRO_PEDIDO'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct nro_pedido',
'from CP_ORD_PEDIDOS_CAB;',
''))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_return_column_name=>'NRO_PEDIDO'
,p_display_column_name=>'NRO_PEDIDO'
,p_group_sort_direction=>'ASC'
,p_default_sort_column_name=>'NRO_PEDIDO'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp.component_end;
end;
/
