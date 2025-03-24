prompt --application/shared_components/user_interface/lovs/lov_vendedores_vtpedido
begin
--   Manifest
--     LOV_VENDEDORES_VTPEDIDO
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
 p_id=>wwv_flow_imp.id(94579312435396545)
,p_lov_name=>'LOV_VENDEDORES_VTPEDIDO'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT nvl(v.descripcion, p.nombre) nombre, v.cod_vendedor, v.cod_vendedor||'' - ''||nvl(v.descripcion, p.nombre)  descri',
'  FROM fv_vendedores v, personas p',
' WHERE v.cod_empresa = NVL(:P_cod_empresa ,''1'')',
'   AND v.cod_persona = p.cod_persona',
'   AND v.estado = ''A''',
' ORDER BY 1',
''))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_return_column_name=>'COD_VENDEDOR'
,p_display_column_name=>'DESCRI'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(94580764435402350)
,p_query_column_name=>'COD_VENDEDOR'
,p_heading=>unistr('C\00F3digo Vendedor')
,p_display_sequence=>10
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(94657817760663211)
,p_query_column_name=>'DESCRI'
,p_heading=>'Nombre y Apellido'
,p_display_sequence=>10
,p_data_type=>'VARCHAR2'
,p_is_visible=>'N'
,p_is_searchable=>'N'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(94581152867402350)
,p_query_column_name=>'NOMBRE'
,p_heading=>'Nombre y Apellido'
,p_display_sequence=>20
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp.component_end;
end;
/
