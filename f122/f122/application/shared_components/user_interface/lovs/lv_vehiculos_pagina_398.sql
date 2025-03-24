prompt --application/shared_components/user_interface/lovs/lv_vehiculos_pagina_398
begin
--   Manifest
--     LV_VEHICULOS_PAGINA_398
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
 p_id=>wwv_flow_imp.id(190771463904546390)
,p_lov_name=>'LV_VEHICULOS_PAGINA_398'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select descripcion, cod_vehiculo, v.marca, v.volumen, v.peso_kg, v.largo ,v.ancho, v.alto, v.tipo',
'  from rp_vehiculos v',
' where cod_empresa = :p_cod_empresa',
'and v.volumen>0',
'AND NVL(ACTIVO,''N'')=''S'' ',
' order by descripcion'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_return_column_name=>'COD_VEHICULO'
,p_display_column_name=>'DESCRIPCION'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(190772076330543112)
,p_query_column_name=>'COD_VEHICULO'
,p_display_sequence=>10
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(190772316455543110)
,p_query_column_name=>'DESCRIPCION'
,p_heading=>'Descripcion'
,p_display_sequence=>20
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(190772782317543110)
,p_query_column_name=>'MARCA'
,p_heading=>'Marca'
,p_display_sequence=>30
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(190773113059543109)
,p_query_column_name=>'VOLUMEN'
,p_heading=>'Volumen'
,p_display_sequence=>40
,p_data_type=>'NUMBER'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(190773544702543109)
,p_query_column_name=>'PESO_KG'
,p_heading=>'Peso Kg'
,p_display_sequence=>50
,p_data_type=>'NUMBER'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(190773969220543109)
,p_query_column_name=>'LARGO'
,p_heading=>'Largo'
,p_display_sequence=>60
,p_data_type=>'NUMBER'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(190774382671543109)
,p_query_column_name=>'ANCHO'
,p_heading=>'Ancho'
,p_display_sequence=>70
,p_data_type=>'NUMBER'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(190774718995543109)
,p_query_column_name=>'ALTO'
,p_heading=>'Alto'
,p_display_sequence=>80
,p_data_type=>'NUMBER'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(190775194217543109)
,p_query_column_name=>'TIPO'
,p_heading=>'Tipo'
,p_display_sequence=>90
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp.component_end;
end;
/
