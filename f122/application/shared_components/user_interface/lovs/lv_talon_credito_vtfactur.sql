prompt --application/shared_components/user_interface/lovs/lv_talon_credito_vtfactur
begin
--   Manifest
--     LV_TALON_CREDITO_VTFACTUR
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
 p_id=>wwv_flow_imp.id(23342404791459657)
,p_lov_name=>'LV_TALON_CREDITO_VTFACTUR'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select numero_inicial, ',
'numero_final, ',
'nro_talonario,   ',
'SERIE, ',
'imprime, ',
'tip_impresion, ',
'decode( nvl( tip_impresion, ''F'' ), ''F'', ''Factura'', ''T'', ''Ticket'' ) desc_impresion,',
'DECODE (auto_impresion,''S'',''AUTOIMPRESOR'',''PREIMPRESO'') TIPO, ',
'auto_impresion',
'from talonarios T ',
'where cod_empresa = :P_COD_EMPRESA ',
'and tip_talonario = :P99_TIP_CREDITO ',
'and cod_sucursal = :P_COD_SUCURSAL',
'and nvl( activo, ''N'' ) <> ''N'' ',
'and nvl(codigo_usuario,:APP_USER)=:APP_USER ',
'order by numero_inicial, numero_final'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_return_column_name=>'NRO_TALONARIO'
,p_display_column_name=>'NRO_TALONARIO'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(23343721768483460)
,p_query_column_name=>'NUMERO_INICIAL'
,p_heading=>unistr('N\00FAmero Inicial')
,p_display_sequence=>10
,p_data_type=>'NUMBER'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(23344151637483460)
,p_query_column_name=>'NUMERO_FINAL'
,p_heading=>unistr('N\00FAmero Final')
,p_display_sequence=>20
,p_data_type=>'NUMBER'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(23344503093483461)
,p_query_column_name=>'DESC_IMPRESION'
,p_heading=>'Tipo Talonario'
,p_display_sequence=>30
,p_data_type=>'VARCHAR2'
,p_is_searchable=>'N'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(23344973019483461)
,p_query_column_name=>'NRO_TALONARIO'
,p_heading=>'Nro. Talonario'
,p_display_sequence=>40
,p_data_type=>'NUMBER'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(23345308964483461)
,p_query_column_name=>'SERIE'
,p_heading=>'Serie'
,p_display_sequence=>50
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(23345787032483461)
,p_query_column_name=>'TIPO'
,p_heading=>'Tipo'
,p_display_sequence=>60
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(23346131659483461)
,p_query_column_name=>'AUTO_IMPRESION'
,p_heading=>unistr('Auto Impresi\00F3n')
,p_display_sequence=>70
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp.component_end;
end;
/
