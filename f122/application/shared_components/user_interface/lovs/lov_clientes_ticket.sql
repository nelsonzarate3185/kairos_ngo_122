prompt --application/shared_components/user_interface/lovs/lov_clientes_ticket
begin
--   Manifest
--     LOV_CLIENTES_TICKET
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
 p_id=>wwv_flow_imp.id(169786441833734668)
,p_lov_name=>'LOV_CLIENTES_TICKET'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select c.cod_cliente||'' - ''||nombre nombre, PR.numero RUC, PI.numero CI, c.cod_cliente',
'from cc_clientes c, ',
'     personas p, ',
'     --telef_personas pt, ',
'     ident_personas pi ,',
'     ident_personas pR--,',
'    -- VW_ORDENES_TRABAJO_APX v',
'where c.cod_empresa = ''1''',
'and c.cod_persona = p.cod_persona',
'and p.cod_persona = pi.cod_persona(+) ',
'and NVL(pi.cod_ident(+),''CI'')=''CI''',
'and p.cod_persona = pR.cod_persona(+) ',
'and NVL(pR.cod_ident(+),''RUC'')=''RUC''',
'and (nvl(c.estado,''X'') IN (''A'',''I'') OR c.estado is null)',
'AND ((:P532_TIPO_CLIENTE <> ''1'' AND c.tip_cliente <> ''1'' ) OR',
'                       c.tip_cliente = :P532_TIPO_CLIENTE)',
'union all',
'',
'select ''TODOS'',''T'',null,null',
'FROM DUAL',
'order by 2'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_return_column_name=>'COD_CLIENTE'
,p_display_column_name=>'NOMBRE'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(169787016230731804)
,p_query_column_name=>'COD_CLIENTE'
,p_heading=>unistr('C\00F3d. Cliente')
,p_display_sequence=>10
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(169796713876392495)
,p_query_column_name=>'NOMBRE'
,p_heading=>'Nombre'
,p_display_sequence=>20
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(169789223627565291)
,p_query_column_name=>'RUC'
,p_heading=>'Ruc'
,p_display_sequence=>30
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(169789680988565291)
,p_query_column_name=>'CI'
,p_heading=>'Ci'
,p_display_sequence=>40
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp.component_end;
end;
/
