prompt --application/shared_components/user_interface/lovs/lv_clientes_vtrpeaut
begin
--   Manifest
--     LV_CLIENTES_VTRPEAUT
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
 p_id=>wwv_flow_imp.id(35369207428235280)
,p_lov_name=>'LV_CLIENTES_VTRPEAUT'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cod_cliente, ',
'    nvl( nomb_fantasia, nombre ) nombre ',
'from cc_clientes, ',
'    personas ',
'where cc_clientes.cod_cliente = personas.cod_persona ',
'--order by nombre',
'order by cod_cliente;'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_return_column_name=>'COD_CLIENTE'
,p_display_column_name=>'NOMBRE'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp.component_end;
end;
/
