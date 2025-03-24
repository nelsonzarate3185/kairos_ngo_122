prompt --application/shared_components/user_interface/lovs/lv_clientes_cccancuo
begin
--   Manifest
--     LV_CLIENTES_CCCANCUO
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
 p_id=>wwv_flow_imp.id(110847930291915765)
,p_lov_name=>'LV_CLIENTES_CCCANCUO'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select /*+ rule */',
'       C.cod_cliente CODIGO, ',
'       nombre NOMBRE',
'  from cc_clientes c, personas p, CC_SALDOS SAL',
' where c.cod_empresa = :P_COD_EMPRESA',
'   and c.cod_persona = p.cod_persona',
'   and nvl(estado,''A'') NOT IN (''I'')',
'   AND SAL.COD_EMPRESA=C.COD_EMPRESA',
'   AND SAL.COD_CLIENTE=C.COD_CLIENTE',
'',
'GROUP BY C.cod_cliente, nombre',
' order by nombre '))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_query_table=>'SUCURSALES'
,p_return_column_name=>'CODIGO'
,p_display_column_name=>'CODIGO'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(127259574021002273)
,p_query_column_name=>'CODIGO'
,p_heading=>'Codigo'
,p_display_sequence=>10
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(127259998348002273)
,p_query_column_name=>'NOMBRE'
,p_heading=>'Nombre'
,p_display_sequence=>20
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp.component_end;
end;
/
