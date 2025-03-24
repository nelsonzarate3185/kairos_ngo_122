prompt --application/shared_components/user_interface/lovs/lv_vendedores_fvproyec
begin
--   Manifest
--     LV_VENDEDORES_FVPROYEC
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
 p_id=>wwv_flow_imp.id(54544323021351660)
,p_lov_name=>'LV_VENDEDORES_FVPROYEC'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  select pe.nombre, em.cod_vendedor R, em.cod_vendedor D',
'    from fv_vendedores em ,personas pe ',
'   where em.cod_empresa = :P_COD_EMPRESA ',
'     and em.cod_persona = pe.cod_persona  ',
'     and em.cod_tipo_grupo=:P238_COD_TIPO_GRUPO',
'     and ESTADO IN(''A'',''S'')',
'order by pe.nombre'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_return_column_name=>'R'
,p_display_column_name=>'D'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(54544872952356471)
,p_query_column_name=>'R'
,p_display_sequence=>10
,p_data_type=>'VARCHAR2'
,p_is_visible=>'N'
,p_is_searchable=>'N'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(54545294330356471)
,p_query_column_name=>'D'
,p_heading=>unistr('C\00F3digo')
,p_display_sequence=>20
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(54545680310356472)
,p_query_column_name=>'NOMBRE'
,p_heading=>'Nombre'
,p_display_sequence=>30
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp.component_end;
end;
/
