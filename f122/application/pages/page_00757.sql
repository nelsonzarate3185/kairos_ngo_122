prompt --application/pages/page_00757
begin
--   Manifest
--     PAGE: 00757
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
 p_id=>757
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Grupo de Vendedores por Superior'
,p_alias=>'GRUPO-DE-VENDEDORES-POR-SUPERIOR'
,p_step_title=>'Grupo de Vendedores por Superior'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.apex-item-select:focus, .apex-item-text:focus, .apex-item-textarea:focus {',
'   background-color: #e9ffbf !important;',
'   border-color: #8f0000 !important;',
'}',
'',
'.apex-item-select,  .apex-item-text , .apex-item-textarea , .apex-item-group, .display_only {',
'  border-color: #b4c6dd !important;',
'  background-color: #f8f6ea !important;',
'}',
'',
'  ',
'',
'',
'.t-Body-content{',
'   background-color:  #d0e0f783!important;}',
'',
'',
'',
'  .tabla_color   td.t-Report-cell {',
'  color: yellow  !important;',
'  border-color: #003a85 !important;',
'}',
'',
'  th.t-Report-colHead,  th.t-Report-colHead a{',
'  background-color:  #003a85  !important;',
'  color:yellow  !important;',
'  border-color: #487ab8;',
'}',
'',
' .a-IRR-header{',
'      background-color: #003a85  !important;',
'	  font-weight: bold !important;',
'      border:0.5px solid #16488a !important;',
'   }',
'',
'  .a-IRR-headerLink{',
'    background-color: #003a85  !important;',
'	  color: #003a85 !important;    }',
'   ',
'.a-IRR-table tr td { ',
'        color: black !important;',
'   }',
' ',
'.a-IRR-table td {',
'    border: 1px solid #003a85b7 !important;',
'}',
''))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'03'
,p_last_updated_by=>'NZARATE'
,p_last_upd_yyyymmddhh24miss=>'20240920120802'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(186498087574438528)
,p_name=>'Agrupacion de Vendedores'
,p_template=>wwv_flow_imp.id(40125238939263661)
,p_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select  V.COD_VENDEDOR,',
'        v.descripcion Nombre,      ',
'        v.ESTADO Activo,',
'       nvl(ca.descripcion,'''')categoria,',
'       E.COD_EMPLEADO COD_COLABORADOR',
'  from FV_AGRUPACION_VENDEDORES_VEN d,',
'       fv_vendedores v,',
'       FV_CATEGORIAS_VENDEDORES ca,',
'       RH_EMPLEADOS E',
'  where d.cod_empresa = :P_COD_EMPRESA',
'  and   d.COD_VENDEDOR = :P757_SUPERIOR ',
'  AND   d.COD_EMPRESA= V.COD_EMPRESA',
'  AND   d.COD_VENDEDOR_REL=V.COD_VENDEDOR',
'  and   v.COD_TIPO_GRUPO = ca.COD_TIPO_GRUPO(+)',
'  AND   v.COD_EMPRESA = e.COD_EMPRESA',
'  AND   V.COD_PERSONA = E.COD_PERSONA',
''))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P757_SUPERIOR'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(40147995650263667)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'Y'
,p_csv_output_link_text=>'CSV'
,p_supplemental_text=>'SUPERIOR: &P757_SUPERIOR. - &P757_NOMBRE.'
,p_prn_output=>'Y'
,p_prn_format=>'PDF'
,p_prn_output_link_text=>'PDF'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width_units=>'PERCENTAGE'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'SUPERIOR: &P757_SUPERIOR. - &P757_NOMBRE.'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(186499442771438542)
,p_query_column_id=>1
,p_column_alias=>'COD_VENDEDOR'
,p_column_display_sequence=>40
,p_column_heading=>'Codigo'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(186499663285438544)
,p_query_column_id=>2
,p_column_alias=>'NOMBRE'
,p_column_display_sequence=>50
,p_column_heading=>'Nombre'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(186499725313438545)
,p_query_column_id=>3
,p_column_alias=>'ACTIVO'
,p_column_display_sequence=>60
,p_column_heading=>'Activo'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(186499897971438546)
,p_query_column_id=>4
,p_column_alias=>'CATEGORIA'
,p_column_display_sequence=>70
,p_column_heading=>'Categoria'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(186499980118438547)
,p_query_column_id=>5
,p_column_alias=>'COD_COLABORADOR'
,p_column_display_sequence=>80
,p_column_heading=>'Colaborador'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(186499109279438539)
,p_name=>'P757_SUPERIOR'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(186498087574438528)
,p_item_display_point=>'ORDER_BY_ITEM'
,p_prompt=>'Superior:'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT V.DESCRIPCION ||'' ''|| G.DESCRIPCION SUPERIOR,',
'       G.COD_VENDEDOR',
'FROM FV_AGRUPACION_VENDEDORES G, ',
'     FV_VENDEDORES V',
'WHERE G.COD_EMPRESA= :P_COD_EMPRESA',
'AND   G.COD_EMPRESA= V.COD_EMPRESA',
'AND   G.COD_VENDEDOR=V.COD_VENDEDOR'))
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
,p_attribute_10=>'SUPERIOR:P757_NOMBRE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(186500001153438548)
,p_name=>'P757_NOMBRE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(186498087574438528)
,p_item_display_point=>'ORDER_BY_ITEM'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(186499290447438540)
,p_name=>'da_refresh'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P757_SUPERIOR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(186499302536438541)
,p_event_id=>wwv_flow_imp.id(186499290447438540)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(186498087574438528)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(340396965048114101)
,p_name=>'DA_CHNG'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P757_NOMBRE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(186500239417438550)
,p_event_id=>wwv_flow_imp.id(340396965048114101)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P757_NOMBRE'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(186500193989438549)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'LIMPIAR_CAMPOS'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
);
wwv_flow_imp.component_end;
end;
/
