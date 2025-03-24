prompt --application/pages/page_00232
begin
--   Manifest
--     PAGE: 00232
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.04.12'
,p_release=>'22.1.0'
,p_default_workspace_id=>2715162693355865
,p_default_application_id=>122
,p_default_id_offset=>0
,p_default_owner=>'INV'
);
wwv_flow_imp_page.create_page(
 p_id=>232
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'RHASIST-Mapa'
,p_alias=>'RHASIST-MAPA'
,p_page_mode=>'MODAL'
,p_step_title=>'RHASIST-Mapa'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'N'
,p_protection_level=>'C'
,p_page_component_map=>'17'
,p_last_updated_by=>'OSCARGO'
,p_last_upd_yyyymmddhh24miss=>'20230508163037'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(54293135923901858)
,p_plug_name=>'RHASIST-Mapa'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>10
,p_lazy_loading=>true
,p_plug_source_type=>'NATIVE_MAP_REGION'
);
wwv_flow_imp_page.create_map_region(
 p_id=>wwv_flow_imp.id(54293598787901860)
,p_region_id=>wwv_flow_imp.id(54293135923901858)
,p_height=>640
,p_tilelayer_type=>'CUSTOM'
,p_tilelayer_name_default=>'world-map'
,p_navigation_bar_type=>'FULL'
,p_navigation_bar_position=>'END'
,p_init_position_zoom_type=>'STATIC'
,p_init_position_from_browser=>true
,p_init_position_lon_static=>'-25.274727685104487'
,p_init_position_lat_static=>'-57.60749418700212'
,p_init_zoomlevel_static=>'6'
,p_layer_messages_position=>'BELOW'
,p_legend_position=>'END'
,p_features=>'MOUSEWHEEL_ZOOM:RECTANGLE_ZOOM:SCALE_BAR:INFINITE_MAP:BROWSER_LOCATION'
);
wwv_flow_imp_page.create_map_region_layer(
 p_id=>wwv_flow_imp.id(54294056724901861)
,p_map_region_id=>wwv_flow_imp.id(54293598787901860)
,p_name=>'Marcacion'
,p_label=>'Ubicacion'
,p_layer_type=>'POINT'
,p_display_sequence=>10
,p_location=>'LOCAL'
,p_query_type=>'SQL'
,p_layer_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT A.COD_EMPRESA,',
'       A.COD_EMPLEADO,',
'       TO_NUMBER(REPLACE(A.LONGITUD,''.'','',''))LONGITUDE,',
'       TO_NUMBER(REPLACE(A.LATITUD,''.'','',''))LATITUDE,',
'       FEC_ASISTENCIA,',
'       E.DESCRIPCION||'': ''||TO_CHAR(A.FEC_HOR_ASISTENCIA,''DD/MM/YYYY HH24:MI'') TOOLTIP',
'  FROM RH_ASISTENCIAS A ,',
'       RH_ESTADOS_ASISTENCIAS E',
' WHERE A.COD_EMPRESA = :P_COD_EMPRESA',
'   AND A.COD_EMPLEADO = :P232_COD_EMPLEADO',
'   AND FEC_ASISTENCIA= to_date(SYSDATE)',
'   AND E.COD_EMPRESA = A.COD_EMPRESA',
'   AND E.COD_ESTADO_ASI = A.COD_ESTADO_ASI'))
,p_items_to_submit=>'P232_COD_EMPLEADO'
,p_has_spatial_index=>false
,p_geometry_column_data_type=>'LONLAT_COLUMNS'
,p_longitude_column=>'LONGITUDE'
,p_latitude_column=>'LATITUDE'
,p_fill_color=>'#ff3b30'
,p_point_display_type=>'SVG'
,p_point_svg_shape=>'Default'
,p_feature_clustering=>false
,p_tooltip_adv_formatting=>false
,p_tooltip_column=>'TOOLTIP'
,p_info_window_adv_formatting=>false
,p_allow_hide=>true
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(17225919836662901)
,p_name=>'P232_COD_EMPLEADO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(54293135923901858)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp.component_end;
end;
/
