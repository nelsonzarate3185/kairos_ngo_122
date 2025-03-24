prompt --application/pages/page_00438
begin
--   Manifest
--     PAGE: 00438
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
 p_id=>438
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Mapa'
,p_alias=>'MAPA'
,p_page_mode=>'MODAL'
,p_step_title=>'Mapa'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'N'
,p_protection_level=>'C'
,p_page_component_map=>'17'
,p_last_updated_by=>'INV'
,p_last_upd_yyyymmddhh24miss=>'20230413125031'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(183339384003346692)
,p_plug_name=>'Mapa'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>10
,p_lazy_loading=>true
,p_plug_source_type=>'NATIVE_MAP_REGION'
);
wwv_flow_imp_page.create_map_region(
 p_id=>wwv_flow_imp.id(129046804128444828)
,p_region_id=>wwv_flow_imp.id(183339384003346692)
,p_height=>640
,p_tilelayer_type=>'CUSTOM'
,p_tilelayer_name_default=>'world-map'
,p_navigation_bar_type=>'FULL'
,p_navigation_bar_position=>'END'
,p_init_position_zoom_type=>'QUERY_RESULTS'
,p_init_position_from_browser=>false
,p_layer_messages_position=>'BELOW'
,p_legend_position=>'END'
,p_features=>'MOUSEWHEEL_ZOOM:RECTANGLE_ZOOM:SCALE_BAR:INFINITE_MAP:BROWSER_LOCATION'
);
wwv_flow_imp_page.create_map_region_layer(
 p_id=>wwv_flow_imp.id(129047388460444827)
,p_map_region_id=>wwv_flow_imp.id(129046804128444828)
,p_name=>'Marcacion'
,p_label=>'Ubicacion'
,p_layer_type=>'POINT'
,p_display_sequence=>10
,p_location=>'LOCAL'
,p_query_type=>'SQL'
,p_layer_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT null COD_EMPRESA,',
'       null COD_EMPLEADO,',
'       TO_NUMBER(REPLACE(:P238_LONGITUD,''.'','',''))LONGITUDE,',
'       TO_NUMBER(REPLACE(:P238_LATITUD,''.'','',''))LATITUDE,',
'       NULL FEC_ASISTENCIA,',
'      ''Marcacion''  TOOLTIP',
'  FROM dual',
'  union all',
'  SELECT null , null,  TO_NUMBER(longitud) ,to_number(latitud) ,null , nombre||''(''||a.cod_SUCURSAL||'')'' nombre  FROM v_sucursal_cliente_apex a',
'where cod_cliente=:P238_COD_CLIENTE',
'and latitud is not null'))
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
 p_id=>wwv_flow_imp.id(108923782973676436)
,p_name=>'P238_LONGITUD'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(183339384003346692)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(108923844153676437)
,p_name=>'P238_LATITUD'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(183339384003346692)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(129047963932444824)
,p_name=>'P438_COD_EMPLEADO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(183339384003346692)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(138649725150528732)
,p_name=>'P238_COD_CLIENTE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(183339384003346692)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp.component_end;
end;
/
