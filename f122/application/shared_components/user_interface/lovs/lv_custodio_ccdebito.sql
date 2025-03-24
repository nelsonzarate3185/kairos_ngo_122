prompt --application/shared_components/user_interface/lovs/lv_custodio_ccdebito
begin
--   Manifest
--     LV_CUSTODIO_CCDEBITO
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
 p_id=>wwv_flow_imp.id(140879793266860699)
,p_lov_name=>'LV_CUSTODIO_CCDEBITO'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select c.descripcion,',
'       c.cod_custodio ',
'  from usuarios_custodios u, ',
'       cc_custodios c ',
' where u.cod_empresa = :P_COD_EMPRESA ',
'   and u.cod_usuario = :P_COD_USUARIO',
'   and u.cod_empresa = c.cod_empresa ',
'   and u.cod_custodio = c.cod_custodio ',
'   and u.cod_custodio <> :P476_V_COD_CUSTODIO',
' union all ',
'select c.descripcion, ',
'       c.cod_custodio ',
'  from cc_custodios c ',
' where c.cod_empresa = :P_COD_EMPRESA',
' and c.cod_custodio = :P476_V_COD_CUSTODIO',
' order by 1'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_return_column_name=>'COD_CUSTODIO'
,p_display_column_name=>'COD_CUSTODIO'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(140881064749845959)
,p_query_column_name=>'COD_CUSTODIO'
,p_heading=>'Cod Custodio'
,p_display_sequence=>10
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(140881408054845959)
,p_query_column_name=>'DESCRIPCION'
,p_heading=>'Descripcion'
,p_display_sequence=>20
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp.component_end;
end;
/
