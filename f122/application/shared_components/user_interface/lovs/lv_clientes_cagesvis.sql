prompt --application/shared_components/user_interface/lovs/lv_clientes_cagesvis
begin
--   Manifest
--     LV_CLIENTES_CAGESVIS
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
 p_id=>wwv_flow_imp.id(128689867678606466)
,p_lov_name=>'LV_CLIENTES_CAGESVIS'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ltrim(rtrim(nvl(p.nombre, p.nomb_fantasia))) nombre, ',
'       c.cod_cliente, ',
'       I.NUMERO',
'  from cc_clientes c,',
'       personas p, ',
'       ident_personas i',
' where c.cod_empresa = :P_COD_EMPRESA',
'   and c.cod_persona = p.cod_persona',
'   and c.estado <> ''B''',
'   and c.estado <> ''I''',
'   and i.cod_persona(+) = p.cod_persona',
'   and i.cod_ident(+)=''CI''',
' order by 1'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_return_column_name=>'COD_CLIENTE'
,p_display_column_name=>'COD_CLIENTE'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(128729524504599249)
,p_query_column_name=>'COD_CLIENTE'
,p_heading=>'Cod Cliente'
,p_display_sequence=>10
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(128729961459599249)
,p_query_column_name=>'NOMBRE'
,p_heading=>'Nombre'
,p_display_sequence=>20
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(128730398557599249)
,p_query_column_name=>'NUMERO'
,p_heading=>'Numero'
,p_display_sequence=>30
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp.component_end;
end;
/
