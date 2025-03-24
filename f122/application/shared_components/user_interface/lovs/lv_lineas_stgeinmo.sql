prompt --application/shared_components/user_interface/lovs/lv_lineas_stgeinmo
begin
--   Manifest
--     LV_LINEAS_STGEINMO
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
 p_id=>wwv_flow_imp.id(178750977416085370)
,p_lov_name=>'LV_LINEAS_STGEINMO'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DISTINCT L.DESCRIPCION, L.COD_LINEA',
'        FROM st_linea  L ',
'        WHERE L.ESTADO=''A''',
'        AND   L.COD_EMPRESA=:P_COD_EMPRESA',
'        AND   L.COD_LINEA IN ( SELECT DISTINCT A.COD_LINEA',
'        FROM ST_ARTICULOS A',
'        WHERE A.COD_EMPRESA=:P_COD_EMPRESA',
'        AND   A.ESTADO=''A''        ',
'        AND   A.COD_MADRE IS NULL',
'        AND   (A.COD_MARCA= :P556_COD_MARCA OR :P556_COD_MARCA IS NULL)',
'        AND   (A.COD_FAMILIA=:P556_COD_FAMILIA OR :P556_COD_FAMILIA IS NULL)',
'        AND   (A.COD_CATEGORIA=:P556_COD_CATEGORIA OR :P556_COD_CATEGORIA IS NULL)',
'      )',
'          ORDER BY L.DESCRIPCION'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_return_column_name=>'COD_LINEA'
,p_display_column_name=>'COD_LINEA'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(179007264828573250)
,p_query_column_name=>'COD_LINEA'
,p_heading=>'Cod.'
,p_display_sequence=>10
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(179007692831573250)
,p_query_column_name=>'DESCRIPCION'
,p_heading=>'Descripcion'
,p_display_sequence=>20
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp.component_end;
end;
/
