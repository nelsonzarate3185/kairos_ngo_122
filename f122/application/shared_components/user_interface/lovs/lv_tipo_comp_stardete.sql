prompt --application/shared_components/user_interface/lovs/lv_tipo_comp_stardete
begin
--   Manifest
--     LV_TIPO_COMP_STARDETE
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
 p_id=>wwv_flow_imp.id(143095462701189317)
,p_lov_name=>'LV_TIPO_COMP_STARDETE'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select descripcion, ',
'       tip_comprobante',
'  from tipos_comprobantes',
' where cod_empresa = :P_COD_EMPRESA',
'   and tip_comprobante <> :P478_V_TIPO_ENVIO',
'   and cod_modulo = ''ST'' ',
' order by descripcion'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_return_column_name=>'TIP_COMPROBANTE'
,p_display_column_name=>'TIP_COMPROBANTE'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(143096100248182604)
,p_query_column_name=>'TIP_COMPROBANTE'
,p_heading=>'Tip Comprobante'
,p_display_sequence=>10
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(143096565332182604)
,p_query_column_name=>'DESCRIPCION'
,p_heading=>'Descripcion'
,p_display_sequence=>20
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp.component_end;
end;
/
