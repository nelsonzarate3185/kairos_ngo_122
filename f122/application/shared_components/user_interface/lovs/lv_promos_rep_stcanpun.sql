prompt --application/shared_components/user_interface/lovs/lv_promos_rep_stcanpun
begin
--   Manifest
--     LV_PROMOS_REP_STCANPUN
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
 p_id=>wwv_flow_imp.id(70422115771321815)
,p_lov_name=>'LV_PROMOS_REP_STCANPUN'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select s.descripcion, S.COD_ART_CORTO,  v.cod_articulo, v.puntos, v.fec_cierre, nro_promo R',
'  from ST_PUNTOS_PRODUCTOS_PROMO v, st_articulos s ',
' where v.cod_emprEsa=:P_COD_EMPRESA',
'   and v.cod_empresa=s.cod_emprEsa',
'   and v.cod_articulo= s.cod_articulo'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_return_column_name=>'R'
,p_display_column_name=>'R'
,p_group_sort_direction=>'ASC'
,p_default_sort_column_name=>'R'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(70422856302328920)
,p_query_column_name=>'R'
,p_heading=>'Nro. Promo'
,p_display_sequence=>10
,p_data_type=>'NUMBER'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(70423295661328920)
,p_query_column_name=>'DESCRIPCION'
,p_heading=>unistr('Descripci\00F3n')
,p_display_sequence=>20
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(70423699202328920)
,p_query_column_name=>'COD_ART_CORTO'
,p_heading=>'Cod. Art. Corto'
,p_display_sequence=>30
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(70424094019328920)
,p_query_column_name=>'COD_ARTICULO'
,p_heading=>unistr('Cod. Art\00EDculo')
,p_display_sequence=>40
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(70424494593328921)
,p_query_column_name=>'PUNTOS'
,p_heading=>'Puntos'
,p_display_sequence=>50
,p_data_type=>'NUMBER'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(70424847805328921)
,p_query_column_name=>'FEC_CIERRE'
,p_heading=>'Fec. Cierre'
,p_display_sequence=>60
,p_data_type=>'DATE'
);
wwv_flow_imp.component_end;
end;
/
