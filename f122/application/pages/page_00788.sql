prompt --application/pages/page_00788
begin
--   Manifest
--     PAGE: 00788
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
 p_id=>788
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Presupuesto Nuevo'
,p_alias=>'PRESUPUESTO-NUEVO'
,p_step_title=>'Presupuesto Nuevo'
,p_allow_duplicate_submissions=>'N'
,p_autocomplete_on_off=>'OFF'
,p_javascript_file_urls=>'#APP_FILES#util_generico#MIN#.js'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';',
'var htmldb_ch_message=''"OK_TO_GET_NEXT_PREV_PK_VALUE"'';',
'',
' ',
' formatMiles(''P788_PRECIO_UNITARIO''); ',
' ',
' formatMiles(''P788_PORC_DESCUENTO''); ',
' ',
'',
' formatMiles(''P788_PORC_RECARGO''); ',
' ',
'',
' ',
'',
'',
'',
'',
'function  estado_css()',
'{  $(''#detalle tr'').each(function(index, value) {  ',
'     $(value.querySelectorAll(''td[headers="ESTILO"]'')).each(function() {   ',
'        if ( $(this).text() === ''GRIS'' ) { ',
'            $(value).css({"background-color":"#747677"}); ',
'        }',
'        if ( $(this).text() === ''AMARILLO'' ) {',
'            $(value).css({"background-color":"#e9ff70"}); ',
'        }',
'        if ( $(this).text() === ''VERDE'' ) {',
'            $(value).css({"background-color":"#b7e4c7"});',
'        }',
'        if ( $(this).text() === ''ROJO'' ) {',
'            $(value).css({"background-color":"#ff5636"});',
'        }',
'        $(this).hide(); ',
'    }); ',
'        $(''#detalle tr #ESTILO'').hide();    ',
'  });}',
'',
'  ',
'///.t-Report-report tr'))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.apex-item-select:focus, .apex-item-text:focus, .apex-item-textarea:focus {',
'   background-color: #a2e430 !important;',
'   border-color: #8f0000 !important;',
'}',
'',
'.apex-item-select,  .apex-item-text , .apex-item-textarea , .apex-item-group, .display_only {',
'  border-color: #b4c6dd !important;',
'  background-color: #f8f6ea !important;',
'}',
'',
'',
'tr:last-child td[headers="TOTAL"] { ',
'    font-size: large; ',
'    background: #a0a397; ',
'}',
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
'  background-color:  #afe00b  !important;',
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
' ',
' .divcol{text-align: right;}',
'',
' #sinstock{ background-color: #ff5636;}',
' #stockperif{ background-color: #e9ff70; }',
' #stockcompleto{background-color: #b7e4c7;}',
' #anulado{background-color: lightgray;}',
'  ',
' '))
,p_page_css_classes=>'CSS_CLASS'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'NZARATE'
,p_last_upd_yyyymmddhh24miss=>'20241104101250'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(852724728191781798)
,p_plug_name=>'Presupuesto(VTPRESUPUESTO)'
,p_region_name=>'pedido'
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--accent3:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40108275410263656)
,p_plug_display_sequence=>20
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'Y'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1007627818940347955)
,p_plug_name=>'cab'
,p_parent_plug_id=>wwv_flow_imp.id(852724728191781798)
,p_region_template_options=>'#DEFAULT#:margin-right-none'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>40
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1007627985280347956)
,p_plug_name=>'lateral'
,p_region_name=>'lat'
,p_parent_plug_id=>wwv_flow_imp.id(852724728191781798)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>50
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>2
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1009506070360989094)
,p_plug_name=>'VARIABLES'
,p_parent_plug_id=>wwv_flow_imp.id(852724728191781798)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>10
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(852776617690781638)
,p_name=>'Detalle'
,p_region_name=>'detalle'
,p_template=>wwv_flow_imp.id(40108275410263656)
,p_display_sequence=>50
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:is-expanded:t-Region--accent3:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_item_display_point=>'BELOW'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'SEQ_ID,  SER_PEDIDO , NRO_PEDIDO , CODIGO_CORTO,  COD_ARTICULO,  PRODUCT_NAME , UNIT_PRICE,  QUANTITY , PORC_DESCUENTO,  TOTAL_IVA,  MONTO_TOTAL,  TOTAL ,',
'PRODUCTO_ARMADO , ID_PEDIDO,  ID_PROMO,  REMOVE , COSTO_UNITARIO,  COSTO_UNITARIO*QUANTITY COSTO_TOTAL,',
'case when nvl(MONTO_TOTAL,0)>1 then',
'ROUND((MONTO_TOTAL-COSTO_UNITARIO*QUANTITY)/MONTO_TOTAL*100,2) else 0 end ',
'MARGEN',
',null edit',
',PORC_RECARGO',
',PORC_IVA',
',NRO_promo      ',
', (inv.vtpresupuesto_788.fn_agrega_estilos(p_cod_empresa  => :p_cod_empresa,',
'                                       p_ser_comprobante    => NVL(SER_PEDIDO,:P788_SER_COMPROBANTE),',
'                                       p_nro_comprobante   => NVL(NRO_PEDIDO,:P788_NRO_COMPROBANTE),',
'                                       p_cod_articulo       => COD_ARTICULO,',
'                                       p_cantidad           => QUANTITY,',
'                                       p_cab_estado         => nvl(:P788_ESTADO,''P''),',
'                                       p_cod_motivo_anu     => cod_motivo_anu,',
'                                       p_cantidad_facturada => cant_fact)) ESTILO   ',
' ',
'FROM (select ',
'seq_id, ',
'NVL(c013,''NO'') as NRO_promo,',
'c001 ser_pedido, c002 nro_pedido,',
'(select cod_art_corto from st_articulos p where cod_empresa=:p_cod_empresa and cod_articulo = c003) as codigo_corto,',
'c003 as cod_articulo,',
'C024 as cod_motivo_anu ,',
'C025 as cant_fact,',
'(select descripcion from st_articulos p where cod_empresa=:P_COD_EMPRESA and cod_articulo = c003) as product_name,',
'        to_number(c005) as unit_price,',
'        to_number(c004) as quantity,',
'        to_number(c006) as porc_descuento,',
'        to_number(c007) as total_iva,',
'       to_number(c008) as monto_total,',
'        to_number(c009) as total,',
'        NVL(c020,''N'') producto_armado,',
'        c018 PORC_IVA,',
'       C010 AS ID_PEDIDO, TO_NUMBER(c012) as id_promo, null as remove,        ',
'        to_number(c014) as porc_recargo,',
'(  ',
'      select nvl(costo_prom_nue,0)/ decode(:P788_COD_MONEDA,''2'',:P788_TIP_CAMBIO, 1)',
'    ',
'        from st_costos_art',
'       where cod_empresa = :P_COD_EMPRESA',
'         and cod_articulo = c003',
'         and tip_comprobante <> ''INI''',
'         and  nvl(fec_proceso,fec_comprobante) <= :P788_FEC_COMPROBANTE',
'         and to_char(nvl(fec_proceso, fec_comprobante),''yyyy/mm/dd'') || rowid =',
'                               ( select max(to_char(nvl(fec_proceso, fec_comprobante),''yyyy/mm/dd'')||rowid)',
'                                  from st_costos_art',
'                                 where cod_empresa =:P_COD_EMPRESA',
'                                   and cod_articulo = c003',
'                                   and tip_comprobante <> ''INI''',
'                                   and nvl(fec_proceso, fec_comprobante) <= :P788_FEC_COMPROBANTE) )COSTO_UNITARIO ',
'                           ',
'  ',
'  from apex_collections',
' where collection_name = ''VT_PRESUPUESTO_DETALLE''',
' order by 1 asc)'))
,p_footer=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="divcol">',
'    <strong>  ',
'        <label id="sinstock">&nbsp Sin Stock &nbsp</label>     ',
'        <label id="stockperif">&nbsp Stock en Perifericos &nbsp</label>',
'        <label id="stockcompleto">&nbsp Stock Completo &nbsp</label>',
'        <label id="anulado">&nbsp Anulado/Cerrado &nbsp</label>',
'    </strong>',
'</div>'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P788_NRO_COMPROBANTE,P788_SER_COMPROBANTE,P788_ESTADO,P_COD_EMPRESA'
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
 p_id=>wwv_flow_imp.id(391082104841150732)
,p_query_column_id=>1
,p_column_alias=>'SEQ_ID'
,p_column_display_sequence=>1
,p_column_heading=>'Or.'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(391082535445150732)
,p_query_column_id=>2
,p_column_alias=>'SER_PEDIDO'
,p_column_display_sequence=>2
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(391082919541150732)
,p_query_column_id=>3
,p_column_alias=>'NRO_PEDIDO'
,p_column_display_sequence=>4
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(391083374527150733)
,p_query_column_id=>4
,p_column_alias=>'CODIGO_CORTO'
,p_column_display_sequence=>3
,p_column_heading=>'Codigo Corto'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(391083754380150733)
,p_query_column_id=>5
,p_column_alias=>'COD_ARTICULO'
,p_column_display_sequence=>5
,p_column_heading=>'Cod Articulo'
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:68:&SESSION.::&DEBUG.:RP,68:P68_COD_ARTICULO:#COD_ARTICULO#'
,p_column_linktext=>'#COD_ARTICULO#'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(391084182646150733)
,p_query_column_id=>6
,p_column_alias=>'PRODUCT_NAME'
,p_column_display_sequence=>6
,p_column_heading=>'Descripcion'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(391084530441150733)
,p_query_column_id=>7
,p_column_alias=>'UNIT_PRICE'
,p_column_display_sequence=>26
,p_column_heading=>'Precion Unitario'
,p_use_as_row_header=>'N'
,p_column_format=>'999G999G999G999G990D00'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(391084996760150733)
,p_query_column_id=>8
,p_column_alias=>'QUANTITY'
,p_column_display_sequence=>36
,p_column_heading=>'Cantidad'
,p_use_as_row_header=>'N'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_sum_column=>'Y'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(391085301021150733)
,p_query_column_id=>9
,p_column_alias=>'PORC_DESCUENTO'
,p_column_display_sequence=>46
,p_column_heading=>'% Dto.'
,p_use_as_row_header=>'N'
,p_column_format=>'999G999G999G999G990D00'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(391085727610150734)
,p_query_column_id=>10
,p_column_alias=>'TOTAL_IVA'
,p_column_display_sequence=>66
,p_column_heading=>'Total Iva'
,p_use_as_row_header=>'N'
,p_column_format=>'999G999G999G999G990'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(391086109632150734)
,p_query_column_id=>11
,p_column_alias=>'MONTO_TOTAL'
,p_column_display_sequence=>76
,p_column_heading=>'Monto Total'
,p_use_as_row_header=>'N'
,p_column_format=>'999G999G999G999G999G999G990'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(391086573012150734)
,p_query_column_id=>12
,p_column_alias=>'TOTAL'
,p_column_display_sequence=>86
,p_column_heading=>'Total'
,p_use_as_row_header=>'N'
,p_column_format=>'999G999G999G999G990D00'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_sum_column=>'Y'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(391086930546150734)
,p_query_column_id=>13
,p_column_alias=>'PRODUCTO_ARMADO'
,p_column_display_sequence=>116
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(391087344329150734)
,p_query_column_id=>14
,p_column_alias=>'ID_PEDIDO'
,p_column_display_sequence=>96
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(391087714019150734)
,p_query_column_id=>15
,p_column_alias=>'ID_PROMO'
,p_column_display_sequence=>106
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(391088144881150734)
,p_query_column_id=>16
,p_column_alias=>'REMOVE'
,p_column_display_sequence=>156
,p_use_as_row_header=>'N'
,p_column_link=>'javascript:void(null);'
,p_column_linktext=>'<span class="t-Icon fa fa-trash delete-note" aria-hidden="true"></span>'
,p_column_link_attr=>'data-id=#SEQ_ID#'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(391088537940150735)
,p_query_column_id=>17
,p_column_alias=>'COSTO_UNITARIO'
,p_column_display_sequence=>166
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(391088937598150735)
,p_query_column_id=>18
,p_column_alias=>'COSTO_TOTAL'
,p_column_display_sequence=>176
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(391089382146150735)
,p_query_column_id=>19
,p_column_alias=>'MARGEN'
,p_column_display_sequence=>126
,p_column_heading=>'Margen'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(391089703177150735)
,p_query_column_id=>20
,p_column_alias=>'EDIT'
,p_column_display_sequence=>146
,p_column_heading=>'Editar'
,p_use_as_row_header=>'N'
,p_column_link=>'javascript:$s(''P788_ID_SEQ'',''#SEQ_ID#'');$s(''P788_COD_ART_CORTO'',''#CODIGO_CORTO#'');$s(''P788_PRECIO_UNITARIO'',''#UNIT_PRICE#'');$s(''P788_COD_ARTICULO_DET'',''#COD_ARTICULO#'');$s(''P788_CANTIDAD'','''');'
,p_column_linktext=>'<span aria-label="Editar"><span class="fa fa-edit" aria-hidden="true" title="Editar"></span></span>'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(391090100309150735)
,p_query_column_id=>21
,p_column_alias=>'PORC_RECARGO'
,p_column_display_sequence=>56
,p_column_heading=>'%Recargo'
,p_use_as_row_header=>'N'
,p_column_format=>'999G999G999G999G990D00'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(391090545643150735)
,p_query_column_id=>22
,p_column_alias=>'PORC_IVA'
,p_column_display_sequence=>196
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(391090973296150736)
,p_query_column_id=>23
,p_column_alias=>'NRO_PROMO'
,p_column_display_sequence=>136
,p_column_heading=>'Promo'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(391091317080150736)
,p_query_column_id=>24
,p_column_alias=>'ESTILO'
,p_column_display_sequence=>206
,p_column_heading=>'Estilo'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(863367566874456651)
,p_plug_name=>'Datos de Entrega'
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40108275410263656)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'NEVER'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(984190157371287270)
,p_plug_name=>'Detalle de Articulos'
,p_region_template_options=>'#DEFAULT#:js-dialog-size600x400'
,p_region_attributes=>'Style="background:#ebeff6;width:100%;"'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>70
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(1189422063765152886)
,p_name=>'Stock de Articulos'
,p_parent_plug_id=>wwv_flow_imp.id(984190157371287270)
,p_template=>wwv_flow_imp.id(40108275410263656)
,p_display_sequence=>90
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:is-collapsed:t-Region--accent1:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select v.cod_sucursal, ',
'       v.desc_sucursal, ',
'       v.desc_rubro, ',
'       v.desc_division, ',
'       v.desc_categogira, ',
'       v.desc_familia, ',
'       v.marca,',
'       v.cod_art_corto, ',
'       v.cod_articulo, ',
'       v.desc_articulo, ',
'       v.cant_dispon, ',
'       v.volumen,',
'       nvl((SELECT sum(cantidad)',
'          FROM V_PEDIDOS_STOCK_APEX s',
'         where s.cod_articulo=v.cod_articulo',
'           and s.autorizacion=''AUTORIZADO''',
'           AND SUCURSAL_PEDIDO=V.COD_SUCURSAL),0)PEDIDOS_AUTORIZADOS,',
'       nvl((SELECT sum(cantidad)',
'          FROM V_PEDIDOS_STOCK_APEX s',
'         where s.cod_articulo=v.cod_articulo',
'           and s.autorizacion=''PENDIENTE''',
'           AND SUCURSAL_PEDIDO=V.COD_SUCURSAL),0) PEDIDOS_PENIENTES,',
'       (v.cant_dispon -nvl((SELECT sum(cantidad)',
'          FROM V_PEDIDOS_STOCK_APEX s',
'         where s.cod_articulo=v.cod_articulo',
'           and s.autorizacion in (''AUTORIZADO'',''PENDIENTE'')',
'           AND SUCURSAL_PEDIDO=V.COD_SUCURSAL),0) ) STOCK_DISPONIBLE',
'          from v_stock_apex v',
'WHERE ( COD_ARTICULO  = :P788_COD_ARTICULO_det )',
'/*AND COD_SUCURSAL IN (''190'',''275'',''07'',''01'',''209'',''262'',''02'')*/'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P788_COD_ARTICULO_DET'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(40147995650263667)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'No se encontraron registros.'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(391109814657150743)
,p_query_column_id=>1
,p_column_alias=>'COD_SUCURSAL'
,p_column_display_sequence=>10
,p_column_heading=>'Cod.'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(391110282929150744)
,p_query_column_id=>2
,p_column_alias=>'DESC_SUCURSAL'
,p_column_display_sequence=>20
,p_column_heading=>unistr('Descripci\00F3n Sucursal')
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(391110612606150744)
,p_query_column_id=>3
,p_column_alias=>'DESC_RUBRO'
,p_column_display_sequence=>30
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(391111071679150744)
,p_query_column_id=>4
,p_column_alias=>'DESC_DIVISION'
,p_column_display_sequence=>40
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(391111499636150744)
,p_query_column_id=>5
,p_column_alias=>'DESC_CATEGOGIRA'
,p_column_display_sequence=>50
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(391111805845150744)
,p_query_column_id=>6
,p_column_alias=>'DESC_FAMILIA'
,p_column_display_sequence=>60
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(391112242195150744)
,p_query_column_id=>7
,p_column_alias=>'MARCA'
,p_column_display_sequence=>70
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(391112670946150744)
,p_query_column_id=>8
,p_column_alias=>'COD_ART_CORTO'
,p_column_display_sequence=>80
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(391107025762150742)
,p_query_column_id=>9
,p_column_alias=>'COD_ARTICULO'
,p_column_display_sequence=>90
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(391107414922150742)
,p_query_column_id=>10
,p_column_alias=>'DESC_ARTICULO'
,p_column_display_sequence=>100
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(391107885360150743)
,p_query_column_id=>11
,p_column_alias=>'CANT_DISPON'
,p_column_display_sequence=>110
,p_column_heading=>'Cant Dispon'
,p_use_as_row_header=>'N'
,p_column_format=>'999G999G999G999G999G999G990'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(391108208574150743)
,p_query_column_id=>12
,p_column_alias=>'VOLUMEN'
,p_column_display_sequence=>120
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(391108650007150743)
,p_query_column_id=>13
,p_column_alias=>'PEDIDOS_AUTORIZADOS'
,p_column_display_sequence=>130
,p_column_heading=>'Ped. Autorizados'
,p_use_as_row_header=>'N'
,p_column_format=>'999G999G999G999G999G999G990'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(391109049313150743)
,p_query_column_id=>14
,p_column_alias=>'PEDIDOS_PENIENTES'
,p_column_display_sequence=>140
,p_column_heading=>'Ped. Pendientes'
,p_use_as_row_header=>'N'
,p_column_format=>'999G999G999G999G999G999G990'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(391109472471150743)
,p_query_column_id=>15
,p_column_alias=>'STOCK_DISPONIBLE'
,p_column_display_sequence=>150
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1007628469542347961)
,p_plug_name=>'Copiar Registro'
,p_region_template_options=>'#DEFAULT#:js-dialog-size480x320'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>90
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1026276839556595686)
,p_plug_name=>'Datos Clientes'
,p_region_name=>'Datos_Clientes'
,p_region_template_options=>'#DEFAULT#:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>80
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1026283091070593498)
,p_plug_name=>'Filtros Datos de Clientes'
,p_parent_plug_id=>wwv_flow_imp.id(1026276839556595686)
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--accent2:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40108275410263656)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1026283996487592099)
,p_plug_name=>'Saldo Datos de Clientes'
,p_parent_plug_id=>wwv_flow_imp.id(1026276839556595686)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:is-collapsed:t-Region--accent3:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40108275410263656)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select A.tipo_comprobante||'' ''||a.ser_comprobante||'' ''|| a.nro_comprobante comprobante,',
'a.fec_vencimiento,a.siglas, sum(a.monto_cuota)cuota,sum(a.saldo)saldo ,',
'TO_CHAR(fec_vencimiento,''MM/YYYY'')PERIODO',
'from V_SALDOS_APEX a',
'where cod_cliente = :P788_COD_CLIENTE',
'and fec_vencimiento between :P788_FECHA_INICIO',
'AND :P788_FECHA_FIN',
'group by a.tipo_comprobante, a.ser_comprobante,a.nro_comprobante,a.fec_vencimiento, a.siglas',
'',
'order by a.fec_vencimiento'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P788_COD_CLIENTE,P788_FECHA_INICIO,P788_FECHA_FIN'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>210
,p_prn_height=>297
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#9bafde'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'normal'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#efefef'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(1026284107707592100)
,p_max_row_count=>'1000000'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'INV'
,p_internal_uid=>1026284107707592100
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(391121451447150748)
,p_db_column_name=>'COMPROBANTE'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Comprobante'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(391121878860150749)
,p_db_column_name=>'FEC_VENCIMIENTO'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Fec Vencimiento'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_format_mask=>'DD/MM/YYYY'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(391122299874150749)
,p_db_column_name=>'SIGLAS'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Siglas'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(391122603886150749)
,p_db_column_name=>'CUOTA'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Cuota'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(391123021767150749)
,p_db_column_name=>'SALDO'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Saldo'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(391123487389150749)
,p_db_column_name=>'PERIODO'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Periodo'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(1026375687817428970)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_type=>'GROUP_BY'
,p_report_alias=>'620568'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'COMPROBANTE:FEC_VENCIMIENTO:SIGLAS:CUOTA:SALDO:PERIODO'
,p_sort_column_1=>'FEC_VENCIMIENTO'
,p_sort_direction_1=>'DESC'
,p_sum_columns_on_break=>'SALDO:CUOTA'
);
wwv_flow_imp_page.create_worksheet_group_by(
 p_id=>wwv_flow_imp.id(391124174804150750)
,p_report_id=>wwv_flow_imp.id(1026375687817428970)
,p_group_by_columns=>'PERIODO:SIGLAS'
,p_function_01=>'SUM'
,p_function_column_01=>'CUOTA'
,p_function_db_column_name_01=>'APXWS_GBFC_01'
,p_function_label_01=>'Cuota'
,p_function_format_mask_01=>'999G999G999G999G990D00'
,p_function_sum_01=>'Y'
,p_function_02=>'SUM'
,p_function_column_02=>'SALDO'
,p_function_db_column_name_02=>'APXWS_GBFC_02'
,p_function_label_02=>'Saldo'
,p_function_format_mask_02=>'999G999G999G999G990D00'
,p_function_sum_02=>'Y'
,p_sort_column_01=>'PERIODO'
,p_sort_direction_01=>'ASC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1428862049112526979)
,p_plug_name=>'No Conforme'
,p_parent_plug_id=>wwv_flow_imp.id(1026276839556595686)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:is-collapsed:t-Region--accent3:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40108275410263656)
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ROWID,',
'       COD_EMPRESA,',
'       NRO_SOLICITUD,',
'       FEC_SOLICITUD,',
'       COD_CLIENTE,',
'       AUTORIZA_USER,',
'       COD_PROVEEDOR,',
'       OBSERVACION,',
'       ESTADO,',
'       FECHA_AUTORIZA,',
'       FECHA_CREACION,',
'       FECHA_RECHAZO,',
'       FECHA_FINALIZA,',
'       RECHAZA_USER,',
'       FINALIZA_USER,',
'       CREA_USER,',
'       TIPO_SOLICITUD,',
'       SER_SOLICITUD,',
'       OPERACION,',
'       FECHA_ANULA,',
'       ANULA_USER,',
'       SERIE,',
'       COD_SUC_ENT,',
'       COD_SUC_SAL,',
'       TIPO_COMPROBANTE,',
'       TIP_COMPROBANTE_REF,',
'       SER_COMPROBANTE_REF,',
'       NRO_COMPROBANTE_REF,',
'       COD_SUCURSAL,',
'       COD_MOTIVO,',
'       DEPARTAMENTO,',
'       TIPO_SEGUIMIENTO,',
'       COD_REPARTIDOR,',
'       ''x'' EDITAR,',
'       DEPARTAMENTO_CREACION,',
'       (SELECT DISTINCT A.COD_MOTIVO||''-''||DESCRIPCION',
'          FROM PROBLEMAS_CONFORMIDAD A',
'         WHERE A.COD_EMPRESA = C.COD_EMPRESA',
'           AND A.COD_MOTIVO = C.COD_MOTIVO)MOTIVO_DESC',
'  FROM CA_CONFORMIDAD C',
' WHERE C.COD_EMPRESA       = :P_COD_EMPRESA',
'   AND (C.COD_CLIENTE     = :P788_COD_CLIENTE)',
' ',
'   AND (C.ESTADO           IN(''CREADO'',''AUTORIZADO''))',
'   AND FEC_SOLICITUD>SYSDATE-360'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P788_COD_CLIENTE,P788_FECHA_INICIO,P788_FECHA_FIN'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>210
,p_prn_height=>297
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#9bafde'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'normal'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#efefef'
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
 p_id=>wwv_flow_imp.id(1428862130977526980)
,p_max_row_count=>'1000000'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'NZARATE'
,p_internal_uid=>1428862130977526980
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(391124852559150751)
,p_db_column_name=>'ROWID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Rowid'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_column_type=>'OTHER'
,p_rpt_show_filter_lov=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(391125229854150751)
,p_db_column_name=>'COD_EMPRESA'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Cod Empresa'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(391125666958150751)
,p_db_column_name=>'NRO_SOLICITUD'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Nro Solicitud'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(391126054456150751)
,p_db_column_name=>'FEC_SOLICITUD'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Fec Solicitud'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(391126493751150751)
,p_db_column_name=>'COD_CLIENTE'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Cod Cliente'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(391126863989150752)
,p_db_column_name=>'AUTORIZA_USER'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Autoriza User'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(391127288991150752)
,p_db_column_name=>'COD_PROVEEDOR'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Cod Proveedor'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(391127668089150752)
,p_db_column_name=>'OBSERVACION'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Observacion'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(391128037357150752)
,p_db_column_name=>'ESTADO'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Estado'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(391128410850150752)
,p_db_column_name=>'FECHA_AUTORIZA'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Fecha Autoriza'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(391128871850150753)
,p_db_column_name=>'FECHA_CREACION'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Fecha Creacion'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(391129212228150753)
,p_db_column_name=>'FECHA_RECHAZO'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Fecha Rechazo'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(391129641262150753)
,p_db_column_name=>'FECHA_FINALIZA'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Fecha Finaliza'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(391130006223150753)
,p_db_column_name=>'RECHAZA_USER'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Rechaza User'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(391130404776150753)
,p_db_column_name=>'FINALIZA_USER'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Finaliza User'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(391130874630150753)
,p_db_column_name=>'CREA_USER'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Crea User'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(391131291106150753)
,p_db_column_name=>'TIPO_SOLICITUD'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Tipo Solicitud'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(391131684902150754)
,p_db_column_name=>'SER_SOLICITUD'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'Ser Solicitud'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(391132035166150754)
,p_db_column_name=>'OPERACION'
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>'Operacion'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(391132497354150754)
,p_db_column_name=>'FECHA_ANULA'
,p_display_order=>200
,p_column_identifier=>'T'
,p_column_label=>'Fecha Anula'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(391132849078150754)
,p_db_column_name=>'ANULA_USER'
,p_display_order=>210
,p_column_identifier=>'U'
,p_column_label=>'Anula User'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(391133246561150754)
,p_db_column_name=>'SERIE'
,p_display_order=>220
,p_column_identifier=>'V'
,p_column_label=>'Serie'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(391133607489150754)
,p_db_column_name=>'COD_SUC_ENT'
,p_display_order=>230
,p_column_identifier=>'W'
,p_column_label=>'Cod Suc Ent'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(391134047260150755)
,p_db_column_name=>'COD_SUC_SAL'
,p_display_order=>240
,p_column_identifier=>'X'
,p_column_label=>'Cod Suc Sal'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(391134401135150755)
,p_db_column_name=>'TIPO_COMPROBANTE'
,p_display_order=>250
,p_column_identifier=>'Y'
,p_column_label=>'Tipo Comprobante'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(391134826461150755)
,p_db_column_name=>'TIP_COMPROBANTE_REF'
,p_display_order=>260
,p_column_identifier=>'Z'
,p_column_label=>'Tip Comprobante Ref'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(391135279281150755)
,p_db_column_name=>'SER_COMPROBANTE_REF'
,p_display_order=>270
,p_column_identifier=>'AA'
,p_column_label=>'Ser Comprobante Ref'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(391135600037150755)
,p_db_column_name=>'NRO_COMPROBANTE_REF'
,p_display_order=>280
,p_column_identifier=>'AB'
,p_column_label=>'Nro Comprobante Ref'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(391136013774150756)
,p_db_column_name=>'COD_SUCURSAL'
,p_display_order=>290
,p_column_identifier=>'AC'
,p_column_label=>'Cod Sucursal'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(391136423855150756)
,p_db_column_name=>'COD_MOTIVO'
,p_display_order=>300
,p_column_identifier=>'AD'
,p_column_label=>'Cod Motivo'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(391136813283150756)
,p_db_column_name=>'DEPARTAMENTO'
,p_display_order=>310
,p_column_identifier=>'AE'
,p_column_label=>'Departamento'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(391137276159150756)
,p_db_column_name=>'TIPO_SEGUIMIENTO'
,p_display_order=>320
,p_column_identifier=>'AF'
,p_column_label=>'Tipo Seguimiento'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(391137615774150756)
,p_db_column_name=>'COD_REPARTIDOR'
,p_display_order=>330
,p_column_identifier=>'AG'
,p_column_label=>'Cod Repartidor'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(391138097616150756)
,p_db_column_name=>'EDITAR'
,p_display_order=>340
,p_column_identifier=>'AH'
,p_column_label=>'Editar'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(391138483618150757)
,p_db_column_name=>'DEPARTAMENTO_CREACION'
,p_display_order=>350
,p_column_identifier=>'AI'
,p_column_label=>'Departamento Creacion'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(391138855282150757)
,p_db_column_name=>'MOTIVO_DESC'
,p_display_order=>360
,p_column_identifier=>'AJ'
,p_column_label=>'Motivo Desc'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(1487357809375023591)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'7085437'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'NRO_SOLICITUD:FEC_SOLICITUD:MOTIVO_DESC:OPERACION:DEPARTAMENTO:ESTADO:'
,p_sort_column_1=>'FEC_SOLICITUD'
,p_sort_direction_1=>'DESC'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(391147275287150760)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(852724728191781798)
,p_button_name=>'crea_clientes'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187078917263678)
,p_button_image_alt=>'Crea Clientes'
,p_button_position=>'BELOW_BOX'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-plus'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(391147643492150761)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(852724728191781798)
,p_button_name=>'VerClientes'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Datos de Clientes'
,p_button_position=>'BELOW_BOX'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(391115270115150746)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(1026276839556595686)
,p_button_name=>'Cerrar'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Cerrar'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(391119926458150748)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(1026283091070593498)
,p_button_name=>'go'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187078917263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'go'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-search'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(391113331831150745)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(1007628469542347961)
,p_button_name=>'copiar'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Copiar'
,p_button_position=>'BOTTOM'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-copy'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(391097196229150738)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(984190157371287270)
,p_button_name=>'Cancelar'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Cancelar'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(391097552052150739)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(984190157371287270)
,p_button_name=>'Agregar_DET_ART'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Agregar'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(391091777355150736)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(852776617690781638)
,p_button_name=>'Add_item'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Agregar Articulo'
,p_button_position=>'EDIT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'u-color-21-bg u-color-43-text'
,p_icon_css_classes=>'fa-plus'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(391148025462150761)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(852724728191781798)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Guardar Presupuesto'
,p_button_position=>'EDIT'
,p_button_condition=>'P788_NRO_COMPROBANTE'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_button_css_classes=>'u-color-33-bg'
,p_icon_css_classes=>'fa-save'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(391148485823150761)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(852724728191781798)
,p_button_name=>'ACTUALIZAR'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Guardar Presupuesto.'
,p_button_position=>'EDIT'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/*IF :P788_NRO_COMPROBANTE IS NULL THEN',
'    RETURN FALSE;',
'ELSE*/',
'    IF NVL(busca_permiso( :P_COD_EMPRESA,''VTPRESUP'',:APP_USER, ''EDITA_PEDIDO'' ),''N'')=''S''  THEN',
'        RETURN TRUE;    ',
'    ELSE',
'        RETURN FALSE;',
'    END IF;',
'--END IF;'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'FUNCTION_BODY'
,p_button_css_classes=>'u-color-33-bg'
,p_icon_css_classes=>'fa-save'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(391148832755150761)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(852724728191781798)
,p_button_name=>'NUEVO'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight:t-Button--padLeft:t-Button--padRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Nuevo'
,p_button_position=>'EDIT'
,p_button_execute_validations=>'N'
,p_button_css_classes=>'u-color-17-bg'
,p_icon_css_classes=>'fa-plus'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(391149283223150761)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(852724728191781798)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Volver'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:778:&SESSION.::&DEBUG.:::'
,p_button_css_classes=>'u-color-29-bg u-normal-text'
,p_icon_css_classes=>'fa-undo-arrow'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(391149638313150761)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(852724728191781798)
,p_button_name=>'MARGEN'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'M'
,p_button_position=>'EDIT'
,p_button_condition_type=>'NEVER'
,p_button_css_classes=>'u-color-19-bg'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(391150071325150761)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(852724728191781798)
,p_button_name=>'CON_REMISION'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'R'
,p_button_position=>'EDIT'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P788_NRO_COMPROBANTE IS NOT NULL AND :P788_SER_COMPROBANTE IS NOT NULL AND  NVL(:P788_ENTREGA_REMISION, ''N'') <>  ''S''',
'    AND NVL((inv.busca_permiso( :P_cod_empresa,''VTPRESUP'',:APP_USER,''ACTUALIZA_A_REM'')),'''')=''S'' THEN',
'    RETURN false;',
'ELSE',
'    RETURN false;',
'END IF;'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'FUNCTION_BODY'
,p_button_css_classes=>'u-color-33-bg'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(391150478968150762)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_imp.id(852724728191781798)
,p_button_name=>'DESANULAR'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'A'
,p_button_position=>'EDIT'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P788_NRO_COMPROBANTE IS NOT NULL AND :P788_SER_COMPROBANTE IS NOT NULL AND  NVL(:P788_ESTADO, ''N'') in  (''A'',''C'')',
'    AND NVL((inv.busca_permiso( :P_cod_empresa,''VTPRESUP'',:APP_USER,''DESANULA_PEDIDO'')),'''')=''S'' THEN',
'    RETURN TRUE;',
'ELSE',
'    RETURN FALSE;',
'END IF;'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'FUNCTION_BODY'
,p_button_css_classes=>'u-color-33-bg'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(391150871929150762)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_imp.id(852724728191781798)
,p_button_name=>'Imprimir'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight:t-Button--padLeft:t-Button--padRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Imprimir'
,p_button_position=>'EDIT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'u-color-21-bg u-color-43-text'
,p_icon_css_classes=>'fa-print'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(373232689778924243)
,p_button_sequence=>90
,p_button_plug_id=>wwv_flow_imp.id(852724728191781798)
,p_button_name=>'Imprimir_margen'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight:t-Button--padLeft:t-Button--padRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Margen'
,p_button_position=>'EDIT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'u-color-21-bg u-color-43-text'
,p_icon_css_classes=>'fa-print'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(391151690684150762)
,p_button_sequence=>100
,p_button_plug_id=>wwv_flow_imp.id(852724728191781798)
,p_button_name=>'Copiarpedido'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight:t-Button--padLeft'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Copiar Presupuesto'
,p_button_position=>'EDIT'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P788_NRO_COMPROBANTE IS NOT NULL AND :P788_SER_COMPROBANTE IS NOT NULL   THEN',
'    RETURN FALSE;',
'ELSE',
'    RETURN TRUE;',
'END IF;'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'FUNCTION_BODY'
,p_button_css_classes=>'u-color-15-bg u-color-22-border'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(391247136240150801)
,p_branch_name=>'IR_PAGINA_41'
,p_branch_action=>'f?p=&APP_ID.:41:&SESSION.::&DEBUG.:RP,41:P41_COD_CLIENTE,P41_COD_CONDICION_VENTA,P41_COD_LISTA_PRECIO,P41_COD_MONEDA,P41_COD_SUCURSAL:&P34_COD_CLIENTE.,&P34_COD_CONDICION_VENTA.,&P34_COD_LISTA_PRECIO.,&P34_COD_MONEDA.,&P34_SUCURSAL.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(391091777355150736)
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(391247549105150801)
,p_branch_name=>'IR_PAGINA_42'
,p_branch_action=>'f?p=&APP_ID.:42:&SESSION.::&DEBUG.:RP,:P42_COD_CLIENTE:&P34_COD_CLIENTE.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(391147643492150761)
,p_branch_sequence=>20
,p_branch_condition_type=>'ITEM_IS_NOT_NULL'
,p_branch_condition=>'P788_COD_CLIENTE'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(391247945896150801)
,p_branch_name=>'Go To Page 788'
,p_branch_action=>'f?p=&APP_ID.:788:&SESSION.::&DEBUG.:788:P788_PARAM_NRO_PED,P788_PARAM_SER_PED:&P788_NRO_COMPROBANTE.,&P788_SER_COMPROBANTE.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>30
,p_branch_condition_type=>'REQUEST_IN_CONDITION'
,p_branch_condition=>'CREATE, ACTUALIZAR'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(373232575100924242)
,p_name=>'P788_INFORME'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(1009506070360989094)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(391092126743150736)
,p_name=>'P788_DELETE_PROMO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(852776617690781638)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(391092598574150736)
,p_name=>'P788_DELETE_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(852776617690781638)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(391092912343150737)
,p_name=>'P788_CANTIDAD_DETALLE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(852776617690781638)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(391093398257150737)
,p_name=>'P788_COSTO_TOTAL'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(852776617690781638)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(391093775192150737)
,p_name=>'P788_MARGEN'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(852776617690781638)
,p_prompt=>'Margen Presupuesto'
,p_format_mask=>'999G999G999G999G990D00'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_colspan=>2
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(40186463825263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(391094128714150737)
,p_name=>'P788_BLOQUEA_CAB'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(852776617690781638)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(391094800610150737)
,p_name=>'P788_FORMA_COBRO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(863367566874456651)
,p_prompt=>'Forma Cobro'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ''EFECTIVO'' d, ''EFECTIVO'' c from dual union all',
'select ''CHEQUE AL DIA'' d, ''CHEQUE AL DIA'' from dual union all',
'select ''VALORES A DEPOSITAR'' d, ''VALORES A DEPOSITAR'' from dual union all',
'select ''CHEQUE DE TERCERO'' d, ''CHEQUE DE TERCERO'' from dual union all',
'select ''CANJE PARA NOTA DE CREDITO'' d, ''CANJE PARA NOTA DE CREDITO'' from dual union all',
'select ''TARJETA DE DEBITO'' d, ''TARJETA DE DEBITO'' from dual union all',
'select ''TARJETA DE CREDITO'' d, ''TARJETA DE CREDITO'' from dual union all',
'select ''TRANSFERENCIA'' d, ''TRANSFERENCIA'' from dual union all',
'select ''GIFT CARD'' d, ''GIFT CARD'' from dual'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(391095299274150738)
,p_name=>'P788_NOMBRE_AUTORIZADO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(863367566874456651)
,p_prompt=>'Nombre Autorizado'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>50
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
 p_id=>wwv_flow_imp.id(391095615532150738)
,p_name=>'P788_CROQUIS_HABLADO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(863367566874456651)
,p_prompt=>'Croquis Hablado'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(391096038213150738)
,p_name=>'P788_NRO_CI_ENTREGA'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(863367566874456651)
,p_prompt=>'CI RETIRA FACT/REM'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>7
,p_tag_attributes=>'onkeydown="return isNumber(event);"'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(391096470864150738)
,p_name=>'P788_CHAPA_ENTREGA'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(863367566874456651)
,p_prompt=>'Nro Chapa Retira'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>7
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
 p_id=>wwv_flow_imp.id(391097901364150739)
,p_name=>'P788_ID_SEQ'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(984190157371287270)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(391098327515150739)
,p_name=>'P788_COD_SUCURSAL'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(984190157371287270)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(391098754405150739)
,p_name=>'P788_SER_PEDIDO'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(984190157371287270)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(391099145154150739)
,p_name=>'P788_NRO_PEDIDO'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(984190157371287270)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(391099594400150739)
,p_name=>'P788_COD_ART_CORTO'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(984190157371287270)
,p_prompt=>unistr('C\00F3digo Corto:')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'style="text-transform:uppercase"'
,p_colspan=>5
,p_field_template=>wwv_flow_imp.id(40186463825263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(391099918549150739)
,p_name=>'P788_COD_ARTICULO_DET'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(984190157371287270)
,p_prompt=>unistr('C\00F3d. Articulo:')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select s.descripcion ||'' '' ||s.cod_articulo||'' '' ||S.COD_ART_CORTO DESCRIPCION ,s.cod_articulo',
'from st_articulos s, st_existencia_art e, sucursal_zona sz',
'where s.cod_empresa=:p_cod_empresa',
'and s.cod_empresa=e.cod_empresa',
'and s.cod_articulo=e.cod_articulo',
'and e.cod_sucursal=sz.cod_sucursal',
'AND COD_RUBRO=''PR''',
'',
'AND NVL(S.ESTADO,''A'') NOT IN (''I'',''N'')',
'AND S.PRECIO_BASE>0',
'and (s.COD_ART_CORTO = :P788_COD_ART_CORTO OR :P788_COD_ART_CORTO IS NULL)',
'',
'GROUP BY',
's.cod_articulo, s.descripcion, S.COD_ART_CORTO',
'ORDER BY DESCRIPCION '))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186463825263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'Y'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(391100351593150740)
,p_name=>'P788_DESC_ARTICULO'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(984190157371287270)
,p_prompt=>'Descripcion:'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(40186463825263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'HTML'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(391100757037150740)
,p_name=>'P788_CANTIDAD'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(984190157371287270)
,p_prompt=>'Cantidad:'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_tag_attributes=>'onkeydown="return isNumber(event);"'
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(40186463825263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'0'
,p_attribute_02=>'999999999999'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(391101197504150740)
,p_name=>'P788_PRECIO_UNITARIO'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(984190157371287270)
,p_prompt=>'Precio Unitario'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'style="text-align: right" '
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186463825263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
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
 p_id=>wwv_flow_imp.id(391101501360150740)
,p_name=>'P788_TOTAL'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(984190157371287270)
,p_prompt=>'Total:'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'style="color:#8f0000; text-align: right" readonly'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186463825263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(391101916560150740)
,p_name=>'P788_PORC_DESCUENTO'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(984190157371287270)
,p_prompt=>'% Descuento:'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186463825263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'0'
,p_attribute_02=>'100'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(391102328946150740)
,p_name=>'P788_PORC_RECARGO'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(984190157371287270)
,p_prompt=>'% Recargo:'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_imp.id(40186463825263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'0'
,p_attribute_02=>'100'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(391102729076150741)
,p_name=>'P788_DESCUENTO'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(984190157371287270)
,p_prompt=>'Descuento:'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'style="color:#8f0000; text-align: right" readonly'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186463825263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(391103130230150741)
,p_name=>'P788_RECARGO'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(984190157371287270)
,p_prompt=>'Recargo:'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'style="color:#8f0000; text-align: right" readonly'
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_imp.id(40186463825263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(391103508686150741)
,p_name=>'P788_MONTO_TOTAL'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_imp.id(984190157371287270)
,p_prompt=>'Monto Total:'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'style="color:#8f0000; text-align: right" readonly'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186463825263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(391103913841150741)
,p_name=>'P788_TOTAL_IVA'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_imp.id(984190157371287270)
,p_prompt=>'Total IVA:'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'style="color:#8f0000; text-align: right" readonly'
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_imp.id(40186463825263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(391104336679150741)
,p_name=>'P788_REQUIERE_ARMADO'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_imp.id(984190157371287270)
,p_item_default=>'NO'
,p_prompt=>'Requiere Armado'
,p_display_as=>'NATIVE_YES_NO'
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
,p_attribute_03=>'SI'
,p_attribute_04=>'N'
,p_attribute_05=>'NO'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(391104728094150741)
,p_name=>'P788_COD_IVA'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_imp.id(984190157371287270)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(391105108596150741)
,p_name=>'P788_PORC_IVA'
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_imp.id(984190157371287270)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(391105555444150742)
,p_name=>'P788_MONTO_GRAVADA_10'
,p_item_sequence=>270
,p_item_plug_id=>wwv_flow_imp.id(984190157371287270)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(391105993253150742)
,p_name=>'P788_MONTO_GRAVADA_5'
,p_item_sequence=>280
,p_item_plug_id=>wwv_flow_imp.id(984190157371287270)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(391106311584150742)
,p_name=>'P788_MONTO_EXENTA'
,p_item_sequence=>290
,p_item_plug_id=>wwv_flow_imp.id(984190157371287270)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(391113754566150745)
,p_name=>'P788_COPIAR'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(1007628469542347961)
,p_use_cache_before_default=>'NO'
,p_prompt=>'&nbsp'
,p_pre_element_text=>'<strong>Seleccione un &nbsp</strong>'
,p_post_element_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<strong>&nbsp guardado',
'para copiarlo al presupuestoactual.</strong>'))
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(40186463825263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:margin-left-none:margin-right-none'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(391114107328150745)
,p_name=>'P788_SER_COPIA'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(1007628469542347961)
,p_prompt=>'Serie'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>3
,p_cMaxlength=>3
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
,p_attribute_06=>'UPPER'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(391114566547150745)
,p_name=>'P788_NRO_COPIA'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(1007628469542347961)
,p_prompt=>'Numero'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'onkeydown="return isNumber(event);"'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(391115691903150746)
,p_name=>'P788_COD_CLIENTE_1'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(1026276839556595686)
,p_prompt=>'Cod Cliente'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186463825263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(391116065394150746)
,p_name=>'P788_TIPO_CLIENTE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(1026276839556595686)
,p_prompt=>'Tipo Cliente'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186463825263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(391116435179150746)
,p_name=>'P788_LINEA_CREDITO'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(1026276839556595686)
,p_prompt=>'Linea Credito Usd'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186463825263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(391116848171150746)
,p_name=>'P788_SALDO_GS'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(1026276839556595686)
,p_prompt=>'Saldo Gs'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186463825263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(391117280879150747)
,p_name=>'P788_SALDO_US'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(1026276839556595686)
,p_prompt=>'Saldo Us'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186463825263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(391117643152150747)
,p_name=>'P788_VALORES_ADEPOSITAR'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(1026276839556595686)
,p_prompt=>'Valores Adepositar'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186463825263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(391118010250150747)
,p_name=>'P788_SALDO_TOTAL_USD'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(1026276839556595686)
,p_prompt=>'Saldo Total Usd'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186463825263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(391118410416150747)
,p_name=>'P788_POSIBLE'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(1026276839556595686)
,p_prompt=>'Posible Usd'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186463825263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(391118882280150747)
,p_name=>'P788_CALIFICACION_COBRANZA'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(1026276839556595686)
,p_prompt=>'Calificacion Cobranza'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186463825263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(391119210142150747)
,p_name=>'P788_SOBREGIRADO'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(1026276839556595686)
,p_prompt=>'Sobregirado'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'style=''color:red;text-align: right;font-size: 20px;'''
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186463825263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(391120300660150748)
,p_name=>'P788_FECHA_INICIO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(1026283091070593498)
,p_item_default=>'ADD_MONTHS(SYSDATE,-120)'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Inicio'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186463825263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(391120734651150748)
,p_name=>'P788_FECHA_FIN'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(1026283091070593498)
,p_item_default=>'SYSDATE'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Fecha Fin'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186463825263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(391152078411150762)
,p_name=>'P788_ID_PEDIDO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(852724728191781798)
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
':P788_USUARIO||TO_CHAR(SYSDATE,''DDMMYYYYHHMMSS'') ID',
'FROM DUAL'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(391152470841150762)
,p_name=>'P788_USUARIO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(852724728191781798)
,p_source=>'&APP_USER.'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(391153190478150763)
,p_name=>'P788_AUTORIZADO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(1007627985280347956)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(391153582426150763)
,p_name=>'P788_DERIVADO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(1007627985280347956)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(391153824153150763)
,p_name=>'P788_NRO_FAC'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(1007627985280347956)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(391154295221150763)
,p_name=>'P788_FECHA_FACT'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(1007627985280347956)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(391154698820150763)
,p_name=>'P788_COMO_ENTREGAR'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(1007627985280347956)
,p_item_default=>'ENVIAR'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(391155097019150763)
,p_name=>'P788_FECHA_ENTREGA'
,p_is_required=>true
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(1007627985280347956)
,p_item_default=>'SYSDATE'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Fecha Entrega'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(391155467715150763)
,p_name=>'P788_IND_CONFIRMA_FACTURA'
,p_is_required=>true
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(1007627985280347956)
,p_item_default=>'N'
,p_prompt=>'A Confirmar Para Envio'
,p_display_as=>'NATIVE_YES_NO'
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
,p_attribute_03=>'Si'
,p_attribute_04=>'N'
,p_attribute_05=>'No'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(391155825312150764)
,p_name=>'P788_IND_ECOMMERCE'
,p_is_required=>true
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(1007627985280347956)
,p_item_default=>'N'
,p_prompt=>'Ventas Ecommerce'
,p_display_as=>'NATIVE_YES_NO'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
,p_attribute_03=>'Si'
,p_attribute_04=>'N'
,p_attribute_05=>'No'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(391156288566150764)
,p_name=>'P788_ENTREGA_REMISION'
,p_is_required=>true
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(1007627985280347956)
,p_prompt=>'Entrega con Remision'
,p_display_as=>'NATIVE_YES_NO'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
,p_attribute_03=>'Si'
,p_attribute_04=>'N'
,p_attribute_05=>'No'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(391156652847150764)
,p_name=>'P788_IND_CLIENTE_FINAL'
,p_is_required=>true
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(1007627985280347956)
,p_item_default=>'N'
,p_prompt=>'Cliente Final'
,p_display_as=>'NATIVE_YES_NO'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
,p_attribute_03=>'Si'
,p_attribute_04=>'N'
,p_attribute_05=>'No'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(391157389044150764)
,p_name=>'P788_PARAM_CARGA_PRECIOS'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(1009506070360989094)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(391157799158150764)
,p_name=>'P788_PARAM_CARGA_DTO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(1009506070360989094)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(391158161573150765)
,p_name=>'P788_PARAM_CARGA_RECARGO'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(1009506070360989094)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(391158527878150765)
,p_name=>'P788_COD_ARTICULO'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(1009506070360989094)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(391158944890150765)
,p_name=>'P788_MOTIVO_BLOQUEO'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(1009506070360989094)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(391159324196150765)
,p_name=>'P788_IND_LLEVA_OC'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(1009506070360989094)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(391159783904150765)
,p_name=>'P788_PARAM_NRO_PED'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(1009506070360989094)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(391160197539150765)
,p_name=>'P788_PARAM_SER_PED'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(1009506070360989094)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(391161263241150766)
,p_name=>'P788_SER_COMPROBANTE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(1007627818940347955)
,p_prompt=>'Serie'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_colspan=>1
,p_field_template=>wwv_flow_imp.id(40186937130263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(391161635757150766)
,p_name=>'P788_NRO_COMPROBANTE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(1007627818940347955)
,p_prompt=>'Numero de Presupuesto'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(40186937130263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(391162050254150766)
,p_name=>'P788_FEC_COMPROBANTE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(1007627818940347955)
,p_prompt=>'Fecha'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(40186937130263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(391162402869150766)
,p_name=>'P788_SUCURSAL'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(1007627818940347955)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
' DECLARE',
'    VSUC VARCHAR2(15);',
' begin',
'        select DISTINCT cod_sucursal',
'        INTO VSUC',
'        from usuarios',
'        where cod_usuario=:APP_USER',
'        AND COD_EMPRESA = :P_COD_EMPRESA',
'        ;',
'        RETURN VSUC;',
'    exception',
'        when others then',
'            RETURN :P_COD_SUCURSAL ;',
'    end; ',
''))
,p_item_default_type=>'FUNCTION_BODY'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Sucursal'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select descripcion||''(''||cod_sucursal||'')'' D, cod_sucursal C',
'from sucursales ',
'where cod_empresa=:p_cod_empresa',
'and cod_sucursal in (''01'',''105.5'',''105'',''30'') '))
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(391162851264150767)
,p_name=>'P788_ESTADO'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(1007627818940347955)
,p_prompt=>'Estado'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:PENDIENTE;P,FACTURADO;F,ANULADO;A,CERRADO;C'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_tag_attributes=>'style="pointer-events: none;"'
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(391163253626150767)
,p_name=>'P788_COD_CLIENTE'
,p_is_required=>true
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(1007627818940347955)
,p_prompt=>'Cliente'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select nombre|| '' ''|| codigo_area|| '' ''|| num_telefono || '' ''||numero||'' ''||cod_cliente nombre, cod_cliente',
'from cc_clientes c, personas p, telef_personas pt, ident_personas pi ',
'where c.cod_empresa =:p_cod_empresa',
'and c.cod_persona = p.cod_persona',
'and p.cod_persona = pt.cod_persona(+) ',
'and p.cod_persona = pi.cod_persona(+) ',
'and nvl(c.estado,''X'') = ''A'' ',
'order by nombre'))
,p_cSize=>10
,p_cMaxlength=>15
,p_tag_attributes=>'style="width:60px" onkeydown="return isNumber(event);"'
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
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(391163604525150767)
,p_name=>'P788_NOM_CLIENTE'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(1007627818940347955)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Nombre'
,p_source=>'NOM_CLIENTE'
,p_source_type=>'DB_COLUMN'
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
 p_id=>wwv_flow_imp.id(391164058672150767)
,p_name=>'P788_CLIENTE_SOBREGIRADO'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(1007627818940347955)
,p_prompt=>'Estado Cliente'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'style=''color:red;text-align: right;font-size: 20px;'' readonly'
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(391164473510150767)
,p_name=>'P788_COD_DIRECCION'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(1007627818940347955)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(391164884625150767)
,p_name=>'P788_PERMITE_RUC'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(1007627818940347955)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(391165284598150768)
,p_name=>'P788_DIR_CLIENTE'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(1007627818940347955)
,p_prompt=>'Dir Cliente'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_colspan=>4
,p_grid_column=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_icon_css_classes=>'fa-map-o'
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(391165653809150768)
,p_name=>'P788_TEL_CLIENTE'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(1007627818940347955)
,p_prompt=>'Telefono'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_icon_css_classes=>'fa-phone'
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(391166019069150768)
,p_name=>'P788_RUC'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(1007627818940347955)
,p_prompt=>'RUC'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186937130263678)
,p_item_icon_css_classes=>'fa-address-card-o'
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(391166483730150768)
,p_name=>'P788_TELEFONO_DIST'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(1007627818940347955)
,p_prompt=>'Telefono Dist'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_icon_css_classes=>'fa-credit-card-terminal'
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(391166807009150768)
,p_name=>'P788_COD_SUCURSAL_DIST'
,p_is_required=>true
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_imp.id(1007627818940347955)
,p_prompt=>'Sucursal Cliente'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select p.nombre, P.cod_SUCURSAL',
'',
'	from cc_clientes         c, BS_SUCURSAL_CLIENTE p',
'	where c.cod_empresa=:p_cod_empresa',
'	and c.cod_cliente=:P788_cod_cliente',
'	and c.cod_cliente=p.cod_cliente',
'and c.cod_empresa=p.cod_empresa'))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P788_COD_CLIENTE'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_tag_attributes=>'style="min-width:150px;"'
,p_colspan=>3
,p_grid_column=>1
,p_field_template=>wwv_flow_imp.id(40186937130263678)
,p_item_icon_css_classes=>'fa-home'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(391167652441150768)
,p_name=>'P788_CORREO_CLIENTE'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_imp.id(1007627818940347955)
,p_prompt=>'Email Cliente'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'EMAIL'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(391168493294150769)
,p_name=>'P788_COD_PAIS'
,p_is_required=>true
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_imp.id(1007627818940347955)
,p_item_default=>'PAR'
,p_prompt=>'Pais'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(391168890884150769)
,p_name=>'P788_COD_PROVINCIA'
,p_item_sequence=>270
,p_item_plug_id=>wwv_flow_imp.id(1007627818940347955)
,p_prompt=>'Departamento'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT P.DESCRIPCION, P.COD_PROVINCIA',
'FROM PROVINCIAS P',
'WHERE COD_PAIS = :P788_COD_PAIS'))
,p_lov_cascade_parent_items=>'P788_COD_PAIS'
,p_ajax_items_to_submit=>'P788_COD_PAIS'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
,p_attribute_07=>'Departamento'
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
 p_id=>wwv_flow_imp.id(391169201335150769)
,p_name=>'P788_COD_CIUDAD'
,p_item_sequence=>280
,p_item_plug_id=>wwv_flow_imp.id(1007627818940347955)
,p_prompt=>'Ciudad'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DESCRIPCION , COD_CIUDAD',
'FROM CIUDADES ',
'WHERE COD_PAIS = :P788_COD_PAIS',
'AND COD_PROVINCIA = :P788_COD_PROVINCIA'))
,p_lov_cascade_parent_items=>'P788_COD_PAIS,P788_COD_PROVINCIA'
,p_ajax_items_to_submit=>'P788_COD_PAIS,P788_COD_PROVINCIA'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
,p_attribute_07=>'Ciudades'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(391169605032150769)
,p_name=>'P788_COD_VENDEDOR'
,p_is_required=>true
,p_item_sequence=>290
,p_item_plug_id=>wwv_flow_imp.id(1007627818940347955)
,p_prompt=>'Vendedor'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT  P.NOMBRE||'' - ''||F.COD_VENDEDOR d,F.COD_VENDEDOR FROM FV_VENDEDORES F, PERSONAS P',
'WHERE F.COD_EMPRESA=:p_cod_empresa',
'AND F.COD_PERSONA=P.COD_PERSONA',
'AND NVL(F.ESTADO,''I'')NOT IN ''I'' ',
'order by 1'))
,p_lov_cascade_parent_items=>'P788_SUCURSAL'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
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
 p_id=>wwv_flow_imp.id(391170031492150769)
,p_name=>'P788_PLAZO'
,p_item_sequence=>300
,p_item_plug_id=>wwv_flow_imp.id(1007627818940347955)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(391170499646150769)
,p_name=>'P788_SECCION_PRESTAMO'
,p_item_sequence=>310
,p_item_plug_id=>wwv_flow_imp.id(1007627818940347955)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(391170851796150770)
,p_name=>'P788_MOTIVO'
,p_item_sequence=>320
,p_item_plug_id=>wwv_flow_imp.id(1007627818940347955)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(391171288072150770)
,p_name=>'P788_NRO_ACUERDO'
,p_item_sequence=>330
,p_item_plug_id=>wwv_flow_imp.id(1007627818940347955)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(391171682122150770)
,p_name=>'P788_COD_CONDICION_VENTA'
,p_is_required=>true
,p_item_sequence=>340
,p_item_plug_id=>wwv_flow_imp.id(1007627818940347955)
,p_prompt=>'Condicion de Venta'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LOV_CONDICIONES_VENTAS_VTPRESUIPUESTO'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select c.descripcion,',
'       c.cod_condicion_venta,',
'       c.cod_lista_precio,',
'       l.descripcion lista_precio,',
'       c.cod_condicion_venta||'' - ''||c.descripcion descrip',
'  from cc_condiciones_ventas c, vt_listas_precios_cab l',
' where c.cod_empresa = ''1''',
'   and l.cod_empresa = c.cod_empresa',
'   and c.cod_lista_precio = l.cod_lista_precio',
'   AND C.COD_CONDICION_VENTA IN (''205'', ''206'', ''42'')'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_colspan=>4
,p_grid_column=>1
,p_field_template=>wwv_flow_imp.id(40186937130263678)
,p_item_icon_css_classes=>'fa-calendar-pointer'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(391172042715150770)
,p_name=>'P788_COD_LISTA_PRECIO'
,p_item_sequence=>350
,p_item_plug_id=>wwv_flow_imp.id(1007627818940347955)
,p_prompt=>'Lista Precio'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LOV_LISTA_PRECIO_VTPEDIDO'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT l.descripcion, l.cod_lista_precio, m.descripcion moneda, l.cod_lista_precio||'' - ''|| l.descripcion descri',
'  FROM vt_listas_precios_cab l, monedas m',
' WHERE l.cod_empresa = ''1''',
'   AND l.cod_moneda = m.cod_moneda',
'   AND l.estado = ''A''',
''))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186937130263678)
,p_item_icon_css_classes=>'fa-industry'
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
 p_id=>wwv_flow_imp.id(391172458693150770)
,p_name=>'P788_COD_MONEDA'
,p_is_required=>true
,p_item_sequence=>360
,p_item_plug_id=>wwv_flow_imp.id(1007627818940347955)
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
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(40186937130263678)
,p_item_icon_css_classes=>'fa-money'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(391172877365150770)
,p_name=>'P788_TIP_CAMBIO'
,p_item_sequence=>370
,p_item_plug_id=>wwv_flow_imp.id(1007627818940347955)
,p_prompt=>'Tip Cambio'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_icon_css_classes=>'fa-dollar'
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(391173231991150771)
,p_name=>'P788_TIP_CAMBIO_COMPRA'
,p_item_sequence=>380
,p_item_plug_id=>wwv_flow_imp.id(1007627818940347955)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(391173612186150771)
,p_name=>'P788_CAMBIO_MONEDA_PRECIO'
,p_item_sequence=>390
,p_item_plug_id=>wwv_flow_imp.id(1007627818940347955)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(391174058375150771)
,p_name=>'P788_TIPO_ENTREGA'
,p_item_sequence=>400
,p_item_plug_id=>wwv_flow_imp.id(1007627818940347955)
,p_prompt=>'Tipo Entrega'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ''CAPITAL'' NOMBRE, ''CA''',
'FROM DUAL',
'UNION ALL',
'SELECT ''INTERIOR'' NOMBRE, ''IN''',
'FROM DUAL',
'UNION ALL',
'SELECT ''CLIENTE RETIRA'' NOMBRE, ''CR''',
'FROM DUAL',
'UNION ALL',
'SELECT ''ARREGLO ADMINISTRATIVO'' NOMBRE, ''AD''',
'FROM DUAL',
'UNION ALL',
'SELECT ''PROVEEDOR'' NOMBRE, ''PO''',
'FROM DUAL'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-Tipo de Entrega-'
,p_cHeight=>1
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(40186937130263678)
,p_item_icon_css_classes=>'fa-package'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(391174495995150771)
,p_name=>'P788_COD_FLETE'
,p_item_sequence=>410
,p_item_plug_id=>wwv_flow_imp.id(1007627818940347955)
,p_prompt=>'Flete'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
' select descripcion,cod_flete',
'	 ',
'	  from  vt_fletes',
'	  where cod_empresa =:p_cod_empresa',
'          AND TIPO_ENTREGA=:p788_TIPO_ENTREGA',
'	   and ACTIVO=''S'''))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-Flete-'
,p_lov_cascade_parent_items=>'P788_TIPO_ENTREGA'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(40186937130263678)
,p_item_icon_css_classes=>'fa-truck'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(391174888179150771)
,p_name=>'P788_SER_PEDIDO_ANTERIOR'
,p_item_sequence=>420
,p_item_plug_id=>wwv_flow_imp.id(1007627818940347955)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(391175233663150771)
,p_name=>'P788_NRO_PEDIDO_ANTERIOR'
,p_item_sequence=>430
,p_item_plug_id=>wwv_flow_imp.id(1007627818940347955)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(391175689302150772)
,p_name=>'P788_FECHA_CONFIRMACION_ENVIO'
,p_item_sequence=>440
,p_item_plug_id=>wwv_flow_imp.id(1007627818940347955)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(391176075980150772)
,p_name=>'P788_COMENTARIO'
,p_item_sequence=>450
,p_item_plug_id=>wwv_flow_imp.id(1007627818940347955)
,p_prompt=>'Instrucciones de Entrega'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>150
,p_cMaxlength=>150
,p_begin_on_new_line=>'N'
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
 p_id=>wwv_flow_imp.id(391176485017150772)
,p_name=>'P788_OBSERVACION_INTERNA'
,p_item_sequence=>460
,p_item_plug_id=>wwv_flow_imp.id(1007627818940347955)
,p_prompt=>'Observacion Uso Interno'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>150
,p_cMaxlength=>150
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_icon_css_classes=>'fa-clipboard-edit'
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(391176949085150772)
,p_validation_name=>'validar_codigo_cliente'
,p_validation_sequence=>10
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ''S''',
'from cc_clientes a',
'where a.cod_empresa=:P_COD_EMPRESA',
'and a.cod_cliente=:P788_COD_CLIENTE'))
,p_validation_type=>'EXISTS'
,p_error_message=>'No se encuentra el codigo de cliente'
,p_always_execute=>'Y'
,p_when_button_pressed=>wwv_flow_imp.id(391148025462150761)
,p_associated_item=>wwv_flow_imp.id(391163253626150767)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(391177366833150772)
,p_validation_name=>'validar_sucursal_dist'
,p_validation_sequence=>20
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'	select  p.cod_sucursal',
'	',
'	from cc_clientes c, BS_SUCURSAL_CLIENTE p',
'	where c.cod_empresa=:P_COD_EMPRESA',
'	and c.cod_cliente=:P788_cod_cliente',
'	and c.cod_cliente=p.cod_cliente',
'	and p.cod_sucursal=:P788_cod_sucursal_dist',
'AND ROWNUM=1'))
,p_validation_type=>'EXISTS'
,p_error_message=>'Es Obligatorio la sucursal'
,p_when_button_pressed=>wwv_flow_imp.id(391148025462150761)
,p_associated_item=>wwv_flow_imp.id(391166807009150768)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(391177712477150773)
,p_validation_name=>'VA_FLETE'
,p_validation_sequence=>30
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
' select descripcion,cod_flete	 ',
'	  from  vt_fletes',
'	  where cod_empresa = :P_COD_EMPRESA    ',
'	   and ACTIVO=''S''',
'AND COD_FLETE=:P788_COD_FLETE'))
,p_validation_type=>'EXISTS'
,p_error_message=>'Es obligatorio cargar el flete'
,p_when_button_pressed=>wwv_flow_imp.id(391148025462150761)
,p_associated_item=>wwv_flow_imp.id(391174495995150771)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(391178123222150773)
,p_validation_name=>'FORMA_COBRO'
,p_validation_sequence=>40
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P788_COD_CONDICION_VENTA IN (''36'',''60'') AND',
' :P788_FORMA_COBRO IS NULL THEN',
' RETURN FALSE;',
' ELSE RETURN TRUE;',
' END IF;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'Es Obligatorio agregar una forma de cobro'
,p_when_button_pressed=>wwv_flow_imp.id(391148025462150761)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(391178583408150773)
,p_validation_name=>'cliente_retira_bloqueado'
,p_validation_sequence=>50
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'     ',
'      	DECLARE  ',
'  vestado      varchar2(  1 ); ',
'BEGIN',
'  ',
'   select   ',
'         c.estado ',
'    into  ',
'         vestado ',
'    from cc_clientes c ',
'    where c.cod_empresa =:P_COD_EMPRESA',
'      and c.cod_cliente = :P788_cod_cliente     ',
'      and rownum = 1;',
'  ',
'   ',
'  if NVL(vestado,''X'') <> ''A''  and :P788_tipo_entrega=''CR'' then ',
'RETURN FALSE;   ',
'elsif nvl(vestado,''X'') in(''B'',''I'') THEN',
'RETURN FALSE;',
'  ',
'   	ELSE RETURN TRUE;',
'   END IF ;',
'END ;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'No se pueden cargar pedidos de CLIENTE RETIRA para este estado de Cliente'
,p_when_button_pressed=>wwv_flow_imp.id(391148025462150761)
,p_associated_item=>wwv_flow_imp.id(391174058375150771)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(391179384965150773)
,p_validation_name=>'valida_fecha'
,p_validation_sequence=>80
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'    ',
'    if NVL(:P788_IND_CONFIRMA_FACTURA, ''N'') = ''S'' AND',
'       :P788_fecha_confirmacion_envio IS NULL THEN',
'        RETURN false;',
'    end if;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'Es obligatorio agregar la fecha limite de confirmacion no superior a 3 dias'
,p_always_execute=>'Y'
,p_when_button_pressed=>wwv_flow_imp.id(391148025462150761)
,p_associated_item=>wwv_flow_imp.id(391175689302150772)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(391179713640150773)
,p_validation_name=>'valida_3dias'
,p_validation_sequence=>90
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'    ',
'    if NVL(:P788_IND_CONFIRMA_FACTURA, ''N'') = ''S'' AND',
'                  to_number(to_date(:P788_fecha_confirmacion_envio,''DD/MM/YYYY'') - trunc(sysdate)) > 3 THEN',
'        RETURN false;',
'    end if;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'La fecha limite de confirmacion no debe ser superior 3 dias!'
,p_always_execute=>'Y'
,p_when_button_pressed=>wwv_flow_imp.id(391148025462150761)
,p_associated_item=>wwv_flow_imp.id(391175689302150772)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(391180123894150773)
,p_validation_name=>'TOTAL_NULO'
,p_validation_sequence=>130
,p_validation=>'P788_TOTAL'
,p_validation2=>'0'
,p_validation_type=>'ITEM_IN_VALIDATION_NOT_EQ_STRING2'
,p_error_message=>'El total no puede ser nulo'
,p_always_execute=>'Y'
,p_when_button_pressed=>wwv_flow_imp.id(391097552052150739)
,p_associated_item=>wwv_flow_imp.id(391101501360150740)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(391180558864150773)
,p_validation_name=>'VA_DIRECCION_CLIENTE'
,p_validation_sequence=>140
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare ',
'    v_valor NUMBER := 0;',
'begin ',
'v_valor :=  length(:P788_DIR_CLIENTE);',
'',
'IF v_valor < 5 then ',
'    RETURN ''Debe ingresar la direccion correcta'';',
'END  IF;',
'',
'end;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_always_execute=>'Y'
,p_when_button_pressed=>wwv_flow_imp.id(391148025462150761)
,p_associated_item=>wwv_flow_imp.id(391165284598150768)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(391181371452150774)
,p_validation_name=>'VALIDA_PRESTAMO'
,p_validation_sequence=>160
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P788_COD_VENDEDOR = ''193'' THEN',
'    IF :P788_MOTIVO IS NULL THEN',
'        RETURN ''Debe seleccionar un motivo.'';',
'    END IF;',
'ELSIF :P788_COD_VENDEDOR in (''194'',''196'') then',
'    if :P788_PLAZO is null or :P788_SECCION_PRESTAMO is null then',
'        return ''Debe cargar el Plazo y la Seccion que afecta el prestamo.'';',
'    end if;',
'END IF;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_validation_condition=>'nvl(:P788_COD_VENDEDOR,''1'') IN (''193'',''194'',''196'')'
,p_validation_condition2=>'PLSQL'
,p_validation_condition_type=>'EXPRESSION'
,p_when_button_pressed=>wwv_flow_imp.id(391148025462150761)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(391220666281150790)
,p_name=>'CARGA_VALORES'
,p_event_sequence=>20
,p_bind_type=>'live'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(391221110653150790)
,p_event_id=>wwv_flow_imp.id(391220666281150790)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'vusuario varchar2(600):= user;',
'begin',
'IF :P788_PARAM_NRO_PED IS NULL AND :P788_PARAM_SER_PED IS NULL THEN  ',
'',
'',
'',
'    apex_collection.CREATE_OR_TRUNCATE_COLLECTION (''TMP_VTPRESUP'');',
'    apex_collection.CREATE_OR_TRUNCATE_COLLECTION (''VT_PRESUPUESTO_CABECERA'');',
'    apex_collection.CREATE_OR_TRUNCATE_COLLECTION (''VT_PRESUPUESTO_DETALLE'');',
'    ',
'	:P788_NRO_COMPROBANTE:=null;',
'	:P788_cod_cliente:=null;',
'	:P788_NRO_ORDEN_COMPRA:=null;',
'	:P788_DIR_CLIENTE:=null;',
'	:P788_COD_VENDEDOR:=null;',
'	:P788_COD_SUCURSAL_DIST:=null;',
'	:P788_TEL_CLIENTE:=null;',
'	:P788_RUC:=null;',
'	:P788_COD_CONDICION_VENTA:=null;',
'	:P788_COD_LISTA_PRECIO:=null;',
'',
'    :P788_PERMITE_RUC:=''S'';',
'    :P788_SER_COMPROBANTE:=''P'';',
'    :P788_FEC_COMPROBANTE:=SYSDATE;',
'    :P788_ESTADO         :=''P'';',
'    :P788_AUTORIZADO     :=''P'';',
'    :P788_BLOQUEA_CAB    :=''NO'';',
'    :P788_DERIVADO       := ''F'';',
'    ----:P788_SUCURSAL       := :P_COD_SUCURSAL ;',
'',
'',
'',
'',
' ',
'',
'END IF; ',
'',
' IF VTPRESUPUESTO_788.EXISTE_DETALLE THEN',
'    :P788_BLOQUEA_CAB:=''SI'';',
' END IF;',
'',
'end;',
'',
'',
''))
,p_attribute_03=>'P788_SER_COMPROBANTE,P788_FEC_COMPROBANTE,P788_ESTADO,P788_AUTORIZADO,P788_BLOQUEA_CAB,P788_DERIVADO,P788_PERMITE_RUC'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(391221671058150790)
,p_event_id=>wwv_flow_imp.id(391220666281150790)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/*$(''#P788_ESTADO'').css(''pointer-events'',''none'');',
'$(''#P788_AUTORIZADO'').css(''pointer-events'',''none'');',
'$(''#P788_DERIVADO'').css(''pointer-events'',''none'');',
' */',
'',
'$(''#P788_PLAZO'').css(''pointer-events'',''none'');',
'$(''#P788_SECCION_PRESTAMO'').css(''pointer-events'',''none'');',
'$(''#P788_MOTIVO'').css(''pointer-events'',''none'');',
'estado_css();',
'',
' '))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(391222103730150790)
,p_event_id=>wwv_flow_imp.id(391220666281150790)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'document.getElementById("P788_PRECIO_UNITARIO").readOnly=true;'
,p_server_condition_type=>'FUNCTION_BODY'
,p_server_condition_expr1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF NVL(busca_permiso( :P_COD_EMPRESA,''VTPRESUP'',:APP_USER, ''CARGA PRECIOS'' ),''N'')=''S'' THEN',
'    RETURN FALSE;',
'ELSE',
'    RETURN TRUE;',
'END IF;',
''))
,p_server_condition_expr2=>'PLSQL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(391222662649150790)
,p_event_id=>wwv_flow_imp.id(391220666281150790)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'document.getElementById("P788_PORC_DESCUENTO").readOnly=true;'
,p_server_condition_type=>'FUNCTION_BODY'
,p_server_condition_expr1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF NVL(busca_permiso( :P_COD_EMPRESA,''VTPRESUP'',:APP_USER, ''CARGA DESCUENTOS'' ),''N'')=''S'' THEN',
'',
'    RETURN FALSE;',
'ELSE',
'    RETURN TRUE;',
'END IF;',
''))
,p_server_condition_expr2=>'PLSQL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(391223184170150791)
,p_event_id=>wwv_flow_imp.id(391220666281150790)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'document.getElementById("P788_PORC_RECARGO").readOnly=true;'
,p_server_condition_type=>'FUNCTION_BODY'
,p_server_condition_expr1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF NVL(busca_permiso( :P_COD_EMPRESA,''VTPRESUP'',:APP_USER, ''CARGA_RECARGO'' ),''N'')=''S'' THEN',
'    ',
'    RETURN FALSE;',
'ELSE',
'    RETURN TRUE;',
'END IF;',
''))
,p_server_condition_expr2=>'PLSQL'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(391186815841150776)
,p_name=>'datos_cliente'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P788_COD_CLIENTE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(391187329438150777)
,p_event_id=>wwv_flow_imp.id(391186815841150776)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    vcausa      varchar2(400);',
'    vestado     varchar2(400);',
'    vdescestado varchar2(400);begin',
'',
'  begin',
'    select d.cod_direccion cod_dir,',
'           d.detalle || ''-'' || ci.descripcion dir_cliente,',
'           t.codigo_area || '' '' || t.num_telefono,   i.numero,',
'           COD_VENDEDOR, case when :P788_SUCURSAL  in(''105.1'',''105'')then',
'                    ''182''           else',
'                    COD_CONDICION_VENTA',
'                end,',
'           case ',
'                when :P788_SUCURSAL  in(''105.1'',''105'') then',
'                    ''1''',
'                else',
'                    COD_LISTA_PRECIO',
'                end,',
'           case ',
'                when :P788_SUCURSAL  in(''105.1'',''105'') then',
'                    ''CR'' ',
'                end,',
'           case ',
'                when :P788_SUCURSAL  in(''105.1'',''105'') then',
'                    ''1''',
'               ',
'                end,',
'           NVL(IND_CONFIRMA_ENVIO, ''N''),',
'           nvl(c.ind_lleva_oc,''N''),nombre,',
'             c.estado,',
'           b.descripcion,',
'           case',
'             when c.estado = ''B'' THEN',
'              '' BLOQUEADO''',
'             when c.estado = ''C'' then',
'              ''CREDITO BLOQUEADO''',
'             WHEN C.ESTaDO = ''I'' THEN',
'              ''INACTIVO''',
'             ELSE',
'              ''ACTIVO''',
'           END',
'          ',
'      INTO :P788_COD_DIRECCION,',
'           :P788_DIR_CLIENTE,',
'           :P788_TEL_CLIENTE,',
'           :P788_RUC,',
'           :P788_COD_VENDEDOR,',
'           :P788_COD_CONDICION_VENTA,',
'           :P788_COD_LISTA_PRECIO,',
'           :P788_TIPO_ENTREGA,',
'           :P788_COD_FLETE,',
'           :P788_IND_CONFIRMA_FACTURA,',
'           :P788_IND_LLEVA_OC, :P788_NOM_CLIENTE, vestado, vcausa, vdescestado',
'      from cc_clientes    c,',
'           personas       p,',
'           cc_causales    b,',
'           direc_personas d,',
'           telef_personas t,',
'           ident_personas i,',
'           CIUDADES       CI',
'     where c.cod_empresa = :P_COD_EMPRESA',
'       and c.cod_cliente = :P788_cod_cliente',
'       and c.cod_persona = p.cod_persona',
'       and c.cod_causal = b.cod_causal(+)',
'       and c.cod_persona = d.cod_persona(+)',
'       and nvl(d.por_defecto(+), ''N'') = ''S''',
'       and c.cod_persona = t.cod_persona(+)',
'       and nvl(t.por_defecto(+), ''N'') = ''S''',
'       and c.cod_persona = i.cod_persona(+)',
'       and nvl(i.cod_ident(+), ''X'') = ''RUC''',
'       AND CI.COD_PAIS(+) = D.COD_PAIS',
'       AND CI.COD_PROVINCIA(+) = D.COD_PROVINCIA',
'       AND CI.COD_CIUDAD(+) = D.COD_CIUDAD',
'       and rownum = 1;',
'  END;',
'  ',
'  if vestado in (''C'', ''B'', ''I'') AND VCAUSA IS NOT NULL THEN',
'      :P788_MOTIVO_BLOQUEO := ''Cliente estado '' || vdescestado ||',
'                             '' Motivo: '' || VCAUSA;',
'    ELSIF vestado in (''C'', ''B'', ''I'') AND VCAUSA IS NULL THEN',
'      :P788_MOTIVO_BLOQUEO := ''Cliente estado '' || vdescestado;',
'    else',
'      :P788_MOTIVO_BLOQUEO := null;',
'    END IF;',
'    :P788_CLIENTE_SOBREGIRADO:=vdescestado;',
'',
'BEGIN',
'select CC.EMAIL',
'into :P788_CORREO_CLIENTE',
'                 from CC_CONTACTOS_CLIENTES CC',
'                where CC.COD_EMPRESA = :P_COD_EMPRESA',
'                  AND CC.COD_CLIENTE = :P788_cod_cliente',
'                  and CC.COD_CONTACTO = ''FA''',
'                  AND CC.EMAIL IS NOT NULL',
'                  AND ROWNUM = 1;',
'                  EXCEPTION WHEN OTHERS THEN ',
'                  :P788_CORREO_CLIENTE:=NULL;',
'                  END;',
'  BEGIN',
'    apex_collection.CREATE_OR_TRUNCATE_COLLECTION(''VT_PRESUPUESTO_CABECERA'');',
'    apex_collection.CREATE_OR_TRUNCATE_COLLECTION(''VT_PRESUPUESTO_DETALLE'');',
'		  ',
'  END;',
'  :P788_MOTIVO_BLOQUEO := null;',
'  ',
' ',
'end;',
''))
,p_attribute_02=>'P788_COD_CLIENTE'
,p_attribute_03=>'P788_DIR_CLIENTE,P788_TEL_CLIENTE,P788_RUC,P788_COD_VENDEDOR,P788_COD_CONDICION_VENTA, P788_COD_LISTA_PRECIO,P788_MOTIVO_BLOQUEO,P788_IND_CONFIRMA_FACTURA,P788_TIPO_ENTREGA,P788_COD_FLETE,P788_IND_LLEVA_OC,P788_NOM_CLIENTE,P788_CORREO_CLIENTE,P788_CL'
||'IENTE_SOBREGIRADO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(391187832374150777)
,p_event_id=>wwv_flow_imp.id(391186815841150776)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P788_COD_CLIENTE=''00000'' THEN',
':P788_COD_SUCURSAL_DIST :=''1'';',
':P788_TIPO_ENTREGA:=''CR'';',
':P788_COD_FLETE:=''1'';',
':P788_COD_CONDICION_VENTA:=''178'';',
'END IF;',
''))
,p_attribute_02=>'P788_COD_CLIENTE'
,p_attribute_03=>'P788_TIPO_ENTREGA,P788_COD_SUCURSAL_DIST,P788_COD_FLETE,P788_COD_CONDICION_VENTA'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(391188303497150777)
,p_event_id=>wwv_flow_imp.id(391186815841150776)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P788_NOM_CLIENTE'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select nombre',
'from cc_clientes c, personas p, telef_personas pt, ident_personas pi ',
'where c.cod_empresa = :P_COD_EMPRESA',
'and c.cod_persona = p.cod_persona',
'and p.cod_persona = pt.cod_persona(+) ',
'and p.cod_persona = pi.cod_persona(+) ',
'and nvl(c.estado,''X'') not in ''I'' ',
'and c.cod_cliente=:P788_COD_CLIENTE',
'AND ROWNUM=1',
'order by nombre'))
,p_attribute_07=>'P788_COD_CLIENTE,P_COD_EMPRESA'
,p_attribute_08=>'N'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(391188841935150777)
,p_event_id=>wwv_flow_imp.id(391186815841150776)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'	if  f_linea_credito_cliente(:P788_cod_cliente )	>100 then',
'	 :P788_CLIENTE_SOBREGIRADO:=''SOBREGIRADO'';',
'    :P0_MENSAJE_VALIDACION := ''CLIENTE SOBREGIRADO''; ',
'    else ',
'    ---- :P788_CLIENTE_SOBREGIRADO:=null;',
'    :P0_MENSAJE_VALIDACION := null; ',
' ',
'end if;'))
,p_attribute_02=>'P788_COD_CLIENTE'
,p_attribute_03=>'P788_CLIENTE_SOBREGIRADO,P0_MENSAJE_VALIDACION'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(391189269744150777)
,p_name=>'datos_sucursales'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P788_COD_SUCURSAL_DIST'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(391189784106150778)
,p_event_id=>wwv_flow_imp.id(391189269744150777)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'	select   p.telefono, P.COD_PAIS, P.COD_PROVINCIA, P.COD_CIUDAD',
'	 into   :P788_telefono_dist,',
'   :P788_COD_PAIS, :P788_COD_PROVINCIA, :P788_COD_CIUDAD',
'	from cc_clientes c, BS_SUCURSAL_CLIENTE p',
'	where c.cod_empresa=:P_COD_EMPRESA',
'	and c.cod_cliente=:P788_cod_cliente',
'	and c.cod_cliente=p.cod_cliente',
'and c.cod_empresa=p.cod_empresa',
'	and p.cod_sucursal=:P788_cod_sucursal_dist',
'	;',
'exception',
'	when others then ',
'	',
'	 NULL;',
'end;'))
,p_attribute_02=>'P788_COD_SUCURSAL_DIST'
,p_attribute_03=>'P788_TELEFONO_DIST,P788_COD_PROVINCIA, P788_COD_CIUDAD'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(391190240981150778)
,p_event_id=>wwv_flow_imp.id(391189269744150777)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P788_COD_PROVINCIA,P788_COD_CIUDAD'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(391190760795150778)
,p_event_id=>wwv_flow_imp.id(391189269744150777)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P788_COD_PROVINCIA,P788_COD_CIUDAD'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(391191143373150778)
,p_name=>'datos_plazo'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P788_COD_CONDICION_VENTA'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
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
 p_id=>wwv_flow_imp.id(391191659404150778)
,p_event_id=>wwv_flow_imp.id(391191143373150778)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'		BEGIN',
'			  select  ',
'			  			 lp.cod_moneda',
'			    into  ',
'			    		 :P788_cod_moneda',
'			    from cc_condiciones_ventas c,  ',
'			    		 vt_listas_precios_cab lp',
'			   where c.cod_empresa = :P_COD_EMPRESA',
'			     and c.estado      = ''A''',
'					',
'			     and c.cod_condicion_venta = :P788_cod_condicion_venta',
'			     and lp.cod_empresa        = c.cod_empresa',
'			     and lp.cod_lista_precio   = c.cod_lista_precio;',
'		',
'		EXCEPTION',
'				',
'				when others then',
'						 NULL;',
'		END;'))
,p_attribute_02=>'P788_COD_CONDICION_VENTA,P_COD_EMPRESA'
,p_attribute_03=>'P788_COD_MONEDA'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(391192075690150778)
,p_name=>'tipo_cambio'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P788_COD_MONEDA'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(391192579684150779)
,p_event_id=>wwv_flow_imp.id(391192075690150778)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  select  tipo_cambio_dia,  tipo_cambio_compra',
'    into :P788_tip_cambio, :P788_tip_cambio_compra',
'    from monedas',
'   where cod_moneda = :P788_cod_moneda;',
'   ',
'   ',
'   BEGIN',
'  Select  m.tipo_cambio_credito',
'    into :P788_CAMBIO_MONEDA_PRECIO',
'    from monedas m, parametros_generales p',
'   where p.cod_modulo = ''ST''',
'     and p.parametro = ''COD_MONEDA_PREC''',
'     and p.valor = m.cod_moneda;',
'EXCEPTION',
'  when others then',
'    :P788_CAMBIO_MONEDA_PRECIO:= 1 ;',
'END;  ',
'   ',
'EXCEPTION',
'  when others then',
'  ',
'  NULL;',
'  END;'))
,p_attribute_02=>'P788_COD_MONEDA,P788_CAMBIO_MONEDA_PRECIO'
,p_attribute_03=>'P788_TIP_CAMBIO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(391192923068150779)
,p_name=>'DELETE_DETALLE'
,p_event_sequence=>80
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'.delete-note'
,p_bind_type=>'live'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(391193420065150779)
,p_event_id=>wwv_flow_imp.id(391192923068150779)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>'Esta seguro de borrar la linea'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(391193949140150779)
,p_event_id=>wwv_flow_imp.id(391192923068150779)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P788_DELETE_ID'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'$(this.triggeringElement).parent().data(''id'')'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(391194471576150779)
,p_event_id=>wwv_flow_imp.id(391192923068150779)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'IF TO_NUMBER(:P788_DELETE_ID)<>0 THEN',
'Begin',
'',
'    apex_collection.delete_members( ',
'        p_collection_name => ''VT_PRESUPUESTO_DETALLE'',',
'        p_attr_number     => 12,',
'        p_attr_value      => :P788_DELETE_ID );',
'        exception when others then null;',
'    ',
'End;',
'END IF;',
'BEGIN',
'    APEX_COLLECTION.DELETE_MEMBER(',
'        p_collection_name => ''VT_PRESUPUESTO_DETALLE'',',
'        p_seq => TO_NUMBER(:P788_DELETE_ID));',
'            END;',
'',
'',
'',
'end;'))
,p_attribute_02=>'P788_DELETE_ID,P788_DELETE_PROMO'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(391194905623150779)
,p_event_id=>wwv_flow_imp.id(391192923068150779)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  SELECT',
'  ',
'   sum(COSTO_UNITARIO * QUANTITY) COSTO_TOTAL,',
'   case',
'     when sum(MONTO_TOTAL) > 1 then',
'      ROUND((sum(MONTO_TOTAL) - sum(COSTO_UNITARIO * QUANTITY)) /',
'            sum(MONTO_TOTAL) * 100,',
'            2)',
'     else',
'      100',
'   end MARGEN',
'    into :P788_COSTO_TOTAL, :P788_MARGEN',
'    FROM (select seq_id,',
'                 to_number(c004) as quantity,',
'                 to_number(c008) as monto_total,',
'                 ',
'                 (select nvl(costo_prom_nue, 0) /',
'                         decode(:P788_COD_MONEDA, ''2'', :P788_TIP_CAMBIO, 1)',
'                  ',
'                    from st_costos_art',
'                   where cod_empresa = :P_COD_EMPRESA',
'                     and cod_articulo = c003',
'                     and tip_comprobante <> ''INI''',
'                     and nvl(fec_proceso, fec_comprobante) <=',
'                         :P788_FEC_COMPROBANTE',
'                     and to_char(nvl(fec_proceso, fec_comprobante),',
'                                 ''yyyy/mm/dd'') || rowid =',
'                         (select max(to_char(nvl(fec_proceso, fec_comprobante),',
'                                             ''yyyy/mm/dd'') || rowid)',
'                            from st_costos_art',
'                           where cod_empresa = :P_COD_EMPRESA',
'                             and cod_articulo = c003',
'                             and tip_comprobante <> ''INI''',
'                             and nvl(fec_proceso, fec_comprobante) <=',
'                                 :P788_FEC_COMPROBANTE)) COSTO_UNITARIO',
'          ',
'            from apex_collections',
'           where collection_name = ''VT_PRESUPUESTO_DETALLE''',
'           order by 1 asc);',
'EXCEPTION',
'  WHEN OTHERS THEN',
'    NULL;',
'END;',
''))
,p_attribute_02=>'P_COD_EMPRESA,P788_FEC_COMPROBANTE,P788_TIP_CAMBIO,P788_COD_MONEDA'
,p_attribute_03=>'P788_COSTO_TOTAL,P788_MARGEN'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(391195416961150781)
,p_event_id=>wwv_flow_imp.id(391192923068150779)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(852776617690781638)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(391195855926150781)
,p_name=>'DELETE_DETALLE_entrega'
,p_event_sequence=>90
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'.delete-note-ent'
,p_bind_type=>'live'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(391196335938150781)
,p_event_id=>wwv_flow_imp.id(391195855926150781)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>'Esta seguro de borrar la linea'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(391196833958150781)
,p_event_id=>wwv_flow_imp.id(391195855926150781)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P788_DELETE_ID'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'$(this.triggeringElement).parent().data(''id'')'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(391197312506150781)
,p_event_id=>wwv_flow_imp.id(391195855926150781)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'IF TO_NUMBER(:P788_DELETE_ID)<>0 THEN',
' NULL;',
' ',
'END IF; ',
'',
'',
'end;'))
,p_attribute_02=>'P788_DELETE_ID,P788_DELETE_PROMO'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(391198250010150782)
,p_name=>'crea_cliente'
,p_event_sequence=>110
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(391198768754150782)
,p_event_id=>wwv_flow_imp.id(391198250010150782)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'PLUGIN_MODAL PAGE LOOKUP BUTTON'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(391147275287150760)
,p_attribute_01=>'P788_COD_CLIENTE'
,p_attribute_02=>'92'
,p_attribute_03=>'P788_COD_CLIENTE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(391199145848150782)
,p_name=>'da_alerta'
,p_event_sequence=>120
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P788_MOTIVO_BLOQUEO'
,p_condition_element=>'P788_MOTIVO_BLOQUEO'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(391199686964150782)
,p_event_id=>wwv_flow_imp.id(391199145848150782)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'alert("Estado Cliente:  "+ $v("P788_MOTIVO_BLOQUEO"));'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(391200044302150782)
,p_name=>'da_cliente'
,p_event_sequence=>130
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P788_COD_CLIENTE'
,p_condition_element=>'P788_COD_CLIENTE'
,p_triggering_condition_type=>'NOT_EQUALS'
,p_triggering_expression=>'00000'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(391200501079150782)
,p_event_id=>wwv_flow_imp.id(391200044302150782)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_FOCUS'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P788_COD_SUCURSAL_DIST'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(391200992085150782)
,p_name=>'DA_TIPO_ENTREGA'
,p_event_sequence=>140
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P788_TIPO_ENTREGA'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(391201420988150783)
,p_event_id=>wwv_flow_imp.id(391200992085150782)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P788_COD_CLIENTE=''00000'' AND :P788_TIPO_ENTREGA=''CR'' THEN',
'',
':P788_COD_FLETE:=''1'';',
'END IF;',
''))
,p_attribute_02=>'P788_TIPO_ENTREGA,P788_COD_CLIENTE'
,p_attribute_03=>'P788_COD_FLETE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(391205669441150784)
,p_name=>'Nuevo'
,p_event_sequence=>170
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P788_NRO_COMPROBANTE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(391206116342150784)
,p_event_id=>wwv_flow_imp.id(391205669441150784)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P788_NRO_COMPROBANTE'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(391206566163150784)
,p_name=>'levanta_detalle'
,p_event_sequence=>180
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(391091777355150736)
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>wwv_flow_string.join(wwv_flow_t_varchar2(
' $v("P788_COD_CLIENTE")!=='''' && $v("P788_COD_MONEDA")!== ''''',
' '))
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(391207036509150784)
,p_event_id=>wwv_flow_imp.id(391206566163150784)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>unistr('Debe Seleccionar un Cliente/Condici\00F3n/Lista de Precio/Moneda')
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(391207523061150785)
,p_event_id=>wwv_flow_imp.id(391206566163150784)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    dummy varchar2(1);',
'begin',
'        select  distinct ''1''',
'        into dummy',
'          from cc_condiciones_ventas c,  ',
'               vt_listas_precios_cab lp,',
'               vt_listas_precios_cab ls',
'         where c.cod_empresa = :P_COD_EMPRESA',
'           and c.estado      = ''A''          ',
'           and c.cod_condicion_venta = :P788_cod_condicion_venta',
'           and lp.cod_empresa        = c.cod_empresa',
'           and lp.cod_lista_precio   = c.cod_lista_precio',
'           and lp.cod_moneda         =ls.cod_moneda',
'           and lp.cod_empresa        =ls.cod_empresa           ',
'           and ls.cod_lista_precio   = :P788_COD_LISTA_PRECIO',
'           ;',
'',
'',
'',
'exception',
'    when no_data_found then',
'         raise_application_error(-20000, ''El tipo de MONEDA no coincide para la Condicion de Vta. y la Lista de Precios.'' );',
'    when others then',
'        raise_application_error(-20000, sqlerrm );',
'end;'))
,p_attribute_02=>'P788_COD_CONDICION_VENTA,P788_COD_LISTA_PRECIO,P_COD_EMPRESA,P788_COD_MONEDA'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(391208070197150785)
,p_event_id=>wwv_flow_imp.id(391206566163150784)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P788_COD_ARTICULO_DET,P788_PRECIO_UNITARIO,P788_CANTIDAD,P788_PORC_DESCUENTO,P788_PORC_RECARGO,P788_TOTAL_IVA,P788_MONTO_TOTAL,P788_TOTAL,P788_DESCUENTO,P788_COD_IVA,P788_RECARGO,P788_PORC_IVA,P788_REQUIERE_ARMADO,P788_MONTO_GRAVADA_10,P788_MONTO_GRA'
||'VADA_5,P788_MONTO_EXENTA,P788_ID_SEQ,P788_COD_ART_CORTO'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  :P788_precio_unitario  := NULL;',
'  :P788_porc_descuento   := NULL;',
'  :P788_porc_recargo     := NULL;',
'  :P788_total_iva        := 0;',
'  :P788_monto_total      := 0;',
'  :P788_total            := 0;',
'  :P788_monto_gravada_10 := 0;',
'  :P788_monto_gravada_5  := 0;',
'  :P788_monto_exenta     := 0;',
'  :P788_descuento        := 0;',
'  :P788_recargo          := 0;',
'  :P788_cod_articulo_DET := null;',
'  :P788_COD_ART_CORTO    := null;',
'  :P788_cantidad         := null;',
'  :P788_cod_iva          := null;',
'  :P788_porc_iva         := null;',
'  :p788_requiere_armado  := null;',
'  :P788_ID_SEQ           := null;',
'end;',
''))
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(391208536308150785)
,p_event_id=>wwv_flow_imp.id(391206566163150784)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(984190157371287270)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(391208932489150785)
,p_name=>'cancelar'
,p_event_sequence=>200
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(391097196229150738)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(391209443626150785)
,p_event_id=>wwv_flow_imp.id(391208932489150785)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(984190157371287270)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(391209887059150785)
,p_name=>'AGREGA_DETALLE_ART'
,p_event_sequence=>210
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(391097552052150739)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(391212359219150786)
,p_event_id=>wwv_flow_imp.id(391209887059150785)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  VTIPO_IMPUESTO VARCHAR2(10);  VCOD_IVA   VARCHAR2(10);  vporc_iva  NUMBER;  vfec_vigencia  DATE;  ',
'  vporcentaje    NUMBER(8, 2);   vexento_ad     varchar2(5);  vregimen_turismo   varchar2(5);  ',
'  VDECIMALES     NUMBER;  vexenta_regimen    number;  vgravada_regimen   number;  ',
'  vtotal_regimen number;  ',
'  viva_regimen   number;  ',
'  vrecargo   number; ',
'  vdescuento     NUMBER; ',
'  vunitario  number;  ',
'  VMONTO_TOTAL   NUMBER;',
'  VTOTAL_IVA     NUMBER;  ',
'  VTOTAL     NUMBER;  ',
'  vunitario_c_iva    number;    ',
'BEGIN',
' Vdecimales:=50;',
'  BEGIN',
'    SELECT NVL(TIPO_IMPUESTO, ''G'')',
'      INTO VTIPO_IMPUESTO',
'      FROM CC_CLIENTES C',
'     WHERE C.COD_EMPRESA =  :P_COD_EMPRESA',
'       AND C.COD_CLIENTE = :P788_COD_CLIENTE;',
'  EXCEPTION',
'    WHEN OTHERS THEN',
'      VTIPO_IMPUESTO := ''G'';',
'  END;',
'  BEGIN',
'    select a.cod_iva',
'      into vcod_iva',
'      from st_articulos a, st_iva i',
'     where a.cod_empresa =  :P_COD_EMPRESA',
'       and a.cod_articulo = :P788_cod_articulo_det',
'       and a.cod_iva = i.cod_iva(+);',
'  EXCEPTION',
'    WHEN OTHERS THEN',
'      VCOD_IVA := ''1'';',
'  END;',
'  BEGIN',
'    vporcentaje := vporc_iva;',
'    select round(nvl(porc_iva_venta, 0) / 100, 2),',
'           nvl(ind_exento_ad, ''N''),',
'           nvl(ind_regimen_turismo, ''N'')',
'      into vporc_iva, vexento_ad, vregimen_turismo',
'      from st_iva iva',
'     where iva.cod_iva = vcod_iva',
'       and iva.fec_vigencia <= sysdate',
'     order by fec_vigencia desc;',
'  EXCeption when others then null; end;',
'  IF nvl(VTIPO_IMPUESTO, ''G'') = ''E'' THEN',
'    vporcentaje := 0; vporc_iva   := 0;',
'  END IF;',
'  IF NVL(vtipo_impuesto, ''G'') = ''T'' AND nvl(vregimen_turismo, ''N'') = ''S'' AND nvl(vexento_ad, ''N'') <> ''S'' THEN',
'    vporcentaje := 0; vporc_iva   := 0;',
'  END IF;',
'  IF NVL(vtipo_impuesto, ''G'') = ''T'' AND nvl(vregimen_turismo, ''N'') = ''S'' AND  nvl(vexento_ad, ''N'') = ''S'' THEN',
'    vporcentaje := 0; vporc_iva   := 0;',
'  END IF;',
'  if nvl(Vporc_iva, 0) = 0 then',
'  vunitario := round(nvl(replace(:P788_precio_unitario,''.'',''''), 0), nvl(Vdecimales, 0));',
'  else',
'  vunitario := round(nvl(replace(:P788_precio_unitario,''.'',''''), 0) / (1 + (nvl(Vporc_iva, 0))), nvl(Vdecimales, 0));  ',
'  end if;  ',
'  vdescuento   :=  round(vunitario * :P788_CANTIDAD *(:P788_PORC_DESCUENTO / 100),vdecimales);',
'  vrecargo     := NVL(vunitario * :P788_CANTIDAD * (:P788_PORC_recargo / 100),0);',
'  VMONTO_TOTAL := round((VUNITARIO * :P788_CANTIDAD) - nvl(vdescuento, 0) + nvl(vrecargo, 0), nvl(Vdecimales, 0));',
'  VTOTAL_IVA   := round(VMONTO_TOTAL * VPORC_IVA, nvl(Vdecimales, 0));  ',
'  IF NVL(vtipo_impuesto, ''G'') = ''T'' AND nvl(vregimen_turismo, ''N'') = ''S'' AND nvl(vexento_ad, ''N'') <> ''S'' then',
'    vtotal_regimen := nvl(vmonto_total, 0) + nvl(vtotal_iva, 0);',
'    vgravada_regimen :=0; vexenta_regimen:=vtotal_regimen; vgravada_regimen:=0;   viva_regimen:=  0 ; ',
'    Vmonto_total := round(nvl(vgravada_regimen, 0) +  nvl(vexenta_regimen, 0),  nvl(vdecimales, 0));',
'    Vtotal_iva   := round(nvl(viva_regimen, 0), nvl(vdecimales, 0));',
'    vporcentaje := 0; vporc_iva   := 0;',
'  END IF;',
'IF :P788_COD_MONEDA = ''1'' THEN VDECIMALES := 0;  ELSE VDECIMALES := 2; END IF;',
' IF :P788_COD_MONEDA = ''1'' THEN',
'VMONTO_TOTAL:=round(VMONTO_TOTAL / nvl( :P788_CANTIDAD,1)+ (VTOTAL_IVA / nvl( :P788_CANTIDAD,1)), VDECIMALES ) * :P788_CANTIDAD- VTOTAL_IVA;',
'VTOTAL_IVA:=ROUND(VMONTO_TOTAL*:P788_PORC_IVA);',
'VMONTO_TOTAL:=round(VMONTO_TOTAL / nvl( :P788_CANTIDAD,1)+ (VTOTAL_IVA / nvl( :P788_CANTIDAD,1)), VDECIMALES ) * :P788_CANTIDAD- VTOTAL_IVA;',
'end if;',
'  :P788_DESCUENTO   := ROUND(NVL(VDESCUENTO, 0), nvl(vdecimales, 0));',
'  :P788_PORC_IVA    := nvl(VPORC_IVA,0.1);',
'  :P788_RECARGO     := NVL(VRECARGO, 0);',
'  :P788_COD_IVA     := VCOD_IVA;',
'  :P788_MONTO_TOTAL := ROUND(VMONTO_TOTAL, nvl(vdecimales, 0));',
'  :P788_TOTAL_IVA   := ROUND(VTOTAL_IVA, nvl(vdecimales, 0));',
'  :P788_TOTAL       := ROUND(VMONTO_TOTAL + VTOTAL_IVA, nvl(vdecimales, 0));',
'END;',
''))
,p_attribute_02=>'P788_COD_ARTICULO_DET,P788_PORC_DESCUENTO,P788_CANTIDAD,P788_PRECIO_UNITARIO,P788_COD_MONEDA,P788_PORC_RECARGO,P_COD_EMPRESA'
,p_attribute_03=>'P788_TOTAL_IVA,P788_MONTO_TOTAL,P788_TOTAL,P788_COD_IVA,P788_DESCUENTO,P788_RECARGO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(391212850404150787)
,p_event_id=>wwv_flow_imp.id(391209887059150785)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'---V_MONTO_GRAVADA_10 NUMBER;',
'---vporcentaje number;',
'VTIPO_IMPUESTO varchar2(100);',
'vregimen_turismo  varchar2(100);',
'vexento_ad varchar2(100);',
'vcod_iva varchar2(100); ',
'vporc_iva varchar2(100); ',
'BEGIN',
'',
' BEGIN',
'    SELECT NVL(TIPO_IMPUESTO, ''G'')',
'      INTO VTIPO_IMPUESTO',
'      FROM CC_CLIENTES C',
'     WHERE C.COD_EMPRESA = :P_COD_EMPRESA',
'       AND C.COD_CLIENTE = :P788_COD_CLIENTE;',
'  EXCEPTION',
'    WHEN OTHERS THEN',
'      VTIPO_IMPUESTO := ''G'';',
'  END;',
'',
'bEGIN',
'    select a.cod_iva',
'      into vcod_iva',
'      from st_articulos a, st_iva i',
'     where a.cod_empresa = :P_COD_EMPRESA',
'       and a.cod_articulo = :P788_cod_articulo_det',
'       and a.cod_iva = i.cod_iva(+);',
'  EXCEPTION',
'    WHEN OTHERS THEN',
'      VCOD_IVA := ''1'';',
'  END;',
'  BEGIN',
'    ---vporcentaje := vporc_iva;',
'    ',
'    select nvl(porc_iva_venta, ''0''),---round(nvl(porc_iva_venta, 0) / 100, 2),',
'           nvl(ind_exento_ad, ''N''),',
'           nvl(ind_regimen_turismo, ''N'')',
'      into vporc_iva, vexento_ad, vregimen_turismo',
'      from st_iva iva',
'     where iva.cod_iva = vcod_iva',
'       and iva.fec_vigencia <= sysdate',
'     order by fec_vigencia desc;',
'  EXCeption ',
'  when others then ',
'           vporc_iva:= ''0'';',
'           vexento_ad:= ''N'';',
'           vregimen_turismo:= ''N'';',
'  end;',
'',
'   IF :P788_cod_articulo_det IS NOT NULL AND :P788_COD_CLIENTE IS NOT NULL THEN',
'         IF NVL(vtipo_impuesto, ''G'') = ''T'' AND nvl(vregimen_turismo, ''N'') = ''S'' AND',
'             nvl(vexento_ad, ''N'') <> ''S'' THEN',
'         ',
'            :P788_MONTO_GRAVADA_10 := 0;',
'            ---V_MONTO_GRAVADA_10 := :0;',
'            :P788_MONTO_GRAVADA_5  := 0;    ',
'            :P788_MONTO_exenta     := nvl(:P788_MONTO_TOTAL,0) ;',
'',
'          elsif nvl(:P788_TOTAL_IVA,0) > 0 and vporc_iva =''10'' then ---:P788_PORC_IVA = 0.1 then',
'            ',
'            :P788_MONTO_GRAVADA_10 := nvl(:P788_monto_total,0);',
'            :P788_MONTO_GRAVADA_5  := 0;',
'            :P788_MONTO_exenta     := 0;',
'',
'          elsif nvl(:P788_TOTAL_IVA,0) > 0 and vporc_iva =''5'' then---:P788_PORC_IVA = 0.05 then',
'',
'            :P788_MONTO_GRAVADA_10 := 0;',
'            ---V_MONTO_GRAVADA_10:=0;',
'            :P788_MONTO_GRAVADA_5  := nvl(:P788_monto_total,0);',
'            :P788_MONTO_exenta     := nvl(:P788_monto_total,0); -- nvl(V_MONTO_GRAVADA_10,0);',
'',
'          elsif nvl(:P788_TOTAL_IVA, 0) = 0 and vporc_iva =''0'' then---:P788_PORC_IVA = 0 then',
'',
'            :P788_MONTO_GRAVADA_10 := 0;',
'            :P788_MONTO_GRAVADA_5  := 0;',
'            :P788_MONTO_exenta     := nvl(:P788_monto_total,0);',
'            ',
'          end if;',
'  else',
'    :P788_MONTO_GRAVADA_10 := 0;',
'    :P788_MONTO_GRAVADA_5  := 0;',
'    :P788_MONTO_exenta     := 0;',
'  end if;',
'exception',
'    when others then',
'            :P788_MONTO_GRAVADA_10 := NULL;',
'            :P788_MONTO_GRAVADA_5  := NULL;',
'            :P788_MONTO_exenta     := NULL;',
'',
'END;'))
,p_attribute_02=>'P788_MONTO_TOTAL,P788_TOTAL_IVA,P788_TOTAL,P788_COD_IVA,P788_COD_ARTICULO_DET,P788_COD_CLIENTE,P_COD_EMPRESA'
,p_attribute_03=>'P788_MONTO_GRAVADA_10,P788_MONTO_GRAVADA_5,P788_MONTO_EXENTA'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(391213398229150787)
,p_event_id=>wwv_flow_imp.id(391209887059150785)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'   /*if :P788_PORC_DESCUENTO>80 THEN',
' 	 raise_application_error(-20000,''El porcentaje de descuento no puede ser superior a 80%'');',
'   end if;*/',
'    if  nvl(:P788_total,0)>0 or NVL(:P788_PORC_DESCUENTO,0)>0 then  ',
'      vtpresupuesto_788.vtpedido_add_det(p12_cod_empresa => :p_cod_empresa,',
'          p12_ser_comprobante => :P788_ser_comprobante,',
'                                   p12_nro_comprobante => :P788_nro_comprobante,',
'                                   p12_cod_cliente => :P788_cod_cliente,',
'                                   p12_nom_cliente => :P788_nom_cliente,',
'                                   p12_cod_sucursal_dist => :P788_cod_sucursal_dist,',
'                                   p12_lugar_entrega => null,',
'                                   p12_cod_vendedor => :P788_cod_vendedor,',
'                                   p12_cod_condicion_venta => :P788_cod_condicion_venta,',
'                                   p12_cod_lista_precio => :P788_cod_lista_precio,',
'                                   p12_id_pedido => :P788_id_pedido,',
'                                   p12_cod_moneda => :P788_cod_moneda,',
'                                   p12_cod_flete => :P788_cod_flete,',
'                                   p12_tipo_entrega => :P788_tipo_entrega,',
'                                   p12_comentario => :P788_comentario,',
'                                   p12_tip_cambio => :P788_tip_cambio,',
'                                   p12_tip_cambio_compra => :P788_tip_cambio_compra,',
'                                   p12_cod_articulo => :P788_cod_articulo_DET,',
'                                   P12_ID_SEQ => :P788_ID_SEQ ,',
'                                   p12_precio_unitario => replace(:P788_precio_unitario,''.'',''''),',
'                                   p12_cantidad => :P788_cantidad,',
'                                   p12_porc_descuento => :P788_porc_descuento,',
'                                   p12_porc_recargo => :P788_porc_recargo,',
'                                   p12_total_iva => :P788_total_iva,',
'                                   p12_monto_total => :P788_monto_total,',
'                                   p12_total => :P788_total,',
'                                   p12_descuento => :P788_descuento,',
'                                   p12_cod_iva => :P788_cod_iva,',
'                                   p12_recargo => :P788_recargo,',
'                                   p12_porc_iva => :P788_porc_iva,',
'                                   p12_requiere_armado => :P788_requiere_armado,',
'                                   p12_monto_gravada_10 => :P788_monto_gravada_10,',
'                                   p12_monto_gravada_5 => :P788_monto_gravada_5,',
'                                   p12_monto_exenta => :P788_monto_exenta);',
'                                 ',
'        ',
'              :P788_CANTIDAD_DETALLE:=1;',
'    else',
'        	raise_application_error(-20000,''El total del detalle debe ser mayor a 0'');',
'    end if;',
'end;',
''))
,p_attribute_02=>'P788_SER_COMPROBANTE, P788_NRO_COMPROBANTE P788_COD_CLIENTE , P788_COD_SUCURSAL_DIST ,P788_COD_VENDEDOR, P788_COD_CONDICION_VENTA, P788_COD_LISTA_PRECIO, P788_ID_PEDIDO, P788_COD_MONEDA, P788_COD_FLETE, P788_TIPO_ENTREGA,P788_COMENTARIO,P788_TIP_CAMB'
||'IO,              P788_TIP_CAMBIO_COMPRA,P788_COD_ARTICULO_DET,P788_PRECIO_UNITARIO,P788_CANTIDAD,P788_PORC_DESCUENTO,P788_PORC_RECARGO,P788_TOTAL_IVA,        P788_MONTO_TOTAL,P788_TOTAL,P788_DESCUENTO,P788_COD_IVA,P788_RECARGO,P788_REQUIERE_ARMADO,P7'
||'88_MONTO_GRAVADA_10,P788_MONTO_GRAVADA_5,P788_MONTO_EXENTA,P788_CANTIDAD_DETALLE,P788_ID_SEQ'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(391210308532150786)
,p_event_id=>wwv_flow_imp.id(391209887059150785)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  SELECT',
'  ',
'   sum(COSTO_UNITARIO * QUANTITY) COSTO_TOTAL,',
'   case',
'     when sum(MONTO_TOTAL) > 1 then',
'      ROUND((sum(MONTO_TOTAL) - sum(COSTO_UNITARIO * QUANTITY)) /',
'            sum(MONTO_TOTAL) * 100,',
'            2)',
'     else',
'      0',
'   end MARGEN',
'    into :P788_COSTO_TOTAL, :P788_MARGEN',
'    FROM (select seq_id,',
'                 to_number(c004) as quantity,',
'                 to_number(c008) as monto_total,',
'                 ',
'                 (select nvl(costo_prom_nue, 0) /',
'                         decode(:P788_COD_MONEDA, ''2'', :P788_TIP_CAMBIO, 1)',
'                  ',
'                    from st_costos_art',
'                   where cod_empresa = :P_COD_EMPRESA',
'                     and cod_articulo = c003',
'                     and tip_comprobante <> ''INI''',
'                     and nvl(fec_proceso, fec_comprobante) <=',
'                         :P788_FEC_COMPROBANTE',
'                     and to_char(nvl(fec_proceso, fec_comprobante),',
'                                 ''yyyy/mm/dd'') || rowid =',
'                         (select max(to_char(nvl(fec_proceso, fec_comprobante),',
'                                             ''yyyy/mm/dd'') || rowid)',
'                            from st_costos_art',
'                           where cod_empresa = :P_COD_EMPRESA',
'                             and cod_articulo = c003',
'                             and tip_comprobante <> ''INI''',
'                             and nvl(fec_proceso, fec_comprobante) <=',
'                                 :P788_FEC_COMPROBANTE)) COSTO_UNITARIO',
'          ',
'            from apex_collections',
'           where collection_name = ''VT_PRESUPUESTO_DETALLE''',
'           order by 1 asc);',
'EXCEPTION',
'  WHEN OTHERS THEN',
'    NULL;',
'END;',
' '))
,p_attribute_02=>'P_COD_EMPRESA,P788_FEC_COMPROBANTE,P788_COD_MONEDA,P788_COD_MONEDA'
,p_attribute_03=>'P788_COSTO_TOTAL,P788_MARGEN'
,p_attribute_04=>'N'
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
 p_id=>wwv_flow_imp.id(391210887991150786)
,p_event_id=>wwv_flow_imp.id(391209887059150785)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(984190157371287270)
,p_client_condition_type=>'GREATER_THAN_OR_EQUAL'
,p_client_condition_element=>'P788_TOTAL'
,p_client_condition_expression=>'0'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(391211367810150786)
,p_event_id=>wwv_flow_imp.id(391209887059150785)
,p_event_result=>'TRUE'
,p_action_sequence=>90
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(852776617690781638)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(391211878951150786)
,p_event_id=>wwv_flow_imp.id(391209887059150785)
,p_event_result=>'TRUE'
,p_action_sequence=>110
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P788_COD_ARTICULO_ENTREGA'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(391213720317150787)
,p_name=>'obtiene_precio'
,p_event_sequence=>220
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P788_COD_ARTICULO_DET'
,p_condition_element=>'P788_COD_ARTICULO_DET'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(391214204599150787)
,p_event_id=>wwv_flow_imp.id(391213720317150787)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  SELECT TRIM(to_char(PRECIO_web_empresa_APEX(:p_cod_empresa,:P788_COD_ARTICULO_DET,',
'                         :P788_COD_CLIENTE,',
'                         :P788_COD_LISTA_PRECIO,',
'                         0),DECODE(NVL(:P788_COD_MONEDA,''1''),''2'',''999G999G999G999G999D90'',''999G999G999G999G999''))) PROCESO',
'    INTO :P788_PRECIO_UNITARIO',
'    FROM DUAL;',
'  ',
'  IF :P788_SUCURSAL = ''105'' THEN',
'    BEGIN',
'        SELECT DESCUENTO',
'        INTO :P788_PORC_DESCUENTO',
'        FROM VT_OFERTAS_OUTLET',
'        WHERE COD_EMPRESA  = :p_cod_empresa',
'        AND COD_ARTICULO = :P788_COD_ARTICULO_DET;',
'    EXCEPTION',
'        WHEN OTHERS THEN',
'            :P788_PORC_DESCUENTO := 30;',
'    END;',
'  END IF;',
'  IF :P788_SUCURSAL = ''105.1'' THEN',
'    BEGIN',
'        SELECT DESCUENTO',
'        INTO :P788_PORC_DESCUENTO',
'        FROM VT_OFERTAS_feria',
'        WHERE COD_EMPRESA  =  :p_cod_empresa',
'        AND COD_ARTICULO = :P788_COD_ARTICULO_DET;',
'    EXCEPTION',
'        WHEN OTHERS THEN',
'            :P788_PORC_DESCUENTO := 0;',
'    END;',
'  END IF;',
'',
'  IF :P788_COD_ARTICULO_DET = ''FLETE'' THEN',
'    begin',
'      select SUM(to_number(c007) + to_number(c008)) * 3 / 100',
'        INTO :P788_PRECIO_UNITARIO',
'        from apex_collections',
'       where collection_name = ''VT_PRESUPUESTO_DETALLE'';',
'    exception',
'      when others then',
'        :P788_PRECIO_UNITARIO := 0;',
'    end;',
'  ',
'  END IF;',
'END;',
''))
,p_attribute_02=>'P788_COD_LISTA_PRECIO,P788_COD_CLIENTE,P788_COD_ARTICULO_DET,P788_COD_SUCURSAL,P788_SUCURSAL,P_COD_EMPRESA'
,p_attribute_03=>'P788_PRECIO_UNITARIO,P788_PORC_DESCUENTO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(391214648048150787)
,p_name=>'OBTIENE_DESCUENTO'
,p_event_sequence=>230
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P788_CANTIDAD'
,p_condition_element=>'P788_CANTIDAD'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(391215198886150788)
,p_event_id=>wwv_flow_imp.id(391214648048150787)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P788_PORC_DESCUENTO'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT MAX(descuento)',
'FROM (',
'select nvl(f_descuento_tipo_cliente( :p_cod_empresa,:P788_cod_cliente, :P788_cod_condicion_venta,:P788_cod_lista_precio,:P788_cantidad ,:P788_cod_articulo_det, NULL),0) descuento',
'from dual ',
'WHERE NVL(:P788_SUCURSAL,''01'') NOT IN (''105'',''105.1'')',
'UNION ALL ',
'SELECT NVL(MAX(descuento),0) descuento',
'FROM VT_ofertas_OUTLET ',
'WHERE COD_EMPRESA  = :P_COD_EMPRESA',
'AND COD_ARTICULO = :P788_cod_articulo_det',
'AND FEC_CIERRE  >= TRUNC(SYSDATE)',
'and fec_alta    <= TRUNC(SYSDATE)',
'AND :P788_SUCURSAL IS NOT NULL ',
'AND :P788_SUCURSAL=''105''',
'UNION ALL				 ',
'SELECT NVL(MAX(descuento),0) descuento',
'FROM VT_OFERTAS_feria ',
'WHERE COD_EMPRESA  = :P_COD_EMPRESA',
'AND COD_ARTICULO = :P788_cod_articulo_det',
'AND FEC_CIERRE  >= TRUNC(SYSDATE)',
'and fec_alta    <= TRUNC(SYSDATE)',
'AND :P788_SUCURSAL IS NOT NULL ',
'AND :P788_SUCURSAL=''105.1''',
')'))
,p_attribute_07=>'P788_COD_LISTA_PRECIO,P788_COD_ARTICULO_DET,P788_COD_CLIENTE,P788_COD_CONDICION_VENTA,P788_CANTIDAD,P788_SUCURSAL,P_COD_EMPRESA'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(391215583981150788)
,p_name=>'obtiene_monto_total'
,p_event_sequence=>240
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P788_PORC_DESCUENTO'
,p_condition_element=>'P788_PORC_DESCUENTO'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(391216096065150788)
,p_event_id=>wwv_flow_imp.id(391215583981150788)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    VTIPO_IMPUESTO VARCHAR2(10);  ',
'    VCOD_IVA VARCHAR2(10);  ',
'    vporc_iva NUMBER;    ',
'    vexento_ad varchar2(5);  ',
'    vregimen_turismo varchar2(5);  ',
'    VDECIMALES NUMBER;  ',
'    vexenta_regimen number;',
'    vgravada_regimen number :=0;  ',
'    vtotal_regimen number;  ',
'    viva_regimen number;  ',
'    vrecargo number;  ',
'    vdescuento NUMBER;    ',
'    vunitario number;  ',
'    VMONTO_TOTAL NUMBER;',
'    VTOTAL_IVA NUMBER;  ',
'    VMASCARA  VARCHAR2(30);',
'BEGIN',
'IF :P788_COD_MONEDA = ''1'' THEN',
' VDECIMALES:=0;',
'ELSE',
' VDECIMALES:=2;',
'END IF;',
' ',
'BEGIN',
'SELECT NVL(TIPO_IMPUESTO,''G'')',
'  INTO VTIPO_IMPUESTO',
'  FROM CC_CLIENTES C',
' WHERE C.COD_EMPRESA=:P_COD_EMPRESA',
'   AND C.COD_CLIENTE=:P788_COD_CLIENTE;',
'EXCEPTION',
'WHEN OTHERS THEN',
'  VTIPO_IMPUESTO:=''G'';',
'END;',
'BEGIN',
'select a.cod_iva',
'  into vcod_iva',
'  from st_articulos a, st_iva i',
' where a.cod_empresa=:P_COD_EMPRESA',
'   and a.cod_articulo = :P788_cod_articulo_det',
'   and a.cod_iva = i.cod_iva(+);',
'EXCEPTION',
'WHEN OTHERS THEN',
'  VCOD_IVA := ''1'';',
'END;',
'BEGIN ',
'select round(nvl(porc_iva_venta,0)/100,2), nvl(ind_exento_ad, ''N''), nvl(ind_regimen_turismo, ''N'')',
'  into vporc_iva, vexento_ad, vregimen_turismo',
'  from st_iva iva',
' where iva.cod_iva = vcod_iva',
'   and iva.fec_vigencia <= sysdate',
' order by fec_vigencia desc;',
'EXCeption when others then null; end;',
'  IF nvl(VTIPO_IMPUESTO,''G'')=''E'' THEN',
'    vporc_iva   := 0;',
'  END IF;',
'  IF NVL(vtipo_impuesto,''G'')=''T'' AND nvl(vregimen_turismo,''N'')=''S'' AND nvl(vexento_ad,''N'')<>''S'' THEN',
'     vporc_iva   := 0;',
'  END IF;',
'IF NVL(vtipo_impuesto,''G'')=''T'' AND nvl(vregimen_turismo,''N'')=''S'' AND nvl(vexento_ad,''N'')=''S'' THEN',
'      vporc_iva   := 0;',
'END IF;',
'if nvl(Vporc_iva, 0) = 0 then',
'   vunitario:=round(nvl(replace(:P788_precio_unitario,''.'',''''),0),nvl(Vdecimales,0));',
'else',
'   vunitario:=round(nvl(replace(:P788_precio_unitario,''.'',''''),0)/(1+(nvl(Vporc_iva,0))),nvl(Vdecimales,0));  ',
'end if;   ',
'--- raise_application_error(-20000, :P788_PORC_DESCUENTO );',
'  vdescuento := round(vunitario*nvl(:P788_CANTIDAD,1)*(nvl(replace(:P788_PORC_DESCUENTO,''.'',''''),0)/100),vdecimales);',
'   vrecargo := NVL(vunitario,0)*nvl(:P788_CANTIDAD,1)*(nvl(replace(:P788_PORC_recargo,''.'',''''),0)/100);',
'  VMONTO_TOTAL:= round((vunitario*nvl(:P788_CANTIDAD,1))-nvl(vdescuento,0)+nvl(vrecargo,0), nvl(Vdecimales,0));',
'  VTOTAL_IVA := round(VMONTO_TOTAL*VPORC_IVA,nvl(Vdecimales, 0));',
' IF NVL(vtipo_impuesto,''G'')= ''T'' AND nvl(vregimen_turismo, ''N'') = ''S'' AND',
'    nvl(vexento_ad,''N'')<>''S'' then',
'    vtotal_regimen :=nvl(vmonto_total,0)+nvl(vtotal_iva,0);',
'    vgravada_regimen:=0; ',
'    vexenta_regimen:=vtotal_regimen;   ',
'    vgravada_regimen:=0;',
'    viva_regimen:=0;',
'    Vmonto_total := round(nvl(vgravada_regimen,0)+nvl(vexenta_regimen,0),nvl(vdecimales,0));',
'    Vtotal_iva := round(nvl(viva_regimen,0),nvl(vdecimales,0));',
'     vporc_iva :=0;',
'END IF;',
'IF :P788_COD_MONEDA=''1'' THEN',
' VDECIMALES:=0;',
' VMASCARA:=''999G999G999G999G999'';',
'ELSE',
' VDECIMALES:=2;',
' VMASCARA :=''999G999G999G999G999D90'';',
'END IF; ',
':P788_COD_IVA    := VCOD_IVA;',
':P788_PORC_IVA   := nvl(VPORC_IVA,0.1);',
':P788_DESCUENTO  :=TRIM(to_char(ROUND(NVL(nvl(replace(:P788_precio_unitario,''.'',''''), 0) * nvl(:P788_CANTIDAD,1)*( nvl(:P788_PORC_DESCUENTO,0)/100),0),nvl(vdecimales, 0)),VMASCARA));',
':P788_RECARGO    :=TRIM(to_char(NVL(nvl(replace(:P788_precio_unitario,''.'',''''),0) * nvl(:P788_CANTIDAD,1) * (nvl(:P788_PORC_recargo, 0)/100),0),VMASCARA));',
':P788_MONTO_TOTAL:=TRIM(to_char(ROUND(VMONTO_TOTAL, nvl(vdecimales, 0)),VMASCARA));',
':P788_TOTAL_IVA  := TRIM(to_char(ROUND(VTOTAL_IVA, nvl(vdecimales, 0)),VMASCARA));',
':P788_TOTAL      := TRIM(to_char(ROUND(VMONTO_TOTAL + VTOTAL_IVA,nvl(vdecimales, 0)) ,VMASCARA));',
'  ',
'EXCEPTION',
'    WHEN OTHERS THEN',
'             raise_application_error(-20000, sqlerrm );',
'END;',
'',
''))
,p_attribute_02=>'P788_COD_ARTICULO_DET,P788_PORC_DESCUENTO,P788_CANTIDAD,P788_PRECIO_UNITARIO,P788_COD_MONEDA,P788_PORC_RECARGO,P_COD_EMPRESA'
,p_attribute_03=>'P788_TOTAL_IVA,P788_MONTO_TOTAL,P788_TOTAL,P788_COD_IVA,P788_DESCUENTO,P788_RECARGO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(391216514028150788)
,p_event_id=>wwv_flow_imp.id(391215583981150788)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
' ',
'DECLARE',
'     VTIPO_IMPUESTO varchar2(100);',
'    vregimen_turismo  varchar2(100);',
'    vexento_ad varchar2(100);',
'    vcod_iva varchar2(100); ',
'    vporc_iva   varchar2(100); ',
'BEGIN',
'',
' BEGIN',
'    SELECT NVL(TIPO_IMPUESTO, ''G'')',
'      INTO VTIPO_IMPUESTO',
'      FROM CC_CLIENTES C',
'     WHERE C.COD_EMPRESA =:P_COD_EMPRESA',
'       AND C.COD_CLIENTE = :P788_COD_CLIENTE;',
'  EXCEPTION',
'    WHEN OTHERS THEN',
'      VTIPO_IMPUESTO := ''G'';',
'  END;',
'',
'bEGIN',
'    select a.cod_iva',
'      into vcod_iva',
'      from st_articulos a, st_iva i',
'     where a.cod_empresa = :P_COD_EMPRESA',
'       and a.cod_articulo = :P788_cod_articulo_det',
'       and a.cod_iva = i.cod_iva(+);',
'  EXCEPTION',
'    WHEN OTHERS THEN',
'      VCOD_IVA := ''1'';',
'  END;',
'  ',
'  BEGIN',
'    ',
'    select round(nvl(porc_iva_venta, 0)),',
'           nvl(ind_exento_ad, ''N''),',
'           nvl(ind_regimen_turismo, ''N'')',
'      into vporc_iva, vexento_ad, vregimen_turismo',
'      from st_iva iva',
'     where iva.cod_iva = vcod_iva',
'       and iva.fec_vigencia <= sysdate',
'     order by fec_vigencia desc;',
'  EXCeption when others then ',
'            vporc_iva:=''0'';',
'            vexento_ad:=''N'';',
'            vregimen_turismo:=''N'';',
'   end; ',
'   IF :P788_cod_articulo_det IS NOT NULL AND :P788_COD_CLIENTE IS NOT NULL THEN',
'       IF NVL(vtipo_impuesto, ''G'') = ''T'' AND nvl(vregimen_turismo, ''N'') = ''S'' AND',
'             nvl(vexento_ad, ''N'') <> ''S'' THEN ',
'            :P788_MONTO_GRAVADA_10 := 0;            ',
'            :P788_MONTO_GRAVADA_5  := 0;            ',
'            :P788_MONTO_exenta     := replace(:P788_MONTO_TOTAL,''.'','''') ;',
'',
'          elsif :P788_TOTAL_IVA > 0 and vporc_iva = ''10'' then',
'            :P788_MONTO_GRAVADA_10 := replace(:P788_monto_total ,''.'',''''); ',
'            :P788_MONTO_GRAVADA_5  := 0;',
'            :P788_MONTO_exenta     := 0;',
'',
'          elsif :P788_TOTAL_IVA > 0 and vporc_iva = ''5'' then',
'            :P788_MONTO_GRAVADA_10 := 0;',
'            ',
'            :P788_MONTO_GRAVADA_5  := replace(:P788_monto_total,''.'','''');',
'            :P788_MONTO_exenta     := replace(:P788_monto_total ,''.'','''');',
'            ',
'          elsif nvl(:P788_TOTAL_IVA, 0) = 0 and vporc_iva = ''0'' then',
'            :P788_MONTO_GRAVADA_10 := 0;',
'            :P788_MONTO_GRAVADA_5  := 0;',
'            :P788_MONTO_exenta     := replace(:P788_monto_total,''.'','''');',
'',
'          end if;',
'      ',
'      ELSE',
'            :P788_MONTO_GRAVADA_10 := 0;',
'            :P788_MONTO_GRAVADA_5  := 0;',
'            :P788_MONTO_exenta     := 0; ',
'     ',
'     END IF;',
'EXCEPTION',
'    WHEN OTHERS THEN     ',
'            :P788_MONTO_GRAVADA_10 := NULL;',
'            :P788_MONTO_GRAVADA_5  := NULL;',
'            :P788_MONTO_exenta     := NULL; ',
'END; '))
,p_attribute_02=>'P788_MONTO_TOTAL,P788_TOTAL_IVA,P788_TOTAL,P788_COD_IVA,P788_COD_ARTICULO_DET,P788_COD_CLIENTE,P_COD_EMPRESA'
,p_attribute_03=>'P788_MONTO_GRAVADA_10,P788_MONTO_GRAVADA_5,P788_MONTO_EXENTA'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(391216989794150788)
,p_name=>'OBTIENE_MONTO_RECARGO'
,p_event_sequence=>250
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P788_PORC_RECARGO'
,p_condition_element=>'P788_PORC_RECARGO'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(391217477944150789)
,p_event_id=>wwv_flow_imp.id(391216989794150788)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE ',
'    VTIPO_IMPUESTO VARCHAR2(10);  ',
'    VCOD_IVA   VARCHAR2(10);  ',
'    vporc_iva  NUMBER;    ',
'    vexento_ad     varchar2(5);  ',
'    vregimen_turismo   varchar2(5);  ',
'    VDECIMALES     NUMBER;  ',
'    vexenta_regimen    number;',
'    vgravada_regimen   number :=0;  ',
'    vtotal_regimen number;  ',
'    viva_regimen   number;  ',
'    vrecargo   number;  ',
'    vdescuento     NUMBER;    ',
'    vunitario  number;  ',
'    VMONTO_TOTAL   NUMBER;',
'    VTOTAL_IVA     NUMBER;  ',
'    VMASCARA       VARCHAR2(30);',
'BEGIN',
'IF :P788_COD_MONEDA=''1'' THEN ',
'VDECIMALES:=0; ',
' VMASCARA:=''999G999G999G999G999'';',
'ELSE ',
'VDECIMALES:=2; ',
' VMASCARA :=''999G999G999G999G999D90'';',
'END IF;',
'BEGIN',
'SELECT  NVL(TIPO_IMPUESTO,''G'')',
' INTO VTIPO_IMPUESTO',
'FROM CC_CLIENTES C',
'WHERE C.COD_EMPRESA=:P_COD_EMPRESA',
'AND C.COD_CLIENTE=:P788_COD_CLIENTE;',
'EXCEPTION WHEN OTHERS THEN',
'VTIPO_IMPUESTO:=''G'';',
'END;',
'',
'BEGIN',
'     select',
'     ',
'            a.cod_iva',
'       into vcod_iva',
'       from st_articulos a, st_iva i',
'      where a.cod_empresa = :P_COD_EMPRESA',
'        and a.cod_articulo = :P788_cod_articulo_DET',
'        and a.cod_iva = i.cod_iva (+);',
'        EXCEPTION WHEN OTHERS THEN',
'        VCOD_IVA:=''1'';',
'END;',
'',
'',
'   BEGIN',
'      ',
'     select round(nvl( porc_iva_venta,0) / 100,2), nvl(ind_exento_ad,''N''),',
'      nvl(ind_regimen_turismo,''N'')',
'       into  vporc_iva, vexento_ad,vregimen_turismo',
'       from st_iva iva',
'      where iva.cod_iva = vcod_iva',
'        and iva.fec_vigencia <= sysdate ',
'      order by fec_vigencia desc;',
'      exception when others then null;',
'      end;',
'',
'    IF nvl( VTIPO_IMPUESTO, ''G'' ) = ''E''   THEN ',
'       vporc_iva := 0;',
'     END IF;',
'   ',
'      IF  NVL(vtipo_impuesto, ''G'' ) = ''T''   AND  nvl(vregimen_turismo,''N'') = ''S''       THEN ',
'       vporc_iva := 0;',
'      END IF;',
' ',
'	if nvl(Vporc_iva, 0) = 0 then',
'				vunitario := round(nvl(replace(:P788_precio_unitario,''.'',''''), 0),nvl(Vdecimales, 0));           ',
'	 else		',
'				vunitario  := round(nvl(replace(:P788_precio_unitario,''.'',''''), 0) /(1 + (nvl(Vporc_iva, 0))), nvl(Vdecimales, 0));',
'	 end if;',
'                         ',
'        vdescuento:= vunitario * NVL(:P788_CANTIDAD,0)*(NVL(:P788_PORC_DESCUENTO,0)/100);        ',
'        vrecargo:= NVL(vunitario * NVL(:P788_CANTIDAD,0)*(NVL(:P788_PORC_recargo,0)/100),0);        ',
'        VMONTO_TOTAL :=(VUNITARIO*NVL(:P788_CANTIDAD,0))-nvl(vdescuento,0)+nvl(vrecargo,0);',
'        VTOTAL_IVA:= VMONTO_TOTAL*VPORC_IVA;',
'	if Vporc_iva in(round(1.5/100,3),round(1.5/100,2)) or vporc_iva=0 then',
'        vtotal_regimen :=nvl(vmonto_total, 0)+nvl(vtotal_iva, 0);',
'        vgravada_regimen:=0; ',
'        vexenta_regimen:=vtotal_regimen;',
'        vgravada_regimen:=0;',
'        viva_regimen:=  0 ;    ',
'        Vporc_iva:=0;              ',
'        Vmonto_total :=round(nvl(vgravada_regimen,0)+nvl(vexenta_regimen,0),nvl(vdecimales, 0));',
'         Vtotal_iva:=  round(nvl(viva_regimen, 0) ,nvl(vdecimales, 0));                                ',
'                   ',
'END IF;',
':P788_PORC_IVA:=nvl(VPORC_IVA,0.1);',
':P788_COD_IVA:=VCOD_IVA;',
':P788_DESCUENTO:=TRIM(to_char(ROUND(NVL(nvl(replace(:P788_precio_unitario,''.'',''''), 0)*nvl(:P788_CANTIDAD,0)*(nvl(:P788_PORC_DESCUENTO,0)/100)   ,0),nvl(vdecimales, 0)) ,VMASCARA)) ;',
':P788_RECARGO:=TRIM(to_char(NVL(NVL(nvl(replace(:P788_precio_unitario,''.'',''''), 0) * nvl(:P788_CANTIDAD,0)*(nvl(:P788_PORC_recargo,0)/100),0),0) ,VMASCARA)) ;',
':P788_MONTO_TOTAL:= TRIM(to_char(ROUND(VMONTO_TOTAL,nvl(vdecimales, 0)) ,VMASCARA)) ;',
':P788_TOTAL_IVA := TRIM(to_char(ROUND(VTOTAL_IVA,nvl(vdecimales, 0)) ,VMASCARA)) ;',
':P788_TOTAL:= TRIM(to_char(ROUND(VMONTO_TOTAL+VTOTAL_IVA,nvl(vdecimales, 0)) ,VMASCARA)) ;',
'',
'END;',
'',
' '))
,p_attribute_02=>'P788_COD_ARTICULO_DET,P788_PORC_DESCUENTO,P788_CANTIDAD,P788_PRECIO_UNITARIO,P788_COD_MONEDA,P788_PORC_RECARGO,P_COD_EMPRESA'
,p_attribute_03=>'P788_TOTAL_IVA,P788_MONTO_TOTAL,P788_TOTAL,P788_COD_IVA,P788_DESCUENTO,P788_RECARGO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(391217826221150789)
,p_name=>'obtiene_articulo'
,p_event_sequence=>260
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P788_COD_ART_CORTO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(391218339448150789)
,p_event_id=>wwv_flow_imp.id(391217826221150789)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P788_COD_ARTICULO_DET'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cod_articulo',
'from st_articulos a where cod_empresa=:P_COD_EMPRESA',
'and cod_Art_corto=UPPER(:P788_COD_ART_CORTO)',
'and rownum=1'))
,p_attribute_07=>'P788_COD_ART_CORTO,P_COD_EMPRESA'
,p_attribute_08=>'N'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(391218883542150789)
,p_event_id=>wwv_flow_imp.id(391217826221150789)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(1189422063765152886)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(391219299104150789)
,p_name=>'OBTIENE_DESCRIPCION'
,p_event_sequence=>270
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P788_COD_ARTICULO_DET'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(391219757463150789)
,p_event_id=>wwv_flow_imp.id(391219299104150789)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P788_DESC_ARTICULO'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select substr(descripcion,0,66)',
'from st_articulos a where cod_empresa=:P_COD_EMPRESA',
'and cod_articulo=:P788_cod_Articulo_DET',
'and rownum=1'))
,p_attribute_07=>'P788_COD_ARTICULO_DET,P_COD_EMPRESA'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(391220224068150789)
,p_event_id=>wwv_flow_imp.id(391219299104150789)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(1189422063765152886)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(391223561371150791)
,p_name=>'expandir_region'
,p_event_sequence=>280
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(391097552052150739)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(391224027868150791)
,p_event_id=>wwv_flow_imp.id(391223561371150791)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P788_CANTIDAD_DETALLE'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select NVL(count(*) ,0)',
'from apex_collections',
' where collection_name = ''VT_PRESUPUESTO_DETALLE'''))
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(391224512183150791)
,p_event_id=>wwv_flow_imp.id(391223561371150791)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(852724728191781798)
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'document.getElementById("pedido").classList.add("is-collapsed");',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(391225082463150791)
,p_event_id=>wwv_flow_imp.id(391223561371150791)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(852724728191781798)
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var numEntries = $v("P788_CANTIDAD_DETALLE"),',
'    npedido = $v("P788_NRO_COMPROBANTE")',
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
'//collapsed',
'',
'',
'estado_css();'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(391225489620150791)
,p_name=>'verifica_ruc'
,p_event_sequence=>290
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P788_RUC'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(391225947855150792)
,p_event_id=>wwv_flow_imp.id(391225489620150791)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P788_PERMITE_RUC:=''S'';',
'',
'DECLARE',
'  VDATOS               VARCHAR2(32000);',
'  VDIREC               VARCHAR2(32000);',
'  V_DETALLE            VARCHAR2(10000);',
'  V_CABECERA           VARCHAR2(10000);',
'  VDATOS_RETORNO       VARCHAR2(32000);',
'  P_JSON               VARCHAR2(4000);',
'  P_DATOS              VARCHAR2(4000);',
'  L_MSJ                VARCHAR2(4000);',
'  L_PATH               VARCHAR2(200);',
'  L_ESTADO             VARCHAR2(200);',
'  NOMBRE               VARCHAR2(1);',
'  VDATOS2              VARCHAR2(5000);',
'  V_DESCRIPCION_ESTADO VARCHAR2(500);',
'BEGIN',
'  :P0_MENSAJE_VALIDACION := NULL; ',
'  :P788_PERMITE_RUC:=''S''; ',
'END;',
'',
''))
,p_attribute_02=>'P788_RUC,P788_COD_CLIENTE'
,p_attribute_03=>'P0_MENSAJE_VALIDACION,P788_PERMITE_RUC'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(391226377482150792)
,p_name=>'llama_imprimir'
,p_event_sequence=>300
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(391150871929150762)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(373232410770924241)
,p_event_id=>wwv_flow_imp.id(391226377482150792)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin :p788_informe := BS_BUSCA_PARAMETRO(''VT'',''VTPRESUPUESTO''||''_''||:p_cod_empresa);',
'end;'))
,p_attribute_03=>'P788_INFORME'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(391226846264150792)
,p_event_id=>wwv_flow_imp.id(391226377482150792)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var params = []',
'var empresa = apex.item("P_COD_EMPRESA").getValue();',
'var tip_comprobante =''PED'';',
'var ser_comprobante = apex.item("P788_SER_COMPROBANTE").getValue();',
'var nro_comprobante = apex.item("P788_NRO_COMPROBANTE").getValue();',
'var informe = apex.item("P788_INFORME").getValue();',
'var usuario = ''&APP_USER.'';',
'params.push({ name: ''P_COD_EMPRESA'', value: empresa})',
'params.push({ name: ''P_TIP_COMPROBANTE'', value: tip_comprobante})',
'params.push({ name: ''P_SER_COMPROBANTE'', value: ser_comprobante}) ',
'params.push({ name: ''P_NRO_COMPROBANTE'', value: nro_comprobante}) ',
'params.push({ name: ''P_USUARIO'', value: usuario}) ',
'//createReportUrl(''VTPRESUPUESTO'', params)',
'createReportUrl(informe, params)'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(373232734014924244)
,p_name=>'llama_imprimir_1'
,p_event_sequence=>310
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(373232689778924243)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(373232959496924246)
,p_event_id=>wwv_flow_imp.id(373232734014924244)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var params = []',
'var empresa = apex.item("P_COD_EMPRESA").getValue();',
'var tip_comprobante =''PED'';',
'var ser_comprobante = apex.item("P788_SER_COMPROBANTE").getValue();',
'var nro_comprobante = apex.item("P788_NRO_COMPROBANTE").getValue();',
'var informe = ''VTPRESUMARGEN'';',
'var usuario = ''&APP_USER.'';',
'params.push({ name: ''P_COD_EMPRESA'', value: empresa})',
'params.push({ name: ''P_TIP_COMPROBANTE'', value: tip_comprobante})',
'params.push({ name: ''P_SER_COMPROBANTE'', value: ser_comprobante}) ',
'params.push({ name: ''P_NRO_COMPROBANTE'', value: nro_comprobante}) ',
'params.push({ name: ''P_USUARIO'', value: usuario}) ',
'//createReportUrl(''VTPRESUPUESTO'', params)',
'createReportUrl(informe, params) '))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(391227296937150792)
,p_name=>'levantar_cliente'
,p_event_sequence=>320
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(391147643492150761)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(391227789989150792)
,p_event_id=>wwv_flow_imp.id(391227296937150792)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare ',
'vjerarquia varchar2(100);',
'vtot number;',
' VMONEDA VARCHAR2(10);',
'				vtip number;',
'begin',
':P788_COD_CLIENTE_1:=:P788_COD_CLIENTE;',
'	BEGIN   	',
'				SELECT TC.DESCRIPCION, cc.nro_jerarquia, Cc.LIMITE_CREDITO, cc.cod_moneda_limite',
'				  INTO :P788_TIPO_CLIENTE, VJERARQUIA,     	:P788_LINEA_CREDITO, VMONEDA',
'',
'				  FROM CC_TIPO_CLIENTE TC, CC_CLIENTES CC',
'				 WHERE TC.COD_TIP_CLIENTE=CC.TIP_CLIENTE',
'                                 AND CC.COD_EMPRESA=:P_COD_EMPRESA',
'                                 AND CC.COD_CLIENTE = :P788_COD_CLIENTE;  ',
'		EXCEPTION',
'				WHEN OTHERS THEN',
'			      :P788_TIPO_CLIENTE:=NULL;',
'		END ;',
'                ',
'begin',
'				select descripcion',
'				  into :P788_CALIFICACION_COBRANZA',
'				  from cc_jerarquias',
'				 where cod_empresa   = :P_COD_EMPRESA',
'				   and nro_jerarquia = vjerarquia ;',
'		exception',
'				when others then',
'				:P788_CALIFICACION_COBRANZA:= null ;          ',
'		end;                ',
'                               ',
'',
'	Begin',
'				select nvl( sum( ',
'                                CASE WHEN COD_MONEDA_CUOTA=''2'' THEN        saldo_cuota ELSE 0 END',
'                                ), 0 ) ,',
'                                nvl( sum( ',
'                                CASE WHEN COD_MONEDA_CUOTA=''1'' THEN        saldo_cuota ELSE 0 END',
'                                ), 0 ) ',
'				  into :P788_SALDO_US, :P788_SALDO_GS',
'				  from cc_saldos',
'				 where cod_empresa      =:P_COD_EMPRESA',
'				   and cod_cliente      = :P788_cod_cliente;',
'		exception',
'				when others then',
'						:P788_SALDO_US := 0;',
'		end;',
'                ',
'                ',
'        	 ',
'				',
'		begin',
'				select tipo_cambio_dia',
'				  into vtip',
'				  from monedas',
'				 where cod_moneda = ''2'';',
'				 ',
'				begin',
'						select sum(nvl(SAL.monto_valor, 0) * nvl(mON.tipo_cambio_dia, 1)/ vtip)',
'						  into :P788_VALORES_ADEPOSITAR',
'						  from CC_VALORES sal,    ',
'						  		 monedas mon,         ',
'						  		 CC_FORMAS_COBROS CO',
'						 where SAL.cod_empresa = :P_COD_EMPRESA',
'							 and sal.cod_cliente = :P788_cod_CLIENTE',
'							 and nvl(SAL.ESTADO_VALOR,''P'' ) <> ''D''',
'							 AND nvl(SAL.ESTADO_VALOR,''P'' ) NOT IN (''CR'',''CP'',''C'',''R'')',
'							 and (SAL.FEC_EMISION >TO_DATE(''01/01/2000'') )',
'							 and SAL.COD_MONEDA = mon.cod_moneda',
'							 AND SAL.COD_EMPRESA = CO.COD_EMPRESA',
'							 AND SAL.COD_PER_JURIDICA = CO.COD_PER_JURIDICA',
'							 AND SAL.TIP_DOCUMENTO = CO.TIP_DOCUMENTO',
'							 AND SAL.NRO_VALOR = CO.NRO_VALOR',
'							 AND SAL.FEC_EMISION <> SAL.FEC_VENCIMIENTO ',
'							 AND CO.SUB_TIPO_TRANS=''16'';',
'				EXCEPTION',
'						WHEN OTHERS THEN ',
'								:P788_VALORES_ADEPOSITAR:=0;',
'				END;',
'               IF vmoneda=''1''       then          ',
'     	:P788_LINEA_CREDITO := nvl( :P788_LINEA_CREDITO, 0 ) * nvl( vtip, 1 );                           ',
'        end if;',
'        ',
'	vtot := nvl( :P788_saldo_gs, 0 ) / nvl( vtip, 1 );  ',
'				:P788_saldo_total_usd := nvl( vtot, 0 ) + nvl( :P788_saldo_us, 0 );                                ',
'',
'	:P788_posible := nvl( :P788_lINEA_credito, 0 ) - nvl( :P788_saldo_total_usd,0 )-nvl(:P788_VALORES_ADEPOSITAR,0);',
'',
'	if  f_linea_credito_cliente(:P788_cod_cliente )	>100 then',
'	:P788_sobregirado:=''SOBREGIRADO'';',
'else                                   ',
'	:P788_sobregirado:=NULL;',
'end if;',
':P788_saldo_gs:= to_char(:P788_saldo_gs,''999G999G999G990'');',
':P788_saldo_US:= to_char(:P788_saldo_US,''999G999G999G990D00'');',
':P788_linea_credito:= to_char(:P788_linea_credito,''999G999G999G990D00'');',
':P788_posible:= to_char(:P788_posible,''999G999G999G990D00'');',
':P788_saldo_total_usd:= to_char(:P788_saldo_total_usd,''999G999G999G990D00'');',
'',
'END;	        ',
'end;'))
,p_attribute_02=>'P788_COD_CLIENTE,P_COD_EMPRESA'
,p_attribute_03=>'P788_TIPO_CLIENTE,P788_LINEA_CREDITO,P788_SALDO_GS,P788_SALDO_US,P788_VALORES_ADEPOSITAR,P788_SALDO_TOTAL_USD,P788_POSIBLE,P788_CALIFICACION_COBRANZA,P788_SOBREGIRADO,P788_COD_CLIENTE_1'
,p_attribute_04=>'N'
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
 p_id=>wwv_flow_imp.id(391228297678150792)
,p_event_id=>wwv_flow_imp.id(391227296937150792)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(1026276839556595686)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(391228610986150793)
,p_name=>'Cerrar_datos_clientes'
,p_event_sequence=>330
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(391115270115150746)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(391229149901150793)
,p_event_id=>wwv_flow_imp.id(391228610986150793)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(1026276839556595686)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(391229528417150793)
,p_name=>'DA_P788_COD_ARTICULO_ENTREGA'
,p_event_sequence=>340
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P788_COD_ARTICULO_ENTREGA'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(391230086780150793)
,p_event_id=>wwv_flow_imp.id(391229528417150793)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P788_COD_ARTICULO_ENTREGA'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(391233896813150794)
,p_name=>'da_copiar'
,p_event_sequence=>350
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(391113331831150745)
,p_condition_element=>'P788_NRO_COPIA'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(391234324140150794)
,p_event_id=>wwv_flow_imp.id(391233896813150794)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'Debe cargar la Serie y el Numero para replicar.'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(391234823728150795)
,p_event_id=>wwv_flow_imp.id(391233896813150794)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'    DECLARE ',
'    BEGIN',
'     IF :P788_COPIAR=''PRESUPUESTO'' THEN',
'            select  pc.cod_cliente,  pc.cod_condicion_venta,  pc.cod_moneda, mo.tipo_cambio_dia, PC.COD_LISTA_PRECIO,PC.COD_VENDEDOR              ',
'              into  :P788_COD_CLIENTE,:P788_COD_CONDICION_VENTA,:P788_COD_MONEDA,:P788_TIP_CAMBIO,:P788_COD_LISTA_PRECIO,:P788_COD_VENDEDOR',
'              from VT_PRESUPUESTO_cabecera pc,   cc_clientes pr, personas pe,',
'                   cc_condiciones_ventas cc, monedas mo, vt_listas_precios_cab l',
'             where pc.cod_empresa = :P_COD_EMPRESA',
'               and pc.tip_comprobante = ''PED''',
'               and pc.ser_comprobante = :P788_SER_COPIA',
'               and pc.nro_comprobante = :P788_NRO_COPIA',
'               and pc.cod_empresa = pr.cod_empresa',
'               and pc.cod_cliente = pr.cod_cliente',
'               and pe.cod_persona = pr.cod_persona',
'               and pc.cod_empresa = cc.cod_empresa',
'               and pc.cod_condicion_venta = cc.cod_condicion_venta',
'               and pc.cod_moneda = mo.cod_moneda',
'               and pc.cod_empresa=l.cod_empresa',
'               and pc.cod_lista_precio=l.cod_lista_precio;',
'',
'      ELSE',
'',
'            select pc.cod_cliente, pc.cod_condicion_venta,  pc.cod_moneda,  mo.tipo_cambio_dia, PC.COD_LISTA_PRECIO,PC.COD_VENDEDOR',
'              into :P788_COD_CLIENTE,:P788_COD_CONDICION_VENTA,:P788_COD_MONEDA,:P788_TIP_CAMBIO,:P788_COD_LISTA_PRECIO,:P788_COD_VENDEDOR',
'              from VT_PRESUPUESTO_cabecera pc, sucursales su, cc_clientes pr, personas pe,',
'                   cc_condiciones_ventas cc, monedas mo, vt_listas_precios_cab l',
'             where pc.cod_empresa = :p_cod_empresa',
'               and pc.tip_comprobante = ''PED'' ',
'               and pc.ser_comprobante = :P788_SER_COPIA',
'               and pc.nro_comprobante = :P788_NRO_COPIA',
'               and pc.cod_empresa = su.cod_empresa',
'               and pc.cod_sucursal = su.cod_sucursal',
'               and pc.cod_empresa = pr.cod_empresa',
'               and pc.cod_cliente = pr.cod_cliente',
'               and pe.cod_persona = pr.cod_persona',
'               and pc.cod_empresa = cc.cod_empresa',
'               and pc.cod_condicion_venta = cc.cod_condicion_venta',
'               and pc.cod_moneda = mo.cod_moneda',
'               and pc.cod_empresa=l.cod_empresa',
'               and pc.cod_lista_precio=l.cod_lista_precio;',
'',
'      END IF;',
'  EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'       raise_application_error(-20000, :P788_COPIAR||'' no encontrado: ''||:P788_SER_COPIA||''-''||:P788_NRO_COPIA );',
'    when others then',
'        raise_application_error(-20000, sqlerrm );',
'  END;'))
,p_attribute_02=>'P788_SER_COPIA,P788_NRO_COPIA,P788_COPIAR'
,p_attribute_03=>'P788_COD_CLIENTE,P788_COD_CONDICION_VENTA,P788_COD_MONEDA,P788_TIP_CAMBIO,P788_COD_LISTA_PRECIO,P788_COD_VENDEDOR'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(391235306077150795)
,p_event_id=>wwv_flow_imp.id(391233896813150794)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_collection.CREATE_OR_TRUNCATE_COLLECTION(''VT_PRESUPUESTO_CABECERA'');',
'        apex_collection.add_member(p_collection_name => ''VT_PRESUPUESTO_CABECERA'',',
'                                   p_c001            => :P788_SER_COMPROBANTE,',
'                                   p_c002            => :P788_NRO_COMPROBANTE,',
'                                   p_c003            => :P788_COD_CLIENTE,',
'                                   p_c004            => :P788_NOM_CLIENTE,',
'                                   p_c005            => :P788_COD_SUCURSAL_DIST,',
'                                   p_c006            => NULL,',
'                                   p_c007            => :P788_COD_VENDEDOR,',
'                                   p_c008            => :P788_COD_CONDICION_VENTA,',
'                                   p_c009            => :P788_COD_LISTA_PRECIO,',
'                                   p_c010            => :P788_ID_PEDIDO,',
'                                   p_c011            => :P788_cod_moneda,',
'                                   p_c012            => :P788_COD_FLETE,',
'                                   p_c013            => :P788_TIPO_ENTREGA,',
'                                   p_c014            => :P788_COMENTARIO,',
'                                   p_c015            => :P788_TIP_CAMBIO,',
'                                   p_c016            => :P788_TIP_CAMBIO_COMPRA);',
' ',
'',
'',
'  apex_collection.CREATE_OR_TRUNCATE_COLLECTION(''VT_PRESUPUESTO_DETALLE'');',
'',
'',
'  IF :P788_COPIAR=''PRESUPUESTO'' THEN',
'      inv.VTPRESUPUESTO_788.add_presupuesto_det(pi_cod_empresa => :P_COD_EMPRESA,',
'                                          pi_ser_presupuesto => :P788_SER_COPIA,',
'                                          pi_nro_presupuesto => :P788_NRO_COPIA,',
'                                          po_mensaje => :P788_BLOQUEA_CAB);      ',
'   ELSE        ',
'      inv.VTPRESUPUESTO_788.add_pedido_det(pi_cod_empresa => :P_COD_EMPRESA,',
'                                     pi_ser_pedido => :P788_SER_COPIA,',
'                                     pi_nro_pedido => :P788_NRO_COPIA,',
'                                     po_mensaje => :P788_BLOQUEA_CAB);',
'  END IF;',
'begin',
'  SELECT  ',
'   sum(COSTO_UNITARIO * QUANTITY) COSTO_TOTAL,',
'   case',
'     when sum(MONTO_TOTAL) > 1 then',
'      ROUND((sum(MONTO_TOTAL) - sum(COSTO_UNITARIO * QUANTITY)) /',
'            sum(MONTO_TOTAL) * 100,',
'            2)',
'     else',
'      0',
'   end MARGEN',
'   ,NVL(COUNT(*),0)',
'    into :P788_COSTO_TOTAL, :P788_MARGEN, :P788_CANTIDAD_DETALLE',
'    FROM (select seq_id,',
'                 to_number(c004) as quantity,',
'                 to_number(c008) as monto_total,',
'                 ',
'                 (select nvl(costo_prom_nue, 0) /',
'                         decode(:P788_COD_MONEDA, ''2'', :P788_TIP_CAMBIO, 1)',
'                  ',
'                    from st_costos_art',
'                   where cod_empresa = :P_COD_EMPRESA',
'                     and cod_articulo = c003',
'                     and tip_comprobante <> ''INI''',
'                     and nvl(fec_proceso, fec_comprobante) <=',
'                         :P788_FEC_COMPROBANTE',
'                     and to_char(nvl(fec_proceso, fec_comprobante),',
'                                 ''yyyy/mm/dd'') || rowid =',
'                         (select max(to_char(nvl(fec_proceso, fec_comprobante),',
'                                             ''yyyy/mm/dd'') || rowid)',
'                            from st_costos_art',
'                           where cod_empresa = :P_COD_EMPRESA',
'                             and cod_articulo = c003',
'                             and tip_comprobante <> ''INI''',
'                             and nvl(fec_proceso, fec_comprobante) <=',
'                                 :P788_FEC_COMPROBANTE)) COSTO_UNITARIO',
'          ',
'            from apex_collections',
'           where collection_name = ''VT_PRESUPUESTO_DETALLE''',
'           order by 1 asc);',
'EXCEPTION',
'  WHEN OTHERS THEN',
'    NULL;',
'END;',
''))
,p_attribute_02=>'P_COD_EMPRESA,P788_FEC_COMPROBANTE,P788_COD_MONEDA,P788_SER_COPIA,P788_NRO_COPIA,P788_SER_COMPROBANTE,P788_NRO_COMPROBANTE,P788_COD_CLIENTE,P788_NOM_CLIENTE,P788_COD_SUCURSAL_DIST,P788_COD_VENDEDOR,P788_COD_CONDICION_VENTA,P788_COD_LISTA_PRECIO,P788_'
||'ID_PEDIDO,P788_COD_MONEDA,P788_COD_FLETE,P788_TIPO_ENTREGA,P788_COMENTARIO,P788_TIP_CAMBIO, P788_TIP_CAMBIO_COMPRA,P788_COPIAR'
,p_attribute_03=>'P788_COSTO_TOTAL,P788_MARGEN,P788_CANTIDAD_DETALLE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(391235829799150796)
,p_event_id=>wwv_flow_imp.id(391233896813150794)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(852776617690781638)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(391236305460150796)
,p_event_id=>wwv_flow_imp.id(391233896813150794)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(1007628469542347961)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(391236789745150796)
,p_name=>'da_mjs_alerta'
,p_event_sequence=>360
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P788_MSJ_GENERICO'
,p_condition_element=>'P788_MSJ_GENERICO'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(391237231797150796)
,p_event_id=>wwv_flow_imp.id(391236789745150796)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P788_MSJ_GENERICO.'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(391237677138150797)
,p_name=>'DA_REFRESH'
,p_event_sequence=>370
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(852776617690781638)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterrefresh'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(391238104707150798)
,p_event_id=>wwv_flow_imp.id(391237677138150797)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P788_BLOQUEA_CAB'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF VTPRESUPUESTO_788.EXISTE_DETALLE THEN',
'    RETURN ''SI'';',
'ELSE',
'    RETURN ''NO'';',
'END IF;'))
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(391238613380150798)
,p_event_id=>wwv_flow_imp.id(391237677138150797)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'estado_css();'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(391239040990150798)
,p_name=>'DA_BLOQUEA_CAB'
,p_event_sequence=>380
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P788_BLOQUEA_CAB'
,p_condition_element=>'P788_BLOQUEA_CAB'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'SI'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(391239558841150798)
,p_event_id=>wwv_flow_imp.id(391239040990150798)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'document.getElementById("P788_COD_CLIENTE").readOnly=true;',
'',
'document.getElementById("P788_COD_CLIENTE_lov_btn").disabled = true;',
' ',
'',
' ',
'$(''#P788_COD_LISTA_PRECIO'').css(''pointer-events'',''none'');',
'$(''#P788_COD_MONEDA'').css(''pointer-events'',''none'');',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(391240020140150798)
,p_event_id=>wwv_flow_imp.id(391239040990150798)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'document.getElementById("P788_COD_CLIENTE").readOnly=false; ',
'document.getElementById("P788_COD_CLIENTE_lov_btn").disabled = false;',
'',
'',
'document.getElementById("P788_COD_CONDICION_VENTA").readOnly=false; ',
'',
'',
'$(''#P788_COD_LISTA_PRECIO'').css(''pointer-events'',''auto'');',
'$(''#P788_COD_MONEDA'').css(''pointer-events'',''auto'');',
'',
'',
'document.getElementById("P788_COD_CONDICION_VENTA").readOnly = false;',
'document.getElementById("P788_COD_CONDICION_VENTA_lov_btn").disabled = false;'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(391240444780150798)
,p_name=>'da_opn_edt'
,p_event_sequence=>390
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P788_ID_SEQ'
,p_condition_element=>'P788_ID_SEQ'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(391240933350150798)
,p_event_id=>wwv_flow_imp.id(391240444780150798)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(984190157371287270)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(391241395488150799)
,p_name=>'da_recalcula'
,p_event_sequence=>400
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P788_PRECIO_UNITARIO'
,p_condition_element=>'P788_PRECIO_UNITARIO'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(391241807900150799)
,p_event_id=>wwv_flow_imp.id(391241395488150799)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P788_PORC_DESCUENTO'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select nvl(f_descuento_tipo_cliente(:p_cod_empresa,:P788_cod_cliente, :P788_cod_condicion_venta,:P788_cod_lista_precio,NVL(:P788_cantidad,0) ,:P788_cod_articulo_det, NULL),0) descuento',
'from dual',
'WHERE NVL(:P788_SUCURSAL,''01'') NOT IN (''105'',''105.1'')',
'',
'UNION ALL',
'',
'SELECT descuento',
'  FROM VT_ofertas_OUTLET ',
' WHERE COD_EMPRESA  = :P_COD_EMPRESA',
'	 AND COD_ARTICULO = :P788_cod_articulo_det',
'	 AND FEC_CIERRE  >= TRUNC(SYSDATE)',
' 	 and fec_alta    <= TRUNC(SYSDATE)',
'AND NVL(:P788_SUCURSAL,''01'')   IN (''105'') ',
'',
'UNION ALL	 ',
'     ',
'SELECT descuento',
'FROM VT_OFERTAS_feria ',
'WHERE COD_EMPRESA  =:P_COD_EMPRESA',
'AND COD_ARTICULO = :P788_cod_articulo_det',
'AND FEC_CIERRE  >= TRUNC(SYSDATE)',
'and fec_alta    <= TRUNC(SYSDATE)',
'AND NVL(:P788_SUCURSAL,''01'')   IN (''105.1'') '))
,p_attribute_07=>'P788_COD_LISTA_PRECIO,P788_COD_ARTICULO_DET,P788_COD_CLIENTE,P788_COD_CONDICION_VENTA,P788_CANTIDAD,P788_SUCURSAL,P_COD_EMPRESA'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(391242246826150799)
,p_name=>'DA_COPIAR_PEDID'
,p_event_sequence=>410
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(391151690684150762)
,p_condition_element=>'P788_NRO_COMPROBANTE'
,p_triggering_condition_type=>'NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(391242707615150799)
,p_event_id=>wwv_flow_imp.id(391242246826150799)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'PLUGIN_COM.FOS.NOTIFICATIONS'
,p_attribute_01=>'warning'
,p_attribute_02=>'static'
,p_attribute_03=>unistr('Atenci\00F3n')
,p_attribute_04=>'Debe estar en modo Agregar para realizar la copia del Presupuesto'
,p_attribute_07=>'autodismiss:prevent-duplicates:remove-notifications:escape-html:newest-on-top:client-side-substitutions:dismiss-on-click:dismiss-on-button'
,p_attribute_08=>'top-right'
,p_attribute_09=>'Y'
,p_attribute_11=>'5'
,p_attribute_13=>'warning'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(391243205666150799)
,p_event_id=>wwv_flow_imp.id(391242246826150799)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P788_SER_COPIA,P788_NRO_COPIA'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(391243779707150799)
,p_event_id=>wwv_flow_imp.id(391242246826150799)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P788_COPIAR'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_02=>'PEDIDO'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(391244247343150800)
,p_event_id=>wwv_flow_imp.id(391242246826150799)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'null;'
,p_attribute_02=>'P788_COPIAR'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(391244707732150800)
,p_event_id=>wwv_flow_imp.id(391242246826150799)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(1007628469542347961)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(391245280962150800)
,p_event_id=>wwv_flow_imp.id(391242246826150799)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(1007628469542347961)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(391245689434150800)
,p_name=>'DA_Chng_vnd'
,p_event_sequence=>420
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P788_COD_VENDEDOR'
,p_condition_element=>'P788_COD_VENDEDOR'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(391246133037150800)
,p_event_id=>wwv_flow_imp.id(391245689434150800)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'const opt =["193","194","196"]',
'const cod = $v("P788_COD_VENDEDOR")',
'  ',
'',
'if ( opt.includes(cod) )',
'{',
'    if ( cod == ''193'' )',
'    {',
'        ',
'        $(''#P788_PLAZO'').css(''pointer-events'',''auto'');',
'        $(''#P788_SECCION_PRESTAMO'').css(''pointer-events'',''auto'');',
'        $(''#P788_MOTIVO'').css(''pointer-events'',''auto'');',
'',
'    }',
'    else',
'    {',
'        ',
'        $(''#P788_PLAZO'').css(''pointer-events'',''auto'');',
'        $(''#P788_SECCION_PRESTAMO'').css(''pointer-events'',''auto'');',
'        $(''#P788_MOTIVO'').css(''pointer-events'',''none'');',
'        ',
'    }    ',
'}',
'else',
'{',
'        /// bloquea los 3 campos',
'',
'        $(''#P788_PLAZO'').css(''pointer-events'',''none'');',
'        $(''#P788_SECCION_PRESTAMO'').css(''pointer-events'',''none'');',
'        $(''#P788_MOTIVO'').css(''pointer-events'',''none'');',
'',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(391246693370150800)
,p_event_id=>wwv_flow_imp.id(391245689434150800)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
' ',
'',
'$(''#P788_PLAZO'').css(''pointer-events'',''none'');',
'$(''#P788_SECCION_PRESTAMO'').css(''pointer-events'',''none'');',
'$(''#P788_MOTIVO'').css(''pointer-events'',''none'');',
''))
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(391186499756150776)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'limpiar'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
' ',
'',
'apex_collection.CREATE_OR_TRUNCATE_COLLECTION (''TMP_VTPEDIDO'');',
'apex_collection.CREATE_OR_TRUNCATE_COLLECTION (''VT_PRESUPUESTO_CABECERA'');',
'apex_collection.CREATE_OR_TRUNCATE_COLLECTION (''VT_PRESUPUESTO_DETALLE'');',
'',
'	:P788_NRO_COMPROBANTE:=null;',
'	:P788_cod_cliente:=null;',
'	',
'	:P788_DIR_CLIENTE:=null;',
'	:P788_COD_VENDEDOR:=null;',
'	:P788_COD_SUCURSAL_DIST:=null;',
'	:P788_TEL_CLIENTE:=null;',
'	:P788_RUC:=null;',
'	:P788_COD_CONDICION_VENTA:=null;',
'	:P788_COD_LISTA_PRECIO:=null;',
'    '))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(391185628375150776)
,p_process_sequence=>20
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'CARDA_DATOS'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P788_PARAM_NRO_PED IS NOT NULL AND :P788_PARAM_SER_PED IS NOT NULL THEN   ',
'DECLARE VNRO_ORDEN_COMPRA VARCHAR2(500); ',
'V_LUGAR_ENTREGA  VARCHAR2(500); ',
'BEGIN',
'  inv.VTPRESUPUESTO_788.consulta_pedido(pi_cod_empresa => :p_cod_empresa,',
'                                  pi_ser_pedido => :P788_PARAM_SER_PED,',
'                                  pi_nro_pedido => :P788_PARAM_NRO_PED,',
'                                  po_fec_comprobante => :P788_FEC_COMPROBANTE,',
'                                  po_sucursal => :P788_SUCURSAL,',
'                                  po_estado => :P788_ESTADO,',
'                                  po_cod_cliente => :P788_COD_CLIENTE,',
'                                  po_cod_sucursal_dist => :P788_COD_SUCURSAL_DIST,',
'                                  po_lugar_entrega => V_LUGAR_ENTREGA,',
'                                  po_nro_orden_compra => VNRO_ORDEN_COMPRA,',
'                                  po_cod_pais => :P788_COD_PAIS,',
'                                  po_cod_provincia => :p788_cod_provincia,',
'                                  po_cod_ciudad => :p788_cod_ciudad,',
'                                  po_cod_vendedor => :P788_COD_VENDEDOR,',
'                                  po_plazo => :P788_PLAZO,',
'                                  po_seccion_prestamo => :P788_SECCION_PRESTAMO,',
'                                  po_ser_pedido_anterior => :P788_SER_PEDIDO_ANTERIOR,',
'                                  po_nro_pedido_anterior => :p788_nro_pedido_anterior,',
'                                  po_cod_condicion_venta => :p788_cod_condicion_venta,',
'                                  po_cod_lista_precio => :p788_cod_lista_precio,',
'                                  po_cod_moneda => :p788_cod_moneda,',
'                                  po_tip_cambio => :p788_tip_cambio,',
'                                  po_tipo_entrega => :P788_TIPO_ENTREGA,',
'                                  po_cod_flete => :P788_COD_FLETE,',
'                                  po_fecha_confirmacion_envio => :P788_FECHA_CONFIRMACION_ENVIO,',
'                                  po_comentario => :P788_COMENTARIO,',
'                                  po_observacion_interna => :P788_OBSERVACION_INTERNA,',
'                                  po_autorizado => :P788_AUTORIZADO,',
'                                  po_derivado => :P788_DERIVADO,',
'                                  po_nro_fac => :P788_NRO_FAC,',
'                                  po_fecha_fact => :P788_FECHA_FACT,',
'                                  po_como_entregar => :P788_COMO_ENTREGAR,',
'                                  po_fecha_entrega => :P788_FECHA_ENTREGA,',
'                                  po_ind_confirma_factura => :P788_IND_CONFIRMA_FACTURA,',
'                                  po_ind_ecommerce => :P788_IND_ECOMMERCE,',
'                                  po_entrega_remision => :P788_ENTREGA_REMISION,',
'                                  po_ind_cliente_final => :P788_IND_CLIENTE_FINAL,',
'                                  po_croquis_hablado => :P788_CROQUIS_HABLADO,',
'                                  po_forma_cobro => :P788_FORMA_COBRO,',
'                                  po_nombre_autorizado => :P788_NOMBRE_AUTORIZADO,',
'                                  po_nro_ci_entrega => :P788_NRO_CI_ENTREGA,',
'                                  po_chapa_entrega => :P788_CHAPA_ENTREGA,',
'                                  PO_MOTIVO => :P788_MOTIVO,',
'                                  PO_CLIENTE_SOBREGIRADO=> :P788_CLIENTE_SOBREGIRADO,',
'                                  PO_CORREO           => :P788_CORREO_CLIENTE,',
'                                  PO_DIR_CLIENTE     => :P788_DIR_CLIENTE, ',
'                                  PO_TEL_CLIENTE     => :P788_TEL_CLIENTE, ',
'                                  PO_RUC            =>  :P788_RUC',
'                                  ) ;',
'    END;',
'    :P788_NRO_COMPROBANTE:=:P788_PARAM_NRO_PED ;',
'    :P788_SER_COMPROBANTE:= :P788_PARAM_SER_PED ;    ',
'    :P788_BLOQUEA_CAB:=''SI''; ',
'',
'begin',
'  SELECT',
'  ',
'   sum(COSTO_UNITARIO * QUANTITY) COSTO_TOTAL,',
'   case',
'     when sum(MONTO_TOTAL) > 1 then',
'      ROUND((sum(MONTO_TOTAL) - sum(COSTO_UNITARIO * QUANTITY)) /',
'            sum(MONTO_TOTAL) * 100,',
'            2)',
'     else',
'      0',
'   end MARGEN, COUNT(*)',
'    into :P788_COSTO_TOTAL, :P788_MARGEN,:P788_CANTIDAD_DETALLE',
'    FROM (select seq_id,',
'                 to_number(c004) as quantity,',
'                 to_number(c008) as monto_total,',
'                 ',
'                 (select nvl(costo_prom_nue, 0) /',
'                         decode(:P788_COD_MONEDA, ''2'', :P788_TIP_CAMBIO, 1)',
'                  ',
'                    from st_costos_art',
'                   where cod_empresa = :P_COD_EMPRESA',
'                     and cod_articulo = c003',
'                     and tip_comprobante <> ''INI''',
'                     and nvl(fec_proceso, fec_comprobante) <=',
'                         :P788_FEC_COMPROBANTE',
'                     and to_char(nvl(fec_proceso, fec_comprobante),',
'                                 ''yyyy/mm/dd'') || rowid =',
'                         (select max(to_char(nvl(fec_proceso, fec_comprobante),',
'                                             ''yyyy/mm/dd'') || rowid)',
'                            from st_costos_art',
'                           where cod_empresa = :P_COD_EMPRESA',
'                             and cod_articulo = c003',
'                             and tip_comprobante <> ''INI''',
'                             and nvl(fec_proceso, fec_comprobante) <=',
'                                 :P788_FEC_COMPROBANTE)) COSTO_UNITARIO',
'          ',
'            from apex_collections',
'           where collection_name = ''VT_PRESUPUESTO_DETALLE''',
'           order by 1 asc);',
'EXCEPTION',
'  WHEN OTHERS THEN',
'    NULL;',
'END;',
' ',
'   ',
'END IF;'))
,p_process_clob_language=>'PLSQL'
,p_process_when=>'P788_PARAM_NRO_PED'
,p_process_when_type=>'ITEM_IS_NOT_NULL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(391185248201150775)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'GRABAR_PEDIDO'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF NVL(:P788_PERMITE_RUC,''S'')=''S'' or :P788_COD_CLIENTE =''2144'' THEN',
'        IF :P788_COD_PAIS=''PAR''  THEN ',
'            DECLARE',
'                VMSJ VARCHAR2(3500);',
'            BEGIN',
'              inv.VTPRESUPUESTO_788.crea_pedido(P788_COD_EMPRESA => :P_COD_EMPRESA,',
'              p788_sucursal => :p788_sucursal,',
'                                          p788_ser_comprobante => :p788_ser_comprobante,',
'                                          p788_cod_cliente => :p788_cod_cliente,',
'                                          p788_cod_vendedor => :p788_cod_vendedor,',
'                                          p788_cod_condicion_venta => :p788_cod_condicion_venta,',
'                                          p788_cod_lista_precio => :p788_cod_lista_precio,',
'                                          p788_cod_moneda => :p788_cod_moneda,',
'                                          p788_tip_cambio => :p788_tip_cambio,',
'                                          p788_usuario => :p788_usuario,',
'                                          p788_tel_cliente => :p788_tel_cliente,',
'                                          p788_ruc => :p788_ruc,',
'                                          p788_nom_cliente => :p788_nom_cliente,',
'                                          p788_dir_cliente => :p788_dir_cliente,',
'                                          p788_comentario => :p788_comentario,',
'                                          p788_cod_flete => :p788_cod_flete,',
'                                          p788_cod_sucursal_dist => :p788_cod_sucursal_dist,',
'                                          p788_lugar_entrega => null,',
'                                          p788_tipo_entrega => :p788_tipo_entrega,',
'                                          p788_fecha_entrega => :p788_fecha_entrega,',
'                                          p788_entrega_remision => :p788_entrega_remision,',
'                                          p788_ind_cliente_final => :p788_ind_cliente_final,',
'                                          p788_observacion_interna => :p788_observacion_interna,',
'                                          p788_ind_confirma_factura => :p788_ind_confirma_factura,',
'                                          p788_nro_orden_compra => null,',
'                                          p788_ind_ecommerce => :p788_ind_ecommerce,',
'                                          p788_cod_pais => :p788_cod_pais,',
'                                          p788_cod_provincia => :p788_cod_provincia,',
'                                          p788_cod_ciudad => :p788_cod_ciudad,',
'                                          p788_nro_ci_entrega => :p788_nro_ci_entrega,',
'                                          p788_chapa_entrega => :p788_chapa_entrega,',
'                                          p788_correo_cliente => :p788_correo_cliente,',
'                                          p788_dias => :P788_PLAZO,',
'                                          p788_seccion_prestamo => :p788_seccion_prestamo,',
'                                          p788_ser_pedido_anterior => :P788_SER_PEDIDO_ANTERIOR,',
'                                          p788_nro_pedido_anterior => :P788_NRO_PEDIDO_ANTERIOR,',
'                                          p788_fecha_conf_envio => :P788_FECHA_CONFIRMACION_ENVIO,',
'                                          p788_croquis_hablado => :p788_croquis_hablado,',
'                                          p788_forma_cobro => :p788_forma_cobro,',
'                                          p788_nombre_autorizado => :p788_nombre_autorizado,',
'                                          p788_como_entregar => :p788_como_entregar,',
'                                          p788_nro_pedido => :P788_NRO_COMPROBANTE,',
'                                          P788_MOTIVO => :P788_MOTIVO,',
'                                          p788_msj => VMSJ,',
'                                          P788_NRO_ACUERdO => :P788_NRO_ACUERDO); ',
'              IF VMSJ IS NOT NULL THEN',
'        	        raise_application_error(-20000,VMSJ);',
'              END IF ;',
'             END;',
'        ELSE ',
'        	raise_application_error(-20000,''EL PAIS HABILITADO PARA LA ENTREGA DEBER SER PARAGUAY'');',
'        END IF;',
'ELSE ',
'	raise_application_error(-20000,''RUC NO HABILITADO PARA LA CARGA DE PEDIDO'');',
'',
'END IF;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(391148025462150761)
,p_process_when=>'P788_NRO_COMPROBANTE'
,p_process_when_type=>'ITEM_IS_NULL'
,p_process_success_message=>'Presupuesto Generado &P788_NRO_COMPROBANTE.'
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
 p_id=>wwv_flow_imp.id(391181679620150774)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(391149283223150761)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(391182473196150774)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'NUEVO_PEDIDO'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'apex_collection.CREATE_OR_TRUNCATE_COLLECTION (''VT_PRESUPUESTO_CABECERA'');',
'apex_collection.CREATE_OR_TRUNCATE_COLLECTION (''VT_PRESUPUESTO_DETALLE'');',
' ',
'	:P788_NRO_COMPROBANTE:=null;',
'	:P788_cod_cliente:=null;',
' ',
'	:P788_DIR_CLIENTE:=null;',
'	:P788_COD_VENDEDOR:=null;',
'	:P788_COD_SUCURSAL_DIST:=null;',
'	:P788_TEL_CLIENTE:=null;',
'	:P788_RUC:=null;',
'	:P788_COD_CONDICION_VENTA:=null;',
'	:P788_COD_LISTA_PRECIO:=null;',
'',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(391148832755150761)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(391184073173150775)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'LIMPIAR'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(391148832755150761)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(391182896973150775)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'CLEAR_PAGINA'
,p_attribute_01=>'CLEAR_CACHE_FOR_PAGES'
,p_attribute_04=>'12'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(391148832755150761)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(391184490607150775)
,p_process_sequence=>60
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'CON_REMISION'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P788_SER_COMPROBANTE IS NOT NULL AND :P788_NRO_COMPROBANTE IS NOT NULL THEN',
'    BEGIN',
'        UPDATE VT_PRESUPUESTO_CABECERA',
'        SET  ENTREGA_REMISION = ''S''',
'        WHERE cod_empresa = :P_cod_empresa  ',
'        and tip_comprobante = ''PED'' ',
'        and ser_comprobante = :p788_ser_comprobante ',
'        and nro_comprobante = :p788_nro_comprobante   ',
'          ; ',
'    EXCEPTION',
'        WHEN OTHERS THEN',
'            raise_application_error(-20000, sqlerrm );',
'    END;',
'ELSE',
'    raise_application_error(-20000, ''SERIE/NUMERO NULOS'' );',
'END IF;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'NO SE HA PODIDO ACTUALIZAR EL PEDIDO.'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(391150071325150761)
,p_process_success_message=>'PEDIDO ACTUALIZADO.'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(391184848673150775)
,p_process_sequence=>70
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'DESANULAR_PEDIDO'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P788_SER_COMPROBANTE IS NOT NULL AND :P788_NRO_COMPROBANTE IS NOT NULL THEN',
'    BEGIN',
'        UPDATE VT_PRESUPUESTO_CABECERA',
'        SET   ESTADO = ''P'',',
'			  COD_USUARIO_ANU = NULL,',
'			  COD_MOTIVO_ANU = NULL',
'        WHERE cod_empresa = :P_cod_empresa  ',
'        and tip_comprobante = ''PED'' ',
'        and ser_comprobante = :p788_ser_comprobante ',
'        and nro_comprobante = :p788_nro_comprobante   ',
'          ; ',
'    EXCEPTION',
'        WHEN OTHERS THEN',
'            raise_application_error(-20000, sqlerrm );',
'    END;',
'ELSE',
'    raise_application_error(-20000, ''SERIE/NUMERO NULOS'' );',
'END IF;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'NO SE HA PODIDO MODIFICAR EL ESTADO PEDIDO'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(391150478968150762)
,p_process_success_message=>'ESTADO DE PEDIDO ACTUALIZADO'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(391186078937150776)
,p_process_sequence=>140
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'ACTUALIZA_PEDIDO'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    VMJS VARCHAR2(3500);',
'begin ',
'  inv.VTPRESUPUESTO_788.actualiza_pedido(P788_COD_EMPRESA => :P_COD_EMPRESA,p788_sucursal => :p788_sucursal,',
'                                   p788_ser_comprobante => :p788_ser_comprobante,',
'                                   p788_nro_comprobante => :p788_nro_comprobante,',
'                                   p788_cod_cliente => :p788_cod_cliente,',
'                                   p788_cod_vendedor => :p788_cod_vendedor,',
'                                   p788_cod_condicion_venta => :p788_cod_condicion_venta,',
'                                   p788_cod_lista_precio => :p788_cod_lista_precio,',
'                                   p788_cod_moneda => :p788_cod_moneda,',
'                                   p788_tip_cambio => :p788_tip_cambio,',
'                                   p788_dir_cliente => :p788_dir_cliente,',
'                                   p788_comentario => :p788_comentario,',
'                                   p788_cod_flete => :p788_cod_flete,',
'                                   p788_cod_sucursal_dist => :p788_cod_sucursal_dist,',
'                                   p788_lugar_entrega => NULL,',
'                                   p788_tipo_entrega => :p788_tipo_entrega,',
'                                   p788_fecha_entrega => :p788_fecha_entrega,',
'                                   p788_entrega_remision => :p788_entrega_remision,',
'                                   p788_ind_cliente_final => :p788_ind_cliente_final,',
'                                   p788_observacion_interna => :p788_observacion_interna,',
'                                   p788_ind_confirma_factura => :p788_ind_confirma_factura,',
'                                   p788_nro_orden_compra => NULL,',
'                                   p788_ind_ecommerce => :p788_ind_ecommerce,',
'                                   p788_cod_pais => :p788_cod_pais,',
'                                   p788_cod_provincia => :p788_cod_provincia,',
'                                   p788_cod_ciudad => :p788_cod_ciudad,',
'                                   p788_nro_ci_entrega => :p788_nro_ci_entrega,',
'                                   p788_chapa_entrega => :p788_chapa_entrega,',
'                                   p788_correo_cliente => :p788_correo_cliente,',
'                                   p788_dias => NULL,',
'                                   p788_seccion_prestamo => :p788_seccion_prestamo,',
'                                   p788_ser_pedido_anterior => :p788_ser_pedido_anterior,',
'                                   p788_nro_pedido_anterior => :p788_nro_pedido_anterior,',
'                                   p788_fecha_conf_envio => NULL,',
'                                   p788_croquis_hablado => :p788_croquis_hablado,',
'                                   p788_forma_cobro => :p788_forma_cobro,',
'                                   p788_nombre_autorizado => :p788_nombre_autorizado,',
'                                   p788_como_entregar => :p788_como_entregar,                                   ',
'                                   P788_MOTIVO => :P788_MOTIVO,',
'                                   p788_msj => VMJS);',
'    IF VMJS IS NOT NULL THEN',
'            Raise_application_error(-20000, VMJS );',
'    END IF;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(391148485823150761)
,p_process_when=>'P788_NRO_COMPROBANTE'
,p_process_when_type=>'ITEM_IS_NOT_NULL'
,p_process_success_message=>unistr('Pedido N\00BA &P788_NRO_COMPROBANTE. Actualizado Correctamente.')
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(391183639824150775)
,p_process_sequence=>10
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Valida detalles'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE ',
'    v_valor NUMBER := 0;',
'BEGIN ',
'    BEGIN ',
'        select COUNT(*)',
'        INTO v_valor',
'          from apex_collections',
'         where collection_name = ''VT_PRESUPUESTO_DETALLE'';',
'         EXCEPTION ',
'            WHEN OTHERS THEN ',
'                v_valor := 0;',
'    END;',
'',
'    IF v_valor = 0 THEN ',
'        RAISE_APPLICATION_ERROR(-20001, ''El pedido no se puede guardar sin detalles'');',
'    END IF;',
'END;',
'',
'  ',
'  ',
'      ',
'            '))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(391148025462150761)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(391183252365150775)
,p_process_sequence=>20
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'valida_pedido'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P788_ENTREGA_REMISION=''S'' AND :P788_TIPO_ENTREGA=''CR'' ',
'AND (:P788_NRO_CI_ENTREGA IS NULL OR :P788_CHAPA_ENTREGA IS NULL  ) then',
'',
'	raise_application_error(-20000,''Debe Ingresar los datos de Entrega'');',
'  END IF;',
'',
'',
'  DECLARE ',
'    v_mensaje VARCHAR2(4000);',
'BEGIN',
'    if :P788_CORREO_CLIENTE is not null then    ',
'        INV.PCK_GENERAL_APEX.pr_validar_direccion_email(p_direccion_mail => :P788_CORREO_CLIENTE,',
'                                                        p_mensaje         => v_mensaje);',
'        IF v_mensaje IS NOT NULL THEN             ',
'            	raise_application_error(-20000,''Formato de Correo Incorrecto ''||v_mensaje);',
'        END IF;',
'    END IF;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(391148025462150761)
,p_process_when=>'P788_NRO_COMPROBANTE'
,p_process_when_type=>'ITEM_IS_NULL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(391182011960150774)
,p_process_sequence=>30
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'GUARDAR_PEDIDO'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P788_PERMITE_RUC=''S'' or :P788_COD_CLIENTE =''2144'' THEN',
'IF :P788_COD_PAIS=''PAR''  THEN',
'BEGIN',
'  IF :P788_NRO_COMPROBANTE IS NULL THEN',
'    BEGIN',
'      DECLARE',
'        VNRO_PEDIDO           NUMBER;',
'        VDERIVADO VARCHAR2(10):=''F'';',
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
'          select max(nro_comprobante) + 1',
'            into :P788_NRO_COMPROBANTE',
'            from VT_PRESUPUESTO_CABECERA a',
'           where cod_empresa = :P_COD_EMPRESA',
'             and a.tip_comprobante = ''PED''',
'             and a.ser_comprobante = :P788_SER_COMPROBANTE',
'             and :P788_NRO_COMPROBANTE is   null;',
'        EXCEPTION',
'          WHEN OTHERS THEN',
'            :P788_NRO_COMPROBANTE := null;',
'        end;',
'        VNRO_PEDIDO := :P788_NRO_COMPROBANTE;',
'        IF :P788_NRO_COMPROBANTE IS NOT NULL THEN',
'          BEGIN',
'            SELECT P.NOMBRE',
'              INTO VNOMBRE',
'              FROM CC_CLIENTES C, PERSONAS P',
'             WHERE C.COD_EMPRESA = :P_COD_EMPRESA',
'               AND C.COD_CLIENTE = :P788_COD_CLIENTE',
'               AND C.COD_PERSONA = P.COD_PERSONA;',
'          EXCEPTION',
'            WHEN OTHERS THEN',
'              NULL;',
'          END;',
'        ',
'          BEGIN',
'            Select m.tipo_cambio_credito',
'              into vCAMBIO_MONEDA_PRECIO',
'              from monedas m, parametros_generales p',
'             where p.cod_modulo = ''ST''',
'               and p.parametro = ''COD_MONEDA_PREC''',
'               and p.valor = m.cod_moneda;',
'          EXCEPTION',
'            when others then',
'              vCAMBIO_MONEDA_PRECIO := 1;',
'          END;',
'        ',
'          IF vnro_pedido IS NULL THEN',
'            vnro_pedido := ''1'';',
'          END IF;',
'          IF :P788_COMO_ENTREGAR = ''ENVIAR'' THEN',
'            VIND_GUARDA         := ''N'';',
'            VIND_TRANSPORTADORA := ''N'';',
'            VIND_ENVIAR         := ''S'';',
'          ELSIF :P788_COMO_ENTREGAR = ''GUARDA'' THEN',
'            VIND_GUARDA         := ''S'';',
'            VIND_TRANSPORTADORA := ''N'';',
'            VIND_ENVIAR         := ''N'';',
'          ELSIF :P788_COMO_ENTREGAR = ''TRANSPORTADORA'' THEN',
'            VIND_GUARDA         := ''N'';',
'            VIND_TRANSPORTADORA := ''S'';',
'            VIND_ENVIAR         := ''N'';',
'          else',
'            VIND_GUARDA         := ''N'';',
'            VIND_TRANSPORTADORA := ''N'';',
'            VIND_ENVIAR         := ''S'';',
'          end if;',
'          if :P788_COD_VENDEDOR=''18'' THEN',
'          VDERIVADO:=''RH'';',
'          END IF;',
'          begin',
'',
'          ',
'            INSERT INTO VT_PRESUPUESTO_CABECERA',
'              (cod_empresa,',
'               TIP_COMPROBANTE,',
'               SER_COMPROBANTE,',
'               NRO_COMPROBANTE,',
'               COD_SUCURSAL,',
'               FEC_COMPROBANTE,',
'               COD_CLIENTE,',
'               COD_VENDEDOR,',
'               COD_CONDICION_VENTA,',
'               COD_LISTA_PRECIO,',
'               DESCUENTO,',
'               COD_MONEDA,',
'               TIP_CAMBIO,',
'               TOT_GRAVADAS,',
'               TOT_EXENTAS,',
'               TOT_IVA,',
'               ESTADO,',
'               FEC_ESTADO,',
'               COD_USUARIO,',
'               FEC_ALTA,',
'               NRO_AUTORIZACION,',
'               CAMBIO_MONEDA_PRECIO,',
'               TIP_CAMBIO_COMPRA,',
'               FEC_VENCIMIENTO,',
'               TOT_DESCUENTO_DET,',
'               TIP_COMPROBANTE_REF,',
'               TEL_CLIENTE,',
'               RUC,',
'               PROCESADO,',
'               NRO_COMPROBANTE_REF,',
'               NOM_CLIENTE,',
'               NOMBRE_CAB,',
'               GRU_COMPROBANTE,',
'               FEC_NACIMIENTO,',
'               DIR_CLIENTE,',
'               DIAS,',
'               DESCUENTO_DET,',
'               COMENTARIO,',
'               COLUMNA,',
'               COD_SECTOR,',
'               CAMBIO_DOLAR,',
'               COD_DIRECCION,',
'               TIP_COMPROBANTE_PET,',
'               SER_COMPROBANTE_PET,',
'               NRO_COMPROBANTE_PET,',
'               NRO_INSCRIPCION_AD,',
'               IND_EXENTO_AD,',
'               COD_USUARIO_AUTORIZACION,',
'               FECHA_AUTORIZACION,',
'               AUTORIZADO,',
'               TOT_COMPROBANTE,',
'               RECARGO,',
'               cod_flete,',
'               COD_SUCURSAL_DIST,',
'               LUGAR_ENTREGA,',
'               tipo_entrega,',
'                ',
'               FECHA_ENTREGA,',
'                ',
'               IND_GUARDA,',
'               ENTREGA_REMISION,',
'               ind_cliente_final,',
'               OBSERVACION_INTERNA,',
'                ',
'            ',
'               IND_TRANSPORTADORA,',
'                ',
'                ',
'                ',
'               ',
'               CORREO_CLIENTE)',
'',
'            VALUES',
'              (:P_COD_EMPRESA,',
'               ''PED'',',
'               ''P'',',
'               vnro_pedido,',
'               NVL(:P788_SUCURSAL, ''01''),',
'               TRUNC(SYSDATE),',
'               :P788_COD_CLIENTE,',
'               :P788_COD_VENDEDOR,',
'               :P788_COD_CONDICION_VENTA,',
'               :P788_COD_LISTA_PRECIO,',
'               0,',
'               :P788_COD_MONEDA,',
'               :P788_TIP_CAMBIO,',
'               0,',
'               0,',
'               0,',
'               ''P'',',
'               TRUNC(SYSDATE),',
'               :P788_USUARIO,',
'               TRUNC(SYSDATE),',
'               NULL,',
'               vCAMBIO_MONEDA_PRECIO,',
'               1,',
'               NULL,',
'               NULL,',
'               NULL,',
'               :P788_TEL_CLIENTE,',
'               :P788_RUC,',
'               ''S'',',
'               NULL,',
'               NVL(:P788_NOM_CLIENTE, VNOMBRE),',
'               NVL(:P788_NOM_CLIENTE, VNOMBRE),',
'               NULL,',
'               NULL,',
'               :P788_DIR_CLIENTE,',
'               NULL,',
'               0,',
'               :P788_COMENTARIO,',
'               NULL,',
'               NULL,',
'               1,',
'               ''0'',',
'               NULL,',
'               NULL,',
'               NULL,',
'               NULL,',
'               NULL,',
'               NULL,',
'               NULL,',
'               ''P'',',
'               NULL,',
'               NULL,',
'               :P788_cod_flete,',
'               :P788_COD_SUCURSAL_DIST,',
'               NULL,',
'               :P788_tipo_entrega,',
'                ',
'               :P788_FECHA_ENTREGA,',
'             ',
'               VIND_GUARDA,',
'               ',
'               :P788_ENTREGA_REMISION,',
'               :P788_IND_CLIENTE_FINAL,',
'               :P788_OBSERVACION_INTERNA,',
'               ',
'               :P788_IND_ECOMMERCE,',
'             ',
'               ',
'             ',
'               :P788_CORREO_CLIENTE',
'               ',
'               );',
'            COMMIT;',
'          ',
'            :P788_NRO_COMPROBANTE := vnro_pedido;',
'          ',
'            if :P788_CROQUIS_HABLADO IS NOT NULL OR',
'               :P788_FORMA_COBRO IS NOT NULL THEN',
'              begin',
'                INSERT INTO VT_CROQUIS_PEDIDO',
'                  (cod_empresa,',
'                   TIP_COMPROBANTE,',
'                   SER_COMPROBANTE,',
'                   NRO_COMPROBANTE,',
'                   CROQUIS_HABLADO,',
'                   NOMBRE_AUTORIZADO,',
'                   ind_croquis,',
'                   forma_cobro)',
'                values',
'                  (:P_COD_EMPRESA,',
'                   ''PED'',',
'                   ''P'',',
'                   vnro_pedido,',
'                   :P788_CROQUIS_HABLADO,',
'                   :P788_NOMBRE_AUTORIZADO,',
'                   ''S'',',
'                   :P788_FORMA_COBRO);',
'              EXCEPTION',
'                when others then',
'                  null;',
'              end;',
'            END IF;',
'            ----DETALLE_ENTREGA',
'          ',
'            ',
'            ',
'          ',
'            ---DETALLE PEDIDO   ',
'            declare',
'              cursor ccab is',
'                select seq_id,',
'                       c001 ser_pedido,',
'                       c002 nro_pedido,',
'                       (select cod_art_corto',
'                          from st_articulos p',
'                         where cod_empresa = :P_COD_EMPRESA',
'                           and cod_articulo = c003) as codigo_corto,',
'                       ',
'                       to_number(c005) as precio_unitario,',
'                       to_number(c004) as cantidad,',
'                       to_number(c006) as porc_descuento,',
'                       to_number(c007) as total_iva,',
'                       to_number(c008) as monto_total,',
'                       to_number(c009) as total,',
'                       C010 AS ID_PEDIDO,',
'                       TO_NUMBER(c012) as id_promo,',
'                       c011 articulo_par,',
'                       c013 nro_promo,',
'                       C014 PORC_RECARgO,',
'                       c003 cod_Articulo,',
'                       c015 descuento,',
'                       c016 recargo,',
'                       c017 cod_iva,',
'                       c018 porc_iva,',
'                       NVL(c020, ''N'') IND_ARMADO,',
'                       c021 MONTO_GRAVADA_10,',
'                       c022 MONTO_GRAVADA_5,',
'                       c023 MONTO_EXENTA',
'                ',
'                  from apex_collections',
'                 where collection_name = ''VT_PRESUPUESTO_DETALLE''',
'                 order by 1 asc;',
'            begin',
'              for x in ccab loop',
'                INSERT INTO VT_PRESUPUESTO_DETALLE',
'                  (COD_EMPRESA,',
'                   TIP_COMPROBANTE,',
'                   SER_COMPROBANTE,',
'                   NRO_COMPROBANTE,',
'                   COD_ARTICULO,',
'                   CANTIDAD,',
'                   CANTIDAD_FACTURADA,',
'                   PRECIO_UNITARIO,',
'                   MONTO_TOTAL,',
'                   TOTAL_IVA,',
'                   PRECIO_LISTA,',
'                   DESCUENTO,',
'                   PRECIO_REAL,',
'                   PORC_DESCUENTO,',
'                   COSTO_PROMEDIO_REF,',
'                   COSTO_PROMEDIO,',
'                   COSTO_CON,',
'                   COD_UNIDAD_MEDIDA,',
'                   CANTIDAD_UB,',
'                   PORC_RECARGO,',
'                   RECARGO,',
'                   COD_ARTICULO_REL_BON,',
'                   PORC_IVA,',
'                   ORDEN,',
'                   COD_IVA,',
'                   nro_promo,',
'                   COD_ART_CORTO,',
'                   articulo_par,',
'                   IND_PRODUCTO_ARMADO,',
'                   MONTO_GRAVADA_10,',
'                   MONTO_GRAVADA_5,',
'                   MONTO_EXENTA,',
'                   orden_producto_principal)',
'                values',
'                  (:P_COD_EMPRESA,',
'                   ''PED'',',
'                   ''P'',',
'                   VNRO_PEDIDO,',
'                   x.COD_ARTICULO,',
'                   x.CANTIDAD,',
'                   0,',
'                   x.PRECIO_UNITARIO,',
'                   x.MONTO_TOTAL,',
'                   x.TOTAL_IVA,',
'                   x.precio_unitario,',
'                   x.DESCUENTO,',
'                   x.precio_unitario,',
'                   x.PORC_DESCUENTO,',
'                   0,',
'                   0,',
'                   0,',
'                   null,',
'                   x.cantidad,',
'                   x.PORC_RECARGO,',
'                   x.RECARGO,',
'                   null,',
'                   x.PORC_IVA,',
'                   x.seq_id,',
'                   x.COD_IVA,',
'                   x.nro_promo,',
'                   X.codigo_corto,',
'                   x.articulo_par,',
'                   X.IND_ARMADO,',
'                   X.MONTO_GRAVADA_10,',
'                   X.MONTO_GRAVADA_5,',
'                   X.MONTO_EXENTA,',
'                   x.id_promo);',
'                VMONTO_TOTAL := NVL(vMONTO_TOTAL, 0) +',
'                                nvl(X.MONTO_TOTAL, 0);',
'                VTOTAL_IVA   := NVL(VTOTAL_IVA, 0) + nvl(X.TOTAL_IVA, 0);',
'                IF VTOTAL_IVA = 0 THEN',
'                  VMONTO_TOTAL_EX := VMONTO_TOTAL_EX +',
'                                     nvl(X.MONTO_TOTAL, 0);',
'                END IF;',
'                COMMIT;',
'              end loop;',
'            ',
'              BEGIN',
'                UPDATE VT_PRESUPUESTO_CABECERA',
'                   SET TOT_COMPROBANTE = VMONTO_TOTAL + VTOTAL_IVA,',
'                       TOT_GRAVADAS    = VMONTO_TOTAL,',
'                       TOT_EXENTAS     = VMONTO_TOTAL_EX',
'                 WHERE COD_EMPRESA = :P_COD_EMPRESA',
'                   AND TIP_COMPROBANTE = ''PED''',
'                   AND SER_COMPROBANTE = ''P''',
'                   AND NRO_COMPROBANTE = VNRO_PEDIDO;',
'              ',
'              END;',
'            ',
'            end;',
'          ',
'          end;',
'        END IF;',
'      END;',
'    ',
'    END;',
'  END IF;',
'END;',
'ELSE ',
'	raise_application_error(-20000,''EL PAIS HABILITADO PARA LA ENTREGA DEBER SER PARAGUAY'');',
'  END IF;',
'ELSE ',
'	raise_application_error(-20000,''RUC NO HABILITADO PARA LA CARGA DE PEDIDO'');',
'',
'END IF;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(391148025462150761)
,p_process_when_type=>'NEVER'
,p_process_success_message=>'Pedido Generado &P788_NRO_COMPROBANTE.'
);
wwv_flow_imp.component_end;
end;
/
