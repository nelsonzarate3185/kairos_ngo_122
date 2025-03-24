prompt --application/shared_components/user_interface/lovs/lv_des_marca_stgeinmo
begin
--   Manifest
--     LV_DES_MARCA_STGEINMO
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
 p_id=>wwv_flow_imp.id(178750230482115342)
,p_lov_name=>'LV_DES_MARCA_STGEINMO'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT M.DESCRIPCION||''-''||M.cod_marca descripcion, M.cod_marca',
'FROM st_marcas M',
'WHERE M.cod_marca IN (        SELECT DISTINCT A.COD_MARCA',
'        FROM ST_ARTICULOS A',
'        WHERE A.COD_EMPRESA=:P_COD_EMPRESA',
'        AND   A.ESTADO=''A''        ',
'        AND   A.COD_MADRE IS NULL',
'        AND   (A.COD_LINEA= :P556_COD_LINEA OR :P556_COD_LINEA IS NULL)',
'         AND   (A.COD_FAMILIA=:P556_COD_FAMILIA OR :P556_COD_FAMILIA IS NULL)',
'        AND   (A.COD_CATEGORIA=:P556_COD_CATEGORIA OR :P556_COD_CATEGORIA IS NULL))',
'ORDER BY M.DESCRIPCION ',
' '))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_return_column_name=>'COD_MARCA'
,p_display_column_name=>'DESCRIPCION'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(179003672359579718)
,p_query_column_name=>'COD_MARCA'
,p_heading=>'Cod.'
,p_display_sequence=>10
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(179004007039579717)
,p_query_column_name=>'DESCRIPCION'
,p_heading=>'Descripcion'
,p_display_sequence=>20
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp.component_end;
end;
/
