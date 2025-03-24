prompt --application/shared_components/user_interface/lovs/lv_art_ot_rep
begin
--   Manifest
--     LV_ART_OT_REP
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
 p_id=>wwv_flow_imp.id(367638232584748224)
,p_lov_name=>'LV_ART_OT_REP'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select   A.descripcion L, ',
'         A.cod_articulo V,   1 P',
'from st_articulos A, st_equivalencia_art S   ',
' where A.cod_empresa = nvl(:P327_COD_EMPRESA,''1'')',
' and ( A.estado is null or A.estado <> ''I'' )',
' AND A.COD_ARTICULO = S.COD_ARTICULO_EQUI',
' AND A.COD_EMPRESA =  S.COD_EMPRESA',
' AND S.COD_ARTICULO  = :P327_COD_ARTICULO_CAB ',
' GROUP BY  A.descripcion, A.cod_articulo',
'    /*',
'union all  ',
'',
'select   A.descripcion L, ',
'         A.cod_articulo V,  2 P',
'from st_articulos A ',
' where A.cod_empresa = nvl(:P327_COD_EMPRESA,''1'')',
' and ( A.estado is null or A.estado <> ''I'' ) ',
' AND NOT EXISTS ( SELECT DISTINCT ''1''',
'                  FROM st_equivalencia_art S',
'                 WHERE A.COD_ARTICULO = S.COD_ARTICULO_EQUI',
'                 AND A.COD_EMPRESA =  S.COD_EMPRESA',
'                 AND S.COD_ARTICULO  = :P327_COD_ARTICULO_CAB',
'                 )  ',
' GROUP BY  A.descripcion, A.cod_articulo',
'*/',
' ORDER BY 3,1 ASC',
' ',
' '))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_return_column_name=>'V'
,p_display_column_name=>'L'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(368289998866859497)
,p_query_column_name=>'V'
,p_heading=>'Codigo'
,p_display_sequence=>10
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(368290350603859498)
,p_query_column_name=>'L'
,p_heading=>'Descripcion'
,p_display_sequence=>20
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp.component_end;
end;
/
