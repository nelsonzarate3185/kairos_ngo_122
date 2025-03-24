prompt --application/shared_components/user_interface/lovs/lv_cliente_ccrecibo
begin
--   Manifest
--     LV_CLIENTE_CCRECIBO
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
 p_id=>wwv_flow_imp.id(135739754944034099)
,p_lov_name=>'LV_CLIENTE_CCRECIBO'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select nvl( ltrim(p.nombre), ltrim( p.nomb_fantasia ) ) NOMBRE, ',
'       c.cod_cliente CODIGO',
'from cc_clientes c, personas p ',
'where c.cod_empresa = :P_cod_empresa',
'and c.cod_persona = p.cod_persona ',
'order by 2'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_return_column_name=>'CODIGO'
,p_display_column_name=>'CODIGO'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(135786810446025645)
,p_query_column_name=>'CODIGO'
,p_heading=>'Codigo'
,p_display_sequence=>10
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(135787210528025645)
,p_query_column_name=>'NOMBRE'
,p_heading=>'Nombre'
,p_display_sequence=>20
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp.component_end;
end;
/
