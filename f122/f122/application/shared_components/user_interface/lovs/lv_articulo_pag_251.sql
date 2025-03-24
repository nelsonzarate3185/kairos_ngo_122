prompt --application/shared_components/user_interface/lovs/lv_articulo_pag_251
begin
--   Manifest
--     LV_ARTICULO_PAG_251
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
 p_id=>wwv_flow_imp.id(502696394719135991)
,p_lov_name=>'LV_ARTICULO_PAG_251'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select A.DESCRIPCION ,A.COD_ARTICULO,A.Cod_Art_Corto ',
'from st_articulos a',
'where a.cod_empresa=:P_COD_EMPRESA',
'and (( a.cod_rubro in (''RE'',''PR'') AND NVL(:P251_RUBRO,''T'')=''T'') OR (a.cod_rubro=:P251_RUBRO ))',
'/*and   upper(a.descripcion) not like ''%NO%FACT%''*/',
'order by  A.Cod_Art_Corto desc, DECODE(A.ESTADO,''A'',''1'',''2'') ,A.DESCRIPCION'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_return_column_name=>'COD_ARTICULO'
,p_display_column_name=>'DESCRIPCION'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(502697086256138763)
,p_query_column_name=>'DESCRIPCION'
,p_heading=>'Descripcion'
,p_display_sequence=>10
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(502697440954138763)
,p_query_column_name=>'COD_ARTICULO'
,p_heading=>'Cod Articulo'
,p_display_sequence=>20
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(502697863815138763)
,p_query_column_name=>'COD_ART_CORTO'
,p_heading=>'Cod Art Corto'
,p_display_sequence=>30
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp.component_end;
end;
/
