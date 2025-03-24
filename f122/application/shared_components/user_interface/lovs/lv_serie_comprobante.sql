prompt --application/shared_components/user_interface/lovs/lv_serie_comprobante
begin
--   Manifest
--     LV_SERIE_COMPROBANTE
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
 p_id=>wwv_flow_imp.id(36488419999158280)
,p_lov_name=>'LV_SERIE_COMPROBANTE'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select serie, numero_inicial, numero_final, activo, fec_vencimiento, auto_impresion, timbrado',
'from talonarios',
'where cod_empresa  = :P_COD_EMPRESA',
'and tip_talonario  = :P178_TIP_COMPROBANTE',
'and cod_sucursal   = :P178_COD_SUCURSAL',
'and codigo_usuario = :P178_COD_USUARIO_VAR',
'and activo = ''S'''))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_return_column_name=>'SERIE'
,p_display_column_name=>'SERIE'
,p_group_sort_direction=>'ASC'
,p_default_sort_column_name=>'SERIE'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(36490399295166770)
,p_query_column_name=>'SERIE'
,p_heading=>unistr('C\00F3digo')
,p_display_sequence=>10
,p_data_type=>'VARCHAR2'
,p_is_searchable=>'N'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(36490746039166771)
,p_query_column_name=>'NUMERO_FINAL'
,p_heading=>'Numero Final'
,p_display_sequence=>20
,p_data_type=>'NUMBER'
,p_is_visible=>'N'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(36491133563166771)
,p_query_column_name=>'AUTO_IMPRESION'
,p_heading=>'Auto Impresion'
,p_display_sequence=>30
,p_data_type=>'VARCHAR2'
,p_is_visible=>'N'
);
wwv_flow_imp.component_end;
end;
/
