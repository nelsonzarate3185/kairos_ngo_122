prompt --application/shared_components/user_interface/lovs/lv_usuarios_cajas
begin
--   Manifest
--     LV_USUARIOS_CAJAS
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
 p_id=>wwv_flow_imp.id(80540757894732443)
,p_lov_name=>'LV_USUARIOS_CAJAS'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct u.Cod_Usuario cod,',
'       P.NOMBRE nombre,',
'       U.cod_usuario iduser',
'from cc_usuarios_cajas c',
'    ,usuarios u',
'    ,personas p    ',
'where c.cod_usuario=u.cod_usuario',
'AND u.cod_persona=p.cod_persona'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_return_column_name=>'IDUSER'
,p_display_column_name=>'NOMBRE'
,p_group_sort_direction=>'ASC'
,p_default_sort_column_name=>'NOMBRE'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(80541393947735330)
,p_query_column_name=>'IDUSER'
,p_display_sequence=>10
,p_data_type=>'VARCHAR2'
,p_is_visible=>'N'
,p_is_searchable=>'N'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(80541761345735330)
,p_query_column_name=>'NOMBRE'
,p_heading=>'Nombre'
,p_display_sequence=>20
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(80542158260735331)
,p_query_column_name=>'COD'
,p_heading=>'Usuario'
,p_display_sequence=>30
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp.component_end;
end;
/
