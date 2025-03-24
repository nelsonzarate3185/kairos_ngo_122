prompt --application/shared_components/user_interface/lovs/lov_proveedores_caordtra
begin
--   Manifest
--     LOV_PROVEEDORES_CAORDTRA
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
 p_id=>wwv_flow_imp.id(264702237464539893)
,p_lov_name=>'LOV_PROVEEDORES_CAORDTRA'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  select ltrim( rtrim( nvl( p.nombre, p.nomb_fantasia ) ) )nombre,  c.cod_proveedor cod, C.ind_servicio_tecnico',
'  from cm_proveedores c, personas p',
' where c.cod_empresa = ''1''',
'   and c.cod_rubro = :P370_RUBRO_SERV_TECNICO',
'   and c.cod_persona = p.cod_persona',
'AND NVL(C.ESTADO,''A'')NOT IN (''I'')',
'   UNION ALL',
'   select ltrim(rtrim(nvl(p.nombre, p.nomb_fantasia))) nombre, c.cod_proveedor, C.ind_servicio_tecnico',
'  from cm_proveedores c, personas p',
' where c.cod_empresa = ''1''',
'   and nvl(c.cod_rubro,''99'') <> :P370_RUBRO_SERV_TECNICO',
'   and c.cod_persona = p.cod_persona',
'AND NVL(C.ESTADO,''A'')NOT IN (''I'')'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_return_column_name=>'COD'
,p_display_column_name=>'NOMBRE'
,p_group_sort_direction=>'ASC'
,p_default_sort_column_name=>'NOMBRE'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(264702926681533443)
,p_query_column_name=>'COD'
,p_display_sequence=>10
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(264703209167533442)
,p_query_column_name=>'NOMBRE'
,p_heading=>'Nombre'
,p_display_sequence=>20
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(264703602898533442)
,p_query_column_name=>'IND_SERVICIO_TECNICO'
,p_heading=>'Ind Servicio Tecnico'
,p_display_sequence=>30
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp.component_end;
end;
/
