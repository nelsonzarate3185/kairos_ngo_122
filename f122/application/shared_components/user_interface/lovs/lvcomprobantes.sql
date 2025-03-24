prompt --application/shared_components/user_interface/lovs/lvcomprobantes
begin
--   Manifest
--     LVCOMPROBANTES
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
 p_id=>wwv_flow_imp.id(17430761515460433)
,p_lov_name=>'LVCOMPROBANTES'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'--CCMOVCAJ',
'SELECT NRO_COMPROBANTE, ',
'       SER_COMPROBANTE, ',
'       FEC_COMPROBANTE, ',
'       TOT_COMPROBANTE, ',
'       C.COD_MONEDA SIGLAS, ',
'       C.TIP_CAMBIO, ',
'       C.COD_CONDICION_VENTA, ',
'       CV.DESCRIPCION, ',
'       CV.NRO_CUOTAS, ',
'       C.TIP_COMPROBANTE ',
'  FROM VT_COMPROBANTES_CABECERA C,',
'       MONEDAS M, ',
'       CC_CONDICIONES_VENTAS CV ',
' WHERE C.COD_EMPRESA = :P95_COD_EMPRESA ',
'   AND TIP_COMPROBANTE = :P95_TIPO_COMPROBANTE ',
'   AND C.SER_COMPROBANTE <> '' '' ',
'   AND C.NRO_COMPROBANTE > 0 ',
'   AND C.NRO_MOV_CAJ IS NULL ',
'   AND NVL( C.ESTADO,'' '' ) <> ''A'' ',
'   AND C.COD_MONEDA = M.COD_MONEDA ',
'   AND C.COD_EMPRESA = CV.COD_EMPRESA ',
'   AND C.COD_CONDICION_VENTA = CV.COD_CONDICION_VENTA ',
'   AND NVL( CV.NRO_CUOTAS, 0 ) = 0 ',
'   AND (C.COD_CLIENTE = :P95_COD_CLIENTE OR :P95_COD_CLIENTE IS NULL)'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_return_column_name=>'NRO_COMPROBANTE'
,p_display_column_name=>'NRO_COMPROBANTE'
,p_group_sort_direction=>'ASC'
,p_default_sort_column_name=>'SER_COMPROBANTE'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(17432284634485650)
,p_query_column_name=>'NRO_COMPROBANTE'
,p_heading=>unistr('N\00FAmero')
,p_display_sequence=>10
,p_data_type=>'NUMBER'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(17432606487485650)
,p_query_column_name=>'SER_COMPROBANTE'
,p_heading=>'Serie'
,p_display_sequence=>20
,p_data_type=>'VARCHAR2'
,p_is_searchable=>'N'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(17433014553485651)
,p_query_column_name=>'FEC_COMPROBANTE'
,p_heading=>'Fecha'
,p_display_sequence=>30
,p_data_type=>'DATE'
,p_is_searchable=>'N'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(17433420797485651)
,p_query_column_name=>'TOT_COMPROBANTE'
,p_heading=>'Total'
,p_display_sequence=>40
,p_data_type=>'NUMBER'
,p_is_searchable=>'N'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(17433852859485651)
,p_query_column_name=>'SIGLAS'
,p_heading=>'Moneda'
,p_display_sequence=>50
,p_data_type=>'VARCHAR2'
,p_is_searchable=>'N'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(17434246057485651)
,p_query_column_name=>'TIP_CAMBIO'
,p_heading=>'Cambio'
,p_display_sequence=>60
,p_data_type=>'NUMBER'
,p_is_searchable=>'N'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(17434664261485651)
,p_query_column_name=>'COD_CONDICION_VENTA'
,p_heading=>unistr('Condici\00F3n Venta')
,p_display_sequence=>70
,p_data_type=>'VARCHAR2'
,p_is_searchable=>'N'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(17435072247485651)
,p_query_column_name=>'DESCRIPCION'
,p_heading=>unistr('Descripci\00F3n')
,p_display_sequence=>80
,p_data_type=>'VARCHAR2'
,p_is_searchable=>'N'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(17435444736485651)
,p_query_column_name=>'NRO_CUOTAS'
,p_heading=>'Cuotas'
,p_display_sequence=>90
,p_data_type=>'NUMBER'
,p_is_searchable=>'N'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(17435807655485651)
,p_query_column_name=>'TIP_COMPROBANTE'
,p_heading=>'Tipo'
,p_display_sequence=>100
,p_data_type=>'VARCHAR2'
,p_is_searchable=>'N'
);
wwv_flow_imp.component_end;
end;
/
