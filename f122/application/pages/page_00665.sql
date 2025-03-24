prompt --application/pages/page_00665
begin
--   Manifest
--     PAGE: 00665
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
 p_id=>665
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'TARIFARIO DE VIATICOS'
,p_alias=>'TARIFARIO-DE-VIATICOS'
,p_step_title=>'TARIFARIO DE VIATICOS'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_javascript_file_urls=>'#APP_FILES#util_generico#MIN#.js'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
' formatMiles(''P665_MONTO_ABM''); ',
'',
' function seleccionar(cb) {  ',
'  if (cb.checked == true){ ',
'      $s(''P665_CONCEPTO_ACTIVA'', cb.value,false);',
'  } else {    ',
'      $s(''P665_CONCEPTO_INACTIVA'', cb.value,false);',
'  } ',
'}',
' '))
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
'',
'#PARAM, #FILTROS{    ',
'  background-color: #487ab8  !important;',
'}',
'',
'',
'',
'',
'',
'.t-Body-content{',
'   background-color:  #d0e0f783!important;}',
'',
'',
'',
'  .tabla_color   td.t-Report-cell , .t-Form-label  {',
'  color: #003a85  !important;',
'  border-color: #003a85 !important;',
'}',
'',
'  th.t-Report-colHead,  th.t-Report-colHead a{',
'  background-color:  #fff6a4  !important;',
'  color: #003a85  !important;',
'  border-color: #487ab8;',
'}',
'',
' .a-IRR-header{',
'      background-color: #fff6a4  !important;',
'	  font-weight: bold !important;',
'      border:0.5px solid #16488a !important;',
'   }',
'',
'  .a-IRR-headerLink{',
'    background-color: #fff6a4  !important;',
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
,p_page_component_map=>'18'
,p_last_updated_by=>'PABLOALV'
,p_last_upd_yyyymmddhh24miss=>'20241030132514'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(235877109830970119)
,p_plug_name=>'ABM TARIFARIO'
,p_region_template_options=>'#DEFAULT#:js-dialog-size480x320'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(236029831688821119)
,p_name=>'LISTADO'
,p_template=>wwv_flow_imp.id(40117728043263659)
,p_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-DialogRegion--noPadding:js-dialog-size720x480'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
' select T.COD_TARIFA, ',
'       T.COD_PAIS,',
'       UPPER(P.DESCRIPCION) PAIS,',
'       T.COD_PROVINCIA,',
'       UPPER(D.DESCRIPCION) DEPARTAMENTO,',
'       T.COD_CIUDAD, ',
'       UPPER(C.DESCRIPCION) CIUDAD,',
'       DT.COD_CONCEPTO,',
'       UPPER(N.DESCRIPCION)CONCEPTO,',
'       DT.MONTO',
'  from CP_TARIFARIO_VIATICO  T,',
'       PAISES P,',
'       PROVINCIAS D,',
'       CIUDADES C,',
'       CP_TARIFARIO_VIATICO_DET DT,',
'       CP_CONCEPTO_VIATICO N',
'  WHERE T.COD_PAIS = P.COD_PAIS',
'  AND   T.COD_PROVINCIA = D.COD_PROVINCIA',
'  AND   T.COD_PAIS = D.COD_PAIS',
'  AND   T.COD_CIUDAD =  C.COD_CIUDAD',
'  AND   T.COD_PROVINCIA = C.COD_PROVINCIA',
'  AND   T.COD_PAIS = C.COD_PAIS',
'  AND   T.COD_TARIFA=DT.COD_TARIFA',
'  AND   DT.COD_CONCEPTO = N.COD_CONCEPTO',
'   AND ( :P665_PAIS IS NULL OR :P665_PAIS=T.COD_PAIS)',
'  AND ( :P665_PROVINCIA IS NULL OR :P665_PROVINCIA=T.COD_PROVINCIA)',
'  AND ( :P665_CIUDAD IS NULL OR :P665_CIUDAD=T.COD_CIUDAD) ',
'  ORDER BY 1,2,3,4,DT.COD_CONCEPTO ASC',
'   '))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P665_PAIS,P665_PROVINCIA,P665_CIUDAD'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(40147995650263667)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'Y'
,p_csv_output_link_text=>'CSV'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(236029961128821120)
,p_query_column_id=>1
,p_column_alias=>'COD_TARIFA'
,p_column_display_sequence=>10
,p_column_heading=>'ID'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(236030075674821121)
,p_query_column_id=>2
,p_column_alias=>'COD_PAIS'
,p_column_display_sequence=>20
,p_column_heading=>'Cod.Pais'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(236030134378821122)
,p_query_column_id=>3
,p_column_alias=>'PAIS'
,p_column_display_sequence=>30
,p_column_heading=>'Pais'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(236030202341821123)
,p_query_column_id=>4
,p_column_alias=>'COD_PROVINCIA'
,p_column_display_sequence=>40
,p_column_heading=>'Cod.Depto.'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(236030359640821124)
,p_query_column_id=>5
,p_column_alias=>'DEPARTAMENTO'
,p_column_display_sequence=>50
,p_column_heading=>'Departamento'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(236030474867821125)
,p_query_column_id=>6
,p_column_alias=>'COD_CIUDAD'
,p_column_display_sequence=>60
,p_column_heading=>'Cod.Ciudad'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(236030503312821126)
,p_query_column_id=>7
,p_column_alias=>'CIUDAD'
,p_column_display_sequence=>70
,p_column_heading=>'Ciudad'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(236030640992821127)
,p_query_column_id=>8
,p_column_alias=>'COD_CONCEPTO'
,p_column_display_sequence=>80
,p_column_heading=>'Cod.Concepto'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(236030751358821128)
,p_query_column_id=>9
,p_column_alias=>'CONCEPTO'
,p_column_display_sequence=>90
,p_column_heading=>'Concepto'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(236030844521821129)
,p_query_column_id=>10
,p_column_alias=>'MONTO'
,p_column_display_sequence=>100
,p_column_heading=>'Monto'
,p_use_as_row_header=>'N'
,p_column_format=>'999G999G999G999G999G999G990'
,p_column_alignment=>'RIGHT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(236031874560821139)
,p_name=>'CONCEPTOS'
,p_template=>wwv_flow_imp.id(40117728043263659)
,p_display_sequence=>60
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:js-dialog-size480x320'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select COD_CONCEPTO,',
'       DESCRIPCION,    ',
'       APEX_ITEM.CHECKBOX (p_idx  => 1 ,',
'                           p_value       => COD_CONCEPTO,',
'                           p_attributes  => (case ACTIVO',
'                                             when ''S'' ',
'                                             then ''checked''',
'                                             else null',
'                                             end ) ||'' onclick="seleccionar(this)"'') as ESTADO',
'from INV.CP_CONCEPTO_VIATICO t'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(40147995650263667)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(236031997803821140)
,p_query_column_id=>1
,p_column_alias=>'COD_CONCEPTO'
,p_column_display_sequence=>10
,p_column_heading=>'Codigo'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(236032011132821141)
,p_query_column_id=>2
,p_column_alias=>'DESCRIPCION'
,p_column_display_sequence=>20
,p_column_heading=>'Descripcion'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(236169539774980202)
,p_query_column_id=>3
,p_column_alias=>'ESTADO'
,p_column_display_sequence=>30
,p_column_heading=>'Activo'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(259898957080015004)
,p_plug_name=>'TARIFARIO'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:is-expanded:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40108275410263656)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(232276250119458440)
,p_plug_name=>'PARAMETROS'
,p_region_name=>'PARAM'
,p_parent_plug_id=>wwv_flow_imp.id(259898957080015004)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>20
,p_plug_grid_column_span=>2
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(232276320559458441)
,p_name=>'TARIFARIO POR ZONA'
,p_region_name=>'reg_reporte'
,p_parent_plug_id=>wwv_flow_imp.id(259898957080015004)
,p_template=>wwv_flow_imp.id(40125238939263661)
,p_display_sequence=>30
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--accent1:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_new_grid_row=>false
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select T.COD_TARIFA, ',
'       T.COD_PAIS,',
'       T.COD_PROVINCIA,',
'       T.COD_CIUDAD,',
'       T.FECHA_ALTA,',
'       T.USUARIO_ALTA ,',
'       UPPER(P.DESCRIPCION) PAIS,',
'       UPPER(D.DESCRIPCION) DEPARTAMENTO,',
'       UPPER(C.DESCRIPCION) CIUDAD',
'  from CP_TARIFARIO_VIATICO  T,',
'       PAISES P,',
'       PROVINCIAS D,',
'       CIUDADES C',
'  WHERE T.COD_PAIS = P.COD_PAIS',
'  AND   T.COD_PROVINCIA = D.COD_PROVINCIA',
'  AND   T.COD_PAIS = D.COD_PAIS',
'  AND   T.COD_CIUDAD =  C.COD_CIUDAD',
'  AND   T.COD_PROVINCIA = C.COD_PROVINCIA',
'  AND   T.COD_PAIS = C.COD_PAIS',
'  AND ( :P665_PAIS IS NULL OR :P665_PAIS=T.COD_PAIS)',
'  AND ( :P665_PROVINCIA IS NULL OR :P665_PROVINCIA=T.COD_PROVINCIA)',
'  AND ( :P665_CIUDAD IS NULL OR :P665_CIUDAD=T.COD_CIUDAD)'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P665_PAIS,P665_PROVINCIA,P665_CIUDAD'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(40147995650263667)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(232276528420458443)
,p_query_column_id=>1
,p_column_alias=>'COD_TARIFA'
,p_column_display_sequence=>10
,p_column_heading=>'ID'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(232276738451458445)
,p_query_column_id=>2
,p_column_alias=>'COD_PAIS'
,p_column_display_sequence=>30
,p_column_heading=>'CODIGO'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(232276890179458446)
,p_query_column_id=>3
,p_column_alias=>'COD_PROVINCIA'
,p_column_display_sequence=>50
,p_column_heading=>'CODIGO'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(232276968286458447)
,p_query_column_id=>4
,p_column_alias=>'COD_CIUDAD'
,p_column_display_sequence=>70
,p_column_heading=>'CODIGO'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(232277039410458448)
,p_query_column_id=>5
,p_column_alias=>'FECHA_ALTA'
,p_column_display_sequence=>90
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(232277124266458449)
,p_query_column_id=>6
,p_column_alias=>'USUARIO_ALTA'
,p_column_display_sequence=>100
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(235879626774970144)
,p_query_column_id=>7
,p_column_alias=>'PAIS'
,p_column_display_sequence=>40
,p_column_heading=>'PAIS'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(235879720563970145)
,p_query_column_id=>8
,p_column_alias=>'DEPARTAMENTO'
,p_column_display_sequence=>60
,p_column_heading=>'DEPARTAMENTO'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(235879882734970146)
,p_query_column_id=>9
,p_column_alias=>'CIUDAD'
,p_column_display_sequence=>80
,p_column_heading=>'CIUDAD'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(232276498535458442)
,p_name=>'DETALLE POR CONCEPTO'
,p_parent_plug_id=>wwv_flow_imp.id(259898957080015004)
,p_template=>wwv_flow_imp.id(40125238939263661)
,p_display_sequence=>40
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--accent1:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_new_grid_row=>false
,p_grid_column_span=>4
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select T.COD_TARIFA,',
'       T.COD_CONCEPTO,',
'       UPPER(C.DESCRIPCION)CONCEPTO,',
'       T.MONTO,',
'       T.FECHA_ALTA,',
'       T.USUARIO_ALTA,',
'       NULL DEL,',
'       NULL EDT',
'  from CP_TARIFARIO_VIATICO_DET T,',
'       CP_CONCEPTO_VIATICO C',
'  WHERE T.COD_CONCEPTO = C.COD_CONCEPTO',
'  and T.COD_TARIFA=:P665_ID_VER_DET',
''))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P665_ID_VER_DET'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(40147995650263667)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(232277265426458450)
,p_query_column_id=>1
,p_column_alias=>'COD_TARIFA'
,p_column_display_sequence=>20
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(235875311568970101)
,p_query_column_id=>2
,p_column_alias=>'COD_CONCEPTO'
,p_column_display_sequence=>30
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(235879978762970147)
,p_query_column_id=>3
,p_column_alias=>'CONCEPTO'
,p_column_display_sequence=>40
,p_column_heading=>'CONCEPTO'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(235875484513970102)
,p_query_column_id=>4
,p_column_alias=>'MONTO'
,p_column_display_sequence=>50
,p_column_heading=>'MONTO'
,p_use_as_row_header=>'N'
,p_column_format=>'999G999G999G999G999G999G990'
,p_column_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(235875519786970103)
,p_query_column_id=>5
,p_column_alias=>'FECHA_ALTA'
,p_column_display_sequence=>60
,p_column_heading=>'FECHA ALTA'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(235875666891970104)
,p_query_column_id=>6
,p_column_alias=>'USUARIO_ALTA'
,p_column_display_sequence=>70
,p_column_heading=>'USUARIO'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(235876252586970110)
,p_query_column_id=>7
,p_column_alias=>'DEL'
,p_column_display_sequence=>80
,p_column_heading=>'Del'
,p_use_as_row_header=>'N'
,p_column_link=>'javascript:$s(''P665_ID_DET_DEL'',''#COD_TARIFA#''+''-''+''#COD_CONCEPTO#'');'
,p_column_linktext=>'<span class="t-Icon fa fa-trash delete-note" aria-hidden="true"></span>'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(235876354700970111)
,p_query_column_id=>8
,p_column_alias=>'EDT'
,p_column_display_sequence=>10
,p_column_heading=>'Edt'
,p_use_as_row_header=>'N'
,p_column_link=>'javascript:$s(''P665_ID_ABM'',''#COD_TARIFA#'');$s(''P665_CONCEPTO_ABM'',''#COD_CONCEPTO#'');'
,p_column_linktext=>'<span aria-label="Editar"><span class="fa fa-edit" aria-hidden="true" title="Editar"></span></span>'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(259899051074015005)
,p_plug_name=>'CUENTAS POR CONCEPTO'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:is-collapsed:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40108275410263656)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(259899129399015006)
,p_plug_name=>'FILTROS'
,p_region_name=>'FILTROS'
,p_parent_plug_id=>wwv_flow_imp.id(259899051074015005)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>10
,p_plug_grid_column_span=>3
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(259899263863015007)
,p_name=>'LISTADO CUENTAS CONCEPTOS SECTORES'
,p_parent_plug_id=>wwv_flow_imp.id(259899051074015005)
,p_template=>wwv_flow_imp.id(40096829222263653)
,p_display_sequence=>20
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_new_grid_row=>false
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select  c.cod_cuenta COD_CTA,',
'       c.nombre_cuenta DESCRIPCION_CUENTA,',
'       s.cod_centro ,',
'       s.descripcion DESCRIPCION_CENTRO,',
'       v.cod_concepto ,',
'       v.descripcion   DESCRIPCION_CONCEPTO      ',
'       ,null edit',
'       ,P.ROWID idrow',
'from CP_PARAM_VIATICO_CUENTA p,',
'     co_plan_cuentas c,',
'     co_centro_costos s,',
'     cp_concepto_viatico v',
'where p.cod_empresa=''1''',
'and ( :P665_FIL_CTA is null or :P665_FIL_CTA = p.cod_cuenta)',
'and ( :P665_FIL_CENCOSTO is null or :P665_FIL_CENCOSTO = p.cod_centro_costo)',
'and ( :P665_FIL_CONCEPTO is null or :P665_FIL_CONCEPTO = p.cod_concepto)',
'and   p.cod_cuenta=c.cod_cuenta',
'and   p.cod_empresa=c.cod_empresa',
'and   p.cod_centro_costo=s.cod_centro',
'and   p.cod_empresa=s.cod_empresa',
'and   s.cod_ejercicio=c.cod_ejercicio',
'and   p.cod_concepto=v.cod_concepto',
unistr('AND   c.cod_ejercicio= (SELECT TO_CHAR(SYSDATE, ''YYYY'') AS a\00F1o_actual FROM DUAL)'),
' --(SELECT MAX(CCC.cod_ejercicio) FROM co_plan_cuentas CCC WHERE CCC.COD_EMPRESA=C.COD_EMPRESA AND CCC.COD_CUENTA=C.COD_CUENTA)'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P665_FIL_CTA,P665_FIL_CENCOSTO,P665_FIL_CONCEPTO'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(40147995650263667)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(259899715275015012)
,p_query_column_id=>1
,p_column_alias=>'COD_CTA'
,p_column_display_sequence=>20
,p_column_heading=>'Codigo Cuenta'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(259899828060015013)
,p_query_column_id=>2
,p_column_alias=>'DESCRIPCION_CUENTA'
,p_column_display_sequence=>30
,p_column_heading=>'Descripcion Cuenta'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(259899978046015014)
,p_query_column_id=>3
,p_column_alias=>'COD_CENTRO'
,p_column_display_sequence=>40
,p_column_heading=>'Cod. Centro Costo'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(259900002040015015)
,p_query_column_id=>4
,p_column_alias=>'DESCRIPCION_CENTRO'
,p_column_display_sequence=>50
,p_column_heading=>unistr('Descripci\00F3n Sector - Centro Costo')
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(259900126482015016)
,p_query_column_id=>5
,p_column_alias=>'COD_CONCEPTO'
,p_column_display_sequence=>60
,p_column_heading=>'Cod. Concepto'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(259900228406015017)
,p_query_column_id=>6
,p_column_alias=>'DESCRIPCION_CONCEPTO'
,p_column_display_sequence=>70
,p_column_heading=>'Descripcion Concepto'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(259900365607015018)
,p_query_column_id=>7
,p_column_alias=>'EDIT'
,p_column_display_sequence=>10
,p_column_heading=>'Editar'
,p_use_as_row_header=>'N'
,p_column_link=>'javascript:$s(''P665_ROWID'',''#IDROW#'');'
,p_column_linktext=>'<span aria-label="Edit"><span class="fa fa-edit" aria-hidden="true" title="Edit"></span></span>'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(259902114245015036)
,p_query_column_id=>8
,p_column_alias=>'IDROW'
,p_column_display_sequence=>90
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(259899315891015008)
,p_plug_name=>'ABM'
,p_parent_plug_id=>wwv_flow_imp.id(259899051074015005)
,p_region_template_options=>'#DEFAULT#:js-dialog-size480x320'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(261417548229282920)
,p_plug_name=>'CUENTAS POR SECTOR'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:is-collapsed:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40108275410263656)
,p_plug_display_sequence=>30
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>4
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(261417625516282921)
,p_name=>'Cuentas por Sector'
,p_parent_plug_id=>wwv_flow_imp.id(261417548229282920)
,p_template=>wwv_flow_imp.id(40096829222263653)
,p_display_sequence=>10
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select P.DESCRIPCION SECTOR,',
'       p.COD_CENTRO_COSTO,',
'       s.descripcion CENTRO_COSTO,',
'       p.NRO_CUENTA,',
'       c.nombre_cuenta  cuenta,',
'       null edit,',
'       null delet',
'  from CP_VALES_SECTOR p,',
'       co_plan_cuentas c,',
'       co_centro_costos s   ',
'  where   C.COD_EMPRESA = :P_COD_EMPRESA ',
'    and   p.NRO_cuenta=c.cod_cuenta ',
'    and   p.cod_centro_costo=s.cod_centro',
'    and   C.cod_empresa=s.cod_empresa',
'    and   s.cod_ejercicio=c.cod_ejercicio ',
'    AND   c.cod_ejercicio=(SELECT MAX(CCC.cod_ejercicio) FROM co_plan_cuentas CCC WHERE CCC.COD_EMPRESA=C.COD_EMPRESA AND CCC.COD_CUENTA=C.COD_CUENTA)',
'      ',
'  ',
'  ;'))
,p_display_condition_type=>'NEVER'
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(40147995650263667)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(261418472930282929)
,p_query_column_id=>1
,p_column_alias=>'SECTOR'
,p_column_display_sequence=>20
,p_column_heading=>'Sector'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(261417952354282924)
,p_query_column_id=>2
,p_column_alias=>'COD_CENTRO_COSTO'
,p_column_display_sequence=>30
,p_column_heading=>'Cod.'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(261420364366282948)
,p_query_column_id=>3
,p_column_alias=>'CENTRO_COSTO'
,p_column_display_sequence=>40
,p_column_heading=>'Centro Costo'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(261420572773282950)
,p_query_column_id=>4
,p_column_alias=>'NRO_CUENTA'
,p_column_display_sequence=>50
,p_column_heading=>'Nro Cuenta'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(261418552232282930)
,p_query_column_id=>5
,p_column_alias=>'CUENTA'
,p_column_display_sequence=>60
,p_column_heading=>unistr('Descripci\00F3n Cuenta')
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(261418228610282927)
,p_query_column_id=>6
,p_column_alias=>'EDIT'
,p_column_display_sequence=>70
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(261418393879282928)
,p_query_column_id=>7
,p_column_alias=>'DELET'
,p_column_display_sequence=>10
,p_column_heading=>'X'
,p_use_as_row_header=>'N'
,p_column_link=>'javascript:$s(''P665_DELETE'',''#DESCRIPCION#'');'
,p_column_linktext=>'<span class="t-Icon fa fa-trash delete-note" aria-hidden="true"></span>'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(261418733404282932)
,p_plug_name=>'Crear Sector / Cta.'
,p_parent_plug_id=>wwv_flow_imp.id(261417548229282920)
,p_region_template_options=>'#DEFAULT#:js-dialog-size480x320'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(600261168156922126)
,p_plug_name=>'Cuentas por Sector'
,p_parent_plug_id=>wwv_flow_imp.id(261417548229282920)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_region_attributes=>'style ="overflow-y: scroll;height:600px;"'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select P.DESCRIPCION SECTOR,',
'       p.COD_CENTRO_COSTO,',
'       s.descripcion CENTRO_COSTO,',
'       p.NRO_CUENTA,',
'       c.nombre_cuenta  cuenta,',
'       null edit,',
'       null delet',
'  from CP_VALES_SECTOR p,',
'       co_plan_cuentas c,',
'       co_centro_costos s   ',
'  where   C.COD_EMPRESA = :P_COD_EMPRESA ',
'    and   p.NRO_cuenta=c.cod_cuenta ',
'    and   p.cod_centro_costo=s.cod_centro',
'    and   C.cod_empresa=s.cod_empresa',
'    and   s.cod_ejercicio=c.cod_ejercicio ',
unistr('    AND   c.cod_ejercicio= (SELECT TO_CHAR(SYSDATE, ''YYYY'') AS a\00F1o_actual FROM DUAL)'),
'    --(SELECT MAX(CCC.cod_ejercicio) FROM co_plan_cuentas CCC WHERE CCC.COD_EMPRESA=C.COD_EMPRESA AND CCC.COD_CUENTA=C.COD_CUENTA)',
'      ',
'  ',
'  ;'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Cuentas por Sector'
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
);
wwv_flow_imp.component_end;
end;
/
begin
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.04.12'
,p_release=>'22.1.0'
,p_default_workspace_id=>2715162693355865
,p_default_application_id=>122
,p_default_id_offset=>0
,p_default_owner=>'INV'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(600261997308922134)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_actions_menu=>'N'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_enable_mail_download=>'Y'
,p_owner=>'JUANSA'
,p_internal_uid=>600261997308922134
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(600262643743922141)
,p_db_column_name=>'DELET'
,p_display_order=>10
,p_column_identifier=>'G'
,p_column_label=>'x'
,p_column_link=>'javascript:$s(''P665_DELETE'',''#DESCRIPCION#'');'
,p_column_linktext=>'<span class="t-Icon fa fa-trash delete-note" aria-hidden="true"></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(600262001657922135)
,p_db_column_name=>'SECTOR'
,p_display_order=>20
,p_column_identifier=>'A'
,p_column_label=>'Sector'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(600262175907922136)
,p_db_column_name=>'COD_CENTRO_COSTO'
,p_display_order=>30
,p_column_identifier=>'B'
,p_column_label=>'Cod.'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(600262202548922137)
,p_db_column_name=>'CENTRO_COSTO'
,p_display_order=>40
,p_column_identifier=>'C'
,p_column_label=>'Centro Costo'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(600262364424922138)
,p_db_column_name=>'NRO_CUENTA'
,p_display_order=>50
,p_column_identifier=>'D'
,p_column_label=>'Nro Cuenta'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(600262487306922139)
,p_db_column_name=>'CUENTA'
,p_display_order=>60
,p_column_identifier=>'E'
,p_column_label=>unistr('Descripci\00F3n Cuenta')
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(600262576225922140)
,p_db_column_name=>'EDIT'
,p_display_order=>70
,p_column_identifier=>'F'
,p_column_label=>'Edit'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(610822634094571045)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'6108227'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'DELET:SECTOR:COD_CENTRO_COSTO:CENTRO_COSTO:NRO_CUENTA:CUENTA:EDIT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(236169458587980201)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(236031874560821139)
,p_button_name=>'Agregar'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight:t-Button--stretch:t-Button--padRight:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Agregar'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>3
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(235877562405970123)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_imp.id(235877109830970119)
,p_button_name=>'ACEPTAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight:t-Button--stretch:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'ACEPTAR'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'N'
,p_grid_column=>9
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(259900990796015024)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_imp.id(259899129399015006)
,p_button_name=>'CREAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Agregar'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'u-color-21-bg u-color-43-text'
,p_icon_css_classes=>'fa-plus'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(235877043154970118)
,p_button_sequence=>90
,p_button_plug_id=>wwv_flow_imp.id(232276250119458440)
,p_button_name=>'AGREGAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight:t-Button--stretch:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Agregar'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'u-color-21-bg u-color-43-text'
,p_icon_css_classes=>'fa-plus'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(236030989963821130)
,p_button_sequence=>100
,p_button_plug_id=>wwv_flow_imp.id(232276250119458440)
,p_button_name=>'CONCEPTOS'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Conceptos'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'u-color-4-bg '
,p_icon_css_classes=>'fa-eye'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(236031088779821131)
,p_button_sequence=>110
,p_button_plug_id=>wwv_flow_imp.id(232276250119458440)
,p_button_name=>'INFORME'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Informe'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'u-color-2-bg'
,p_icon_css_classes=>'fa-print'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(259900770297015022)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(259899315891015008)
,p_button_name=>'Aceptar'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Aceptar'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(261419099714282935)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(261418733404282932)
,p_button_name=>'guardar'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Guardar'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-save'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(261418623430282931)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(261417548229282920)
,p_button_name=>'agregar'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Agregar'
,p_button_position=>'EDIT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'u-color-21-bg u-color-43-text'
,p_icon_css_classes=>'fa-plus'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(235875726526970105)
,p_name=>'P665_PAIS'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(232276250119458440)
,p_prompt=>'PAIS'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT UPPER(DESCRIPCION)PAIS, COD_PAIS',
'FROM PAISES',
'ORDER BY COD_PAIS ASC'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(235875831457970106)
,p_name=>'P665_CIUDAD'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(232276250119458440)
,p_prompt=>'CIUDAD'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT  DISTINCT UPPER(DESCRIPCION)CIUDAD, COD_CIUDAD',
'FROM CIUDADES',
'WHERE ( :P665_PAIS IS NULL OR COD_PAIS = :P665_PAIS )',
'AND ( :P665_PROVINCIA IS NULL OR COD_PROVINCIA=:P665_PROVINCIA )',
'ORDER BY COD_CIUDAD ASC'))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P665_PROVINCIA,P665_PAIS'
,p_ajax_items_to_submit=>'P665_PROVINCIA,P665_PAIS'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(235875985444970107)
,p_name=>'P665_PROVINCIA'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(232276250119458440)
,p_prompt=>'DEPARTAMENTO'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT  DISTINCT UPPER(DESCRIPCION)DEPTO, COD_PROVINCIA',
'FROM PROVINCIAS',
' WHERE (:P665_PAIS IS NULL OR COD_PAIS = :P665_PAIS)',
'ORDER BY COD_PROVINCIA ASC'))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P665_PAIS'
,p_ajax_items_to_submit=>'P665_PAIS'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(235877263429970120)
,p_name=>'P665_PAIS_ABM'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(235877109830970119)
,p_prompt=>'PAIS'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT UPPER(DESCRIPCION)PAIS, COD_PAIS',
'FROM PAISES',
'ORDER BY COD_PAIS ASC'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(235877320137970121)
,p_name=>'P665_PROVINCIA_ABM'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(235877109830970119)
,p_prompt=>'DEPARTAMENTO'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT  DISTINCT UPPER(DESCRIPCION)DEPTO, COD_PROVINCIA',
'FROM PROVINCIAS',
' WHERE (:P665_PAIS_ABM IS NULL OR COD_PAIS = :P665_PAIS_ABM)',
'ORDER BY COD_PROVINCIA ASC'))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P665_PAIS_ABM'
,p_ajax_items_to_submit=>'P665_PAIS_ABM'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(235877480661970122)
,p_name=>'P665_CIUDAD_ABM'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(235877109830970119)
,p_prompt=>'CIUDAD'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT  DISTINCT UPPER(DESCRIPCION)CIUDAD, COD_CIUDAD',
'FROM CIUDADES',
'WHERE ( :P665_PAIS_ABM IS NULL OR COD_PAIS = :P665_PAIS_ABM )',
'AND ( :P665_PROVINCIA_ABM IS NULL OR COD_PROVINCIA=:P665_PROVINCIA_ABM )',
'ORDER BY COD_CIUDAD ASC'))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P665_PAIS_ABM,P665_PROVINCIA_ABM'
,p_ajax_items_to_submit=>'P665_PAIS_ABM,P665_PROVINCIA_ABM'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(235877693430970124)
,p_name=>'P665_CONCEPTO_ABM'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(235877109830970119)
,p_prompt=>'CONCEPTO'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT  DISTINCT UPPER(DESCRIPCION)CONCEPTO, COD_CONCEPTO',
'FROM CP_CONCEPTO_VIATICO t',
'WHERE NVL(ACTIVO,''S'')=''S'''))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(235877704441970125)
,p_name=>'P665_MONTO_ABM'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(235877109830970119)
,p_prompt=>'MONTO'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_colspan=>6
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(235878946820970137)
,p_name=>'P665_ID_ABM'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(235877109830970119)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(235880206736970150)
,p_name=>'P665_ID_DET_DEL'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(232276250119458440)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(236028474296821105)
,p_name=>'P665_ID_VER_DET'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(232276250119458440)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(236032333767821144)
,p_name=>'P665_CONCEPTO_ACTIVA'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(232276250119458440)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(236032830317821149)
,p_name=>'P665_NUEVO_CONCEPTO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(236031874560821139)
,p_prompt=>'DESCRIPCION DE NUEVO CONCEPTO'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
,p_attribute_06=>'UPPER'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(236169679340980203)
,p_name=>'P665_CONCEPTO_INACTIVA'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(232276250119458440)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(259899406892015009)
,p_name=>'P665_FIL_CTA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(259899129399015006)
,p_prompt=>'CUENTA'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  select nombre_cuenta||'' - ''||cod_cuenta  nombre_cuenta, cod_cuenta ',
'    from co_plan_cuentas',
'   where cod_empresa = :P_COD_EMPRESA',
'     AND COD_EJERCICIO = TO_CHAR(SYSDATE,''YYYY'')',
'     and asentable = ''S'' ;'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--TODOS--'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET_FILTER'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'1'
,p_attribute_08=>'400'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(259899576100015010)
,p_name=>'P665_FIL_CENCOSTO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(259899129399015006)
,p_prompt=>'SECTOR - CENT.COSTO'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
' select DESCRIPCION ||'' - '' ||COD_CENTRO, COD_CENTRO',
'    from  co_centro_costos---cp_conceptos_sectores',
'   where cod_empresa = :P_COD_EMPRESA',
'   and asentable=''S''',
'   and cod_ejercicio= to_char(SYSDATE,''YYYY'')'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--TODOS--'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET_FILTER'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
,p_attribute_08=>'400'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(259899657091015011)
,p_name=>'P665_FIL_CONCEPTO'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(259899129399015006)
,p_prompt=>'CONCEPTO'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT DESCRIPCION,COD_CONCEPTO',
'  FROM CP_CONCEPTO_VIATICO '))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--TODOS--'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET_FILTER'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
,p_attribute_08=>'300'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(259900492440015019)
,p_name=>'P665_ABM_CTA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(259899315891015008)
,p_prompt=>'CUENTA'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  select nombre_cuenta||'' - ''||cod_cuenta  nombre_cuenta, cod_cuenta ',
'    from co_plan_cuentas',
'   where cod_empresa = :P_COD_EMPRESA',
'     AND COD_EJERCICIO = TO_CHAR(SYSDATE,''YYYY'') ',
'     and asentable = ''S'' ;'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'1'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(259900534296015020)
,p_name=>'P665_ABM_CENCOSTO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(259899315891015008)
,p_prompt=>'SECTOR - CENT.COSTO'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
' select DESCRIPCION, COD_CENTRO',
'    from  co_centro_costos---cp_conceptos_sectores',
'   where cod_empresa = :P_COD_EMPRESA',
'   and asentable=''S''',
'   and cod_ejercicio= to_char(SYSDATE,''YYYY'')'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'1'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(259900628727015021)
,p_name=>'P665_ABM_CONCEPTO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(259899315891015008)
,p_prompt=>'CONCEPTO'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT DESCRIPCION,COD_CONCEPTO',
'  FROM CP_CONCEPTO_VIATICO '))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'1'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(259901321295015028)
,p_name=>'P665_ROWID'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(259899129399015006)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(261418895599282933)
,p_name=>'P665_SECTOR'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(261418733404282932)
,p_prompt=>'Sector'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
' select DESCRIPCION, COD_CENTRO',
'    from  co_centro_costos---cp_conceptos_sectores',
'   where cod_empresa = :P_COD_EMPRESA',
'   and asentable=''S''',
'   and cod_ejercicio= to_char(SYSDATE,''YYYY'')'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(261418926619282934)
,p_name=>'P665_CUENTA'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(261418733404282932)
,p_prompt=>'Cuenta Contable'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  select nombre_cuenta ||'' - '' ||cod_cuenta nombre_cuenta, cod_cuenta ',
'    from co_plan_cuentas',
'   where cod_empresa = :P_COD_EMPRESA',
'     AND COD_EJERCICIO = TO_CHAR(SYSDATE,''YYYY'')',
'     and asentable = ''S'' ;'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(261419802241282943)
,p_name=>'P665_DELETE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(261418733404282932)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(261420400859282949)
,p_name=>'P665_TIPO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(261418733404282932)
,p_prompt=>unistr('Descripci\00F3n Sector')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(235876473243970112)
,p_name=>'DA_SELECT_PA'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P665_PAIS'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(235876587191970113)
,p_event_id=>wwv_flow_imp.id(235876473243970112)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(232276320559458441)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(236029510898821116)
,p_event_id=>wwv_flow_imp.id(235876473243970112)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(232276498535458442)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(235876615755970114)
,p_name=>'DA_SELECT_PRO'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P665_PROVINCIA'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(235876794637970115)
,p_event_id=>wwv_flow_imp.id(235876615755970114)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(232276320559458441)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(236029460475821115)
,p_event_id=>wwv_flow_imp.id(235876615755970114)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(232276498535458442)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(235877861710970126)
,p_name=>'DA_AGREGAR'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(235877043154970118)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(235878126873970129)
,p_event_id=>wwv_flow_imp.id(235877861710970126)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P665_PAIS_ABM'
,p_attribute_01=>'PLSQL_EXPRESSION'
,p_attribute_04=>':P665_PAIS'
,p_attribute_07=>'P665_PAIS'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(235878240680970130)
,p_event_id=>wwv_flow_imp.id(235877861710970126)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P665_PROVINCIA_ABM'
,p_attribute_01=>'PLSQL_EXPRESSION'
,p_attribute_04=>':P665_PROVINCIA'
,p_attribute_07=>'P665_PROVINCIA'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(235878878052970136)
,p_event_id=>wwv_flow_imp.id(235877861710970126)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P665_CIUDAD_ABM'
,p_attribute_01=>'PLSQL_EXPRESSION'
,p_attribute_04=>':P665_CIUDAD'
,p_attribute_07=>'P665_CIUDAD'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(235877976693970127)
,p_event_id=>wwv_flow_imp.id(235877861710970126)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P665_CONCEPTO_ABM := NULL;',
':P665_MONTO_ABM := NULL;',
':P665_ID_ABM := NULL;'))
,p_attribute_03=>'P665_CONCEPTO_ABM,P665_MONTO_ABM,P665_ID_ABM'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(235878007257970128)
,p_event_id=>wwv_flow_imp.id(235877861710970126)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(235877109830970119)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(235879219462970140)
,p_name=>'da_aceptar'
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(235877562405970123)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(235879325608970141)
,p_event_id=>wwv_flow_imp.id(235879219462970140)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    VMSJ VARCHAR2(3500);',
'BEGIN',
'  inv.cpsvales.tarifario(p665_id_abm => :p665_id_abm,',
'                         p665_pais_abm => :p665_pais_abm,',
'                         p665_provincia_abm => :p665_provincia_abm,',
'                         p665_ciudad_abm => :p665_ciudad_abm,',
'                         p665_concepto_abm => :p665_concepto_abm,',
'                         p665_monto_abm => REPLACE(:p665_monto_abm,''.'',''''),',
'                         po_errm => VMSJ);',
'    IF VMSJ IS NOT NULL THEN',
'        raise_application_error(-20000, VMSJ );',
'    END IF;',
'END;'))
,p_attribute_02=>'P665_ID_ABM,P665_PAIS_ABM,P665_PROVINCIA_ABM,P665_CIUDAD_ABM,P665_CONCEPTO_ABM,P665_MONTO_ABM'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(236028963504821110)
,p_event_id=>wwv_flow_imp.id(235879219462970140)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'var spinner = apex.util.showSpinner();'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(235879445998970142)
,p_event_id=>wwv_flow_imp.id(235879219462970140)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(232276320559458441)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(236031789908821138)
,p_event_id=>wwv_flow_imp.id(235879219462970140)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P665_ID_VER_DET'
,p_attribute_01=>'PLSQL_EXPRESSION'
,p_attribute_04=>'nvl(:p665_id_abm,:P665_ID_VER_DET)'
,p_attribute_07=>'P665_ID_ABM,P665_ID_VER_DET'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(236028761032821108)
,p_event_id=>wwv_flow_imp.id(235879219462970140)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(232276498535458442)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(235879555955970143)
,p_event_id=>wwv_flow_imp.id(235879219462970140)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(235877109830970119)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(236029017927821111)
,p_event_id=>wwv_flow_imp.id(235879219462970140)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$("#apex_wait_overlay").remove();',
'$(".u-Processing").remove();'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(235880019229970148)
,p_name=>'DA_ID_UPT'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P665_ID_ABM'
,p_condition_element=>'P665_ID_ABM'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(236031510765821136)
,p_event_id=>wwv_flow_imp.id(235880019229970148)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
' ',
'$(''#P665_CONCEPTO_ABM'').css(''pointer-events'',''none'');',
' '))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(236031668055821137)
,p_event_id=>wwv_flow_imp.id(235880019229970148)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
' ',
'$(''#P665_CONCEPTO_ABM'').css(''pointer-events'',''auto'');',
' '))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(236028812997821109)
,p_event_id=>wwv_flow_imp.id(235880019229970148)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P665_MONTO_ABM'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp.component_end;
end;
/
begin
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.04.12'
,p_release=>'22.1.0'
,p_default_workspace_id=>2715162693355865
,p_default_application_id=>122
,p_default_id_offset=>0
,p_default_owner=>'INV'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(235880170296970149)
,p_event_id=>wwv_flow_imp.id(235880019229970148)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(235877109830970119)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(236028069326821101)
,p_name=>'DA_DELETE'
,p_event_sequence=>70
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P665_ID_DET_DEL'
,p_condition_element=>'P665_ID_DET_DEL'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(236028140113821102)
,p_event_id=>wwv_flow_imp.id(236028069326821101)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>'Esta seguro que desea eliminar el Registro.'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(236171512333980222)
,p_event_id=>wwv_flow_imp.id(236028069326821101)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    DELETE CP_TARIFARIO_VIATICO_DET',
'     WHERE COD_TARIFA||''-''||COD_CONCEPTO = :P665_ID_DET_DEL;',
'EXCEPTION',
'    WHEN OTHERS THEN',
'         raise_application_error(-20000, sqlerrm );',
'END;'))
,p_attribute_02=>'P665_ID_DET_DEL'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(236171638005980223)
,p_event_id=>wwv_flow_imp.id(236028069326821101)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(232276498535458442)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(236028246190821103)
,p_name=>'DA_SELECT_REG'
,p_event_sequence=>80
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'#reg_reporte table.t-Report-report tr'
,p_bind_type=>'live'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(236028355628821104)
,p_event_id=>wwv_flow_imp.id(236028246190821103)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'   var codtar = $(this.triggeringElement).closest(''tr'').find(''[headers="COD_TARIFA"]'').text(); ',
'    $s(''P665_ID_VER_DET'',codtar);',
'',
'       '))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(236028573345821106)
,p_name=>'da_refresh_det'
,p_event_sequence=>90
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P665_ID_VER_DET'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(236028607608821107)
,p_event_id=>wwv_flow_imp.id(236028573345821106)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(232276498535458442)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(236029168288821112)
,p_name=>'DA_SELECT_CIU'
,p_event_sequence=>100
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P665_CIUDAD'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(236029260028821113)
,p_event_id=>wwv_flow_imp.id(236029168288821112)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(232276320559458441)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(236029386508821114)
,p_event_id=>wwv_flow_imp.id(236029168288821112)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(232276498535458442)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(236029606303821117)
,p_name=>'DA_REFRES_ID'
,p_event_sequence=>110
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(232276320559458441)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterrefresh'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(236029770034821118)
,p_event_id=>wwv_flow_imp.id(236029606303821117)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P665_ID_VER_DET'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(236031178530821132)
,p_name=>'DA_INFORME'
,p_event_sequence=>120
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(236031088779821131)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(236171797791980224)
,p_event_id=>wwv_flow_imp.id(236031178530821132)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(236029831688821119)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(236031295122821133)
,p_event_id=>wwv_flow_imp.id(236031178530821132)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(236029831688821119)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(236032473257821145)
,p_name=>'DA_CONCEPTO_ACTIVA'
,p_event_sequence=>130
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P665_CONCEPTO_ACTIVA'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(236032503799821146)
,p_event_id=>wwv_flow_imp.id(236032473257821145)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>'Desea Activar el concepto &P665_CONCEPTO_ACTIVA. ?'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(236170363095980210)
,p_event_id=>wwv_flow_imp.id(236032473257821145)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    UPDATE CP_CONCEPTO_VIATICO',
'     SET ACTIVO =''S''',
'     WHERE COD_CONCEPTO = :P665_CONCEPTO_ACTIVA;',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        NULL;',
'END;'))
,p_attribute_02=>'P665_CONCEPTO_ACTIVA'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(236170556806980212)
,p_event_id=>wwv_flow_imp.id(236032473257821145)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(236031874560821139)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(236169746781980204)
,p_name=>'DA_CONCEPTO_INACTIVA'
,p_event_sequence=>140
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P665_CONCEPTO_INACTIVA'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(236169829132980205)
,p_event_id=>wwv_flow_imp.id(236169746781980204)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>'Desea Inactivar el concepto &P665_CONCEPTO_INACTIVA. ?'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(236170448698980211)
,p_event_id=>wwv_flow_imp.id(236169746781980204)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    UPDATE CP_CONCEPTO_VIATICO',
'     SET ACTIVO =''N''',
'     WHERE COD_CONCEPTO = :P665_CONCEPTO_INACTIVA;',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        NULL;',
'END;'))
,p_attribute_02=>'P665_CONCEPTO_INACTIVA'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(236170684396980213)
,p_event_id=>wwv_flow_imp.id(236169746781980204)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(236031874560821139)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(236032630871821147)
,p_name=>'DA_ABRIR_CONCEPTOS'
,p_event_sequence=>150
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(236030989963821130)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(236171122529980218)
,p_event_id=>wwv_flow_imp.id(236032630871821147)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P665_NUEVO_CONCEPTO'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(236171404460980221)
,p_event_id=>wwv_flow_imp.id(236032630871821147)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(236031874560821139)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(236032742869821148)
,p_event_id=>wwv_flow_imp.id(236032630871821147)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(236031874560821139)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(236169929651980206)
,p_name=>'DA_REFRESCAR_ACT'
,p_event_sequence=>160
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P665_CONCEPTO_ACTIVA'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(236170068909980207)
,p_event_id=>wwv_flow_imp.id(236169929651980206)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(236031874560821139)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(236170169209980208)
,p_name=>'DA_REFRESCAR_INACT'
,p_event_sequence=>170
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P665_CONCEPTO_INACTIVA'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(236170284655980209)
,p_event_id=>wwv_flow_imp.id(236170169209980208)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(236031874560821139)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(236170727518980214)
,p_name=>'DA_CREAR'
,p_event_sequence=>180
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(236169458587980201)
,p_condition_element=>'P665_NUEVO_CONCEPTO'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(236170815907980215)
,p_event_id=>wwv_flow_imp.id(236170727518980214)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>'Desea crear un nuevo concepto "&P665_NUEVO_CONCEPTO."?'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(236170982513980216)
,p_event_id=>wwv_flow_imp.id(236170727518980214)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'Debe cargar la descripcion.'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(236171072574980217)
,p_event_id=>wwv_flow_imp.id(236170727518980214)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    vcod number;',
'begin',
'  select nvl(max(cod_concepto),0)+1',
'    into vcod',
'    from cp_concepto_viatico;',
'                                                                        ',
'insert into inv.cp_concepto_viatico',
'  (cod_concepto, descripcion, activo, fecha_alta, usuario_alta)',
'values',
'  (vcod, :P665_NUEVO_CONCEPTO, ''S'', sysdate, :app_user);',
'',
'',
'exception',
'    when others then',
'         raise_application_error(-20000, sqlerrm );',
'end;'))
,p_attribute_02=>'P665_NUEVO_CONCEPTO'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(236171288446980219)
,p_event_id=>wwv_flow_imp.id(236170727518980214)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(236031874560821139)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(236171359421980220)
,p_event_id=>wwv_flow_imp.id(236170727518980214)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P665_NUEVO_CONCEPTO'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(259901088515015025)
,p_name=>'da_opn_reg'
,p_event_sequence=>190
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(259900990796015024)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(259901163317015026)
,p_event_id=>wwv_flow_imp.id(259901088515015025)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(259899315891015008)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(259901281881015027)
,p_event_id=>wwv_flow_imp.id(259901088515015025)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P665_ABM_CTA,P665_ABM_CENCOSTO,P665_ABM_CONCEPTO,P665_ROWID'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(259901471031015029)
,p_name=>'da_guardar'
,p_event_sequence=>200
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(259900770297015022)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(259901536533015030)
,p_event_id=>wwv_flow_imp.id(259901471031015029)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P665_ABM_CTA IS NOT NULL THEN',
'        IF :P665_ABM_CENCOSTO IS NOT NULL THEN',
'            IF :P665_ABM_CONCEPTO  IS NOT NULL THEN ',
'                    BEGIN',
'                            IF :P665_ROWID IS NULL THEN ',
'                                insert into inv.cp_param_viatico_cuenta',
'                                  (cod_empresa, cod_cuenta, cod_centro_costo, cod_concepto, fecha_alta, usuario_alta)',
'                                values',
'                                  (:P_COD_EMPRESA, :P665_ABM_CTA, :P665_ABM_CENCOSTO, :P665_ABM_CONCEPTO, sysdate, :app_user);',
'',
'                            ELSE  ',
'                                    update inv.cp_param_viatico_cuenta',
'                                       set cod_empresa = :P_COD_EMPRESA,',
'                                           cod_cuenta = :P665_ABM_CTA,',
'                                           cod_centro_costo = :P665_ABM_CENCOSTO,',
'                                           cod_concepto =:P665_ABM_CONCEPTO,',
'                                           fecha_alta = sysdate,',
'                                           usuario_alta = :app_user',
'                                     where rowid = :P665_ROWID;',
'                            END IF;',
'                          commit;',
'                    EXCEPTION',
'                        WHEN OTHERS THEN',
'                             raise_application_error(-20000, sqlerrm );',
'                    END;',
'            ELSE',
'                 raise_application_error(-20000, ''Debe cargar el Concepto.'' );',
'            END IF;',
'     ELSE',
'         raise_application_error(-20000, ''Debe cargar el Centro de Consto - Sector.'' );',
'     END IF;',
'ELSE',
'     raise_application_error(-20000, ''Debe cargar la Cuenta Contable.'' );',
'END IF;',
'',
'',
''))
,p_attribute_02=>'P665_ABM_CTA,P665_ABM_CENCOSTO,P665_ABM_CONCEPTO,P665_ROWID'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(259901672237015031)
,p_event_id=>wwv_flow_imp.id(259901471031015029)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(259899315891015008)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(259901797723015032)
,p_event_id=>wwv_flow_imp.id(259901471031015029)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(259899263863015007)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(259901845287015033)
,p_name=>'da_cng_rowid'
,p_event_sequence=>210
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P665_ROWID'
,p_condition_element=>'P665_ROWID'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(259902623413015041)
,p_event_id=>wwv_flow_imp.id(259901845287015033)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    va1 varchar2(300);',
'    va2 varchar2(300);',
'    va3 varchar2(300);',
'begin',
'    select cod_cuenta,cod_centro_costo, cod_concepto',
'    into  :P665_ABM_CTA, :P665_ABM_CENCOSTO, :P665_ABM_CONCEPTO ---va1,va2,va3---',
'    from inv.cp_param_viatico_cuenta',
'    where ROWID = :P665_ROWID',
'    ; ',
'    ',
'exception',
'when others then',
' ',
'    :P665_ABM_CTA := null;',
'    :P665_ABM_CENCOSTO := null; ',
'    :P665_ABM_CONCEPTO := null;',
'',
'end;'))
,p_attribute_02=>'P665_ROWID'
,p_attribute_03=>'P665_ABM_CONCEPTO,P665_ABM_CTA,P665_ABM_CENCOSTO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(259902594583015040)
,p_event_id=>wwv_flow_imp.id(259901845287015033)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'null;'
,p_attribute_02=>'P665_ABM_CENCOSTO,P665_ABM_CONCEPTO,P665_ABM_CTA'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(259901981256015034)
,p_event_id=>wwv_flow_imp.id(259901845287015033)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(259899315891015008)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(259902849607015043)
,p_name=>'da_fil_ref'
,p_event_sequence=>220
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P665_FIL_CTA'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(259902917016015044)
,p_event_id=>wwv_flow_imp.id(259902849607015043)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(259899263863015007)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(259903421215015049)
,p_name=>'da_fil_ref_2'
,p_event_sequence=>230
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P665_FIL_CONCEPTO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(259903587943015050)
,p_event_id=>wwv_flow_imp.id(259903421215015049)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(259899263863015007)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(259903215698015047)
,p_name=>'da_fil_ref_1'
,p_event_sequence=>240
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P665_FIL_CENCOSTO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(259903305811015048)
,p_event_id=>wwv_flow_imp.id(259903215698015047)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(259899263863015007)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(261419166336282936)
,p_name=>'da_abre_reg'
,p_event_sequence=>250
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(261418623430282931)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(261419200653282937)
,p_event_id=>wwv_flow_imp.id(261419166336282936)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P665_SECTOR,P665_CUENTA'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(261419307783282938)
,p_event_id=>wwv_flow_imp.id(261419166336282936)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(261418733404282932)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(261419492637282939)
,p_name=>'da_save_secta'
,p_event_sequence=>260
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(261419099714282935)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(261419570831282940)
,p_event_id=>wwv_flow_imp.id(261419492637282939)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P665_SECTOR is null or :P665_CUENTA is null or :P665_TIPO is null then',
'     raise_application_error(-20000, ''Debe Cargar el Sector, Centro de Costos y la Cuenta Asociada'' );',
'',
'else',
'    begin    ',
'        insert into inv.CP_VALES_SECTOR',
'          (DESCRIPCION,NRO_CUENTA,COD_CENTRO_COSTO)',
'        values',
'          ( :P665_TIPO, :P665_CUENTA , :P665_SECTOR);',
'    exception ',
'        when others then',
'             raise_application_error(-20000, sqlerrm );',
'    end;',
'end if;'))
,p_attribute_02=>'P665_SECTOR,P665_CUENTA,P665_TIPO'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(261419649440282941)
,p_event_id=>wwv_flow_imp.id(261419492637282939)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(261418733404282932)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(261419798703282942)
,p_event_id=>wwv_flow_imp.id(261419492637282939)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(261417625516282921)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(261419913457282944)
,p_name=>'da_delete_secta'
,p_event_sequence=>270
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P665_DELETE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(261420000432282945)
,p_event_id=>wwv_flow_imp.id(261419913457282944)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>'Esta seguro de eliminar el registro &P665_DELETE.?'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(261420123125282946)
,p_event_id=>wwv_flow_imp.id(261419913457282944)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'   delete inv.CP_VALES_SECTOR',
'    where DESCRIPCION =  :P665_DELETE',
'      ; ',
'exception',
'    when others then    ',
'      raise_application_error(-20000, sqlerrm );',
'end;'))
,p_attribute_02=>'P665_DELETE'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(261420299840282947)
,p_event_id=>wwv_flow_imp.id(261419913457282944)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(261417625516282921)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(235878484287970132)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'LIMPIAR_PANTALLA'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
);
wwv_flow_imp.component_end;
end;
/
