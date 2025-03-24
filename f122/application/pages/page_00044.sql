prompt --application/pages/page_00044
begin
--   Manifest
--     PAGE: 00044
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
 p_id=>44
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'CCRECIBO - Recibo'
,p_alias=>'RECIBO'
,p_step_title=>'Recibo'
,p_allow_duplicate_submissions=>'N'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';',
'var htmldb_ch_message=''"OK_TO_GET_NEXT_PREV_PK_VALUE"'';',
''))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.apex-item-select:focus, .apex-item-text:focus, .apex-item-textarea:focus {',
'   background-color: yellow !important;',
'   border-color: red !important;',
'}',
'',
'.apex-item-select:focus, .apex-item-text:focus, .apex-item-textarea:focus {',
'   background-color: #ffed00 !important;',
'   border-color: red !important;',
'}',
'',
'  .tabla_color   td.t-Report-cell /*, .t-Form-label */ {',
'  color: darkblue  !important;',
'  border-color: #003a85;',
'}',
'',
' .t-Form-label   {',
'  color:navy  !important; ',
'}',
'',
'  th.t-Report-colHead,  th.t-Report-colHead a{',
'  background-color:  #fff6a4  !important;',
'  color: #003a85  !important;',
'  border-color: cadetblue;',
'}',
'',
' .a-IRR-header{',
'      background-color: #fff6a4  !important;',
'	  font-weight: bold !important;',
'      border:0.5px solid #16488a !important;',
'   }',
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
'/*',
't-Report-cell {',
'',
'font-size: var(--ut-report-cell-font-size, .95rem);',
'}*/',
'/*.t-Report-colHead {',
'    font-size: var(--ut-report-header-cell-font-size, var(--ut-report-cell-font-size, 1.9rem));',
'',
'}*/',
'td[headers="SER_REP_SOL"], #SER_REP_SOL , td[headers="NRO_REP_SOL"], #NRO_REP_SOL, #SEQ_ID , td[headers="SEQ_ID"]{',
'        display: none;',
'    }',
' ',
'',
'.apex-item-select , .apex-item-text , .apex-item-textarea , .apex-item-display-only{',
'   background-color: #f8f6ea !important; /*#fffef4*/',
'   border-width: 0.5px;',
'   border-color: #b4c6dd !important;   ',
'   font-weight: bold !important;   ',
'   /*color: darkblue!important;      */',
'   border-style: double !important;   ',
'} ',
'',
'',
' ',
' ',
'',
'  #P730_TOTAL_OT_CALL_CALCULADO {',
'    border: 2px solid #000; /* Borde negro de 2px */',
'    border-radius: 5px; /* Bordes redondeados */',
'    padding: 10px; /* Espaciado interno */    ',
'    background-color: #f9f9f9; /* Color de fondo */',
'    color: #333; /* Color del texto */',
'    text-align: right;',
'    font-size: x-large;',
'  }',
'',
'',
'',
'#REG_OT{',
'   background-color: #d0e0f783 !important;}',
'   ',
'#finalizar_ot {',
'    display: none !important;',
'}',
'',
'.t-BreadcrumbRegion {',
'    padding: 1px;',
'}',
'',
'.t-Region .t-Region-body {',
'    padding: 1px; ',
'}',
'.t-Body-content{',
'   background-color:  #487ab8 !important;}',
'',
'',
'.t-Form-fieldContainer:not(.js-show-label) .t-Form-labelContainer .t-Form-label {        ',
'    margin-top: -8px ;       ',
'    } ',
'',
'#P730_SEG_PRESUPUESTO{     ',
'  font-size: x-large ;',
'  background-color: #009688 !important;',
' border-width: 0.5px;',
'    border-color: #8BC34A !important;',
'    /* font-weight: bold !important; */',
'    color: #d30823 !important;',
'    border-style: double !important;',
'	text-align: center;',
'} ',
'',
'',
'',
'',
'',
'',
'    #overlay {',
'    position: fixed;',
'    top: 0;',
'    left: 0;',
'    width: 100%;',
'    height: 100%;',
'    background: rgba(255, 255, 255, 0.437); /* Fondo semitransparente */',
unistr('    z-index: 9999; /* Asegura que la capa de superposici\00F3n est\00E9 en la parte superior */'),
'    display: none; /* Inicialmente oculta la capa */',
'}',
'',
'.icon {',
'font-size: 48 px;',
'  width: 48px;',
'  height: 48px;',
'}',
'',
'#mapa {',
'    border-color: rgb(188, 232, 241);',
'    background-color: rgb(217, 237, 247);',
'    color: rgb(58, 135, 173);',
'    font-weight: bold;',
'    width: 839px;',
'    min-height: 100.667px;',
'    max-height: none;',
'    height: 664px;',
'}',
'',
'',
'.tabla_color   td.t-Report-cell , .t-Form-label  {',
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
'',
'tr:last-child td[headers="MONTO_TOTAL"] { ',
'    font-size: large; ',
'//    background: #d9ed92; ',
'}',
'',
' ',
unistr(' /* Centrar texto en el label asociado a un campo de texto espec\00EDfico */'),
'label[for="P730_SEG_PRESUPUESTO"] {',
'    text-align: center;',
'    display: block; /* Asegura que el label sea un bloque para aplicar el centrado */',
unistr('    width: 100%; /* Ajusta seg\00FAn sea necesario */'),
'	color: #d30823;',
'	font-weight: bolder;',
'	font-size: 300%',
'}',
'',
' ',
'',
''))
,p_page_css_classes=>'CSS_CLASS'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'03'
,p_last_updated_by=>'NZARATE'
,p_last_upd_yyyymmddhh24miss=>'20240924120759'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(219095123792536435)
,p_plug_name=>'Filtro'
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40108275410263656)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(234806982123906016)
,p_plug_name=>'Forma de cobro'
,p_region_name=>'formacobro'
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40108275410263656)
,p_plug_display_sequence=>70
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(234807570831906022)
,p_name=>'Detalle Pago'
,p_region_name=>'Detalle_pago'
,p_parent_plug_id=>wwv_flow_imp.id(234806982123906016)
,p_template=>wwv_flow_imp.id(40108275410263656)
,p_display_sequence=>10
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'SUB_REGIONS'
,p_item_display_point=>'BELOW'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'seq_id seq_id_dp,',
'c001 tipo,  (c002) importe,',
'c003 banco, c004 nro_valor,',
'         NVL(c020,''N'') producto_armado, null as remove',
'  from apex_collections',
' where collection_name = ''CC_FORMA_COBRO''',
' order by 1 asc'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P44_NRO_COMPROBANTE,P44_SER_COMPROBANTE'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(40147995650263667)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_report_total_text_format=>'Totales'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11381605826001485)
,p_query_column_id=>1
,p_column_alias=>'SEQ_ID_DP'
,p_column_display_sequence=>10
,p_column_heading=>'Orden'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11382091851001486)
,p_query_column_id=>2
,p_column_alias=>'TIPO'
,p_column_display_sequence=>20
,p_column_heading=>'Tipo'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11382431260001486)
,p_query_column_id=>3
,p_column_alias=>'IMPORTE'
,p_column_display_sequence=>50
,p_column_heading=>'Importe'
,p_use_as_row_header=>'N'
,p_column_format=>'999G999G999G999G990D00'
,p_column_alignment=>'RIGHT'
,p_sum_column=>'Y'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11382869107001486)
,p_query_column_id=>4
,p_column_alias=>'BANCO'
,p_column_display_sequence=>40
,p_column_heading=>'Banco'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11383298584001486)
,p_query_column_id=>5
,p_column_alias=>'NRO_VALOR'
,p_column_display_sequence=>30
,p_column_heading=>'Nro Valor'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11383684152001487)
,p_query_column_id=>6
,p_column_alias=>'PRODUCTO_ARMADO'
,p_column_display_sequence=>70
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11384012252001487)
,p_query_column_id=>7
,p_column_alias=>'REMOVE'
,p_column_display_sequence=>60
,p_use_as_row_header=>'N'
,p_column_link=>'javascript:void(null);'
,p_column_linktext=>'<span class="t-Icon fa fa-trash delete-note1" aria-hidden="true"></span>'
,p_column_link_attr=>'data-id=#SEQ_ID_DP#'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(404765732394223546)
,p_plug_name=>'Recibo'
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40108275410263656)
,p_plug_display_sequence=>20
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'Y'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(404817621893223386)
,p_name=>'Detalle'
,p_region_name=>'detalle'
,p_template=>wwv_flow_imp.id(40108275410263656)
,p_display_sequence=>50
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_item_display_point=>'BELOW'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'seq_id,',
'c002 TIP_COMPROBANTE, c003 SERIE_COMPROBANTE, C004 NRO_COMPROBANTE, C005 NRO_CUOTA,',
'        to_number(c006) as IMPORTE,',
'        to_number(c004) as quantity,',
'         (c006) as porc_descuento,',
'         (c007) as fecha_vencimiento, ',
'        to_number(c009) as total,',
'         NVL(c020,''N'') producto_armado,',
'       C010 AS ID_PEDIDO, TO_NUMBER(c001) as id_promo, null as remove',
'  from apex_collections',
' where collection_name = ''CC_DETALLE_RECIBOS''',
' order by 1 asc'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P44_NRO_COMPROBANTE,P44_SER_COMPROBANTE'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(40147995650263667)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_report_total_text_format=>'Totales'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11397072172001494)
,p_query_column_id=>1
,p_column_alias=>'SEQ_ID'
,p_column_display_sequence=>1
,p_column_heading=>'Or.'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11397496279001495)
,p_query_column_id=>2
,p_column_alias=>'TIP_COMPROBANTE'
,p_column_display_sequence=>27
,p_column_heading=>'Tip Comprobante'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11397851323001495)
,p_query_column_id=>3
,p_column_alias=>'SERIE_COMPROBANTE'
,p_column_display_sequence=>37
,p_column_heading=>'Serie Comprobante'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11398289724001495)
,p_query_column_id=>4
,p_column_alias=>'NRO_COMPROBANTE'
,p_column_display_sequence=>47
,p_column_heading=>'Nro Comprobante'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11398684541001495)
,p_query_column_id=>5
,p_column_alias=>'NRO_CUOTA'
,p_column_display_sequence=>57
,p_column_heading=>'Nro Cuota'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11399035002001495)
,p_query_column_id=>6
,p_column_alias=>'IMPORTE'
,p_column_display_sequence=>77
,p_column_heading=>'Importe'
,p_use_as_row_header=>'N'
,p_column_format=>'999G999G999G999G990D00'
,p_sum_column=>'Y'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11399452780001496)
,p_query_column_id=>7
,p_column_alias=>'QUANTITY'
,p_column_display_sequence=>8
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11399808378001496)
,p_query_column_id=>8
,p_column_alias=>'PORC_DESCUENTO'
,p_column_display_sequence=>9
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11400286036001496)
,p_query_column_id=>9
,p_column_alias=>'FECHA_VENCIMIENTO'
,p_column_display_sequence=>67
,p_column_heading=>'Fecha Vencimiento'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11400668693001496)
,p_query_column_id=>10
,p_column_alias=>'TOTAL'
,p_column_display_sequence=>12
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11401040019001496)
,p_query_column_id=>11
,p_column_alias=>'PRODUCTO_ARMADO'
,p_column_display_sequence=>16
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11401438590001497)
,p_query_column_id=>12
,p_column_alias=>'ID_PEDIDO'
,p_column_display_sequence=>13
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11401807573001497)
,p_query_column_id=>13
,p_column_alias=>'ID_PROMO'
,p_column_display_sequence=>14
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11402294572001497)
,p_query_column_id=>14
,p_column_alias=>'REMOVE'
,p_column_display_sequence=>87
,p_use_as_row_header=>'N'
,p_column_link=>'javascript:void(null);'
,p_column_linktext=>'<span class="t-Icon fa fa-trash delete-note" aria-hidden="true"></span>'
,p_column_link_attr=>'data-id=#SEQ_ID#'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11377068139001482)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(219095123792536435)
,p_button_name=>'Cargar'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Cargar'
,p_button_position=>'BELOW_BOX'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11379345619001484)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(234806982123906016)
,p_button_name=>'Cargar_forma_pago'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Cargar'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11386363610001488)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(404765732394223546)
,p_button_name=>'Anular'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Anular Recibo'
,p_button_position=>'CLOSE'
,p_button_condition=>'P44_NRO_COMPROBANTE'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_icon_css_classes=>'fa-save'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11402660545001497)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(404817621893223386)
,p_button_name=>'refresh'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187078917263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Refresh'
,p_button_position=>'EDIT'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-refresh'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11385944038001488)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(404765732394223546)
,p_button_name=>'NUEVO'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Nuevo'
,p_button_position=>'EDIT'
,p_button_css_classes=>'u-color-19-bg'
,p_icon_css_classes=>'fa-plus'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11403055475001497)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(404817621893223386)
,p_button_name=>'Add_item'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Agregar Comprobante'
,p_button_position=>'EDIT'
,p_icon_css_classes=>'fa-plus'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11386747410001489)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(404765732394223546)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Guardar Recibo'
,p_button_position=>'EDIT'
,p_button_condition=>'P44_NRO_COMPROBANTE'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_button_css_classes=>'u-color-22-text u-color-19-bg'
,p_icon_css_classes=>'fa-save'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11387179094001489)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(404765732394223546)
,p_button_name=>'Enviar_Correo'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Enviar'
,p_button_position=>'EDIT'
,p_button_css_classes=>'u-color-22-text u-color-19-bg'
,p_icon_css_classes=>'fa-paperclip'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11387501970001489)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(404765732394223546)
,p_button_name=>'Imprimir'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Imprimir'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:82:&SESSION.::&DEBUG.:::'
,p_button_css_classes=>'u-color-22-text u-color-19-bg'
,p_icon_css_classes=>'fa-print'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11387912857001489)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_imp.id(404765732394223546)
,p_button_name=>'Imprimir_1'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Imprimir'
,p_button_position=>'EDIT'
,p_button_css_classes=>'u-color-22-text u-color-19-bg'
,p_icon_css_classes=>'fa-print'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(861495064048195501)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_imp.id(404765732394223546)
,p_button_name=>'Volver'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Volver'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:54:&SESSION.::&DEBUG.:::'
,p_button_css_classes=>'u-color-19-bg'
,p_icon_css_classes=>'fa-backward'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(11428884158001510)
,p_branch_name=>'IR_PAGINA_78'
,p_branch_action=>'f?p=&APP_ID.:45:&SESSION.::&DEBUG.:45:P45_COD_MONEDA,P45_COD_CUSTODIO,P45_COD_CLIENTE,P45_SERIE_REC,P45_EMPRESA_ORIGEN:&P44_COD_MONEDA.,&P44_COD_CUSTODIO.,&P44_COD_CLIENTE.,&P44_SER_COMPROBANTE.,&P44_EMPRESA_ORIGEN.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(11403055475001497)
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(11428444090001510)
,p_branch_name=>'imprime_recibo'
,p_branch_action=>'https://ngosaeca.com.py/reportes/rest_v2/reports/reports/ccrecibomv.PDF?P_SER_COMPROBANTE=&P44_SER_COMPROBANTE.&P_NRO_COMPROBANTE=&P44_NRO_COMPROBANTE.&j_username=jasperadmin&j_password=jasperadmin'
,p_branch_point=>'BEFORE_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(11387912857001489)
,p_branch_sequence=>10
,p_branch_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_branch_condition=>'P44_EMPRESA_ORIGEN'
,p_branch_condition_text=>'NGO'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(11429684480001510)
,p_branch_name=>'Enviar_correo'
,p_branch_action=>'https://ngosaeca.com.py/reportes/rest_v2/reports/reports/ccrecibo.PDF?P_SER_COMPROBANTE=&P44_SER_COMPROBANTE.&P_NRO_COMPROBANTE=&P44_NRO_COMPROBANTE.&j_username=jasperadmin&j_password=jasperadmin'
,p_branch_point=>'BEFORE_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(11387179094001489)
,p_branch_sequence=>20
,p_branch_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_branch_condition=>'P44_EMPRESA_ORIGEN'
,p_branch_condition_text=>'NGO'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(11429206571001510)
,p_branch_name=>'imprime_recibo_CPH'
,p_branch_action=>'https://ngosaeca.com.py/reportes/rest_v2/reports/reports/ccrecibomvcph.PDF?P_SER_COMPROBANTE=&P44_SER_COMPROBANTE.&P_NRO_COMPROBANTE=&P44_NRO_COMPROBANTE.&j_username=jasperadmin&j_password=jasperadmin'
,p_branch_point=>'BEFORE_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(11387912857001489)
,p_branch_sequence=>30
,p_branch_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_branch_condition=>'P44_EMPRESA_ORIGEN'
,p_branch_condition_text=>'CPH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11377468238001483)
,p_name=>'P44_VENCIMIENTO_INI'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(219095123792536435)
,p_prompt=>'Vencimiento Inicial'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11377875917001483)
,p_name=>'P44_VENCIMIENTO_FIN'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(219095123792536435)
,p_prompt=>'Vencimiento Final'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11378262366001483)
,p_name=>'P44_EMISION_INI'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(219095123792536435)
,p_prompt=>'Emision Inicial'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11378669669001483)
,p_name=>'P44_EMISION_FIN'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(219095123792536435)
,p_prompt=>'Emision Final'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11379798213001484)
,p_name=>'P44_FORMA_PAGO'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(234806982123906016)
,p_prompt=>'Forma Pago'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ''EFECTIVO'' D, ''EFECTIVO'' C',
'from dual',
'UNION ALL',
'select ''CHEQUE'' D, ''CHEQUE'' C',
'from dual',
'UNION ALL',
'select ''RETENCION'' D, ''RETENCION'' C',
'from dual',
'UNION ALL',
'select ''TRANSFERENCIA'' D, ''TRANSFERENCIA'' C',
'from dual',
'UNION ALL',
' ',
'select ''TARJETA'' D, ''TARJETA'' C',
'from dual',
' '))
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11380129326001484)
,p_name=>'P44_BANCO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(234806982123906016)
,p_prompt=>'Banco'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'select nom_comercial, cod_per_juridica from personas_juridicas where cod_sector = bs_busca_parametro(''bs'',''SECTOR_BANCARIO'') order by nom_comercial'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11380590529001485)
,p_name=>'P44_NRO_VALOR'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(234806982123906016)
,p_prompt=>'Nro Valor'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11380948739001485)
,p_name=>'P44_IMPORTE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(234806982123906016)
,p_prompt=>'IMporte'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11384498160001487)
,p_name=>'P44_DELETE_PROMO_1'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(234807570831906022)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11384897995001487)
,p_name=>'P44_DELETE_ID_1'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(234807570831906022)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11385277346001488)
,p_name=>'P44_CANTIDAD_DETALLE_1'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(234807570831906022)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11388344499001490)
,p_name=>'P44_EMPRESA_ORIGEN'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(404765732394223546)
,p_item_default=>'NGO'
,p_prompt=>'Empresa'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ''NGO''D, ''NGO'' C FROM DUAL UNION ALL',
'select ''CPH''D, ''CPH'' C FROM DUAL UNION ALL',
'select ''BESTHOME''D, ''BH'' C FROM DUAL '))
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--radioButtonGroup'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'3'
,p_attribute_02=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11388769911001490)
,p_name=>'P44_ID_PEDIDO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(404765732394223546)
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
':P44_USUARIO||TO_CHAR(SYSDATE,''DDMMYYYYHHMMSS'') ID',
'FROM DUAL'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11389156178001490)
,p_name=>'P44_USUARIO'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(404765732394223546)
,p_source=>'&APP_USER.'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11389571774001490)
,p_name=>'P44_SER_COMPROBANTE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(404765732394223546)
,p_prompt=>'Serie'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186937130263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11389906563001491)
,p_name=>'P44_NRO_COMPROBANTE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(404765732394223546)
,p_prompt=>'Numero de Recibo'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186937130263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11390334233001491)
,p_name=>'P44_FEC_COMPROBANTE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(404765732394223546)
,p_prompt=>'Fecha'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186937130263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11390713811001491)
,p_name=>'P44_COD_CLIENTE'
,p_is_required=>true
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(404765732394223546)
,p_prompt=>'Cliente'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select nombre|| '' ''|| codigo_area|| '' ''|| num_telefono || '' ''||numero||'' ''||cod_cliente nombre, cod_cliente',
'from cc_clientes c, personas p, telef_personas pt, ident_personas pi ',
'where c.cod_empresa = ''1''',
'and c.cod_persona = p.cod_persona',
'and p.cod_persona = pt.cod_persona(+) ',
'and p.cod_persona = pi.cod_persona(+) ',
'and :P44_EMPRESA_ORIGEN=''NGO''',
'and nvl(c.estado,''X'') in(''B'',''C'', ''A'' )',
'UNION ALL',
'select nombre|| '' ''|| codigo_area|| '' ''|| num_telefono || '' ''||numero||'' ''||cod_cliente nombre, cod_cliente',
'from cc_clientes@DBLINK_CPH c, personas@DBLINK_CPH p, telef_personas@DBLINK_CPH pt, ident_personas@DBLINK_CPH pi ',
'where c.cod_empresa = ''1''',
'and c.cod_persona = p.cod_persona',
'and p.cod_persona = pt.cod_persona(+) ',
'and p.cod_persona = pi.cod_persona(+) ',
'and :P44_EMPRESA_ORIGEN=''CPH''',
'and nvl(c.estado,''X'') in(''B'',''C'', ''A'' )',
'union all',
'select nombre|| '' ''|| codigo_area|| '' ''|| num_telefono || '' ''||numero||'' ''||cod_cliente nombre, cod_cliente',
'from cc_clientes c, personas p, telef_personas pt, ident_personas pi ',
'where c.cod_empresa = ''18''',
'and c.cod_persona = p.cod_persona',
'and p.cod_persona = pt.cod_persona(+) ',
'and p.cod_persona = pi.cod_persona(+) ',
'and :P44_EMPRESA_ORIGEN=''BH''',
'and nvl(c.estado,''X'') in(''B'',''C'', ''A'' )',
'order by 1'))
,p_cSize=>10
,p_cMaxlength=>15
,p_tag_attributes=>'style="width:60px"'
,p_colspan=>3
,p_grid_column=>1
,p_field_template=>wwv_flow_imp.id(40186937130263678)
,p_item_icon_css_classes=>'fa-user'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'Y'
,p_attribute_05=>'N'
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
 p_id=>wwv_flow_imp.id(11391133212001491)
,p_name=>'P44_ANULADO'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(404765732394223546)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11391547222001491)
,p_name=>'P44_NOM_CLIENTE'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(404765732394223546)
,p_prompt=>'Nombre'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186937130263678)
,p_item_icon_css_classes=>'fa-user-check'
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11391908317001492)
,p_name=>'P44_COD_DIRECCION'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(404765732394223546)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11392368019001492)
,p_name=>'P44_DIR_CLIENTE'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(404765732394223546)
,p_prompt=>'Dir Cliente'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_colspan=>3
,p_grid_column=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_icon_css_classes=>'fa-map-o'
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11392799238001492)
,p_name=>'P44_TEL_CLIENTE'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(404765732394223546)
,p_prompt=>'Telefono'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_icon_css_classes=>'fa-phone'
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11393196922001492)
,p_name=>'P44_RUC'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(404765732394223546)
,p_prompt=>'RUC'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186937130263678)
,p_item_icon_css_classes=>'fa-address-card-o'
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11393511446001492)
,p_name=>'P44_COD_COBRADOR'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(404765732394223546)
,p_prompt=>'Cobrador'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select NOMBRE ||''(''||COD_COBRADOR||'') - NGO''   as d,',
'       C.COD_COBRADOR as r',
'  from CC_COBRADORES C, PERSONAS P',
'WHERE C.COD_EMPRESA=''1''',
'AND C.COD_PERSONA=P.COD_PERSONA',
'and activo=''S''',
'AND :P44_EMPRESA_ORIGEN=''NGO''',
'and cod_cobrador in (''38'',''10'',''119'',''46'',''95'',''96'',''49'',''97'',''123'',''107'',''64'')',
'UNION ALL',
'select NOMBRE ||''(''||COD_COBRADOR||'') - CPH''   as d,',
'       C.COD_COBRADOR as r',
'  from CC_COBRADORES@DBLINK_CPH C, PERSONAS@DBLINK_CPH P',
'WHERE C.COD_EMPRESA=''1''',
'AND C.COD_PERSONA=P.COD_PERSONA',
'and activo=''S''',
'AND :P44_EMPRESA_ORIGEN=''CPH''',
' ',
'and cod_cobrador in( ''51'',''50'',''104'',''53'',''67'',''65'',''52'',''68'',''123'',''107'',''64'')',
'UNION ALL',
'select NOMBRE ||''(''||COD_COBRADOR||'') - BH''   as d,',
'       C.COD_COBRADOR as r',
'  from CC_COBRADORES C, PERSONAS P',
'WHERE C.COD_EMPRESA=''18''',
'AND C.COD_PERSONA=P.COD_PERSONA',
'AND :P44_EMPRESA_ORIGEN=''BH''',
'and activo=''S'' ',
' order by 1'))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P44_EMPRESA_ORIGEN'
,p_ajax_items_to_submit=>'P44_EMPRESA_ORIGEN'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186937130263678)
,p_item_icon_css_classes=>'fa-user-headset'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11393970673001493)
,p_name=>'P44_COD_CUSTODIO'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(404765732394223546)
,p_item_default=>'P_COD_CUSTODIO'
,p_item_default_type=>'ITEM'
,p_prompt=>'Custodio'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select descripcion ||''(''||cod_custodio||'') - NGO'' descripcion, cod_custodio',
'from cc_custodios ',
'where cod_empresa=''1''',
'AND ACTIVO=''S''',
'AND :P44_EMPRESA_ORIGEN=''NGO''',
'UNION ALL',
'select descripcion ||''(''||cod_custodio||'') - BH'' descripcion, cod_custodio',
'from cc_custodios ',
'where cod_empresa=''18''',
'AND ACTIVO=''S''',
'AND :P44_EMPRESA_ORIGEN=''BH''',
'UNION ALL',
'select descripcion ||''(''||cod_custodio||'') - CPH'' descripcion, cod_custodio',
'from cc_custodios@DBLINK_CPH ',
'where cod_empresa=''1''',
'AND ACTIVO=''S'' ',
'AND :P44_EMPRESA_ORIGEN=''CPH''',
'ORDER BY 1'))
,p_lov_cascade_parent_items=>'P44_EMPRESA_ORIGEN'
,p_ajax_items_to_submit=>'P44_EMPRESA_ORIGEN'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186937130263678)
,p_item_icon_css_classes=>'fa-user-headset'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11394342512001493)
,p_name=>'P44_COD_MONEDA'
,p_is_required=>true
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(404765732394223546)
,p_prompt=>'Moneda'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LV_MONEDAS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select descripcion as d,',
'       cod_moneda r',
'  from monedas',
' order by 1'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(40186937130263678)
,p_item_icon_css_classes=>'fa-money'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11394749392001493)
,p_name=>'P44_TIP_CAMBIO'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(404765732394223546)
,p_prompt=>'Tip Cambio'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186937130263678)
,p_item_icon_css_classes=>'fa-dollar'
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11395138741001493)
,p_name=>'P44_TIP_CAMBIO_COMPRA'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(404765732394223546)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11395518481001493)
,p_name=>'P44_CAMBIO_MONEDA_PRECIO'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(404765732394223546)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11395985954001494)
,p_name=>'P44_COMENTARIO'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_imp.id(404765732394223546)
,p_prompt=>'Comentario'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>150
,p_cMaxlength=>150
,p_grid_column=>1
,p_field_template=>wwv_flow_imp.id(40186937130263678)
,p_item_icon_css_classes=>'fa-clipboard-edit'
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11396344566001494)
,p_name=>'P44_COD_ARTICULO'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_imp.id(404765732394223546)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11403418882001498)
,p_name=>'P44_DELETE_PROMO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(404817621893223386)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11403875437001498)
,p_name=>'P44_DELETE_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(404817621893223386)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11404264198001498)
,p_name=>'P44_CANTIDAD_DETALLE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(404817621893223386)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(861495176634195502)
,p_name=>'P44_PARAM_NRO'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_imp.id(404765732394223546)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(861495201649195503)
,p_name=>'P44_PARAM_SER'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_imp.id(404765732394223546)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(11404740656001499)
,p_validation_name=>'validar_codigo_cliente'
,p_validation_sequence=>10
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ''S''',
'from cc_clientes a',
'where a.cod_empresa=''1''',
'and a.cod_cliente=:P44_COD_CLIENTE',
'    and nvl(:P44_EMPRESA_ORIGEN,''NGO'')=''NGO''',
'    UNION ALL',
'    select ''S''',
'from cc_clientes@DBLINK_CPH a',
'where a.cod_empresa=''1''',
'and a.cod_cliente=:P44_COD_CLIENTE',
'    and :P44_EMPRESA_ORIGEN=''CPH''',
'    UNION ALL',
'    select ''S''',
'from cc_clientes a',
'where a.cod_empresa=''18''',
'and a.cod_cliente=:P44_COD_CLIENTE',
'    and nvl(:P44_EMPRESA_ORIGEN,''NGO'')=''BH'''))
,p_validation_type=>'EXISTS'
,p_error_message=>'No se encuentra el codigo de cliente'
,p_always_execute=>'Y'
,p_associated_item=>wwv_flow_imp.id(11390713811001491)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(11405179702001499)
,p_validation_name=>'va_cobrador'
,p_validation_sequence=>20
,p_validation=>'P44_COD_COBRADOR'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'El Codigo de cobrador no puede ser nulo'
,p_always_execute=>'Y'
,p_associated_item=>wwv_flow_imp.id(11393511446001492)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(11405538304001499)
,p_validation_name=>'va_cobrador_empresa'
,p_validation_sequence=>30
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select    C.COD_COBRADOR  ',
'  from CC_COBRADORES C, PERSONAS P',
'WHERE C.COD_EMPRESA=''1''',
'AND C.COD_PERSONA=P.COD_PERSONA',
'and activo=''S''',
'and :P44_EMPRESA_ORIGEN=''NGO''',
'AND :P44_COD_COBRADOR=COD_COBRADOR',
'and cod_cobrador in (''38'',''10'',''119'',''46'',''95'',''96'',''49'',''97'',''64'')',
'UNION ALL',
'select    C.COD_COBRADOR',
'  from CC_COBRADORES@DBLINK_CPH C, PERSONAS@DBLINK_CPH P',
'WHERE C.COD_EMPRESA=''1''',
'AND C.COD_PERSONA=P.COD_PERSONA',
'and activo=''S''',
' and :P44_EMPRESA_ORIGEN=''CPH''',
' AND :P44_COD_COBRADOR=COD_COBRADOR',
'and cod_cobrador in( ''51'',''50'',''104'',''53'',''67'',''65'',''52'',''68'')'))
,p_validation_type=>'EXISTS'
,p_error_message=>'El cobrador es invalido'
,p_associated_item=>wwv_flow_imp.id(11393511446001492)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(11405937327001499)
,p_validation_name=>'New'
,p_validation_sequence=>40
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select  cod_custodio ',
'from cc_custodios ',
'where cod_empresa=''1''',
'AND ACTIVO=''S''',
'and :P44_EMPRESA_ORIGEN=''NGO''',
' union all',
' select cod_custodio',
' from cc_custodios@DBLINK_CPH ',
'where cod_empresa=''1''',
'AND ACTIVO=''S''',
'and :P44_EMPRESA_ORIGEN=''CPH'''))
,p_validation_type=>'EXISTS'
,p_error_message=>'Debe Seleccionar el custodio'
,p_associated_item=>wwv_flow_imp.id(11393970673001493)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(11410599534001502)
,p_name=>'datos_cliente'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P44_COD_CLIENTE'
,p_condition_element=>'P44_PARAM_NRO'
,p_triggering_condition_type=>'NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11411006523001502)
,p_event_id=>wwv_flow_imp.id(11410599534001502)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'begin select	  p.nombre   ,',
'				     d.cod_direccion cod_dir, ',
'				     d.detalle||''-''||ci.descripcion dir_cliente, ',
'				     t.codigo_area||'' ''||t.num_telefono,',
'				     i.numero',
'                                     INTO :P44_NOM_CLIENTE,',
'                                     :P44_COD_DIRECCION,',
'                                     :P44_DIR_CLIENTE,:P44_TEL_CLIENTE,',
'                                     :P44_RUC ',
' ',
'				from cc_clientes c, personas p, cc_causales b,',
'				     direc_personas d, ',
'				     telef_personas t, ',
'				     ident_personas i, ',
'				     CIUDADES CI',
'			 where c.cod_empresa = ''1''',
'			   and c.cod_cliente = :P44_cod_cliente',
'			   and c.cod_persona = p.cod_persona',
'			   and c.cod_causal  = b.cod_causal(+)',
'			   and c.cod_persona = d.cod_persona(+)',
'			   and nvl(d.por_defecto(+),''N'') = ''S''',
'			   and c.cod_persona             = t.cod_persona(+)',
'			   and nvl(t.por_defecto(+),''N'') = ''S''',
'			   and c.cod_persona           = i.cod_persona(+)',
'			   and nvl(i.cod_ident(+),''X'') = ''RUC''',
'			   AND CI.COD_PAIS (+)     = D.COD_PAIS',
'			   AND CI.COD_PROVINCIA (+)= D.COD_PROVINCIA',
'			   AND CI.COD_CIUDAD (+)   = D.COD_CIUDAD',
'               and :P44_EMPRESA_ORIGEN=''NGO''',
'			   and rownum = 1',
'               UNION ALL',
'               select	  p.nombre   ,',
'				     d.cod_direccion cod_dir, ',
'				     d.detalle||''-''||ci.descripcion dir_cliente, ',
'				     t.codigo_area||'' ''||t.num_telefono,',
'				     i.numero',
'                                   ',
' ',
'				from cc_clientes c, personas p, cc_causales b,',
'				     direc_personas d, ',
'				     telef_personas t, ',
'				     ident_personas i, ',
'				     CIUDADES CI',
'			 where c.cod_empresa = ''18''',
'			   and c.cod_cliente = :P44_cod_cliente',
'			   and c.cod_persona = p.cod_persona',
'			   and c.cod_causal  = b.cod_causal(+)',
'			   and c.cod_persona = d.cod_persona(+)',
'			   and nvl(d.por_defecto(+),''N'') = ''S''',
'			   and c.cod_persona             = t.cod_persona(+)',
'			   and nvl(t.por_defecto(+),''N'') = ''S''',
'			   and c.cod_persona           = i.cod_persona(+)',
'			   and nvl(i.cod_ident(+),''X'') = ''RUC''',
'			   AND CI.COD_PAIS (+)     = D.COD_PAIS',
'			   AND CI.COD_PROVINCIA (+)= D.COD_PROVINCIA',
'			   AND CI.COD_CIUDAD (+)   = D.COD_CIUDAD',
'               and :P44_EMPRESA_ORIGEN=''BH''',
'			   and rownum = 1',
'               UNION ALL',
'                select	     p.nombre,',
'				     d.cod_direccion cod_dir, ',
'				     d.detalle||''-''||ci.descripcion dir_cliente, ',
'				     t.codigo_area||'' ''||t.num_telefono,',
'				     i.numero',
'                                     ',
' ',
'				from cc_clientes@DBLINK_CPH c, personas@DBLINK_CPH p, cc_causales@DBLINK_CPH b,',
'				     direc_personas@DBLINK_CPH d, ',
'				     telef_personas@DBLINK_CPH t, ',
'				     ident_personas@DBLINK_CPH i, ',
'				     CIUDADES@DBLINK_CPH CI',
'			 where c.cod_empresa = ''1''',
'			   and c.cod_cliente = :P44_cod_cliente',
'			   and c.cod_persona = p.cod_persona',
'			   and c.cod_causal  = b.cod_causal(+)',
'			   and c.cod_persona = d.cod_persona(+)',
'			   and nvl(d.por_defecto(+),''N'') = ''S''',
'			   and c.cod_persona             = t.cod_persona(+)',
'			   and nvl(t.por_defecto(+),''N'') = ''S''',
'			   and c.cod_persona           = i.cod_persona(+)',
'			   and nvl(i.cod_ident(+),''X'') = ''RUC''',
'			   AND CI.COD_PAIS (+)     = D.COD_PAIS',
'			   AND CI.COD_PROVINCIA (+)= D.COD_PROVINCIA',
'			   AND CI.COD_CIUDAD (+)   = D.COD_CIUDAD',
'               and :P44_EMPRESA_ORIGEN=''CPH''',
'			   and rownum = 1;',
'               exception',
'               when others then null;',
'                           END;',
'                           BEGIN',
'apex_collection.CREATE_OR_TRUNCATE_COLLECTION (''CC_RECIBOS'');',
' ',
'END;',
'                           end;'))
,p_attribute_02=>'P44_COD_CLIENTE,P44_EMPRESA_ORIGEN'
,p_attribute_03=>'P44_DIR_CLIENTE,P44_TEL_CLIENTE,P44_RUC,P44_NOM_CLIENTE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11411594991001502)
,p_event_id=>wwv_flow_imp.id(11410599534001502)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var item_1 = apex.item("P44_NRO_COMPROBANTE").getValue();',
'var item_2 = apex.item("P44_COD_CLIENTE").getValue();',
'',
'if (item_2 == '''' && item_1 == '''' ){   ',
'    apex.item("P44_EMPRESA_ORIGEN").enable();    ',
'}else{   ',
'apex.item("P44_EMPRESA_ORIGENk").disable();',
'     ',
'};'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(11411999165001502)
,p_name=>'tipo_cambio'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P44_COD_MONEDA'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11412438971001503)
,p_event_id=>wwv_flow_imp.id(11411999165001502)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  select  tipo_cambio_dia,  tipo_cambio_compra',
'    into :P44_tip_cambio, :P44_tip_cambio_compra',
'    from monedas',
'   where cod_moneda = :P44_cod_moneda;',
'   ',
'   ',
'   BEGIN',
'  Select  m.tipo_cambio_credito',
'    into :P44_CAMBIO_MONEDA_PRECIO',
'    from monedas m, parametros_generales p',
'   where p.cod_modulo = ''ST''',
'     and p.parametro = ''COD_MONEDA_PREC''',
'     and p.valor = m.cod_moneda;',
'EXCEPTION',
'  when others then',
'    :P44_CAMBIO_MONEDA_PRECIO:= 1 ;',
'END;  ',
'   ',
'EXCEPTION',
'  when others then',
'  ',
'  NULL;',
'  END;'))
,p_attribute_02=>'P44_COD_MONEDA,P44_CAMBIO_MONEDA_PRECIO'
,p_attribute_03=>'P44_TIP_CAMBIO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(11412814810001503)
,p_name=>'refresh_detalle'
,p_event_sequence=>70
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P44_COD_ARTICULO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11413377151001503)
,p_event_id=>wwv_flow_imp.id(11412814810001503)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(404817621893223386)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(11413730578001503)
,p_name=>'DELETE_DETALLE'
,p_event_sequence=>80
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'.delete-note'
,p_bind_type=>'live'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11414225625001503)
,p_event_id=>wwv_flow_imp.id(11413730578001503)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>'Esta seguro de borrar la linea'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11414768932001504)
,p_event_id=>wwv_flow_imp.id(11413730578001503)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P44_DELETE_ID'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'$(this.triggeringElement).parent().data(''id'')'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11415215166001504)
,p_event_id=>wwv_flow_imp.id(11413730578001503)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'IF TO_NUMBER(:P44_DELETE_ID)<>0 THEN',
'Begin',
'',
'    apex_collection.delete_members( ',
'        p_collection_name => ''CC_DETALLE_RECIBOS'',',
'        p_attr_number     => 12,',
'        p_attr_value      => :P44_DELETE_ID );',
'        exception when others then null;',
'    ',
'End;',
'END IF;',
'BEGIN',
'    APEX_COLLECTION.DELETE_MEMBER(',
'        p_collection_name => ''CC_DETALLE_RECIBOS'',',
'        p_seq => TO_NUMBER(:P44_DELETE_ID));',
'            END;',
'',
'',
'',
'end;'))
,p_attribute_02=>'P44_DELETE_ID,P44_DELETE_PROMO'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11415786910001504)
,p_event_id=>wwv_flow_imp.id(11413730578001503)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(11416160360001504)
,p_name=>'DELETE_DETALLE_FC'
,p_event_sequence=>90
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'.delete-note1'
,p_bind_type=>'live'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11416621741001504)
,p_event_id=>wwv_flow_imp.id(11416160360001504)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>'Esta seguro de borrar la linea de Forma de Cobro'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11417174973001505)
,p_event_id=>wwv_flow_imp.id(11416160360001504)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P44_DELETE_ID_1'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'$(this.triggeringElement).parent().data(''id'')'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11417667070001505)
,p_event_id=>wwv_flow_imp.id(11416160360001504)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'/*IF TO_NUMBER(:P44_DELETE_ID_1)<>0 THEN',
'Begin',
'',
'    /pex_collection.delete_members( ',
'        p_collection_name => ''CC_FORMA_COBRO'',',
'        p_attr_number     => 12,',
'        p_attr_value      => :P44_DELETE_ID_1 );',
'        exception when others then null;',
'    ',
'End;',
'END IF;*/',
'BEGIN',
'    APEX_COLLECTION.DELETE_MEMBER(',
'        p_collection_name => ''CC_FORMA_COBRO'',',
'        p_seq => TO_NUMBER(:P44_DELETE_ID_1));',
'            END;',
'',
'',
'',
'end;'))
,p_attribute_02=>'P44_DELETE_ID_1'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11418183127001505)
,p_event_id=>wwv_flow_imp.id(11416160360001504)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(11418512693001505)
,p_name=>'expandir_region'
,p_event_sequence=>100
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11419054850001505)
,p_event_id=>wwv_flow_imp.id(11418512693001505)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P44_CANTIDAD_DETALLE'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select count(*) ',
'from apex_collections',
' where collection_name = ''CC_DETALLE_RECIBOS '''))
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11419518189001506)
,p_event_id=>wwv_flow_imp.id(11418512693001505)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(404765732394223546)
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var numEntries = $v("P44_CANTIDAD_DETALLE"),',
'    npedido = $v("P44_NRO_COMPROBANTE")',
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
'//expanded',
'//collapsed'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(11419928552001506)
,p_name=>'da_carga_collection'
,p_event_sequence=>110
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P44_NRO_COMPROBANTE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11420499353001506)
,p_event_id=>wwv_flow_imp.id(11419928552001506)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'apex_collection.CREATE_OR_TRUNCATE_COLLECTION (''CC_RECIBO'');',
'',
'',
'',
'APEX_COLLECTION.ADD_MEMBER(p_collection_name=>''CC_RECIBO'',',
'                             ',
'                                p_c001           =>''P_SER_RECIBO'',',
'                                p_c002           =>:P44_SER_COMPROBANTE,',
'      p_c003 => :P44_NRO_COMPROBANTE',
'                               );',
'COMMIT;',
'',
'',
'END;',
''))
,p_attribute_02=>'P44_SER_COMPROBANTE,P44_NRO_COMPROBANTE'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(11420833097001506)
,p_name=>'Oculta_boton'
,p_event_sequence=>120
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11421321412001506)
,p_event_id=>wwv_flow_imp.id(11420833097001506)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(11387501970001489)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(11421772772001507)
,p_name=>'da_cargar_saldos'
,p_event_sequence=>130
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(11377068139001482)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11422260607001507)
,p_event_id=>wwv_flow_imp.id(11421772772001507)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if   :P44_EMPRESA_ORIGEN=''NGO'' then',
'if :P44_EMISION_FIN is not null and   :P44_VENCIMIENTO_FIN is not null then	',
'     apex_application.g_print_success_message := ''<span style="color:red">La busqueda solo se puede aplicar a un periodo. Emision o solo Vencimiento.</span>'';  ',
'else	',
'declare l_order_id varchar2(100); begin ',
'BEGIN',
'    SELECT MAX(seq_id)',
'     INTO l_order_id',
'    FROM apex_collections',
'    WHERE collection_name=''CC_RECIBOS''',
'    AND ROWNUM=1;',
'    EXCEPTION WHEN OTHERS THEN ',
'     l_order_id := NULL ;',
'    END;',
'    IF l_order_id IS NULL THEN  ',
'apex_collection.CREATE_OR_TRUNCATE_COLLECTION (''CC_RECIBOS'');',
'    apex_collection.CREATE_OR_TRUNCATE_COLLECTION (''CC_DETALLE_RECIBOS'');  ',
'end if;  ',
'end;',
'    apex_collection.add_member(',
'            p_collection_name => ''CC_RECIBOS'',p_c001=> :p44_SEr_comprobante , p_c002 => :p44_NRO_COMPROBANTE, p_c003  => :P44_COD_CLIENTE,',
'            p_c004          => :P44_NOM_CLIENTE, p_c005            => :P44_COD_COBRADOR, p_c006            => :P44_COD_CUSTODIO, ',
'            p_c007            => :P44_cod_moneda,p_c008            => :P44_COMENTARIO, p_c009            => :P44_TIP_CAMBIO   )  ;',
'if :P44_EMISION_FIN is not null then',
'	declare',
'   cursor xsal is',
'     select c.tipo_comprobante, c.ser_comprobante, c.nro_comprobante, c.nro_cuota, c.nro_valor ,',
'      c.saldo_cuota - nvl( c.rec_pendientes,0) as saldo_cuota, c.monto_cuota, c.cod_moneda_cuota, c.fec_vencimiento, ',
'      c.fec_acobrar, c.cod_custodio ,c.fec_origen',
'from cc_saldos c ',
'where c.cod_empresa = ''1''',
'and c.cod_cliente = :P44_cod_cliente ',
'and c.Fec_Origen between :P44_EMISION_INI and :P44_EMISION_FIN ',
'and ( c.saldo_cuota - nvl( c.rec_pendientes,0)) <> 0 ',
'/*and ( c.cod_custodio = :P44_cod_custodio or c.cod_custodio ',
'in ( select cod_custodio from usuarios_custodios where cod_empresa = ''1'' and cod_usuario = V(''APP_USER'')))*/',
'order by c.fec_origen, c.tipo_comprobante, c.ser_comprobante, c.nro_comprobante, c.nro_cuota asc ;      ',
'   vcont number ;     ',
'begin',
'   for x in xsal loop',
'begin    ',
'          apex_collection.add_member(',
'            p_collection_name => ''CC_DETALLE_RECIBOS'',',
'            p_c001            => :P44_COD_CLIENTE, ',
'            p_c002            => x.tipo_comprobante, ',
'            p_c003            => x.ser_comprobante,',
'            p_c004            => x.nro_comprobante,',
'            p_c005            =>x.nro_cuota,',
'            p_c006            => x.saldo_cuota ,',
'            p_c007              => x.fec_vencimiento,',
'            p_c008 => x.fec_origen )  ; ',
'end;      ',
'   end loop ;  ',
'end ;',
'else',
'	declare',
'   cursor xsal is',
'     select c.tipo_comprobante, c.ser_comprobante, c.nro_comprobante, c.nro_cuota, c.nro_valor , ',
'     c.saldo_cuota - nvl( c.rec_pendientes,0) as saldo_cuota, ',
'     c.monto_cuota, c.cod_moneda_cuota, c.fec_vencimiento, c.fec_acobrar, c.cod_custodio , c.fec_origen',
'from cc_saldos c ',
'where c.cod_empresa = ''1''',
'and c.cod_cliente = :p44_cod_cliente ',
'and c.fec_vencimiento between :P44_VENCIMIENTO_INI   and :P44_VENCIMIENTO_FIN ',
'and ( c.saldo_cuota - nvl( c.rec_pendientes,0)) <> 0 ',
'/*and ( c.cod_custodio = :P44_cod_custodio or c.cod_custodio ',
'in( select cod_custodio from usuarios_custodios where cod_empresa = ''1'' and cod_usuario = V(''APP_USER'')))*/',
'order by c.fec_origen, c.tipo_comprobante, c.ser_comprobante, c.nro_comprobante, c.nro_cuota asc ;      ',
'   vcont number ;     ',
'begin   ',
'   for x in xsal loop',
'      vcont := nvl( vcont, 0 ) + 1 ;      ',
'     apex_collection.add_member(',
'            p_collection_name => ''CC_DETALLE_RECIBOS'',',
'            p_c001            => :P44_COD_CLIENTE, ',
'            p_c002            => x.tipo_comprobante, ',
'            p_c003            => x.ser_comprobante,',
'            p_c004            => x.nro_comprobante,',
'            p_c005            =>x.nro_cuota,',
'            p_c006            => x.saldo_cuota,',
'            p_c007              => x.fec_vencimiento,            ',
'            p_c008 => x.fec_origen     )  ; ',
'   end loop ;',
'   end ;	',
'end if;',
'end if;',
'end if;'))
,p_attribute_02=>'P44_VENCIMIENTO_INI,P44_VENCIMIENTO_FIN,P44_COD_CLIENTE,P44_EMISION_INI,P44_EMISION_FIN,P44_EMPRESA_ORIGEN'
,p_attribute_05=>'PLSQL'
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
 p_id=>wwv_flow_imp.id(11422761848001507)
,p_event_id=>wwv_flow_imp.id(11421772772001507)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if   :P44_EMPRESA_ORIGEN=''CPH'' then',
'if :P44_EMISION_FIN is not null and   :P44_VENCIMIENTO_FIN is not null then	',
'     apex_application.g_print_success_message := ''<span style="color:red">La busqueda solo se puede aplicar a un periodo. Emision o solo Vencimiento.</span>'';  ',
'else	',
'declare l_order_id varchar2(100); begin ',
'BEGIN',
'    SELECT MAX(seq_id)',
'     INTO l_order_id',
'    FROM apex_collections',
'    WHERE collection_name=''CC_RECIBOS''',
'    AND ROWNUM=1;',
'    EXCEPTION WHEN OTHERS THEN ',
'     l_order_id := NULL ;',
'    END;',
'    IF l_order_id IS NULL THEN  ',
'apex_collection.CREATE_OR_TRUNCATE_COLLECTION (''CC_RECIBOS'');',
'    apex_collection.CREATE_OR_TRUNCATE_COLLECTION (''CC_DETALLE_RECIBOS'');  ',
'end if;  ',
'end;',
'    apex_collection.add_member(',
'            p_collection_name => ''CC_RECIBOS'',p_c001=> :p44_SEr_comprobante , p_c002 => :p44_NRO_COMPROBANTE, p_c003  => :P44_COD_CLIENTE,',
'            p_c004          => :P44_NOM_CLIENTE, p_c005            => :P44_COD_COBRADOR, p_c006            => :P44_COD_CUSTODIO, ',
'            p_c007            => :P44_cod_moneda,p_c008            => :P44_COMENTARIO, p_c009            => :P44_TIP_CAMBIO   )  ;',
'if :P44_EMISION_FIN is not null then',
'	declare',
'   cursor xsal is',
'     select c.tipo_comprobante, c.ser_comprobante, c.nro_comprobante, c.nro_cuota, c.nro_valor ,',
'      c.saldo_cuota - nvl( c.rec_pendientes,0) as saldo_cuota, c.monto_cuota, c.cod_moneda_cuota, c.fec_vencimiento, c.fec_acobrar, c.cod_custodio ,c.fec_origen',
'from cc_saldos@DBLINK_CPH c ',
'where c.cod_empresa = ''1''',
'and c.cod_cliente = :P44_cod_cliente ',
'and c.Fec_Origen between :P44_EMISION_INI and :P44_EMISION_FIN ',
'and ( c.saldo_cuota - nvl( c.rec_pendientes,0)) <> 0  ',
'order by c.fec_origen, c.tipo_comprobante, c.ser_comprobante, c.nro_comprobante, c.nro_cuota asc ;      ',
'   vcont number ;     ',
'begin',
'   for x in xsal loop',
'begin    ',
'          apex_collection.add_member(',
'            p_collection_name => ''CC_DETALLE_RECIBOS'',',
'            p_c001            => :P44_COD_CLIENTE, ',
'            p_c002            => x.tipo_comprobante, ',
'            p_c003            => x.ser_comprobante,',
'            p_c004            => x.nro_comprobante,',
'            p_c005            =>x.nro_cuota,',
'            p_c006            => x.saldo_cuota ,',
'            p_c007              => x.fec_vencimiento,',
'            p_c008 => x.fec_origen )  ; ',
'end;      ',
'   end loop ;  ',
'end ;',
'else',
'	declare',
'   cursor xsal is',
'     select c.tipo_comprobante, c.ser_comprobante, c.nro_comprobante, c.nro_cuota, c.nro_valor , ',
'     c.saldo_cuota - nvl( c.rec_pendientes,0) as saldo_cuota, c.monto_cuota, c.cod_moneda_cuota, ',
'     c.fec_vencimiento, c.fec_acobrar, c.cod_custodio , c.fec_origen',
'from cc_saldos@DBLINK_CPH c ',
'where c.cod_empresa = ''1''',
'and c.cod_cliente = :p44_cod_cliente ',
'and c.fec_vencimiento between :P44_VENCIMIENTO_INI   and :P44_VENCIMIENTO_FIN ',
'and ( c.saldo_cuota - nvl( c.rec_pendientes,0)) <> 0  ',
'order by c.fec_origen, c.tipo_comprobante, c.ser_comprobante, c.nro_comprobante, c.nro_cuota asc ;      ',
'   vcont number ;     ',
'begin   ',
'   for x in xsal loop',
'      vcont := nvl( vcont, 0 ) + 1 ;      ',
'     apex_collection.add_member(',
'            p_collection_name => ''CC_DETALLE_RECIBOS'',',
'            p_c001            => :P44_COD_CLIENTE, ',
'            p_c002            => x.tipo_comprobante, ',
'            p_c003            => x.ser_comprobante,',
'            p_c004            => x.nro_comprobante,',
'            p_c005            =>x.nro_cuota,',
'            p_c006            => x.saldo_cuota,',
'            p_c007              => x.fec_vencimiento,            ',
'            p_c008 => x.fec_origen     )  ; ',
'   end loop ;',
'   end ;	',
'end if;',
'end if;',
'end if;'))
,p_attribute_02=>'P44_VENCIMIENTO_INI,P44_VENCIMIENTO_FIN,P44_COD_CLIENTE,P44_EMISION_INI,P44_EMISION_FIN,P44_EMPRESA_ORIGEN'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11423227024001507)
,p_event_id=>wwv_flow_imp.id(11421772772001507)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(404817621893223386)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(11423679113001508)
,p_name=>'da_forma_cobro'
,p_event_sequence=>140
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(11379345619001484)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11424199302001508)
,p_event_id=>wwv_flow_imp.id(11423679113001508)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P44_FORMA_PAGO is   null OR   :P44_IMPORTE is   null then	',
'     apex_application.g_print_success_message := ''<span style="color:red"> Debe Cargar los valores para ingresar la forma de pago.</span>'';  ',
'else	',
'--apex_collection.CREATE_OR_TRUNCATE_COLLECTION (''CC_FORMA_COBRO'');',
'    declare',
'    vbanco varchar2(600);',
'    begin',
'    begin select nom_comercial into vbanco from personas_juridicas where cod_sector = bs_busca_parametro(''bs'',''SECTOR_BANCARIO'') and cod_per_juridica=:P44_BANCO  order by nom_comercial;exception when others then vbanco:=null; end;',
'    apex_collection.add_member(',
'            p_collection_name => ''CC_FORMA_COBRO'',',
'            p_c001            => :P44_FORMA_PAGO ,',
'            p_c002            => :P44_IMPORTE ,',
'            p_c003            => vbanco,',
'            p_c004            => :P44_NRO_VALOR )  ;',
'            end;',
' ',
'end if;'))
,p_attribute_02=>'P44_IMPORTE,P44_FORMA_PAGO,P44_BANCO,P44_NRO_VALOR'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11424609670001508)
,p_event_id=>wwv_flow_imp.id(11423679113001508)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
' :P44_FORMA_PAGO:=null;',
'   :P44_IMPORTE :=null;',
':P44_BANCO:=null;',
':P44_NRO_VALOR :=null;',
'end;'))
,p_attribute_03=>'P44_FORMA_PAGO,P44_IMPORTE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11425161334001508)
,p_event_id=>wwv_flow_imp.id(11423679113001508)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(234807570831906022)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(11425538389001508)
,p_name=>'New'
,p_event_sequence=>150
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(11402660545001497)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11426036480001509)
,p_event_id=>wwv_flow_imp.id(11425538389001508)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(404817621893223386)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(11426485943001509)
,p_name=>'DA_SET_VALOR'
,p_event_sequence=>170
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P44_EMPRESA_ORIGEN'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11426913884001509)
,p_event_id=>wwv_flow_imp.id(11426485943001509)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P44_COD_CUSTODIO:=NULL;'
,p_attribute_03=>'P44_COD_CUSTODIO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11427436621001509)
,p_event_id=>wwv_flow_imp.id(11426485943001509)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'null;'
,p_attribute_02=>'P44_EMPRESA_ORIGEN'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11427997626001509)
,p_event_id=>wwv_flow_imp.id(11426485943001509)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P44_COD_COBRADOR'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(842569981367550050)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'CARGA'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  IF :P44_PARAM_NRO IS NOT NULL THEN',
'    if :P44_EMPRESA_ORIGEN = ''NGO'' THEN',
'      BEGIN',
'        SELECT a.COD_CLIENTE,',
'               a.COD_COBRADOR,',
'               COD_MONEDA,',
'               COD_CUSTODIO,',
'               FEC_RECIBO,',
'               case',
'                 when anulado = ''S'' THEN',
'                  ''S''',
'                 WHEN NRO_MOV_CAJ IS NOT NULL THEN',
'                  ''C''',
'                 ELSE',
'                  ''P''',
'               END ESTADO,',
'               nro_recibo,',
'               ser_recibo, p.nombre,tip_cambio',
'          INTO :P44_COD_CLIENTE,',
'               :P44_COD_COBRADOR,',
'               :P44_COD_MONEDA,',
'               :P44_COD_CUSTODIO,',
'               :P44_FEC_COMPROBANTE,',
'               :P44_anulado,',
'               :P44_NRO_COMPROBANTE,',
'               :P44_SER_COMPROBANTE,:P44_NOM_CLIENTE,:P44_TIP_CAMBIO',
'          FROM CC_RECIBOS A, cc_clientes c, personas p',
'         WHERE a.COD_EMPRESA = ''1''',
'           AND :P44_PARAM_SER = SER_RECIBO',
'           AND :P44_PARAM_NRO = NRO_RECIBO',
'           and c.cod_empresa=a.COD_EMPRESA',
'           and c.cod_cliente=a.cod_cliente',
'           and c.cod_persona=p.cod_persona;',
'      EXCEPTION',
'        WHEN OTHERS THEN',
'         :P44_NOM_CLIENTE:=''X''; NULL;',
'      END;',
'    ELSif :P44_EMPRESA_ORIGEN = ''BH'' THEN',
'      BEGIN',
'        SELECT a.COD_CLIENTE,',
'               a.COD_COBRADOR,',
'               COD_MONEDA,',
'               COD_CUSTODIO,',
'               FEC_RECIBO,',
'               case',
'                 when anulado = ''S'' THEN',
'                  ''S''',
'                 WHEN NRO_MOV_CAJ IS NOT NULL THEN',
'                  ''C''',
'                 ELSE',
'                  ''P''',
'               END ESTADO,',
'               nro_recibo,',
'               ser_recibo,',
'                     p.nombre,tip_cambio',
'          INTO :P44_COD_CLIENTE,',
'               :P44_COD_COBRADOR,',
'               :P44_COD_MONEDA,',
'               :P44_COD_CUSTODIO,',
'               :P44_FEC_COMPROBANTE,',
'               :P44_anulado,',
'               :P44_NRO_COMPROBANTE,',
'               :P44_SER_COMPROBANTE,:P44_NOM_CLIENTE,:P44_TIP_CAMBIO',
'          FROM CC_RECIBOS A, cc_clientes c, personas p',
'         WHERE a.COD_EMPRESA = ''18''',
'           AND :P44_PARAM_SER = SER_RECIBO',
'           AND :P44_PARAM_NRO = NRO_RECIBO',
'           and c.cod_empresa=a.COD_EMPRESA',
'           and c.cod_cliente=a.cod_cliente',
'           and c.cod_persona=p.cod_persona;',
'      EXCEPTION',
'        WHEN OTHERS THEN',
'          NULL;',
'      END;',
'    ELSE',
'      BEGIN',
'        SELECT a.COD_CLIENTE,',
'               a.COD_COBRADOR,',
'               COD_MONEDA,',
'               COD_CUSTODIO,',
'               FEC_RECIBO,',
'               case',
'                 when anulado = ''S'' THEN',
'                  ''S''',
'                 WHEN NRO_MOV_CAJ IS NOT NULL THEN',
'                  ''C''',
'                 ELSE',
'                  ''P''',
'               END ESTADO,',
'               nro_recibo,',
'                  ser_recibo, p.nombre,TIP_CAMBIO',
'          INTO :P44_COD_CLIENTE,',
'               :P44_COD_COBRADOR,',
'               :P44_COD_MONEDA,',
'               :P44_COD_CUSTODIO,',
'               :P44_FEC_COMPROBANTE,',
'               :P44_anulado,',
'               :P44_NRO_COMPROBANTE,',
'               :P44_SER_COMPROBANTE,:P44_NOM_CLIENTE,:P44_TIP_CAMBIO',
'          FROM CC_RECIBOS@dblink_cph A, cc_clientes@dblink_cph c, personas@dblink_cph p',
'         WHERE a.COD_EMPRESA = ''1''',
'           AND :P44_PARAM_SER = SER_RECIBO',
'           AND :P44_PARAM_NRO = NRO_RECIBO',
'           and c.cod_empresa=a.COD_EMPRESA',
'           and c.cod_cliente=a.cod_cliente',
'           and c.cod_persona=p.cod_persona;',
'      EXCEPTION',
'        WHEN OTHERS THEN',
'          NULL;',
'      END;',
'    END IF;',
'  ',
'  ELSE',
'    declare',
'      vusuario varchar2(600) := user;',
'    begin',
'      :P44_SER_COMPROBANTE := ''P'';',
'      :P44_FEC_COMPROBANTE := SYSDATE;',
'    ',
'    end;',
'  ',
'    BEGIN',
'      SELECT NVL(cc.ser_recibo, ''P''), U.cod_custodio',
'        INTO :P44_SER_COMPROBANTE, :P44_COD_CUSTODIO',
'        FROM CC_COBRADORES CC, USUARIOS U',
'       WHERE CC.COD_EMPRESA = ''1''',
'         AND CC.COD_EMPRESA = U.COD_EMPRESA',
'         AND CC.COD_PERSONA = U.COD_PERSONA',
'         AND U.COD_USUARIO = :P_COD_USUARIO',
'         AND cc.activo = ''S''',
'         AND ROWNUM = ''1'';',
'    EXCEPTION',
'      WHEN OTHERS THEN',
'        NULL;',
'        :P44_SER_COMPROBANTE := ''P'';',
'    END;',
'  ',
'    :P44_SER_COMPROBANTE := ''P'';',
'    if :P44_COD_CLIENTE IS NULL THEN',
'      BEGIN',
'        apex_collection.CREATE_OR_TRUNCATE_COLLECTION(''CC_RECIBOS'');',
'        apex_collection.CREATE_OR_TRUNCATE_COLLECTION(''CC_DETALLE_RECIBOS'');',
'        apex_collection.CREATE_OR_TRUNCATE_COLLECTION(''CC_FORMA_COBRO'');',
'      END;',
'    END IF;',
'  END IF;',
'',
'  if :P44_PARAM_NRO is not null THEN',
'  ',
'    declare',
'      cursor xsal is',
'        select c.TIP_FACTURA_REF  tipo_comprobante,',
'               c.SER_FACTURA_REF  ser_comprobante,',
'               c.NRO_FACTURA_REF  nro_comprobante,',
'               c.nro_cuota,',
'               c.MONTO_CUOTA      as saldo_cuota,',
'               c.monto_cuota,',
'               c.cod_moneda_cuota,',
'               c.fec_vencimiento,',
'               anulado',
'          from CC_DETALLE_RECIBOS c, cc_recibos rec',
'         where c.cod_empresa = ''1''',
'           and c.tip_recibo = ''REC''',
'           and c.ser_recibo = :P44_PARAM_SER',
'           and c.nro_recibo = :P44_PARAM_NRO',
'           and c.cod_empresa = rec.cod_empresa',
'           and c.tip_recibo = rec.tip_recibo',
'           and c.ser_recibo = rec.ser_recibo',
'           and c.nro_recibo = rec.nro_recibo',
'           and :P44_EMPRESA_ORIGEN = ''NGO''',
'        UNION ALL',
'        select c.TIP_FACTURA_REF  tipo_comprobante,',
'               c.SER_FACTURA_REF  ser_comprobante,',
'               c.NRO_FACTURA_REF  nro_comprobante,',
'               c.nro_cuota,',
'               c.MONTO_CUOTA      as saldo_cuota,',
'               c.monto_cuota,',
'               c.cod_moneda_cuota,',
'               c.fec_vencimiento,',
'               anulado',
'          from CC_DETALLE_RECIBOS c, cc_recibos rec',
'         where c.cod_empresa = ''18''',
'           and c.tip_recibo = ''REC''',
'           and c.ser_recibo = :P44_PARAM_SER',
'           and c.nro_recibo = :P44_PARAM_NRO',
'           and c.cod_empresa = rec.cod_empresa',
'           and c.tip_recibo = rec.tip_recibo',
'           and c.ser_recibo = rec.ser_recibo',
'           and c.nro_recibo = rec.nro_recibo',
'           and :P44_EMPRESA_ORIGEN = ''bh''',
'        UNION ALL',
'        select c.TIP_FACTURA_REF  tipo_comprobante,',
'               c.SER_FACTURA_REF  ser_comprobante,',
'               c.NRO_FACTURA_REF  nro_comprobante,',
'               c.nro_cuota,',
'               c.MONTO_CUOTA      as saldo_cuota,',
'               c.monto_cuota,',
'               c.cod_moneda_cuota,',
'               c.fec_vencimiento,',
'               anulado',
'          from CC_DETALLE_RECIBOS@DBLINK_CPH c, cc_recibos@dblink_cph rec',
'         where c.cod_empresa = ''1''',
'           and c.tip_recibo = ''REC''',
'           and c.ser_recibo = :P44_PARAM_SER',
'           and c.nro_recibo = :P44_PARAM_NRO',
'           and c.cod_empresa = rec.cod_empresa',
'           and c.tip_recibo = rec.tip_recibo',
'           and c.ser_recibo = rec.ser_recibo',
'           and c.nro_recibo = rec.nro_recibo',
'           and :P44_EMPRESA_ORIGEN = ''CPH''',
'        ',
'         order by 1, 2, 3, 4 asc;',
'      vcont number;',
'    begin',
'      for x in xsal loop',
'        begin',
'        ',
'          apex_collection.add_member(p_collection_name => ''CC_DETALLE_RECIBOS'',',
'                                     p_c001            => :P44_COD_CLIENTE,',
'                                     p_c002            => x.tipo_comprobante,',
'                                     p_c003            => x.ser_comprobante,',
'                                     p_c004            => x.nro_comprobante,',
'                                     p_c005            => x.nro_cuota,',
'                                     p_c006            => x.monto_cuota,',
'                                     p_c007            => x.fec_vencimiento,',
'                                     p_c008            => NULL);',
'        end;',
'      end loop;',
'    end;',
'  end if;',
'end;',
''))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(11406269118001499)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(11385944038001488)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(11406619245001499)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'GUARDAR_PEDIDO'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P44_EMPRESA_ORIGEN=''NGO'' THEN',
'DECLARE',
'  VNRO_RECIBO NUMBER;',
'BEGIN',
'',
'  BEGIN',
'    begin',
'      select VNRO_RECIBO',
'        into VNRO_RECIBO',
'        from cc_recibos a',
'       where cod_empresa = ''1''',
'         and a.TIP_RECIBO = ''REC''',
'         and a.SER_RECIBO = :P44_SER_COMPROBANTE',
'         AND A.NRO_RECIBO = :P44_NRO_COMPROBANTE;',
'    EXCEPTION',
'      WHEN OTHERS THEN',
'        VNRO_RECIBO := NULL;',
'    end;',
'  ',
'  END;',
'  IF VNRO_RECIBO IS NULL THEN',
'    BEGIN',
'    ',
'      DECLARE',
'        VNRO_PEDIDO           NUMBER;',
'        VMONTO_TOTAL          NUMBER := 0;',
'        VTOTAL_IVA            NUMBER := 0;',
'        VMONTO_TOTAL_EX       NUMBER := 0;',
'        VNOMBRE               VARCHAR2(500);',
'        VIND_GUARDA           VARCHAR2(60) := ''N'';',
'        VIND_TRANSPORTADORA   VARCHAR2(60) := ''N'';',
'        VIND_ENVIAR           VARCHAR2(60) := ''S'';',
'        vCAMBIO_MONEDA_PRECIO number;',
'      BEGIN',
'        begin',
'          select nvl(MAX(NRO_RECIBO), 0) + 1',
'            into vnro_pedido',
'            from cc_recibos a',
'           where cod_empresa = ''1''',
'             and a.TIP_RECIBO = ''REC''',
'             and a.SER_RECIBO = :P44_SER_COMPROBANTE;',
'        EXCEPTION',
'          WHEN OTHERS THEN',
'            VNRO_PEDIDO := 1;',
'        end;',
'        IF :P44_NRO_COMPROBANTE IS NOT NULL THEN',
'          VNRO_PEDIDO := :P44_NRO_COMPROBANTE;',
'        END IF;',
'        BEGIN',
'          SELECT P.NOMBRE',
'            INTO VNOMBRE',
'            FROM CC_CLIENTES C, PERSONAS P',
'           WHERE C.COD_EMPRESA = ''1''',
'             AND C.COD_CLIENTE = :P44_COD_CLIENTE',
'             AND C.COD_PERSONA = P.COD_PERSONA;',
'        EXCEPTION',
'          WHEN OTHERS THEN',
'            NULL;',
'        END;',
'      ',
'        BEGIN',
'          Select m.tipo_cambio_credito',
'            into vCAMBIO_MONEDA_PRECIO',
'            from monedas m, parametros_generales p',
'           where p.cod_modulo = ''ST''',
'             and p.parametro = ''COD_MONEDA_PREC''',
'             and p.valor = m.cod_moneda;',
'        EXCEPTION',
'          when others then',
'            vCAMBIO_MONEDA_PRECIO := 1;',
'        END;',
'      ',
'        begin',
'          INSERT INTO cc_recibos',
'            (cod_empresa,',
'             cod_sucursal,',
'             tip_recibo,',
'             ser_recibo,',
'             nro_recibo,',
'             fec_recibo,',
'             cod_cliente,',
'             cod_cobrador,',
'             cod_moneda,',
'             tip_cambio,',
'             cod_usuario,',
'             cod_custodio,',
'             Anulado,',
'             Estado,',
'             NOM_CLIENTE,COMENTARIO_RECIBO)',
'          VALUES',
'            (''1'',',
'             ''01'',',
'             ''REC'',',
'             :P44_SER_COMPROBANTE,',
'             vnro_pedido,',
'             TRUNC(SYSDATE),',
'             :P44_COD_CLIENTE,',
'             :P44_COD_COBRADOR,',
'             :P44_COD_MONEDA,',
'             :P44_TIP_CAMBIO,',
'             v(''app_user''),',
'             :P44_COD_CUSTODIO,',
'             ''N'',',
'             ''P'',',
'             :P44_NOM_CLIENTE,''INGRESO DESDE APP'');',
'          COMMIT;',
'          :P44_NRO_COMPROBANTE := vnro_pedido;',
'        ',
'          declare',
'            cursor ccab is',
'            ',
'              select seq_id,',
'                     c002 TIP_COMPROBANTE,',
'                      ',
'                     ',
'                     CASE',
'                       WHEN c002 = ''REC'' AND c004 IS NULL THEN',
'                        :P44_SER_COMPROBANTE',
'                       ELSE',
'                        c003',
'                     END',
'                     ',
'                      SERIE_COMPROBANTE,',
'                     CASE',
'                       WHEN c002 = ''REC'' AND C004 IS NULL THEN',
'                        VNRO_PEDIDO',
'                       ELSE',
'                        TO_NUMBER(C004)',
'                     END NRO_COMPROBANTE,',
'                     C005 NRO_CUOTA,',
'                     to_number(c006) as IMPORTE,',
'                     nvl((select fec_vencimiento',
'                           from cc_saldos a',
'                          where cod_empresa = ''1''',
'                            and tipo_comprobante = C002',
'                            and ser_comprobante = c003',
'                            and nro_comprobante = c004',
'                            and nro_cuota = c005),',
'                         trunc(sysdate)) fecha_vencimiento,',
'                     CASE',
'                       WHEN c002 = ''REC'' AND C004 IS NULL THEN',
'                        ''S''',
'                       ELSE',
'                        ''N''',
'                     END GENERA_CREDITO',
'                from apex_collections',
'               where collection_name = ''CC_DETALLE_RECIBOS''',
'               order by 1 asc;',
'          begin',
'            for x in ccab loop',
'              insert into cc_detalle_recibos',
'                (cod_empresa,',
'                 tip_recibo,',
'                 ser_recibo,',
'                 nro_recibo,',
'                 tipo_trans,',
'                 sub_tipo_trans,',
'                 tip_factura_ref,',
'                 ser_factura_ref,',
'                 nro_factura_ref,',
'                 nro_cuota,',
'                 monto_cuota,',
'                 cod_moneda_cuota,',
'                 tip_cambio,',
'                 fec_vencimiento,',
'                 GENERA_CREDITO)',
'              values',
'                (''1'',',
'                 ''REC'',',
'                 :P44_SER_COMPROBANTE,',
'                 VNRO_PEDIDO,',
'                 ''1'',',
'                 ''1'',',
'                 x.tip_comprobante,',
'                 x.SERIE_COMPROBANTE,',
'                 x.nro_comprobante,',
'                 x.nro_cuota,',
'                 x.importe,',
'                 :P44_COD_MONEDA,',
'                 :P44_TIP_CAMBIO,',
'                 x.fecha_vencimiento,',
'                 X.GENERA_CREDITO);',
'            ',
'              COMMIT;',
'            end loop;',
'          ',
'          end;',
'',
'          declare cursor ccd is ',
'          select ',
'seq_id,',
'c001 tipo, to_number(c002) importe,c003 BANCO,c004 nro_valor,',
'         NVL(c020,''N'') producto_armado, null as remove',
'  from apex_collections',
' where collection_name = ''CC_FORMA_COBRO''',
' order by 1 asc;',
' begin',
' for x in CCD loop',
' insert into cc_recibos_formas_cobro (COD_EMPRESA,TIP_RECIBO,SER_RECIBO,NRO_RECIBO,TIPO,MONTO,OBSERVACION, banco, nro_valor)',
' values (''1'',''REC'',:P44_SER_COMPROBANTE,:P44_NRO_COMPROBANTE,X.TIPO,X.IMPORTE, NULL,x.banco, x.nro_valor);',
' end loop;',
' end;        ',
'        end;      ',
'      END;    ',
'    END;',
'  END IF;',
'END;',
'',
'BEGIN',
'  apex_collection.CREATE_OR_TRUNCATE_COLLECTION(''CC_RECIBO'');',
'',
'  APEX_COLLECTION.ADD_MEMBER(p_collection_name => ''CC_RECIBO'',',
'                             ',
'                             p_c001 => ''P_SER_RECIBO'',',
'                             p_c002 => :P44_SER_COMPROBANTE,',
'                             p_c003 => :P44_NRO_COMPROBANTE);',
'  COMMIT;',
'',
'END;',
'',
'END IF;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(11386747410001489)
,p_process_success_message=>'REcibo Generado'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(11408254455001500)
,p_process_sequence=>60
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'GUARDAR_RECIBO_CPH'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P44_EMPRESA_ORIGEN=''CPH'' THEN',
'DECLARE',
'  VNRO_RECIBO NUMBER;',
'BEGIN',
'',
'  BEGIN',
'    begin',
'      select VNRO_RECIBO',
'        into VNRO_RECIBO',
'        from cc_recibos@DBLINK_CPH a',
'       where cod_empresa = ''1''',
'         and a.TIP_RECIBO = ''REC''',
'         and a.SER_RECIBO = :P44_SER_COMPROBANTE',
'         AND A.NRO_RECIBO = :P44_NRO_COMPROBANTE;',
'    EXCEPTION',
'      WHEN OTHERS THEN',
'        VNRO_RECIBO := NULL;',
'    end;',
'  ',
'  END;',
'  IF VNRO_RECIBO IS NULL THEN',
'    BEGIN',
'    ',
'      DECLARE',
'        VNRO_PEDIDO           NUMBER;',
'        VMONTO_TOTAL          NUMBER := 0;',
'        VTOTAL_IVA            NUMBER := 0;',
'        VMONTO_TOTAL_EX       NUMBER := 0;',
'        VNOMBRE               VARCHAR2(500);',
'        VIND_GUARDA           VARCHAR2(60) := ''N'';',
'        VIND_TRANSPORTADORA   VARCHAR2(60) := ''N'';',
'        VIND_ENVIAR           VARCHAR2(60) := ''S'';',
'        vCAMBIO_MONEDA_PRECIO number;',
'      BEGIN',
'        begin',
'          select nvl(MAX(NRO_RECIBO), 0) + 1',
'            into vnro_pedido',
'            from cc_recibos@DBLINK_CPH a',
'           where cod_empresa = ''1''',
'             and a.TIP_RECIBO = ''REC''',
'             and a.SER_RECIBO = :P44_SER_COMPROBANTE;',
'        EXCEPTION',
'          WHEN OTHERS THEN',
'            VNRO_PEDIDO := 1;',
'        end;',
'        IF :P44_NRO_COMPROBANTE IS NOT NULL THEN',
'          VNRO_PEDIDO := :P44_NRO_COMPROBANTE;',
'        END IF;',
'        BEGIN',
'          SELECT P.NOMBRE',
'            INTO VNOMBRE',
'            FROM CC_CLIENTES@DBLINK_CPH C, PERSONAS@DBLINK_CPH P',
'           WHERE C.COD_EMPRESA = ''1''',
'             AND C.COD_CLIENTE = :P44_COD_CLIENTE',
'             AND C.COD_PERSONA = P.COD_PERSONA;',
'        EXCEPTION',
'          WHEN OTHERS THEN',
'            NULL;',
'        END;',
'      ',
'        BEGIN',
'          Select m.tipo_cambio_credito',
'            into vCAMBIO_MONEDA_PRECIO',
'            from monedas@DBLINK_CPH m, parametros_generales@DBLINK_CPH p',
'           where p.cod_modulo = ''ST''',
'             and p.parametro = ''COD_MONEDA_PREC''',
'             and p.valor = m.cod_moneda;',
'        EXCEPTION',
'          when others then',
'            vCAMBIO_MONEDA_PRECIO := 1;',
'        END;',
'      ',
'        begin',
'          INSERT INTO cc_recibos@DBLINK_CPH',
'            (cod_empresa,',
'             cod_sucursal,',
'             tip_recibo,',
'             ser_recibo,',
'             nro_recibo,',
'             fec_recibo,',
'             cod_cliente,',
'             cod_cobrador,',
'             cod_moneda,',
'             tip_cambio,',
'             cod_usuario,',
'             cod_custodio,',
'             Anulado,',
'             Estado,',
'             NOM_CLIENTE,COMENTARIO_RECIBO)',
'          VALUES',
'            (''1'',',
'             ''01'',',
'             ''REC'',',
'             :P44_SER_COMPROBANTE,',
'             vnro_pedido,',
'             TRUNC(SYSDATE),',
'             :P44_COD_CLIENTE,',
'             :P44_COD_COBRADOR,',
'             :P44_COD_MONEDA,',
'             :P44_TIP_CAMBIO,',
'             :P_COD_USUARIO,',
'             :P44_COD_CUSTODIO,',
'             ''N'',',
'             ''P'',',
'             :P44_NOM_CLIENTE,''INGRESO DESDE APP'');',
'          COMMIT;',
'          :P44_NRO_COMPROBANTE := vnro_pedido;',
'        ',
'          declare',
'            cursor ccab is',
'            ',
'              select seq_id,',
'                     c002 TIP_COMPROBANTE,',
'                      ',
'                     ',
'                     CASE',
'                       WHEN c002 = ''REC'' AND c004 IS NULL THEN',
'                        :P44_SER_COMPROBANTE',
'                       ELSE',
'                        c003',
'                     END',
'                     ',
'                      SERIE_COMPROBANTE,',
'                     CASE',
'                       WHEN c002 = ''REC'' AND C004 IS NULL THEN',
'                        VNRO_PEDIDO',
'                       ELSE',
'                        TO_NUMBER(C004)',
'                     END NRO_COMPROBANTE,',
'                     C005 NRO_CUOTA,',
'                     to_number(c006) as IMPORTE,',
'                     nvl((select fec_vencimiento',
'                           from cc_saldos@DBLINK_CPH a',
'                          where cod_empresa = ''1''',
'                            and tipo_comprobante = C002',
'                            and ser_comprobante = c003',
'                            and nro_comprobante = c004',
'                            and nro_cuota = c005),',
'                         trunc(sysdate)) fecha_vencimiento,',
'                     CASE',
'                       WHEN c002 = ''REC'' AND C004 IS NULL THEN',
'                        ''S''',
'                       ELSE',
'                        ''N''',
'                     END GENERA_CREDITO',
'                from apex_collections',
'               where collection_name = ''CC_DETALLE_RECIBOS''',
'               order by 1 asc;',
'          begin',
'            for x in ccab loop',
'              insert into cc_detalle_recibos@DBLINK_CPH',
'                (cod_empresa,',
'                 tip_recibo,',
'                 ser_recibo,',
'                 nro_recibo,',
'                 tipo_trans,',
'                 sub_tipo_trans,',
'                 tip_factura_ref,',
'                 ser_factura_ref,',
'                 nro_factura_ref,',
'                 nro_cuota,',
'                 monto_cuota,',
'                 cod_moneda_cuota,',
'                 tip_cambio,',
'                 fec_vencimiento,',
'                 GENERA_CREDITO)',
'              values',
'                (''1'',',
'                 ''REC'',',
'                 :P44_SER_COMPROBANTE,',
'                 VNRO_PEDIDO,',
'                 ''1'',',
'                 ''1'',',
'                 x.tip_comprobante,',
'                 x.SERIE_COMPROBANTE,',
'                 x.nro_comprobante,',
'                 x.nro_cuota,',
'                 x.importe,',
'                 :P44_COD_MONEDA,',
'                 :P44_TIP_CAMBIO,',
'                 x.fecha_vencimiento,',
'                 X.GENERA_CREDITO);',
'            ',
'              COMMIT;',
'            end loop;',
'          ',
'          end;',
'',
'          declare cursor ccd is ',
'          select ',
'seq_id,',
'c001 tipo, to_number(c002) importe,c003 BANCO,c004 nro_valor,',
'         NVL(c020,''N'') producto_armado, null as remove',
'  from apex_collections',
' where collection_name = ''CC_FORMA_COBRO''',
' order by 1 asc;',
' begin',
' for x in CCD loop',
' insert into cc_recibos_formas_cobro@DBLINK_CPH (COD_EMPRESA,TIP_RECIBO,SER_RECIBO,NRO_RECIBO,TIPO,MONTO,OBSERVACION, banco, nro_valor)',
' values (''1'',''REC'',:P44_SER_COMPROBANTE,:P44_NRO_COMPROBANTE,X.TIPO,X.IMPORTE, NULL,x.banco, x.nro_valor);',
' end loop;',
' end;        ',
'        end;      ',
'      END;    ',
'    END;',
'  END IF;',
'END;',
'',
'BEGIN',
'  apex_collection.CREATE_OR_TRUNCATE_COLLECTION(''CC_RECIBO'');',
'',
'  APEX_COLLECTION.ADD_MEMBER(p_collection_name => ''CC_RECIBO'',',
'                             ',
'                             p_c001 => ''P_SER_RECIBO'',',
'                             p_c002 => :P44_SER_COMPROBANTE,',
'                             p_c003 => :P44_NRO_COMPROBANTE);',
'  COMMIT;',
'',
'END;',
'END IF;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(11386747410001489)
,p_process_success_message=>'REcibo Generado'
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
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(11407092290001500)
,p_process_sequence=>70
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'NUEVO_PEDIDO'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'apex_collection.CREATE_OR_TRUNCATE_COLLECTION (''CC_RECIBOS'');',
'apex_collection.CREATE_OR_TRUNCATE_COLLECTION (''CC_DETALLE_RECIBOS'');',
'apex_collection.CREATE_OR_TRUNCATE_COLLECTION (''CC_FORMA_COBRO'');',
'END;',
' '))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(11385944038001488)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(11407423137001500)
,p_process_sequence=>80
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'CLEAR_PAGINA'
,p_attribute_01=>'CLEAR_CACHE_FOR_PAGES'
,p_attribute_04=>'12'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(11385944038001488)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(11407835509001500)
,p_process_sequence=>90
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'aNULAR_RECIBO'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P104_EMPRESA_ORIGEN=''NGO'' THEN',
'',
'DECLARE',
'  VNRO_RECIBO NUMBER;',
'  vestado varchar2(100);',
'  VANULADO varchar2(100);',
'BEGIN',
'',
' ',
'    ',
'     BEGIN',
'SELECT  ',
'case when anulado=''S'' THEN ''S'' WHEN NRO_MOV_CAJ IS NOT NULL THEN ''C'' ELSE ''P'' END ESTADO',
'INTO vestado',
'FROM CC_RECIBOS A WHERE COD_EMPRESA=''1'' AND :P104_SER_COMPROBANTE=SER_RECIBO',
'AND :P104_NRO_COMPROBANTE=NRO_RECIBO;',
'EXCEPTION WHEN OTHERS THEN ',
'NULL;',
'END;',
'',
'if vestado=''P'' THEN',
'BEGIN',
'UPDATE CC_RECIBOS ',
'SET ANULADO=''S'', fec_anulacion = sysdate,cod_usuario_anu=:P_COD_USUARIO',
'  WHERE COD_EMPRESA=''1'' AND :P104_SER_COMPROBANTE=SER_RECIBO',
'AND :P104_NRO_COMPROBANTE=NRO_RECIBO;',
'EXCEPTION WHEN OTHERS THEN ',
'NULL;',
'END;',
'',
'BEGIN',
'SELECT  ',
'  ''S''',
'INTO VANULADO',
'FROM CC_RECIBOS A WHERE COD_EMPRESA=''1'' AND :P104_SER_COMPROBANTE=SER_RECIBO',
'AND :P104_NRO_COMPROBANTE=NRO_RECIBO',
'AND nvl(anulado,''N'')=''S'' ;',
'EXCEPTION WHEN OTHERS THEN ',
'NULL;',
'END;',
'if NVL(VANULADO,''N'')<>''S'' THEN',
'raise_application_error(-20002,',
'''El Recibo no ha sido Anulado'');',
'END IF;',
'ELSE',
'raise_application_error(-20002,',
'''El Recibo no ha sido Anulado'');',
'END IF;',
'     ',
'  ',
'   ',
'  ',
'END;',
' ',
'',
'ELSE',
'',
'',
'DECLARE',
'  VNRO_RECIBO NUMBER;',
'  vestado varchar2(100);',
'  VANULADO varchar2(100);',
'BEGIN',
'',
' ',
'    ',
'     BEGIN',
'SELECT  ',
'case when nvl(anulado,''N'')=''S'' THEN ''S'' WHEN NRO_MOV_CAJ IS NOT NULL THEN ''C'' ELSE ''P'' END ESTADO',
'INTO vestado',
'FROM CC_RECIBOS@DBLINK_CPH A WHERE COD_EMPRESA=''1'' AND :P104_SER_COMPROBANTE=SER_RECIBO',
'AND :P104_NRO_COMPROBANTE=NRO_RECIBO;',
'EXCEPTION WHEN OTHERS THEN ',
'NULL;',
'END;',
'',
'if vestado=''P'' THEN',
'BEGIN',
'UPDATE CC_RECIBOS@DBLINK_CPH ',
'SET ANULADO=''S'', fec_anulacion = sysdate,cod_usuario_anu=:P_COD_USUARIO',
'  WHERE COD_EMPRESA=''1'' AND :P104_SER_COMPROBANTE=SER_RECIBO',
'AND :P104_NRO_COMPROBANTE=NRO_RECIBO;',
' COMMIT;',
'EXCEPTION WHEN OTHERS THEN ',
'NULL;',
'END;',
'',
'     BEGIN',
'SELECT ''S''',
'INTO VANULADO',
'FROM CC_RECIBOS@DBLINK_CPH A WHERE COD_EMPRESA=''1'' AND :P104_SER_COMPROBANTE=SER_RECIBO',
'AND :P104_NRO_COMPROBANTE=NRO_RECIBO',
'AND nvl(anulado,''N'')=''S'' ;',
'EXCEPTION WHEN OTHERS THEN ',
'NULL;',
'END;',
'if NVL(VANULADO,''N'')<>''S'' THEN',
'raise_application_error(-20002,',
'''El Recibo no ha sido Anulado'');',
'END IF;',
'',
'ELSE',
'raise_application_error(-20002,',
'''El Recibo no ha sido Anulado'');',
'END IF;',
'     ',
'  ',
'   ',
'  ',
'END;',
' ',
' COMMIT;',
'END IF;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'El recibo no ha sido Anulado'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(11386363610001488)
,p_process_success_message=>'Recibo Anulado Correctamente'
);
wwv_flow_imp.component_end;
end;
/
