prompt --application/shared_components/user_interface/lovs/lv_vendedores_ccdebito
begin
--   Manifest
--     LV_VENDEDORES_CCDEBITO
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
 p_id=>wwv_flow_imp.id(140883122749833340)
,p_lov_name=>'LV_VENDEDORES_CCDEBITO'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select nvl( ltrim( p.nombre ), ltrim( p.nomb_fantasia ) ) nombre, ',
'       v.cod_vendedor ',
'  from fv_vendedores v, ',
'       personas p',
' where v.cod_empresa = :P_COD_EMPRESA',
'   and v.cod_persona = p.cod_persona ',
'   and v.estado = ''A'' ',
'   order by 1'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_return_column_name=>'COD_VENDEDOR'
,p_display_column_name=>'COD_VENDEDOR'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(140883672362826078)
,p_query_column_name=>'COD_VENDEDOR'
,p_heading=>'Cod Vendedor'
,p_display_sequence=>10
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(140884063797826077)
,p_query_column_name=>'NOMBRE'
,p_heading=>'Nombre'
,p_display_sequence=>20
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp.component_end;
end;
/
