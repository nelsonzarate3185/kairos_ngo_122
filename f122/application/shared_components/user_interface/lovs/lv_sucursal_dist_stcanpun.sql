prompt --application/shared_components/user_interface/lovs/lv_sucursal_dist_stcanpun
begin
--   Manifest
--     LV_SUCURSAL_DIST_STCANPUN
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
 p_id=>wwv_flow_imp.id(69513178822812556)
,p_lov_name=>'LV_SUCURSAL_DIST_STCANPUN'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select p.nombre D, p.direccion, p.telefono, P.cod_SUCURSAL R',
'  from cc_clientes c, BS_SUCURSAL_CLIENTE p',
' where c.cod_empresa=:P_COD_EMPRESA',
'   and c.cod_cliente=:P284_COD_DISTRIBUIDOR_VENDEDOR',
'   and c.cod_persona=p.cod_persona',
'   AND C.COD_EMPRESA=P.COD_EMPRESA'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_return_column_name=>'R'
,p_display_column_name=>'R'
,p_group_sort_direction=>'ASC'
,p_default_sort_column_name=>'R'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(69513528185817011)
,p_query_column_name=>'R'
,p_heading=>unistr('C\00F3digo')
,p_display_sequence=>10
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(69513921281817011)
,p_query_column_name=>'D'
,p_heading=>'Nombre'
,p_display_sequence=>20
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(69514358951817012)
,p_query_column_name=>'DIRECCION'
,p_heading=>unistr('Direcci\00F3n')
,p_display_sequence=>30
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(69514723839817012)
,p_query_column_name=>'TELEFONO'
,p_heading=>unistr('Tel\00E9fono')
,p_display_sequence=>40
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp.component_end;
end;
/
