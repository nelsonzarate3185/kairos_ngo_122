prompt --application/shared_components/user_interface/lovs/lv_art_corto_stperepr
begin
--   Manifest
--     LV_ART_CORTO_STPEREPR
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
 p_id=>wwv_flow_imp.id(142975484858345694)
,p_lov_name=>'LV_ART_CORTO_STPEREPR'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select COD_ART_CORTO||''-''||descripcion descripion,COD_ART_CORTO, cod_articulo ',
'from st_articulos ',
'where cod_empresa = :P_cod_empresa ',
'and ( estado is null or estado <> ''I'' )',
'AND COD_RUBRO=''PR'' order by descripcion'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_return_column_name=>'COD_ART_CORTO'
,p_display_column_name=>'DESCRIPION'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp.component_end;
end;
/
