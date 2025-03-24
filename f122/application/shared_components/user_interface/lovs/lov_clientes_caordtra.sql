prompt --application/shared_components/user_interface/lovs/lov_clientes_caordtra
begin
--   Manifest
--     LOV_CLIENTES_CAORDTRA
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
 p_id=>wwv_flow_imp.id(135525393846585523)
,p_lov_name=>'LOV_CLIENTES_CAORDTRA'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select nombre, PR.numero RUC, PI.numero CI, cod_cliente',
'from cc_clientes c, ',
'     personas p, ',
'     --telef_personas pt, ',
'     ident_personas pi ,',
'     ident_personas pR ',
'where c.cod_empresa = nvl(:P_COD_EMPRESA,''1'')',
'and c.cod_persona = p.cod_persona',
'---and p.cod_persona = pt.cod_persona(+) ',
'and p.cod_persona = pi.cod_persona(+) ',
'and NVL(pi.cod_ident(+),''CI'')=''CI''',
'and p.cod_persona = pR.cod_persona(+) ',
'and NVL(pR.cod_ident(+),''RUC'')=''RUC''',
'--and nvl(c.estado,''X'') IN (''A'',''I'') ',
''))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_return_column_name=>'COD_CLIENTE'
,p_display_column_name=>'COD_CLIENTE'
,p_group_sort_direction=>'ASC'
,p_default_sort_column_name=>'COD_CLIENTE'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(135525940941580631)
,p_query_column_name=>'NOMBRE'
,p_heading=>'Nombre'
,p_display_sequence=>10
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(135526395922580630)
,p_query_column_name=>'RUC'
,p_heading=>'Ruc'
,p_display_sequence=>20
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(135526727076580630)
,p_query_column_name=>'CI'
,p_heading=>unistr('C\00E9dula Identidad')
,p_display_sequence=>30
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(135527189720580630)
,p_query_column_name=>'COD_CLIENTE'
,p_heading=>unistr('C\00F3digo Cliente')
,p_display_sequence=>40
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp.component_end;
end;
/
