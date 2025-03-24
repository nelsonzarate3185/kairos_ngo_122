prompt --application/pages/page_00565
begin
--   Manifest
--     PAGE: 00565
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
 p_id=>565
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Inventarios Activos'
,p_alias=>'INVENTARIOS-ACTIVOS'
,p_step_title=>'Inventarios Activos'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.t-Footer {',
'visibility:hidden;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'03'
,p_last_updated_by=>'JUANSA'
,p_last_upd_yyyymmddhh24miss=>'20250207144919'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(578650358007056257)
,p_name=>'Inventarios Activos'
,p_template=>wwv_flow_imp.id(40125238939263661)
,p_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--accent2:t-Region--scrollBody:margin-bottom-none'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'REGION_POSITION_01'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select NRO_COMPROBANTE,',
'       cod_sucursal,',
'       SUCURSAL,',
'       ESTADO,',
'       ES_CPH,',
'       case',
'         when ES_CPH = ''S'' THEN',
'          ''CPH''',
'         WHEN ES_CPH = ''N'' THEN',
'          ''NGO''',
'         WHEN ES_CPH = ''T'' THEN',
'          ''TODO FRANQUICIA''',
'              WHEN ES_CPH = ''B'' THEN',
'          ''BESTHOME''',
'       END EMPRESA_ORIGEN',
'  from v_inventario_movil a',
' where estado not in (''CERRADO'')',
'   and plan is null',
'   and fecha > sysdate - 200   ',
'   and (  V(''APP_USER'')=''JUANSA'' OR cod_sucursal in (select deposito',
'                          from mo_usuarios M',
'                         where upper(cod_usuario) = upper(V(''APP_USER''))',
'                           and M.empresa_origen = A.EMPRESA_ORIGEN',
'                        ',
'                        )',
'   )',
'   and nro_comprobante not in',
'       (select z.nro_comprobante',
'          from st_plan_inventario_det z',
'         where z.cod_empresa = ''1''',
'           and z.nro_comprobante = a.nro_comprobante)',
''))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(40147995650263667)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'Sin Inventarios'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(182680678092555541)
,p_query_column_id=>1
,p_column_alias=>'NRO_COMPROBANTE'
,p_column_display_sequence=>10
,p_column_heading=>'Inventario'
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:566:&SESSION.::&DEBUG.:566:P566_NRO_INVENTARIO,P566_COD_SUCURSAL,P566_DEPOSITO,P566_ES_CPH:#NRO_COMPROBANTE#,#COD_SUCURSAL#,#SUCURSAL#,#ES_CPH#'
,p_column_linktext=>'#NRO_COMPROBANTE#'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(182681019720555540)
,p_query_column_id=>2
,p_column_alias=>'COD_SUCURSAL'
,p_column_display_sequence=>20
,p_column_heading=>'Cod.'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(182681449807555540)
,p_query_column_id=>3
,p_column_alias=>'SUCURSAL'
,p_column_display_sequence=>30
,p_column_heading=>'Sucursal'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(182681841663555540)
,p_query_column_id=>4
,p_column_alias=>'ESTADO'
,p_column_display_sequence=>40
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(183046888287013029)
,p_query_column_id=>5
,p_column_alias=>'ES_CPH'
,p_column_display_sequence=>50
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(183046913593013030)
,p_query_column_id=>6
,p_column_alias=>'EMPRESA_ORIGEN'
,p_column_display_sequence=>60
,p_column_heading=>'Empresa'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp.component_end;
end;
/
