prompt --application/shared_components/user_interface/lovs/lv_lotes_stardete
begin
--   Manifest
--     LV_LOTES_STARDETE
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
 p_id=>wwv_flow_imp.id(144660668311409075)
,p_lov_name=>'LV_LOTES_STARDETE'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select to_char(l.fec_vencimiento,''dd/mm/yyyy'') fec_vencimiento, ',
'       l.nro_lote, ',
'       l.cod_iva, ',
'       i.porc_iva_venta',
'  from st_lotes l, ',
'       st_iva i ',
' where cod_empresa = :P_COD_EMPRESA',
'   and cod_articulo = :P478_COD_ARTICULO_ADD',
'   and l.cod_iva = i.cod_iva ',
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
 p_id=>wwv_flow_imp.id(144666962680398920)
,p_query_column_name=>'NRO_LOTE'
,p_heading=>'Nro Lote'
,p_display_sequence=>10
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(144667210030398920)
,p_query_column_name=>'COD_IVA'
,p_heading=>'Cod Iva'
,p_display_sequence=>20
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(144667673431398920)
,p_query_column_name=>'PORC_IVA_VENTA'
,p_heading=>'Porc Iva Venta'
,p_display_sequence=>30
,p_data_type=>'NUMBER'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(144668026469398920)
,p_query_column_name=>'FEC_VENCIMIENTO'
,p_heading=>'Fec Vencimiento'
,p_display_sequence=>40
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp.component_end;
end;
/
