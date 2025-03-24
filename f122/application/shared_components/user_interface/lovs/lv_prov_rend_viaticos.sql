prompt --application/shared_components/user_interface/lovs/lv_prov_rend_viaticos
begin
--   Manifest
--     LV_PROV_REND_VIATICOS
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
 p_id=>wwv_flow_imp.id(553759051644389873)
,p_lov_name=>'LV_PROV_REND_VIATICOS'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select  nvl(NOM_RAZ_SOC_PROV,p.nombre)nombre, NVL(R.numero ,'''')RUC, NVL(i.numero ,'''')CI, pr.cod_proveedor ',
'from personas p,',
'     cm_proveedores pr, ',
'     ident_personas R,',
'     ident_personas i',
'where pr.cod_empresa= ''1''',
'and pr.cod_persona = p.cod_persona ',
'and pr.cod_persona = p.cod_persona',
'AND PR.ESTADO <> ''I''',
'and p.cod_persona = i.cod_persona(+)',
'and p.cod_persona = R.cod_persona(+)',
'AND I.COD_IDENT(+)=''CI''',
'AND R.COD_IDENT(+)=''RUC''',
'order by nombre',
''))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_return_column_name=>'COD_PROVEEDOR'
,p_display_column_name=>'NOMBRE'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(553762433653406997)
,p_query_column_name=>'COD_PROVEEDOR'
,p_heading=>'Codigo'
,p_display_sequence=>10
,p_data_type=>'VARCHAR2'
,p_is_visible=>'N'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(553762870635406997)
,p_query_column_name=>'NOMBRE'
,p_heading=>'Nombre'
,p_display_sequence=>20
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(553763241790406997)
,p_query_column_name=>'RUC'
,p_heading=>'Ruc'
,p_display_sequence=>30
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(553763613040406998)
,p_query_column_name=>'CI'
,p_heading=>'Ci'
,p_display_sequence=>40
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp.component_end;
end;
/
