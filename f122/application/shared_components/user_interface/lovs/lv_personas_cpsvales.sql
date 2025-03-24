prompt --application/shared_components/user_interface/lovs/lv_personas_cpsvales
begin
--   Manifest
--     LV_PERSONAS_CPSVALES
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
 p_id=>wwv_flow_imp.id(9660533466847845)
,p_lov_name=>'LV_PERSONAS_CPSVALES'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT distinct P.COD_PERSONA R, P.NOMBRE EMPLEADO ',
'FROM  PERSONAS P ',
'WHERE   p.cod_persona in (select cod_persona',
'                            from rp_repartidores',
'                            where cod_empresa=''1''',
'                            and   activo=''S''',
'                    union all',
'                        select cod_persona',
'                        from rh_empleados',
'                        where cod_empresa=''1''',
'                        and nvl(activo,''S'')<>''N'')',
'',
''))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_return_column_name=>'R'
,p_display_column_name=>'EMPLEADO'
,p_group_sort_direction=>'ASC'
,p_default_sort_column_name=>'R'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(9661412433854779)
,p_query_column_name=>'EMPLEADO'
,p_heading=>'EMPLEADO'
,p_display_sequence=>10
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(9661825106854779)
,p_query_column_name=>'R'
,p_heading=>unistr('C\00D3DIGO')
,p_display_sequence=>20
,p_data_type=>'VARCHAR2'
,p_is_visible=>'N'
,p_is_searchable=>'N'
);
wwv_flow_imp.component_end;
end;
/
