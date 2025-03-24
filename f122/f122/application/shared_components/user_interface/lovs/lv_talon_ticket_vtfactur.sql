prompt --application/shared_components/user_interface/lovs/lv_talon_ticket_vtfactur
begin
--   Manifest
--     LV_TALON_TICKET_VTFACTUR
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
 p_id=>wwv_flow_imp.id(22857248820868767)
,p_lov_name=>'LV_TALON_TICKET_VTFACTUR'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select numero_inicial,',
'       numero_final,',
'       nro_talonario,',
'       serie,',
'       imprime,',
'       tip_impresion R,',
'       decode(nvl(tip_impresion, ''F''), ''F'', ''Factura'', ''T'', ''Ticket'') D',
'  from talonarios',
' where cod_empresa = :P_COD_EMPRESA',
'   and tip_talonario = :P99_TIP_TICKET',
'   and cod_sucursal = :P99_COD_SUCURSAL_CENTRAL',
'   and nvl(activo, ''N'') <> ''N''',
'   AND DECODE(:P99_COD_USUARIO,''LETICIAI'',',
'              ''S5'',',
'              ''CAJAST4'',  ',
'              ''I5'',',
'              ''CAJAST6'',',
'              ''I5'',',
'              ''JOSEGI'',',
'              ''H4'',',
'              ''CAJAST2'',',
'              ''S5'',',
'              ''CAJAST3'',',
'              ''H4'',',
'              ''CAJAST1'',',
'              ''Q4'',',
'              ''S5''   )= SERIE',
' order by numero_inicial'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_return_column_name=>'R'
,p_display_column_name=>'D'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(22858585063879238)
,p_query_column_name=>'R'
,p_heading=>unistr('Tipo Impresi\00F3n')
,p_display_sequence=>10
,p_data_type=>'VARCHAR2'
,p_is_searchable=>'N'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(23347871952499494)
,p_query_column_name=>'NRO_TALONARIO'
,p_heading=>'Nro. Talonario'
,p_display_sequence=>10
,p_data_type=>'NUMBER'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(22858931131879239)
,p_query_column_name=>'D'
,p_heading=>unistr('Desc. Impresi\00F3n')
,p_display_sequence=>20
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(23348236880499494)
,p_query_column_name=>'SERIE'
,p_heading=>'Serie'
,p_display_sequence=>20
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(22859312645879239)
,p_query_column_name=>'NUMERO_INICIAL'
,p_heading=>'Numero Inicial'
,p_display_sequence=>30
,p_data_type=>'NUMBER'
,p_is_visible=>'N'
,p_is_searchable=>'N'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(23348672934499494)
,p_query_column_name=>'IMPRIME'
,p_heading=>'Imprime'
,p_display_sequence=>30
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(22859781299879239)
,p_query_column_name=>'NUMERO_FINAL'
,p_heading=>'Numero Final'
,p_display_sequence=>40
,p_data_type=>'NUMBER'
,p_is_visible=>'N'
,p_is_searchable=>'N'
);
wwv_flow_imp.component_end;
end;
/
