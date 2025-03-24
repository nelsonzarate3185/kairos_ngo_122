prompt --application/shared_components/user_interface/lovs/lvrecibos
begin
--   Manifest
--     LVRECIBOS
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
 p_id=>wwv_flow_imp.id(17468417263824525)
,p_lov_name=>'LVRECIBOS'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT C.SER_RECIBO,',
'	   C.NRO_RECIBO,',
'	   C.COD_CLIENTE,',
'	   C.FEC_RECIBO,',
'	   C.COD_MONEDA SIGLAS , ',
'	   C.TIP_CAMBIO, ',
'	   NVL( TOT_RECIBO,0) MONTO ',
'  FROM CC_RECIBOS C, ',
'	   MONEDAS M ',
' WHERE C.COD_EMPRESA = :P_COD_EMPRESA ',
'   AND C.NRO_MOV_CAJ IS NULL ',
'   AND ( ESTADO IS NULL OR ESTADO <> ''C'') ',
'   AND ( ESTADO IS NULL OR ESTADO <> ''A'' ) ',
'   AND C.COD_MONEDA = M.COD_MONEDA ',
' ORDER BY C.SER_RECIBO, ',
'		  C.NRO_RECIBO'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_return_column_name=>'SER_RECIBO'
,p_display_column_name=>'SER_RECIBO'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(17468874865827982)
,p_query_column_name=>'SER_RECIBO'
,p_heading=>'Serie'
,p_display_sequence=>10
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(17469294960827982)
,p_query_column_name=>'NRO_RECIBO'
,p_heading=>'Recibo'
,p_display_sequence=>20
,p_data_type=>'NUMBER'
,p_is_searchable=>'N'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(17469664519827983)
,p_query_column_name=>'COD_CLIENTE'
,p_heading=>'Cod_Cliente'
,p_display_sequence=>30
,p_data_type=>'VARCHAR2'
,p_is_searchable=>'N'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(17470070439827983)
,p_query_column_name=>'FEC_RECIBO'
,p_heading=>'Fec_Recibo'
,p_display_sequence=>40
,p_data_type=>'DATE'
,p_is_searchable=>'N'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(17470487264827983)
,p_query_column_name=>'MONTO'
,p_heading=>'Monto'
,p_display_sequence=>50
,p_data_type=>'NUMBER'
,p_is_searchable=>'N'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(17470830925827983)
,p_query_column_name=>'SIGLAS'
,p_heading=>'Moneda'
,p_display_sequence=>60
,p_data_type=>'VARCHAR2'
,p_is_searchable=>'N'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(17471266531827983)
,p_query_column_name=>'TIP_CAMBIO'
,p_heading=>'Tipo Cambio'
,p_display_sequence=>70
,p_data_type=>'NUMBER'
,p_is_searchable=>'N'
);
wwv_flow_imp.component_end;
end;
/
