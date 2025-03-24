prompt --application/shared_components/user_interface/lovs/lv_articulos_carepdet
begin
--   Manifest
--     LV_ARTICULOS_CAREPDET
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
 p_id=>wwv_flow_imp.id(80429468687916689)
,p_lov_name=>'LV_ARTICULOS_CAREPDET'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select A.cod_articulo||'' - ''||A.descripcion L, ',
'         A.cod_articulo V, e.cant_dispon',
'from st_articulos A, st_equivalencia_art S,  st_existencia_art   e',
' where A.cod_empresa = :P_COD_EMPRESA',
' and ( A.estado is null or A.estado <> ''I'' )',
' AND A.COD_ARTICULO = S.COD_ARTICULO_EQUI',
' AND A.COD_EMPRESA =  S.COD_EMPRESA',
' AND S.COD_ARTICULO  = :P327_COD_ARTICULO_CAB',
'  AND a.cod_empresa = e.cod_empresa(+)',
'   AND a.cod_articulo = e.cod_articulo(+)',
'   --AND e.cod_sucursal in (''101'', ''190'', ''75'')',
'  order by A.descripcion'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_return_column_name=>'V'
,p_display_column_name=>'L'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(167438692279942287)
,p_query_column_name=>'V'
,p_display_sequence=>10
,p_data_type=>'VARCHAR2'
,p_is_visible=>'N'
,p_is_searchable=>'N'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(167439020592942287)
,p_query_column_name=>'L'
,p_heading=>'Articulo'
,p_display_sequence=>20
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(167439451301942287)
,p_query_column_name=>'CANT_DISPON'
,p_heading=>'Cant Dispon'
,p_display_sequence=>30
,p_data_type=>'NUMBER'
);
wwv_flow_imp.component_end;
end;
/
