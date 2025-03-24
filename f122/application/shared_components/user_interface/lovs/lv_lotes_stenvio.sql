prompt --application/shared_components/user_interface/lovs/lv_lotes_stenvio
begin
--   Manifest
--     LV_LOTES_STENVIO
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
 p_id=>wwv_flow_imp.id(81112556909688054)
,p_lov_name=>'LV_LOTES_STENVIO'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select to_char( l.fec_vencimiento, ''DD/MM/YYYY'' ) fec_vencimiento, l.nro_lote, sum( nvl( e.cant_dispon, 0 ) ) existencia ',
'  from st_lotes l, st_existencia_art e ',
' where l.cod_empresa = :P_COD_EMPRESA ',
'   and l.cod_articulo = :P323_COD_ARTICULO',
'   and l.cod_empresa = e.cod_empresa (+) ',
'   and :P323_CAB_COD_SUCURSAL = e.cod_sucursal (+) ',
'   and l.cod_articulo = e.cod_articulo (+) ',
'   and l.nro_lote = e.nro_lote (+)',
'   and e.cant_dispon > 0 ',
' group by to_char( l.fec_vencimiento, ''DD/MM/YYYY'' ), l.nro_lote ',
'order by 1'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_return_column_name=>'NRO_LOTE'
,p_display_column_name=>'NRO_LOTE'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(81114452631691942)
,p_query_column_name=>'NRO_LOTE'
,p_heading=>'Lote'
,p_display_sequence=>10
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(81114866470691942)
,p_query_column_name=>'FEC_VENCIMIENTO'
,p_heading=>'Vencimiento'
,p_display_sequence=>20
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(81115246926691942)
,p_query_column_name=>'EXISTENCIA'
,p_heading=>'Existencia'
,p_display_sequence=>30
,p_data_type=>'NUMBER'
);
wwv_flow_imp.component_end;
end;
/
