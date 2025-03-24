prompt --application/shared_components/user_interface/lovs/lv_arti_crm_contenido
begin
--   Manifest
--     LV_ARTI_CRM_CONTENIDO
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
 p_id=>wwv_flow_imp.id(124690052680680720)
,p_lov_name=>'LV_ARTI_CRM_CONTENIDO'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select descripcion, cod_articulo,cod_art_corto ',
'from st_articulos ',
'where cod_empresa = :P_COD_EMPRESA',
'AND COD_RUBRO=''PR''',
'order by decode(nvl(estado,''A''),''A'',1,2), descripcion'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_return_column_name=>'COD_ARTICULO'
,p_display_column_name=>'COD_ARTICULO'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(124692851655674969)
,p_query_column_name=>'DESCRIPCION'
,p_heading=>unistr('Descripci\00F3n Articulo')
,p_display_sequence=>10
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(124693283979674968)
,p_query_column_name=>'COD_ARTICULO'
,p_heading=>'Codigo'
,p_display_sequence=>20
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(124693670005674968)
,p_query_column_name=>'COD_ART_CORTO'
,p_heading=>'Cod. Corto'
,p_display_sequence=>30
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp.component_end;
end;
/
