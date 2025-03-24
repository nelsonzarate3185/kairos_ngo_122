prompt --application/shared_components/user_interface/lovs/lv_armados_stardete
begin
--   Manifest
--     LV_ARMADOS_STARDETE
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
 p_id=>wwv_flow_imp.id(144069595399068802)
,p_lov_name=>'LV_ARMADOS_STARDETE'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.descripcion desc_armado,',
'       a.cod_articulo cod_articulo_armado ,        ',
'       a.cod_art_corto cod_corto_armado, ',
'       A1.DESCRIPCION desc_desarmado,',
'       A1.COD_ARTICULO cod_articulo_desarmado,',
'       A1.COD_ART_CORTO cod_corto_desarmado',
'  from st_articulos a, ',
'       st_equivalencia_art e, ',
'       st_articulos a1',
' where a.cod_empresa = ''1''',
'   and (a.estado is null or a.estado <> ''I'')',
'   and (a1.estado is null or a1.estado <> ''I'')',
'   and a.cod_empresa = e.cod_empresa',
'   and a.cod_articulo = e.cod_articulo',
'   and a.cod_rubro = ''PR''',
'   and a1.cod_rubro = ''PR''',
'   and a1.cod_empresa = e.cod_empresa',
'   and a1.cod_articulo = e.cod_articulo_equi',
'   and a1.COD_ARTICULO = :P478_COD_ARTICULO_ADD',
' group by a.cod_art_corto, ',
'          a.descripcion, ',
'          a.cod_articulo,',
'          A1.DESCRIPCION, ',
'          A1.COD_ARTICULO,',
'          A1.COD_ART_CORTO',
' order by a.descripcion'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_return_column_name=>'COD_CORTO_ARMADO'
,p_display_column_name=>'COD_CORTO_ARMADO'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(144070859471059492)
,p_query_column_name=>'COD_CORTO_ARMADO'
,p_heading=>'Cod Corto Armado'
,p_display_sequence=>10
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(144071299181059492)
,p_query_column_name=>'COD_ARTICULO_ARMADO'
,p_heading=>'Cod Articulo Armado'
,p_display_sequence=>20
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(144071626265059492)
,p_query_column_name=>'DESC_ARMADO'
,p_heading=>'Desc Armado'
,p_display_sequence=>30
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(144072056202059492)
,p_query_column_name=>'COD_CORTO_DESARMADO'
,p_heading=>'Cod Corto Desarmado'
,p_display_sequence=>40
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(144072440126059492)
,p_query_column_name=>'COD_ARTICULO_DESARMADO'
,p_heading=>'Cod Articulo Desarmado'
,p_display_sequence=>50
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(144072815460059492)
,p_query_column_name=>'DESC_DESARMADO'
,p_heading=>'Desc Desarmado'
,p_display_sequence=>60
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp.component_end;
end;
/
