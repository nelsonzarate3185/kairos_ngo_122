prompt --application/pages/page_00033
begin
--   Manifest
--     PAGE: 00033
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
 p_id=>33
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'CPSVALES'
,p_alias=>'CPSVALES'
,p_page_mode=>'MODAL'
,p_step_title=>unistr('Solicitud de Vi\00E1ticos')
,p_autocomplete_on_off=>'OFF'
,p_javascript_file_urls=>'#APP_FILES#util_generico#MIN#.js'
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
'#PARAM{    ',
'  background-color: #487ab8  !important;',
'}',
'',
'tr:last-child td[headers="TOTAL"] { ',
'    font-size: medium; ',
'    background: #d9ed92; ',
'}',
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
,p_step_template=>wwv_flow_imp.id(40080790783263649)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'03'
,p_last_updated_by=>'JUANSA'
,p_last_upd_yyyymmddhh24miss=>'20240405140430'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(237085766090215107)
,p_plug_name=>'TAB'
,p_region_template_options=>'#DEFAULT#:t-TabsRegion-mod--simple'
,p_plug_template=>wwv_flow_imp.id(40132096801263663)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(20573569071814027)
,p_plug_name=>'VALE'
,p_parent_plug_id=>wwv_flow_imp.id(237085766090215107)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(7710222425151326)
,p_plug_name=>'Principal'
,p_parent_plug_id=>wwv_flow_imp.id(20573569071814027)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(236171910795980226)
,p_name=>'DETALLE'
,p_region_name=>'DETALLE'
,p_parent_plug_id=>wwv_flow_imp.id(7710222425151326)
,p_template=>wwv_flow_imp.id(40108275410263656)
,p_display_sequence=>10
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:is-collapsed:t-Region--accent1:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'                  select seq_id, ',
'                         C001 COD_TARIFA,',
'                         T.COD_PAIS,   ',
'                         UPPER(D.DESCRIPCION) DEPARTAMENTO,',
'                         UPPER(C.DESCRIPCION) CIUDAD,',
'                         C002 COD_CONCEPTO,',
'                         UPPER(N.DESCRIPCION)CONCEPTO,',
'                         N001 IMPORTE_UNIT,',
'                         N002 CANTIDAD,',
'                         N003 TOTAL  ,',
'                         NULL DEL',
'                    from apex_collections,',
'                         CP_TARIFARIO_VIATICO  T, ',
'                         PROVINCIAS D,',
'                         CIUDADES C,',
'                         CP_CONCEPTO_VIATICO N',
'                   where collection_name = ''CP_VALES_DET''',
'                   AND  C001 = T.COD_TARIFA  ',
'                   AND  T.COD_PROVINCIA = D.COD_PROVINCIA',
'                   AND  T.COD_PAIS = D.COD_PAIS',
'                   AND  T.COD_CIUDAD =  C.COD_CIUDAD',
'                   AND  T.COD_PROVINCIA = C.COD_PROVINCIA',
'                   AND  T.COD_PAIS = C.COD_PAIS',
'                   AND  C002= N.COD_CONCEPTO',
'                   order by 1 asc;    '))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(40147995650263667)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(236867514841451623)
,p_query_column_id=>1
,p_column_alias=>'SEQ_ID'
,p_column_display_sequence=>10
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(236867646687451624)
,p_query_column_id=>2
,p_column_alias=>'COD_TARIFA'
,p_column_display_sequence=>20
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(236867712289451625)
,p_query_column_id=>3
,p_column_alias=>'COD_PAIS'
,p_column_display_sequence=>30
,p_column_heading=>'Pais'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(236867866013451626)
,p_query_column_id=>4
,p_column_alias=>'DEPARTAMENTO'
,p_column_display_sequence=>40
,p_column_heading=>'Departamento'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(236867916404451627)
,p_query_column_id=>5
,p_column_alias=>'CIUDAD'
,p_column_display_sequence=>50
,p_column_heading=>'Ciudad'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(236868020503451628)
,p_query_column_id=>6
,p_column_alias=>'COD_CONCEPTO'
,p_column_display_sequence=>60
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(236868134696451629)
,p_query_column_id=>7
,p_column_alias=>'CONCEPTO'
,p_column_display_sequence=>70
,p_column_heading=>'Concepto'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(236868234609451630)
,p_query_column_id=>8
,p_column_alias=>'IMPORTE_UNIT'
,p_column_display_sequence=>80
,p_column_heading=>'Importe'
,p_use_as_row_header=>'N'
,p_column_format=>'999G999G999G999G999G999G990'
,p_column_alignment=>'RIGHT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(236868342667451631)
,p_query_column_id=>9
,p_column_alias=>'CANTIDAD'
,p_column_display_sequence=>90
,p_column_heading=>'Cantidad'
,p_use_as_row_header=>'N'
,p_column_link=>'javascript:$s(''P33_SEQ_EDT'',''#SEQ_ID#'');'
,p_column_linktext=>'#CANTIDAD#'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(236868474223451632)
,p_query_column_id=>10
,p_column_alias=>'TOTAL'
,p_column_display_sequence=>100
,p_column_heading=>'Total'
,p_use_as_row_header=>'N'
,p_column_format=>'999G999G999G999G999G999G990'
,p_column_alignment=>'RIGHT'
,p_sum_column=>'Y'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(236869025689451638)
,p_query_column_id=>11
,p_column_alias=>'DEL'
,p_column_display_sequence=>110
,p_column_heading=>'&nbsp'
,p_use_as_row_header=>'N'
,p_column_link=>'javascript:$s(''P33_SEQ_DEL'',''#SEQ_ID#'');'
,p_column_linktext=>'<span class="t-Icon fa fa-trash delete-note" aria-hidden="true"></span>'
,p_display_when_cond_type=>'ITEM_IS_NULL'
,p_display_when_condition=>'P33_NRO_COMPROBANTE'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8736883982197920)
,p_plug_name=>'Fondo fijo'
,p_parent_plug_id=>wwv_flow_imp.id(20573569071814027)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>50
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(236173542753980242)
,p_plug_name=>'Detalle de Concepto'
,p_parent_plug_id=>wwv_flow_imp.id(20573569071814027)
,p_region_template_options=>'#DEFAULT#:js-dialog-autoheight:js-dialog-size480x320'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>60
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(237085896148215108)
,p_plug_name=>'SEGUIMIENTO'
,p_parent_plug_id=>wwv_flow_imp.id(237085766090215107)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8736797380197919)
,p_plug_name=>'Usuario'
,p_parent_plug_id=>wwv_flow_imp.id(237085896148215108)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody:t-Form--leftLabels'
,p_region_attributes=>'style="background:#dae3ec;"'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(246558444089036912)
,p_name=>'Operaciones'
,p_parent_plug_id=>wwv_flow_imp.id(237085896148215108)
,p_template=>wwv_flow_imp.id(40108275410263656)
,p_display_sequence=>10
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--accent1:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select  ',
'     vw.SOLICITANTE as SOLICITANTE,',
'     vw.COD_PROVEEDOR as COD_PROVEEDOR,',
'     vw.PROV as PROV,',
'     vw.RUC as RUC,',
'     vw.NRO_FACTURA as NRO_FACTURA,',
'     vw.IND_FACT_ELECT as IND_FACT_ELECT,',
'     vw.FECHA as FECHA,',
'     vw.NRO_TIMBRADO as NRO_TIMBRADO,',
'     vw.VTO_TIMBRADO as VTO_TIMBRADO,',
'     vw.MONTO as MONTO,',
'     vw.CONCEPTO as CONCEPTO,',
'     vw.ESTADO as ESTADO,',
'     vw.COD_PERSONA as COD_PERSONA,',
'     vw.FECHA_VIATICO as FECHA_VIATICO,',
'     vw.FEC_AUTORIZA_VIATICO as FEC_AUTORIZA_VIATICO,',
'     vw.FEC_ENTREGA_VIATICO as FEC_ENTREGA_VIATICO,',
'     vw.ESTADO_VIATICO as ESTADO_VIATICO,',
'     vw.ID_RENDICION as ID_RENDICION ',
' from VW_VIATICOS_REND VW ',
' where vw.SER= :P33_SER_COMPROBANTE',
' and  vw.NRO = :P33_NRO_COMPROBANTE'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P33_SER_COMPROBANTE,P33_NRO_COMPROBANTE'
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
 p_id=>wwv_flow_imp.id(246558696422036914)
,p_query_column_id=>1
,p_column_alias=>'SOLICITANTE'
,p_column_display_sequence=>10
,p_column_heading=>'Solicitante'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(246558707477036915)
,p_query_column_id=>2
,p_column_alias=>'COD_PROVEEDOR'
,p_column_display_sequence=>20
,p_column_heading=>'Cod Proveedor'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(246558854713036916)
,p_query_column_id=>3
,p_column_alias=>'PROV'
,p_column_display_sequence=>30
,p_column_heading=>'Prov'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(246558968563036917)
,p_query_column_id=>4
,p_column_alias=>'RUC'
,p_column_display_sequence=>40
,p_column_heading=>'Ruc'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(246559031790036918)
,p_query_column_id=>5
,p_column_alias=>'NRO_FACTURA'
,p_column_display_sequence=>50
,p_column_heading=>'Nro Factura'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(246559154036036919)
,p_query_column_id=>6
,p_column_alias=>'IND_FACT_ELECT'
,p_column_display_sequence=>60
,p_column_heading=>'Ind Fact Elect'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(246559237122036920)
,p_query_column_id=>7
,p_column_alias=>'FECHA'
,p_column_display_sequence=>70
,p_column_heading=>'Fecha'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(246559313082036921)
,p_query_column_id=>8
,p_column_alias=>'NRO_TIMBRADO'
,p_column_display_sequence=>80
,p_column_heading=>'Nro Timbrado'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(246559435376036922)
,p_query_column_id=>9
,p_column_alias=>'VTO_TIMBRADO'
,p_column_display_sequence=>90
,p_column_heading=>'Vto Timbrado'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(246559540149036923)
,p_query_column_id=>10
,p_column_alias=>'MONTO'
,p_column_display_sequence=>100
,p_column_heading=>'Monto'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(246559654764036924)
,p_query_column_id=>11
,p_column_alias=>'CONCEPTO'
,p_column_display_sequence=>110
,p_column_heading=>'Concepto'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(246559711075036925)
,p_query_column_id=>12
,p_column_alias=>'ESTADO'
,p_column_display_sequence=>120
,p_column_heading=>'Estado'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(246559858441036926)
,p_query_column_id=>13
,p_column_alias=>'COD_PERSONA'
,p_column_display_sequence=>130
,p_column_heading=>'Cod Persona'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(246559993511036927)
,p_query_column_id=>14
,p_column_alias=>'FECHA_VIATICO'
,p_column_display_sequence=>140
,p_column_heading=>'Fecha Viatico'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(246560044185036928)
,p_query_column_id=>15
,p_column_alias=>'FEC_AUTORIZA_VIATICO'
,p_column_display_sequence=>150
,p_column_heading=>'Fec Autoriza Viatico'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(246560158488036929)
,p_query_column_id=>16
,p_column_alias=>'FEC_ENTREGA_VIATICO'
,p_column_display_sequence=>160
,p_column_heading=>'Fec Entrega Viatico'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(246560248673036930)
,p_query_column_id=>17
,p_column_alias=>'ESTADO_VIATICO'
,p_column_display_sequence=>170
,p_column_heading=>'Estado Viatico'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(246560327092036931)
,p_query_column_id=>18
,p_column_alias=>'ID_RENDICION'
,p_column_display_sequence=>180
,p_column_heading=>'Id Rendicion'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(246558536867036913)
,p_name=>'Novedades'
,p_parent_plug_id=>wwv_flow_imp.id(237085896148215108)
,p_template=>wwv_flow_imp.id(40108275410263656)
,p_display_sequence=>20
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:is-collapsed:t-Region--accent1:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select OBSERVACION,',
'       FECHA,',
'       USUARIO',
'  from CP_VALES_SEGUIMIENTO',
'  where COD_EMPRESA = :P_COD_EMPRESA',
'  and SER_COMPROBANTE = :P33_SER_COMPROBANTE',
'  and   NRO_COMPROBANTE = :P33_NRO_COMPROBANTE'))
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
 p_id=>wwv_flow_imp.id(246560712615036935)
,p_query_column_id=>1
,p_column_alias=>'OBSERVACION'
,p_column_display_sequence=>40
,p_column_heading=>'Observacion'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(246560820815036936)
,p_query_column_id=>2
,p_column_alias=>'FECHA'
,p_column_display_sequence=>50
,p_column_heading=>'Fecha'
,p_use_as_row_header=>'N'
,p_column_format=>'dd/mm/yyyy hh24:mi'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(246560936617036937)
,p_query_column_id=>3
,p_column_alias=>'USUARIO'
,p_column_display_sequence=>60
,p_column_heading=>'Usuario'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(236868564944451633)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(236173542753980242)
,p_button_name=>'ACEPTAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--iconRight:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Aceptar'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-check'
,p_grid_new_row=>'N'
,p_grid_column_span=>2
,p_grid_column=>8
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(8737778539197929)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_imp.id(8736883982197920)
,p_button_name=>'BT_APROBAR'
,p_button_static_id=>'bt_aprobar'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--stretch:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Aprobar'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'Y'
,p_grid_column_span=>2
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(8737863543197930)
,p_button_sequence=>90
,p_button_plug_id=>wwv_flow_imp.id(8736883982197920)
,p_button_name=>'BT_RECHAZAR'
,p_button_static_id=>'bt_rechazar'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--stretch:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Rechazar'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>2
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(246557661999036904)
,p_button_sequence=>100
,p_button_plug_id=>wwv_flow_imp.id(8736883982197920)
,p_button_name=>'BT_RENDIR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--stretch:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Rendir'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>'P33_ESTADO'
,p_button_condition2=>'ENTREGADO'
,p_button_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>2
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(247573865596287310)
,p_button_sequence=>110
,p_button_plug_id=>wwv_flow_imp.id(8736883982197920)
,p_button_name=>'Rendiciones'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Ver Rendiciones'
,p_button_redirect_url=>'f?p=&APP_ID.:698:&SESSION.::&DEBUG.:698:P698_SER_VIATICO,P698_NRO_VIATICO,P698_PERSONA:&P33_SER_COMPROBANTE.,&P33_NRO_COMPROBANTE.,&P33_COD_PERSONA.'
,p_button_condition=>'P33_ESTADO'
,p_button_condition2=>'SOLICITADO'
,p_button_condition_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_button_css_classes=>'u-color-3-bg'
,p_icon_css_classes=>'fa-table-search'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(71080466062541812)
,p_button_sequence=>120
,p_button_plug_id=>wwv_flow_imp.id(8736883982197920)
,p_button_name=>'Guardar'
,p_button_static_id=>'BTNOK'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Guardar'
,p_button_condition=>'P33_NRO_COMPROBANTE'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_button_css_classes=>'u-color-21-text'
,p_icon_css_classes=>'fa-save'
,p_grid_new_row=>'N'
,p_grid_column=>11
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(236173402924980241)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(236171910795980226)
,p_button_name=>'add'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Agregar Detalle'
,p_button_position=>'EDIT'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>'P33_NRO_COMPROBANTE'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_button_css_classes=>'u-color-21-bg u-color-43-text'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(71081430080541822)
,p_branch_name=>'ir_a_282'
,p_branch_action=>'f?p=&APP_ID.:282:&SESSION.::&DEBUG.:33:P282_ACTUALIZA,P282_NRO_SOLICITUD,P282_SER_SOLICITUD:S,&P33_NRO_COMPROBANTE.,&P33_SER_COMPROBANTE.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7710354079151327)
,p_name=>'P33_SER_COMPROBANTE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(7710222425151326)
,p_prompt=>'Serie'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_colspan=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7710423860151328)
,p_name=>'P33_NRO_COMPROBANTE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(7710222425151326)
,p_prompt=>unistr('N\00BA Solicitud')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7710520966151329)
,p_name=>'P33_NRO_PLANILLA'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(7710222425151326)
,p_prompt=>unistr('N\00BA Planilla Reparto')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7710787888151331)
,p_name=>'P33_TIPO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(7710222425151326)
,p_prompt=>'Sector '
,p_source=>'LOGISTICA'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select DESCRIPCION D,',
'       DESCRIPCION V',
'from INV.CP_VALES_SECTOR t'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'Seleccionar'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7710984488151333)
,p_name=>'P33_ESTADO'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(7710222425151326)
,p_prompt=>'Estado'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:SOLICITADO;SOLICITADO,APROBADO;APROBADO,RECHAZADO;RECHAZADO,ENTREGADO;ENTREGADO,RENDIDO;RENDIDO,PROCESADO;PROCESADO,FINALIZADO;FINALIZADO'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7711008148151334)
,p_name=>'P33_FECHA'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(7710222425151326)
,p_prompt=>'Fecha a Disponer'
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7711242060151336)
,p_name=>'P33_COD_PERSONA'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(7710222425151326)
,p_prompt=>'A la orden de'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_PERSONAS_VIATICO'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT P.NOMBRE , P.cod_persona ',
'				  FROM PERSONAS P ',
'				 WHERE  ( nvl((',
'BUSCA_PERMISO(:P_COD_EMPRESA,''CPSVALES'',:APP_USER,''VER_PERSONAS'')),''N'')=''S'' AND EXISTS (select DISTINCT ''1''',
'                                from cp_vales c',
'                                where c.cod_empresa=:P_COD_EMPRESA',
'                                and c.Cod_Persona=P.Cod_Persona ',
'                                 ',
'                                 )',
'                    )',
'                  ',
'union all',
'    SELECT P.NOMBRE , P.cod_persona ',
'    FROM PERSONAS P ',
'    WHERE exists ',
'         (',
'                             select   DISTINCT ''1''',
'                                  from ASP$USUA0100 u',
'                                  where U.USRN = :APP_USER',
'                                  and  u.cod_persona =  P.cod_persona ',
'                                   UNION ALL',
'                                  select  DISTINCT ''1''',
'                                  from usuarios u1',
'                                  where cod_usuario = :APP_USER',
'                                  and  u1.cod_persona= P.cod_persona ',
'                        )',
'',
'ORDER BY 1 ASC'))
,p_lov_cascade_parent_items=>'P33_VER_PERSONAS'
,p_ajax_items_to_submit=>'P33_VER_PERSONAS'
,p_ajax_optimize_refresh=>'N'
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
 p_id=>wwv_flow_imp.id(7711371517151337)
,p_name=>'P33_A_ORDEN'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(7710222425151326)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7711544847151339)
,p_name=>'P33_EN_CONCEPTO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(8736883982197920)
,p_prompt=>'En Concepto'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7711681800151340)
,p_name=>'P33_OBSERVACION'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(8736883982197920)
,p_prompt=>unistr('Observaci\00F3n')
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cHeight=>3
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8736994044197921)
,p_name=>'P33_COD_USUARIO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(8736797380197919)
,p_prompt=>'Solicitado por: '
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8737061993197922)
,p_name=>'P33_FECHA_ALTA'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(8736797380197919)
,p_prompt=>'Fecha Alta'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
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
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8737164265197923)
,p_name=>'P33_USER_AUTORIZA'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(8736797380197919)
,p_prompt=>'Autorizado por: '
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8737271428197924)
,p_name=>'P33_FECHA_AUTORIZA'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(8736797380197919)
,p_prompt=>'Fecha Autoriza'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8737326544197925)
,p_name=>'P33_USER_ENTREGA'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(8736797380197919)
,p_prompt=>'Entregado por: '
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8737494147197926)
,p_name=>'P33_FECHA_ENTREGA'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(8736797380197919)
,p_prompt=>'Fecha Entrega'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8737530560197927)
,p_name=>'P33_USER_RENDICION'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(8736797380197919)
,p_prompt=>'Rendido por: '
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8737619375197928)
,p_name=>'P33_FECHA_RENDICION'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(8736797380197919)
,p_prompt=>'Fecha Rendicion'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8738990608197941)
,p_name=>'P33_BUSCA_PERMISO'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(7710222425151326)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8739329576197945)
,p_name=>'P33_MENSAJE'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(8736883982197920)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(20409886145847842)
,p_name=>'P33_AUX_MSJ'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(7710222425151326)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(236171868461980225)
,p_name=>'P33_TIPO_VIATICO'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(7710222425151326)
,p_prompt=>'Tipo Viatico'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:NACIONAL;NACIONAL,INTERNACIONAL;INTERNACIONAL'
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
 p_id=>wwv_flow_imp.id(236173865775980245)
,p_name=>'P33_ZONA_ABM'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(236173542753980242)
,p_prompt=>'Zona Abm'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
' select T.COD_PAIS||'' / ''||UPPER(D.DESCRIPCION)  ||'' / ''||UPPER(C.DESCRIPCION) disp, T.COD_TARIFA',
'  from CP_TARIFARIO_VIATICO  T,',
'       PROVINCIAS D,',
'       CIUDADES C',
'  WHERE T.COD_PROVINCIA = D.COD_PROVINCIA',
'  AND   T.COD_PAIS = D.COD_PAIS',
'  AND   T.COD_CIUDAD =  C.COD_CIUDAD',
'  AND   T.COD_PROVINCIA = C.COD_PROVINCIA',
'  AND   T.COD_PAIS = C.COD_PAIS ',
'  ORDER BY 1,2 ASC',
'   ',
''))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(236869147612451639)
,p_name=>'P33_SEQ_EDT'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(236171910795980226)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(236869201621451640)
,p_name=>'P33_SEQ_DEL'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(236171910795980226)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(236869947241451647)
,p_name=>'P33_CANTIDAD_ABM'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(236173542753980242)
,p_item_default=>'0'
,p_prompt=>'CANTIDAD'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'onkeydown="return isNumber(event);"'
,p_colspan=>3
,p_grid_column=>4
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(237085909900215109)
,p_name=>'P33_ACREDITACION'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(8736883982197920)
,p_prompt=>unistr('Tipo de Acreditaci\00F3n')
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:ACREDITACION EN CUENTA;AC,RETIRO CAJA CHICA;RC'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(237086485982215114)
,p_name=>'P33_VER_PERSONAS'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(7710222425151326)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(71080331204541811)
,p_validation_name=>'va_persona'
,p_validation_sequence=>30
,p_validation=>'P33_COD_PERSONA'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Debe seleccionar la persona a responsable del Vale.'
,p_when_button_pressed=>wwv_flow_imp.id(71080466062541812)
,p_associated_item=>wwv_flow_imp.id(7711242060151336)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(237086034064215110)
,p_validation_name=>'va_sector'
,p_validation_sequence=>40
,p_validation=>'P33_TIPO'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Debe seleccionar el Sector.'
,p_when_button_pressed=>wwv_flow_imp.id(71080466062541812)
,p_associated_item=>wwv_flow_imp.id(7710787888151331)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(237086136346215111)
,p_validation_name=>'va_tipo'
,p_validation_sequence=>50
,p_validation=>'P33_TIPO_VIATICO'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Debe seleccionar el tipo de Viatico.'
,p_when_button_pressed=>wwv_flow_imp.id(71080466062541812)
,p_associated_item=>wwv_flow_imp.id(236171868461980225)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(237086263522215112)
,p_validation_name=>'va_acreditacion'
,p_validation_sequence=>60
,p_validation=>'P33_ACREDITACION'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>unistr('Debe seleccionar el tipo de acreditaci\00F3n')
,p_when_button_pressed=>wwv_flow_imp.id(71080466062541812)
,p_associated_item=>wwv_flow_imp.id(237085909900215109)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(237086345262215113)
,p_validation_name=>'va_tot_det'
,p_validation_sequence=>70
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    VTOT NUMBER;',
'BEGIN',
'            select nvl(sum(N003),0)',
'            INTO  VTOT',
'            from apex_collections',
'            where collection_name = ''CP_VALES_DET'';',
'',
'    IF VTOT = 0 THEN',
'            RETURN ''El monto total es 0 (cero). Debe cargar el importe en el detalle.'';',
'    END IF;',
'',
' EXCEPTION',
'    WHEN OTHERS THEN',
'        RETURN SQLERRM;',
'END;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_when_button_pressed=>wwv_flow_imp.id(71080466062541812)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(247573629038287308)
,p_validation_name=>'va_viatico_pendiente'
,p_validation_sequence=>80
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    dummy varchar2(100);',
'begin',
'        select ser_comprobante||'' - ''||nro_comprobante',
'	  	  into dummy',
'		  from cp_vales v',
'		 where v.cod_empresa= :P_COD_EMPRESA',
'		   and v.cod_persona=  :P33_COD_PERSONA',
'		   and v.fecha_autoriza is not null',
'		   and v.estado=''ENTREGADO''',
'		   and v.fecha_rendicion is null',
'		   and v.fecha_alta>=to_date(''01/03/2022'',''dd/mm/yyyy'');',
'			return''El personal aun cuenta con una rendicion pendiente. Viatico:''||dummy;  ',
'exception',
'    when others then',
'        return null;',
'end ;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_when_button_pressed=>wwv_flow_imp.id(71080466062541812)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(8738424807197936)
,p_name=>'DA_APROBAR'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(8737778539197929)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(8738505265197937)
,p_event_id=>wwv_flow_imp.id(8738424807197936)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\00BFDesea Aprobar el Solicitud de Vale?')
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(8738603478197938)
,p_event_id=>wwv_flow_imp.id(8738424807197936)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'  inv.cpsvales.cambia_estado_viatico(pi_cod_empresa => :P_COD_EMPRESA,',
'                                     pi_ser_comprobante => :P33_SER_COMPROBANTE,',
'                                     pi_nro_comprobante => :P33_NRO_COMPROBANTE,',
'                                     pi_estado => ''APROBADO''); ',
''))
,p_attribute_02=>'P33_SER_COMPROBANTE,P33_NRO_COMPROBANTE,P33_NRO_PLANILLA'
,p_attribute_03=>'P33_ESTADO,P33_MENSAJE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(21769244745343303)
,p_event_id=>wwv_flow_imp.id(8738424807197936)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(8739050901197942)
,p_name=>'DA_DESHABILITAR_X_USUARIO'
,p_event_sequence=>20
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_display_when_cond=>'P33_BUSCA_PERMISO'
,p_display_when_cond2=>'S'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(8739177390197943)
,p_event_id=>wwv_flow_imp.id(8739050901197942)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(8737778539197929)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(8739407294197946)
,p_name=>'DA_RENCHAZAR'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(8737863543197930)
,p_condition_element=>'P33_ESTADO'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'SOLICITADO'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(8739526004197947)
,p_event_id=>wwv_flow_imp.id(8739407294197946)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\00BFDesea Rechazar la Solicitud de Vale?')
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(247573548412287307)
,p_event_id=>wwv_flow_imp.id(8739407294197946)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'No se puede Rechazar un Viatico &P33_ESTADO.'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(8739630305197948)
,p_event_id=>wwv_flow_imp.id(8739407294197946)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'  inv.cpsvales.cambia_estado_viatico(pi_cod_empresa => :P_COD_EMPRESA,',
'                                     pi_ser_comprobante => :P33_SER_COMPROBANTE,',
'                                     pi_nro_comprobante => :P33_NRO_COMPROBANTE,',
'                                     pi_estado => ''RECHAZADO''); '))
,p_attribute_02=>'P33_NRO_PLANILLA,P33_SER_COMPROBANTE,P33_NRO_COMPROBANTE'
,p_attribute_03=>'P33_MENSAJE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(20573270956814024)
,p_event_id=>wwv_flow_imp.id(8739407294197946)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(9569888664036902)
,p_name=>'DA_MENSAJE'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P33_MENSAJE'
,p_condition_element=>'P33_MENSAJE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9569922064036903)
,p_event_id=>wwv_flow_imp.id(9569888664036902)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P33_MENSAJE.'
,p_attribute_02=>'Aviso'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(9633250153471641)
,p_name=>'DA_ASIGNAR_EMPLEADO'
,p_event_sequence=>100
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P33_COD_PERSONA'
,p_condition_element=>'P33_COD_PERSONA'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'focusout'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9633392415471642)
,p_event_id=>wwv_flow_imp.id(9633250153471641)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    :P33_AUX_MSJ := NULL;',
'    ',
'    SELECT distinct  P.NOMBRE  ',
'    into :P33_A_ORDEN',
'    FROM  PERSONAS P ',
'    WHERE p.cod_persona = :P33_COD_PERSONA;',
'				 ',
'	declare',
'	 	dummy varchar2(30);',
'	begin',
'		select nro_comprobante',
'	  	  into dummy',
'		  from cp_vales v',
'		 where v.cod_empresa= :P_COD_EMPRESA',
'		   and v.cod_persona=  :P33_COD_PERSONA',
'		   and v.fecha_autoriza is not null',
'		   and v.estado=''ENTREGADO''',
'		   and v.fecha_rendicion is null',
'		   and v.fecha_alta>=to_date(''01/03/2024'',''dd/mm/yyyy'');',
'			:P33_AUX_MSJ := ''El personal aun cuenta con una rendicion pendiente. Nro:''||dummy;  ',
'			:P33_COD_PERSONA:=NULL;',
'			:P33_A_ORDEN:=NULL;',
'	exception ',
'        when too_many_rows then',
'			:P33_AUX_MSJ := ''El personal aun cuenta con varias rendiciones pendientes.'';  ',
'			:P33_COD_PERSONA:=NULL;',
'			:P33_A_ORDEN:=NULL;',
'',
'	 	when others then',
'	 			null;',
'	end;				 ',
'exception',
'		when others then',
'				:P33_COD_PERSONA:= null;',
'				:P33_A_ORDEN    := null;',
'end; ',
'',
''))
,p_attribute_02=>'P33_COD_PERSONA'
,p_attribute_03=>'P33_AUX_MSJ,P33_A_ORDEN,P33_COD_PERSONA'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(20409938045847843)
,p_event_id=>wwv_flow_imp.id(9633250153471641)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P33_AUX_MSJ.'
,p_attribute_02=>'Error'
,p_attribute_03=>'warning'
,p_attribute_04=>'fa-warning'
,p_attribute_06=>'Aceptar'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P33_AUX_MSJ'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(9703214668340603)
,p_name=>'DA_DESHABILITAR_BOTONES'
,p_event_sequence=>110
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9703338204340604)
,p_event_id=>wwv_flow_imp.id(9703214668340603)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(8737778539197929)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(246558240120036910)
,p_event_id=>wwv_flow_imp.id(9703214668340603)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(246557661999036904)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9703501809340606)
,p_event_id=>wwv_flow_imp.id(9703214668340603)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(8737863543197930)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(9703758534340608)
,p_name=>'DA_HABILIAR_ESTADO_SOLICITADO'
,p_event_sequence=>120
,p_condition_element=>'P33_NRO_COMPROBANTE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_display_when_cond=>'P33_ESTADO'
,p_display_when_cond2=>'SOLICITADO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9703866708340609)
,p_event_id=>wwv_flow_imp.id(9703758534340608)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(8737778539197929)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9703935355340610)
,p_event_id=>wwv_flow_imp.id(9703758534340608)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(8737863543197930)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(9704091219340611)
,p_name=>'DA_HABILITAR_ESTADO_ENTREGADIO'
,p_event_sequence=>130
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_display_when_cond=>'P33_ESTADO'
,p_display_when_cond2=>'ENTREGADO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(246558392874036911)
,p_event_id=>wwv_flow_imp.id(9704091219340611)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(246557661999036904)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(9704299301340613)
,p_name=>'DA_HABILITAR_ESTADO_RENDIDO'
,p_event_sequence=>140
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_display_when_cond=>'P33_ESTADO'
,p_display_when_cond2=>'RENDIDO'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(9704601989340617)
,p_name=>'DA_DESHABILITAR_ITEMS'
,p_event_sequence=>150
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
,p_display_when_type=>'VALUE_OF_ITEM_IN_CONDITION_IN_COLON_DELIMITED_LIST'
,p_display_when_cond=>'P33_ESTADO'
,p_display_when_cond2=>'PROCESADO,FINALIZADO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9704748773340618)
,p_event_id=>wwv_flow_imp.id(9704601989340617)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P33_SER_COMPROBANTE,P33_NRO_COMPROBANTE,P33_TIPO,P33_ESTADO,P33_NRO_PLANILLA,P33_FECHA,P33_COD_PERSONA,P33_EN_CONCEPTO,P33_OBSERVACION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(71079697150541804)
,p_name=>'DA_SOLO_LECTURA'
,p_event_sequence=>170
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(71079784790541805)
,p_event_id=>wwv_flow_imp.id(71079697150541804)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'document.getElementById("P33_ESTADO").readOnly=true;',
'$(''#P33_ESTADO'').css(''pointer-events'',''none'');'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(236173615693980243)
,p_name=>'da_add'
,p_event_sequence=>180
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(236173402924980241)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(237085306265215103)
,p_event_id=>wwv_flow_imp.id(236173615693980243)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P33_SEQ_EDT,P33_CANTIDAD_ABM,P33_ZONA_ABM'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(236870279706451650)
,p_event_id=>wwv_flow_imp.id(236173615693980243)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P33_ZONA_ABM'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(237085175471215101)
,p_event_id=>wwv_flow_imp.id(236173615693980243)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P33_CANTIDAD_ABM'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(236173775775980244)
,p_event_id=>wwv_flow_imp.id(236173615693980243)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(236173542753980242)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(236868653630451634)
,p_name=>'DA_AGREGA_DET'
,p_event_sequence=>190
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(236868564944451633)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(236868702882451635)
,p_event_id=>wwv_flow_imp.id(236868653630451634)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P33_SEQ_EDT is not null and NVL(:P33_CANTIDAD_ABM,0)>0 then',
'    DECLARE',
'        VTARIFA     VARCHAR2(10);',
'        VCONCEPTO   VARCHAR2(10);',
'        VIMPORTE    NUMBER;',
'    BEGIN                  ',
'                   select C001, C002, N001  ',
'                    INTO VTARIFA, VCONCEPTO, VIMPORTE',
'                    from apex_collections ',
'                   where collection_name = ''CP_VALES_DET''',
'                   AND seq_id =  :P33_SEQ_EDT;   ',
'',
'            APEX_COLLECTION.UPDATE_MEMBER(',
'                            p_collection_name => ''CP_VALES_DET'',',
'                            p_seq => :P33_SEQ_EDT,',
'                            P_C001 => VTARIFA ,',
'                            P_C002 => VCONCEPTO,',
'                            P_N001 => VIMPORTE,',
'                            P_N002 => :P33_CANTIDAD_ABM,',
'                            P_N003 => :P33_CANTIDAD_ABM * VIMPORTE); ',
'    EXCEPTION',
'        WHEN OTHERS THEN    ',
'                NULL;',
'    END;',
'',
'else',
'  if :P33_ZONA_ABM is not null then ',
'    inv.cpsvales.agregar_item_det(pi_cod_tarifa =>:P33_ZONA_ABM);',
'  else',
'        raise_application_error(-20000, ''Debe seleccionar una Zona'' );',
'  end if;',
'end if;'))
,p_attribute_02=>'P33_ZONA_ABM,P33_CANTIDAD_ABM,P33_SEQ_EDT'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(236868805778451636)
,p_event_id=>wwv_flow_imp.id(236868653630451634)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(236171910795980226)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(236868936147451637)
,p_event_id=>wwv_flow_imp.id(236868653630451634)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(236173542753980242)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(246561091019036938)
,p_event_id=>wwv_flow_imp.id(236868653630451634)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/*',
'var numEntries = $v("P34_CANTIDAD_DETALLE"),',
'    npedido = $v("P34_NRO_COMPROBANTE")',
'',
'   , $region = $(this.affectedElements[0]);',
'  ',
' if (numEntries >0 && $region.hasClass(''is-expanded'') && npedido !== ''undefined'' ) {',
'      $region.find("button.t-Button--hideShow").eq(0).click();',
'  }',
'  ',
' if (numEntries <1  && $region.hasClass(''is-collapsed'') ) {',
'      $region.find("button.t-Button--hideShow").eq(0).click();',
'  }',
'',
'  */',
'',
'',
'',
'var  $region = $(''#DETALLE'');',
' console.log($region);',
' ',
'if ( $region.hasClass(''is-collapsed'') ) {',
'      $region.find("button.t-Button--hideShow").eq(0).click();',
'  } '))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(236869377305451641)
,p_name=>'DA_DELETE_DET'
,p_event_sequence=>200
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P33_SEQ_DEL'
,p_condition_element=>'P33_SEQ_DEL'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(236869460114451642)
,p_event_id=>wwv_flow_imp.id(236869377305451641)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>'Desea eliminar el registro?'
,p_attribute_02=>'Eliminar Detalle'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(237085474864215104)
,p_event_id=>wwv_flow_imp.id(236869377305451641)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'APEX_COLLECTION.DELETE_MEMBER (',
'    p_collection_name => ''CP_VALES_DET'',',
'    p_seq =>  :P33_SEQ_DEL);'))
,p_attribute_02=>'P33_SEQ_DEL'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(237085506557215105)
,p_event_id=>wwv_flow_imp.id(236869377305451641)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(236171910795980226)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(236869582496451643)
,p_name=>'da_edt_det'
,p_event_sequence=>210
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P33_SEQ_EDT'
,p_condition_element=>'P33_SEQ_EDT'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(236869869787451646)
,p_event_id=>wwv_flow_imp.id(236869582496451643)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P33_ZONA_ABM'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(236870079170451648)
,p_event_id=>wwv_flow_imp.id(236869582496451643)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P33_CANTIDAD_ABM'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(236870123836451649)
,p_event_id=>wwv_flow_imp.id(236869582496451643)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P33_CANTIDAD_ABM'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(236869713967451645)
,p_event_id=>wwv_flow_imp.id(236869582496451643)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P33_ZONA_ABM'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(237085605133215106)
,p_event_id=>wwv_flow_imp.id(236869582496451643)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P33_CANTIDAD_ABM'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(236869629112451644)
,p_event_id=>wwv_flow_imp.id(236869582496451643)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(236173542753980242)
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P33_NRO_COMPROBANTE'
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
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(246557763322036905)
,p_name=>'da_rendir'
,p_event_sequence=>220
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(246557661999036904)
,p_condition_element=>'P33_ESTADO'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'ENTREGADO'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(246557937016036907)
,p_event_id=>wwv_flow_imp.id(246557763322036905)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\00BFDesea Confirmar la RENDICION del Viatico?')
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(246558006998036908)
,p_event_id=>wwv_flow_imp.id(246557763322036905)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'',
'  inv.cpsvales.cambia_estado_viatico(pi_cod_empresa => :P_COD_EMPRESA,',
'                                     pi_ser_comprobante => :P33_SER_COMPROBANTE,',
'                                     pi_nro_comprobante => :P33_NRO_COMPROBANTE,',
'                                     pi_estado => ''RENDIDO''); '))
,p_attribute_02=>'P33_NRO_PLANILLA,P33_SER_COMPROBANTE,P33_NRO_COMPROBANTE'
,p_attribute_03=>'P33_MENSAJE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(246558102533036909)
,p_event_id=>wwv_flow_imp.id(246557763322036905)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(20410354632847847)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_CLEAR'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
' ',
':P33_FECHA_ALTA := NULL;',
':P33_USER_AUTORIZA := NULL; ',
':P33_FECHA_AUTORIZA := NULL; ',
':P33_USER_RENDICION := NULL; ',
':P33_FECHA_RENDICION := NULL; ',
':P33_USER_ENTREGA := NULL; ',
':P33_FECHA_ENTREGA := NULL; ',
':P33_NRO_COMPROBANTE:=NULL;',
'',
'        APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(P_COLLECTION_NAME => ''CP_VALES_DET'');'))
,p_process_clob_language=>'PLSQL'
,p_process_when=>'P33_NRO_COMPROBANTE'
,p_process_when_type=>'ITEM_IS_NULL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(8736682419197918)
,p_process_sequence=>30
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_INIT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    IF :P33_NRO_COMPROBANTE IS NULL THEN ',
'',
'        :P33_ESTADO      := ''SOLICITADO'';',
'        :P33_FECHA       := trunc(sysdate+1) ;',
'        :P33_FECHA_ALTA   := sysdate ;',
'        :P33_COD_USUARIO := :APP_USER;',
'        :P33_NRO_COMPROBANTE:=NULL;',
'',
'        declare',
'        	vsuc varchar(5); ',
'        begin',
'        		select cod_zona_suc ',
'        		 into vsuc',
'        		from sucursal_zona ',
'        		where cod_sucursal=  :P_COD_SUCURSAL;',
'',
'        	if vsuc =''AR'' then',
'        		:P33_SER_COMPROBANTE  := ''T'';',
'        	elsif vsuc =''SL''  then',
'        		:P33_SER_COMPROBANTE  :=''S'';',
'        	else',
'        		:P33_SER_COMPROBANTE  :=''C'';',
'        	end if; ',
'',
'        exception',
'        	when others then',
'        		:P33_SER_COMPROBANTE  :=''A'';',
'        end;',
'',
' ',
'',
'',
'    ',
'',
'    ELSIF :P33_NRO_COMPROBANTE IS NOT NULL THEN 	',
'        select SER_COMPROBANTE,',
'               NRO_COMPROBANTE,',
'               FECHA,',
'               A_ORDEN,',
'               EN_CONCEPTO,',
'               ESTADO,',
'               NRO_PLANILLA,',
'               OBSERVACION,',
'               TIPO, ',
'               COD_PERSONA,',
'               COD_USUARIO,',
'               FECHA_ALTA,',
'               USER_AUTORIZA,',
'               FECHA_AUTORIZA,',
'               USER_RENDICION,',
'               FECHA_RENDICION,',
'               USER_ENTREGA,',
'               FECHA_ENTREGA,',
'               TIpo_VIATICO,',
'               ACREDITACION ',
'      INTO  :P33_SER_COMPROBANTE,',
'            :P33_NRO_COMPROBANTE,',
'            :P33_FECHA,',
'            :P33_A_ORDEN,',
'            :P33_EN_CONCEPTO,',
'            :P33_ESTADO,',
'            :P33_NRO_PLANILLA,',
'            :P33_OBSERVACION,',
'            :P33_TIPO, ',
'            :P33_COD_PERSONA,',
'            :P33_COD_USUARIO,',
'            :P33_FECHA_ALTA,',
'            :P33_USER_AUTORIZA, --EL TRIGGER DE LA TABLA LO CAMBIA. ',
'            :P33_FECHA_AUTORIZA, ',
'            :P33_USER_RENDICION, --EL TRIGGER DE LA TABLA LO CAMBIA. ',
'            :P33_FECHA_RENDICION, ',
'            :P33_USER_ENTREGA, --EL TRIGGER DE LA TABLA LO CAMBIA. ',
'            :P33_FECHA_ENTREGA,',
'            :P33_TIPO_VIATICO,',
'            :P33_ACREDITACION',
'      from  CP_VALES',
'      where cod_empresa = :P_COD_EMPRESA',
'        and (:P33_NRO_PLANILLA IS NULL or NRO_PLANILLA=:P33_NRO_PLANILLA)',
'        and (:P33_NRO_COMPROBANTE IS NULL or NRO_COMPROBANTE=:P33_NRO_COMPROBANTE)',
'        and (:P33_SER_COMPROBANTE IS NULL or SER_COMPROBANTE=:P33_SER_COMPROBANTE);',
'',
'        ',
'        inv.cpsvales.recupera_detalle(pi_serie => :P33_SER_COMPROBANTE,  pi_numero => :P33_NRO_COMPROBANTE);',
'',
'',
'    ELSIF  :P33_NRO_PLANILLA IS NOT NULL THEN 	',
'    	:P33_TIPO :=''LOGISTICA'';',
'		select  ''Movil:''||V.descripcion ||chr(10)|| ''Cant.Ayundates:''||(decode(COD_AYUDANTE_1,null,0,1)+decode(COD_AYUDANTE_2,null,0,1)+decode(COD_AYUDANTE_3,null,0,1)),',
'                p.cod_persona , ',
'                ''VIATICO - Zona ''||Z.descripcion, ',
'                nvl(r.FECHA_SALIDA,trunc(sysdate+1))',
'           into :P33_OBSERVACION,',
'                :P33_COD_PERSONA,              ',
'                :P33_EN_CONCEPTO,',
'                :P33_FECHA',
'           from RP_REPARTO_CABECERA R,',
'                rp_zonas_reparto Z,',
'                rp_vehiculos V,',
'                rp_repartidores C, ',
'                personas p',
'          WHERE R.COD_EMPRESA= :P_COD_EMPRESA',
'     		AND r.nro_PLANILLA=:P33_NRO_PLANILLA',
'            AND Z.cod_zona_reparto = R.cod_zona_reparto',
'            AND R.cod_empresa =  V.cod_empresa',
'            and R.cod_vehiculo=  V.cod_vehiculo',
'            AND r.cod_empresa =  C.cod_empresa',
'            and r.cod_repartidor= C.cod_repartidor',
'            and C.cod_persona = p.cod_persona',
'            and nvl(r.estado,''P'')<>''R'';',
'    END IF;    ',
'EXCEPTION',
'    WHEN OTHERS THEN ',
'        :P33_OBSERVACION := null;',
'        :P33_COD_PERSONA := null;',
'        :P33_EN_CONCEPTO := null;',
'        :P33_FECHA       := null;',
'END;',
'',
'',
''))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(8738846029197940)
,p_process_sequence=>40
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_BUSCA_PERMISOS'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    :P33_BUSCA_PERMISO := busca_permiso (:P_COD_EMPRESA,',
'                                          ''CPSVALES'', ',
'                                          :APP_USER,--''CARMENPR''',
'                                          ''APRUEBA_VALE'' ) ; ',
'',
'    :P33_VER_PERSONAS:=busca_permiso (:P_COD_EMPRESA, ''CPSVALES'',  :APP_USER,''VER_PERSONAS'' );',
'EXCEPTION',
'    WHEN OTHERS THEN',
'     raise_application_error(-20000, sqlerrm ); ',
'END;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(9632451894471633)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_INSERT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    if :P33_NRO_COMPROBANTE IS NULL then',
'        begin',
'    	   Select nvl(max(NRO_COMPROBANTE),0)+1',
'    	     into :P33_NRO_COMPROBANTE',
'    	     from CP_VALES',
'    	    where cod_empresa     = :P_COD_EMPRESA',
'    	      and ser_COMPROBANTE = :P33_SER_COMPROBANTE;',
'        exception',
'            when others then',
'                :P33_NRO_COMPROBANTE := 1; ',
'        end;',
'    end if; ',
'',
'   CPSVALES.INSERTAR_NUEVO_REG (  PI_NRO_PLANILLA =>    :P33_NRO_PLANILLA, ',
'                                  PI_SER_COMPROBANTE => :P33_SER_COMPROBANTE, ',
'                                  PI_NRO_COMPROBANTE => :P33_NRO_COMPROBANTE, ',
'                                  PI_ESTADO =>          :P33_ESTADO,',
'                                  PI_A_ORDEN =>         :P33_A_ORDEN, ',
'                                  PI_EN_CONCEPTO =>     :P33_EN_CONCEPTO, ',
'                                  PI_OBSERVACION =>     :P33_OBSERVACION, ',
'                                  PI_SECTOR =>          :P33_TIPO,',
'                                  PI_TIPO =>            :P33_TIPO_VIATICO,',
'                                  PI_ACREDITACION =>    :P33_ACREDITACION,',
'                                  PI_COD_PERSONA =>     :P33_COD_PERSONA); ',
'   ---- apex_application.g_print_success_message := ''<span class="notification">Vale generado exitosamente</span>'';',
'    ----  apex_application.g_print_success_message := ''<span style="color:white"> Vale generado exitosamente <br> Vale: ''||:P33_SER_COMPROBANTE||'' - ''||:P33_NRO_COMPROBANTE ||''</br></span>'';',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        RAISE_APPLICATION_ERROR(-20000,SQLERRM);',
'END;',
'',
'',
'',
'',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(71080466062541812)
,p_process_when=>'P33_NRO_COMPROBANTE'
,p_process_when_type=>'ITEM_IS_NULL'
);
wwv_flow_imp.component_end;
end;
/
