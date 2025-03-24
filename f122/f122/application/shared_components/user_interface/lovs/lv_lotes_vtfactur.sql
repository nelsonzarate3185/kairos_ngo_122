prompt --application/shared_components/user_interface/lovs/lv_lotes_vtfactur
begin
--   Manifest
--     LV_LOTES_VTFACTUR
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
 p_id=>wwv_flow_imp.id(27733396850063800)
,p_lov_name=>'LV_LOTES_VTFACTUR'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
' select to_char( l.fec_vencimiento, ''DD/MM/YYYY'' ) fec_letras, ',
'        l.nro_lote, ',
'        l.fec_vencimiento, ',
'        s.cant_dispon ',
'   from st_lotes l, st_existencia_art s ',
'  where s.cod_empresa = :P_COD_EMPRESA ',
'    and s.cod_articulo = :P99_A_COD_ARTICULO ',
'    and s.cod_sucursal = :P99_COD_SUCURSAL',
'    and nvl( s.cant_dispon, 0 ) > 0 ',
'    and s.cod_empresa = l.cod_empresa ',
'    and s.cod_articulo = l.cod_articulo ',
'    and s.nro_lote = l.nro_lote ',
'    and nvl(l.activo,''N'') = ''S'' ',
'order by l.fec_vencimiento'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_return_column_name=>'NRO_LOTE'
,p_display_column_name=>'NRO_LOTE'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(27734157580070466)
,p_query_column_name=>'NRO_LOTE'
,p_heading=>'Lote'
,p_display_sequence=>10
,p_data_type=>'VARCHAR2'
,p_is_visible=>'N'
,p_is_searchable=>'N'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(27734508510070466)
,p_query_column_name=>'FEC_LETRAS'
,p_heading=>'Vencimiento'
,p_display_sequence=>20
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(27734900004070466)
,p_query_column_name=>'CANT_DISPON'
,p_heading=>'Cantidad'
,p_display_sequence=>30
,p_data_type=>'NUMBER'
);
wwv_flow_imp.component_end;
end;
/
