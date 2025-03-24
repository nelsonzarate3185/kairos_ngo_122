prompt --application/shared_components/user_interface/lovs/lv_art_fichatec
begin
--   Manifest
--     LV_ART_FICHATEC
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
 p_id=>wwv_flow_imp.id(107883331814564300)
,p_lov_name=>'LV_ART_FICHATEC'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select f.nro_ficha,',
'       f.destino,',
'       f.cod_articulo,',
'       a.descripcion,',
'       f.nro_garantia',
'from st_ficha_tecnica f,',
'     st_articulos a',
'where f.estado in (''6'',''2'',''3'')',
'and   f.cod_empresa=:p_cod_empresa',
'and   f.cod_empresa=a.cod_empresa',
'and   f.cod_articulo=a.cod_articulo',
';'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_return_column_name=>'NRO_FICHA'
,p_display_column_name=>'DESCRIPCION'
,p_group_sort_direction=>'ASC'
,p_default_sort_column_name=>'DESCRIPCION'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(107885014094573138)
,p_query_column_name=>'NRO_FICHA'
,p_heading=>'Ficha Tec.'
,p_display_sequence=>10
,p_data_type=>'NUMBER'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(107961977453726783)
,p_query_column_name=>'DESTINO'
,p_heading=>'Destino'
,p_display_sequence=>20
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(107885483454573138)
,p_query_column_name=>'DESCRIPCION'
,p_heading=>unistr('Articulo Descripci\00F3n')
,p_display_sequence=>30
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(107885800906573138)
,p_query_column_name=>'COD_ARTICULO'
,p_heading=>'Codigo'
,p_display_sequence=>40
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(107886274714573138)
,p_query_column_name=>'NRO_GARANTIA'
,p_heading=>'Nro Garantia'
,p_display_sequence=>50
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp.component_end;
end;
/
