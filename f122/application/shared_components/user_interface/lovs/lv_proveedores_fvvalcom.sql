prompt --application/shared_components/user_interface/lovs/lv_proveedores_fvvalcom
begin
--   Manifest
--     LV_PROVEEDORES_FVVALCOM
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
 p_id=>wwv_flow_imp.id(68219291617250118)
,p_lov_name=>'LV_PROVEEDORES_FVVALCOM'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select nvl( ltrim( p.nombre ), ltrim( p.nomb_fantasia ) ) nombre,',
'       v.cod_proveedor, ',
'       v.cod_rubro ',
'  from INV.personas p, ',
'       INV.cm_proveedores v',
' where v.cod_empresa = :P_COD_EMPRESA ',
'   and v.cod_persona = p.cod_persona',
'   and nvl(estado,''A'') = ''A'' order by 1'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_return_column_name=>'COD_PROVEEDOR'
,p_display_column_name=>'NOMBRE'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(68220791456254941)
,p_query_column_name=>'COD_PROVEEDOR'
,p_heading=>unistr('C\00F3d.')
,p_display_sequence=>10
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(68221165880254941)
,p_query_column_name=>'NOMBRE'
,p_heading=>'Nombre'
,p_display_sequence=>20
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(68221512422254941)
,p_query_column_name=>'COD_RUBRO'
,p_heading=>'Rubro'
,p_display_sequence=>30
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp.component_end;
end;
/
