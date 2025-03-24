prompt --application/shared_components/user_interface/lovs/lv_seccion_smsessgg
begin
--   Manifest
--     LV_SECCION_SMSESSGG
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
 p_id=>wwv_flow_imp.id(65655449138290070)
,p_lov_name=>'LV_SECCION_SMSESSGG'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT COD_SECCION codigo_rapido,',
'	   DESCRIPCION nombre , ',
'	   1 ORDEN',
'  FROM RH_SECCIONES',
'UNION ALL',
'SELECT ''T'' codigo_rapido,',
'	   ''TODOS'' nombre , ',
'	   3 ',
'FROM DUAL',
'ORDER BY 3 DESC'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_return_column_name=>'CODIGO_RAPIDO'
,p_display_column_name=>'NOMBRE'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(65656030866295292)
,p_query_column_name=>'CODIGO_RAPIDO'
,p_heading=>unistr('C\00F3digo')
,p_display_sequence=>10
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(65656480860295293)
,p_query_column_name=>'NOMBRE'
,p_heading=>'Nombre'
,p_display_sequence=>20
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp.component_end;
end;
/
