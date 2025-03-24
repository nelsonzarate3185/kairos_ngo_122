prompt --application/shared_components/user_interface/lovs/lv_sucursal_stgeinmo
begin
--   Manifest
--     LV_SUCURSAL_STGEINMO
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
 p_id=>wwv_flow_imp.id(178742008915196474)
,p_lov_name=>'LV_SUCURSAL_STGEINMO'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select descripcion, cod_sucursal from sucursales where cod_empresa = :P_cod_empresa',
'AND NVL(:P556_IND_INVENTARIO_CPH,''N'')=''N'' ',
'AND NVL(estado,''S'') not in(''I'',''N'' )',
'UNION ALL',
'select descripcion, cod_sucursal from sucursales where cod_empresa = ''18''',
'AND NVL(:P556_IND_INVENTARIO_CPH,''N'')=''B'' ',
'AND NVL(estado,''S'') not in(''I'',''N'' )',
'union all ',
'     Select  descripcion, cod_sucursal  ',
'       from v_sucursales_cph',
'      where cod_empresa  = :P_cod_empresa      ',
'AND NVL(:P556_IND_INVENTARIO_CPH,''N'')=''S''',
'union all',
'     Select  descripcion, cod_sucursal  ',
'       from INV.V_depositos_tf',
'      where cod_empresa  = :P_cod_empresa      ',
'AND NVL(:P556_IND_INVENTARIO_CPH,''N'')=''T'' ',
'',
'order by 1'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_return_column_name=>'COD_SUCURSAL'
,p_display_column_name=>'DESCRIPCION'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(179010554272563659)
,p_query_column_name=>'COD_SUCURSAL'
,p_heading=>'Cod.'
,p_display_sequence=>10
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(179010914617563659)
,p_query_column_name=>'DESCRIPCION'
,p_heading=>'Descripcion'
,p_display_sequence=>20
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp.component_end;
end;
/
