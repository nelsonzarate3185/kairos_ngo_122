prompt --application/shared_components/user_interface/lovs/lv_categorias_stgeinmo
begin
--   Manifest
--     LV_CATEGORIAS_STGEINMO
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
 p_id=>wwv_flow_imp.id(178751152250077992)
,p_lov_name=>'LV_CATEGORIAS_STGEINMO'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT C.DESCRIPCION||''-''||c.cod_categoria descripcion, C.COD_CATEGORIA',
'        FROM ST_CATEGORIAS C ',
'        WHERE C.COD_EMPRESA=:P_COD_EMPRESA ',
'        AND   C.ESTADO=''A''',
'        AND   C.COD_CATEGORIA IN (SELECT DISTINCT A.COD_CATEGORIA',
'        FROM ST_ARTICULOS A',
'        WHERE A.COD_EMPRESA=:P_COD_EMPRESA',
'        AND   A.ESTADO=''A''        ',
'        /*AND   A.COD_MADRE IS NULL',
'        AND   (A.COD_LINEA= :P556_COD_LINEA OR :P556_COD_LINEA IS NULL)',
'        AND   (A.COD_MARCA= :P556_COD_MARCA OR :P556_COD_MARCA IS NULL)',
'        AND   (A.COD_FAMILIA=:P556_COD_FAMILIA OR :P556_COD_FAMILIA IS NULL) */ ) '))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_return_column_name=>'COD_CATEGORIA'
,p_display_column_name=>'DESCRIPCION'
,p_group_sort_direction=>'ASC'
,p_default_sort_column_name=>'COD_CATEGORIA'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(179002811624583504)
,p_query_column_name=>'DESCRIPCION'
,p_heading=>'Descripcion'
,p_display_sequence=>1
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(179002435347583504)
,p_query_column_name=>'COD_CATEGORIA'
,p_heading=>'Cod.'
,p_display_sequence=>10
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp.component_end;
end;
/
