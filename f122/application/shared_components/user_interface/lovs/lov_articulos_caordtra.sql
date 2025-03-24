prompt --application/shared_components/user_interface/lovs/lov_articulos_caordtra
begin
--   Manifest
--     LOV_ARTICULOS_CAORDTRA
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
 p_id=>wwv_flow_imp.id(176091840104395300)
,p_lov_name=>'LOV_ARTICULOS_CAORDTRA'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DESCRIPCION,',
'      COD_ARTICULO,',
'      cod_art_corto',
'FROM (',
'select descripcion, cod_articulo,cod_art_corto ,1 ORDEN',
'from st_articulos a where cod_empresa =  nvl(:P_COD_EMPRESA,''1'')',
'--and a.precio_base>0',
'--and a.costo_prom>0',
'and a.descripcion is not null',
'',
'and (( a.cod_rubro =''PR'' AND A.COD_ART_CORTO IS NOT NULL) OR a.cod_rubro in (''RE'',''MU''))',
'--and a.cod_rubro in (''PR'')',
'--AND A.COD_ART_CORTO IS NOT NULL',
'',
') ORDER BY ORDEN,1',
'',
''))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_return_column_name=>'COD_ARTICULO'
,p_display_column_name=>'DESCRIPCION'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(176092824576385900)
,p_query_column_name=>'COD_ARTICULO'
,p_heading=>unistr('C\00F3d. Articulo')
,p_display_sequence=>10
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(176093160902385899)
,p_query_column_name=>'COD_ART_CORTO'
,p_heading=>unistr('C\00F3d.. Art Corto')
,p_display_sequence=>20
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(176093577940385898)
,p_query_column_name=>'DESCRIPCION'
,p_heading=>unistr('Descripci\00F3n')
,p_display_sequence=>30
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp.component_end;
end;
/
