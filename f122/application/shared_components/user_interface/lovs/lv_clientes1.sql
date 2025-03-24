prompt --application/shared_components/user_interface/lovs/lv_clientes1
begin
--   Manifest
--     LV_CLIENTES1
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
 p_id=>wwv_flow_imp.id(6220104513588210)
,p_lov_name=>'LV_CLIENTES1'
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
' WHERE c.cod_empresa = :P_COD_EMPRESA',
'   AND c.cod_persona = p.cod_persona',
'   AND p.cod_persona = pt.cod_persona(+)',
'   AND p.cod_persona = pi.cod_persona(+)',
'   AND nvl(c.estado, ''X'') in(''A'',''B'',''C'')',
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
 p_id=>wwv_flow_imp.id(101818050923173912)
,p_query_column_name=>'COD_IDENT'
,p_heading=>'Cod Ident'
,p_display_sequence=>10
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(101818498952173913)
,p_query_column_name=>'COD_CLIENTE'
,p_heading=>'Cod Cliente'
,p_display_sequence=>20
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(101818849315173913)
,p_query_column_name=>'NOMBRE'
,p_heading=>'Nombre'
,p_display_sequence=>30
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(101819200653173913)
,p_query_column_name=>'CODI'
,p_heading=>'Codi'
,p_display_sequence=>40
,p_data_type=>'VARCHAR2'
,p_is_visible=>'N'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(101819631067173913)
,p_query_column_name=>'NUMERO'
,p_heading=>'Ruc/CI'
,p_display_sequence=>50
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(101820063878173913)
,p_query_column_name=>'NUM_TELEFONO'
,p_heading=>'Num Telefono'
,p_display_sequence=>60
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp.component_end;
end;
/
