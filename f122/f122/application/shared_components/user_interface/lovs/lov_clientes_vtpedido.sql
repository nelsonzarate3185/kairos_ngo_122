prompt --application/shared_components/user_interface/lovs/lov_clientes_vtpedido
begin
--   Manifest
--     LOV_CLIENTES_VTPEDIDO
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
 p_id=>wwv_flow_imp.id(63635719225463568)
,p_lov_name=>'LOV_CLIENTES_VTPEDIDO'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT nombre,',
'       nomb_fantasia,',
'       cod_cliente,',
'       codigo_area,',
'       num_telefono,',
'       cod_ident,',
'       numero,',
'       cod_ident||'' - ''||nombre DESCRI,',
'       c.cod_cliente codi',
'  FROM cc_clientes c, personas p, telef_personas pt, ident_personas pi',
' WHERE c.cod_empresa = ''1''',
'   AND c.cod_persona = p.cod_persona',
'   AND p.cod_persona = pt.cod_persona(+)',
'   AND p.cod_persona = pi.cod_persona(+)',
'   AND nvl(c.estado, ''X'') = ''A''',
' ORDER BY nombre'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_return_column_name=>'CODI'
,p_display_column_name=>'CODI'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(98178705033028953)
,p_query_column_name=>'COD_IDENT'
,p_heading=>'Identificador'
,p_display_sequence=>10
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(98185334154066175)
,p_query_column_name=>'CODI'
,p_heading=>'Codi'
,p_display_sequence=>10
,p_data_type=>'VARCHAR2'
,p_is_visible=>'N'
,p_is_searchable=>'N'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(98179101729028954)
,p_query_column_name=>'DESCRI'
,p_heading=>'Descri'
,p_display_sequence=>20
,p_data_type=>'VARCHAR2'
,p_is_visible=>'N'
,p_is_searchable=>'N'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(98179566053028954)
,p_query_column_name=>'NOMBRE'
,p_heading=>'Nombre'
,p_display_sequence=>30
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(98179992356028954)
,p_query_column_name=>'NOMB_FANTASIA'
,p_heading=>unistr('Nombre Fantas\00EDa')
,p_display_sequence=>40
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(98180306694028954)
,p_query_column_name=>'COD_CLIENTE'
,p_heading=>unistr('C\00F3digo Cliente')
,p_display_sequence=>50
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(98180770176028954)
,p_query_column_name=>'CODIGO_AREA'
,p_heading=>unistr('C\00F3digo \00C1rea')
,p_display_sequence=>60
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(98181144296028954)
,p_query_column_name=>'NUM_TELEFONO'
,p_heading=>unistr('N\00FAmero Tel\00E9fono')
,p_display_sequence=>70
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(98181580893028954)
,p_query_column_name=>'NUMERO'
,p_heading=>unistr('N\00FAmero')
,p_display_sequence=>80
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp.component_end;
end;
/
