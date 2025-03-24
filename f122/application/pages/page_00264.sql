prompt --application/pages/page_00264
begin
--   Manifest
--     PAGE: 00264
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
 p_id=>264
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Transito'
,p_alias=>'TRANSITO'
,p_page_mode=>'MODAL'
,p_step_title=>'Transito'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'03'
,p_last_updated_by=>'NZARATE'
,p_last_upd_yyyymmddhh24miss=>'20241009112647'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(125104058661266036)
,p_name=>'Transito'
,p_template=>wwv_flow_imp.id(40096829222263653)
,p_display_sequence=>30
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select  ',
'A.CANT cantidad_transito, to_char(A.fecha_ingreso,''dd/mm/yyyy'') fec_llegada',
' from  v_en_transito_sabana a',
' where a.cant>0',
' and a.cod_empresa=:p_cod_empresa',
'and cod_articulo = :P264_COD_ARTICULO',
'UNION ALL',
'			select  ',
'A.CANT cantidad_transito, TO_CHAR(A.fecha_ingreso,''dd/mm/yyyy'') fec_llegada',
' from  V_EN_TRANSITO_SABANA_rep a',
' where a.cant>0',
' and a.cod_empresa=:p_cod_empresa',
' AND FECHA>SYSDATE-90',
' and codIGO_articulo=:P264_COD_ARTICULO',
' union all',
' select sum(round(a.cantidad-nvl(a.cantidad_confirmada,0)))stock, ''ZONA_PRIMARIA'' from v_articulos_zona_primaria a',
'where   (round(a.cantidad-nvl(a.cantidad_confirmada,0)))>0',
' and cod_articulo=:P264_COD_ARTICULO',
' and a.cod_empresa=:p_cod_empresa',
' having sum(round(a.cantidad-nvl(a.cantidad_confirmada,0)))>0',
'				 order by 2 asc'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P264_COD_ARTICULO'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(40147995650263667)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>unistr('No existen registros de TRANSITO vinculado al c\00F3digo  &P264_COD_ARTICULO.')
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(263333498861507436)
,p_query_column_id=>1
,p_column_alias=>'CANTIDAD_TRANSITO'
,p_column_display_sequence=>10
,p_column_heading=>'Cantidad Transito'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(263333585979507437)
,p_query_column_id=>2
,p_column_alias=>'FEC_LLEGADA'
,p_column_display_sequence=>20
,p_column_heading=>'Fec Llegada'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(63632908849436180)
,p_name=>'P264_COD_ARTICULO'
,p_item_sequence=>10
,p_prompt=>'&nbsp'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT COD_ARTICULO||'' - ''|| DESCRIPCION NOM, COD_ARTICULO COD',
'FROM ST_ARTICULOS',
'WHERE COD_EMPRESA= :P_COD_EMPRESA;'))
,p_cSize=>30
,p_read_only_when=>'P264_COD_ARTICULO'
,p_read_only_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>wwv_flow_imp.id(40186463825263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp.component_end;
end;
/
