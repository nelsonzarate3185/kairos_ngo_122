prompt --application/shared_components/user_interface/lovs/lv_it_responsables_smsessgg
begin
--   Manifest
--     LV_IT_RESPONSABLES_SMSESSGG
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
 p_id=>wwv_flow_imp.id(65684865282561777)
,p_lov_name=>'LV_IT_RESPONSABLES_SMSESSGG'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT p.cod_persona codigo_rapido,',
'	   nombre nombre',
'  FROM rh_empleados e, personas p ',
' WHERE e.cod_empresa = :P_COD_EMPRESA',
'   AND e.cod_persona = p.cod_persona ',
'   AND nvl(e.activo, ''N'') = ''S'' ',
'   AND cod_cargo in (''229'',''211'',''269'',''312'',''357'', ',
'   ''229'',''211'',''269'',''312'',''357'',''378'',''377'',''440'',''422'')',
'UNION ALL',
'SELECT ''T'' codigo_rapido,',
'	   ''TODOS'' nombre',
'FROM DUAL',
'ORDER BY 1 ASC;'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_return_column_name=>'CODIGO_RAPIDO'
,p_display_column_name=>'NOMBRE'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(65840632934983501)
,p_query_column_name=>'CODIGO_RAPIDO'
,p_heading=>unistr('C\00F3digo')
,p_display_sequence=>10
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(65685660875566294)
,p_query_column_name=>'NOMBRE'
,p_heading=>'Nombre'
,p_display_sequence=>20
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp.component_end;
end;
/
