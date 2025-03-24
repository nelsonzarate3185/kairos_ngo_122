prompt --application/shared_components/user_interface/lovs/lv_direcc_stetique
begin
--   Manifest
--     LV_DIRECC_STETIQUE
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
 p_id=>wwv_flow_imp.id(219670850175442505)
,p_lov_name=>'LV_DIRECC_STETIQUE'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select dp.detalle, dp.cod_direccion',
'from cc_clientes c, personas p, DIREC_PERSONAS DP',
'where c.cod_empresa = :p_cod_empresa',
'and c.cod_cliente = :P641_COD_CLIENTE',
'and c.cod_persona = p.cod_persona',
'and dp.cod_persona=p.cod_persona'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_return_column_name=>'COD_DIRECCION'
,p_display_column_name=>'COD_DIRECCION'
,p_group_sort_direction=>'ASC'
,p_default_sort_column_name=>'COD_DIRECCION'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(219672349060446889)
,p_query_column_name=>'COD_DIRECCION'
,p_heading=>unistr('C\00F3digo')
,p_display_sequence=>10
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(219672722378446889)
,p_query_column_name=>'DETALLE'
,p_heading=>'Detalle'
,p_display_sequence=>20
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp.component_end;
end;
/
