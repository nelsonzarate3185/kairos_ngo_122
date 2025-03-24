prompt --application/shared_components/user_interface/lovs/lov_sucursal_dist_vtpedido
begin
--   Manifest
--     LOV_SUCURSAL_DIST_VTPEDIDO
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
 p_id=>wwv_flow_imp.id(94583563175431145)
,p_lov_name=>'LOV_SUCURSAL_DIST_VTPEDIDO'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select p.cod_SUCURSAL||'' - ''||p.nombre descri, ',
'       p.direccion, ',
'       p.telefono, ',
'       p.cod_SUCURSAL,',
'       p.nombre',
'from BS_SUCURSAL_CLIENTE p',
'where p.cod_empresa= ''1''',
'and p.cod_cliente=:P234_COD_CLIENTE'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_return_column_name=>'COD_SUCURSAL'
,p_display_column_name=>'DESCRI'
,p_group_sort_direction=>'ASC'
,p_default_sort_column_name=>'COD_SUCURSAL'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(94585488069435132)
,p_query_column_name=>'COD_SUCURSAL'
,p_heading=>unistr('C\00F3digo Sucursal')
,p_display_sequence=>10
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(94624631871535731)
,p_query_column_name=>'DESCRI'
,p_heading=>'Descri'
,p_display_sequence=>10
,p_data_type=>'VARCHAR2'
,p_is_visible=>'N'
,p_is_searchable=>'N'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(94625056292535731)
,p_query_column_name=>'NOMBRE'
,p_heading=>'Nombre'
,p_display_sequence=>20
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(94586200762435133)
,p_query_column_name=>'DIRECCION'
,p_heading=>unistr('Direcci\00F3n')
,p_display_sequence=>30
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(94586637782435133)
,p_query_column_name=>'TELEFONO'
,p_heading=>unistr('Tel\00E9fono')
,p_display_sequence=>40
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp.component_end;
end;
/
