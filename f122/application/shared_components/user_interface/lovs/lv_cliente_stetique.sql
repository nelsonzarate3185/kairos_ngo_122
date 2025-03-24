prompt --application/shared_components/user_interface/lovs/lv_cliente_stetique
begin
--   Manifest
--     LV_CLIENTE_STETIQUE
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
 p_id=>wwv_flow_imp.id(219670653610438564)
,p_lov_name=>'LV_CLIENTE_STETIQUE'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select decode( p.nombre, nvl( p.nomb_fantasia, p.nombre ), p.nombre, ltrim( p.nombre ) || '' '' || nvl( p.nomb_fantasia, '' '' ) ) nombre, cod_cliente ',
'from cc_clientes c, personas p ',
'where c.cod_empresa = :p_cod_empresa ',
'and c.cod_persona = p.cod_persona ',
'order by lpad( cod_cliente, 15, '' '' )'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_return_column_name=>'COD_CLIENTE'
,p_display_column_name=>'COD_CLIENTE'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(219671421434445332)
,p_query_column_name=>'COD_CLIENTE'
,p_heading=>unistr('C\00F3digo')
,p_display_sequence=>10
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(219671816534445334)
,p_query_column_name=>'NOMBRE'
,p_heading=>'Nombre'
,p_display_sequence=>20
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp.component_end;
end;
/
