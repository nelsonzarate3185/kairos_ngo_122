prompt --application/shared_components/user_interface/lovs/lv_solicitante_smsessgg
begin
--   Manifest
--     LV_SOLICITANTE_SMSESSGG
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
 p_id=>wwv_flow_imp.id(65661152195360229)
,p_lov_name=>'LV_SOLICITANTE_SMSESSGG'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT PC.COD_PERSONA codigo_rapido,',
'       PS1.NOMBRE nombre , ',
'       1 ORDEN',
'  FROM SM_ORD_PEDIDOS_SSGG pc,',
'       personas ps1',
' WHERE PC.COD_EMPRESA  = :P_COD_EMPRESA',
'   AND pc.COD_PERSONA  = ps1.cod_persona',
'group by pc.cod_persona, ',
'		  ps1.nombre',
'',
'union all',
'SELECT p.cod_persona codigo_rapido, ',
'	   p.nombre ,',
'	   2 ',
'  FROM rh_empleados e, ',
'       personas p , ',
'       usuarios u',
' WHERE e.cod_empresa = :P_COD_EMPRESA ',
'   AND e.cod_persona = p.cod_persona ',
'   AND nvl(e.activo, ''S'') = ''S''  ',
'   AND u.cod_empresa = e.cod_empresa',
'   AND u.cod_persona = e.cod_persona',
'   AND u.cod_usuario = :P270_COD_USUARIO',
'UNION ALL',
'SELECT ''T'' codigo_rapido,',
'	   ''TODOS'' nombre , ',
'	   3 ',
'  FROM DUAL',
'',
'UNION ALL',
'SELECT ''N'' codigo_rapido,',
'       ''NINGUNO'' nombre , ',
'       4 ',
'  FROM DUAL',
'ORDER BY 3 DESC;'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_return_column_name=>'CODIGO_RAPIDO'
,p_display_column_name=>'NOMBRE'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(65661609817364325)
,p_query_column_name=>'CODIGO_RAPIDO'
,p_heading=>unistr('C\00F3digo')
,p_display_sequence=>10
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(65662050403364325)
,p_query_column_name=>'NOMBRE'
,p_heading=>'Nombre'
,p_display_sequence=>20
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp.component_end;
end;
/
