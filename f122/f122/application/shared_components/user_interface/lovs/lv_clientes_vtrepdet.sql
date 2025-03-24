prompt --application/shared_components/user_interface/lovs/lv_clientes_vtrepdet
begin
--   Manifest
--     LV_CLIENTES_VTREPDET
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
 p_id=>wwv_flow_imp.id(80737795549139131)
,p_lov_name=>'LV_CLIENTES_VTREPDET'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ltrim(rtrim(nvl(p.nombre, p.nomb_fantasia))) nombre, ',
'       c.cod_cliente, ',
'       fnc_busca_ruc (c.cod_persona) ruc,',
'       decode(c.estado, ''A'',''ACTIVO'',''B'',''BLOQUEADO'',''C'',''CREDITO BLOQ.'',''I'',''INACTIVO'',NULL) ESTADO',
'  from cc_clientes c, personas p',
' where c.cod_empresa = :p_cod_empresa',
'   and c.cod_persona = p.cod_persona',
'   and ltrim(rtrim(nvl(p.nombre, p.nomb_fantasia))) is not null',
' order by 1'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_return_column_name=>'COD_CLIENTE'
,p_display_column_name=>'NOMBRE'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(81324265688969932)
,p_query_column_name=>'COD_CLIENTE'
,p_heading=>unistr('C\00F3d.')
,p_display_sequence=>10
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(81324674209969932)
,p_query_column_name=>'NOMBRE'
,p_heading=>'Nombre'
,p_display_sequence=>20
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(81325033586969932)
,p_query_column_name=>'RUC'
,p_heading=>'RUC'
,p_display_sequence=>30
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(81325456399969932)
,p_query_column_name=>'ESTADO'
,p_heading=>'Estado'
,p_display_sequence=>40
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp.component_end;
end;
/
