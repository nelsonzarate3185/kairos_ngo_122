prompt --application/pages/page_00234
begin
--   Manifest
--     PAGE: 00234
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
 p_id=>234
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'VTPEDIDOF'
,p_alias=>'VTPEDIDOF'
,p_step_title=>'VTPEDIDOF'
,p_allow_duplicate_submissions=>'N'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_javascript_file_urls=>'#APP_FILES#util_generico.js'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function sumar_grilla(grilla, columna_sumar, elemento_asignar){',
' var total = 0;',
' var columna = apex.region(grilla).widget().interactiveGrid("getViews", ',
'"grid").model.getFieldKey(columna_sumar);',
' var datos = apex.region(grilla).widget().interactiveGrid("getViews", ',
'"grid").model._index;',
' datos.forEach(function(m){',
' if (!m.deleted){',
' var subtotal = parseInt(m.record[columna].replaceAll(''.'', ''''),0);',
' if(!isNaN(subtotal)){',
' total += subtotal;',
' }',
' console.log(total);',
' }',
' });',
'// apex.item(elemento_asignar).setValue(separadorMiles(total));',
'apex.item(elemento_asignar).setValue(total);',
'}',
'',
'',
'function separadorMiles(x) {',
'    return x.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ".");',
'}',
'',
'$(''body'').on(''keydown'', ''input, select,checkbox, text '', function(e) {',
'    var self = $(this)',
'      , form = self.parents(''form:eq(0)'')',
'      , focusable',
'      , next',
'      ;',
'	/*document.getElementById("P0_KEY_CODE").value = e.keyCode;  */',
'        var codigo = e.keyCode; ',
'        apex.item("P0_KEY_CODE").setValue(codigo);',
'    if (e.keyCode == 13) {',
'        focusable = form.find(''input,select,textarea,checkbox, text'').filter('':enabled:visible'');',
'        next = focusable.eq(focusable.index(this)+1);',
'        if (next.length) {',
'            next.focus();',
'        } else {',
'            //form.submit();',
'        }',
'        return false;',
'    }',
'});',
'',
'',
'',
'',
'function doDescarga(p_cod_empresa, p_tip_comprobante, p_ser_comprobante, p_nro_comprobante,   p_reporte,   p_cod_usuario){',
'  if ((p_reporte !== undefined) && (p_reporte !== null) && (p_reporte !== "")) {',
'     var vURL = ''https://ngosaeca.com.py/reportes/flow.html?_flowId=viewReportFlow&_flowId=viewReportFlow&ParentFolderUri=%2Freports&reportUnit=%2Freports%2F''+p_reporte+''&standAlone=true&j_username=jasperadmin&j_password=jasperadmin&output=pdf&P_COD_'
||'EMPRESA=''+p_cod_empresa+''&P_TIP_COMPROBANTE=''+p_tip_comprobante+''&P_SER_COMPROBANTE=''+p_ser_comprobante+''&P_NRO_COMPROBANTE=''+p_nro_comprobante+''&P_COD_USUARIO=''+p_cod_usuario;',
'',
'     console.log(vURL);',
'   ',
'      window.open(vURL,"Pagina Child","width=1800,height=1000,scrollbars=NO") ;',
'   }',
'}'))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.a-Toolbar-toggleButton {     display: none  !important; } ',
' ',
'.a-Toolbar-group {     border-color: #092959 !important; }',
'',
'.a-Button--hot {',
'    display: none  !important; ',
'}',
'#mimapa {',
'    height: 530px !important;',
'    ',
'}',
'',
'.apex-item-text, .t-Form-fieldContainer--floatingLabel .apex-item-textarea , .apex-item-display-only{',
'    border-color: #3c5b83 !important;',
'    background: #FCFCF4 !important;',
'    border-style: solid !important; ',
'    }',
'',
'.t-PageBody {',
'    background-color: #296073 !important;',
'    font-weight: bold !important;',
'',
'}',
'',
'#P234_IND_OFERTAS_LABEL {',
'    margin-top: 20px !important;',
'}',
'input:read-only {',
'        background-color: #CCCCCC !important;',
'    } ',
'',
'#P234_TEXTO_DISPLAY {',
'    background-color: #e0e0e0 !important;',
'    font-weight: bold;',
'    text-align: left;',
'    font-size: 12px;',
'}',
'',
'#P234_TOTAL {',
'    background-color: blue !important;',
'    color: white !important;',
'    font-weight: bold !important;',
'}',
'',
'#crear {',
'    display: none !important;',
'}',
'',
'#ocultar {',
'    display: none !important;',
'}',
'',
'#B96865008220522117 {',
'    margin-top: 18px !important;',
'}',
'',
'#llamar_maps {',
'    margin-top: 18px !important;',
'}',
'',
'#entregas {',
'    margin-top: 18px !important;',
'}',
'#aceptar {',
'    margin-top: 18px !important;',
'}',
'/*',
'#det_entregas.a-Button.a-Toolbar-item.js-actionButton.a-Button--hot[dataaction="save"] { ',
'    display: none !important; ',
'}*/'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'02'
,p_last_updated_by=>'PBOGADO'
,p_last_upd_yyyymmddhh24miss=>'20241008080422'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(55983001397779669)
,p_plug_name=>'VTPEDIDOF'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_query_type=>'TABLE'
,p_query_table=>'VT_PEDIDOS_CABECERA'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(55009196508330126)
,p_plug_name=>'Cabecera'
,p_parent_plug_id=>wwv_flow_imp.id(55983001397779669)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody:t-Form--noPadding'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(55009389168330128)
,p_plug_name=>'Monedas'
,p_parent_plug_id=>wwv_flow_imp.id(55983001397779669)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody:t-Form--noPadding'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>30
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(55010208518330137)
,p_plug_name=>'Datos Personales'
,p_parent_plug_id=>wwv_flow_imp.id(55983001397779669)
,p_region_css_classes=>'i-h560'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody:t-Form--noPadding'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(55010635671330141)
,p_plug_name=>'Comprobantes'
,p_parent_plug_id=>wwv_flow_imp.id(55983001397779669)
,p_region_css_classes=>'i-h320'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody:t-Form--noPadding'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>40
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(78070763697103106)
,p_plug_name=>'BARRA'
,p_parent_plug_id=>wwv_flow_imp.id(55983001397779669)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>1
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(81181673254178620)
,p_plug_name=>'izquierda'
,p_parent_plug_id=>wwv_flow_imp.id(78070763697103106)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>10
,p_plug_grid_column_span=>6
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(81181774301178621)
,p_plug_name=>'derecha'
,p_parent_plug_id=>wwv_flow_imp.id(78070763697103106)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(56074211081779721)
,p_plug_name=>'Botones'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40097820288263654)
,p_plug_display_sequence=>500
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(56989149871360437)
,p_plug_name=>'Tabla detalle'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>70
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(55009271399330127)
,p_plug_name=>'Cabecera_2'
,p_parent_plug_id=>wwv_flow_imp.id(56989149871360437)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>140
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(55011281939330147)
,p_plug_name=>'Detalles1'
,p_region_name=>'detalles'
,p_parent_plug_id=>wwv_flow_imp.id(56989149871360437)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>70
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT seq_id,',
'             c001   AS cod_empresa,',
'             c002   AS tip_comprobante,',
'             c003   AS COD_MONEDA_BASE,',
'             c004   AS nro_comprobante,',
'             c005   AS cod_articulo,',
'             c006   AS cantidad,',
'             c007   AS cantidad_facturada,',
'             c008   AS monto_total,',
'             c009   AS total_iva,',
'             c010   AS precio_lista,',
'             c011   AS descuento,',
'             c012   AS precio_unitario,',
'             c013   AS porc_descuento,',
'             c014   AS costo_promedio_ref,',
'             c015   AS costo_promedio,',
'             c016   AS costo_condicion,',
'             c017   AS cod_unidad_medida,',
'             c018   AS cantidad_ub,',
'             c019   AS porc_recargo,',
'             c020   AS recargo,',
'             c021   AS cod_articulo_rel_bon,',
'             c022   AS porc_iva,',
'             c023   AS orden,',
'             c024   AS cod_iva,',
'             c025   AS control_fin,',
'             c026   AS cod_art_corto,',
'             c027   AS cantidad_pendiente,',
'             c028   AS cod_motivo_anu,',
'             c029   AS IND_NO_DESCUENTO,',
'             c030   AS volumen,',
'             c031   AS es_promo,',
'             c032   AS nro_promo,',
'             c033   AS des_articulo,',
'             c034   AS verificado,',
'             c035   AS ind_producto_armado,',
'             c036   AS ind_promo,',
'             c037   AS MODIFICO_PRECIO,',
'             c038   AS cantidad_entregada,',
'             c039   AS cod_estable,',
'             c040   AS monto_gravada_10,',
'             c041   AS monto_gravada_5,',
'             c042   AS monto_exenta,',
'             c043   AS articulo_regalo_promo,',
'             c044   AS cod_articulo_promo_ant,',
'             c045   AS ser_pedido_promo_ant,',
'             c046   AS nro_pedido_promo_ant,',
'             c047   AS nro_pedido_orden_promo_ant,',
'             c048   AS tip_factura,',
'             c049   AS ser_factura,',
'             c050   AS nro_factura,',
'             n001   AS cod_grupo_ant,',
'             n002   AS cod_origen_art,',
'             n003   AS iva_ant,',
'             n004   AS importe_ant,',
'             n005   AS total_peso,',
'             (inv.vtpedido.fn_agrega_estilos(p_ser_comprobante    => :P234_SER_COMPROBANTE,',
'                                              p_nro_comprobante   => :P234_NRO_COMPROBANTE,',
'                                              p_cod_articulo       => c005,',
'                                              p_cantidad           => to_number(replace(c006,  ''.'')),',
'                                              p_cab_estado         => :P234_ESTADO,',
'                                              p_cod_motivo_anu     => c028,',
'                                              p_cantidad_facturada => to_number(replace(c007,  ''.'')))) situ',
'        FROM apex_collections',
'       WHERE collection_name = ''TMP_VTPEDIDO''',
'       AND c004 in (''A'', ''U'', ''X'');'))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P234_SER_COMPROBANTE,P234_NRO_COMPROBANTE,P234_ESTADO'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Detalles1'
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
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(55011445322330149)
,p_name=>'COD_EMPRESA'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COD_EMPRESA'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Cod Empresa'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>30
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>4000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(55011525705330150)
,p_name=>'TIP_COMPROBANTE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TIP_COMPROBANTE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Tip Comprobante'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>40
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>4000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(56980699659360302)
,p_name=>'NRO_COMPROBANTE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'NRO_COMPROBANTE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Nro Comprobante'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>60
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'right'
,p_is_required=>false
,p_max_length=>4000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(56980733213360303)
,p_name=>'COD_ARTICULO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COD_ARTICULO'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>unistr('C\00F3d. Articulo')
,p_heading_alignment=>'LEFT'
,p_display_sequence=>70
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>4000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(56980839533360304)
,p_name=>'CANTIDAD'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CANTIDAD'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Cantidad'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>80
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'right'
,p_is_required=>false
,p_max_length=>4000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(56980935236360305)
,p_name=>'CANTIDAD_FACTURADA'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CANTIDAD_FACTURADA'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Cantidad Facturada'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>90
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'right'
,p_is_required=>false
,p_max_length=>4000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(56981192712360307)
,p_name=>'MONTO_TOTAL'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MONTO_TOTAL'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Monto Total'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>100
,p_value_alignment=>'RIGHT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>4000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_static_id=>'MONTO_TOTAL'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(56981207205360308)
,p_name=>'TOTAL_IVA'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TOTAL_IVA'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'IVA'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>110
,p_value_alignment=>'RIGHT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>4000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_static_id=>'TOTAL_IVA'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(56981313915360309)
,p_name=>'PRECIO_LISTA'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PRECIO_LISTA'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Precio Lista'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>120
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'right'
,p_is_required=>false
,p_max_length=>4000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(56981419915360310)
,p_name=>'DESCUENTO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DESCUENTO'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Descuento'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>130
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'right'
,p_is_required=>false
,p_max_length=>4000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(56981605110360312)
,p_name=>'PORC_DESCUENTO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PORC_DESCUENTO'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'% Descuento'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>150
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'right'
,p_is_required=>false
,p_max_length=>4000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(56981786513360313)
,p_name=>'COSTO_PROMEDIO_REF'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COSTO_PROMEDIO_REF'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Costo Promedio Ref'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>160
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'right'
,p_is_required=>false
,p_max_length=>4000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(56981870101360314)
,p_name=>'COSTO_PROMEDIO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COSTO_PROMEDIO'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Costo Promedio'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>170
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'right'
,p_is_required=>false
,p_max_length=>4000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(56982039284360316)
,p_name=>'COD_UNIDAD_MEDIDA'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COD_UNIDAD_MEDIDA'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Cod Unidad Medida'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>180
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>4000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(56982170106360317)
,p_name=>'CANTIDAD_UB'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CANTIDAD_UB'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Cantidad Ub'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>190
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'right'
,p_is_required=>false
,p_max_length=>4000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(56982254951360318)
,p_name=>'PORC_RECARGO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PORC_RECARGO'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'% Recargo'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>200
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'right'
,p_is_required=>false
,p_max_length=>4000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(56982363185360319)
,p_name=>'RECARGO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'RECARGO'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'% Recargo'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>210
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'right'
,p_is_required=>false
,p_max_length=>4000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(56982417660360320)
,p_name=>'COD_ARTICULO_REL_BON'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COD_ARTICULO_REL_BON'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Cod Articulo Rel Bon'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>220
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>4000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(56982595811360321)
,p_name=>'PORC_IVA'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PORC_IVA'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Porc Iva'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>230
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'right'
,p_is_required=>false
,p_max_length=>4000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(56982644207360322)
,p_name=>'ORDEN'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ORDEN'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Orden'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>240
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'right'
,p_is_required=>false
,p_max_length=>4000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(56982704429360323)
,p_name=>'COD_IVA'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COD_IVA'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Cod Iva'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>250
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>4000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(56982851311360324)
,p_name=>'CONTROL_FIN'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CONTROL_FIN'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Control Fin'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>260
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>4000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(56982930821360325)
,p_name=>'COD_ART_CORTO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COD_ART_CORTO'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Cod. Corto'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>270
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>4000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
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
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(56983005633360326)
,p_name=>'CANTIDAD_PENDIENTE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CANTIDAD_PENDIENTE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Cantidad Pendiente'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>280
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'right'
,p_is_required=>false
,p_max_length=>4000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(56983195934360327)
,p_name=>'COD_MOTIVO_ANU'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COD_MOTIVO_ANU'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Cod Motivo Anu'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>290
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>4000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(56983385832360329)
,p_name=>'VOLUMEN'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'VOLUMEN'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Volumen'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>310
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'right'
,p_is_required=>false
,p_max_length=>4000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(56983501985360331)
,p_name=>'ES_PROMO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ES_PROMO'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Es Promo'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>320
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>4000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(56983669336360332)
,p_name=>'NRO_PROMO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'NRO_PROMO'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Nro Promo'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>330
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>4000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(56983896870360334)
,p_name=>'VERIFICADO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'VERIFICADO'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Verificado'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>350
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>4000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(56984056334360336)
,p_name=>'IND_PROMO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'IND_PROMO'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Ind Promo'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>360
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>4000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(56984576183360341)
,p_name=>'COD_ESTABLE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COD_ESTABLE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Cod Estable'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>380
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>4000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(56984601321360342)
,p_name=>'MONTO_GRAVADA_10'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MONTO_GRAVADA_10'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Monto Gravada 10'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>390
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'right'
,p_is_required=>false
,p_max_length=>4000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(56984786389360343)
,p_name=>'MONTO_GRAVADA_5'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MONTO_GRAVADA_5'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Monto Gravada 5'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>400
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'right'
,p_is_required=>false
,p_max_length=>4000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(56984895547360344)
,p_name=>'MONTO_EXENTA'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MONTO_EXENTA'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Monto Exenta'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>410
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'right'
,p_is_required=>false
,p_max_length=>4000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(56984951173360345)
,p_name=>'ARTICULO_REGALO_PROMO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ARTICULO_REGALO_PROMO'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Articulo Regalo Promo'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>420
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>4000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(56985066199360346)
,p_name=>'COD_ARTICULO_PROMO_ANT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COD_ARTICULO_PROMO_ANT'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Cod Articulo Promo Ant'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>430
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>4000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(56985194875360347)
,p_name=>'SER_PEDIDO_PROMO_ANT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SER_PEDIDO_PROMO_ANT'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Ser Pedido Promo Ant'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>440
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>4000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(56985251867360348)
,p_name=>'NRO_PEDIDO_PROMO_ANT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'NRO_PEDIDO_PROMO_ANT'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Nro Pedido Promo Ant'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>450
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'right'
,p_is_required=>false
,p_max_length=>4000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(56985388801360349)
,p_name=>'NRO_PEDIDO_ORDEN_PROMO_ANT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'NRO_PEDIDO_ORDEN_PROMO_ANT'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Nro Pedido Orden Promo Ant'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>460
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'right'
,p_is_required=>false
,p_max_length=>4000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(56985463034360350)
,p_name=>'TIP_FACTURA'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TIP_FACTURA'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Tip Factura'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>470
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>4000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(56985599104360401)
,p_name=>'SER_FACTURA'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SER_FACTURA'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Ser Factura'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>480
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>4000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(56985689759360402)
,p_name=>'NRO_FACTURA'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'NRO_FACTURA'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Nro Factura'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>490
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'right'
,p_is_required=>false
,p_max_length=>4000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(56985872351360404)
,p_name=>'IND_PRODUCTO_ARMADO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'IND_PRODUCTO_ARMADO'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SINGLE_CHECKBOX'
,p_heading=>'En Caja'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>500
,p_value_alignment=>'CENTER'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
,p_attribute_03=>'N'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(56985983851360405)
,p_name=>'CANTIDAD_ENTREGADA'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CANTIDAD_ENTREGADA'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Cantidad Entregada'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>510
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'right'
,p_is_required=>false
,p_max_length=>4000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(58330028936331337)
,p_name=>'SEQ_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SEQ_ID'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Seq Id'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>520
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>true
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_static_id=>'SEQ_ID'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(58330179283331338)
,p_name=>'COSTO_CONDICION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COSTO_CONDICION'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Costo Condicion'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>530
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>4000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(58330227212331339)
,p_name=>'COD_GRUPO_ANT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COD_GRUPO_ANT'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Cod Grupo Ant'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>540
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'right'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(58330357401331340)
,p_name=>'COD_ORIGEN_ART'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COD_ORIGEN_ART'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Cod Origen Art'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>550
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'right'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(59741172292031644)
,p_name=>'APEX$ROW_ACTION'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_use_as_row_header=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(59741273723031645)
,p_name=>'APEX$ROW_SELECTOR'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>10
,p_attribute_01=>'Y'
,p_attribute_02=>'Y'
,p_attribute_03=>'Y'
,p_use_as_row_header=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(59741409516031647)
,p_name=>'DES_ARTICULO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DES_ARTICULO'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>unistr('Desc. del Art\00EDculo')
,p_heading_alignment=>'LEFT'
,p_display_sequence=>560
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>4000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(60913367846962503)
,p_name=>'PRECIO_UNITARIO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PRECIO_UNITARIO'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Precio Unitario'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>570
,p_value_alignment=>'RIGHT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>4000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(60913407587962504)
,p_name=>'IVA_ANT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'IVA_ANT'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Iva Ant'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>580
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'right'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(60913589076962505)
,p_name=>'IMPORTE_ANT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'IMPORTE_ANT'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Importe Ant'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>590
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'right'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(60913600740962506)
,p_name=>'TOTAL_PESO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TOTAL_PESO'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Total Peso'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>600
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'right'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(60913897381962508)
,p_name=>'IND_NO_DESCUENTO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'IND_NO_DESCUENTO'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Ind No Descuento'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>620
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>4000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_static_id=>'IND_NO_DESCUENTO'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(60913963308962509)
,p_name=>'COD_MONEDA_BASE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COD_MONEDA_BASE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Cod Moneda Base'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>630
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>4000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_static_id=>'COD_MONEDA_BASE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(63124399562930429)
,p_name=>'CARGA_PORC_RECARGO'
,p_source_type=>'NONE'
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>640
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_static_id=>'CARGA_PORC_RECARGO'
,p_use_as_row_header=>false
,p_enable_hide=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(63124402212930430)
,p_name=>'COD_GRUPO_ART'
,p_source_type=>'NONE'
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>650
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_static_id=>'COD_GRUPO_ART'
,p_use_as_row_header=>false
,p_enable_hide=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(63124508313930431)
,p_name=>'PESO'
,p_source_type=>'NONE'
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>660
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_static_id=>'PESO'
,p_use_as_row_header=>false
,p_enable_hide=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(63124668417930432)
,p_name=>'TOTAL'
,p_source_type=>'NONE'
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>670
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_static_id=>'TOTAL'
,p_use_as_row_header=>false
,p_enable_hide=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(63125249482930438)
,p_name=>'COMENTARIO'
,p_source_type=>'NONE'
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>680
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_use_as_row_header=>false
,p_enable_hide=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(63125381569930439)
,p_name=>'MODIFICO_PRECIO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MODIFICO_PRECIO'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Modifico Precio'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>690
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>4000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(63125780852930443)
,p_name=>'MONTO_TOTAL_AUX'
,p_source_type=>'NONE'
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'AUX'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>700
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_use_as_row_header=>false
,p_enable_hide=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(72003912937704104)
,p_name=>'ELIMINAR'
,p_source_type=>'NONE'
,p_item_type=>'NATIVE_LINK'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>710
,p_value_alignment=>'LEFT'
,p_link_target=>'javascript:void(null);'
,p_link_text=>'<span class="t-Icon fa fa-trash delete-irrow" aria-hidden="true" title="Borrar registro"></span>'
,p_link_attributes=>'data-id_1=&SEQ_ID.'
,p_use_as_row_header=>false
,p_enable_hide=>true
,p_escape_on_http_output=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(72004703332704112)
,p_name=>'EDICION'
,p_source_type=>'NONE'
,p_item_type=>'NATIVE_LINK'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>720
,p_value_alignment=>'LEFT'
,p_link_target=>'javascript:void(null);'
,p_link_text=>'<span aria-hidden="true" class="fa fa-pencil-square-o update-irrow" title="Borrar registro"></span>'
,p_link_attributes=>'data-id_1=&SEQ_ID.'
,p_use_as_row_header=>false
,p_enable_hide=>false
,p_escape_on_http_output=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(72008102585704146)
,p_name=>'IMAGEN'
,p_source_type=>'NONE'
,p_item_type=>'NATIVE_LINK'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>730
,p_value_alignment=>'LEFT'
,p_link_target=>'javascript:void(null);'
,p_link_text=>'<span aria-hidden="true" class="fa fa-picture-o imagen-irrow" title="Ver Imagen<"></span>'
,p_use_as_row_header=>false
,p_enable_hide=>true
,p_escape_on_http_output=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(81180880069178612)
,p_name=>'SITU'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SITU'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Situ'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>740
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>4000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(55011308738330148)
,p_internal_uid=>55011308738330148
,p_is_editable=>true
,p_lost_update_check_type=>'VALUES'
,p_submit_checked_rows=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_show_toolbar=>true
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>true
,p_fixed_header=>'REGION'
,p_fixed_header_max_height=>400
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(56991454956360690)
,p_interactive_grid_id=>wwv_flow_imp.id(55011308738330148)
,p_static_id=>'569915'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(56991618631360690)
,p_report_id=>wwv_flow_imp.id(56991454956360690)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
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
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(23585826090389)
,p_view_id=>wwv_flow_imp.id(56991618631360690)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(59741172292031644)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>40
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(48105278155886)
,p_view_id=>wwv_flow_imp.id(56991618631360690)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(59741409516031647)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>379
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(56992165697360694)
,p_view_id=>wwv_flow_imp.id(56991618631360690)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(55011445322330149)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(56993026222360706)
,p_view_id=>wwv_flow_imp.id(56991618631360690)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(55011525705330150)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(56994810384360712)
,p_view_id=>wwv_flow_imp.id(56991618631360690)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(56980699659360302)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(56995798745360715)
,p_view_id=>wwv_flow_imp.id(56991618631360690)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(56980733213360303)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>109
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(56996648865360718)
,p_view_id=>wwv_flow_imp.id(56991618631360690)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(56980839533360304)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>71
,p_sort_order=>2
,p_sort_direction=>'ASC'
,p_sort_nulls=>'LAST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(56997545026360720)
,p_view_id=>wwv_flow_imp.id(56991618631360690)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(56980935236360305)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(56999349120360726)
,p_view_id=>wwv_flow_imp.id(56991618631360690)
,p_display_seq=>24
,p_column_id=>wwv_flow_imp.id(56981192712360307)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>95
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(57000218263360729)
,p_view_id=>wwv_flow_imp.id(56991618631360690)
,p_display_seq=>22
,p_column_id=>wwv_flow_imp.id(56981207205360308)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>76
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(57001159368360731)
,p_view_id=>wwv_flow_imp.id(56991618631360690)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(56981313915360309)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(57002055342360734)
,p_view_id=>wwv_flow_imp.id(56991618631360690)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(56981419915360310)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>80
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(57003869506360739)
,p_view_id=>wwv_flow_imp.id(56991618631360690)
,p_display_seq=>14
,p_column_id=>wwv_flow_imp.id(56981605110360312)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>91
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(57004706584360742)
,p_view_id=>wwv_flow_imp.id(56991618631360690)
,p_display_seq=>15
,p_column_id=>wwv_flow_imp.id(56981786513360313)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(57005601366360745)
,p_view_id=>wwv_flow_imp.id(56991618631360690)
,p_display_seq=>16
,p_column_id=>wwv_flow_imp.id(56981870101360314)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(57007432626360750)
,p_view_id=>wwv_flow_imp.id(56991618631360690)
,p_display_seq=>17
,p_column_id=>wwv_flow_imp.id(56982039284360316)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(57008346051360753)
,p_view_id=>wwv_flow_imp.id(56991618631360690)
,p_display_seq=>18
,p_column_id=>wwv_flow_imp.id(56982170106360317)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(57009294538360755)
,p_view_id=>wwv_flow_imp.id(56991618631360690)
,p_display_seq=>19
,p_column_id=>wwv_flow_imp.id(56982254951360318)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>80
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(57010108252360758)
,p_view_id=>wwv_flow_imp.id(56991618631360690)
,p_display_seq=>20
,p_column_id=>wwv_flow_imp.id(56982363185360319)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(57011059030360761)
,p_view_id=>wwv_flow_imp.id(56991618631360690)
,p_display_seq=>21
,p_column_id=>wwv_flow_imp.id(56982417660360320)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(57011982429360764)
,p_view_id=>wwv_flow_imp.id(56991618631360690)
,p_display_seq=>23
,p_column_id=>wwv_flow_imp.id(56982595811360321)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(57012818489360766)
,p_view_id=>wwv_flow_imp.id(56991618631360690)
,p_display_seq=>25
,p_column_id=>wwv_flow_imp.id(56982644207360322)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(57013703800360769)
,p_view_id=>wwv_flow_imp.id(56991618631360690)
,p_display_seq=>26
,p_column_id=>wwv_flow_imp.id(56982704429360323)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(57014684894360772)
,p_view_id=>wwv_flow_imp.id(56991618631360690)
,p_display_seq=>27
,p_column_id=>wwv_flow_imp.id(56982851311360324)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(57015430535360774)
,p_view_id=>wwv_flow_imp.id(56991618631360690)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(56982930821360325)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>78
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(57016396405360777)
,p_view_id=>wwv_flow_imp.id(56991618631360690)
,p_display_seq=>28
,p_column_id=>wwv_flow_imp.id(56983005633360326)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(57017268490360780)
,p_view_id=>wwv_flow_imp.id(56991618631360690)
,p_display_seq=>29
,p_column_id=>wwv_flow_imp.id(56983195934360327)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(57019077268360785)
,p_view_id=>wwv_flow_imp.id(56991618631360690)
,p_display_seq=>30
,p_column_id=>wwv_flow_imp.id(56983385832360329)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(57020850725360790)
,p_view_id=>wwv_flow_imp.id(56991618631360690)
,p_display_seq=>31
,p_column_id=>wwv_flow_imp.id(56983501985360331)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(57021717997360793)
,p_view_id=>wwv_flow_imp.id(56991618631360690)
,p_display_seq=>32
,p_column_id=>wwv_flow_imp.id(56983669336360332)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(57023533456360798)
,p_view_id=>wwv_flow_imp.id(56991618631360690)
,p_display_seq=>33
,p_column_id=>wwv_flow_imp.id(56983896870360334)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(57025378764360804)
,p_view_id=>wwv_flow_imp.id(56991618631360690)
,p_display_seq=>34
,p_column_id=>wwv_flow_imp.id(56984056334360336)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(57029833024360818)
,p_view_id=>wwv_flow_imp.id(56991618631360690)
,p_display_seq=>35
,p_column_id=>wwv_flow_imp.id(56984576183360341)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(57030753903360820)
,p_view_id=>wwv_flow_imp.id(56991618631360690)
,p_display_seq=>36
,p_column_id=>wwv_flow_imp.id(56984601321360342)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(57031682096360823)
,p_view_id=>wwv_flow_imp.id(56991618631360690)
,p_display_seq=>37
,p_column_id=>wwv_flow_imp.id(56984786389360343)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(57032570236360826)
,p_view_id=>wwv_flow_imp.id(56991618631360690)
,p_display_seq=>38
,p_column_id=>wwv_flow_imp.id(56984895547360344)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(57033476709360829)
,p_view_id=>wwv_flow_imp.id(56991618631360690)
,p_display_seq=>39
,p_column_id=>wwv_flow_imp.id(56984951173360345)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(57034390909360831)
,p_view_id=>wwv_flow_imp.id(56991618631360690)
,p_display_seq=>40
,p_column_id=>wwv_flow_imp.id(56985066199360346)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(57035293890360834)
,p_view_id=>wwv_flow_imp.id(56991618631360690)
,p_display_seq=>41
,p_column_id=>wwv_flow_imp.id(56985194875360347)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(57036181446360837)
,p_view_id=>wwv_flow_imp.id(56991618631360690)
,p_display_seq=>42
,p_column_id=>wwv_flow_imp.id(56985251867360348)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(57037023302360839)
,p_view_id=>wwv_flow_imp.id(56991618631360690)
,p_display_seq=>43
,p_column_id=>wwv_flow_imp.id(56985388801360349)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(57037977082360842)
,p_view_id=>wwv_flow_imp.id(56991618631360690)
,p_display_seq=>44
,p_column_id=>wwv_flow_imp.id(56985463034360350)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(57038848780360845)
,p_view_id=>wwv_flow_imp.id(56991618631360690)
,p_display_seq=>45
,p_column_id=>wwv_flow_imp.id(56985599104360401)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(57039792058360847)
,p_view_id=>wwv_flow_imp.id(56991618631360690)
,p_display_seq=>46
,p_column_id=>wwv_flow_imp.id(56985689759360402)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(57041527066360853)
,p_view_id=>wwv_flow_imp.id(56991618631360690)
,p_display_seq=>47
,p_column_id=>wwv_flow_imp.id(56985872351360404)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>61
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(57042496421360855)
,p_view_id=>wwv_flow_imp.id(56991618631360690)
,p_display_seq=>48
,p_column_id=>wwv_flow_imp.id(56985983851360405)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(58537983094749486)
,p_view_id=>wwv_flow_imp.id(56991618631360690)
,p_display_seq=>49
,p_column_id=>wwv_flow_imp.id(58330028936331337)
,p_is_visible=>false
,p_is_frozen=>false
,p_sort_order=>1
,p_sort_direction=>'DESC'
,p_sort_nulls=>'LAST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(58538829952749490)
,p_view_id=>wwv_flow_imp.id(56991618631360690)
,p_display_seq=>50
,p_column_id=>wwv_flow_imp.id(58330179283331338)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(58539717152749492)
,p_view_id=>wwv_flow_imp.id(56991618631360690)
,p_display_seq=>51
,p_column_id=>wwv_flow_imp.id(58330227212331339)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(58540697136749495)
,p_view_id=>wwv_flow_imp.id(56991618631360690)
,p_display_seq=>52
,p_column_id=>wwv_flow_imp.id(58330357401331340)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(61086461352321703)
,p_view_id=>wwv_flow_imp.id(56991618631360690)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(60913367846962503)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>105
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(61193868869577770)
,p_view_id=>wwv_flow_imp.id(56991618631360690)
,p_display_seq=>53
,p_column_id=>wwv_flow_imp.id(60913407587962504)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(61194706991577772)
,p_view_id=>wwv_flow_imp.id(56991618631360690)
,p_display_seq=>54
,p_column_id=>wwv_flow_imp.id(60913589076962505)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(61195549148577774)
,p_view_id=>wwv_flow_imp.id(56991618631360690)
,p_display_seq=>55
,p_column_id=>wwv_flow_imp.id(60913600740962506)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(61214725152624977)
,p_view_id=>wwv_flow_imp.id(56991618631360690)
,p_display_seq=>56
,p_column_id=>wwv_flow_imp.id(60913897381962508)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(61302292351756996)
,p_view_id=>wwv_flow_imp.id(56991618631360690)
,p_display_seq=>57
,p_column_id=>wwv_flow_imp.id(60913963308962509)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(67377455920324495)
,p_view_id=>wwv_flow_imp.id(56991618631360690)
,p_display_seq=>58
,p_column_id=>wwv_flow_imp.id(63124399562930429)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(67380384442361827)
,p_view_id=>wwv_flow_imp.id(56991618631360690)
,p_display_seq=>59
,p_column_id=>wwv_flow_imp.id(63124402212930430)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(67382424558388156)
,p_view_id=>wwv_flow_imp.id(56991618631360690)
,p_display_seq=>60
,p_column_id=>wwv_flow_imp.id(63124508313930431)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(67389234131440505)
,p_view_id=>wwv_flow_imp.id(56991618631360690)
,p_display_seq=>61
,p_column_id=>wwv_flow_imp.id(63124668417930432)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(67445606523948799)
,p_view_id=>wwv_flow_imp.id(56991618631360690)
,p_display_seq=>62
,p_column_id=>wwv_flow_imp.id(63125249482930438)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(67496046667146484)
,p_view_id=>wwv_flow_imp.id(56991618631360690)
,p_display_seq=>63
,p_column_id=>wwv_flow_imp.id(63125381569930439)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(67755850889876968)
,p_view_id=>wwv_flow_imp.id(56991618631360690)
,p_display_seq=>64
,p_column_id=>wwv_flow_imp.id(63125780852930443)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(73705631545303393)
,p_view_id=>wwv_flow_imp.id(56991618631360690)
,p_display_seq=>65
,p_column_id=>wwv_flow_imp.id(72003912937704104)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(76497007286685617)
,p_view_id=>wwv_flow_imp.id(56991618631360690)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(72004703332704112)
,p_is_visible=>false
,p_is_frozen=>true
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(77443172997017081)
,p_view_id=>wwv_flow_imp.id(56991618631360690)
,p_display_seq=>66
,p_column_id=>wwv_flow_imp.id(72008102585704146)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(82274329812744767)
,p_view_id=>wwv_flow_imp.id(56991618631360690)
,p_display_seq=>67
,p_column_id=>wwv_flow_imp.id(81180880069178612)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>40
);
wwv_flow_imp_page.create_ig_report_highlight(
 p_id=>wwv_flow_imp.id(29969720023917)
,p_view_id=>wwv_flow_imp.id(56991618631360690)
,p_execution_seq=>5
,p_name=>'Sin Stock - Rojo'
,p_background_color=>'#ff0000'
,p_text_color=>'#ffffff'
,p_condition_type=>'COLUMN'
,p_condition_column_id=>wwv_flow_imp.id(81180880069178612)
,p_condition_operator=>'EQ'
,p_condition_is_case_sensitive=>true
,p_condition_expression=>'ROJO'
,p_is_enabled=>true
);
wwv_flow_imp_page.create_ig_report_highlight(
 p_id=>wwv_flow_imp.id(56725999008332)
,p_view_id=>wwv_flow_imp.id(56991618631360690)
,p_execution_seq=>15
,p_name=>'Anulado / Cerrado'
,p_background_color=>'#808080'
,p_text_color=>'#ffffff'
,p_condition_type=>'COLUMN'
,p_condition_column_id=>wwv_flow_imp.id(81180880069178612)
,p_condition_operator=>'EQ'
,p_condition_is_case_sensitive=>false
,p_condition_expression=>'GRIS'
,p_is_enabled=>true
);
wwv_flow_imp_page.create_ig_report_highlight(
 p_id=>wwv_flow_imp.id(85199607014354)
,p_view_id=>wwv_flow_imp.id(56991618631360690)
,p_execution_seq=>12.5
,p_name=>'Sock Completo  - Verde'
,p_background_color=>'#008000'
,p_text_color=>'#ffffff'
,p_condition_type=>'COLUMN'
,p_condition_column_id=>wwv_flow_imp.id(81180880069178612)
,p_condition_operator=>'EQ'
,p_condition_is_case_sensitive=>false
,p_condition_expression=>'VERDE'
,p_is_enabled=>true
);
wwv_flow_imp_page.create_ig_report_highlight(
 p_id=>wwv_flow_imp.id(231172239096264)
,p_view_id=>wwv_flow_imp.id(56991618631360690)
,p_execution_seq=>10
,p_name=>unistr('Stock en Perif\00E9ricos - Amarillo')
,p_background_color=>'#ffff00'
,p_text_color=>'#000000'
,p_condition_type=>'COLUMN'
,p_condition_column_id=>wwv_flow_imp.id(81180880069178612)
,p_condition_operator=>'EQ'
,p_condition_is_case_sensitive=>true
,p_condition_expression=>'AMARILLO'
,p_is_enabled=>true
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(56986659695360412)
,p_plug_name=>'Detalles Generales'
,p_parent_plug_id=>wwv_flow_imp.id(56989149871360437)
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--scrollBody:t-Form--noPadding'
,p_plug_template=>wwv_flow_imp.id(40108275410263656)
,p_plug_display_sequence=>110
,p_plug_grid_column_span=>7
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(56987206457360418)
,p_plug_name=>'Detalle 2'
,p_parent_plug_id=>wwv_flow_imp.id(56986659695360412)
,p_region_template_options=>'#DEFAULT#:t-Form--noPadding'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>10
,p_plug_grid_column_span=>3
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(56987491987360420)
,p_plug_name=>'Detalle 3'
,p_parent_plug_id=>wwv_flow_imp.id(56986659695360412)
,p_region_template_options=>'#DEFAULT#:t-Form--noPadding'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(56987587944360421)
,p_plug_name=>'Promo'
,p_parent_plug_id=>wwv_flow_imp.id(56987491987360420)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody:t-Form--noPadding'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(56988099080360426)
,p_plug_name=>'Detalles 3.1'
,p_parent_plug_id=>wwv_flow_imp.id(56987491987360420)
,p_region_template_options=>'#DEFAULT#:t-Form--noPadding'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(56988612805360432)
,p_plug_name=>'Detalle 4'
,p_parent_plug_id=>wwv_flow_imp.id(56986659695360412)
,p_region_template_options=>'#DEFAULT#:t-Form--noPadding'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>130
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(56986774403360413)
,p_plug_name=>'Detalle_2'
,p_parent_plug_id=>wwv_flow_imp.id(56989149871360437)
,p_region_template_options=>'#DEFAULT#:t-Form--noPadding'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>120
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(56989976441360445)
,p_plug_name=>'Totalizadores'
,p_parent_plug_id=>wwv_flow_imp.id(56986774403360413)
,p_region_template_options=>'#DEFAULT#:t-Form--noPadding'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(68098607433978930)
,p_plug_name=>'Detalle Principal'
,p_region_name=>'detalle_principal'
,p_region_template_options=>'#DEFAULT#:js-dialog-size720x480'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>1010
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(67974712847767420)
,p_plug_name=>'Detalles_principal'
,p_parent_plug_id=>wwv_flow_imp.id(68098607433978930)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>990
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'TABLE'
,p_query_table=>'VT_PEDIDOS_DETALLE'
,p_include_rowid_column=>false
,p_is_editable=>false
,p_plug_source_type=>'NATIVE_FORM'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(68883935727126424)
,p_plug_name=>'Botones'
,p_parent_plug_id=>wwv_flow_imp.id(67974712847767420)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(72008229837704147)
,p_plug_name=>'MOSTRAR_IMAGEN'
,p_region_name=>'imagen'
,p_region_template_options=>'#DEFAULT#:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>1020
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<button type="button" id="zoom-in">Zoom in</button>',
'<button type="button" id="zoom-out">Zoom out</button>',
'<div style ="overflow-x: scroll;overflow-y: scroll;height:500px;">',
'<img src="" class="IMG" id="container">',
'</div>',
''))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(77482209694133438)
,p_plug_name=>'Croquis'
,p_region_name=>'croquis'
,p_region_template_options=>'#DEFAULT#:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>1030
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(78073551539103134)
,p_plug_name=>'Parametros'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>1040
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(81182759164178631)
,p_plug_name=>'Mapa'
,p_region_name=>'mimapa'
,p_region_template_options=>'#DEFAULT#:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>1050
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(81182823937178632)
,p_plug_name=>'Search Maps'
,p_region_name=>'mymap'
,p_parent_plug_id=>wwv_flow_imp.id(81182759164178631)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_item_display_point=>'BELOW'
,p_query_type=>'FUNC_BODY_RETURNING_SQL'
,p_function_body_language=>'PLSQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'return q''~',
unistr('    SELECT to_number(REPLACE(:P234_LATITUD_1, ''.'' , '','')) P234_LATITUD_1, to_number(REPLACE(:P234_LONGITUD_1, ''.'' , '','')) P234_LONGITUD_1, ''Ubicaci\00F3n'', 1 FROM dual;'),
'~'';'))
,p_plug_source_type=>'PLUGIN_COM.JK64.REPORT_GOOGLE_MAP_R1'
,p_ajax_items_to_submit=>'P234_LATITUD_1,P234_LONGITUD_1'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'400'
,p_attribute_02=>'PINS'
,p_attribute_03=>'13'
,p_attribute_04=>'PAN_ON_CLICK:PAN_ALLOWED:ZOOM_ALLOWED'
,p_attribute_12=>'N'
,p_attribute_21=>'N'
,p_attribute_22=>'ROADMAP'
,p_attribute_24=>'Y'
,p_attribute_25=>'auto'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(81182950598178633)
,p_plug_name=>'Notas'
,p_parent_plug_id=>wwv_flow_imp.id(81182759164178631)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source_type=>'NATIVE_HELP_TEXT'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(83734882908791521)
,p_plug_name=>'Comentarios'
,p_region_name=>'B_AUTVEN'
,p_region_template_options=>'#DEFAULT#:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>1060
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(83735089291791523)
,p_plug_name=>'B_AUTVEN_DETALLES'
,p_parent_plug_id=>wwv_flow_imp.id(83734882908791521)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT seq_id,',
'        C001 NOMBRE',
'        FROM apex_collections',
'       WHERE collection_name = ''TMP_B_AUTVEN'';'))
,p_plug_source_type=>'NATIVE_IG'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'B_AUTVEN_DETALLES'
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
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(83735252373791525)
,p_name=>'SEQ_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SEQ_ID'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Seq Id'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>10
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'right'
,p_is_required=>true
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(83735397277791526)
,p_name=>'NOMBRE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'NOMBRE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Nombre'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>20
,p_value_alignment=>'LEFT'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
,p_is_required=>false
,p_max_length=>4000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(83735196036791524)
,p_internal_uid=>83735196036791524
,p_is_editable=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_show_toolbar=>true
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(85264125763297303)
,p_interactive_grid_id=>wwv_flow_imp.id(83735196036791524)
,p_static_id=>'852642'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(85264375918297304)
,p_report_id=>wwv_flow_imp.id(85264125763297303)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(85264857145297307)
,p_view_id=>wwv_flow_imp.id(85264375918297304)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(83735252373791525)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(85265770184297311)
,p_view_id=>wwv_flow_imp.id(85264375918297304)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(83735397277791526)
,p_is_visible=>true
,p_is_frozen=>false
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
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(83736059102791533)
,p_plug_name=>'Copiar_Presupuesto'
,p_region_name=>'copia_presupuesto'
,p_region_template_options=>'#DEFAULT#:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>1070
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(83736122720791534)
,p_plug_name=>'Presupuestos'
,p_parent_plug_id=>wwv_flow_imp.id(83736059102791533)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(101869962937708103)
,p_plug_name=>'ENTREGAS'
,p_region_name=>'entreg'
,p_region_template_options=>'#DEFAULT#:js-dialog-size720x480'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>1080
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(101870010215708104)
,p_plug_name=>'Detalle Entregas'
,p_region_name=>'det_entregas'
,p_parent_plug_id=>wwv_flow_imp.id(101869962937708103)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT seq_id seq_id_2,',
'             c001   AS cod_empresa,',
'             c002   AS tip_comprobante,',
'             c003   AS ser_comprobante,',
'             c004   AS nro_comprobante,',
'             c005   AS fecha_entrega,',
'             c006   AS cod_art_corto,',
'             c007   AS cod_articulo,',
'             c008   AS descripcion,',
'             N001   AS cantidad,',
'             c010   AS total,',
'             c011   AS orden,',
'             c012   AS observacion,',
'             c013   AS ind_promocion,',
'             c014   AS ind_requerido,',
'             c015   AS ind_combo,',
'             c016   AS porcentaje,',
'             c017   AS cod_sucursal_dist,',
'             c018   AS nombre,',
'             c019   AS detalle_entrega,',
'             c020   AS cod_cliente,',
'             c021   AS nro_orden,',
'             c022   AS sucursal_aux,',
'             c023   AS CANTIDAD_AUX',
'        FROM apex_collections',
'       WHERE collection_name = ''TMP_ENTREGA'';'))
,p_plug_source_type=>'NATIVE_IG'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Detalle Entregas'
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
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(99776483338177715)
,p_name=>'APEX$ROW_ACTION'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_use_as_row_header=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(99776590237177716)
,p_name=>'APEX$ROW_SELECTOR'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>10
,p_attribute_01=>'Y'
,p_attribute_02=>'Y'
,p_attribute_03=>'Y'
,p_use_as_row_header=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(99776731968177718)
,p_name=>'SUCURSAL_AUX'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SUCURSAL_AUX'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Sucursal Aux'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>250
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>4000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_static_id=>'SUCURSAL_AUX'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(99777975905177730)
,p_name=>'CANTIDAD_AUX'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CANTIDAD_AUX'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Cantidad Aux'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>260
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>4000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_static_id=>'CANTIDAD_AUX'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(99778037766177731)
,p_name=>'SEQ_ID_2'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SEQ_ID_2'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Seq Id 2'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>270
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_static_id=>'SEQ_ID_2'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(101870338156708107)
,p_name=>'COD_EMPRESA'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COD_EMPRESA'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Cod Empresa'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>40
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>4000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_static_id=>'COD_EMPRESA'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(101870468248708108)
,p_name=>'TIP_COMPROBANTE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TIP_COMPROBANTE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Tip Comprobante'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>4000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_static_id=>'TIP_COMPROBANTE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(101870598955708109)
,p_name=>'SER_COMPROBANTE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SER_COMPROBANTE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Ser Comprobante'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>60
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>4000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_static_id=>'SER_COMPROBANTE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(101870609314708110)
,p_name=>'NRO_COMPROBANTE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'NRO_COMPROBANTE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Nro Comprobante'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>70
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>4000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_static_id=>'NRO_COMPROBANTE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(101870714655708111)
,p_name=>'FECHA_ENTREGA'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FECHA_ENTREGA'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Fecha Entrega'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>80
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_item_css_classes=>'allow_only_numbers'
,p_item_attributes=>'onfocusout="this.value= isValidDate(this.value);"  onkeyup = "setDateFormat(this);" '
,p_is_required=>false
,p_max_length=>4000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_static_id=>'FECHA_ENTREGA'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(101870864289708112)
,p_name=>'COD_ART_CORTO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COD_ART_CORTO'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Art. Promo'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>90
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>4000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_static_id=>'COD_ART_CORTO'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_readonly_condition_type=>'ALWAYS'
,p_readonly_for_each_row=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(101870933247708113)
,p_name=>'COD_ARTICULO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COD_ARTICULO'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>unistr('C\00F3d. Articulo.')
,p_heading_alignment=>'LEFT'
,p_display_sequence=>100
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>4000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_static_id=>'COD_ARTICULO'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_readonly_condition_type=>'ALWAYS'
,p_readonly_for_each_row=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(101871050792708114)
,p_name=>'DESCRIPCION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DESCRIPCION'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>unistr('Descripci\00F3n')
,p_heading_alignment=>'LEFT'
,p_display_sequence=>110
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>4000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_static_id=>'DESCRIPCION'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_readonly_condition_type=>'ALWAYS'
,p_readonly_for_each_row=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(101871129050708115)
,p_name=>'CANTIDAD'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CANTIDAD'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Cantidad'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>120
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_item_css_classes=>'allow_only_numbers'
,p_is_required=>false
,p_max_length=>10
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'DISTINCT'
,p_static_id=>'CANTIDAD'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_default_type=>'STATIC'
,p_default_expression=>'0'
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(101871245405708116)
,p_name=>'TOTAL'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TOTAL'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Total'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>130
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>4000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_static_id=>'TOTAL'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(101871340575708117)
,p_name=>'ORDEN'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ORDEN'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Orden'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>140
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>4000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_static_id=>'ORDEN'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(101871419461708118)
,p_name=>'OBSERVACION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'OBSERVACION'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Observacion'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>150
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>4000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_static_id=>'OBSERVACION'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(101871561846708119)
,p_name=>'IND_PROMOCION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'IND_PROMOCION'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Ind Promocion'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>160
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>4000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_static_id=>'IND_PROMOCION'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(101871622394708120)
,p_name=>'IND_REQUERIDO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'IND_REQUERIDO'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Ind Requerido'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>170
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>4000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_static_id=>'IND_REQUERIDO'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(101871737354708121)
,p_name=>'IND_COMBO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'IND_COMBO'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Ind Combo'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>180
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>4000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_static_id=>'IND_COMBO'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(101871856823708122)
,p_name=>'PORCENTAJE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PORCENTAJE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Porcentaje'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>190
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>4000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_static_id=>'PORCENTAJE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(101871911991708123)
,p_name=>'COD_SUCURSAL_DIST'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COD_SUCURSAL_DIST'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_POPUP_LOV'
,p_heading=>'Sucursal'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>200
,p_value_alignment=>'LEFT'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
,p_is_required=>false
,p_max_length=>4000
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(102484327127456597)
,p_lov_display_extra=>true
,p_lov_display_null=>true
,p_lov_cascade_parent_items=>'COD_CLIENTE'
,p_ajax_items_to_submit=>'COD_CLIENTE,P234_COD_CLIENTE'
,p_ajax_optimize_refresh=>true
,p_filter_is_required=>false
,p_static_id=>'COD_SUCURSAL_DIST'
,p_use_as_row_header=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(101872018701708124)
,p_name=>'NOMBRE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'NOMBRE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Nombre'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>210
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>4000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_static_id=>'NOMBRE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(101872183673708125)
,p_name=>'DETALLE_ENTREGA'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DETALLE_ENTREGA'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Detalle Entrega'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>220
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>4000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_static_id=>'DETALLE_ENTREGA'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(101872222666708126)
,p_name=>'COD_CLIENTE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COD_CLIENTE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Cod Cliente'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>230
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>4000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_static_id=>'COD_CLIENTE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(101872384669708127)
,p_name=>'NRO_ORDEN'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'NRO_ORDEN'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Nro Orden'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>240
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>4000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_static_id=>'NRO_ORDEN'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(101870184632708105)
,p_internal_uid=>101870184632708105
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_add_row_if_empty=>false
,p_submit_checked_rows=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_show_toolbar=>true
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(101906044037867100)
,p_interactive_grid_id=>wwv_flow_imp.id(101870184632708105)
,p_static_id=>'1019061'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(101906227883867100)
,p_report_id=>wwv_flow_imp.id(101906044037867100)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(386309311300981)
,p_view_id=>wwv_flow_imp.id(101906227883867100)
,p_display_seq=>24
,p_column_id=>wwv_flow_imp.id(99777975905177730)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(399511064346993)
,p_view_id=>wwv_flow_imp.id(101906227883867100)
,p_display_seq=>25
,p_column_id=>wwv_flow_imp.id(99778037766177731)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(101907637510867106)
,p_view_id=>wwv_flow_imp.id(101906227883867100)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(101870338156708107)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(101908525988867108)
,p_view_id=>wwv_flow_imp.id(101906227883867100)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(101870468248708108)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(101909400636867110)
,p_view_id=>wwv_flow_imp.id(101906227883867100)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(101870598955708109)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(101910324433867112)
,p_view_id=>wwv_flow_imp.id(101906227883867100)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(101870609314708110)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(101911292840867113)
,p_view_id=>wwv_flow_imp.id(101906227883867100)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(101870714655708111)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>100
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(101912162719867115)
,p_view_id=>wwv_flow_imp.id(101906227883867100)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(101870864289708112)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>84
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(101913062821867116)
,p_view_id=>wwv_flow_imp.id(101906227883867100)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(101870933247708113)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>122
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(101913937674867118)
,p_view_id=>wwv_flow_imp.id(101906227883867100)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(101871050792708114)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>168
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(101914836125867119)
,p_view_id=>wwv_flow_imp.id(101906227883867100)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(101871129050708115)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>74
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(101915761863867121)
,p_view_id=>wwv_flow_imp.id(101906227883867100)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(101871245405708116)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(101916611963867123)
,p_view_id=>wwv_flow_imp.id(101906227883867100)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(101871340575708117)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(101917548986867124)
,p_view_id=>wwv_flow_imp.id(101906227883867100)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(101871419461708118)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(101918470953867126)
,p_view_id=>wwv_flow_imp.id(101906227883867100)
,p_display_seq=>14
,p_column_id=>wwv_flow_imp.id(101871561846708119)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(101919374522867127)
,p_view_id=>wwv_flow_imp.id(101906227883867100)
,p_display_seq=>15
,p_column_id=>wwv_flow_imp.id(101871622394708120)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(101920210289867129)
,p_view_id=>wwv_flow_imp.id(101906227883867100)
,p_display_seq=>16
,p_column_id=>wwv_flow_imp.id(101871737354708121)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(101921122068867130)
,p_view_id=>wwv_flow_imp.id(101906227883867100)
,p_display_seq=>17
,p_column_id=>wwv_flow_imp.id(101871856823708122)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(101922056061867132)
,p_view_id=>wwv_flow_imp.id(101906227883867100)
,p_display_seq=>18
,p_column_id=>wwv_flow_imp.id(101871911991708123)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>195
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(101922970516867134)
,p_view_id=>wwv_flow_imp.id(101906227883867100)
,p_display_seq=>19
,p_column_id=>wwv_flow_imp.id(101872018701708124)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(101923874004867135)
,p_view_id=>wwv_flow_imp.id(101906227883867100)
,p_display_seq=>20
,p_column_id=>wwv_flow_imp.id(101872183673708125)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(101924755763867137)
,p_view_id=>wwv_flow_imp.id(101906227883867100)
,p_display_seq=>21
,p_column_id=>wwv_flow_imp.id(101872222666708126)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>88
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(101925655657867138)
,p_view_id=>wwv_flow_imp.id(101906227883867100)
,p_display_seq=>22
,p_column_id=>wwv_flow_imp.id(101872384669708127)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(102471432466430457)
,p_view_id=>wwv_flow_imp.id(101906227883867100)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(99776483338177715)
,p_is_visible=>true
,p_is_frozen=>true
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(102483293151449903)
,p_view_id=>wwv_flow_imp.id(101906227883867100)
,p_display_seq=>23
,p_column_id=>wwv_flow_imp.id(99776731968177718)
,p_is_visible=>false
,p_is_frozen=>false
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
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(99776867486177719)
,p_plug_name=>'Totales'
,p_parent_plug_id=>wwv_flow_imp.id(101870010215708104)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(56076889022779724)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(81181673254178620)
,p_button_name=>'CREATE'
,p_button_static_id=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Guardar'
,p_icon_css_classes=>'fa-save'
,p_grid_new_row=>'Y'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(68884038382126425)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(68883935727126424)
,p_button_name=>'Agregar'
,p_button_static_id=>'btn_agregar'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Agregar'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(99777507335177726)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(99776867486177719)
,p_button_name=>'Aceptar'
,p_button_static_id=>'aceptar'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Aceptar'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-save-as'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(390604773814583004)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(81181774301178621)
,p_button_name=>'Ver_Margen'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Ver Margen'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-materialized-view'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(72005683670704121)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(68883935727126424)
,p_button_name=>'EDITAR'
,p_button_static_id=>'btn_editar'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Modificar'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(78071084229103109)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(81181673254178620)
,p_button_name=>'Copiar_pedido'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Pedido'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-copy'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(78071510911103114)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(81181774301178621)
,p_button_name=>'Copiar_presupuesto'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Copiar Presupuesto'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-copy'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(68884113730126426)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(68883935727126424)
,p_button_name=>'Cancelar'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Cancelar'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'N'
,p_grid_column=>11
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(78071147487103110)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(81181673254178620)
,p_button_name=>'Ver_pedido'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Pedido'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-materialized-view'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(78071796349103116)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(81181774301178621)
,p_button_name=>'Stock'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Stock'
,p_button_redirect_url=>'f?p=&APP_ID.:65:&SESSION.::&DEBUG.:::'
,p_icon_css_classes=>'fa-badge-list'
,p_grid_new_row=>'N'
,p_grid_column=>5
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(78071894878103117)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(81181774301178621)
,p_button_name=>'R'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'R'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-box-plot-chart'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(78071232277103111)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(81181673254178620)
,p_button_name=>'Imprimir_pedido'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Pedido'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-print'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(78071955899103118)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(81181774301178621)
,p_button_name=>'Desanular_pedido'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Des. Ped.'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-box-arrow-in-nw'
,p_grid_new_row=>'N'
,p_grid_column=>9
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(78071385688103112)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_imp.id(81181673254178620)
,p_button_name=>'Comentarios'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Comentarios'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-list-alt'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(94559476849213422)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_imp.id(83736122720791534)
,p_button_name=>'Copiar_pedidos'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Copiar Pe'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(156805228915017224)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_imp.id(81181673254178620)
,p_button_name=>'Datos_Entrega'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Datos Entrega'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-map-markers-o'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(83737293026791545)
,p_button_sequence=>100
,p_button_plug_id=>wwv_flow_imp.id(83736122720791534)
,p_button_name=>'Copiar'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Copiar'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(81184152735178645)
,p_button_sequence=>110
,p_button_plug_id=>wwv_flow_imp.id(81182950598178633)
,p_button_name=>'Agregar_maps'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Agregar'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'Y'
,p_grid_column=>11
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(83737326651791546)
,p_button_sequence=>110
,p_button_plug_id=>wwv_flow_imp.id(83736122720791534)
,p_button_name=>'Volver'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Volver'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(81184297273178646)
,p_button_sequence=>120
,p_button_plug_id=>wwv_flow_imp.id(81182950598178633)
,p_button_name=>'Geolocalizador'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Geolocalizador'
,p_button_execute_validations=>'N'
,p_warn_on_unsaved_changes=>null
,p_button_condition_type=>'NEVER'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(81182145620178625)
,p_button_sequence=>130
,p_button_plug_id=>wwv_flow_imp.id(77482209694133438)
,p_button_name=>'VOLVER'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Volver'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(96865008220522117)
,p_button_sequence=>130
,p_button_plug_id=>wwv_flow_imp.id(55009196508330126)
,p_button_name=>'agg_cliente'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187078917263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Agregar Cliente'
,p_button_redirect_url=>'f?p=&APP_ID.:92:&SESSION.::&DEBUG.:92::'
,p_icon_css_classes=>'fa-address-card'
,p_grid_new_row=>'N'
,p_grid_column=>11
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(101869845925708102)
,p_button_sequence=>150
,p_button_plug_id=>wwv_flow_imp.id(55010208518330137)
,p_button_name=>'Entregas'
,p_button_static_id=>'entregas'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187078917263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Agregar detalles de Entrega'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-arrow-up-right-alt'
,p_grid_new_row=>'N'
,p_grid_column=>11
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(55008979078330124)
,p_button_sequence=>220
,p_button_plug_id=>wwv_flow_imp.id(55009196508330126)
,p_button_name=>'OC_IMAGEN'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Oc (imagen)'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(96865498099522121)
,p_button_sequence=>310
,p_button_plug_id=>wwv_flow_imp.id(55009196508330126)
,p_button_name=>'agg_maps'
,p_button_static_id=>'llamar_maps'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187078917263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('Buscar Direcci\00F3n')
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-map-markers-o'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(56076436152779724)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(56074211081779721)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Modificar'
,p_button_position=>'CLOSE'
,p_button_condition=>'P234_COD_CLIENTE'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_icon_css_classes=>'fa-save'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(94560302377213431)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(56074211081779721)
,p_button_name=>'CREATE_1'
,p_button_static_id=>'crear'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Guardar'
,p_button_position=>'DELETE'
,p_icon_css_classes=>'fa-save'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(56076059971779724)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(56074211081779721)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Eliminar'
,p_button_position=>'DELETE'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P234_COD_CLIENTE'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_icon_css_classes=>'fa-times-square-o'
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(56074653721779722)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(56074211081779721)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Salir'
,p_button_position=>'NEXT'
,p_button_redirect_url=>'f?p=&APP_ID.:233:&SESSION.::&DEBUG.:234::'
,p_icon_css_classes=>'fa-reply'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(55008890535330123)
,p_branch_action=>'f?p=&APP_ID.:233:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(52867888880687042)
,p_name=>'P234_IND_LLEVA_OC'
,p_item_sequence=>340
,p_item_plug_id=>wwv_flow_imp.id(55009196508330126)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(52867927926687043)
,p_name=>'P234_TIP_CLIENTE'
,p_item_sequence=>350
,p_item_plug_id=>wwv_flow_imp.id(55009196508330126)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(52868056857687044)
,p_name=>'P234_TIPO_ENTREGA_CIUDAD'
,p_item_sequence=>360
,p_item_plug_id=>wwv_flow_imp.id(55009196508330126)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(52868188587687045)
,p_name=>'P234_COPIANDO'
,p_item_sequence=>370
,p_item_plug_id=>wwv_flow_imp.id(55009196508330126)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(52868211761687046)
,p_name=>'P234_SOBREGIRADO'
,p_item_sequence=>380
,p_item_plug_id=>wwv_flow_imp.id(55009196508330126)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(52868356220687047)
,p_name=>'P234_TIPO_IMPUESTO'
,p_item_sequence=>390
,p_item_plug_id=>wwv_flow_imp.id(55009196508330126)
,p_use_cache_before_default=>'NO'
,p_item_default=>'G'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(52868415477687048)
,p_name=>'P234_TIPO_CLIENTE'
,p_item_sequence=>400
,p_item_plug_id=>wwv_flow_imp.id(55009196508330126)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(52868538130687049)
,p_name=>'P234_COD_MODEDA_DOL'
,p_item_sequence=>410
,p_item_plug_id=>wwv_flow_imp.id(55009196508330126)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(52868603239687050)
,p_name=>'P234_COD_MODEDA_GS'
,p_item_sequence=>420
,p_item_plug_id=>wwv_flow_imp.id(55009196508330126)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(55009409005330129)
,p_name=>'P234_SALDO_DOLARES'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(55009389168330128)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Saldo en U$S'
,p_format_mask=>'999G999G999G999G990D00'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(55009559260330130)
,p_name=>'P234_SALDO_GS'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(55009389168330128)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Saldo en Gs.'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(55009658946330131)
,p_name=>'P234_SALDO_TOTAL'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(55009389168330128)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Saldo total U$S'
,p_format_mask=>'999G999G999G999G990D00'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(55009756955330132)
,p_name=>'P234_LIMITE_CREDITO'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(55009389168330128)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Lim. Cred. U$S'
,p_format_mask=>'999G999G999G999G990D00'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(55009822854330133)
,p_name=>'P234_VALORES_ADEPOSITAR'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(55009389168330128)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Val. a Depositar'
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
 p_id=>wwv_flow_imp.id(55009934072330134)
,p_name=>'P234_POSIBLE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(55009389168330128)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Factura posible'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(55010008354330135)
,p_name=>'P234_DESC_JERARQUIA'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(55009389168330128)
,p_prompt=>'Calif. Cob.'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>90
,p_tag_attributes=>'readonly'
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(55010304254330138)
,p_name=>'P234_TELEFONO_DIST'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(55010208518330137)
,p_prompt=>'Tel. Dist.'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(55010753294330142)
,p_name=>'P234_VALOR_CARPETA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(55010635671330141)
,p_prompt=>'Valor Carpeta'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(55011155507330146)
,p_name=>'P234_DESC_SCORING'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(55010635671330141)
,p_prompt=>'Scoring'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(55983364811779669)
,p_name=>'P234_COD_EMPRESA'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(55009196508330126)
,p_item_source_plug_id=>wwv_flow_imp.id(55983001397779669)
,p_item_default=>'1'
,p_source=>'COD_EMPRESA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(55983772785779672)
,p_name=>'P234_TIP_COMPROBANTE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(55009196508330126)
,p_item_source_plug_id=>wwv_flow_imp.id(55983001397779669)
,p_item_default=>'PED'
,p_source=>'TIP_COMPROBANTE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(55984046391779673)
,p_name=>'P234_SER_COMPROBANTE'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_is_primary_key=>true
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(55009196508330126)
,p_item_source_plug_id=>wwv_flow_imp.id(55983001397779669)
,p_prompt=>'Nro. de pedido'
,p_source=>'SER_COMPROBANTE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>1
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(55984474625779674)
,p_name=>'P234_NRO_COMPROBANTE'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(55009196508330126)
,p_item_source_plug_id=>wwv_flow_imp.id(55983001397779669)
,p_prompt=>'Nro. Comprobante'
,p_source=>'NRO_COMPROBANTE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>15
,p_tag_css_classes=>'allow_only_numbers'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(55984802958779674)
,p_name=>'P234_COD_SUCURSAL'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(55009196508330126)
,p_item_source_plug_id=>wwv_flow_imp.id(55983001397779669)
,p_prompt=>'Sucursal'
,p_source=>'COD_SUCURSAL'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LOV_SUCURSALES_VTPEDIDO'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cod_sucursal||'' - ''||descripcion descripcion, cod_sucursal ',
'from sucursales ',
'where cod_empresa = :P_COD_EMPRESA'))
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(55985236278779674)
,p_name=>'P234_FEC_COMPROBANTE'
,p_source_data_type=>'DATE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(55010208518330137)
,p_item_source_plug_id=>wwv_flow_imp.id(55983001397779669)
,p_item_default=>'sysdate'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Fecha'
,p_source=>'FEC_COMPROBANTE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_tag_css_classes=>'allow_only_numbers'
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(55985654114779675)
,p_name=>'P234_COD_CLIENTE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(55009196508330126)
,p_item_source_plug_id=>wwv_flow_imp.id(55983001397779669)
,p_prompt=>'Cliente'
,p_source=>'COD_CLIENTE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LOV_CLIENTES_VTPEDIDO'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT nombre,',
'       nomb_fantasia,',
'       cod_cliente,',
'       codigo_area,',
'       num_telefono,',
'       cod_ident,',
'       numero,',
'       cod_ident||'' - ''||nombre DESCRI,',
'       c.cod_cliente codi',
'  FROM cc_clientes c, personas p, telef_personas pt, ident_personas pi',
' WHERE c.cod_empresa = ''1''',
'   AND c.cod_persona = p.cod_persona',
'   AND p.cod_persona = pt.cod_persona(+)',
'   AND p.cod_persona = pi.cod_persona(+)',
'   AND nvl(c.estado, ''X'') = ''A''',
' ORDER BY nombre'))
,p_cSize=>90
,p_cMaxlength=>15
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'Y'
,p_attribute_05=>'N'
,p_attribute_07=>'Clientes'
,p_attribute_10=>'COD_CLIENTE:P234_COD_CLIENTE_AUX'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(55986031231779675)
,p_name=>'P234_COD_VENDEDOR'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_imp.id(55009196508330126)
,p_item_source_plug_id=>wwv_flow_imp.id(55983001397779669)
,p_prompt=>'Vendedor'
,p_source=>'COD_VENDEDOR'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LOV_VENDEDORES_VTPEDIDO'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT nvl(v.descripcion, p.nombre) nombre, v.cod_vendedor, v.cod_vendedor||'' - ''||nvl(v.descripcion, p.nombre)  descri',
'  FROM fv_vendedores v, personas p',
' WHERE v.cod_empresa = NVL(:P_cod_empresa ,''1'')',
'   AND v.cod_persona = p.cod_persona',
'   AND v.estado = ''A''',
' ORDER BY 1',
''))
,p_lov_display_null=>'YES'
,p_cSize=>90
,p_cMaxlength=>10
,p_tag_attributes=>'readonly'
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
,p_attribute_07=>'Vendedores'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(55986487033779675)
,p_name=>'P234_COD_CONDICION_VENTA'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_imp.id(55009196508330126)
,p_item_source_plug_id=>wwv_flow_imp.id(55983001397779669)
,p_prompt=>'Cond. Venta'
,p_source=>'COD_CONDICION_VENTA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LOV_CONDICION_VENTA_VTPEDIDO'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT c.descripcion,',
'       c.cod_condicion_venta,',
'       c.cod_lista_precio,',
'       l.descripcion lista_precio,',
'       c.cod_condicion_venta||'' - ''||c.descripcion descri',
'  FROM cc_condiciones_ventas c, vt_listas_precios_cab l',
' WHERE c.cod_empresa = ''1''',
'   AND c.estado = ''A''',
'   AND l.cod_empresa = c.cod_empresa',
'   AND c.cod_lista_precio = l.cod_lista_precio'))
,p_lov_display_null=>'YES'
,p_cSize=>90
,p_cMaxlength=>5
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
,p_attribute_07=>unistr('Condici\00F3n de Venta')
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(55986893588779676)
,p_name=>'P234_COD_LISTA_PRECIO'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>280
,p_item_plug_id=>wwv_flow_imp.id(55009196508330126)
,p_item_source_plug_id=>wwv_flow_imp.id(55983001397779669)
,p_prompt=>'Lista Precios'
,p_source=>'COD_LISTA_PRECIO'
,p_source_type=>'REGION_SOURCE_COLUMN'
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
,p_cSize=>90
,p_cMaxlength=>5
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
,p_attribute_07=>'Lista de Precios'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(55987223219779676)
,p_name=>'P234_DESCUENTO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(56986774403360413)
,p_prompt=>'Descuento'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_cMaxlength=>10
,p_tag_css_classes=>'allow_only_numbers'
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(55987653303779676)
,p_name=>'P234_COD_MONEDA'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(55010208518330137)
,p_item_source_plug_id=>wwv_flow_imp.id(55983001397779669)
,p_item_default=>'1'
,p_prompt=>'Moneda'
,p_source=>'COD_MONEDA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LOV_MONEDAS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT cod_moneda, descripcion',
'  FROM monedas',
'ORDER BY cod_moneda'))
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
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
 p_id=>wwv_flow_imp.id(55988067808779676)
,p_name=>'P234_TIP_CAMBIO'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(55010208518330137)
,p_item_source_plug_id=>wwv_flow_imp.id(55983001397779669)
,p_item_default=>'1'
,p_prompt=>'Cambio'
,p_source=>'TIP_CAMBIO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_tag_attributes=>'readonly'
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(55988414796779677)
,p_name=>'P234_TOT_COMPROBANTE'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(55009271399330127)
,p_item_source_plug_id=>wwv_flow_imp.id(55983001397779669)
,p_source=>'TOT_COMPROBANTE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(55988847796779677)
,p_name=>'P234_TOT_GRAVADAS'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(55009271399330127)
,p_item_source_plug_id=>wwv_flow_imp.id(55983001397779669)
,p_source=>'TOT_GRAVADAS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(55989259954779677)
,p_name=>'P234_TOT_EXENTAS'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(55009271399330127)
,p_item_source_plug_id=>wwv_flow_imp.id(55983001397779669)
,p_source=>'TOT_EXENTAS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(55989681976779677)
,p_name=>'P234_TOT_IVA'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(55009271399330127)
,p_item_source_plug_id=>wwv_flow_imp.id(55983001397779669)
,p_source=>'TOT_IVA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(55990071392779677)
,p_name=>'P234_ESTADO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(56989976441360445)
,p_item_source_plug_id=>wwv_flow_imp.id(55983001397779669)
,p_item_default=>'P'
,p_source=>'ESTADO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(55990422649779678)
,p_name=>'P234_FEC_ESTADO'
,p_source_data_type=>'DATE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(56988099080360426)
,p_item_source_plug_id=>wwv_flow_imp.id(55983001397779669)
,p_prompt=>'Fecha Estado'
,p_source=>'FEC_ESTADO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(55990809664779678)
,p_name=>'P234_COD_USUARIO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(56988099080360426)
,p_item_source_plug_id=>wwv_flow_imp.id(55983001397779669)
,p_item_default=>':APP_USER'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Creado por'
,p_source=>'COD_USUARIO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>10
,p_tag_attributes=>'readonly'
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(55991216092779678)
,p_name=>'P234_FEC_ALTA'
,p_source_data_type=>'DATE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(55009271399330127)
,p_item_source_plug_id=>wwv_flow_imp.id(55983001397779669)
,p_source=>'FEC_ALTA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(55991695709779678)
,p_name=>'P234_NRO_AUTORIZACION'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(55009271399330127)
,p_item_source_plug_id=>wwv_flow_imp.id(55983001397779669)
,p_source=>'NRO_AUTORIZACION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(55992065280779678)
,p_name=>'P234_CAMBIO_MONEDA_PRECIO'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(55010208518330137)
,p_item_source_plug_id=>wwv_flow_imp.id(55983001397779669)
,p_prompt=>'Cambio Precio'
,p_source=>'CAMBIO_MONEDA_PRECIO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(55992473186779679)
,p_name=>'P234_TIP_CAMBIO_COMPRA'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(55009196508330126)
,p_item_source_plug_id=>wwv_flow_imp.id(55983001397779669)
,p_source=>'TIP_CAMBIO_COMPRA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(55992847620779679)
,p_name=>'P234_FEC_VENCIMIENTO'
,p_source_data_type=>'DATE'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(55009271399330127)
,p_item_source_plug_id=>wwv_flow_imp.id(55983001397779669)
,p_source=>'FEC_VENCIMIENTO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(55993209283779679)
,p_name=>'P234_TOT_DESCUENTO_DET'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(55009271399330127)
,p_item_source_plug_id=>wwv_flow_imp.id(55983001397779669)
,p_source=>'TOT_DESCUENTO_DET'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(55993628801779679)
,p_name=>'P234_TIP_COMPROBANTE_REF'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(55009271399330127)
,p_item_source_plug_id=>wwv_flow_imp.id(55983001397779669)
,p_source=>'TIP_COMPROBANTE_REF'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(55994019768779679)
,p_name=>'P234_TEL_CLIENTE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(55010208518330137)
,p_item_source_plug_id=>wwv_flow_imp.id(55983001397779669)
,p_prompt=>unistr('Tel\00E9fono')
,p_source=>'TEL_CLIENTE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>80
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(55994449560779680)
,p_name=>'P234_RUC'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(55010208518330137)
,p_item_source_plug_id=>wwv_flow_imp.id(55983001397779669)
,p_prompt=>'Ruc'
,p_source=>'RUC'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>35
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(55994897764779680)
,p_name=>'P234_PROCESADO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(55009271399330127)
,p_item_source_plug_id=>wwv_flow_imp.id(55983001397779669)
,p_source=>'PROCESADO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(55995249900779680)
,p_name=>'P234_NRO_COMPROBANTE_REF'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(55009271399330127)
,p_item_source_plug_id=>wwv_flow_imp.id(55983001397779669)
,p_source=>'NRO_COMPROBANTE_REF'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(55995675239779680)
,p_name=>'P234_NOM_CLIENTE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(55009196508330126)
,p_item_source_plug_id=>wwv_flow_imp.id(55983001397779669)
,p_prompt=>'Nombre'
,p_source=>'NOM_CLIENTE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>90
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(55996063710779681)
,p_name=>'P234_NOMBRE_CAB'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(55009271399330127)
,p_item_source_plug_id=>wwv_flow_imp.id(55983001397779669)
,p_source=>'NOMBRE_CAB'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(55996411352779681)
,p_name=>'P234_GRU_COMPROBANTE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(55009271399330127)
,p_item_source_plug_id=>wwv_flow_imp.id(55983001397779669)
,p_source=>'GRU_COMPROBANTE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(55996874098779681)
,p_name=>'P234_FEC_NACIMIENTO'
,p_source_data_type=>'DATE'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(55009271399330127)
,p_item_source_plug_id=>wwv_flow_imp.id(55983001397779669)
,p_source=>'FEC_NACIMIENTO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(55997292885779681)
,p_name=>'P234_DIR_CLIENTE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(55009196508330126)
,p_item_source_plug_id=>wwv_flow_imp.id(55983001397779669)
,p_prompt=>unistr('Direcci\00F3n Cliente')
,p_source=>'DIR_CLIENTE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>90
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(55997656230779681)
,p_name=>'P234_DIAS'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(55010208518330137)
,p_item_source_plug_id=>wwv_flow_imp.id(55983001397779669)
,p_prompt=>unistr('Plazo(D\00EDas)')
,p_source=>'DIAS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC2:15;15,30;30,45;45,60;60,90;90,120;120,360;360'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(55998047537779682)
,p_name=>'P234_DESCUENTO_DET'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(55009271399330127)
,p_item_source_plug_id=>wwv_flow_imp.id(55983001397779669)
,p_source=>'DESCUENTO_DET'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(55998471754779682)
,p_name=>'P234_COMENTARIO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_imp.id(55010208518330137)
,p_item_source_plug_id=>wwv_flow_imp.id(55983001397779669)
,p_prompt=>'Instr. Entrega'
,p_source=>'COMENTARIO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>150
,p_cHeight=>4
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(55998881928779682)
,p_name=>'P234_COLUMNA'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_imp.id(55009271399330127)
,p_item_source_plug_id=>wwv_flow_imp.id(55983001397779669)
,p_source=>'COLUMNA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(55999231236779682)
,p_name=>'P234_COD_SECTOR'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_imp.id(55009271399330127)
,p_item_source_plug_id=>wwv_flow_imp.id(55983001397779669)
,p_source=>'COD_SECTOR'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(55999676887779683)
,p_name=>'P234_CAMBIO_DOLAR'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_imp.id(55009271399330127)
,p_item_source_plug_id=>wwv_flow_imp.id(55983001397779669)
,p_source=>'CAMBIO_DOLAR'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(56000065941779683)
,p_name=>'P234_COD_DIRECCION'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(55009196508330126)
,p_item_source_plug_id=>wwv_flow_imp.id(55983001397779669)
,p_prompt=>unistr('Direcci\00F3n')
,p_source=>'COD_DIRECCION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>5
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(56000483972779683)
,p_name=>'P234_TIP_COMPROBANTE_PET'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_imp.id(55009271399330127)
,p_item_source_plug_id=>wwv_flow_imp.id(55983001397779669)
,p_source=>'TIP_COMPROBANTE_PET'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(56000858487779683)
,p_name=>'P234_SER_COMPROBANTE_PET'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_imp.id(55009271399330127)
,p_item_source_plug_id=>wwv_flow_imp.id(55983001397779669)
,p_source=>'SER_COMPROBANTE_PET'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(56001294713779684)
,p_name=>'P234_NRO_COMPROBANTE_PET'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_imp.id(55009271399330127)
,p_item_source_plug_id=>wwv_flow_imp.id(55983001397779669)
,p_source=>'NRO_COMPROBANTE_PET'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(56001674992779684)
,p_name=>'P234_NRO_INSCRIPCION_AD'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(55010635671330141)
,p_item_source_plug_id=>wwv_flow_imp.id(55983001397779669)
,p_prompt=>unistr('Nro Inscripci\00F3n')
,p_source=>'NRO_INSCRIPCION_AD'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>12
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(56002087256779684)
,p_name=>'P234_IND_EXENTO_AD'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(55010635671330141)
,p_item_source_plug_id=>wwv_flow_imp.id(55983001397779669)
,p_prompt=>'Exento'
,p_source=>'IND_EXENTO_AD'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(56002496129779684)
,p_name=>'P234_COD_USUARIO_AUTORIZACION'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>270
,p_item_plug_id=>wwv_flow_imp.id(55009271399330127)
,p_item_source_plug_id=>wwv_flow_imp.id(55983001397779669)
,p_source=>'COD_USUARIO_AUTORIZACION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(56002860425779684)
,p_name=>'P234_FECHA_AUTORIZACION'
,p_source_data_type=>'DATE'
,p_item_sequence=>280
,p_item_plug_id=>wwv_flow_imp.id(55009271399330127)
,p_item_source_plug_id=>wwv_flow_imp.id(55983001397779669)
,p_source=>'FECHA_AUTORIZACION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(56003275564779685)
,p_name=>'P234_AUTORIZADO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(56987206457360418)
,p_item_source_plug_id=>wwv_flow_imp.id(55983001397779669)
,p_prompt=>'Autorizado'
,p_source=>'AUTORIZADO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>unistr('STATIC2:Pendiente Autorizaci\00F3n;P,Autorizado;S,Rechazado;N')
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(56003646012779685)
,p_name=>'P234_RECARGO'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(56986774403360413)
,p_item_source_plug_id=>wwv_flow_imp.id(55983001397779669)
,p_item_default=>'0'
,p_source=>'RECARGO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(56004070552779685)
,p_name=>'P234_CONTROL_FIN'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(56988612805360432)
,p_item_source_plug_id=>wwv_flow_imp.id(55983001397779669)
,p_source=>'CONTROL_FIN'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(56004496774779685)
,p_name=>'P234_IND_IMPRESO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>290
,p_item_plug_id=>wwv_flow_imp.id(55009271399330127)
,p_item_source_plug_id=>wwv_flow_imp.id(55983001397779669)
,p_item_default=>'N'
,p_source=>'IND_IMPRESO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(56004809652779686)
,p_name=>'P234_COD_MOTIVO_ANULACION'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(56988099080360426)
,p_item_source_plug_id=>wwv_flow_imp.id(55983001397779669)
,p_prompt=>unistr('Motivo Anulaci\00F3n')
,p_source=>'COD_MOTIVO_ANULACION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>10
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(56005281450779686)
,p_name=>'P234_COD_USUARIO_ANU'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(56988099080360426)
,p_item_source_plug_id=>wwv_flow_imp.id(55983001397779669)
,p_prompt=>'Anul. por'
,p_source=>'COD_USUARIO_ANU'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>30
,p_tag_attributes=>'readonly'
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(56005636531779686)
,p_name=>'P234_COD_MOTIVO_ANU'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>300
,p_item_plug_id=>wwv_flow_imp.id(55009271399330127)
,p_item_source_plug_id=>wwv_flow_imp.id(55983001397779669)
,p_source=>'COD_MOTIVO_ANU'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(56006086965779686)
,p_name=>'P234_OBSERVACION'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>310
,p_item_plug_id=>wwv_flow_imp.id(55009271399330127)
,p_item_source_plug_id=>wwv_flow_imp.id(55983001397779669)
,p_source=>'OBSERVACION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(56006414364779687)
,p_name=>'P234_PRESUPUESTO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>320
,p_item_plug_id=>wwv_flow_imp.id(55009271399330127)
,p_item_source_plug_id=>wwv_flow_imp.id(55983001397779669)
,p_source=>'PRESUPUESTO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(56006855219779687)
,p_name=>'P234_FECHA_APROBADO'
,p_source_data_type=>'DATE'
,p_item_sequence=>330
,p_item_plug_id=>wwv_flow_imp.id(55009271399330127)
,p_item_source_plug_id=>wwv_flow_imp.id(55983001397779669)
,p_source=>'FECHA_APROBADO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(56007261532779687)
,p_name=>'P234_NRO_LLAMADA'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>340
,p_item_plug_id=>wwv_flow_imp.id(55009271399330127)
,p_item_source_plug_id=>wwv_flow_imp.id(55983001397779669)
,p_source=>'NRO_LLAMADA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(56007657705779687)
,p_name=>'P234_FEC_SEGUIMIENTO'
,p_source_data_type=>'DATE'
,p_item_sequence=>350
,p_item_plug_id=>wwv_flow_imp.id(55009271399330127)
,p_item_source_plug_id=>wwv_flow_imp.id(55983001397779669)
,p_source=>'FEC_SEGUIMIENTO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(56008069084779687)
,p_name=>'P234_PESO_TOTAL'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>360
,p_item_plug_id=>wwv_flow_imp.id(55009271399330127)
,p_item_source_plug_id=>wwv_flow_imp.id(55983001397779669)
,p_source=>'PESO_TOTAL'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(56008405351779688)
,p_name=>'P234_VOLUMEN_TOTAL'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>370
,p_item_plug_id=>wwv_flow_imp.id(55009271399330127)
,p_item_source_plug_id=>wwv_flow_imp.id(55983001397779669)
,p_source=>'VOLUMEN_TOTAL'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(56008890795779688)
,p_name=>'P234_FLETE_TOTAL'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(56989976441360445)
,p_item_source_plug_id=>wwv_flow_imp.id(55983001397779669)
,p_prompt=>'Flete'
,p_source=>'FLETE_TOTAL'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(56009204765779688)
,p_name=>'P234_COD_FLETE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>330
,p_item_plug_id=>wwv_flow_imp.id(55009196508330126)
,p_item_source_plug_id=>wwv_flow_imp.id(55983001397779669)
,p_prompt=>'Flete'
,p_source=>'COD_FLETE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LOV_FLETES_VTPED'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ALL vt_fletes.descripcion, vt_fletes.cod_flete',
'  FROM vt_fletes',
' WHERE cod_empresa = ''1''',
'   AND activo = ''S''',
'   AND tipo_entrega = :P234_TIPO_ENTREGA',
' ORDER BY 1',
''))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P234_TIPO_ENTREGA'
,p_ajax_items_to_submit=>'P234_TIPO_ENTREGA'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>32
,p_cMaxlength=>5
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
,p_attribute_07=>'Fletes'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(56009612631779688)
,p_name=>'P234_SER_COMPROBANTE_REF'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>380
,p_item_plug_id=>wwv_flow_imp.id(55009271399330127)
,p_item_source_plug_id=>wwv_flow_imp.id(55983001397779669)
,p_source=>'SER_COMPROBANTE_REF'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(56010077969779688)
,p_name=>'P234_ENTREGA_INICIAL'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>390
,p_item_plug_id=>wwv_flow_imp.id(55009271399330127)
,p_item_source_plug_id=>wwv_flow_imp.id(55983001397779669)
,p_source=>'ENTREGA_INICIAL'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(56010481904779689)
,p_name=>'P234_PORC_ENT_INICIAL'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>400
,p_item_plug_id=>wwv_flow_imp.id(55009271399330127)
,p_item_source_plug_id=>wwv_flow_imp.id(55983001397779669)
,p_source=>'PORC_ENT_INICIAL'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(56010837361779689)
,p_name=>'P234_FEC_PAGO'
,p_source_data_type=>'DATE'
,p_item_sequence=>410
,p_item_plug_id=>wwv_flow_imp.id(55009271399330127)
,p_item_source_plug_id=>wwv_flow_imp.id(55983001397779669)
,p_source=>'FEC_PAGO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(56011243959779689)
,p_name=>'P234_CONSULTA_INFORMCONF'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>420
,p_item_plug_id=>wwv_flow_imp.id(55009271399330127)
,p_item_source_plug_id=>wwv_flow_imp.id(55983001397779669)
,p_source=>'CONSULTA_INFORMCONF'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(56011654616779689)
,p_name=>'P234_DESC_ERROR'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>430
,p_item_plug_id=>wwv_flow_imp.id(55009271399330127)
,p_item_source_plug_id=>wwv_flow_imp.id(55983001397779669)
,p_source=>'DESC_ERROR'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(56012065160779689)
,p_name=>'P234_HORA_ALTA'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(56988099080360426)
,p_item_source_plug_id=>wwv_flow_imp.id(55983001397779669)
,p_prompt=>'Hora Alta'
,p_source=>'HORA_ALTA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>20
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(56012443011779690)
,p_name=>'P234_FEC_APRO_RECHA'
,p_source_data_type=>'DATE'
,p_item_sequence=>440
,p_item_plug_id=>wwv_flow_imp.id(55009271399330127)
,p_item_source_plug_id=>wwv_flow_imp.id(55983001397779669)
,p_source=>'FEC_APRO_RECHA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(56012831803779690)
,p_name=>'P234_COD_USU_APRO_RECHA'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>450
,p_item_plug_id=>wwv_flow_imp.id(55009271399330127)
,p_item_source_plug_id=>wwv_flow_imp.id(55983001397779669)
,p_source=>'COD_USU_APRO_RECHA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(56013247565779690)
,p_name=>'P234_LUGAR_ENTREGA'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(55009196508330126)
,p_item_source_plug_id=>wwv_flow_imp.id(55983001397779669)
,p_prompt=>'Lugar Entrega'
,p_source=>'LUGAR_ENTREGA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_cMaxlength=>200
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
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
 p_id=>wwv_flow_imp.id(56013621162779690)
,p_name=>'P234_NRO_ORDEN_COMPRA'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_imp.id(55009196508330126)
,p_item_source_plug_id=>wwv_flow_imp.id(55983001397779669)
,p_prompt=>'Orden Compra'
,p_source=>'NRO_ORDEN_COMPRA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_cMaxlength=>200
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(56014010856779691)
,p_name=>'P234_COD_SUCURSAL_DIST'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(55009196508330126)
,p_item_source_plug_id=>wwv_flow_imp.id(55983001397779669)
,p_prompt=>'Suc. Dist.'
,p_source=>'COD_SUCURSAL_DIST'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LOV_SUCURSAL_DIST_VTPEDIDO'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select p.cod_SUCURSAL||'' - ''||p.nombre descri, ',
'       p.direccion, ',
'       p.telefono, ',
'       p.cod_SUCURSAL,',
'       p.nombre',
'from BS_SUCURSAL_CLIENTE p',
'where p.cod_empresa= ''1''',
'and p.cod_cliente=:P234_COD_CLIENTE'))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P234_COD_CLIENTE'
,p_ajax_items_to_submit=>'P234_COD_CLIENTE'
,p_ajax_optimize_refresh=>'N'
,p_cSize=>90
,p_cMaxlength=>10
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
,p_attribute_07=>'Sucursal del Distribuidor'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(56014408445779691)
,p_name=>'P234_ESTADO_REPARTO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>460
,p_item_plug_id=>wwv_flow_imp.id(55009271399330127)
,p_item_source_plug_id=>wwv_flow_imp.id(55983001397779669)
,p_source=>'ESTADO_REPARTO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(56014854307779691)
,p_name=>'P234_DEPOSITO_FACT'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>470
,p_item_plug_id=>wwv_flow_imp.id(55009271399330127)
,p_item_source_plug_id=>wwv_flow_imp.id(55983001397779669)
,p_source=>'DEPOSITO_FACT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(56015212984779691)
,p_name=>'P234_TIPO_ENTREGA'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>290
,p_item_plug_id=>wwv_flow_imp.id(55009196508330126)
,p_item_source_plug_id=>wwv_flow_imp.id(55983001397779669)
,p_item_default=>'N'
,p_prompt=>'Tipo Entrega'
,p_source=>'TIPO_ENTREGA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC2:Cliente Retira;CR,Capital;CA,Interior;IN,Arreglo Administrativo;AD,Proveedor;PO,Ninguno;N'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(56015603565779691)
,p_name=>'P234_CONTROL_FIN_2'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(56988612805360432)
,p_item_source_plug_id=>wwv_flow_imp.id(55983001397779669)
,p_source=>'CONTROL_FIN_2'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(56016087217779692)
,p_name=>'P234_CONTROL_FIN_3'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(56988612805360432)
,p_item_source_plug_id=>wwv_flow_imp.id(55983001397779669)
,p_source=>'CONTROL_FIN_3'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(56016422435779692)
,p_name=>'P234_RECHAZAR'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>480
,p_item_plug_id=>wwv_flow_imp.id(55009271399330127)
,p_item_source_plug_id=>wwv_flow_imp.id(55983001397779669)
,p_source=>'RECHAZAR'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(56016872576779692)
,p_name=>'P234_PR_FMA'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>490
,p_item_plug_id=>wwv_flow_imp.id(55009271399330127)
,p_item_source_plug_id=>wwv_flow_imp.id(55983001397779669)
,p_source=>'PR_FMA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(56017234113779692)
,p_name=>'P234_ORDEN_IMPRESA'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>500
,p_item_plug_id=>wwv_flow_imp.id(55009271399330127)
,p_item_source_plug_id=>wwv_flow_imp.id(55983001397779669)
,p_source=>'ORDEN_IMPRESA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(56017625607779692)
,p_name=>'P234_ORDEN_AUTORIZADA'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>510
,p_item_plug_id=>wwv_flow_imp.id(55009271399330127)
,p_item_source_plug_id=>wwv_flow_imp.id(55983001397779669)
,p_source=>'ORDEN_AUTORIZADA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(56018026723779693)
,p_name=>'P234_COD_DEPARTAMENTO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>520
,p_item_plug_id=>wwv_flow_imp.id(55009271399330127)
,p_item_source_plug_id=>wwv_flow_imp.id(55983001397779669)
,p_source=>'COD_DEPARTAMENTO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(56018420611779693)
,p_name=>'P234_DERIVADO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(56987206457360418)
,p_item_source_plug_id=>wwv_flow_imp.id(55983001397779669)
,p_prompt=>'Derivado'
,p_source=>'DERIVADO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC2:FACTURACION-CONTROL;F,COBRANZAS;CO,CREDITOS;CR,DIRECTORIO;DI,RRHH;RH,CANJE;CA,MARKETING;MA,ANULACION;AN,AUTORIZADO A FACTURA;AF,VENTAS;VE,AUTORIZACION CREDITOS;AC,CANJE PUBLICIDAD;CP,ARREGLOS ADMINISTRATIVOS;AA,SUPERVICION DE VALORES;SV,TESOR'
||'ERIA;TE,DISTRIBUCION;RP,GENTE CPH;GC,PENDIENTE DE RIESGOS;PR'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(56018811112779693)
,p_name=>'P234_FEC_RECHAZADO'
,p_source_data_type=>'DATE'
,p_item_sequence=>530
,p_item_plug_id=>wwv_flow_imp.id(55009271399330127)
,p_item_source_plug_id=>wwv_flow_imp.id(55983001397779669)
,p_source=>'FEC_RECHAZADO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(56019204912779693)
,p_name=>'P234_RECHAZADO_POR'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(55009271399330127)
,p_item_source_plug_id=>wwv_flow_imp.id(55983001397779669)
,p_source=>'RECHAZADO_POR'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(56019663297779694)
,p_name=>'P234_USR_SA_FMA'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>540
,p_item_plug_id=>wwv_flow_imp.id(55009271399330127)
,p_item_source_plug_id=>wwv_flow_imp.id(55983001397779669)
,p_source=>'USR_SA_FMA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(56020080072779694)
,p_name=>'P234_FCH_SA_FMA'
,p_source_data_type=>'DATE'
,p_item_sequence=>550
,p_item_plug_id=>wwv_flow_imp.id(55009271399330127)
,p_item_source_plug_id=>wwv_flow_imp.id(55983001397779669)
,p_source=>'FCH_SA_FMA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(56020486288779694)
,p_name=>'P234_SA_FMA'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>560
,p_item_plug_id=>wwv_flow_imp.id(55009271399330127)
,p_item_source_plug_id=>wwv_flow_imp.id(55983001397779669)
,p_source=>'SA_FMA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(56020819186779694)
,p_name=>'P234_FEC_AUTORIZACION'
,p_source_data_type=>'DATE'
,p_item_sequence=>570
,p_item_plug_id=>wwv_flow_imp.id(55009271399330127)
,p_item_source_plug_id=>wwv_flow_imp.id(55983001397779669)
,p_source=>'FEC_AUTORIZACION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(56021270963779694)
,p_name=>'P234_USR_PR_FMA'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>580
,p_item_plug_id=>wwv_flow_imp.id(55009271399330127)
,p_item_source_plug_id=>wwv_flow_imp.id(55983001397779669)
,p_source=>'USR_PR_FMA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(56021661994779695)
,p_name=>'P234_FCH_PR_FMA'
,p_source_data_type=>'DATE'
,p_item_sequence=>590
,p_item_plug_id=>wwv_flow_imp.id(55009271399330127)
,p_item_source_plug_id=>wwv_flow_imp.id(55983001397779669)
,p_source=>'FCH_PR_FMA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(56022057454779695)
,p_name=>'P234_AUTORIZADO_POR'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>600
,p_item_plug_id=>wwv_flow_imp.id(55009271399330127)
,p_item_source_plug_id=>wwv_flow_imp.id(55983001397779669)
,p_source=>'AUTORIZADO_POR'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(56022403433779695)
,p_name=>'P234_IND_ENVIAR'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(55010635671330141)
,p_item_source_plug_id=>wwv_flow_imp.id(55983001397779669)
,p_prompt=>'Enviar'
,p_source=>'IND_ENVIAR'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(56022813101779695)
,p_name=>'P234_FEC_ENVIO'
,p_source_data_type=>'DATE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(55010635671330141)
,p_item_source_plug_id=>wwv_flow_imp.id(55983001397779669)
,p_prompt=>unistr('Fec. Env\00EDo ')
,p_source=>'FEC_ENVIO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>32
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(56023220768779695)
,p_name=>'P234_COD_USUARIO_ENVIO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>610
,p_item_plug_id=>wwv_flow_imp.id(55009271399330127)
,p_item_source_plug_id=>wwv_flow_imp.id(55983001397779669)
,p_source=>'COD_USUARIO_ENVIO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(56023678932779696)
,p_name=>'P234_MOTIVO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_imp.id(55009196508330126)
,p_item_source_plug_id=>wwv_flow_imp.id(55983001397779669)
,p_prompt=>'Motivo'
,p_source=>'MOTIVO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>unistr('STATIC2:Demostraci\00F3n;Demostraci\00F3n,Pago a Cta. de Prod. en Import.;Pago a Cta. de Prod. en Import.,Reparaciones;Reparaciones')
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(56024046877779696)
,p_name=>'P234_IND_OFERTAS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_imp.id(55010208518330137)
,p_item_source_plug_id=>wwv_flow_imp.id(55983001397779669)
,p_prompt=>'Ofertas'
,p_source=>'IND_OFERTAS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(56024495747779697)
,p_name=>'P234_COD_SUC_OFER'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_imp.id(55010208518330137)
,p_item_source_plug_id=>wwv_flow_imp.id(55983001397779669)
,p_prompt=>'Suc Ofer.'
,p_source=>'COD_SUC_OFER'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>20
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(56024865554779697)
,p_name=>'P234_IND_CANAL_VERDE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>620
,p_item_plug_id=>wwv_flow_imp.id(55009271399330127)
,p_item_source_plug_id=>wwv_flow_imp.id(55983001397779669)
,p_source=>'IND_CANAL_VERDE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(56025293352779697)
,p_name=>'P234_OBSERVACION_CANAL_VERDE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>630
,p_item_plug_id=>wwv_flow_imp.id(55009271399330127)
,p_item_source_plug_id=>wwv_flow_imp.id(55983001397779669)
,p_source=>'OBSERVACION_CANAL_VERDE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(56025610937779697)
,p_name=>'P234_RESULTADO_CANAL_VERDE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>640
,p_item_plug_id=>wwv_flow_imp.id(55009271399330127)
,p_item_source_plug_id=>wwv_flow_imp.id(55983001397779669)
,p_source=>'RESULTADO_CANAL_VERDE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(56026047241779697)
,p_name=>'P234_FECHA_ENTREGA'
,p_source_data_type=>'DATE'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(55010208518330137)
,p_item_source_plug_id=>wwv_flow_imp.id(55983001397779669)
,p_prompt=>'Entrega'
,p_source=>'FECHA_ENTREGA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_tag_css_classes=>'allow_only_numbers '
,p_tag_attributes=>'onfocusout="this.value= isValidDate(this.value);"  onkeyup = "setDateFormat(this);" '
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(56026475564779698)
,p_name=>'P234_IND_GUARDA'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(55010635671330141)
,p_item_source_plug_id=>wwv_flow_imp.id(55983001397779669)
,p_prompt=>'En Guardia'
,p_source=>'IND_GUARDA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(56026856503779698)
,p_name=>'P234_OBSERVACION_ANULA'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>650
,p_item_plug_id=>wwv_flow_imp.id(55009271399330127)
,p_item_source_plug_id=>wwv_flow_imp.id(55983001397779669)
,p_source=>'OBSERVACION_ANULA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(56027224546779698)
,p_name=>'P234_IND_TRANSPORTADORA'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(55010635671330141)
,p_item_source_plug_id=>wwv_flow_imp.id(55983001397779669)
,p_prompt=>'Venta Ecommerce'
,p_source=>'IND_TRANSPORTADORA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(56027632137779698)
,p_name=>'P234_NRO_OBRA'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_imp.id(55010208518330137)
,p_item_source_plug_id=>wwv_flow_imp.id(55983001397779669)
,p_prompt=>unistr('N\00B0 Obra')
,p_source=>'NRO_OBRA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC2:Ninguno;0'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(56028014515779699)
,p_name=>'P234_SECCION_PRESTAMO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(55010208518330137)
,p_item_source_plug_id=>wwv_flow_imp.id(55983001397779669)
,p_prompt=>unistr('Secci\00F3n')
,p_source=>'SECCION_PRESTAMO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC2:VENTAS;VENTAS,MARKETING;MARKETING,SERVICIO TECNICO;SERVICIO TECNICO,REPUESTOS;REPUESTOS,GASTRONOMIA;GASTRONOMIA,CORPORATIVO;CORPORATIVO'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(56028440960779699)
,p_name=>'P234_ENTREGA_REMISION'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(55010635671330141)
,p_item_source_plug_id=>wwv_flow_imp.id(55983001397779669)
,p_prompt=>unistr('Entrega CON Remisi\00F3n')
,p_source=>'ENTREGA_REMISION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(56028863703779699)
,p_name=>'P234_COMENTARIO_ANULACION'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>660
,p_item_plug_id=>wwv_flow_imp.id(55009271399330127)
,p_item_source_plug_id=>wwv_flow_imp.id(55983001397779669)
,p_source=>'COMENTARIO_ANULACION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(56029279087779699)
,p_name=>'P234_IND_CLIENTE_FINAL'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(55010635671330141)
,p_item_source_plug_id=>wwv_flow_imp.id(55983001397779669)
,p_prompt=>'Cliente Final'
,p_source=>'IND_CLIENTE_FINAL'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(56029698925779699)
,p_name=>'P234_NRO_PEDIDO_ANTERIOR'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(55010208518330137)
,p_item_source_plug_id=>wwv_flow_imp.id(55983001397779669)
,p_prompt=>'Nro. Pedido Ant.'
,p_source=>'NRO_PEDIDO_ANTERIOR'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(56030019471779700)
,p_name=>'P234_FECHA_ENTREGA_CLIENTE_RET'
,p_source_data_type=>'DATE'
,p_item_sequence=>670
,p_item_plug_id=>wwv_flow_imp.id(55009271399330127)
,p_item_source_plug_id=>wwv_flow_imp.id(55983001397779669)
,p_source=>'FECHA_ENTREGA_CLIENTE_RETIRA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(56030402311779700)
,p_name=>'P234_HORA_ENTREGA_CLIENTE_RETI'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>680
,p_item_plug_id=>wwv_flow_imp.id(55009271399330127)
,p_item_source_plug_id=>wwv_flow_imp.id(55983001397779669)
,p_source=>'HORA_ENTREGA_CLIENTE_RETIRA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(56030843032779700)
,p_name=>'P234_SER_PEDIDO_ANTERIOR'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_imp.id(55010208518330137)
,p_item_source_plug_id=>wwv_flow_imp.id(55983001397779669)
,p_prompt=>'Ser Pedido Ant.'
,p_source=>'SER_PEDIDO_ANTERIOR'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>10
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(56031248236779700)
,p_name=>'P234_OBSERVACION_INTERNA'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_imp.id(55010208518330137)
,p_item_source_plug_id=>wwv_flow_imp.id(55983001397779669)
,p_prompt=>'Obs. Interna'
,p_source=>'OBSERVACION_INTERNA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>600
,p_cHeight=>4
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(56031662971779700)
,p_name=>'P234_NRO_PEDIDO_QM'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>690
,p_item_plug_id=>wwv_flow_imp.id(55009271399330127)
,p_item_source_plug_id=>wwv_flow_imp.id(55983001397779669)
,p_source=>'NRO_PEDIDO_QM'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(56032082269779701)
,p_name=>'P234_COD_DEPARTAMENTO_ENTREGA'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>700
,p_item_plug_id=>wwv_flow_imp.id(55009271399330127)
,p_item_source_plug_id=>wwv_flow_imp.id(55983001397779669)
,p_source=>'COD_DEPARTAMENTO_ENTREGA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(56032446419779701)
,p_name=>'P234_COD_CIUDAD_ENTREGA'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>710
,p_item_plug_id=>wwv_flow_imp.id(55009271399330127)
,p_item_source_plug_id=>wwv_flow_imp.id(55983001397779669)
,p_source=>'COD_CIUDAD_ENTREGA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(56032849307779701)
,p_name=>'P234_LATITUD_ENTREGA'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>720
,p_item_plug_id=>wwv_flow_imp.id(55009271399330127)
,p_item_source_plug_id=>wwv_flow_imp.id(55983001397779669)
,p_source=>'LATITUD_ENTREGA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(56033206015779701)
,p_name=>'P234_LONGITUD_ENTREGA'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>730
,p_item_plug_id=>wwv_flow_imp.id(55009271399330127)
,p_item_source_plug_id=>wwv_flow_imp.id(55983001397779669)
,p_source=>'LONGITUD_ENTREGA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(56033679766779702)
,p_name=>'P234_IND_CONFIRMAR_FACTURA'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(55010635671330141)
,p_item_source_plug_id=>wwv_flow_imp.id(55983001397779669)
,p_prompt=>unistr('A Confirmar para Env\00EDo')
,p_source=>'IND_CONFIRMAR_FACTURA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(56034093228779702)
,p_name=>'P234_IND_TIPO_PEDIDO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(55009196508330126)
,p_item_source_plug_id=>wwv_flow_imp.id(55983001397779669)
,p_prompt=>'Tipo'
,p_source=>'IND_TIPO_PEDIDO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC2:PEDIDO;PE,PRE-PEDIDO;PP,REPUESTOS;RE'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(56034448597779702)
,p_name=>'P234_FEC_CONFIRMA_PEDIDO'
,p_source_data_type=>'DATE'
,p_item_sequence=>740
,p_item_plug_id=>wwv_flow_imp.id(55009271399330127)
,p_item_source_plug_id=>wwv_flow_imp.id(55983001397779669)
,p_source=>'FEC_CONFIRMA_PEDIDO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(56034812628779702)
,p_name=>'P234_FECHA_TOPE_FACTURACION'
,p_source_data_type=>'DATE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(55010208518330137)
,p_item_source_plug_id=>wwv_flow_imp.id(55983001397779669)
,p_prompt=>'Fecha Fact.'
,p_source=>'FECHA_TOPE_FACTURACION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_tag_css_classes=>'allow_only_numbers'
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(56986111239360407)
,p_name=>'P234_DESC_ESTADO'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(56987206457360418)
,p_prompt=>'Estado'
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
 p_id=>wwv_flow_imp.id(56986237717360408)
,p_name=>'P234_F_ESTADO_DISTRIBUCION'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(56987206457360418)
,p_prompt=>'Est. Distr.'
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
 p_id=>wwv_flow_imp.id(56986371057360409)
,p_name=>'P234_RESULTADO_ENTREGA'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(56987206457360418)
,p_prompt=>'Res. Entr.'
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
 p_id=>wwv_flow_imp.id(56986479141360410)
,p_name=>'P234_NRO_FAC'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(56987206457360418)
,p_prompt=>'Nro. Fact.'
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
 p_id=>wwv_flow_imp.id(56986536900360411)
,p_name=>'P234_FECHA_FACT'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(56987206457360418)
,p_prompt=>'Fecha Fact.'
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
 p_id=>wwv_flow_imp.id(56986864496360414)
,p_name=>'P234_SER_PEDIDO_PROMO_ANT'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(56987491987360420)
,p_prompt=>'Promo Vinculada'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(56986998272360415)
,p_name=>'P234_NRO_PEDIDO_PROMO_ANT'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(56987491987360420)
,p_prompt=>'Nro. Pedido Promo'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
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
 p_id=>wwv_flow_imp.id(56987028676360416)
,p_name=>'P234_NRO_PEDIDO_ORDEN_PROMO_ANT'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(56987491987360420)
,p_prompt=>'Nro. Pedido Orden'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(56987146743360417)
,p_name=>'P234_COD_ARTICULO_PROMO_ANT'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(56987491987360420)
,p_prompt=>unistr('Art\00EDculo Promo')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(56987628099360422)
,p_name=>'P234_ES_PROMO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(56987587944360421)
,p_prompt=>'Nro. promo'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(56987766339360423)
,p_name=>'P234_NRO_PROMO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(56987587944360421)
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
 p_id=>wwv_flow_imp.id(56987830507360424)
,p_name=>'P234_ARTICULO_PAR'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(56987587944360421)
,p_prompt=>'Art. Par.'
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
 p_id=>wwv_flow_imp.id(56987940398360425)
,p_name=>'P234_CANTIDAD_FACTURADA'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(56987587944360421)
,p_prompt=>unistr('Cantidad Facturada Art\00EDculo')
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
 p_id=>wwv_flow_imp.id(56988830165360434)
,p_name=>'P234_NRO_IMPRESION'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(56988099080360426)
,p_prompt=>unistr('N\00B0 Impr.')
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
 p_id=>wwv_flow_imp.id(56989238111360438)
,p_name=>'P234_FECHA_ENTREGA_DET'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(56986774403360413)
,p_prompt=>'Fecha Entrega'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_css_classes=>'allow_only_numbers'
,p_tag_attributes=>'onfocusout="this.value= isValidDate(this.value);" onkeyup = "setDateFormat(this);"'
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(56989483263360440)
,p_name=>'P234_RECARGO_PORC'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(56986774403360413)
,p_prompt=>'Porc. recargo'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>10
,p_tag_css_classes=>'allow_only_numbers'
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(56989556422360441)
,p_name=>'P234_DESCUENTO_TOTAL'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(56986774403360413)
,p_prompt=>'Descuento'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_css_classes=>'allow_only_numbers'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(56989626872360442)
,p_name=>'P234_SUBTOTAL'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(56986774403360413)
,p_prompt=>'SubTotal'
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
 p_id=>wwv_flow_imp.id(56989725050360443)
,p_name=>'P234_TOTAL_IVA'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(56986774403360413)
,p_prompt=>'IVA'
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
 p_id=>wwv_flow_imp.id(56989806266360444)
,p_name=>'P234_TOTAL'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(56986774403360413)
,p_prompt=>'Total'
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
 p_id=>wwv_flow_imp.id(56990045980360446)
,p_name=>'P234_TOTAL_PESO'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(56989976441360445)
,p_item_source_plug_id=>wwv_flow_imp.id(55983001397779669)
,p_prompt=>'Peso'
,p_source=>'PESO_TOTAL'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(56990167551360447)
,p_name=>'P234_STOCK_RESERV'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(56989976441360445)
,p_prompt=>'Reserva'
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
 p_id=>wwv_flow_imp.id(56990256581360448)
,p_name=>'P234_STOCK_ACTUAL'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(56989976441360445)
,p_prompt=>'Stock'
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
 p_id=>wwv_flow_imp.id(56990380975360449)
,p_name=>'P234_TOTAL_CANTIDAD'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(56989976441360445)
,p_item_source_plug_id=>wwv_flow_imp.id(55983001397779669)
,p_prompt=>'Volumen'
,p_source=>'VOLUMEN_TOTAL'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(56990430404360450)
,p_name=>'P234_RECARGO_TOTAL'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(56989976441360445)
,p_prompt=>'Recargo'
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
 p_id=>wwv_flow_imp.id(58326473874331301)
,p_name=>'P234_NRO_JERARQUIA'
,p_item_sequence=>430
,p_item_plug_id=>wwv_flow_imp.id(55009196508330126)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(58326618707331303)
,p_name=>'P234_PLAZO'
,p_item_sequence=>440
,p_item_plug_id=>wwv_flow_imp.id(55009196508330126)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(58326751159331304)
,p_name=>'P234_TIP_DOCUMENTO'
,p_item_sequence=>450
,p_item_plug_id=>wwv_flow_imp.id(55009196508330126)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(58326811401331305)
,p_name=>'P234_NIVEL'
,p_item_sequence=>460
,p_item_plug_id=>wwv_flow_imp.id(55009196508330126)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(58326965710331306)
,p_name=>'P234_ESTADO_CLIENTE'
,p_item_sequence=>470
,p_item_plug_id=>wwv_flow_imp.id(55009196508330126)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(58327099987331307)
,p_name=>'P234_DIAS_VENCIM_PEDIDO'
,p_item_sequence=>480
,p_item_plug_id=>wwv_flow_imp.id(55009196508330126)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(58327339623331310)
,p_name=>'P234_NOMBRE'
,p_item_sequence=>490
,p_item_plug_id=>wwv_flow_imp.id(55009196508330126)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(58327962577331316)
,p_name=>'P234_NOM_VENDEDOR'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_imp.id(55009196508330126)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(58328050070331317)
,p_name=>'P234_OCULTAR'
,p_item_sequence=>500
,p_item_plug_id=>wwv_flow_imp.id(55009196508330126)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(58328320633331320)
,p_name=>'P234_NOM_SUC_OFE'
,p_item_sequence=>510
,p_item_plug_id=>wwv_flow_imp.id(55009196508330126)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(58329606841331333)
,p_name=>'P234_COD_CONDICION_VENTA_OLD'
,p_item_sequence=>520
,p_item_plug_id=>wwv_flow_imp.id(55009196508330126)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(58329773305331334)
,p_name=>'P234_CARGA_CONDICION'
,p_item_sequence=>530
,p_item_plug_id=>wwv_flow_imp.id(55009196508330126)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(58329820551331335)
,p_name=>'P234_DESC_CONDICION'
,p_item_sequence=>270
,p_item_plug_id=>wwv_flow_imp.id(55009196508330126)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(58329979098331336)
,p_name=>'P234_DESC_MONEDA'
,p_item_sequence=>540
,p_item_plug_id=>wwv_flow_imp.id(55009196508330126)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(58330630898331343)
,p_name=>'P234_MANTIENE_PRECIO'
,p_item_sequence=>550
,p_item_plug_id=>wwv_flow_imp.id(55009196508330126)
,p_item_default=>'N'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(58330720030331344)
,p_name=>'P234_COD_MONEDA_BASE'
,p_item_sequence=>560
,p_item_plug_id=>wwv_flow_imp.id(55009196508330126)
,p_item_default=>'2'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(58330838437331345)
,p_name=>'P234_COD_MONEDA_PRECIO'
,p_item_sequence=>570
,p_item_plug_id=>wwv_flow_imp.id(55009196508330126)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(58330936609331346)
,p_name=>'P234_DECIMALES'
,p_item_sequence=>580
,p_item_plug_id=>wwv_flow_imp.id(55009196508330126)
,p_item_default=>'0'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(58331020218331347)
,p_name=>'P234_GRAVADAS_PARCIAL'
,p_item_sequence=>590
,p_item_plug_id=>wwv_flow_imp.id(55009196508330126)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(58331158217331348)
,p_name=>'P234_EXENTAS_PARCIAL'
,p_item_sequence=>600
,p_item_plug_id=>wwv_flow_imp.id(55009196508330126)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(58331286869331349)
,p_name=>'P234_VAR_MULT'
,p_item_sequence=>610
,p_item_plug_id=>wwv_flow_imp.id(55009196508330126)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(58331316037331350)
,p_name=>'P234_VAR_DIV'
,p_item_sequence=>620
,p_item_plug_id=>wwv_flow_imp.id(55009196508330126)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(59736853544031601)
,p_name=>'P234_IVA_PARCIAL'
,p_item_sequence=>630
,p_item_plug_id=>wwv_flow_imp.id(55009196508330126)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(59736904916031602)
,p_name=>'P234_SUBTOTAL_PARCIAL'
,p_item_sequence=>640
,p_item_plug_id=>wwv_flow_imp.id(55009196508330126)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(59737028185031603)
,p_name=>'P234_PORCENTAJE_DESCUENTO'
,p_item_sequence=>650
,p_item_plug_id=>wwv_flow_imp.id(55009196508330126)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(59737100561031604)
,p_name=>'P234_GRAVADAS'
,p_item_sequence=>660
,p_item_plug_id=>wwv_flow_imp.id(55009196508330126)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(59737234083031605)
,p_name=>'P234_EXENTAS'
,p_item_sequence=>670
,p_item_plug_id=>wwv_flow_imp.id(55009196508330126)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(59737331477031606)
,p_name=>'P234_PORC_RECARGO_ANT'
,p_item_sequence=>680
,p_item_plug_id=>wwv_flow_imp.id(55009196508330126)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(59737610965031609)
,p_name=>'P234_LISTA_PRECIO_OLD'
,p_item_sequence=>690
,p_item_plug_id=>wwv_flow_imp.id(55009196508330126)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(59738284193031615)
,p_name=>'P234_DESC_FLETE'
,p_item_sequence=>700
,p_item_plug_id=>wwv_flow_imp.id(55009196508330126)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(59738926767031622)
,p_name=>'P234_TEXTO_MES'
,p_item_sequence=>710
,p_item_plug_id=>wwv_flow_imp.id(55009196508330126)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(59739039812031623)
,p_name=>'P234_NUMERO_MES'
,p_item_sequence=>720
,p_item_plug_id=>wwv_flow_imp.id(55009196508330126)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(59739140455031624)
,p_name=>'P234_TEXTO_ANIO'
,p_item_sequence=>730
,p_item_plug_id=>wwv_flow_imp.id(55009196508330126)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(59739248027031625)
,p_name=>'P234_HORA'
,p_item_sequence=>740
,p_item_plug_id=>wwv_flow_imp.id(55009196508330126)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(59739326328031626)
,p_name=>'P234_FECHA_INI'
,p_item_sequence=>750
,p_item_plug_id=>wwv_flow_imp.id(55009196508330126)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(59739488071031627)
,p_name=>'P234_FECHA_FIN'
,p_item_sequence=>760
,p_item_plug_id=>wwv_flow_imp.id(55009196508330126)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(60916118679962531)
,p_name=>'P234_CANTIDAD_PROMO_MIX'
,p_item_sequence=>770
,p_item_plug_id=>wwv_flow_imp.id(55009196508330126)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(60916374938962533)
,p_name=>'P234_PORC_IVA'
,p_item_sequence=>780
,p_item_plug_id=>wwv_flow_imp.id(55009196508330126)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(60916869502962538)
,p_name=>'P234_MODIFICA_PRECIO'
,p_item_sequence=>790
,p_item_plug_id=>wwv_flow_imp.id(55009196508330126)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(60916916421962539)
,p_name=>'P234_VARIACION_MENOS'
,p_item_sequence=>800
,p_item_plug_id=>wwv_flow_imp.id(55009196508330126)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(63121751222930403)
,p_name=>'P234_CANTIDAD_MIX'
,p_item_sequence=>810
,p_item_plug_id=>wwv_flow_imp.id(55009196508330126)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(63121855237930404)
,p_name=>'P234_COD_ART_AUX'
,p_item_sequence=>820
,p_item_plug_id=>wwv_flow_imp.id(55009196508330126)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(63121927145930405)
,p_name=>'P234_PROMO_COCINA'
,p_item_sequence=>830
,p_item_plug_id=>wwv_flow_imp.id(55009196508330126)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(63122123072930407)
,p_name=>'P234_CANT_AUX'
,p_item_sequence=>840
,p_item_plug_id=>wwv_flow_imp.id(55009196508330126)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(63122464629930410)
,p_name=>'P234_DESCUENTO_30'
,p_item_sequence=>850
,p_item_plug_id=>wwv_flow_imp.id(55009196508330126)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(63122566368930411)
,p_name=>'P234_DESCUENTO_307'
,p_item_sequence=>860
,p_item_plug_id=>wwv_flow_imp.id(55009196508330126)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(63122657931930412)
,p_name=>'P234_SUPERA_DESCUENTO'
,p_item_sequence=>870
,p_item_plug_id=>wwv_flow_imp.id(55009196508330126)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(63122756452930413)
,p_name=>'P234_AGREGA_PROMOCION'
,p_item_sequence=>880
,p_item_plug_id=>wwv_flow_imp.id(55009196508330126)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(63124162211930427)
,p_name=>'P234_COD_MANTIENE_PRECIO'
,p_item_sequence=>890
,p_item_plug_id=>wwv_flow_imp.id(55009196508330126)
,p_item_default=>'N'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(63124292533930428)
,p_name=>'P234_DESCUENTO_GASTRO'
,p_item_sequence=>900
,p_item_plug_id=>wwv_flow_imp.id(55009196508330126)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(63124925677930435)
,p_name=>'P234_TIP_CONTADO'
,p_item_sequence=>750
,p_item_plug_id=>wwv_flow_imp.id(55009271399330127)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(63125095016930436)
,p_name=>'P234_COD_MONEDA_DOL'
,p_item_sequence=>760
,p_item_plug_id=>wwv_flow_imp.id(55009271399330127)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(63125101443930437)
,p_name=>'P234_COD_MONEDA_GS'
,p_item_sequence=>770
,p_item_plug_id=>wwv_flow_imp.id(55009271399330127)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(67974986849767422)
,p_name=>'P234_COD_EMPRESA_1'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(67974712847767420)
,p_item_source_plug_id=>wwv_flow_imp.id(67974712847767420)
,p_source=>'COD_EMPRESA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(67975061983767423)
,p_name=>'P234_TIP_COMPROBANTE_1'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(67974712847767420)
,p_item_source_plug_id=>wwv_flow_imp.id(67974712847767420)
,p_source=>'TIP_COMPROBANTE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(67975121726767424)
,p_name=>'P234_SER_COMPROBANTE_1'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(67974712847767420)
,p_item_source_plug_id=>wwv_flow_imp.id(67974712847767420)
,p_source=>'SER_COMPROBANTE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(67975253281767425)
,p_name=>'P234_NRO_COMPROBANTE_1'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(67974712847767420)
,p_item_source_plug_id=>wwv_flow_imp.id(67974712847767420)
,p_source=>'NRO_COMPROBANTE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(67975326069767426)
,p_name=>'P234_COD_ARTICULO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(67974712847767420)
,p_use_cache_before_default=>'NO'
,p_prompt=>unistr('C\00F3d. Art\00EDculo')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LOV_ARTICULOS_LARGO_VTPEDIDO'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT descripcion, cod_articulo, cod_origen_art, cod_art_corto',
'  FROM st_articulos',
' WHERE cod_empresa = ''1''',
'   AND (estado IS NULL OR estado IN (''A'', ''S''))',
' ORDER BY descripcion',
''))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_cMaxlength=>30
,p_tag_attributes=>'onKeyUp="this.value=this.value.toUpperCase()"'
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'Y'
,p_attribute_05=>'N'
,p_attribute_07=>unistr('Art\00EDculos')
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(67975477230767427)
,p_name=>'P234_CANTIDAD'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(67974712847767420)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Cantidad'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_cMaxlength=>10
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(67975560233767428)
,p_name=>'P234_CANTIDAD_FACTURADA_1'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(67974712847767420)
,p_item_source_plug_id=>wwv_flow_imp.id(67974712847767420)
,p_source=>'CANTIDAD_FACTURADA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(67975620960767429)
,p_name=>'P234_PRECIO_UNITARIO'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(67974712847767420)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Precio Unitario'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_cMaxlength=>12
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(67975778004767430)
,p_name=>'P234_MONTO_TOTAL'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(67974712847767420)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Monto Total'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(67975894593767431)
,p_name=>'P234_TOTAL_IVA_1'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(67974712847767420)
,p_use_cache_before_default=>'NO'
,p_prompt=>'IVA'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(67975974875767432)
,p_name=>'P234_PRECIO_LISTA'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(67974712847767420)
,p_item_source_plug_id=>wwv_flow_imp.id(67974712847767420)
,p_source=>'PRECIO_LISTA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(67976021448767433)
,p_name=>'P234_DESCUENTO_1'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(67974712847767420)
,p_item_source_plug_id=>wwv_flow_imp.id(67974712847767420)
,p_source=>'DESCUENTO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(67976108719767434)
,p_name=>'P234_PRECIO_REAL'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(67974712847767420)
,p_item_source_plug_id=>wwv_flow_imp.id(67974712847767420)
,p_source=>'PRECIO_REAL'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(67976215206767435)
,p_name=>'P234_PORC_DESCUENTO'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(67974712847767420)
,p_use_cache_before_default=>'NO'
,p_item_default=>'0'
,p_prompt=>'% Descuento'
,p_format_mask=>'999G999G999G999G990D00'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_cMaxlength=>5
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(67976325023767436)
,p_name=>'P234_COSTO_PROMEDIO_REF'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(67974712847767420)
,p_item_source_plug_id=>wwv_flow_imp.id(67974712847767420)
,p_source=>'COSTO_PROMEDIO_REF'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(67976404473767437)
,p_name=>'P234_COSTO_PROMEDIO'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(67974712847767420)
,p_item_source_plug_id=>wwv_flow_imp.id(67974712847767420)
,p_source=>'COSTO_PROMEDIO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(67976561712767438)
,p_name=>'P234_COSTO_CON'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_imp.id(67974712847767420)
,p_item_source_plug_id=>wwv_flow_imp.id(67974712847767420)
,p_source=>'COSTO_CON'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(67976617345767439)
,p_name=>'P234_COD_UNIDAD_MEDIDA'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_imp.id(67974712847767420)
,p_item_source_plug_id=>wwv_flow_imp.id(67974712847767420)
,p_source=>'COD_UNIDAD_MEDIDA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(67976727234767440)
,p_name=>'P234_CANTIDAD_UB'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_imp.id(67974712847767420)
,p_item_source_plug_id=>wwv_flow_imp.id(67974712847767420)
,p_source=>'CANTIDAD_UB'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(67976835749767441)
,p_name=>'P234_PORC_RECARGO'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(67974712847767420)
,p_use_cache_before_default=>'NO'
,p_prompt=>'% Recargo'
,p_format_mask=>'999G999G999G999G990D00'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_cMaxlength=>5
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(67976948021767442)
,p_name=>'P234_RECARGO_1'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_imp.id(67974712847767420)
,p_item_source_plug_id=>wwv_flow_imp.id(67974712847767420)
,p_source=>'RECARGO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(67977039430767443)
,p_name=>'P234_COD_ARTICULO_REL_BON'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_imp.id(67974712847767420)
,p_item_source_plug_id=>wwv_flow_imp.id(67974712847767420)
,p_source=>'COD_ARTICULO_REL_BON'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(67977113919767444)
,p_name=>'P234_PORC_IVA_1'
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_imp.id(67974712847767420)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
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
 p_id=>wwv_flow_imp.id(67977250300767445)
,p_name=>'P234_ORDEN'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>270
,p_item_plug_id=>wwv_flow_imp.id(67974712847767420)
,p_item_source_plug_id=>wwv_flow_imp.id(67974712847767420)
,p_source=>'ORDEN'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(67977362055767446)
,p_name=>'P234_COD_IVA'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>280
,p_item_plug_id=>wwv_flow_imp.id(67974712847767420)
,p_item_source_plug_id=>wwv_flow_imp.id(67974712847767420)
,p_source=>'COD_IVA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(67977428732767447)
,p_name=>'P234_CONTROL_FIN_1'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>290
,p_item_plug_id=>wwv_flow_imp.id(67974712847767420)
,p_item_source_plug_id=>wwv_flow_imp.id(67974712847767420)
,p_source=>'CONTROL_FIN'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(67977572730767448)
,p_name=>'P234_COD_ART_CORTO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(67974712847767420)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Cod. Corto'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LOV_ARTICULOS_CORT_VTPEDIDO'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT descripcion, cod_articulo, cod_origen_art, cod_art_corto',
'  FROM st_articulos',
' WHERE cod_empresa = ''1''',
'   AND (estado IS NULL OR estado IN (''A'', ''S''))',
' ORDER BY descripcion',
''))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_cMaxlength=>20
,p_tag_attributes=>'onKeyUp="this.value=this.value.toUpperCase()"'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'Y'
,p_attribute_05=>'N'
,p_attribute_07=>unistr('Art\00EDculos')
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(67977614572767449)
,p_name=>'P234_CANTIDAD_PENDIENTE'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>300
,p_item_plug_id=>wwv_flow_imp.id(67974712847767420)
,p_item_source_plug_id=>wwv_flow_imp.id(67974712847767420)
,p_source=>'CANTIDAD_PENDIENTE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(67977791559767450)
,p_name=>'P234_COD_MOTIVO_ANU_1'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>310
,p_item_plug_id=>wwv_flow_imp.id(67974712847767420)
,p_item_source_plug_id=>wwv_flow_imp.id(67974712847767420)
,p_source=>'COD_MOTIVO_ANU'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(68095785284978901)
,p_name=>'P234_PESO'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>320
,p_item_plug_id=>wwv_flow_imp.id(67974712847767420)
,p_item_source_plug_id=>wwv_flow_imp.id(67974712847767420)
,p_source=>'PESO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(68095857715978902)
,p_name=>'P234_VOLUMEN'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>330
,p_item_plug_id=>wwv_flow_imp.id(67974712847767420)
,p_item_source_plug_id=>wwv_flow_imp.id(67974712847767420)
,p_source=>'VOLUMEN'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(68095987194978903)
,p_name=>'P234_IND_REPOSICION'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>340
,p_item_plug_id=>wwv_flow_imp.id(67974712847767420)
,p_item_source_plug_id=>wwv_flow_imp.id(67974712847767420)
,p_source=>'IND_REPOSICION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(68096090112978904)
,p_name=>'P234_ES_PROMO_1'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>350
,p_item_plug_id=>wwv_flow_imp.id(67974712847767420)
,p_item_source_plug_id=>wwv_flow_imp.id(67974712847767420)
,p_source=>'ES_PROMO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(68096170629978905)
,p_name=>'P234_NRO_PROMO_1'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>360
,p_item_plug_id=>wwv_flow_imp.id(67974712847767420)
,p_item_source_plug_id=>wwv_flow_imp.id(67974712847767420)
,p_source=>'NRO_PROMO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(68096248201978906)
,p_name=>'P234_ARTICULO_PAR_1'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>370
,p_item_plug_id=>wwv_flow_imp.id(67974712847767420)
,p_item_source_plug_id=>wwv_flow_imp.id(67974712847767420)
,p_source=>'ARTICULO_PAR'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(68096338813978907)
,p_name=>'P234_VERIFICADO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>380
,p_item_plug_id=>wwv_flow_imp.id(67974712847767420)
,p_item_source_plug_id=>wwv_flow_imp.id(67974712847767420)
,p_source=>'VERIFICADO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(68096450628978908)
,p_name=>'P234_HORA_ALTA_1'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>390
,p_item_plug_id=>wwv_flow_imp.id(67974712847767420)
,p_item_source_plug_id=>wwv_flow_imp.id(67974712847767420)
,p_source=>'HORA_ALTA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(68096593217978909)
,p_name=>'P234_IND_PROMO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>400
,p_item_plug_id=>wwv_flow_imp.id(67974712847767420)
,p_item_source_plug_id=>wwv_flow_imp.id(67974712847767420)
,p_source=>'IND_PROMO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(68096623357978910)
,p_name=>'P234_IMAGEN'
,p_source_data_type=>'BLOB'
,p_item_sequence=>410
,p_item_plug_id=>wwv_flow_imp.id(67974712847767420)
,p_item_source_plug_id=>wwv_flow_imp.id(67974712847767420)
,p_source=>'IMAGEN'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(68096769297978911)
,p_name=>'P234_PORC_DESCUENTO_ADICIONAL'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>420
,p_item_plug_id=>wwv_flow_imp.id(67974712847767420)
,p_item_source_plug_id=>wwv_flow_imp.id(67974712847767420)
,p_source=>'PORC_DESCUENTO_ADICIONAL'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(68096808460978912)
,p_name=>'P234_IND_OUTLET'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>430
,p_item_plug_id=>wwv_flow_imp.id(67974712847767420)
,p_item_source_plug_id=>wwv_flow_imp.id(67974712847767420)
,p_source=>'IND_OUTLET'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(68096992316978913)
,p_name=>'P234_COD_ESPECIE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>440
,p_item_plug_id=>wwv_flow_imp.id(67974712847767420)
,p_item_source_plug_id=>wwv_flow_imp.id(67974712847767420)
,p_source=>'COD_ESPECIE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(68097009780978914)
,p_name=>'P234_COD_ESTABLE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>450
,p_item_plug_id=>wwv_flow_imp.id(67974712847767420)
,p_item_source_plug_id=>wwv_flow_imp.id(67974712847767420)
,p_source=>'COD_ESTABLE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(68097179425978915)
,p_name=>'P234_MONTO_GRAVADA_10'
,p_item_sequence=>460
,p_item_plug_id=>wwv_flow_imp.id(67974712847767420)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(68097277317978916)
,p_name=>'P234_MONTO_GRAVADA_5'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>470
,p_item_plug_id=>wwv_flow_imp.id(67974712847767420)
,p_item_source_plug_id=>wwv_flow_imp.id(67974712847767420)
,p_source=>'MONTO_GRAVADA_5'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(68097321873978917)
,p_name=>'P234_MONTO_EXENTA'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>480
,p_item_plug_id=>wwv_flow_imp.id(67974712847767420)
,p_item_source_plug_id=>wwv_flow_imp.id(67974712847767420)
,p_source=>'MONTO_EXENTA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(68097493270978918)
,p_name=>'P234_ARTICULO_REGALO_PROMO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>490
,p_item_plug_id=>wwv_flow_imp.id(67974712847767420)
,p_item_source_plug_id=>wwv_flow_imp.id(67974712847767420)
,p_source=>'ARTICULO_REGALO_PROMO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(68097585720978919)
,p_name=>'P234_COD_ARTICULO_PROMO_ANT_1'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>500
,p_item_plug_id=>wwv_flow_imp.id(67974712847767420)
,p_item_source_plug_id=>wwv_flow_imp.id(67974712847767420)
,p_source=>'COD_ARTICULO_PROMO_ANT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(68097619089978920)
,p_name=>'P234_SER_PEDIDO_PROMO_ANT_1'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>510
,p_item_plug_id=>wwv_flow_imp.id(67974712847767420)
,p_item_source_plug_id=>wwv_flow_imp.id(67974712847767420)
,p_source=>'SER_PEDIDO_PROMO_ANT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(68097723110978921)
,p_name=>'P234_NRO_PEDIDO_PROMO_ANT_1'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>520
,p_item_plug_id=>wwv_flow_imp.id(67974712847767420)
,p_item_source_plug_id=>wwv_flow_imp.id(67974712847767420)
,p_source=>'NRO_PEDIDO_PROMO_ANT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(68097870063978922)
,p_name=>'P234_NRO_PEDIDO_ORDEN_PROMO_ANT_1'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>530
,p_item_plug_id=>wwv_flow_imp.id(67974712847767420)
,p_item_source_plug_id=>wwv_flow_imp.id(67974712847767420)
,p_source=>'NRO_PEDIDO_ORDEN_PROMO_ANT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(68097955446978923)
,p_name=>'P234_TIP_FACTURA'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>540
,p_item_plug_id=>wwv_flow_imp.id(67974712847767420)
,p_item_source_plug_id=>wwv_flow_imp.id(67974712847767420)
,p_source=>'TIP_FACTURA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(68098082042978924)
,p_name=>'P234_SER_FACTURA'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>550
,p_item_plug_id=>wwv_flow_imp.id(67974712847767420)
,p_item_source_plug_id=>wwv_flow_imp.id(67974712847767420)
,p_source=>'SER_FACTURA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(68098158389978925)
,p_name=>'P234_NRO_FACTURA'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>560
,p_item_plug_id=>wwv_flow_imp.id(67974712847767420)
,p_item_source_plug_id=>wwv_flow_imp.id(67974712847767420)
,p_source=>'NRO_FACTURA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(68098221257978926)
,p_name=>'P234_FECHA_ENTREGA_1'
,p_source_data_type=>'DATE'
,p_item_sequence=>570
,p_item_plug_id=>wwv_flow_imp.id(67974712847767420)
,p_item_source_plug_id=>wwv_flow_imp.id(67974712847767420)
,p_source=>'FECHA_ENTREGA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(68098310807978927)
,p_name=>'P234_IND_PRODUCTO_ARMADO'
,p_item_sequence=>580
,p_item_plug_id=>wwv_flow_imp.id(67974712847767420)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Caja'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(68098415828978928)
,p_name=>'P234_CANTIDAD_ENTREGADA'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>590
,p_item_plug_id=>wwv_flow_imp.id(67974712847767420)
,p_item_source_plug_id=>wwv_flow_imp.id(67974712847767420)
,p_source=>'CANTIDAD_ENTREGADA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(68098574657978929)
,p_name=>'P234_ORDEN_PRODUCTO_PRINCIPAL'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>600
,p_item_plug_id=>wwv_flow_imp.id(67974712847767420)
,p_item_source_plug_id=>wwv_flow_imp.id(67974712847767420)
,p_source=>'ORDEN_PRODUCTO_PRINCIPAL'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(68098792039978931)
,p_name=>'P234_DESC_ARTICULO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(67974712847767420)
,p_use_cache_before_default=>'NO'
,p_prompt=>unistr('Descripci\00F3n art\00EDculos')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(68099394456978937)
,p_name=>'P234_COD_MONEDA_BASE_1'
,p_item_sequence=>610
,p_item_plug_id=>wwv_flow_imp.id(67974712847767420)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(68099477480978938)
,p_name=>'P234_COD_GRUPO_ANT'
,p_item_sequence=>620
,p_item_plug_id=>wwv_flow_imp.id(67974712847767420)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(68099563477978939)
,p_name=>'P234_COD_ORIGEN_ART'
,p_item_sequence=>630
,p_item_plug_id=>wwv_flow_imp.id(67974712847767420)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(68099674276978940)
,p_name=>'P234_IND_NO_DESCUENTO'
,p_item_sequence=>640
,p_item_plug_id=>wwv_flow_imp.id(67974712847767420)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(68099735603978941)
,p_name=>'P234_IMPORTE_ANT'
,p_item_sequence=>650
,p_item_plug_id=>wwv_flow_imp.id(67974712847767420)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(68099861641978942)
,p_name=>'P234_IVA_ANT'
,p_item_sequence=>660
,p_item_plug_id=>wwv_flow_imp.id(67974712847767420)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(68099953734978943)
,p_name=>'P234_TOTAL_VOLUMEN'
,p_item_sequence=>670
,p_item_plug_id=>wwv_flow_imp.id(67974712847767420)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(68882599510126410)
,p_name=>'P234_SER_NRO_PROMO_ANT'
,p_item_sequence=>680
,p_item_plug_id=>wwv_flow_imp.id(67974712847767420)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(68883009905126415)
,p_name=>'P234_CARGA_PORC_RECARGO'
,p_item_sequence=>690
,p_item_plug_id=>wwv_flow_imp.id(67974712847767420)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(68886075360126445)
,p_name=>'P234_SECUENCIA'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(55011281939330147)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(72004273304704107)
,p_name=>'P234_ELIMINAR'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(55011281939330147)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(72004821869704113)
,p_name=>'P234_MODIFICACION'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(55011281939330147)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(72008057235704145)
,p_name=>'P234_DET_COMENTARIO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(56987206457360418)
,p_prompt=>'Sug.'
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
 p_id=>wwv_flow_imp.id(77479110900133407)
,p_name=>'P234_CARGA_DETALLE'
,p_item_sequence=>700
,p_item_plug_id=>wwv_flow_imp.id(67974712847767420)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(77481359314133429)
,p_name=>'P234_PUEDE_DESANULAR_PEDIDO'
,p_item_sequence=>910
,p_item_plug_id=>wwv_flow_imp.id(55009196508330126)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(77481498559133430)
,p_name=>'P234_CARGA_FECHA'
,p_item_sequence=>270
,p_item_plug_id=>wwv_flow_imp.id(55010208518330137)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(77481546526133431)
,p_name=>'P234_INSTALACION'
,p_item_sequence=>280
,p_item_plug_id=>wwv_flow_imp.id(55010208518330137)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(77481686565133432)
,p_name=>'P234_DESCUENTO_304'
,p_item_sequence=>290
,p_item_plug_id=>wwv_flow_imp.id(55010208518330137)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(77481746330133433)
,p_name=>'P234_CARGA_DESCUENTOS'
,p_item_sequence=>300
,p_item_plug_id=>wwv_flow_imp.id(55010208518330137)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(77481848015133434)
,p_name=>'P234_CARGA_COTIZACION'
,p_item_sequence=>310
,p_item_plug_id=>wwv_flow_imp.id(55010208518330137)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(77481913180133435)
,p_name=>'P234_VER_MARGEN'
,p_item_sequence=>320
,p_item_plug_id=>wwv_flow_imp.id(55010208518330137)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(77482581969133441)
,p_name=>'P234_COD_EMPRESA_CRO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(77482209694133438)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(77482676428133442)
,p_name=>'P234_TIP_COMPROBANTE_CRO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(77482209694133438)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(77482708692133443)
,p_name=>'P234_SER_COMPROBANTE_CRO'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(77482209694133438)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(77482827573133444)
,p_name=>'P234_NRO_COMPROBANTE_CRO'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(77482209694133438)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(77482940527133445)
,p_name=>'P234_CROQUIS_HABLADO_CRO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(77482209694133438)
,p_prompt=>'Croquis Hablado'
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
 p_id=>wwv_flow_imp.id(77483068457133446)
,p_name=>'P234_IND_CROQUIS_CRO'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(77482209694133438)
,p_prompt=>'Tiene Croquis?'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(77483166615133447)
,p_name=>'P234_NOMBRE_AUTORIZADO_CRO'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(77482209694133438)
,p_prompt=>'Nombre Autorizado'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>49
,p_begin_on_new_line=>'N'
,p_grid_column=>3
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(77483271344133448)
,p_name=>'P234_FORMA_COBRO_CRO'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(77482209694133438)
,p_prompt=>'Forma Cobro'
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
 p_id=>wwv_flow_imp.id(77483320003133449)
,p_name=>'P234_IND_RETENCION_CRO'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(77482209694133438)
,p_prompt=>unistr('Agente Retenci\00F3n')
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(77483461320133450)
,p_name=>'P234_DOCUMENTO_AUTORIZADO_CRO'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(77482209694133438)
,p_prompt=>'Documento Autorizado'
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
 p_id=>wwv_flow_imp.id(78070257600103101)
,p_name=>'P234_TELEFONO_AUTORIZADO_CRO'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(77482209694133438)
,p_prompt=>unistr('Tel\00E9fono Autorizado')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(78070695069103105)
,p_name=>'P234_LINEAS_MAX'
,p_item_sequence=>780
,p_item_plug_id=>wwv_flow_imp.id(55009271399330127)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(78072381064103122)
,p_name=>'P234_OPERACION'
,p_item_sequence=>920
,p_item_plug_id=>wwv_flow_imp.id(55009196508330126)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(78072527438103124)
,p_name=>'P234_STOCK_ACTUAL_1'
,p_item_sequence=>710
,p_item_plug_id=>wwv_flow_imp.id(67974712847767420)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(78073780164103136)
,p_name=>'P234_FEC_EMI_INICIAL_PAR'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(78073551539103134)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(78073853486103137)
,p_name=>'P234_FEC_EMI_FINAL_PAR'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(78073551539103134)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(78073995986103138)
,p_name=>'P234_P_LOGISTICA_PAR'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(78073551539103134)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(78074093652103139)
,p_name=>'P234_P_COD_EMPRESA_PAR'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(78073551539103134)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(78074169555103140)
,p_name=>'P234_P_COD_CLIENTE_PAR'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(78073551539103134)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(78074261810103141)
,p_name=>'P234_P_TIP_COMPROBANTE_PAR'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(78073551539103134)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(78074318826103142)
,p_name=>'P234_P_SER_COMPROBANTE_PAR'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(78073551539103134)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(78074413458103143)
,p_name=>'P234_P_NRO_COMPROBANTE_PAR'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(78073551539103134)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(78074546807103144)
,p_name=>'P234_P_TIP_COMPROBANTE_REF_PAR'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(78073551539103134)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(78074659231103145)
,p_name=>'P234_P_SER_COMPROBANTE_REF_PAR'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(78073551539103134)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(78074772140103146)
,p_name=>'P234_P_NRO_COMPROBANTE_REF_PAR'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(78073551539103134)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(78074899032103147)
,p_name=>'P234_P_COD_VENDEDOR_PAR'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(78073551539103134)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(78074942853103148)
,p_name=>'P234_P_COD_CONDICION_PAR'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(78073551539103134)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(78075052345103149)
,p_name=>'P234_P_COD_LISTA_PAR'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(78073551539103134)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(78075112271103150)
,p_name=>'P234_P_COD_ENTREGA_PAR'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(78073551539103134)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(81179744422178601)
,p_name=>'P234_P_COD_FLETE_PAR'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(78073551539103134)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(81179818261178602)
,p_name=>'P234_P_NRO_VALE_PAR'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(78073551539103134)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(81179979095178603)
,p_name=>'P234_P_SER_VALE_PAR'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(78073551539103134)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(81180149566178605)
,p_name=>'P234_TIP_FAC_REF'
,p_item_sequence=>720
,p_item_plug_id=>wwv_flow_imp.id(67974712847767420)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(81180269061178606)
,p_name=>'P234_SER_FAC_REF'
,p_item_sequence=>730
,p_item_plug_id=>wwv_flow_imp.id(67974712847767420)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(81180336015178607)
,p_name=>'P234_NRO_FAC_REF'
,p_item_sequence=>740
,p_item_plug_id=>wwv_flow_imp.id(67974712847767420)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(81180422217178608)
,p_name=>'P234_CARGA_ITEMS'
,p_item_sequence=>750
,p_item_plug_id=>wwv_flow_imp.id(67974712847767420)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(81183001828178634)
,p_name=>'P234_SEARCH'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(81182950598178633)
,p_prompt=>'Buscar '
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
 p_id=>wwv_flow_imp.id(81183193521178635)
,p_name=>'P234_ADDRESS'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(81182950598178633)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(81183498066178638)
,p_name=>'P234_COUNTRY'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(81182950598178633)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
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
 p_id=>wwv_flow_imp.id(81183569674178639)
,p_name=>'P234_SEARCH_AUX'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(81182950598178633)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(81183602411178640)
,p_name=>'P234_LATLNG'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(81182950598178633)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(81183767764178641)
,p_name=>'P234_LATLNG_AUX'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(81182950598178633)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(81183800016178642)
,p_name=>'P234_DSP_LAT_LNG'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(81182950598178633)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(81183982487178643)
,p_name=>'P234_LATITUD_1'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(81182950598178633)
,p_item_source_plug_id=>wwv_flow_imp.id(55983001397779669)
,p_prompt=>'Latitud'
,p_source=>'LATITUD'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>1000
,p_tag_attributes=>'readonly'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(81184077585178644)
,p_name=>'P234_LONGITUD_1'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(81182950598178633)
,p_item_source_plug_id=>wwv_flow_imp.id(55983001397779669)
,p_prompt=>'Longitud'
,p_source=>'LONGITUD'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>1000
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(83732861046791501)
,p_name=>'P234_LATITUD'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(81182950598178633)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(83732999212791502)
,p_name=>'P234_LONGITUD'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(81182950598178633)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(83736268376791535)
,p_name=>'P234_TIP_COMPROBANTE_COPA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(83736122720791534)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(83736349079791536)
,p_name=>'P234_SER_COMPROBANTE_COPIA'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(83736122720791534)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(83736442877791537)
,p_name=>'P234_NRO_COMPROBANTE_COPIA'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(83736122720791534)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(83736556711791538)
,p_name=>'P234_SER_PRESUPUESTO_COPIA'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(83736122720791534)
,p_prompt=>'Nro.'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_colspan=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(83736600535791539)
,p_name=>'P234_NRO_PRESUPUESTO_COPIA'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(83736122720791534)
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(83736791374791540)
,p_name=>'P234_MANTIENE_PRECIO_COPIA'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(83736122720791534)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(83736867566791541)
,p_name=>'P234_TEXTO'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(83736122720791534)
,p_prompt=>'texto'
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
 p_id=>wwv_flow_imp.id(83737693848791549)
,p_name=>'P234_DESC_PRECIOS'
,p_item_sequence=>760
,p_item_plug_id=>wwv_flow_imp.id(67974712847767420)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(85578487067170103)
,p_name=>'P234_PUEDE_ACTUALIZAR_A_REM'
,p_item_sequence=>930
,p_item_plug_id=>wwv_flow_imp.id(55009196508330126)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(85578545667170104)
,p_name=>'P234_DERECHOS'
,p_item_sequence=>940
,p_item_plug_id=>wwv_flow_imp.id(55009196508330126)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(85582949940170148)
,p_name=>'P234_RECARGO_AUX'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(56986774403360413)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Recargo'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(94557756778213405)
,p_name=>'P234_VALIDA_ARTICULO'
,p_item_sequence=>770
,p_item_plug_id=>wwv_flow_imp.id(67974712847767420)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(94561982849213447)
,p_name=>'P234_COD_CLIENTE_AUX'
,p_item_sequence=>950
,p_item_plug_id=>wwv_flow_imp.id(55009196508330126)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(96863436822522101)
,p_name=>'P234_SUCURSAL_DIST_AUX'
,p_item_sequence=>960
,p_item_plug_id=>wwv_flow_imp.id(55009196508330126)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(99282734533806411)
,p_name=>'P234_AGREGAR_DETALLES'
,p_item_sequence=>780
,p_item_plug_id=>wwv_flow_imp.id(67974712847767420)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(99776905792177720)
,p_name=>'P234_TOTAL_ENTREGA'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(99776867486177719)
,p_prompt=>'Total'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_grid_column=>9
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(99778270053177733)
,p_name=>'P234_CERRAR_ENTREGA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(101869962937708103)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(101872477496708128)
,p_name=>'P234_ENTREGA_DETALLE'
,p_item_sequence=>970
,p_item_plug_id=>wwv_flow_imp.id(55009196508330126)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(106521523485760506)
,p_name=>'P234_DESC_ARTICULO_1'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(67974712847767420)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(108925011940676449)
,p_name=>'P234_FECHA_CONFIRMACION_ENVIO'
,p_source_data_type=>'DATE'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(55010635671330141)
,p_item_source_plug_id=>wwv_flow_imp.id(55983001397779669)
,p_prompt=>'Fec. Tope Confirmacion Factura'
,p_source=>'FECHA_CONFIRMACION_ENVIO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>32
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(115394958857810209)
,p_name=>'P234_CORREO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(55010208518330137)
,p_item_source_plug_id=>wwv_flow_imp.id(55983001397779669)
,p_prompt=>'Correo Fact. Electronica'
,p_source=>'CORREO_CLIENTE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>200
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'EMAIL'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(156804764723017219)
,p_name=>'P234_COD_PAIS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(55009196508330126)
,p_item_source_plug_id=>wwv_flow_imp.id(55983001397779669)
,p_item_default=>'PAR'
,p_prompt=>'Pais Entrega'
,p_source=>'COD_PAIS_ENTREGA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LV_PAISES'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select descripcion',
'			, cod_pais',
'			    from paises'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(156804833390017220)
,p_name=>'P234_COD_PROVINCIA'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(55009196508330126)
,p_item_source_plug_id=>wwv_flow_imp.id(55983001397779669)
,p_prompt=>'Departamento'
,p_source=>'COD_PROVINCIA_ENTREGA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT P.DESCRIPCION, P.COD_PROVINCIA',
'FROM PROVINCIAS P',
'WHERE COD_PAIS = :P234_COD_PAIS'))
,p_lov_cascade_parent_items=>'P234_COD_PAIS'
,p_ajax_items_to_submit=>'P234_COD_PAIS'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
,p_attribute_07=>'Departamento'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(156804955378017221)
,p_name=>'P234_COD_CIUDAD'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(55009196508330126)
,p_item_source_plug_id=>wwv_flow_imp.id(55983001397779669)
,p_prompt=>'Ciudad'
,p_source=>'COD_CIUDAD_ENTREGA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DESCRIPCION , COD_CIUDAD',
'FROM CIUDADES ',
'WHERE COD_PAIS = :P234_COD_PAIS',
'AND COD_PROVINCIA = :P234_COD_PROVINCIA'))
,p_lov_cascade_parent_items=>'P234_COD_PAIS,P234_COD_PROVINCIA'
,p_ajax_items_to_submit=>'P234_COD_PAIS,P234_COD_PROVINCIA'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(156805326620017225)
,p_name=>'P234_NRO_CI_ENTREGA'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(77482209694133438)
,p_item_source_plug_id=>wwv_flow_imp.id(55983001397779669)
,p_prompt=>'NRO COI ENTREGA'
,p_source=>'NRO_CI_ENTREGA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>8
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(156805432037017226)
,p_name=>'P234_CHAPA_ENTREGA'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(77482209694133438)
,p_item_source_plug_id=>wwv_flow_imp.id(55983001397779669)
,p_prompt=>'CHAPA ENTREGA'
,p_source=>'CHAPA_ENTREGA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>8
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(85580240120170121)
,p_validation_name=>unistr('Validaci\00F3n de edici\00F3n')
,p_validation_sequence=>10
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  valerta NUMBER;',
'BEGIN',
'  IF :P234_ESTADO <> ''P'' THEN',
unistr('     return ''El comprobante N\00B0 ''||:P234_SER_COMPROBANTE||'' ''||'),
'            to_char(:P234_NRO_COMPROBANTE)||'' no puede ser modificado.'';',
'  END IF;',
'END;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_when_button_pressed=>wwv_flow_imp.id(56076436152779724)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(94562060831213448)
,p_validation_name=>unistr('Validaci\00F3n de eliminar')
,p_validation_sequence=>20
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  valerta NUMBER;',
'BEGIN',
'  IF :P234_ESTADO <> ''P'' THEN',
unistr('     return ''El comprobante N\00B0 ''||:P234_SER_COMPROBANTE||'' ''||'),
'            to_char(:P234_NRO_COMPROBANTE)||'' no puede ser eliminado.'';',
'  END IF;',
'END;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_when_button_pressed=>wwv_flow_imp.id(56076059971779724)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(108925144801676450)
,p_validation_name=>'valida_fecha'
,p_validation_sequence=>30
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  ',
'    if NVL(:P234_IND_CONFIRMAR_FACTURA, ''N'') = ''S'' AND',
'       :P234_FECHA_CONFIRMACION_ENVIO IS NULL THEN',
'        RETURN false;',
'    end if;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'Es obligatorio agregar la fecha limite de confirmacion no superior a 3 dias'))
,p_associated_item=>wwv_flow_imp.id(108925011940676449)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(156804625437017218)
,p_validation_name=>'valida_correo'
,p_validation_sequence=>40
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
' ',
'    DECLARE ',
'    v_mensaje VARCHAR2(4000);',
'BEGIN',
'    if :P234_CORREO is not null then    ',
'        INV.PCK_GENERAL_APEX.pr_validar_direccion_email(p_direccion_mail => :P234_CORREO,',
'                                                        p_mensaje         => v_mensaje);',
'        IF v_mensaje IS NOT NULL THEN     ',
'        RETURN false;',
'    end if;        ',
'       ',
'    END IF;',
'END;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'Formato de correo electronico no valido'
,p_associated_item=>wwv_flow_imp.id(108925011940676449)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(156805073947017222)
,p_validation_name=>'valida_pais'
,p_validation_sequence=>50
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
' ',
'    DECLARE ',
'    v_mensaje VARCHAR2(4000);',
'BEGIN',
'    if :P234_CORREO is not null then    ',
'        INV.PCK_GENERAL_APEX.pr_validar_direccion_email(p_direccion_mail => :P234_CORREO,',
'                                                        p_mensaje         => v_mensaje);',
'        IF v_mensaje IS NOT NULL THEN     ',
'        RETURN false;',
'    end if;        ',
'       ',
'    END IF;',
'END;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'EL PAIS HABILITADO PARA LA ENTREGA DEBER SER PARAGUAY'
,p_associated_item=>wwv_flow_imp.id(156804764723017219)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(156805194097017223)
,p_validation_name=>'valida_ruc'
,p_validation_sequence=>60
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
' ',
'DECLARE',
'  VDATOS               VARCHAR2(32000);',
'  v_estado varchar2(100);',
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
'  :P0_MENSAJE_VALIDACION := NULL;',
'  IF :P234_RUC IS NOT NULL THEN',
'    DECLARE',
'      T_HTTP_REQ     UTL_HTTP.REQ;',
'      T_HTTP_RESP    UTL_HTTP.RESP;',
'      T_REQUEST_BODY VARCHAR2(30000);',
'    BEGIN',
'      BEGIN',
'        VDIREC := ''http://192.168.15.102:8080/efactura-py/api/consultas/consulta-ruc'';',
'      END;',
'      VDATOS := ''{"ruc":["'' || :P234_RUC || ''"],',
'                "retornarRespuestaOriginal":"true"',
'                }'';',
'      P_JSON := ''{"ruc":["'' || :P234_RUC || ''"],',
'                "retornarRespuestaOriginal":"true"',
'                }'';',
'    ',
'      T_REQUEST_BODY := VDATOS;',
'      T_HTTP_REQ     := UTL_HTTP.BEGIN_REQUEST(VDIREC, ''POST'', ''HTTP/1.1'');',
'      UTL_HTTP.SET_HEADER(T_HTTP_REQ, ''Content-Type'', ''application/json'');',
'    ',
'      UTL_HTTP.SET_HEADER(T_HTTP_REQ, ''Content-Length'', LENGTH(VDATOS));',
'    ',
'      UTL_HTTP.WRITE_TEXT(T_HTTP_REQ, T_REQUEST_BODY);',
'      P_JSON := T_REQUEST_BODY;',
'      DBMS_OUTPUT.PUT_LINE(''t_request_body: '' || T_REQUEST_BODY);',
'    ',
'      T_HTTP_RESP := UTL_HTTP.GET_RESPONSE(T_HTTP_REQ);',
'      UTL_HTTP.READ_TEXT(T_HTTP_RESP, P_DATOS);',
'      UTL_HTTP.END_RESPONSE(T_HTTP_RESP);',
'      BEGIN',
unistr('        VDATOS2 := REPLACE(P_DATOS, ''\00D1'', ''\005Cu00D1'');'),
unistr('        VDATOS2 := REPLACE(P_DATOS, ''\00F3'', ''\005Cu00F3'');'),
unistr('        VDATOS2 := REPLACE(P_DATOS, ''\00E1'', ''\005Cu00E1'');'),
unistr('        VDATOS2 := REPLACE(P_DATOS, ''\00E1'', ''\005Cu00E1'');'),
unistr('        VDATOS2 := REPLACE(P_DATOS, ''\00F3'', ''\005Cu00F3'');'),
unistr('        VDATOS2 := REPLACE(P_DATOS, ''\00F3'', ''\005Cu00F3'');'),
unistr('        VDATOS2 := REPLACE(P_DATOS, ''\00F3'', ''\005Cu00F3'');'),
'      ',
'        APEX_JSON.PARSE(VDATOS2);',
'        v_ESTADO            := APEX_JSON.GET_VARCHAR2(P_PATH => ''resultadoRuc[%d].codigoRespuesta'',',
'                                                         P0     => 1);',
'        :P0_MENSAJE_VALIDACION := CONVERT(REPLACE(APEX_JSON.GET_VARCHAR2(P_PATH => ''resultadoRuc[%d].mensajeError'',',
'                                                                         P0     => 1),',
'                                                  ''"'',',
'                                                  ''''),',
'                                          ''WE8MSWIN1252'',',
'                                          ''UTF8'');',
'        V_DESCRIPCION_ESTADO   := APEX_JSON.GET_VARCHAR2(P_PATH => ''resultadoRuc[%d].descripcionEstadoRuc'',',
'                                                         P0     => 1);',
'        IF v_ESTADO = ''EXISTE'' AND V_DESCRIPCION_ESTADO <> ''ACTIVO'' THEN',
unistr('          :P0_MENSAJE_VALIDACION := ''El n\00FAmero de Ruc est\00E1 '' ||'),
'                                    V_DESCRIPCION_ESTADO ||'' para el codigo de cliente ''||:P234_COD_CLIENTE;',
'                                   return false;',
'          ',
'        ELSIF v_ESTADO <> ''EXISTE'' OR :P0_MENSAJE_VALIDACION IS NOT NULL THEN',
unistr('          :P0_MENSAJE_VALIDACION := ''El n\00FAmero de Ruc ingresado no existe para el codigo de cliente ''||:P234_COD_CLIENTE; '),
'            return false;',
'          ',
'        END IF;',
'      END;',
'    END;',
'  END IF;',
'END;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'RUC NO VALIDO &P0_MENSAJE_VALIDACION.'
,p_associated_item=>wwv_flow_imp.id(55994449560779680)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(138646775532528702)
,p_validation_name=>'valida_fecha_1'
,p_validation_sequence=>70
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'     if NVL(:P234_IND_CONFIRMAR_FACTURA, ''N'') = ''S'' AND',
'                  to_number(to_date(:P234_FECHA_CONFIRMACION_ENVIO,''DD/MM/YYYY'') - trunc(sysdate)) > 3 THEN',
'        RETURN false;',
'    end if;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'La fecha limite de confirmacion no debe ser superior 3 dias!'
,p_associated_item=>wwv_flow_imp.id(108925011940676449)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(52866780081687031)
,p_name=>'Valida proceso comprobante'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P234_SER_COMPROBANTE'
,p_condition_element=>'P234_SER_COMPROBANTE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'focusout'
,p_da_event_comment=>'Valida proceso comprobante'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(52866871395687032)
,p_event_id=>wwv_flow_imp.id(52866780081687031)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    I NUMBER;',
'    E VARCHAR2(10);',
'  BEGIN',
'    :P0_MENSAJE_VALIDACION := NULL;',
'    SELECT COD_EMPRESA',
'      INTO E',
'      FROM SERIES_COMPROB',
'     WHERE COD_EMPRESA = 1',
'       AND TIP_COMPROBANTE = :P234_TIP_COMPROBANTE',
'       AND SER_COMPROBANTE = :P234_SER_COMPROBANTE',
'       AND SER_COMPROBANTE IN (''A'', ''B'', ''W'');',
'     ',
'  EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'      :P0_MENSAJE_VALIDACION := ''No se encuentra serie de comprobante.'';',
'    WHEN OTHERS THEN',
'      :P0_MENSAJE_VALIDACION := ''Error en la tabla de Series de Comprobantes'';',
'  END;'))
,p_attribute_02=>'P234_TIP_COMPROBANTE,P234_SER_COMPROBANTE'
,p_attribute_03=>'P0_MENSAJE_VALIDACION'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(85580373945170122)
,p_name=>'Obtiene datos por defectos'
,p_event_sequence=>10
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
,p_display_when_type=>'ITEM_IS_NULL'
,p_display_when_cond=>'P234_NRO_COMPROBANTE'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(63124870569930434)
,p_event_id=>wwv_flow_imp.id(85580373945170122)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  :P234_SER_COMPROBANTE     :=  inv.vtpedido.fn_busca_parametro(''VT'', ''SER_PED_VENTAS_KAIRO'', :P0_MENSAJE_VALIDACION);',
'  :P234_COD_LISTA_PRECIO       :=   inv.vtpedido.fn_busca_parametro( ''VT'', ''PRECIO_CONTADO'', :P0_MENSAJE_VALIDACION);',
'  :P234_COD_CONDICION_VENTA     :=   inv.vtpedido.fn_busca_parametro( ''VT'', ''CONDICION_CONTADO'', :P0_MENSAJE_VALIDACION);',
'  :P234_TIP_CONTADO         :=  ''PED'';',
'  :P234_COD_MONEDA_PRECIO   :=   inv.vtpedido.fn_busca_parametro( ''VT'', ''COD_MONEDA_PREC'', :P0_MENSAJE_VALIDACION);',
'  :P234_COD_MONEDA_BASE     :=   inv.vtpedido.fn_busca_parametro( ''VT'', ''COD_MONEDA_BASE'', :P0_MENSAJE_VALIDACION);',
'  :P234_DIAS_VENCIM_PEDIDO  :=   inv.vtpedido.fn_busca_parametro( ''VT'', ''DIAS_VENCIM_PEDIDO'', :P0_MENSAJE_VALIDACION);',
'  :P234_COD_MONEDA_DOL      :=   inv.vtpedido.fn_busca_parametro( ''VT'', ''COD_MONEDA_DOL'', :P0_MENSAJE_VALIDACION);',
'  :P234_COD_MONEDA_GS       :=   inv.vtpedido.fn_busca_parametro( ''VT'', ''COD_MONEDA_BASE'', :P0_MENSAJE_VALIDACION);',
'  :P234_RECARGO             :=   inv.vtpedido.fn_busca_parametro( ''VT'', ''RECARGO_ARTICULO'', :P0_MENSAJE_VALIDACION);',
'  :P234_TIP_COMPROBANTE  := :P234_TIP_CONTADO;',
'',
'',
'if :P234_ESTADO =''P'' then',
'  :P234_DESC_ESTADO := ''Pendiente'';',
'elsif :P234_ESTADO =''F'' then',
'   :P234_DESC_ESTADO := ''Facturado'';',
'elsif :P234_ESTADO =''A'' then',
'   :P234_DESC_ESTADO := ''Anulado'';',
'   elsif :P234_ESTADO =''C'' then',
'   :P234_DESC_ESTADO := ''Cerrado'';',
'else',
'   :P234_DESC_ESTADO := '' '';',
'end if;',
'',
'  '))
,p_attribute_02=>'P234_ESTADO'
,p_attribute_03=>'P234_SER_COMPROBANTE,P234_COD_LISTA_PRECIO,P234_COD_CONDICION_VENTA,P234_TIP_CONTADO,P234_COD_MONEDA_PRECIO,P234_DIAS_VENCIM_PEDIDO,P234_COD_MONEDA_DOL,P234_COD_MONEDA_GS,P0_MENSAJE_VALIDACION,P234_TIP_COMPROBANTE,P234_COD_MONEDA_BASE,P234_DESC_ESTAD'
||'O'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(93539882895153803)
,p_name=>'Obtiene datos por defectos_1'
,p_event_sequence=>20
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_display_when_cond=>'P234_NRO_COMPROBANTE'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(93539915946153804)
,p_event_id=>wwv_flow_imp.id(93539882895153803)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  :P234_COD_LISTA_PRECIO       :=   inv.vtpedido.fn_busca_parametro( ''VT'', ''PRECIO_CONTADO'', :P0_MENSAJE_VALIDACION);',
'  --:P234_COD_CONDICION_VENTA     :=   inv.vtpedido.fn_busca_parametro( ''VT'', ''CONDICION_CONTADO'', :P0_MENSAJE_VALIDACION);',
'  :P234_COD_MONEDA_PRECIO   :=   inv.vtpedido.fn_busca_parametro( ''VT'', ''COD_MONEDA_PREC'', :P0_MENSAJE_VALIDACION);',
'  :P234_COD_MONEDA_BASE     :=   inv.vtpedido.fn_busca_parametro( ''VT'', ''COD_MONEDA_BASE'', :P0_MENSAJE_VALIDACION);',
'  :P234_COD_MONEDA_DOL      :=   inv.vtpedido.fn_busca_parametro( ''VT'', ''COD_MONEDA_DOL'', :P0_MENSAJE_VALIDACION);',
'  :P234_COD_MONEDA_GS       :=   inv.vtpedido.fn_busca_parametro( ''VT'', ''COD_MONEDA_BASE'', :P0_MENSAJE_VALIDACION);',
'',
'  '))
,p_attribute_02=>'P234_ESTADO'
,p_attribute_03=>'P234_COD_MONEDA_PRECIO,P234_COD_MONEDA_DOL,P234_COD_MONEDA_GS,P0_MENSAJE_VALIDACION,P234_COD_MONEDA_BASE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(52867698257687040)
,p_name=>'Obtiene datos de cliente'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P234_COD_CLIENTE'
,p_condition_element=>'P234_COD_CLIENTE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_da_event_comment=>'Obtiene datos de cliente'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(52867729066687041)
,p_event_id=>wwv_flow_imp.id(52867698257687040)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
':P234_DESCUENTO_TOTAL := REPLACE(:P234_DESCUENTO_TOTAL , ''.'');',
':P234_DESCUENTO := REPLACE(:P234_DESCUENTO , ''.'');',
':P234_DESCUENTO := REPLACE(:P234_DESCUENTO , ''.'');',
':P234_RECARGO_AUX := REPLACE(:P234_RECARGO_AUX , ''.'');',
':P234_TOTAL_IVA := REPLACE(:P234_TOTAL_IVA , ''.'');',
':P234_RECARGO_PORC := REPLACE(:P234_RECARGO_PORC , ''.'');',
':P234_TOTAL := REPLACE(:P234_TOTAL , ''.'');',
':P234_LIMITE_CREDITO := REPLACE(:P234_LIMITE_CREDITO , ''.'');',
':P234_SALDO_DOLARES := REPLACE(:P234_SALDO_DOLARES , ''.'');',
':P234_SALDO_GS := REPLACE(:P234_SALDO_GS , ''.'');',
':P234_SALDO_TOTAL := REPLACE(:P234_SALDO_TOTAL , ''.'');',
':P234_VALORES_ADEPOSITAR := REPLACE(:P234_VALORES_ADEPOSITAR , ''.'');',
'VTPEDIDO.PR_VALIDA_CLIENTES_VTPEDIDO(P_COD_SUCURSAL           => :P234_COD_SUCURSAL,',
'P_IND_LLEVA_OC           => :P234_IND_LLEVA_OC,',
'P_COD_CLIENTE            => :P234_COD_CLIENTE,',
'P_COD_EMPRESA            => :P234_COD_EMPRESA,',
'P_TIP_CLIENTE            => :P234_TIP_CLIENTE,',
'P_NRO_COMPROBANTE        => :P234_NRO_COMPROBANTE,',
'P_FECHA_TOPE_FACTURACION => :P234_FECHA_TOPE_FACTURACION,',
'P_NOM_CLIENTE            => :P234_NOM_CLIENTE,',
'P_COD_DIRECCION          => :P234_COD_DIRECCION,',
'P_LIMITE_CREDITO         => :P234_LIMITE_CREDITO,',
'P_COD_CONDICION_VENTA    => :P234_COD_CONDICION_VENTA,',
'P_COD_LISTA_PRECIO       => :P234_COD_LISTA_PRECIO,',
'P_COD_VENDEDOR           => :P234_COD_VENDEDOR,',
'P_SALDO_DOLARES          => :P234_SALDO_DOLARES,',
'P_SALDO_GS               => :P234_SALDO_GS,',
'P_SALDO_TOTAL            => :P234_SALDO_TOTAL,',
'P_POSIBLE                => :P234_POSIBLE,',
'P_DIR_CLIENTE            => :P234_DIR_CLIENTE,',
'P_TEL_CLIENTE            => :P234_TEL_CLIENTE,',
'P_RUC                    => :P234_RUC,',
'P_NRO_INSCRIPCION_AD     => :P234_NRO_INSCRIPCION_AD,',
'P_TIPO_ENTREGA_CIUDAD    => :P234_TIPO_ENTREGA_CIUDAD,',
'P_IND_CONFIRMAR_FACTURA  => :P234_IND_CONFIRMAR_FACTURA,',
'P_MENSAJE_ERROR          => :P0_MENSAJE_VALIDACION,',
'P_COPIANDO               => :P234_COPIANDO,',
'P_COD_SUCURSAL_DIST      => :P234_COD_SUCURSAL_DIST,',
'P_SOBREGIRADO            => :P234_SOBREGIRADO,',
'P_DESC_JERARQUIA         => :P234_DESC_JERARQUIA,',
'P_DESC_SCORING           => :P234_DESC_SCORING,',
'P_DERIVADO               => :P234_DERIVADO,',
'P_IND_IMPRESO            => :P234_IND_IMPRESO,',
'P_TIP_COMPROBANTE_REF    => :P234_TIP_COMPROBANTE_REF,',
'P_IND_EXENTO_AD          => :P234_IND_EXENTO_AD,',
'P_TIPO_IMPUESTO          => :P234_TIPO_IMPUESTO,',
'P_TIPO_CLIENTE           => :P234_TIPO_CLIENTE,',
'P_COD_MONEDA_DOL         => :P234_COD_MODEDA_DOL,',
'P_COD_MONEDA_GS          => :P234_COD_MODEDA_GS,',
'P_VALORES_ADEPOSITAR     => :P234_VALORES_ADEPOSITAR,',
'P_NRO_JERARQUIA          => :P234_NRO_JERARQUIA,',
'P_PLAZO                  => :P234_PLAZO,',
'P_TIP_DOCUMENTO          => :P234_TIP_DOCUMENTO,',
'P_NIVEL                  => :P234_NIVEL,',
'P_ESTADO_CLIENTE         => :P234_ESTADO_CLIENTE,',
'P_COD_FLETE              => :P234_COD_FLETE,',
'P_TIPO_ENTREGA           => :P234_TIPO_ENTREGA,',
'P_FEC_VENCIMIENTO        => :P234_FEC_VENCIMIENTO,',
'P_FEC_COMPROBANTE        => :P234_FEC_COMPROBANTE,',
'P_DIAS_VENCIM_PEDIDO     => :P234_DIAS_VENCIM_PEDIDO,',
'P_VALOR_CARPETA          => :P234_VALOR_CARPETA,',
'P_COD_MONEDA             => :P234_COD_MONEDA);',
'EXCEPTION ',
'    WHEN NO_DATA_FOUND THEN ',
'        :P0_MENSAJE_VALIDACION := ''No existe registro'';',
'        ',
'    WHEN OTHERS THEN ',
'        :P0_MENSAJE_VALIDACION := ''No existe registro'';',
'END;',
'',
'BEGIN',
'select CC.EMAIL',
'into :P234_CORREO',
'from CC_CONTACTOS_CLIENTES CC',
'where CC.COD_EMPRESA = :P_COD_EMPRESA',
'AND CC.COD_CLIENTE = :P234_COD_CLIENTE',
'and CC.COD_CONTACTO = ''FA''',
'AND CC.EMAIL IS NOT NULL',
'AND ROWNUM = 1;',
'EXCEPTION WHEN OTHERS THEN ',
':P234_CORREO:=NULL;',
' END;',
' ',
':P234_LIMITE_CREDITO := to_char(to_number(:P234_LIMITE_CREDITO), ''999G999G999G999G990D00'');',
':P234_SALDO_GS := to_char(to_number(:P234_SALDO_GS), ''999G999G999G999G990D00'');',
'',
':P234_VALORES_ADEPOSITAR := to_char(to_number(:P234_VALORES_ADEPOSITAR), ''999G999G999G999G990D00'');',
':P234_POSIBLE := to_char(to_number(:P234_POSIBLE), ''999G999G999G999G990D00'');'))
,p_attribute_02=>'P234_COD_SUCURSAL,P234_IND_LLEVA_OC,P234_COD_CLIENTE,P234_COD_EMPRESA,P234_TIP_CLIENTE,P234_NRO_COMPROBANTE,P234_FECHA_TOPE_FACTURACION,P234_NOM_CLIENTE,P234_COD_DIRECCION,P234_LIMITE_CREDITO,P234_COD_CONDICION_VENTA,P234_COD_LISTA_PRECIO,P234_COD_VE'
||'NDEDOR,P234_SALDO_DOLARES,P234_SALDO_GS,P234_SALDO_TOTAL,P234_POSIBLE,P234_DIR_CLIENTE,P234_TEL_CLIENTE,P234_RUC,P234_NRO_INSCRIPCION_AD,P234_TIPO_ENTREGA_CIUDAD,P234_IND_CONFIRMAR_FACTURA,P234_COPIANDO,P234_COD_SUCURSAL_DIST,P234_SOBREGIRADO,P234_DE'
||'SC_JERARQUIA,P234_DESC_SCORING,P234_DERIVADO,P234_IND_IMPRESO,P234_TIP_COMPROBANTE_REF,P234_IND_EXENTO_AD,P234_TIPO_IMPUESTO,P234_TIPO_CLIENTE,P234_COD_MODEDA_DOL,P234_COD_MODEDA_GS,P234_VALORES_ADEPOSITAR,P234_NRO_JERARQUIA,P234_PLAZO,P234_TIP_DOCUM'
||'ENTO,P234_NIVEL,P234_ESTADO_CLIENTE,P234_COD_FLETE,P234_TIPO_ENTREGA,P234_FEC_VENCIMIENTO,P234_FEC_COMPROBANTE,P234_DIAS_VENCIM_PEDIDO,P234_VALOR_CARPETA,P234_COD_MONEDA'
,p_attribute_03=>'P0_MENSAJE_VALIDACION,P234_COD_SUCURSAL,P234_IND_LLEVA_OC,P234_TIP_CLIENTE,P234_NRO_COMPROBANTE,P234_FECHA_TOPE_FACTURACION,P234_NOM_CLIENTE,P234_COD_DIRECCION,P234_LIMITE_CREDITO,P234_COD_CONDICION_VENTA,P234_COD_LISTA_PRECIO,P234_COD_VENDEDOR,P234_'
||'SALDO_DOLARES,P234_SALDO_GS,P234_SALDO_TOTAL,P234_POSIBLE,P234_DIR_CLIENTE,P234_TEL_CLIENTE,P234_RUC,P234_NRO_INSCRIPCION_AD,P234_TIPO_ENTREGA_CIUDAD,P234_IND_CONFIRMAR_FACTURA,P234_COPIANDO,P234_SOBREGIRADO,P234_DESC_JERARQUIA,P234_DESC_SCORING,P234'
||'_DERIVADO,P234_IND_IMPRESO,P234_TIP_COMPROBANTE_REF,P234_IND_EXENTO_AD,P234_TIPO_IMPUESTO,P234_TIPO_CLIENTE,P234_COD_MODEDA_DOL,P234_COD_MODEDA_GS,P234_VALORES_ADEPOSITAR,P234_NRO_JERARQUIA,P234_PLAZO,P234_TIP_DOCUMENTO,P234_NIVEL,P234_ESTADO_CLIENTE'
||',P234_COD_FLETE,P234_TIPO_ENTREGA,P234_FEC_VENCIMIENTO,P234_FEC_COMPROBANTE,P234_DIAS_VENCIM_PEDIDO,P234_VALOR_CARPETA,P234_COD_MONEDA,P234_COD_SUCURSAL_DIST,P234_CORREO'
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
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(58327111006331308)
,p_name=>'Obtiene datos de sucursales'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P234_COD_SUCURSAL_DIST'
,p_condition_element=>'P234_COD_SUCURSAL_DIST'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(58327268348331309)
,p_event_id=>wwv_flow_imp.id(58327111006331308)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P234_COD_SUCURSAL_DIST IS NOT NULL THEN',
'    BEGIN',
'      SELECT P.NOMBRE, P.DIRECCION, P.TELEFONO,  P.COD_PAIS, P.COD_PROVINCIA, P.COD_CIUDAD',
'        INTO :P234_NOMBRE, :P234_LUGAR_ENTREGA, :P234_TELEFONO_DIST,:P234_COD_PAIS, :P234_COD_PROVINCIA, :P234_COD_CIUDAD',
'        FROM CC_CLIENTES C, BS_SUCURSAL_CLIENTE P',
'       WHERE C.COD_EMPRESA = :P234_COD_EMPRESA',
'         AND C.COD_CLIENTE = :P234_COD_CLIENTE',
'         AND C.COD_PERSONA = P.COD_PERSONA',
'         AND P.COD_SUCURSAL = :P234_COD_SUCURSAL_DIST;',
'    EXCEPTION',
'      WHEN OTHERS THEN',
'        :P0_MENSAJE_VALIDACION := ''No existe la sucursal del cliente'';',
'      ',
'        :P234_NOMBRE        := NULL;',
'        :P234_LUGAR_ENTREGA := NULL;',
'        :P234_TELEFONO_DIST := NULL;',
'        RETURN;',
'    END;',
'  ',
'    BEGIN',
'      SELECT NVL(DEPOSITO_ENTREGA, :P234_TIPO_ENTREGA_CIUDAD)',
'        INTO :P234_TIPO_ENTREGA_CIUDAD',
'        FROM CC_CLIENTES C, BS_SUCURSAL_CLIENTE P, CIUDADES CI',
'       WHERE C.COD_EMPRESA = :P234_COD_EMPRESA',
'         AND C.COD_CLIENTE = :P234_COD_CLIENTE',
'         AND C.COD_PERSONA = P.COD_PERSONA',
'         AND P.COD_SUCURSAL = :P234_COD_SUCURSAL_DIST',
'         AND CI.COD_PAIS = P.COD_PAIS',
'         AND CI.COD_PROVINCIA = P.COD_PROVINCIA',
'         AND CI.COD_CIUDAD = P.COD_CIUDAD;',
'    EXCEPTION',
'      WHEN OTHERS THEN',
'        NULL;',
'    END;',
'  ',
'  END IF;',
'',
'  IF :P234_COD_SUCURSAL_DIST IS NULL THEN',
'    DECLARE',
'      VEXISTE VARCHAR2(30);',
'      VERROR EXCEPTION;',
'    BEGIN',
'      BEGIN',
'        SELECT ''S''',
'          INTO VEXISTE',
'          FROM CC_CLIENTES C, BS_SUCURSAL_CLIENTE P',
'         WHERE C.COD_EMPRESA = :P234_COD_EMPRESA',
'           AND C.COD_CLIENTE = :P234_COD_CLIENTE',
'           AND C.COD_PERSONA = P.COD_PERSONA',
'           AND ROWNUM = 1',
'           AND C.TIP_CLIENTE IN (''1'', ''27'', ''63'');',
'        IF NVL(VEXISTE, ''N'') = ''S'' THEN',
'          RAISE VERROR;',
'        END IF;',
'      EXCEPTION',
'        WHEN VERROR THEN',
'          :P0_MENSAJE_VALIDACION := ''Debe seleccionar la Sucursal del Distribuidor'';',
'          RETURN;',
'        WHEN OTHERS THEN',
'          :P234_NOMBRE        := NULL;',
'          :P234_LUGAR_ENTREGA := NULL;',
'          :P234_TELEFONO_DIST := NULL;',
'      END;',
'    END;',
'  ',
'  END IF;',
'',
'  :P234_TIPO_ENTREGA := NULL;',
'  :P234_COD_FLETE    := NULL;',
'  :P234_SUCURSAL_DIST_AUX := :P234_COD_SUCURSAL_DIST;'))
,p_attribute_02=>'P234_COD_SUCURSAL_DIST,P234_COD_EMPRESA,P234_COD_CLIENTE,P234_TIPO_ENTREGA_CIUDAD'
,p_attribute_03=>'P234_NOMBRE,P234_LUGAR_ENTREGA,P234_TELEFONO_DIST,P0_MENSAJE_VALIDACION,P234_TIPO_ENTREGA_CIUDAD,P234_TIPO_ENTREGA,P234_COD_FLETE,P234_SUCURSAL_DIST_AUX,P234_COD_PROVINCIA, P234_COD_CIUDAD'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(58327524083331312)
,p_name=>'Verifica orden'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P234_NRO_ORDEN_COMPRA'
,p_condition_element=>'P234_NRO_ORDEN_COMPRA'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'focusout'
,p_da_event_comment=>'Verifica orden'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(58327612539331313)
,p_event_id=>wwv_flow_imp.id(58327524083331312)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P234_IND_LLEVA_OC = ''S'' THEN',
'    IF :P234_NRO_ORDEN_COMPRA IS NOT NULL THEN',
'      DECLARE',
'        VEXISTE     VARCHAR2(10);',
'        VNRO_PEDIDO VARCHAR2(60);',
'      BEGIN',
'        SELECT ''S'', MAX(NRO_COMPROBANTE)',
'          INTO VEXISTE, VNRO_PEDIDO',
'          FROM VT_PEDIDOS_CABECERA C',
'         WHERE C.COD_EMPRESA = :P234_COD_EMPRESA',
'           AND NRO_ORDEN_COMPRA = :P234_NRO_ORDEN_COMPRA',
'           AND C.COD_CLIENTE = :P234_COD_CLIENTE',
'           AND C.FEC_COMPROBANTE > ADD_MONTHS(SYSDATE, -12)',
'           AND ROWNUM = 1;',
'      ',
'        IF NVL(VEXISTE, ''N'') = ''S'' AND VNRO_PEDIDO IS NOT NULL THEN',
'          :P0_MENSAJE_VALIDACION := ''La OC ya existe para el cliente en el numero de pedido '' ||',
'                                    VNRO_PEDIDO;',
'        END IF;',
'      EXCEPTION',
'        WHEN OTHERS THEN',
'          NULL;',
'      END;',
'    ELSE',
unistr('      :P0_MENSAJE_VALIDACION := ''Debe cargar un n\00FAmero de OC'';'),
'      RETURN;',
'    END IF;',
'  END IF;'))
,p_attribute_02=>'P234_IND_LLEVA_OC,P234_NRO_ORDEN_COMPRA,P234_COD_EMPRESA,P234_COD_CLIENTE'
,p_attribute_03=>'P0_MENSAJE_VALIDACION'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(58327704884331314)
,p_name=>'Verificaciones de vendedores'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P234_COD_VENDEDOR'
,p_condition_element=>'P234_COD_VENDEDOR'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'focusout'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(58327861608331315)
,p_event_id=>wwv_flow_imp.id(58327704884331314)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P234_COD_VENDEDOR is not null then',
'		declare',
'				vestado varchar2(1);',
'		begin',
'				begin',
'					  select nvl( v.descripcion, p.nombre ),',
'					  			 v.estado',
'					    into :P234_NOM_VENDEDOR,',
'					    	   vestado',
'					    from fv_vendedores v, ',
'					         personas p ',
'					   where v.cod_empresa  = :P234_COD_EMPRESA',
'					     and v.cod_vendedor = :P234_COD_VENDEDOR',
'					     and v.cod_persona  = p.cod_persona;',
'				exception',
'					  when no_data_found then',
'						    :P234_NOM_VENDEDOR := NULL;',
unistr('						    :P0_MENSAJE_VALIDACION := ''No se encuentra c\00F3digo de vendedor. Favor verificar el c\00F3digo ingresado. '';'),
'						    RETURN;',
'					  when others then',
'						    :P234_NOM_VENDEDOR := NULL;',
'						    :P0_MENSAJE_VALIDACION := ''Error al consultar vendedores. ''|| sqlerrm;',
'						    RETURN;       ',
'				end;',
'				--',
'				if nvl(vestado, ''I'') <> ''A'' then',
'					  :P234_NOM_VENDEDOR := NULL;',
'				    :P0_MENSAJE_VALIDACION := ''El vendedor ingresado se encuentra inactivo. '';',
'				    RETURN;',
'				end if;',
'				--',
'				if :P234_TIP_CLIENTE IN ( bs_busca_parametro(''VT'', ''VT_TIPO_PERS_EMP''), bs_busca_parametro(''VT'', ''VT_TIPO_PERS_EMP_CPH'')) and :P234_COD_VENDEDOR <> bs_busca_parametro(''VT'', ''VT_COD_VEND_PERSONAL'') then',
'					  IF :P234_COD_VENDEDOR <> bs_busca_parametro(''VT'', ''VT_VEND_PREMIOS'') ',
'					  		and :P234_COD_VENDEDOR not in (''195'')  THEN					  ',
'						    :P234_NOM_VENDEDOR := NULL;',
unistr('						    :P0_MENSAJE_VALIDACION := ''El c\00F3digo de vendedor no corresponde. Debe asignar el c\00F3digo de vendedor asignado para las ventas a colaboradores. '';'),
'						    RETURN;',
'				    END IF;',
'				end if;',
'		end;',
'end if;',
'',
'if :P234_COD_VENDEDOR = ''18'' then',
'        :P234_OCULTAR  := 1;      ',
'else',
'        :P234_OCULTAR  := 2;',
'end if;',
'',
'if :P234_COD_VENDEDOR = ''19'' then',
'		:P234_COD_CONDICION_VENTA := ''20'' ;',
'		:P234_COMENTARIO          := ''FACTURAR DEL DEPOSITO''||'' ''||:P234_COD_SUCURSAL;',
'else ',
'		if :P234_COD_VENDEDOR in( ''193'' ) then	',
'                :P234_OCULTAR := 3;',
'		else',
'             :P234_OCULTAR := 4;',
'				IF :P234_COD_VENDEDOR in (''194'',''195'',''196'',''197'') THEN',
'			      :P234_DERIVADO := ''MA'';',
'						IF :P234_COD_VENDEDOR in (''194'',''196'') THEN',
'                                :P234_OCULTAR := 5;',
'					  END IF;	',
'				END IF;',
'		end if;	',
'end if;',
''))
,p_attribute_02=>'P234_COD_VENDEDOR,P234_COD_EMPRESA,P234_TIP_CLIENTE'
,p_attribute_03=>'P234_NOM_VENDEDOR,P0_MENSAJE_VALIDACION,P234_OCULTAR,P234_DERIVADO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(58328105205331318)
,p_name=>'Muestra campos sucursales, nombres, ofertas'
,p_event_sequence=>70
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P234_OCULTAR'
,p_condition_element=>'P234_OCULTAR'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'1'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(58328224390331319)
,p_event_id=>wwv_flow_imp.id(58328105205331318)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P234_COD_SUC_OFER,P234_NOM_SUC_OFE,P234_IND_OFERTAS'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(58328452061331321)
,p_name=>'Oculta campos sucursales, nombres, ofertas'
,p_event_sequence=>80
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P234_OCULTAR'
,p_condition_element=>'P234_OCULTAR'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'2'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(58328642353331323)
,p_event_id=>wwv_flow_imp.id(58328452061331321)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P234_COD_SUC_OFER,P234_NOM_SUC_OFE,P234_IND_OFERTAS'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(58328774466331324)
,p_name=>unistr('Muestra motivos, secci\00F3n y d\00EDas')
,p_event_sequence=>90
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P234_OCULTAR'
,p_condition_element=>'P234_OCULTAR'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'3'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_da_event_comment=>unistr('Muestra motivos, secci\00F3n y d\00EDas')
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(58328853980331325)
,p_event_id=>wwv_flow_imp.id(58328774466331324)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P234_MOTIVO,P234_SECCION_PRESTAMO,P234_DIAS'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(58328967947331326)
,p_name=>unistr('Oculta motivos, secci\00F3n y d\00EDas')
,p_event_sequence=>100
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P234_OCULTAR'
,p_condition_element=>'P234_OCULTAR'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'4'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(58329117898331328)
,p_event_id=>wwv_flow_imp.id(58328967947331326)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P234_MOTIVO,P234_SECCION_PRESTAMO,P234_DIAS'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(58329290021331329)
,p_name=>unistr('Muestra d\00EDas y secci\00F3n prestamos ')
,p_event_sequence=>110
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P234_OCULTAR'
,p_condition_element=>'P234_OCULTAR'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'5'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_da_event_comment=>unistr('Muestra d\00EDas y secci\00F3n prestamos ')
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(58329360102331330)
,p_event_id=>wwv_flow_imp.id(58329290021331329)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P234_DIAS,P234_SECCION_PRESTAMO'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(58329452293331331)
,p_name=>'Validaciones condiciones ventas'
,p_event_sequence=>120
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P234_COD_CONDICION_VENTA'
,p_condition_element=>'P234_COD_CONDICION_VENTA'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_da_event_comment=>'Validaciones condiciones ventas'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(58329573464331332)
,p_event_id=>wwv_flow_imp.id(58329452293331331)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P234_COD_CONDICION_VENTA IS NULL THEN',
'RETURN;',
'END IF;',
'IF :P234_COD_CONDICION_VENTA IS NOT NULL THEN',
':P234_COD_CONDICION_VENTA_OLD := :P234_COD_CONDICION_VENTA;',
'END IF;',
'IF :P234_CARGA_CONDICION <> ''S'' THEN',
'DECLARE',
'  VALERTA       NUMBER;',
'  VAUTORIZACION VARCHAR2(1);',
'  VAUTORIZADO   VARCHAR2(1);',
'BEGIN',
'  SELECT C.DESCRIPCION, LP.COD_MONEDA, RECARGO',
'    INTO :P234_DESC_CONDICION, :P234_COD_MONEDA, :P234_RECARGO',
'    FROM CC_CONDICIONES_VENTAS C, VT_LISTAS_PRECIOS_CAB LP',
'   WHERE C.COD_EMPRESA = :P234_COD_EMPRESA',
'     AND C.ESTADO = ''A''',
'     AND C.COD_CONDICION_VENTA = :P234_COD_CONDICION_VENTA',
'     AND LP.COD_EMPRESA = C.COD_EMPRESA',
'     AND LP.COD_LISTA_PRECIO = C.COD_LISTA_PRECIO;',
'EXCEPTION',
'  WHEN NO_DATA_FOUND THEN',
'    :P234_DESC_CONDICION   := NULL;',
'    :P234_COD_LISTA_PRECIO := NULL;',
'    :P234_COD_MONEDA       := NULL;',
'    :P234_DESC_MONEDA      := NULL;',
unistr('    :P0_MENSAJE_VALIDACION := ''Condici\00F3n de venta no puede aplicarse al cliente. '';'),
'    RETURN;',
'  WHEN OTHERS THEN',
'    :P234_DESC_CONDICION   := NULL;',
'    :P234_COD_LISTA_PRECIO := NULL;',
'    :P234_COD_MONEDA       := NULL;',
'    :P234_DESC_MONEDA      := NULL;',
unistr('    :P0_MENSAJE_VALIDACION := ''Error al consultar la condici\00F3n de venta. '' ||'),
'                              SQLERRM;',
'    RETURN;',
'END;',
'ELSE',
'DECLARE',
'  VAUTORIZACION VARCHAR2(1);',
'  VAUTORIZADO   VARCHAR2(1);',
'  REQUIERE_AUT EXCEPTION;',
'BEGIN',
'  SELECT C.DESCRIPCION, LP.COD_MONEDA, RECARGO',
'    INTO :P234_DESC_CONDICION, :P234_COD_MONEDA, :P234_RECARGO',
'    FROM CC_CONDICIONES_VENTAS C, VT_LISTAS_PRECIOS_CAB LP',
'   WHERE C.COD_EMPRESA = :P234_COD_EMPRESA',
'     AND C.ESTADO = ''A''',
'     AND C.COD_CONDICION_VENTA = :P234_COD_CONDICION_VENTA',
'     AND LP.COD_EMPRESA = C.COD_EMPRESA',
'     AND LP.COD_LISTA_PRECIO = C.COD_LISTA_PRECIO;',
'EXCEPTION',
'  WHEN NO_DATA_FOUND THEN',
'    :P234_DESC_CONDICION   := NULL;',
'    :P234_COD_LISTA_PRECIO := NULL;',
'    :P234_RECARGO          := NULL;',
'    :P234_COD_MONEDA       := NULL;',
'    :P234_DESC_MONEDA      := NULL;',
unistr('    :P0_MENSAJE_VALIDACION := ''Condici\00F3n de venta no puede aplicarse al cliente. '';'),
'    RETURN;',
'  WHEN OTHERS THEN',
'    :P234_DESC_CONDICION   := NULL;',
'    :P234_COD_LISTA_PRECIO := NULL;',
'    :P234_RECARGO          := NULL;',
'    :P234_COD_MONEDA       := NULL;',
'    :P234_DESC_MONEDA      := NULL;',
unistr('    :P0_MENSAJE_VALIDACION := ''Error al consultar la condici\00F3n de venta. '' ||'),
'                              SQLERRM;',
'    RETURN;',
'END;',
'END IF;',
'BEGIN',
'SELECT COD_LISTA_PRECIO',
'  INTO :P234_COD_LISTA_PRECIO',
'  FROM CC_CLIENTES',
' WHERE COD_EMPRESA = :P234_COD_EMPRESA',
'   AND COD_CLIENTE = :P234_COD_CLIENTE;',
'EXCEPTION',
'WHEN OTHERS THEN',
'  :P234_COD_LISTA_PRECIO := NULL;',
'END;',
'IF :P234_RECARGO IS NULL THEN',
'IF :P234_COD_CONDICION_VENTA =',
'   BS_BUSCA_PARAMETRO(''VT'', ''VT_COND_CONTADO'') OR',
'   :P234_COD_CONDICION_VENTA =',
'   BS_BUSCA_PARAMETRO(''VT'', ''VT_COND_CONT_ST'') THEN',
'  :P234_RECARGO := 0;',
'ELSE',
'  :P234_RECARGO := 3;',
'END IF;',
'END IF;',
'IF :P234_COD_CONDICION_VENTA =',
' BS_BUSCA_PARAMETRO(''VT'', ''VT_COND_CONT_ST'') THEN',
':P234_COD_LISTA_PRECIO := ''15'';',
'END IF;',
'IF :P234_COD_CLIENTE IS NOT NULL THEN',
'DECLARE',
'  VSG VARCHAR2(20);',
'BEGIN',
'  SELECT IND_FINANCIACION',
'    INTO VSG',
'    FROM CC_CLIENTES',
'   WHERE COD_EMPRESA = :P234_COD_EMPRESA',
'     AND COD_CLIENTE = :P234_COD_CLIENTE;',
'  IF NVL(VSG, ''N'') = ''S'' THEN',
'    :P234_RECARGO := 0;',
'  END IF;',
'EXCEPTION',
'  WHEN OTHERS THEN',
'    VSG := NULL;',
'END;',
'END IF;',
':P234_RECARGO := 0;',
'IF NVL(:P234_TIP_COMPROBANTE_REF, ''x'') = ''SNC'' THEN',
':P234_COD_CONDICION_VENTA := :P234_COD_CONDICION_VENTA;',
':P234_COD_LISTA_PRECIO    := :P234_COD_LISTA_PRECIO;',
':P234_COD_MONEDA          := ''1'';',
':P234_COD_SUCURSAL_DIST   := ''1'';',
':P234_TIPO_ENTREGA        := :P234_TIPO_ENTREGA;',
':P234_COD_FLETE           := :P234_COD_FLETE;',
'END IF;'))
,p_attribute_02=>'P234_COD_CONDICION_VENTA,P234_CARGA_CONDICION,P234_COD_EMPRESA,P234_COD_CLIENTE,P234_RECARGO,P234_TIPO_ENTREGA,P234_COD_FLETE'
,p_attribute_03=>'P234_COD_CONDICION_VENTA_OLD,P234_DESC_CONDICION,P234_COD_MONEDA,P234_RECARGO,P234_COD_LISTA_PRECIO,P234_DESC_MONEDA,P0_MENSAJE_VALIDACION,P234_TIPO_ENTREGA,P234_COD_FLETE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(58330565414331342)
,p_event_id=>wwv_flow_imp.id(58329452293331331)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P234_COD_CONDICION_VENTA_OLD <> :P234_COD_CONDICION_VENTA and :P234_COD_CONDICION_VENTA_OLD is not null and (:P234_ESTADO =''P'' OR :P234_ESTADO IS NULL) then',
'    inv.vtpedido.pr_cambios_vtpedido(p_control_fin               => :P234_CONTROL_FIN,',
'                    p_recargo                    => :P234_RECARGO,',
'                    p_mensaje_error              => :P0_MENSAJE_VALIDACION,',
'                    p_cod_sucursal               => :P234_COD_SUCURSAL,',
'                    p_mantiene_precio            => :P234_MANTIENE_PRECIO,',
'                    p_variable_cod_empresa       => :P234_COD_EMPRESA,',
'                    p_variable_cod_moneda_base   => :P234_COD_MONEDA_BASE,',
'                    p_cab_ind_exento_ad          => :P234_IND_EXENTO_AD,',
'                    p_cab_tipo_impuesto          => :P234_TIPO_IMPUESTO,',
'                    p_cab_cod_client             => :P234_COD_CLIENTE,',
'                    p_cab_cod_lista_precio       => :P234_COD_LISTA_PRECIO,',
'                    p_cab_recargo                => :P234_RECARGO,',
'                    p_cab_cod_moneda             => :P234_COD_MONEDA,',
'                    p_variable_cod_moneda_precio => :P234_COD_MONEDA_PRECIO,',
'                    p_cab_cambio_moneda_precio   => :P234_CAMBIO_MONEDA_PRECIO,',
'                    p_cab_tip_cambio             => :P234_TIP_CAMBIO,',
'                    p_cab_decimales              => :P234_DECIMALES,',
'                    p_cab_fec_comprobante        => :P234_FEC_COMPROBANTE,',
'                    p_cab_gravadas_parcial       =>  :P234_GRAVADAS_PARCIAL,',
'                    p_cab_exentas_parcial        => :P234_EXENTAS_PARCIAL,',
'                    p_cab_tip_cambio_compra      =>  :P234_TIP_CAMBIO_COMPRA);',
'',
'                    ',
'    inv.vtpedido.pr_cambios2(p_cod_cliente                 => :P234_COD_CLIENTE,',
'                    p_cod_condicion_venta      => :P234_COD_CONDICION_VENTA,',
'                    p_cod_lista_precio         => :P234_COD_LISTA_PRECIO,',
'                    p_cod_sucursal             => :P234_COD_SUCURSAL,',
'                    p_cod_empresa              => :P234_COD_EMPRESA,',
'                    p_fec_comprobante          => :P234_FEC_COMPROBANTE,',
'                    p_cod_flete                => :P234_COD_FLETE,',
'                    p_ind_tipo_pedido          => :P234_IND_TIPO_PEDIDO,',
'                    p_decimales                => :P234_DECIMALES,',
'                    p_mensaje_error            =>  :P0_MENSAJE_VALIDACION,',
'                    p_var_mult                 => :P234_VAR_MULT,',
'                    p_var_div                  => :P234_VAR_DIV,',
'                    p_var_recargo              => :P234_RECARGO,',
'                    p_cab_iva_parcial          => :P234_IVA_PARCIAL,',
'                    p_cab_subtotal_parcial     => :P234_SUBTOTAL_PARCIAL,',
'                    p_cab_gravadas_parcial     => :P234_GRAVADAS_PARCIAL,',
'                    p_cab_exentas_parcial      => :P234_EXENTAS_PARCIAL,',
'                    p_cab_porcentaje_descuento => :P234_PORCENTAJE_DESCUENTO,',
'                    p_cab_descuento            => :P234_DESCUENTO,',
'                    p_cab_total_iva            => :P234_TOTAL_IVA,',
'                    p_cab_subtotal             => :P234_SUBTOTAL,',
'                    p_cab_gravadas             => :P234_GRAVADAS,',
'                    p_cab_exentas              => :P234_EXENTAS,',
'                    p_cab_recargo_porc         => :P234_RECARGO_PORC,',
'                    p_cab_recargo              => :P234_RECARGO,',
'                    p_cab_tip_cambio           => :P234_TIP_CAMBIO,',
'                    p_cab_flete_total          => :P234_FLETE_TOTAL,',
'                    p_var_porc_recargo_ant     => :P234_PORC_RECARGO_ANT,',
'                    p_cab_total                => :P234_TOTAL);',
'end iF;',
':P234_RECARGO := 0;',
'',
'',
''))
,p_attribute_02=>'P234_CONTROL_FIN,P234_RECARGO,P234_COD_SUCURSAL,P234_MANTIENE_PRECIO,P234_COD_EMPRESA,P234_COD_MONEDA_BASE,P234_IND_EXENTO_AD,P234_TIPO_IMPUESTO,P234_COD_CLIENTE,P234_COD_LISTA_PRECIO,P234_COD_MONEDA,P234_COD_MONEDA_PRECIO,P234_TIP_CAMBIO,P234_DECIMA'
||'LES,P234_FEC_COMPROBANTE,P234_GRAVADAS_PARCIAL,P234_EXENTAS_PARCIAL,P234_TIP_CAMBIO_COMPRA,P234_COD_CONDICION_VENTA_OLD,P234_COD_CONDICION_VENTA,P234_ESTADO,P234_COD_FLETE,P234_IND_TIPO_PEDIDO,P234_VAR_MULT,P234_VAR_DIV,P234_IVA_PARCIAL,P234_SUBTOTAL'
||'_PARCIAL,P234_PORCENTAJE_DESCUENTO,P234_DESCUENTO,P234_TOTAL_IVA,P234_SUBTOTAL,P234_GRAVADAS,P234_EXENTAS,P234_RECARGO_PORC,P234_PORC_RECARGO_ANT,P234_TOTAL'
,p_attribute_03=>'P0_MENSAJE_VALIDACION,P234_COD_MONEDA_BASE,P234_GRAVADAS_PARCIAL,P234_EXENTAS_PARCIAL,P234_TIP_CAMBIO_COMPRA,P234_IND_TIPO_PEDIDO,P234_VAR_MULT,P234_VAR_DIV,P234_IVA_PARCIAL,P234_SUBTOTAL_PARCIAL,P234_PORCENTAJE_DESCUENTO,P234_TOTAL_IVA,P234_SUBTOTAL'
||',P234_GRAVADAS,P234_EXENTAS,P234_RECARGO_PORC,P234_RECARGO,P234_FLETE_TOTAL,P234_PORC_RECARGO_ANT,P234_TOTAL,P234_COD_MONEDA'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(59737476845031607)
,p_name=>'Calcula monto'
,p_event_sequence=>130
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P234_COD_LISTA_PRECIO'
,p_bind_type=>'bind'
,p_bind_event_type=>'focusout'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(59737702090031610)
,p_event_id=>wwv_flow_imp.id(59737476845031607)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P234_LISTA_PRECIO_OLD <> :P234_COD_LISTA_PRECIO AND',
'     :P234_LISTA_PRECIO_OLD IS NOT NULL AND',
'     (:P234_ESTADO = ''P'' OR :P234_ESTADO IS NULL) THEN',
'INV.VTPEDIDO.PR_CAMBIOS_VTPEDIDO(P_CONTROL_FIN            => :P234_CONTROL_FIN,',
'                             P_RECARGO                    => :P234_RECARGO,',
'                             P_MENSAJE_ERROR              => :P0_MENSAJE_VALIDACION,',
'                             P_COD_SUCURSAL               => :P234_COD_SUCURSAL,',
'                             P_MANTIENE_PRECIO            => :P234_MANTIENE_PRECIO,',
'                             P_VARIABLE_COD_EMPRESA       => :P234_COD_EMPRESA,',
'                             P_VARIABLE_COD_MONEDA_BASE   => :P234_COD_MONEDA_BASE,',
'                             P_CAB_IND_EXENTO_AD          => :P234_IND_EXENTO_AD,',
'                             P_CAB_TIPO_IMPUESTO          => :P234_TIPO_IMPUESTO,',
'                             P_CAB_COD_CLIENT             => :P234_COD_CLIENTE,',
'                             P_CAB_COD_LISTA_PRECIO       => :P234_COD_LISTA_PRECIO,',
'                             P_CAB_RECARGO                => :P234_RECARGO,',
'                             P_CAB_COD_MONEDA             => :P234_COD_MONEDA,',
'                             P_VARIABLE_COD_MONEDA_PRECIO => :P234_COD_MONEDA_PRECIO,',
'                             P_CAB_CAMBIO_MONEDA_PRECIO   => :P234_CAMBIO_MONEDA_PRECIO,',
'                             P_CAB_TIP_CAMBIO             => :P234_TIP_CAMBIO,',
'                             P_CAB_DECIMALES              => :P234_DECIMALES,',
'                             P_CAB_FEC_COMPROBANTE        => :P234_FEC_COMPROBANTE,',
'                             P_CAB_GRAVADAS_PARCIAL       => :P234_GRAVADAS_PARCIAL,',
'                             P_CAB_EXENTAS_PARCIAL        => :P234_EXENTAS_PARCIAL,',
'                             P_CAB_TIP_CAMBIO_COMPRA      => :P234_TIP_CAMBIO_COMPRA);',
'',
'INV.VTPEDIDO.PR_CAMBIOS2(P_COD_CLIENTE          => :P234_COD_CLIENTE,',
'                     P_COD_CONDICION_VENTA      => :P234_COD_CONDICION_VENTA,',
'                     P_COD_LISTA_PRECIO         => :P234_COD_LISTA_PRECIO,',
'                     P_COD_SUCURSAL             => :P234_COD_SUCURSAL,',
'                     P_COD_EMPRESA              => :P234_COD_EMPRESA,',
'                     P_FEC_COMPROBANTE          => :P234_FEC_COMPROBANTE,',
'                     P_COD_FLETE                => :P234_COD_FLETE,',
'                     P_IND_TIPO_PEDIDO          => :P234_IND_TIPO_PEDIDO,',
'                     P_DECIMALES                => :P234_DECIMALES,',
'                     P_MENSAJE_ERROR            => :P0_MENSAJE_VALIDACION,',
'                     P_VAR_MULT                 => :P234_VAR_MULT,',
'                     P_VAR_DIV                  => :P234_VAR_DIV,',
'                     P_VAR_RECARGO              => :P234_RECARGO,',
'                     P_CAB_IVA_PARCIAL          => :P234_IVA_PARCIAL,',
'                     P_CAB_SUBTOTAL_PARCIAL     => :P234_SUBTOTAL_PARCIAL,',
'                     P_CAB_GRAVADAS_PARCIAL     => :P234_GRAVADAS_PARCIAL,',
'                     P_CAB_EXENTAS_PARCIAL      => :P234_EXENTAS_PARCIAL,',
'                     P_CAB_PORCENTAJE_DESCUENTO => :P234_PORCENTAJE_DESCUENTO,',
'                     P_CAB_DESCUENTO            => :P234_DESCUENTO,',
'                     P_CAB_TOTAL_IVA            => :P234_TOTAL_IVA,',
'                     P_CAB_SUBTOTAL             => :P234_SUBTOTAL,',
'                     P_CAB_GRAVADAS             => :P234_GRAVADAS,',
'                     P_CAB_EXENTAS              => :P234_EXENTAS,',
'                     P_CAB_RECARGO_PORC         => :P234_RECARGO_PORC,',
'                     P_CAB_RECARGO              => :P234_RECARGO,',
'                     P_CAB_TIP_CAMBIO           => :P234_TIP_CAMBIO,',
'                     P_CAB_FLETE_TOTAL          => :P234_FLETE_TOTAL,',
'                     P_VAR_PORC_RECARGO_ANT     => :P234_PORC_RECARGO_ANT,',
'                     P_CAB_TOTAL                => :P234_TOTAL);',
'  END IF;',
'  :P234_RECARGO := 0;'))
,p_attribute_02=>'P234_CONTROL_FIN,P234_RECARGO,P234_COD_SUCURSAL,P234_MANTIENE_PRECIO,P234_COD_EMPRESA,P234_COD_MONEDA_BASE,P234_IND_EXENTO_AD,P234_TIPO_IMPUESTO,P234_COD_CLIENTE,P234_COD_LISTA_PRECIO,P234_COD_MONEDA,P234_COD_MONEDA_PRECIO,P234_TIP_CAMBIO,P234_DECIMA'
||'LES,P234_FEC_COMPROBANTE,P234_GRAVADAS_PARCIAL,P234_EXENTAS_PARCIAL,P234_TIP_CAMBIO_COMPRA,P234_COD_CONDICION_VENTA_OLD,P234_COD_CONDICION_VENTA,P234_ESTADO,P234_COD_FLETE,P234_IND_TIPO_PEDIDO,P234_VAR_MULT,P234_VAR_DIV,P234_IVA_PARCIAL,P234_SUBTOTAL'
||'_PARCIAL,P234_PORCENTAJE_DESCUENTO,P234_DESCUENTO,P234_TOTAL_IVA,P234_SUBTOTAL,P234_GRAVADAS,P234_EXENTAS,P234_RECARGO_PORC,P234_PORC_RECARGO_ANT,P234_TOTAL,P234_LISTA_PRECIO_OLD'
,p_attribute_03=>'P0_MENSAJE_VALIDACION,P234_COD_MONEDA_BASE,P234_GRAVADAS_PARCIAL,P234_EXENTAS_PARCIAL,P234_TIP_CAMBIO_COMPRA,P234_IND_TIPO_PEDIDO,P234_VAR_MULT,P234_VAR_DIV,P234_IVA_PARCIAL,P234_SUBTOTAL_PARCIAL,P234_PORCENTAJE_DESCUENTO,P234_TOTAL_IVA,P234_SUBTOTAL'
||',P234_GRAVADAS,P234_EXENTAS,P234_RECARGO_PORC,P234_RECARGO,P234_FLETE_TOTAL,P234_PORC_RECARGO_ANT,P234_TOTAL,P234_COD_MONEDA'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(59737807244031611)
,p_name=>'Valida comentarios'
,p_event_sequence=>140
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P234_COMENTARIO'
,p_condition_element=>'P234_COMENTARIO'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'focusout'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(59737965191031612)
,p_event_id=>wwv_flow_imp.id(59737807244031611)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P234_COMENTARIO is null and :P234_ENTREGA_REMISION = ''S'' then',
'	:P0_MENSAJE_VALIDACION := ''Se deben completar las instrucciones de entrega'';',
'end if;',
''))
,p_attribute_02=>'P234_COMENTARIO,P234_ENTREGA_REMISION'
,p_attribute_03=>'P0_MENSAJE_VALIDACION'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(59738067965031613)
,p_name=>'Valida tipo entrega'
,p_event_sequence=>150
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P234_TIPO_ENTREGA'
,p_condition_element=>'P234_TIPO_ENTREGA'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(59738160536031614)
,p_event_id=>wwv_flow_imp.id(59738067965031613)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P234_TIPO_ENTREGA_CIUDAD IS NOT NULL THEN',
'    BEGIN',
'      SELECT DESCRIPCION, COD_FLETE',
'        INTO :P234_DESC_FLETE, :P234_COD_FLETE',
'        FROM VT_FLETES',
'       WHERE COD_EMPRESA = :P234_COD_EMPRESA',
'         AND TIPO_ENTREGA = :P234_TIPO_ENTREGA',
'         AND ORIGEN_ENTREGA = :P234_TIPO_ENTREGA_CIUDAD',
'         AND ROWNUM = 1;',
'    EXCEPTION',
'      WHEN OTHERS THEN',
'        NULL;',
'      ',
'    END;',
'  ELSE',
'  ',
'    :P234_DESC_FLETE := NULL;',
'    :P234_COD_FLETE  := NULL;',
'  END IF;'))
,p_attribute_02=>'P234_TIPO_ENTREGA_CIUDAD,P234_COD_EMPRESA,P234_TIPO_ENTREGA'
,p_attribute_03=>'P234_DESC_FLETE,P234_COD_FLETE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(59738366599031616)
,p_name=>'Valida flete'
,p_event_sequence=>160
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P234_COD_FLETE'
,p_condition_element=>'P234_COD_FLETE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'focusout'
,p_display_when_type=>'NEVER'
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
 p_id=>wwv_flow_imp.id(59738461679031617)
,p_event_id=>wwv_flow_imp.id(59738366599031616)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P0_MENSAJE_VALIDACION := null;',
'IF :P234_COD_FLETE IS NOT NULL THEN',
'    BEGIN',
'      SELECT DESCRIPCION',
'        INTO :P234_DESC_FLETE',
'        FROM VT_FLETES',
'       WHERE COD_EMPRESA = :P234_COD_EMPRESA',
'         AND COD_FLETE = :P234_COD_FLETE',
'         AND TIPO_ENTREGA = :P234_TIPO_ENTREGA',
'         AND ACTIVO = ''S'';',
'    EXCEPTION',
'      WHEN OTHERS THEN',
'        :P0_MENSAJE_VALIDACION := ''No existe el codigo de flete'';',
'        :P234_DESC_FLETE       := NULL;',
'        RETURN;',
'    END;',
'  ELSE',
'    :P234_DESC_FLETE   := NULL;',
'    :P234_TIPO_ENTREGA := NULL;',
'  END IF;',
'  ---------------PARA COLOCAR LOS PARAMETROS EN PEDIDOS GENERADOS DESDE UNA SNC',
'  IF NVL(:P234_TIP_COMPROBANTE_REF, ''x'') = ''SNC'' AND',
'     :P234_COD_FLETE IS NULL THEN',
'    BEGIN',
'      SELECT DESCRIPCION',
'        INTO :P234_DESC_FLETE',
'        FROM VT_FLETES',
'       WHERE COD_EMPRESA = :P234_COD_EMPRESA',
'         AND COD_FLETE = :P234_COD_FLETE',
'         AND TIPO_ENTREGA = :P234_TIPO_ENTREGA',
'         AND ACTIVO = ''S'';',
'    EXCEPTION',
'      WHEN OTHERS THEN',
'        :P0_MENSAJE_VALIDACION := ''No existe el codigo de flete'';',
'        :P234_DESC_FLETE       := NULL;',
'        RETURN;',
'    END;',
'  END IF;'))
,p_attribute_02=>'P234_COD_FLETE,P234_COD_EMPRESA,P234_TIP_COMPROBANTE_REF'
,p_attribute_03=>'P234_DESC_FLETE,P0_MENSAJE_VALIDACION'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(59738595399031618)
,p_name=>'Valida nro obra'
,p_event_sequence=>170
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P234_NRO_OBRA'
,p_condition_element=>'P234_NRO_OBRA'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'focusout'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(59738670376031619)
,p_event_id=>wwv_flow_imp.id(59738595399031618)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P234_NRO_OBRA IS NULL THEN',
unistr('    :P0_MENSAJE_VALIDACION := ''Para continuar con la carga de productos se debe colocar el "N\00BA de obra" al que corresponde el pedido. De no estar relacionado con una obra, seleccionar la opci\00F3n "Ninguno" para continuar.'';'),
'    RETURN;',
'  ',
'  ELSIF :P234_NRO_OBRA <> ''0'' THEN',
'    DECLARE',
'      VCOND VARCHAR(5);',
'    BEGIN',
'      SELECT COD_CONDICION',
'        INTO VCOND',
'        FROM SM_OT_OBRA O',
'       WHERE O.NRO_COMPROBANTE = :P234_NRO_OBRA;',
'      IF VCOND IS NOT NULL AND VCOND <> :P234_COD_CONDICION_VENTA THEN',
unistr('        :P0_MENSAJE_VALIDACION := ''La condici\00F3n de venta del pedido no coincide con la registrada en el presupuesto de la obra.  Favor verificar antes de continuar.'';'),
'        RETURN;',
'      ELSIF VCOND IS NULL THEN',
unistr('        :P0_MENSAJE_VALIDACION := ''La condici\00F3n de venta en el presupuesto de obra no se encuentra registrado.  Favor ingresar dato antes de continuar.'';'),
'        RETURN;',
'      END IF;',
'    ',
'    EXCEPTION',
'      WHEN OTHERS THEN',
'        NULL;',
'    END;',
'  ',
'  END IF;'))
,p_attribute_02=>'P234_NRO_OBRA,P234_COD_CONDICION_VENTA'
,p_attribute_03=>'P0_MENSAJE_VALIDACION'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(59739572537031628)
,p_name=>'Valida monedas'
,p_event_sequence=>180
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P234_COD_MONEDA'
,p_condition_element=>'P234_COD_MONEDA'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(59739678690031629)
,p_event_id=>wwv_flow_imp.id(59739572537031628)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P234_COD_MONEDA IS NULL THEN',
'    RETURN;',
'  END IF;',
'',
'  DECLARE',
'    VALERTA NUMBER;',
'  BEGIN',
'    SELECT DESCRIPCION,',
'           TIPO_CAMBIO_DIA,',
'           NVL(DECIMALES, 0),',
'           TIPO_CAMBIO_COMPRA',
'      INTO :P234_DESC_MONEDA,',
'           :P234_TIP_CAMBIO,',
'           :P234_DECIMALES,',
'           :P234_TIP_CAMBIO_COMPRA',
'      FROM MONEDAS',
'     WHERE COD_MONEDA = :P234_COD_MONEDA;',
'    IF NVL(:P234_DECIMALES, 0) > 0 THEN',
'      :P234_DECIMALES := 2;',
'    END IF;',
'  EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'      :P234_DESC_MONEDA      := NULL;',
'      :P234_DECIMALES        := 0;',
unistr('      :P0_MENSAJE_VALIDACION := ''No se encuentra c\00F3digo de moneda.'';'),
'      RETURN;',
'    WHEN OTHERS THEN',
'      :P234_DESC_MONEDA      := NULL;',
'      :P234_DECIMALES        := 0;',
'      :P0_MENSAJE_VALIDACION := ''Error en la tabla de Monedas : '' ||',
'                                SQLERRM;',
'      RETURN;',
'  END;'))
,p_attribute_02=>'P234_COD_MONEDA,P234_DECIMALES'
,p_attribute_03=>'P234_DESC_MONEDA,P234_TIP_CAMBIO,P234_DECIMALES,P234_TIP_CAMBIO_COMPRA,P0_MENSAJE_VALIDACION'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(59739886033031631)
,p_name=>'Valida pedido anterior'
,p_event_sequence=>190
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P234_SER_PEDIDO_ANTERIOR'
,p_condition_element=>'P234_SER_PEDIDO_ANTERIOR'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'focusout'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(59739950773031632)
,p_event_id=>wwv_flow_imp.id(59739886033031631)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P234_NRO_PEDIDO_ANTERIOR IS NOT NULL THEN',
'    DECLARE',
'      VERROR EXCEPTION;',
'      VCLIENTE VARCHAR2(100);',
'    BEGIN',
'      IF NVL(VCLIENTE, ''0'') <> :P234_COD_CLIENTE THEN',
'        RAISE VERROR;',
'      END IF;',
'    EXCEPTION',
'      WHEN VERROR THEN',
'        :P0_MENSAJE_VALIDACION := ''Debe cargar el pedido anterior del cliente para los arreglos administrativos!'';',
'      WHEN OTHERS THEN',
'        NULL;',
'    END;',
'  END IF;'))
,p_attribute_02=>'P234_NRO_PEDIDO_ANTERIOR,P234_COD_CLIENTE'
,p_attribute_03=>'P0_MENSAJE_VALIDACION'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(59740004081031633)
,p_name=>unistr('Valida datos de env\00EDo')
,p_event_sequence=>200
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P234_IND_ENVIAR'
,p_bind_type=>'bind'
,p_bind_event_type=>'focusout'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(59740150647031634)
,p_event_id=>wwv_flow_imp.id(59740004081031633)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P234_IND_ENVIAR = ''S'' THEN',
'	  :P234_IND_GUARDA         := ''N'';',
'	  :P234_IND_TRANSPORTADORA := ''N'';',
'	  :P234_FEC_ENVIO := SYSDATE;',
'	  ',
'ELSIF :P234_IND_ENVIAR = ''N'' THEN',
'	  :P234_FEC_ENVIO := NULL;	',
'END IF;',
''))
,p_attribute_02=>'P234_IND_ENVIAR'
,p_attribute_03=>'P234_IND_GUARDA,P234_IND_TRANSPORTADORA,P234_FEC_ENVIO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(59740245353031635)
,p_name=>'Valida datos guarda'
,p_event_sequence=>210
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P234_IND_GUARDA'
,p_bind_type=>'bind'
,p_bind_event_type=>'focusout'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(59740322906031636)
,p_event_id=>wwv_flow_imp.id(59740245353031635)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
' IF :P234_IND_ENVIAR = ''S'' THEN',
'    :P234_FEC_ENVIO := SYSDATE;',
'  ELSIF :P234_IND_ENVIAR = ''N'' THEN',
'    :P234_FEC_ENVIO := NULL;',
'  END IF;',
'',
'  IF :P234_ENTREGA_REMISION = ''S'' THEN',
unistr('    :P0_MENSAJE_VALIDACION := ''El pedido ya tiene entrega con remisi\00F3n'';'),
'    :P234_IND_GUARDA       := ''N'';',
'    RETURN;',
'  END IF;',
''))
,p_attribute_02=>'P234_IND_ENVIAR,P234_ENTREGA_REMISION'
,p_attribute_03=>'P234_FEC_ENVIO,P0_MENSAJE_VALIDACION,P234_IND_GUARDA'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(59740452324031637)
,p_name=>'Valida ind transportador'
,p_event_sequence=>220
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P234_IND_TRANSPORTADORA'
,p_bind_type=>'bind'
,p_bind_event_type=>'focusout'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(59740561750031638)
,p_event_id=>wwv_flow_imp.id(59740452324031637)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P234_IND_ENVIAR = ''S'' THEN',
'    :P234_FEC_ENVIO := SYSDATE;',
'ELSIF :P234_IND_ENVIAR = ''N'' THEN',
'    :P234_FEC_ENVIO := NULL;',
'END IF;',
'',
'IF :P234_IND_TRANSPORTADORA = ''S'' THEN',
'    :P234_IND_ENVIAR := ''N'';',
'    :P234_IND_GUARDA := ''N'';',
'END IF;'))
,p_attribute_02=>'P234_IND_ENVIAR,P234_IND_TRANSPORTADORA'
,p_attribute_03=>'P234_FEC_ENVIO,P234_IND_GUARDA,P234_IND_ENVIAR'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(59740601278031639)
,p_name=>unistr('Valida entrega remisi\00F3n')
,p_event_sequence=>230
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P234_ENTREGA_REMISION'
,p_bind_type=>'bind'
,p_bind_event_type=>'focusout'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(59740715212031640)
,p_event_id=>wwv_flow_imp.id(59740601278031639)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P234_IND_GUARDA = ''S'' then',
unistr('	:P0_MENSAJE_VALIDACION := ''El pedido ya est\00E1 en guarda'';'),
'	:P234_ENTREGA_REMISION := ''N'';',
'	return;',
'end if;',
'',
'if :P234_COMENTARIO is null and :P234_ENTREGA_REMISION = ''S'' then',
'	:P0_MENSAJE_VALIDACION :=  ''Se debe completar el campo instrucciones de entrega'';',
'	return;',
'end if;'))
,p_attribute_02=>'P234_IND_GUARDA,P234_COMENTARIO,P234_ENTREGA_REMISION'
,p_attribute_03=>'P0_MENSAJE_VALIDACION,P234_ENTREGA_REMISION'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(59740811754031641)
,p_name=>'Valida confirma factura'
,p_event_sequence=>240
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P234_IND_CONFIRMAR_FACTURA'
,p_bind_type=>'bind'
,p_bind_event_type=>'focusout'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(59740942795031642)
,p_event_id=>wwv_flow_imp.id(59740811754031641)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P234_IND_ENVIAR = ''S'' THEN',
'    :P234_FEC_ENVIO := SYSDATE;',
'  ELSIF :P234_IND_ENVIAR = ''N'' THEN',
'    :P234_FEC_ENVIO := NULL;',
'  END IF;',
'',
'  IF :P234_IND_TRANSPORTADORA = ''S'' THEN',
'    :P234_IND_ENVIAR := ''N'';',
'    :P234_IND_GUARDA := ''N'';',
'  END IF;'))
,p_attribute_02=>'P234_IND_ENVIAR,P234_IND_TRANSPORTADORA'
,p_attribute_03=>'P234_FEC_ENVIO,P234_IND_GUARDA'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(68098812573978932)
,p_name=>unistr('Validaciones art\00EDculos_1')
,p_event_sequence=>250
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P234_COD_ART_CORTO'
,p_condition_element=>'P234_COD_ART_CORTO'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'focusout'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(68098919830978933)
,p_event_id=>wwv_flow_imp.id(68098812573978932)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P0_MENSAJE_VALIDACION := (f_mensaje_pedido(:P234_COD_CLIENTE,',
'                                            :P234_COD_CONDICION_VENTA,',
'                                            :P234_COD_LISTA_PRECIO,',
'                                            1,',
'                                            :P234_COD_ARTICULO, ',
'                                            0));',
'                                           '))
,p_attribute_02=>'P234_COD_CLIENTE,P234_COD_CONDICION_VENTA,P234_COD_LISTA_PRECIO,P234_COD_ARTICULO'
,p_attribute_03=>'P0_MENSAJE_VALIDACION'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(68099082655978934)
,p_event_id=>wwv_flow_imp.id(68098812573978932)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE ',
'    v_peso VARCHAR2(50);',
'    v_total_iva NUMBER;',
'    V_SUBTOTAL  NUMBER;',
'    V_TOTAL NUMBER;',
'    V_PRECIO_UNITARIO  NUMBER;',
'    V_TOTAL_IVA_1       NUMBER;',
'    V_MONTO_TOTAL   NUMBER;',
'',
'BEGIN ',
'V_PRECIO_UNITARIO  := replace(:P234_PRECIO_UNITARIO,''.'');',
'inv.vtpedido.pr_validaciones_articulos(p_cab_mantiene_precio  => :P234_MANTIENE_PRECIO,',
'                  p_cab_sucursal          => :P234_COD_SUCURSAL,',
'                  p_det_desc_articulo     => :P234_DESC_ARTICULO,',
'                  p_det_precio_unitario   => V_PRECIO_UNITARIO,',
'                  p_det_cod_moneda_base   => :P234_COD_MONEDA_BASE_1,',
'                  p_det_cod_grupo_art     => :P234_COD_GRUPO_ANT,',
'                  p_det_cod_origen_art    => :P234_COD_ORIGEN_ART,',
'                  p_det_modifica_precio   => :P234_MODIFICA_PRECIO,',
'                  p_det_porc_iva          => :P234_PORC_IVA_1,',
'                  p_det_cod_articulo      => :P234_COD_ARTICULO,',
'                  p_det_peso              => :P234_PESO,',
'                  p_det_volumen           => :P234_VOLUMEN,',
'                  p_det_ind_no_descuento  => :P234_IND_NO_DESCUENTO,',
'                  p_mensaje_error         => :P0_MENSAJE_VALIDACION,',
'                  p_cab_cod_empresa       => :P234_COD_EMPRESA,',
'                  p_det_cod_iva           => :P234_COD_IVA,',
'                  p_det_es_promo          => :P234_ES_PROMO_1,',
'                  p_det_porc_descuento    => :P234_PORC_DESCUENTO,',
'                  p_cab_cod_moneda_base   => :P234_COD_MONEDA_BASE,',
'                  p_cab_ind_exento_ad     => :P234_IND_EXENTO_AD,',
'                  p_cab_tipo_impuesto     => :P234_TIPO_IMPUESTO,',
'                  p_det_cantidad          => :P234_CANTIDAD,',
'                  p_cab_cod_lista_precio  => :P234_COD_LISTA_PRECIO,',
'                  p_cab_cod_cliente       => :P234_COD_CLIENTE,',
'                  p_cab_recargo           => :P234_RECARGO,',
'                  p_cab_cod_moneda_precio => :P234_COD_MONEDA_PRECIO,',
'                  p_cambio_moneda_precio  => :P234_CAMBIO_MONEDA_PRECIO,',
'                  p_cab_tip_cambio        => :P234_TIP_CAMBIO_COMPRA,',
'                  p_cab_decimales         => :P234_DECIMALES,',
'                  p_tip_cambio_compra     => :P234_TIP_CAMBIO_COMPRA,--:P234_TIP_CAMBIO_COMPRA,',
'                  p_det_precio_lista      => :P234_PRECIO_LISTA,',
'                  p_cab_fec_comprobante   => :P234_FEC_COMPROBANTE,',
'                  p_cab_gravadas_parcial  => :P234_GRAVADAS_PARCIAL,',
'                  p_det_importe_ant       => :P234_IMPORTE_ANT,',
'                  p_cab_exentas_parcial   => :P234_EXENTAS_PARCIAL,',
'                  p_det_cod_art_corto     => :P234_COD_ART_CORTO,',
'                  p_cab_cod_moneda        => :P234_COD_MONEDA);',
'IF :P234_COD_MONEDA = ''1'' THEN ',
'    :P234_PRECIO_UNITARIO  := TO_CHAR(V_PRECIO_UNITARIO,''999G999G999G999G999G999G990'');',
'    ',
'ELSE ',
'    :P234_PRECIO_UNITARIO  := TO_CHAR(V_PRECIO_UNITARIO,''999G999G999G999G990D00'');',
'    ',
'END IF;',
'',
'END;'))
,p_attribute_02=>'P234_MANTIENE_PRECIO,P234_COD_SUCURSAL,P234_PRECIO_UNITARIO,P234_COD_GRUPO_ANT,P234_COD_ORIGEN_ART,   P234_PORC_IVA_1,P234_COD_ARTICULO,P234_PESO,P234_VOLUMEN,P234_COD_EMPRESA,P234_COD_IVA,   P234_ES_PROMO_1,P234_PORC_DESCUENTO,P234_COD_MONEDA_BASE,P'
||'234_IND_EXENTO_AD,P234_TIPO_IMPUESTO,   P234_CANTIDAD,P234_COD_LISTA_PRECIO,P234_COD_CLIENTE,P234_RECARGO,P234_COD_MONEDA_PRECIO,   P234_CAMBIO_MONEDA_PRECIO,P234_TIP_CAMBIO,P234_DECIMALES,P234_TIP_CAMBIO_COMPRA,P234_PRECIO_LISTA,   P234_FEC_COMPROBA'
||'NTE,P234_GRAVADAS_PARCIAL,P234_EXENTAS_PARCIAL,P234_COD_ART_CORTO,P234_COD_MONEDA,   P234_MODIFICA_PRECIO,P234_IVA_ANT,P234_IMPORTE_ANT,P234_IND_NO_DESCUENTO,P234_COD_MONEDA_BASE_1'
,p_attribute_03=>'P234_DESC_ARTICULO,P234_COD_GRUPO_ANT,P234_COD_ORIGEN_ART,P234_PORC_IVA_1, P234_COD_ARTICULO,P234_VOLUMEN,P0_MENSAJE_VALIDACION,P234_COD_IVA,P234_PORC_DESCUENTO,P234_CANTIDAD, P234_PRECIO_LISTA,P234_GRAVADAS_PARCIAL,P234_EXENTAS_PARCIAL,P234_MODIFICA'
||'_PRECIO,P234_IMPORTE_ANT, P234_IND_NO_DESCUENTO,P234_COD_MONEDA_BASE_1,P234_PRECIO_UNITARIO,P234_PESO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(68099128132978935)
,p_event_id=>wwv_flow_imp.id(68098812573978932)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'inv.VTPEDIDO.PR_VALIDA_MIX_DESCUENTOS(P_VAR_CANTIDAD_PROMO_MIX  => :P234_CANTIDAD_PROMO_MIX,',
'                                    P_DET_COD_ARTICULO        => :P234_COD_ARTICULO,',
'                                    P_VAR_COD_EMPRESA         => :P234_COD_EMPRESA,',
'                                    P_VAR_COD_CLIENTE         => :P234_COD_CLIENTE,',
'                                    P_VAR_COD_LISTA_PRECIO    => :P234_COD_LISTA_PRECIO,',
'                                    P_DET_NRO_PROMO           => :P234_NRO_PROMO_1,',
'                                    P_DET_PORC_DESCUENTO      => :P234_PORC_DESCUENTO,',
'                                    P_DET_CANTIDAD            => :P234_CANTIDAD,',
'                                    P_DET_IND_PROMO           => :P234_IND_PROMO,',
'                                    P_VAR_COD_CONDICION_VENTA => :P234_COD_CONDICION_VENTA);',
'',
'  IF :P234_COD_SUCURSAL IN (''09'', ''105'', ''95'', ''30'') THEN',
'    BEGIN',
'      SELECT DESCUENTO',
'        INTO :P234_PORC_DESCUENTO',
'        FROM VT_OFERTAS_OUTLET',
'       WHERE COD_EMPRESA = :P234_COD_EMPRESA',
'         AND COD_ARTICULO = :P234_COD_ARTICULO',
'         AND FEC_CIERRE >= :P234_FEC_COMPROBANTE',
'         AND FEC_ALTA < :P234_FEC_COMPROBANTE',
'         AND COD_ARTICULO = :P234_COD_ARTICULO',
'         AND :P234_COD_SUCURSAL IN (''09'', ''105'', ''95'', ''30'');',
'    EXCEPTION',
'      WHEN OTHERS THEN',
'        :P234_PORC_DESCUENTO := 30;',
'    END;',
'  END IF;',
'  IF :P234_COD_SUCURSAL IN (''30-A'') THEN',
'    BEGIN',
'      SELECT PRECIO_DESCUENTO, 0',
'        INTO :P234_PRECIO_UNITARIO, :P234_PORC_DESCUENTO',
'        FROM VT_PRODUCTOS_RENTA_STNGO',
'       WHERE COD_EMPRESA = :P234_COD_EMPRESA',
'         AND COD_ARTICULO = :P234_COD_ARTICULO',
'         AND FEC_CIERRE >= :P234_FEC_COMPROBANTE',
'         AND FEC_ALTA <= :P234_FEC_COMPROBANTE',
'         AND COD_ARTICULO = :P234_COD_ARTICULO',
'         AND :P234_COD_SUCURSAL IN (''30-A'');',
'    EXCEPTION',
'      WHEN OTHERS THEN',
'        NULL;',
'    END;',
'  END IF;',
''))
,p_attribute_02=>'P234_COD_ARTICULO,P234_COD_EMPRESA,P234_COD_CLIENTE,P234_COD_LISTA_PRECIO,P234_NRO_PROMO_1,P234_PORC_DESCUENTO,   P234_CANTIDAD,P234_IND_PROMO,P234_COD_CONDICION_VENTA,P234_COD_SUCURSAL,P234_FEC_COMPROBANTE'
,p_attribute_03=>'P234_CANTIDAD_PROMO_MIX,P234_PORC_DESCUENTO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(68099292001978936)
,p_event_id=>wwv_flow_imp.id(68098812573978932)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE ',
'    V_PORC_RECARGO_ANT NUMBER;',
'    V_CARGA_PORC_RECARGO VARCHAR2(100);',
'    v_total_iva NUMBER;',
'    V_SUBTOTAL  NUMBER;',
'    V_TOTAL NUMBER;',
'    V_PRECIO_UNITARIO  NUMBER;',
'    V_TOTAL_IVA_1       NUMBER;',
'    V_MONTO_TOTAL   NUMBER;',
'BEGIN',
'v_total_iva := replace(:P234_TOTAL_IVA,''.'');',
'V_SUBTOTAL := replace(:P234_SUBTOTAL,''.'');',
'V_TOTAL   := replace(:P234_TOTAL,''.'');',
'V_PRECIO_UNITARIO  := replace(:P234_PRECIO_UNITARIO,''.'');',
'V_TOTAL_IVA_1 := replace(:P234_TOTAL_IVA_1,''.'');',
'V_MONTO_TOTAL := replace(:P234_MONTO_TOTAL,''.'');',
'',
':P234_DESCUENTO := NULL;',
':P234_RECARGO := 0;',
'v_total_iva := NULL;',
'V_SUBTOTAL := NULL;',
'V_TOTAL := NULL;',
'INV.VTPEDIDO.PR_CALCULA_RECARGO(P_DET_PORC_RECARGO_ANT => :P234_PORC_RECARGO_ANT,',
'P_DET_CARGA_PORC_RECARGO => V_CARGA_PORC_RECARGO,',
'P_CAB_DECIMALES => :P234_DECIMALES,',
'P_MENSAJE_ERROR => :P0_MENSAJE_VALIDACION,',
'P_VAR_MULT => :P234_VAR_MULT,',
'P_VAR_DIV => :P234_VAR_DIV,',
'P_DET_PORC_IVA => :P234_PORC_IVA_1,',
'P_DET_PRECIO_UNITARIO => V_PRECIO_UNITARIO,',
'P_DET_CANTIDAD_UB => :P234_CANTIDAD_UB,',
'P_DET_CANTIDAD => :P234_CANTIDAD,',
'P_DET_PORC_DESCUENTO => :P234_PORC_DESCUENTO,',
'P_DET_PORC_RECARGO => :P234_PORC_RECARGO,',
'P_DET_DESCUENTO => :P234_DESCUENTO,',
'P_DET_MONTO_TOTAL => V_MONTO_TOTAL,',
'P_DET_RECARGO => :P234_RECARGO,',
'P_VAR_PORC_IVA => :P234_PORC_IVA,',
'P_DET_COD_ARTICULO => :P234_COD_ARTICULO,',
'P_VAR_RECARGO => :P234_RECARGO,',
'P_DET_TOTAL_IVA => V_TOTAL_IVA_1,',
'P_CAB_IVA_PARCIAL => :P234_IVA_PARCIAL,',
'P_DET_IVA_ANT => :P234_IVA_ANT,',
'P_CAB_SUBTOTAL_PARCIAL => :P234_SUBTOTAL_PARCIAL,',
'P_DET_IMPORTE_ANT  => :P234_IMPORTE_ANT,',
'P_CAB_GRAVADAS_PARCIAL => :P234_GRAVADAS_PARCIAL,',
'P_CAB_EXENTAS_PARCIAL => :P234_EXENTAS_PARCIAL,',
'P_CAB_PORCENTAJE_DESCUENTO => :P234_PORCENTAJE_DESCUENTO,',
'P_CAB_DESCUENTO => :P234_DESCUENTO,',
'P_CAB_TOTAL_IVA => v_total_iva,',
'P_CAB_SUBTOTAL => V_SUBTOTAL,',
'P_CAB_GRAVADAS => :P234_GRAVADAS,',
'P_CAB_EXENTAS => :P234_EXENTAS,',
'P_CAB_TOTAL => V_TOTAL,',
'P_CAB_RECARGO_PORC => :P234_RECARGO_PORC,',
'P_CAB_RECARGO => :P234_RECARGO,',
'P_DET_MONTO_GRAVADA_10 => :P234_MONTO_GRAVADA_10,',
'P_DET_MONTO_GRAVADA_5 => :P234_MONTO_GRAVADA_5,',
'P_DET_MONTO_EXENTA => :P234_MONTO_EXENTA,',
'P_CAB_TIP_CAMBIO => :P234_TIP_CAMBIO,',
'P_COD_EMPRESA => :P234_COD_EMPRESA,',
'P_COD_FLETE => :P234_COD_FLETE,',
'P_CAB_FLETE_TOTAL => :P234_FLETE_TOTAL,',
'P_DET_TOTAL_PESO => :P234_TOTAL_PESO,',
'P_DET_TOTAL_VOLUMEN => :P234_TOTAL_VOLUMEN,',
'P_VAR_PORC_RECARGO_ANT => :P234_PORC_RECARGO_ANT);',
'',
':P234_TOTAL_IVA := TO_CHAR(v_total_iva,''999G999G999G999G999G999G990'');',
':P234_SUBTOTAL := TO_CHAR(V_SUBTOTAL,''999G999G999G999G999G999G990'');',
':P234_TOTAL   := TO_CHAR(V_TOTAL,''999G999G999G999G999G999G990'');',
':P234_PRECIO_UNITARIO  := TO_CHAR(V_PRECIO_UNITARIO,''999G999G999G999G999G999G990'');',
':P234_TOTAL_IVA_1 := TO_CHAR(V_TOTAL_IVA_1,''999G999G999G999G999G999G990'');',
':P234_MONTO_TOTAL := TO_CHAR(V_MONTO_TOTAL,''999G999G999G999G999G999G990'');',
'/*',
':P234_COD_MONEDA_BASE_1  := NULL;',
':P234_COD_GRUPO_ANT  := NULL;',
':P234_COD_ORIGEN_ART  := NULL;',
':P234_PORC_IVA_1  := NULL;',
':P234_VOLUMEN  := NULL;',
':P234_IND_NO_DESCUENTO  := NULL;',
':P234_COD_IVA  := NULL;',
':P234_RECARGO  := NULL;',
':P234_PRECIO_LISTA  := NULL;',
'',
':P234_DESCUENTO := NULL;',
':P234_RECARGO := 0;',
'v_total_iva := NULL;',
'V_SUBTOTAL := NULL;',
'V_TOTAL := NULL;*/',
'END;'))
,p_attribute_02=>'P234_DECIMALES,P234_VAR_MULT,P234_VAR_DIV,P234_PORC_IVA_1,P234_PRECIO_UNITARIO,P234_CANTIDAD,P234_PORC_DESCUENTO,   P234_PORC_RECARGO,P234_DESCUENTO_1,P234_MONTO_TOTAL,P234_RECARGO_1,P234_PORC_IVA,P234_COD_ARTICULO,   P234_RECARGO,P234_TOTAL_IVA_1,P2'
||'34_IVA_PARCIAL,P234_IVA_ANT,P234_SUBTOTAL_PARCIAL,P234_IMPORTE_ANT,   P234_GRAVADAS_PARCIAL,P234_EXENTAS_PARCIAL,P234_PORCENTAJE_DESCUENTO,P234_DESCUENTO,P234_TOTAL_IVA,   P234_SUBTOTAL,P234_GRAVADAS,P234_EXENTAS,P234_TOTAL,P234_RECARGO_PORC,P234_MON'
||'TO_GRAVADA_10,P234_MONTO_GRAVADA_5,   P234_MONTO_EXENTA,P234_TIP_CAMBIO,P234_COD_EMPRESA,P234_COD_FLETE,P234_TOTAL_PESO,P234_VOLUMEN'
,p_attribute_03=>'P0_MENSAJE_VALIDACION,P234_VAR_MULT,P234_VAR_DIV,P234_CANTIDAD_UB,P234_RECARGO,P234_TOTAL_IVA_1,P234_IVA_PARCIAL,   P234_IVA_ANT,P234_SUBTOTAL_PARCIAL,P234_IMPORTE_ANT,P234_GRAVADAS_PARCIAL,P234_EXENTAS_PARCIAL,   P234_PORCENTAJE_DESCUENTO,P234_GRAVA'
||'DAS,P234_EXENTAS,   P234_RECARGO_PORC,P234_MONTO_GRAVADA_5,P234_MONTO_GRAVADA_10,P234_MONTO_EXENTA,P234_FLETE_TOTAL,P234_PORC_RECARGO_ANT,P234_MONTO_TOTAL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(85580031019170119)
,p_event_id=>wwv_flow_imp.id(68098812573978932)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_FOCUS'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P234_COD_ARTICULO'
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(94557837195213406)
,p_event_id=>wwv_flow_imp.id(68098812573978932)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P234_COD_IVA = ''7'' THEN ',
'    :P234_VALIDA_ARTICULO :=  1;',
'ELSE ',
'    :P234_VALIDA_ARTICULO := 0;',
'END IF;'))
,p_attribute_02=>'P234_COD_IVA'
,p_attribute_03=>'P234_VALIDA_ARTICULO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(68100011350978944)
,p_name=>unistr('Validaciones datos art\00EDculos_1')
,p_event_sequence=>260
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P234_COD_ARTICULO'
,p_condition_element=>'P234_COD_ARTICULO'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'focusout'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(68100199871978945)
,p_event_id=>wwv_flow_imp.id(68100011350978944)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P0_MENSAJE_VALIDACION := (f_mensaje_pedido(:P234_COD_CLIENTE,',
'                                            :P234_COD_CONDICION_VENTA,',
'                                            :P234_COD_LISTA_PRECIO,',
'                                            1,',
'                                            :P234_COD_ARTICULO, ',
'                                            0));',
'                                            ',
':P234_DET_COMENTARIO := :P0_MENSAJE_VALIDACION;'))
,p_attribute_02=>'P234_COD_CLIENTE,P234_COD_CONDICION_VENTA,P234_COD_LISTA_PRECIO,P234_COD_ARTICULO'
,p_attribute_03=>'P0_MENSAJE_VALIDACION,P234_DET_COMENTARIO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(68100269845978946)
,p_event_id=>wwv_flow_imp.id(68100011350978944)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P234_TOTAL_IVA := replace(:P234_TOTAL_IVA,''.'');',
':P234_SUBTOTAL := replace(:P234_SUBTOTAL,''.'');',
':P234_TOTAL   := replace(:P234_TOTAL,''.'');',
':P234_PRECIO_UNITARIO  := replace(:P234_PRECIO_UNITARIO,''.'');',
':P234_TOTAL_IVA_1 := replace(:P234_TOTAL_IVA_1,''.'');',
':P234_MONTO_TOTAL := replace(:P234_MONTO_TOTAL,''.'');',
'inv.vtpedido.pr_validaciones_det_articulos(p_cop_mantiene_precio       => :P234_COD_MANTIENE_PRECIO,',
'            p_det_cod_articulo =>  :P234_COD_ARTICULO,',
'            p_det_desc_articulo => :P234_DESC_ARTICULO,',
'            p_det_precio_unitario => :P234_PRECIO_UNITARIO,',
'            p_det_cod_moneda_base => :P234_COD_MONEDA_BASE_1,',
'            p_det_cod_grupo_art => :P234_COD_GRUPO_ANT,',
'            p_det_cod_origen_art => :P234_COD_ORIGEN_ART,',
'            p_det_modifica_precio => :P234_MODIFICA_PRECIO,',
'            p_det_porc_iva => :P234_PORC_IVA_1,',
'            p_det_cod_art_corto => :P234_COD_ART_CORTO,',
'            p_det_peso => :P234_PESO,',
'            p_det_volumen => :P234_VOLUMEN,',
'            p_det_ind_no_descuento => :P234_IND_NO_DESCUENTO,',
'            p_var_cod_empresa => :P234_COD_EMPRESA,',
'            p_det_cod_iva  => :P234_COD_IVA,',
'            p_det_es_promo => :P234_ES_PROMO_1,',
'            p_det_porc_descuento  => :P234_PORC_DESCUENTO,',
'            p_cab_cod_condicion_venta  => :P234_COD_CONDICION_VENTA,',
'            p_var_cod_moneda_base => :P234_COD_MONEDA_BASE,',
'            p_cab_ind_exento_ad => :P234_IND_EXENTO_AD,',
'            p_cab_tipo_impuesto => :P234_TIPO_IMPUESTO,',
'            p_det_cantidad => :P234_CANTIDAD,',
'            p_cab_cod_sucursal => :P234_COD_SUCURSAL,',
'            p_cab_cod_cliente => :P234_COD_CLIENTE,',
'            p_var_recargo => :P234_RECARGO,',
'            p_cab_cod_lista_precio => :P234_COD_LISTA_PRECIO,',
'            p_cab_recargo  => :P234_RECARGO,',
'            p_cab_cod_moneda  => :P234_COD_MONEDA,',
'            p_var_cod_moneda_precio => :P234_COD_MONEDA_PRECIO,',
'            p_cab_cambio_moneda_precio => :P234_CAMBIO_MONEDA_PRECIO,',
'            p_cab_tip_cambio => :P234_TIP_CAMBIO,',
'            p_cab_decimales => :P234_DECIMALES,',
'            p_det_precio_lista => :P234_PRECIO_LISTA,',
'            p_cab_fec_comprobante => :P234_FEC_COMPROBANTE,',
'            p_cab_gravadas_parcial  => :P234_GRAVADAS_PARCIAL,',
'            p_det_importe_ant => :P234_IMPORTE_ANT,',
'            p_cab_exentas_parcial => :P234_EXENTAS_PARCIAL,',
'            p_det_total => :P234_TOTAL,',
'            p_var_descuento_gastro => :P234_DESCUENTO_GASTRO,',
'            p_det_comentario => :P234_COMENTARIO,',
'            p_mensaje_error => :P0_MENSAJE_VALIDACION,',
'            p_cab_tip_cambio_compra => :P234_TIP_CAMBIO_COMPRA,',
'            p_det_stock_actual => :P234_STOCK_ACTUAL_1,',
'            p_det_stock_reserv => :P234_STOCK_RESERV,',
'            p_cambio_moneda_precio => :P234_CAMBIO_MONEDA_PRECIO);',
'',
'IF :P234_COD_MONEDA = ''1'' THEN ',
'    :P234_PRECIO_UNITARIO  := TO_CHAR(:P234_PRECIO_UNITARIO,''999G999G999G999G999G999G990'');',
'    :P234_TOTAL_IVA := TO_CHAR(:P234_TOTAL_IVA,''999G999G999G999G999G999G990'');',
'    :P234_SUBTOTAL := TO_CHAR(:P234_SUBTOTAL,''999G999G999G999G999G999G990'');',
'    :P234_TOTAL   := TO_CHAR(:P234_TOTAL,''999G999G999G999G999G999G990'');',
'    /*:P234_TOTAL_IVA_1 := TO_CHAR(:P234_TOTAL_IVA_1,''999G999G999G999G999G999G990'');',
'    :P234_MONTO_TOTAL := TO_CHAR(:P234_MONTO_TOTAL,''999G999G999G999G999G999G990'');*/',
'ELSE ',
'    :P234_PRECIO_UNITARIO  := TO_CHAR(:P234_PRECIO_UNITARIO,''999G999G999G999G990D00'');',
'    :P234_TOTAL_IVA := TO_CHAR(:P234_TOTAL_IVA,''999G999G999G999G990D00'');',
'    :P234_SUBTOTAL := TO_CHAR(:P234_SUBTOTAL,''999G999G999G999G990D00'');',
'    :P234_TOTAL   := TO_CHAR(:P234_TOTAL,''999G999G999G999G990D00'');',
'    /*:P234_TOTAL_IVA_1 := TO_CHAR(:P234_TOTAL_IVA_1,''999G999G999G999G990D00'');',
'    :P234_MONTO_TOTAL := TO_CHAR(:P234_MONTO_TOTAL,''999G999G999G999G990D00'');*/',
'END IF;',
''))
,p_attribute_02=>'P234_COD_MANTIENE_PRECIO,P234_COD_ARTICULO,P234_IND_NO_DESCUENTO,P234_COD_EMPRESA,P234_COD_IVA,   P234_ES_PROMO_1,P234_PORC_DESCUENTO,P234_COD_CONDICION_VENTA,P234_COD_MONEDA_BASE,P234_IND_EXENTO_AD,   P234_TIPO_IMPUESTO,P234_CANTIDAD,P234_COD_SUCURS'
||'AL,P234_COD_CLIENTE,P234_RECARGO,P234_COD_MONEDA,   P234_COD_MONEDA_PRECIO,P234_CAMBIO_MONEDA_PRECIO,P234_TIP_CAMBIO,P234_DECIMALES,P234_FEC_COMPROBANTE,   P234_GRAVADAS_PARCIAL,P234_IMPORTE_ANT,P234_EXENTAS_PARCIAL,P234_TOTAL,P234_DESCUENTO_GASTRO, '
||'  P234_TIP_CAMBIO_COMPRA,P234_COD_ART_CORTO,P234_COD_LISTA_PRECIO'
,p_attribute_03=>'P234_DESC_ARTICULO,P234_PRECIO_UNITARIO,P234_PORC_IVA_1,P234_CANTIDAD,P234_COD_ART_CORTO,P234_STOCK_ACTUAL,P234_STOCK_ACTUAL_1,P234_PORC_DESCUENTO'
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
 p_id=>wwv_flow_imp.id(85583002190170149)
,p_event_id=>wwv_flow_imp.id(68100011350978944)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE ',
'    v_peso VARCHAR2(50);',
'    v_total_iva NUMBER;',
'    V_SUBTOTAL  NUMBER;',
'    V_TOTAL NUMBER;',
'    V_PRECIO_UNITARIO  NUMBER;',
'    V_TOTAL_IVA_1       NUMBER;',
'    V_MONTO_TOTAL   NUMBER;',
'',
'BEGIN ',
'V_PRECIO_UNITARIO  := replace(:P234_PRECIO_UNITARIO,''.'');',
'inv.vtpedido.pr_validaciones_articulos(p_cab_mantiene_precio  => :P234_MANTIENE_PRECIO,',
'                  p_cab_sucursal          => :P234_COD_SUCURSAL,',
'                  p_det_desc_articulo     => :P234_DESC_ARTICULO_1,',
'                  p_det_precio_unitario   => V_PRECIO_UNITARIO,',
'                  p_det_cod_moneda_base   => :P234_COD_MONEDA_BASE_1,',
'                  p_det_cod_grupo_art     => :P234_COD_GRUPO_ANT,',
'                  p_det_cod_origen_art    => :P234_COD_ORIGEN_ART,',
'                  p_det_modifica_precio   => :P234_MODIFICA_PRECIO,',
'                  p_det_porc_iva          => :P234_PORC_IVA_1,',
'                  p_det_cod_articulo      => :P234_COD_ARTICULO,',
'                  p_det_peso              => :P234_PESO,',
'                  p_det_volumen           => :P234_VOLUMEN,',
'                  p_det_ind_no_descuento  => :P234_IND_NO_DESCUENTO,',
'                  p_mensaje_error         => :P0_MENSAJE_VALIDACION,',
'                  p_cab_cod_empresa       => :P234_COD_EMPRESA,',
'                  p_det_cod_iva           => :P234_COD_IVA,',
'                  p_det_es_promo          => :P234_ES_PROMO_1,',
'                  p_det_porc_descuento    => :P234_PORC_DESCUENTO,',
'                  p_cab_cod_moneda_base   => :P234_COD_MONEDA_BASE,',
'                  p_cab_ind_exento_ad     => :P234_IND_EXENTO_AD,',
'                  p_cab_tipo_impuesto     => :P234_TIPO_IMPUESTO,',
'                  p_det_cantidad          => :P234_CANTIDAD,',
'                  p_cab_cod_lista_precio  => :P234_COD_LISTA_PRECIO,',
'                  p_cab_cod_cliente       => :P234_COD_CLIENTE,',
'                  p_cab_recargo           => :P234_RECARGO,',
'                  p_cab_cod_moneda_precio => :P234_COD_MONEDA_PRECIO,',
'                  p_cambio_moneda_precio  => :P234_CAMBIO_MONEDA_PRECIO,',
'                  p_cab_tip_cambio        => :P234_TIP_CAMBIO_COMPRA,',
'                  p_cab_decimales         => :P234_DECIMALES,',
'                  p_tip_cambio_compra     => :P234_TIP_CAMBIO_COMPRA,--:P234_TIP_CAMBIO_COMPRA,',
'                  p_det_precio_lista      => :P234_PRECIO_LISTA,',
'                  p_cab_fec_comprobante   => :P234_FEC_COMPROBANTE,',
'                  p_cab_gravadas_parcial  => :P234_GRAVADAS_PARCIAL,',
'                  p_det_importe_ant       => :P234_IMPORTE_ANT,',
'                  p_cab_exentas_parcial   => :P234_EXENTAS_PARCIAL,',
'                  p_det_cod_art_corto     => :P234_COD_ART_CORTO,',
'                  p_cab_cod_moneda        => :P234_COD_MONEDA);',
'IF :P234_COD_MONEDA = ''1'' THEN ',
'    :P234_PRECIO_UNITARIO  := TO_CHAR(V_PRECIO_UNITARIO,''999G999G999G999G999G999G990'');',
'    ',
'ELSE ',
'    :P234_PRECIO_UNITARIO  := TO_CHAR(V_PRECIO_UNITARIO,''999G999G999G999G990D00'');',
'    ',
'END IF;',
'',
':P234_DESC_ARTICULO_1 := :P234_DESC_ARTICULO;',
'END;'))
,p_attribute_02=>'P234_MANTIENE_PRECIO,P234_COD_SUCURSAL,P234_PRECIO_UNITARIO,P234_COD_GRUPO_ANT,P234_COD_ORIGEN_ART,   P234_PORC_IVA_1,P234_COD_ARTICULO,P234_PESO,P234_VOLUMEN,P234_COD_EMPRESA,P234_COD_IVA,   P234_ES_PROMO_1,P234_PORC_DESCUENTO,P234_COD_MONEDA_BASE,P'
||'234_IND_EXENTO_AD,P234_TIPO_IMPUESTO,   P234_CANTIDAD,P234_COD_LISTA_PRECIO,P234_COD_CLIENTE,P234_RECARGO,P234_COD_MONEDA_PRECIO,   P234_CAMBIO_MONEDA_PRECIO,P234_TIP_CAMBIO,P234_DECIMALES,P234_TIP_CAMBIO_COMPRA,P234_PRECIO_LISTA,   P234_FEC_COMPROBA'
||'NTE,P234_GRAVADAS_PARCIAL,P234_EXENTAS_PARCIAL,P234_COD_ART_CORTO,P234_COD_MONEDA,   P234_MODIFICA_PRECIO,P234_IVA_ANT,P234_IMPORTE_ANT,P234_IND_NO_DESCUENTO,P234_COD_MONEDA_BASE_1,P234_DESC_ARTICULO'
,p_attribute_03=>'P234_DESC_ARTICULO,P234_COD_GRUPO_ANT,P234_COD_ORIGEN_ART,P234_PORC_IVA_1, P234_COD_ARTICULO,P234_VOLUMEN,P0_MENSAJE_VALIDACION,P234_COD_IVA,P234_PORC_DESCUENTO,P234_CANTIDAD, P234_PRECIO_LISTA,P234_GRAVADAS_PARCIAL,P234_EXENTAS_PARCIAL,P234_MODIFICA'
||'_PRECIO,P234_IMPORTE_ANT, P234_IND_NO_DESCUENTO,P234_COD_MONEDA_BASE_1,P234_PRECIO_UNITARIO,P234_PESO,P234_DESC_ARTICULO_1'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(94558247510213410)
,p_event_id=>wwv_flow_imp.id(68100011350978944)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P234_COD_IVA = ''7'' THEN ',
'    :P234_VALIDA_ARTICULO :=  1;',
'ELSE ',
'    :P234_VALIDA_ARTICULO := 0;',
'END IF;'))
,p_attribute_02=>'P234_COD_IVA'
,p_attribute_03=>'P234_VALIDA_ARTICULO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(85580162586170120)
,p_event_id=>wwv_flow_imp.id(68100011350978944)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_FOCUS'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P234_CANTIDAD'
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(68100347247978947)
,p_name=>'Valida cantidades_1'
,p_event_sequence=>270
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P234_CANTIDAD'
,p_bind_type=>'live'
,p_bind_event_type=>'focusout'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(106524627502760537)
,p_event_id=>wwv_flow_imp.id(68100347247978947)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P234_CANTIDAD := NVL(:P234_CANTIDAD, 1);'
,p_attribute_02=>'P234_CANTIDAD'
,p_attribute_03=>'P234_CANTIDAD'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(68100450082978948)
,p_event_id=>wwv_flow_imp.id(68100347247978947)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if nvl(:P234_ES_PROMO,''N'')=''S'' and :P234_NRO_PROMO_1 is not null then',
'  inv.vtpedido.pr_act_promo;',
'end if; '))
,p_attribute_02=>'P234_ES_PROMO,P234_NRO_PROMO_1'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(68100575432978949)
,p_event_id=>wwv_flow_imp.id(68100347247978947)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P234_TOTAL_IVA := replace(:P234_TOTAL_IVA,''.'');',
':P234_SUBTOTAL := replace(:P234_SUBTOTAL,''.'');',
':P234_TOTAL   := replace(:P234_TOTAL,''.'');',
':P234_PRECIO_UNITARIO  := replace(:P234_PRECIO_UNITARIO,''.'');',
':P234_TOTAL_IVA_1 := replace(:P234_TOTAL_IVA_1,''.'');',
':P234_MONTO_TOTAL := replace(:P234_MONTO_TOTAL,''.'');',
'IF :P234_CANTIDAD IS NULL THEN',
'    :P0_MENSAJE_VALIDACION := ''Es obligatorio ingresar la cantidad. '';',
'    RETURN;',
'  END IF;',
'  DECLARE ',
'    V_IND_TIPO_PEDIDO VARCHAR2(100);',
'  BEGIN',
'  INV.VTPEDIDO.PR_DESCUENTOS(P_DET_IND_PROMO        => :P234_IND_PROMO,',
'     P_DET_NRO_PROMO        => :P234_NRO_PROMO_1,',
'     P_PORC_DESCUENTO       => :P234_PORC_DESCUENTO,',
'     P_COD_CLIENTE          => :P234_COD_CLIENTE,',
'     P_COD_CONDICION_VENTA  => :P234_COD_CONDICION_VENTA,',
'     P_DET_COD_LISTA_PRECIO => :P234_PRECIO_LISTA,',
'     P_DET_CANTIDAD         => :P234_CANTIDAD,',
'     P_DET_COD_ARTICULO     => :P234_COD_ARTICULO,',
'     P_COD_SUCURSAL         => :P234_COD_SUCURSAL,',
'     P_COD_EMPRESA          => :P234_COD_EMPRESA,',
'     P_FEC_COMPROBANTE      => :P234_FEC_COMPROBANTE,',
'     P_DET_PRECIO_UNITARIO  => :P234_PRECIO_UNITARIO,',
'     P_COD_FLETE            => :P234_COD_FLETE,',
'     P_COD_LISTA_PRECIO     => :P234_COD_LISTA_PRECIO,',
'     P_IND_TIPO_PEDIDO      => :P234_IND_TIPO_PEDIDO);',
'    END;',
'  IF NVL(:P234_DESCUENTO_1, 0) > 0 AND :P234_COD_ARTICULO IS NOT NULL THEN',
'    :P234_DESCUENTO_1 := 0;',
'  END IF;',
'  DECLARE ',
'   V_PORC_DESCUENTO_ANT NUMBER;',
'   V_CARGA_PORC_DESCUENTO VARCHAR2(100);',
'   ',
'  BEGIN',
'  INV.VTPEDIDO.PR_CALCULA_DESCUENTO(P_DET_PORC_DESCUENTO_ANT   => V_PORC_DESCUENTO_ANT,',
'    P_PORC_DESCUENTO           => :P234_PORC_DESCUENTO,',
'    P_DESCUENTO                => :P234_DESCUENTO_1,',
'    P_DET_CARGA_PORC_DESCUENTO => V_CARGA_PORC_DESCUENTO,',
'    P_DET_CANTIDAD             => :P234_CANTIDAD,',
'    P_DET_PRECIO_UNITARIO      => :P234_PRECIO_UNITARIO,',
'    P_DECIMALES                => :P234_DECIMALES,',
'    P_DET_NRO_PROMO            => :P234_NRO_PROMO_1,',
'    P_PORC_DESCUENTO_ANT       => V_PORC_DESCUENTO_ANT,',
'    P_RECARGO                  => :P234_RECARGO);',
'   END;',
'  IF NVL(:P234_RECARGO_1, 0) > 0 AND :P234_COD_ARTICULO IS NOT NULL THEN',
'    :P234_RECARGO_1 := 0;',
'  END IF;',
'DECLARE ',
'    V_IND_TIPO_PEDIDO VARCHAR2(100);',
'BEGIN',
'INV.VTPEDIDO.PR_DESCUENTOS(P_DET_IND_PROMO        => :P234_IND_PROMO,',
'P_DET_NRO_PROMO        => :P234_NRO_PROMO_1,',
'P_PORC_DESCUENTO       => :P234_PORC_DESCUENTO,',
'P_COD_CLIENTE          => :P234_COD_CLIENTE,',
'P_COD_CONDICION_VENTA  => :P234_COD_CONDICION_VENTA,',
'P_DET_COD_LISTA_PRECIO => :P234_PRECIO_LISTA,',
'P_DET_CANTIDAD         => :P234_CANTIDAD,',
'P_DET_COD_ARTICULO     => :P234_COD_ARTICULO,',
'P_COD_SUCURSAL         => :P234_COD_SUCURSAL,',
'P_COD_EMPRESA          => :P234_COD_EMPRESA,',
'P_FEC_COMPROBANTE      => :P234_FEC_COMPROBANTE,',
'P_DET_PRECIO_UNITARIO  => :P234_PRECIO_UNITARIO,',
'P_COD_FLETE            => :P234_COD_FLETE,',
'P_COD_LISTA_PRECIO     => :P234_COD_LISTA_PRECIO,',
'P_IND_TIPO_PEDIDO      => :P234_IND_TIPO_PEDIDO);',
'END;',
':P234_TOTAL_IVA := TO_CHAR(:P234_TOTAL_IVA,''999G999G999G999G999G999G990'');',
':P234_SUBTOTAL := TO_CHAR(:P234_SUBTOTAL,''999G999G999G999G999G999G990'');',
':P234_TOTAL   := TO_CHAR(:P234_TOTAL,''999G999G999G999G999G999G990'');',
':P234_TOTAL_IVA_1 := TO_CHAR(:P234_TOTAL_IVA_1,''999G999G999G999G999G999G990'');',
':P234_MONTO_TOTAL := TO_CHAR(:P234_MONTO_TOTAL,''999G999G999G999G999G999G990'');',
'IF :P234_COD_MONEDA = ''1'' THEN ',
'    :P234_PRECIO_UNITARIO  := TO_CHAR(:P234_PRECIO_UNITARIO,''999G999G999G999G999G999G990'');',
'ELSE ',
'    :P234_PRECIO_UNITARIO  := TO_CHAR(:P234_PRECIO_UNITARIO,''999G999G999G999G990D00'');',
'END IF;',
''))
,p_attribute_02=>'P234_CANTIDAD,P234_IND_PROMO,P234_NRO_PROMO_1,P234_COD_CLIENTE,P234_COD_CONDICION_VENTA,P234_PRECIO_LISTA, P234_COD_ARTICULO,P234_COD_SUCURSAL,P234_COD_EMPRESA,P234_FEC_COMPROBANTE,P234_COD_FLETE,P234_COD_LISTA_PRECIO, P234_DESCUENTO,P234_PORC_DESCUE'
||'NTO,P234_PRECIO_UNITARIO,P234_DECIMALES,P234_RECARGO,P234_RECARGO_1,P234_COD_MONEDA'
,p_attribute_03=>'P0_MENSAJE_VALIDACION,P234_PORC_DESCUENTO,P234_DESCUENTO,P234_RECARGO_1,P234_DESCUENTO_1'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(68100655799978950)
,p_event_id=>wwv_flow_imp.id(68100347247978947)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P234_PRECIO_UNITARIO  := replace(:P234_PRECIO_UNITARIO,''.'');',
'VTPEDIDO.PR_VALIDA_MIX_DESCUENTOS(P_VAR_CANTIDAD_PROMO_MIX  => :P234_CANTIDAD_PROMO_MIX,',
'                                    P_DET_COD_ARTICULO        => :P234_COD_ARTICULO,',
'                                    P_VAR_COD_EMPRESA         => :P234_COD_EMPRESA,',
'                                    P_VAR_COD_CLIENTE         => :P234_COD_CLIENTE,',
'                                    P_VAR_COD_LISTA_PRECIO    => :P234_COD_LISTA_PRECIO,',
'                                    P_DET_NRO_PROMO           => :P234_NRO_PROMO_1,',
'                                    P_DET_PORC_DESCUENTO      => :P234_PORC_DESCUENTO,',
'                                    P_DET_CANTIDAD            => :P234_CANTIDAD,',
'                                    P_DET_IND_PROMO           => :P234_IND_PROMO,',
'                                    P_VAR_COD_CONDICION_VENTA => :P234_COD_CONDICION_VENTA);',
'',
'  IF :P234_COD_SUCURSAL IN (''09'', ''105'', ''95'', ''30'') THEN',
'    BEGIN',
'      SELECT DESCUENTO',
'        INTO :P234_PORC_DESCUENTO',
'        FROM VT_OFERTAS_OUTLET',
'       WHERE COD_EMPRESA = :P234_COD_EMPRESA',
'         AND COD_ARTICULO = :P234_COD_ARTICULO',
'         AND FEC_CIERRE >= :P234_FEC_COMPROBANTE',
'         AND FEC_ALTA < :P234_FEC_COMPROBANTE',
'         AND COD_ARTICULO = :P234_COD_ARTICULO',
'         AND :P234_COD_SUCURSAL IN (''09'', ''105'', ''95'', ''30'');',
'    EXCEPTION',
'      WHEN OTHERS THEN',
'        :P234_PORC_DESCUENTO := 30;',
'    END;',
'  END IF;',
'  IF :P234_COD_SUCURSAL IN (''30-A'') THEN',
'    BEGIN',
'      SELECT PRECIO_DESCUENTO, 0',
'        INTO :P234_PRECIO_UNITARIO, :P234_PORC_DESCUENTO',
'        FROM VT_PRODUCTOS_RENTA_STNGO',
'       WHERE COD_EMPRESA = :P234_COD_EMPRESA',
'         AND COD_ARTICULO = :P234_COD_ARTICULO',
'         AND FEC_CIERRE >= :P234_FEC_COMPROBANTE',
'         AND FEC_ALTA <= :P234_FEC_COMPROBANTE',
'         AND COD_ARTICULO = :P234_COD_ARTICULO',
'         AND :P234_COD_SUCURSAL IN (''30-A'');',
'    EXCEPTION',
'      WHEN OTHERS THEN',
'        NULL;',
'    END;',
'  END IF;',
'IF :P234_COD_MONEDA = ''1'' THEN ',
'    :P234_PRECIO_UNITARIO  := TO_CHAR(:P234_PRECIO_UNITARIO,''999G999G999G999G999G999G990'');',
'ELSE ',
'    :P234_PRECIO_UNITARIO  := TO_CHAR(:P234_PRECIO_UNITARIO,''999G999G999G999G990D00'');',
'END IF;',
'',
':P234_RECARGO := 0;',
':P234_DESCUENTO := 0;'))
,p_attribute_02=>'P234_COD_ARTICULO,P234_COD_EMPRESA,P234_COD_CLIENTE,P234_COD_LISTA_PRECIO,P234_NRO_PROMO_1,P234_PORC_DESCUENTO,   P234_CANTIDAD,P234_IND_PROMO,P234_COD_CONDICION_VENTA,P234_COD_SUCURSAL,P234_FEC_COMPROBANTE,P234_COD_MONEDA'
,p_attribute_03=>'P234_CANTIDAD_PROMO_MIX,P234_PORC_DESCUENTO,P234_RECARGO,P234_DESCUENTO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(94557558463213403)
,p_event_id=>wwv_flow_imp.id(68100347247978947)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P234_COD_IVA = ''7'' THEN ',
'    :P234_PORC_DESCUENTO := ''0,00'';',
'END IF;'))
,p_attribute_02=>'P234_COD_IVA'
,p_attribute_03=>'P234_PORC_DESCUENTO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(68881649051126401)
,p_event_id=>wwv_flow_imp.id(68100347247978947)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P234_TOTAL_IVA:=replace(:P234_TOTAL_IVA,''.'');:P234_SUBTOTAL:=replace(:P234_SUBTOTAL,''.'');',
':P234_TOTAL:=replace(:P234_TOTAL,''.'');:P234_PRECIO_UNITARIO:=replace(:P234_PRECIO_UNITARIO,''.'');',
':P234_TOTAL_IVA_1:=replace(:P234_TOTAL_IVA_1,''.'');:P234_MONTO_TOTAL:=replace(:P234_MONTO_TOTAL,''.'');',
'DECLARE',
'V_PORC_RECARGO_ANT NUMBER;V_CARGA_PORC_RECARGO VARCHAR2(100);',
'BEGIN',
'INV.VTPEDIDO.PR_CALCULA_RECARGO(P_DET_PORC_RECARGO_ANT=>V_PORC_RECARGO_ANT,P_DET_CARGA_PORC_RECARGO=>V_CARGA_PORC_RECARGO,P_CAB_DECIMALES=>:P234_DECIMALES,',
'P_MENSAJE_ERROR=>:P0_MENSAJE_VALIDACION,',
'P_VAR_MULT=>:P234_VAR_MULT,P_VAR_DIV=>:P234_VAR_DIV,',
'P_DET_PORC_IVA=>:P234_PORC_IVA_1,P_DET_PRECIO_UNITARIO=>:P234_PRECIO_UNITARIO,',
'P_DET_CANTIDAD_UB=>:P234_CANTIDAD_UB,P_DET_CANTIDAD=>:P234_CANTIDAD,',
'P_DET_PORC_DESCUENTO=>:P234_PORC_DESCUENTO,P_DET_PORC_RECARGO=>:P234_PORC_RECARGO,',
'P_DET_DESCUENTO=>:P234_DESCUENTO_1,P_DET_MONTO_TOTAL=>:P234_MONTO_TOTAL,',
'P_DET_RECARGO=>:P234_RECARGO_1,P_VAR_PORC_IVA=>:P234_PORC_IVA,P_DET_COD_ARTICULO=>:P234_COD_ARTICULO,P_VAR_RECARGO=>:P234_RECARGO,',
'P_DET_TOTAL_IVA=>:P234_TOTAL_IVA,P_CAB_IVA_PARCIAL=>:P234_IVA_PARCIAL,',
'P_DET_IVA_ANT=>:P234_IVA_ANT,P_CAB_SUBTOTAL_PARCIAL=>:P234_SUBTOTAL_PARCIAL,P_DET_IMPORTE_ANT=>:P234_IMPORTE_ANT,P_CAB_GRAVADAS_PARCIAL=>:P234_GRAVADAS_PARCIAL,',
'P_CAB_EXENTAS_PARCIAL=>:P234_EXENTAS_PARCIAL,P_CAB_PORCENTAJE_DESCUENTO=>:P234_PORCENTAJE_DESCUENTO,',
'P_CAB_DESCUENTO=>:P234_DESCUENTO,P_CAB_TOTAL_IVA=>:P234_TOTAL_IVA,P_CAB_SUBTOTAL=>:P234_SUBTOTAL,',
'P_CAB_GRAVADAS=>:P234_GRAVADAS,P_CAB_EXENTAS=>:P234_EXENTAS,P_CAB_TOTAL=>:P234_TOTAL,P_CAB_RECARGO_PORC=>:P234_RECARGO_PORC,',
'P_CAB_RECARGO=>:P234_RECARGO,P_DET_MONTO_GRAVADA_10=>:P234_MONTO_GRAVADA_10,P_DET_MONTO_GRAVADA_5=>:P234_MONTO_GRAVADA_5,P_DET_MONTO_EXENTA=>:P234_MONTO_EXENTA,',
'P_CAB_TIP_CAMBIO=>:P234_TIP_CAMBIO,P_COD_EMPRESA=>:P234_COD_EMPRESA,P_COD_FLETE=>:P234_COD_FLETE,P_CAB_FLETE_TOTAL=>:P234_FLETE_TOTAL,',
'P_DET_TOTAL_PESO=>:P234_TOTAL_PESO,P_DET_TOTAL_VOLUMEN=>:P234_VOLUMEN,P_VAR_PORC_RECARGO_ANT=>:P234_PORC_RECARGO_ANT);',
'INV.VTPEDIDO.PR_CALCULOS(P_VAR_MULT=>:P234_VAR_MULT,P_VAR_DIV=>:P234_VAR_DIV,',
'P_DET_PORC_IVA=>:P234_PORC_IVA_1,P_DET_PRECIO_UNITARIO=>:P234_PRECIO_UNITARIO,P_CAB_DECIMALES=>:P234_DECIMALES,',
'P_DET_CANTIDAD_UB=>:P234_CANTIDAD_UB,P_DET_CANTIDAD=>:P234_CANTIDAD,P_DET_PORC_DESCUENTO=>:P234_PORC_DESCUENTO,',
'P_DET_PORC_RECARGO=>:P234_PORC_RECARGO,P_DET_DESCUENTO=>:P234_DESCUENTO_1,',
'P_DET_MONTO_TOTAL=>:P234_MONTO_TOTAL,P_DET_RECARGO=>:P234_RECARGO_1,P_VAR_PORC_IVA=>:P234_PORC_IVA,',
'P_DET_COD_ARTICULO=>:P234_COD_ARTICULO,P_VAR_RECARGO=>:P234_RECARGO,',
'P_DET_TOTAL_IVA=>:P234_TOTAL_IVA_1,P_CAB_IVA_PARCIAL=>:P234_IVA_PARCIAL,',
'P_DET_IVA_ANT=>:P234_IVA_ANT,P_CAB_SUBTOTAL_PARCIAL=>:P234_SUBTOTAL_PARCIAL,',
'P_DET_IMPORTE_ANT=>:P234_IMPORTE_ANT,P_CAB_GRAVADAS_PARCIAL=>:P234_GRAVADAS_PARCIAL,',
'P_CAB_EXENTAS_PARCIAL=>:P234_EXENTAS_PARCIAL,P_CAB_PORCENTAJE_DESCUENTO=>:P234_PORCENTAJE_DESCUENTO,',
'P_CAB_DESCUENTO=>:P234_DESCUENTO,P_CAB_TOTAL_IVA=>:P234_TOTAL_IVA,',
'P_CAB_SUBTOTAL=>:P234_SUBTOTAL,P_CAB_GRAVADAS=>:P234_GRAVADAS,P_CAB_EXENTAS=>:P234_EXENTAS,',
'P_CAB_TOTAL=>:P234_TOTAL,P_CAB_RECARGO_PORC=>:P234_RECARGO_PORC,P_CAB_RECARGO=>:P234_RECARGO,P_DET_MONTO_GRAVADA_10=>:P234_MONTO_GRAVADA_10,',
'P_DET_MONTO_GRAVADA_5=>:P234_MONTO_GRAVADA_5,',
'P_DET_MONTO_EXENTA=>:P234_MONTO_EXENTA,',
'P_MENSAJE_ERROR=>:P0_MENSAJE_VALIDACION,',
'P_CAB_TIP_CAMBIO=>:P234_TIP_CAMBIO,',
'P_COD_EMPRESA=>:P234_COD_EMPRESA,',
'P_COD_FLETE=>:P234_COD_FLETE,',
'P_CAB_FLETE_TOTAL=>:P234_FLETE_TOTAL,',
'P_DET_TOTAL_PESO=>:P234_TOTAL_PESO,',
'P_DET_TOTAL_VOLUMEN=>:P234_TOTAL_VOLUMEN);',
'END;',
''))
,p_attribute_02=>'P234_DECIMALES,P234_VAR_MULT,P234_VAR_DIV,P234_PORC_IVA_1,P234_PRECIO_UNITARIO,P234_CANTIDAD,P234_PORC_DESCUENTO, P234_PORC_RECARGO,P234_DESCUENTO,P234_MONTO_TOTAL,P234_RECARGO_1,P234_PORC_IVA,P234_COD_ARTICULO, P234_RECARGO,P234_TOTAL_IVA_1,P234_IVA'
||'_PARCIAL,P234_IVA_ANT,P234_SUBTOTAL_PARCIAL,P234_IMPORTE_ANT, P234_GRAVADAS_PARCIAL,P234_EXENTAS_PARCIAL,P234_PORCENTAJE_DESCUENTO,P234_DESCUENTO,P234_TOTAL_IVA, P234_SUBTOTAL,P234_GRAVADAS,P234_EXENTAS,P234_TOTAL,P234_RECARGO_PORC,P234_MONTO_GRAVADA'
||'_10,P234_MONTO_GRAVADA_5, P234_MONTO_EXENTA,P234_TIP_CAMBIO,P234_COD_EMPRESA,P234_COD_FLETE,P234_TOTAL_PESO,P234_VOLUMEN,P234_DESCUENTO_1'
,p_attribute_03=>'P0_MENSAJE_VALIDACION,P234_VAR_MULT,P234_VAR_DIV,P234_CANTIDAD_UB,P234_RECARGO_1,P234_TOTAL_IVA_1, P234_IVA_PARCIAL,P234_IVA_ANT,P234_SUBTOTAL_PARCIAL,P234_IMPORTE_ANT,P234_GRAVADAS_PARCIAL, P234_EXENTAS_PARCIAL,P234_PORCENTAJE_DESCUENTO,P234_GRAVADA'
||'S,P234_EXENTAS,P234_RECARGO_PORC,P234_MONTO_GRAVADA_5,P234_MONTO_GRAVADA_10,P234_MONTO_EXENTA, P234_FLETE_TOTAL,P234_PORC_RECARGO_ANT,P234_MONTO_TOTAL,P234_DESCUENTO_1,P234_PORC_DESCUENTO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(94557610269213404)
,p_event_id=>wwv_flow_imp.id(68100347247978947)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P234_COD_MONEDA  = ''1'' THEN ',
':P234_TOTAL_IVA:=replace(:P234_TOTAL_IVA,''.'');:P234_SUBTOTAL:=replace(:P234_SUBTOTAL,''.'');',
':P234_TOTAL:=replace(:P234_TOTAL,''.'');:P234_PRECIO_UNITARIO:=replace(:P234_PRECIO_UNITARIO,''.'');',
':P234_TOTAL_IVA_1:=replace(:P234_TOTAL_IVA_1,''.'');:P234_MONTO_TOTAL:=replace(:P234_MONTO_TOTAL,''.'');',
'DECLARE',
'V_PORC_RECARGO_ANT NUMBER;V_CARGA_PORC_RECARGO VARCHAR2(100);',
'BEGIN',
'INV.VTPEDIDO.PR_CALCULA_RECARGO(P_DET_PORC_RECARGO_ANT=>V_PORC_RECARGO_ANT,P_DET_CARGA_PORC_RECARGO=>V_CARGA_PORC_RECARGO,P_CAB_DECIMALES=>:P234_DECIMALES,',
'P_MENSAJE_ERROR=>:P0_MENSAJE_VALIDACION,',
'P_VAR_MULT=>:P234_VAR_MULT,P_VAR_DIV=>:P234_VAR_DIV,',
'P_DET_PORC_IVA=>:P234_PORC_IVA_1,P_DET_PRECIO_UNITARIO=>:P234_PRECIO_UNITARIO,',
'P_DET_CANTIDAD_UB=>:P234_CANTIDAD_UB,P_DET_CANTIDAD=>:P234_CANTIDAD,',
'P_DET_PORC_DESCUENTO=>:P234_PORC_DESCUENTO,P_DET_PORC_RECARGO=>:P234_PORC_RECARGO,',
'P_DET_DESCUENTO=>:P234_DESCUENTO_1,P_DET_MONTO_TOTAL=>:P234_MONTO_TOTAL,',
'P_DET_RECARGO=>:P234_RECARGO_1,P_VAR_PORC_IVA=>:P234_PORC_IVA,P_DET_COD_ARTICULO=>:P234_COD_ARTICULO,P_VAR_RECARGO=>:P234_RECARGO,',
'P_DET_TOTAL_IVA=>:P234_TOTAL_IVA,P_CAB_IVA_PARCIAL=>:P234_IVA_PARCIAL,',
'P_DET_IVA_ANT=>:P234_IVA_ANT,P_CAB_SUBTOTAL_PARCIAL=>:P234_SUBTOTAL_PARCIAL,P_DET_IMPORTE_ANT=>:P234_IMPORTE_ANT,P_CAB_GRAVADAS_PARCIAL=>:P234_GRAVADAS_PARCIAL,',
'P_CAB_EXENTAS_PARCIAL=>:P234_EXENTAS_PARCIAL,P_CAB_PORCENTAJE_DESCUENTO=>:P234_PORCENTAJE_DESCUENTO,',
'P_CAB_DESCUENTO=>:P234_DESCUENTO,P_CAB_TOTAL_IVA=>:P234_TOTAL_IVA,P_CAB_SUBTOTAL=>:P234_SUBTOTAL,',
'P_CAB_GRAVADAS=>:P234_GRAVADAS,P_CAB_EXENTAS=>:P234_EXENTAS,P_CAB_TOTAL=>:P234_TOTAL,P_CAB_RECARGO_PORC=>:P234_RECARGO_PORC,',
'P_CAB_RECARGO=>:P234_RECARGO,P_DET_MONTO_GRAVADA_10=>:P234_MONTO_GRAVADA_10,P_DET_MONTO_GRAVADA_5=>:P234_MONTO_GRAVADA_5,P_DET_MONTO_EXENTA=>:P234_MONTO_EXENTA,',
'P_CAB_TIP_CAMBIO=>:P234_TIP_CAMBIO,P_COD_EMPRESA=>:P234_COD_EMPRESA,P_COD_FLETE=>:P234_COD_FLETE,P_CAB_FLETE_TOTAL=>:P234_FLETE_TOTAL,',
'P_DET_TOTAL_PESO=>:P234_TOTAL_PESO,P_DET_TOTAL_VOLUMEN=>:P234_VOLUMEN,P_VAR_PORC_RECARGO_ANT=>:P234_PORC_RECARGO_ANT);',
'INV.VTPEDIDO.PR_CALCULOS(P_VAR_MULT=>:P234_VAR_MULT,P_VAR_DIV=>:P234_VAR_DIV,',
'P_DET_PORC_IVA=>:P234_PORC_IVA_1,P_DET_PRECIO_UNITARIO=>:P234_PRECIO_UNITARIO,P_CAB_DECIMALES=>:P234_DECIMALES,',
'P_DET_CANTIDAD_UB=>:P234_CANTIDAD_UB,P_DET_CANTIDAD=>:P234_CANTIDAD,P_DET_PORC_DESCUENTO=>:P234_PORC_DESCUENTO,',
'P_DET_PORC_RECARGO=>:P234_PORC_RECARGO,P_DET_DESCUENTO=>:P234_DESCUENTO_1,',
'P_DET_MONTO_TOTAL=>:P234_MONTO_TOTAL,P_DET_RECARGO=>:P234_RECARGO_1,P_VAR_PORC_IVA=>:P234_PORC_IVA,',
'P_DET_COD_ARTICULO=>:P234_COD_ARTICULO,P_VAR_RECARGO=>:P234_RECARGO,',
'P_DET_TOTAL_IVA=>:P234_TOTAL_IVA_1,P_CAB_IVA_PARCIAL=>:P234_IVA_PARCIAL,',
'P_DET_IVA_ANT=>:P234_IVA_ANT,P_CAB_SUBTOTAL_PARCIAL=>:P234_SUBTOTAL_PARCIAL,',
'P_DET_IMPORTE_ANT=>:P234_IMPORTE_ANT,P_CAB_GRAVADAS_PARCIAL=>:P234_GRAVADAS_PARCIAL,',
'P_CAB_EXENTAS_PARCIAL=>:P234_EXENTAS_PARCIAL,P_CAB_PORCENTAJE_DESCUENTO=>:P234_PORCENTAJE_DESCUENTO,',
'P_CAB_DESCUENTO=>:P234_DESCUENTO,P_CAB_TOTAL_IVA=>:P234_TOTAL_IVA,',
'P_CAB_SUBTOTAL=>:P234_SUBTOTAL,P_CAB_GRAVADAS=>:P234_GRAVADAS,P_CAB_EXENTAS=>:P234_EXENTAS,',
'P_CAB_TOTAL=>:P234_TOTAL,P_CAB_RECARGO_PORC=>:P234_RECARGO_PORC,P_CAB_RECARGO=>:P234_RECARGO,P_DET_MONTO_GRAVADA_10=>:P234_MONTO_GRAVADA_10,',
'P_DET_MONTO_GRAVADA_5=>:P234_MONTO_GRAVADA_5,',
'P_DET_MONTO_EXENTA=>:P234_MONTO_EXENTA,',
'P_MENSAJE_ERROR=>:P0_MENSAJE_VALIDACION,',
'P_CAB_TIP_CAMBIO=>:P234_TIP_CAMBIO,',
'P_COD_EMPRESA=>:P234_COD_EMPRESA,',
'P_COD_FLETE=>:P234_COD_FLETE,',
'P_CAB_FLETE_TOTAL=>:P234_FLETE_TOTAL,',
'P_DET_TOTAL_PESO=>:P234_TOTAL_PESO,',
'P_DET_TOTAL_VOLUMEN=>:P234_TOTAL_VOLUMEN);',
'END;',
'END  IF;',
''))
,p_attribute_02=>'P234_DECIMALES,P234_VAR_MULT,P234_VAR_DIV,P234_PORC_IVA_1,P234_PRECIO_UNITARIO,P234_CANTIDAD,P234_PORC_DESCUENTO, P234_PORC_RECARGO,P234_DESCUENTO,P234_MONTO_TOTAL,P234_RECARGO_1,P234_PORC_IVA,P234_COD_ARTICULO, P234_RECARGO,P234_TOTAL_IVA_1,P234_IVA'
||'_PARCIAL,P234_IVA_ANT,P234_SUBTOTAL_PARCIAL,P234_IMPORTE_ANT, P234_GRAVADAS_PARCIAL,P234_EXENTAS_PARCIAL,P234_PORCENTAJE_DESCUENTO,P234_DESCUENTO,P234_TOTAL_IVA, P234_SUBTOTAL,P234_GRAVADAS,P234_EXENTAS,P234_TOTAL,P234_RECARGO_PORC,P234_MONTO_GRAVADA'
||'_10,P234_MONTO_GRAVADA_5, P234_MONTO_EXENTA,P234_TIP_CAMBIO,P234_COD_EMPRESA,P234_COD_FLETE,P234_TOTAL_PESO,P234_VOLUMEN,P234_DESCUENTO_1,P234_COD_MONEDA'
,p_attribute_03=>'P0_MENSAJE_VALIDACION,P234_VAR_MULT,P234_VAR_DIV,P234_CANTIDAD_UB,P234_RECARGO_1,P234_TOTAL_IVA_1, P234_IVA_PARCIAL,P234_IVA_ANT,P234_SUBTOTAL_PARCIAL,P234_IMPORTE_ANT,P234_GRAVADAS_PARCIAL, P234_EXENTAS_PARCIAL,P234_PORCENTAJE_DESCUENTO,P234_GRAVADA'
||'S,P234_EXENTAS,P234_RECARGO_PORC,P234_MONTO_GRAVADA_5,P234_MONTO_GRAVADA_10,P234_MONTO_EXENTA, P234_FLETE_TOTAL,P234_PORC_RECARGO_ANT,P234_MONTO_TOTAL,P234_DESCUENTO_1,P234_PORC_DESCUENTO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(68881707631126402)
,p_event_id=>wwv_flow_imp.id(68100347247978947)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'INV.VTPEDIDO.PR_PED_PEND(P_DET_STOCK_ACTUAL => :P234_STOCK_ACTUAL,',
'               P_VAR_COD_EMPRESA  => :P234_COD_EMPRESA,',
'               P_DET_COD_ARTICULO => :P234_COD_ARTICULO,',
'               P_DET_STOCK_RESERV => :P234_STOCK_RESERV);',
'',
'IF :P234_COD_SUCURSAL IN (''09'', ''105'', ''95'', ''30'') THEN',
'BEGIN',
'SELECT DESCUENTO',
'INTO :P234_PORC_DESCUENTO',
'FROM VT_OFERTAS_OUTLET',
'WHERE COD_EMPRESA = :P234_COD_EMPRESA',
'AND COD_ARTICULO = :P234_COD_ARTICULO',
'AND FEC_CIERRE >= :P234_FEC_COMPROBANTE',
'AND FEC_ALTA <= :P234_FEC_COMPROBANTE',
'AND COD_ARTICULO = :P234_COD_ARTICULO',
'AND :P234_COD_SUCURSAL IN (''09'', ''105'', ''95'', ''30'');',
'EXCEPTION',
'WHEN OTHERS THEN',
':P234_PORC_DESCUENTO := 30;',
'END;',
'END IF;',
'IF :P234_COD_SUCURSAL IN (''30-A'') THEN',
'BEGIN',
'SELECT PRECIO_DESCUENTO, 0',
'INTO :P234_PRECIO_UNITARIO, :P234_PORC_DESCUENTO',
'FROM VT_PRODUCTOS_RENTA_STNGO',
'WHERE COD_EMPRESA = :P234_COD_EMPRESA',
'AND COD_ARTICULO = :P234_COD_ARTICULO',
'AND FEC_CIERRE >= :P234_FEC_COMPROBANTE',
'AND FEC_ALTA <= :P234_FEC_COMPROBANTE',
'AND COD_ARTICULO = :P234_COD_ARTICULO',
'AND :P234_COD_SUCURSAL IN (''30-A'');',
'EXCEPTION',
'WHEN OTHERS THEN',
'NULL;',
'END;',
'END IF;',
'',
''))
,p_attribute_02=>'P234_COD_EMPRESA,P234_COD_ARTICULO,P234_COD_SUCURSAL,P234_FEC_COMPROBANTE'
,p_attribute_03=>'P234_STOCK_ACTUAL,P234_STOCK_RESERV,P234_COD_SUCURSAL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(72004642495704111)
,p_event_id=>wwv_flow_imp.id(68100347247978947)
,p_event_result=>'TRUE'
,p_action_sequence=>90
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P234_TOTAL_IVA := replace(:P234_TOTAL_IVA,''.'');',
':P234_SUBTOTAL := replace(:P234_SUBTOTAL,''.'');',
':P234_TOTAL   := replace(:P234_TOTAL,''.'');',
':P234_PRECIO_UNITARIO  := replace(:P234_PRECIO_UNITARIO,''.'');',
':P234_TOTAL_IVA_1 := replace(:P234_TOTAL_IVA_1,''.'');',
':P234_MONTO_TOTAL := replace(:P234_MONTO_TOTAL,''.'');',
'',
':P234_DESCUENTO_1 := round((nvl(:P234_CANTIDAD, 0) *',
'                           (nvl(:P234_PRECIO_UNITARIO, 0)) *',
'                           (nvl(:P234_PORC_DESCUENTO, 0) / 100)),',
'                           nvl(:P234_DECIMALES, 0));',
'IF :P234_COD_MONEDA = ''1'' THEN ',
'    :P234_PRECIO_UNITARIO  := TO_CHAR(:P234_PRECIO_UNITARIO,''999G999G999G999G999G999G990'');',
'    :P234_TOTAL_IVA_1 := TO_CHAR(:P234_TOTAL_IVA_1,''999G999G999G999G999G999G990'');',
'    :P234_MONTO_TOTAL := TO_CHAR(:P234_MONTO_TOTAL,''999G999G999G999G999G999G990'');',
'    :P234_TOTAL_IVA := TO_CHAR(:P234_TOTAL_IVA,''999G999G999G999G999G999G990'');',
'    :P234_SUBTOTAL := TO_CHAR(:P234_SUBTOTAL,''999G999G999G999G999G999G990'');',
'    :P234_TOTAL   := TO_CHAR(:P234_TOTAL,''999G999G999G999G999G999G990'');',
'ELSE ',
'    :P234_PRECIO_UNITARIO  := TO_CHAR(:P234_PRECIO_UNITARIO,''999G999G999G999G990D00'');',
'    :P234_TOTAL_IVA_1 := TO_CHAR(:P234_TOTAL_IVA_1,''999G999G999G999G990D00'');',
'    :P234_MONTO_TOTAL := TO_CHAR(:P234_MONTO_TOTAL,''999G999G999G999G990D00'');',
'    :P234_TOTAL_IVA := TO_CHAR(:P234_TOTAL_IVA,''999G999G999G999G990D00'');',
'    :P234_SUBTOTAL := TO_CHAR(:P234_SUBTOTAL,''999G999G999G999G990D00'');',
'    :P234_TOTAL   := TO_CHAR(:P234_TOTAL,''999G999G999G999G990D00'');',
'END IF;',
''))
,p_attribute_02=>'P234_TOTAL_IVA,P234_SUBTOTAL,P234_TOTAL,P234_PRECIO_UNITARIO,P234_TOTAL_IVA_1,P234_MONTO_TOTAL,P234_CANTIDAD,P234_PORC_DESCUENTO,P234_DECIMALES,P234_COD_MONEDA'
,p_attribute_03=>'P234_TOTAL_IVA,P234_SUBTOTAL,P234_TOTAL,P234_TOTAL_IVA_1,P234_MONTO_TOTAL,P234_DESCUENTO_1'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(99281735930806401)
,p_name=>'Valida cantidades DE BOTON'
,p_event_sequence=>280
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P234_CARGA_DETALLE'
,p_condition_element=>'P234_CARGA_DETALLE'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'1'
,p_bind_type=>'live'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(106524585264760536)
,p_event_id=>wwv_flow_imp.id(99281735930806401)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P234_CANTIDAD := NVL(:P234_CANTIDAD , 1);'
,p_attribute_02=>'P234_CANTIDAD'
,p_attribute_03=>'P234_CANTIDAD'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(99281816988806402)
,p_event_id=>wwv_flow_imp.id(99281735930806401)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if nvl(:P234_ES_PROMO,''N'')=''S'' and :P234_NRO_PROMO_1 is not null then',
'  inv.vtpedido.pr_act_promo;',
'end if; '))
,p_attribute_02=>'P234_ES_PROMO,P234_NRO_PROMO_1'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(99281922917806403)
,p_event_id=>wwv_flow_imp.id(99281735930806401)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P234_PORC_DESCUENTO IN (''0'', ''0,00'','''') OR :P234_PORC_DESCUENTO IS NULL THEN',
':P234_TOTAL_IVA := replace(:P234_TOTAL_IVA,''.'');',
':P234_SUBTOTAL := replace(:P234_SUBTOTAL,''.'');',
':P234_TOTAL   := replace(:P234_TOTAL,''.'');',
':P234_PRECIO_UNITARIO  := replace(:P234_PRECIO_UNITARIO,''.'');',
':P234_TOTAL_IVA_1 := replace(:P234_TOTAL_IVA_1,''.'');',
':P234_MONTO_TOTAL := replace(:P234_MONTO_TOTAL,''.'');',
'IF :P234_CANTIDAD IS NULL THEN',
'    :P0_MENSAJE_VALIDACION := ''Es obligatorio ingresar la cantidad. '';',
'    RETURN;',
'  END IF;',
'  DECLARE ',
'    V_IND_TIPO_PEDIDO VARCHAR2(100);',
'  BEGIN',
'  INV.VTPEDIDO.PR_DESCUENTOS(P_DET_IND_PROMO        => :P234_IND_PROMO,',
'     P_DET_NRO_PROMO        => :P234_NRO_PROMO_1,',
'     P_PORC_DESCUENTO       => :P234_PORC_DESCUENTO,',
'     P_COD_CLIENTE          => :P234_COD_CLIENTE,',
'     P_COD_CONDICION_VENTA  => :P234_COD_CONDICION_VENTA,',
'     P_DET_COD_LISTA_PRECIO => :P234_PRECIO_LISTA,',
'     P_DET_CANTIDAD         => :P234_CANTIDAD,',
'     P_DET_COD_ARTICULO     => :P234_COD_ARTICULO,',
'     P_COD_SUCURSAL         => :P234_COD_SUCURSAL,',
'     P_COD_EMPRESA          => :P234_COD_EMPRESA,',
'     P_FEC_COMPROBANTE      => :P234_FEC_COMPROBANTE,',
'     P_DET_PRECIO_UNITARIO  => :P234_PRECIO_UNITARIO,',
'     P_COD_FLETE            => :P234_COD_FLETE,',
'     P_COD_LISTA_PRECIO     => :P234_COD_LISTA_PRECIO,',
'     P_IND_TIPO_PEDIDO      => :P234_IND_TIPO_PEDIDO);',
'    END;',
'  IF NVL(:P234_DESCUENTO_1, 0) > 0 AND :P234_COD_ARTICULO IS NOT NULL THEN',
'    :P234_DESCUENTO_1 := 0;',
'  END IF;',
'  DECLARE ',
'   V_PORC_DESCUENTO_ANT NUMBER;',
'   V_CARGA_PORC_DESCUENTO VARCHAR2(100);',
'   ',
'  BEGIN',
'  INV.VTPEDIDO.PR_CALCULA_DESCUENTO(P_DET_PORC_DESCUENTO_ANT   => V_PORC_DESCUENTO_ANT,',
'    P_PORC_DESCUENTO           => :P234_PORC_DESCUENTO,',
'    P_DESCUENTO                => :P234_DESCUENTO_1,',
'    P_DET_CARGA_PORC_DESCUENTO => V_CARGA_PORC_DESCUENTO,',
'    P_DET_CANTIDAD             => :P234_CANTIDAD,',
'    P_DET_PRECIO_UNITARIO      => :P234_PRECIO_UNITARIO,',
'    P_DECIMALES                => :P234_DECIMALES,',
'    P_DET_NRO_PROMO            => :P234_NRO_PROMO_1,',
'    P_PORC_DESCUENTO_ANT       => V_PORC_DESCUENTO_ANT,',
'    P_RECARGO                  => :P234_RECARGO);',
'   END;',
'  IF NVL(:P234_RECARGO_1, 0) > 0 AND :P234_COD_ARTICULO IS NOT NULL THEN',
'    :P234_RECARGO_1 := 0;',
'  END IF;',
'DECLARE ',
'    V_IND_TIPO_PEDIDO VARCHAR2(100);',
'BEGIN',
'INV.VTPEDIDO.PR_DESCUENTOS(P_DET_IND_PROMO        => :P234_IND_PROMO,',
'P_DET_NRO_PROMO        => :P234_NRO_PROMO_1,',
'P_PORC_DESCUENTO       => :P234_PORC_DESCUENTO,',
'P_COD_CLIENTE          => :P234_COD_CLIENTE,',
'P_COD_CONDICION_VENTA  => :P234_COD_CONDICION_VENTA,',
'P_DET_COD_LISTA_PRECIO => :P234_PRECIO_LISTA,',
'P_DET_CANTIDAD         => :P234_CANTIDAD,',
'P_DET_COD_ARTICULO     => :P234_COD_ARTICULO,',
'P_COD_SUCURSAL         => :P234_COD_SUCURSAL,',
'P_COD_EMPRESA          => :P234_COD_EMPRESA,',
'P_FEC_COMPROBANTE      => :P234_FEC_COMPROBANTE,',
'P_DET_PRECIO_UNITARIO  => :P234_PRECIO_UNITARIO,',
'P_COD_FLETE            => :P234_COD_FLETE,',
'P_COD_LISTA_PRECIO     => :P234_COD_LISTA_PRECIO,',
'P_IND_TIPO_PEDIDO      => :P234_IND_TIPO_PEDIDO);',
'END;',
':P234_TOTAL_IVA := TO_CHAR(:P234_TOTAL_IVA,''999G999G999G999G999G999G990'');',
':P234_SUBTOTAL := TO_CHAR(:P234_SUBTOTAL,''999G999G999G999G999G999G990'');',
':P234_TOTAL   := TO_CHAR(:P234_TOTAL,''999G999G999G999G999G999G990'');',
':P234_TOTAL_IVA_1 := TO_CHAR(:P234_TOTAL_IVA_1,''999G999G999G999G999G999G990'');',
':P234_MONTO_TOTAL := TO_CHAR(:P234_MONTO_TOTAL,''999G999G999G999G999G999G990'');',
'IF :P234_COD_MONEDA = ''1'' THEN ',
'    :P234_PRECIO_UNITARIO  := TO_CHAR(:P234_PRECIO_UNITARIO,''999G999G999G999G999G999G990'');',
'ELSE ',
'    :P234_PRECIO_UNITARIO  := TO_CHAR(:P234_PRECIO_UNITARIO,''999G999G999G999G990D00'');',
'END IF;',
'END IF;'))
,p_attribute_02=>'P234_CANTIDAD,P234_IND_PROMO,P234_NRO_PROMO_1,P234_COD_CLIENTE,P234_COD_CONDICION_VENTA,P234_PRECIO_LISTA, P234_COD_ARTICULO,P234_COD_SUCURSAL,P234_COD_EMPRESA,P234_FEC_COMPROBANTE,P234_COD_FLETE,P234_COD_LISTA_PRECIO, P234_DESCUENTO,P234_PORC_DESCUE'
||'NTO,P234_PRECIO_UNITARIO,P234_DECIMALES,P234_RECARGO,P234_RECARGO_1,P234_COD_MONEDA'
,p_attribute_03=>'P0_MENSAJE_VALIDACION,P234_PORC_DESCUENTO,P234_DESCUENTO,P234_RECARGO_1,P234_DESCUENTO_1'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_server_condition_type=>'NEVER'
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
 p_id=>wwv_flow_imp.id(99282074782806404)
,p_event_id=>wwv_flow_imp.id(99281735930806401)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P234_PRECIO_UNITARIO  := replace(:P234_PRECIO_UNITARIO,''.'');',
'VTPEDIDO.PR_VALIDA_MIX_DESCUENTOS(P_VAR_CANTIDAD_PROMO_MIX  => :P234_CANTIDAD_PROMO_MIX,',
'                                    P_DET_COD_ARTICULO        => :P234_COD_ARTICULO,',
'                                    P_VAR_COD_EMPRESA         => :P234_COD_EMPRESA,',
'                                    P_VAR_COD_CLIENTE         => :P234_COD_CLIENTE,',
'                                    P_VAR_COD_LISTA_PRECIO    => :P234_COD_LISTA_PRECIO,',
'                                    P_DET_NRO_PROMO           => :P234_NRO_PROMO_1,',
'                                    P_DET_PORC_DESCUENTO      => :P234_PORC_DESCUENTO,',
'                                    P_DET_CANTIDAD            => :P234_CANTIDAD,',
'                                    P_DET_IND_PROMO           => :P234_IND_PROMO,',
'                                    P_VAR_COD_CONDICION_VENTA => :P234_COD_CONDICION_VENTA);',
'',
'  IF :P234_COD_SUCURSAL IN (''09'', ''105'', ''95'', ''30'') THEN',
'    BEGIN',
'      SELECT DESCUENTO',
'        INTO :P234_PORC_DESCUENTO',
'        FROM VT_OFERTAS_OUTLET',
'       WHERE COD_EMPRESA = :P234_COD_EMPRESA',
'         AND COD_ARTICULO = :P234_COD_ARTICULO',
'         AND FEC_CIERRE >= :P234_FEC_COMPROBANTE',
'         AND FEC_ALTA < :P234_FEC_COMPROBANTE',
'         AND COD_ARTICULO = :P234_COD_ARTICULO',
'         AND :P234_COD_SUCURSAL IN (''09'', ''105'', ''95'', ''30'');',
'    EXCEPTION',
'      WHEN OTHERS THEN',
'        :P234_PORC_DESCUENTO := 30;',
'    END;',
'  END IF;',
'  IF :P234_COD_SUCURSAL IN (''30-A'') THEN',
'    BEGIN',
'      SELECT PRECIO_DESCUENTO, 0',
'        INTO :P234_PRECIO_UNITARIO, :P234_PORC_DESCUENTO',
'        FROM VT_PRODUCTOS_RENTA_STNGO',
'       WHERE COD_EMPRESA = :P234_COD_EMPRESA',
'         AND COD_ARTICULO = :P234_COD_ARTICULO',
'         AND FEC_CIERRE >= :P234_FEC_COMPROBANTE',
'         AND FEC_ALTA <= :P234_FEC_COMPROBANTE',
'         AND COD_ARTICULO = :P234_COD_ARTICULO',
'         AND :P234_COD_SUCURSAL IN (''30-A'');',
'    EXCEPTION',
'      WHEN OTHERS THEN',
'        NULL;',
'    END;',
'  END IF;',
'IF :P234_COD_MONEDA = ''1'' THEN ',
'    :P234_PRECIO_UNITARIO  := TO_CHAR(:P234_PRECIO_UNITARIO,''999G999G999G999G999G999G990'');',
'ELSE ',
'    :P234_PRECIO_UNITARIO  := TO_CHAR(:P234_PRECIO_UNITARIO,''999G999G999G999G990D00'');',
'END IF;',
'',
':P234_RECARGO := 0;',
':P234_DESCUENTO := 0;'))
,p_attribute_02=>'P234_COD_ARTICULO,P234_COD_EMPRESA,P234_COD_CLIENTE,P234_COD_LISTA_PRECIO,P234_NRO_PROMO_1,P234_PORC_DESCUENTO,   P234_CANTIDAD,P234_IND_PROMO,P234_COD_CONDICION_VENTA,P234_COD_SUCURSAL,P234_FEC_COMPROBANTE,P234_COD_MONEDA'
,p_attribute_03=>'P234_CANTIDAD_PROMO_MIX,P234_PORC_DESCUENTO,P234_RECARGO,P234_DESCUENTO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(99282157019806405)
,p_event_id=>wwv_flow_imp.id(99281735930806401)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P234_COD_IVA = ''7'' THEN ',
'    :P234_PORC_DESCUENTO := ''0,00'';',
'END IF;'))
,p_attribute_02=>'P234_COD_IVA'
,p_attribute_03=>'P234_PORC_DESCUENTO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(99282200755806406)
,p_event_id=>wwv_flow_imp.id(99281735930806401)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P234_TOTAL_IVA:=replace(:P234_TOTAL_IVA,''.'');:P234_SUBTOTAL:=replace(:P234_SUBTOTAL,''.'');',
':P234_TOTAL:=replace(:P234_TOTAL,''.'');:P234_PRECIO_UNITARIO:=replace(:P234_PRECIO_UNITARIO,''.'');',
':P234_TOTAL_IVA_1:=replace(:P234_TOTAL_IVA_1,''.'');:P234_MONTO_TOTAL:=replace(:P234_MONTO_TOTAL,''.'');',
'DECLARE',
'V_PORC_RECARGO_ANT NUMBER;V_CARGA_PORC_RECARGO VARCHAR2(100);',
'BEGIN',
'INV.VTPEDIDO.PR_CALCULA_RECARGO(P_DET_PORC_RECARGO_ANT=>V_PORC_RECARGO_ANT,P_DET_CARGA_PORC_RECARGO=>V_CARGA_PORC_RECARGO,P_CAB_DECIMALES=>:P234_DECIMALES,',
'P_MENSAJE_ERROR=>:P0_MENSAJE_VALIDACION,',
'P_VAR_MULT=>:P234_VAR_MULT,P_VAR_DIV=>:P234_VAR_DIV,',
'P_DET_PORC_IVA=>:P234_PORC_IVA_1,P_DET_PRECIO_UNITARIO=>:P234_PRECIO_UNITARIO,',
'P_DET_CANTIDAD_UB=>:P234_CANTIDAD_UB,P_DET_CANTIDAD=>:P234_CANTIDAD,',
'P_DET_PORC_DESCUENTO=>:P234_PORC_DESCUENTO,P_DET_PORC_RECARGO=>:P234_PORC_RECARGO,',
'P_DET_DESCUENTO=>:P234_DESCUENTO_1,P_DET_MONTO_TOTAL=>:P234_MONTO_TOTAL,',
'P_DET_RECARGO=>:P234_RECARGO_1,P_VAR_PORC_IVA=>:P234_PORC_IVA,P_DET_COD_ARTICULO=>:P234_COD_ARTICULO,P_VAR_RECARGO=>:P234_RECARGO,',
'P_DET_TOTAL_IVA=>:P234_TOTAL_IVA,P_CAB_IVA_PARCIAL=>:P234_IVA_PARCIAL,',
'P_DET_IVA_ANT=>:P234_IVA_ANT,P_CAB_SUBTOTAL_PARCIAL=>:P234_SUBTOTAL_PARCIAL,P_DET_IMPORTE_ANT=>:P234_IMPORTE_ANT,P_CAB_GRAVADAS_PARCIAL=>:P234_GRAVADAS_PARCIAL,',
'P_CAB_EXENTAS_PARCIAL=>:P234_EXENTAS_PARCIAL,P_CAB_PORCENTAJE_DESCUENTO=>:P234_PORCENTAJE_DESCUENTO,',
'P_CAB_DESCUENTO=>:P234_DESCUENTO,P_CAB_TOTAL_IVA=>:P234_TOTAL_IVA,P_CAB_SUBTOTAL=>:P234_SUBTOTAL,',
'P_CAB_GRAVADAS=>:P234_GRAVADAS,P_CAB_EXENTAS=>:P234_EXENTAS,P_CAB_TOTAL=>:P234_TOTAL,P_CAB_RECARGO_PORC=>:P234_RECARGO_PORC,',
'P_CAB_RECARGO=>:P234_RECARGO,P_DET_MONTO_GRAVADA_10=>:P234_MONTO_GRAVADA_10,P_DET_MONTO_GRAVADA_5=>:P234_MONTO_GRAVADA_5,P_DET_MONTO_EXENTA=>:P234_MONTO_EXENTA,',
'P_CAB_TIP_CAMBIO=>:P234_TIP_CAMBIO,P_COD_EMPRESA=>:P234_COD_EMPRESA,P_COD_FLETE=>:P234_COD_FLETE,P_CAB_FLETE_TOTAL=>:P234_FLETE_TOTAL,',
'P_DET_TOTAL_PESO=>:P234_TOTAL_PESO,P_DET_TOTAL_VOLUMEN=>:P234_VOLUMEN,P_VAR_PORC_RECARGO_ANT=>:P234_PORC_RECARGO_ANT);',
'INV.VTPEDIDO.PR_CALCULOS(P_VAR_MULT=>:P234_VAR_MULT,P_VAR_DIV=>:P234_VAR_DIV,',
'P_DET_PORC_IVA=>:P234_PORC_IVA_1,P_DET_PRECIO_UNITARIO=>:P234_PRECIO_UNITARIO,P_CAB_DECIMALES=>:P234_DECIMALES,',
'P_DET_CANTIDAD_UB=>:P234_CANTIDAD_UB,P_DET_CANTIDAD=>:P234_CANTIDAD,P_DET_PORC_DESCUENTO=>:P234_PORC_DESCUENTO,',
'P_DET_PORC_RECARGO=>:P234_PORC_RECARGO,P_DET_DESCUENTO=>:P234_DESCUENTO_1,',
'P_DET_MONTO_TOTAL=>:P234_MONTO_TOTAL,P_DET_RECARGO=>:P234_RECARGO_1,P_VAR_PORC_IVA=>:P234_PORC_IVA,',
'P_DET_COD_ARTICULO=>:P234_COD_ARTICULO,P_VAR_RECARGO=>:P234_RECARGO,',
'P_DET_TOTAL_IVA=>:P234_TOTAL_IVA_1,P_CAB_IVA_PARCIAL=>:P234_IVA_PARCIAL,',
'P_DET_IVA_ANT=>:P234_IVA_ANT,P_CAB_SUBTOTAL_PARCIAL=>:P234_SUBTOTAL_PARCIAL,',
'P_DET_IMPORTE_ANT=>:P234_IMPORTE_ANT,P_CAB_GRAVADAS_PARCIAL=>:P234_GRAVADAS_PARCIAL,',
'P_CAB_EXENTAS_PARCIAL=>:P234_EXENTAS_PARCIAL,P_CAB_PORCENTAJE_DESCUENTO=>:P234_PORCENTAJE_DESCUENTO,',
'P_CAB_DESCUENTO=>:P234_DESCUENTO,P_CAB_TOTAL_IVA=>:P234_TOTAL_IVA,',
'P_CAB_SUBTOTAL=>:P234_SUBTOTAL,P_CAB_GRAVADAS=>:P234_GRAVADAS,P_CAB_EXENTAS=>:P234_EXENTAS,',
'P_CAB_TOTAL=>:P234_TOTAL,P_CAB_RECARGO_PORC=>:P234_RECARGO_PORC,P_CAB_RECARGO=>:P234_RECARGO,P_DET_MONTO_GRAVADA_10=>:P234_MONTO_GRAVADA_10,',
'P_DET_MONTO_GRAVADA_5=>:P234_MONTO_GRAVADA_5,',
'P_DET_MONTO_EXENTA=>:P234_MONTO_EXENTA,',
'P_MENSAJE_ERROR=>:P0_MENSAJE_VALIDACION,',
'P_CAB_TIP_CAMBIO=>:P234_TIP_CAMBIO,',
'P_COD_EMPRESA=>:P234_COD_EMPRESA,',
'P_COD_FLETE=>:P234_COD_FLETE,',
'P_CAB_FLETE_TOTAL=>:P234_FLETE_TOTAL,',
'P_DET_TOTAL_PESO=>:P234_TOTAL_PESO,',
'P_DET_TOTAL_VOLUMEN=>:P234_TOTAL_VOLUMEN);',
'END;',
''))
,p_attribute_02=>'P234_DECIMALES,P234_VAR_MULT,P234_VAR_DIV,P234_PORC_IVA_1,P234_PRECIO_UNITARIO,P234_CANTIDAD,P234_PORC_DESCUENTO, P234_PORC_RECARGO,P234_DESCUENTO,P234_MONTO_TOTAL,P234_RECARGO_1,P234_PORC_IVA,P234_COD_ARTICULO, P234_RECARGO,P234_TOTAL_IVA_1,P234_IVA'
||'_PARCIAL,P234_IVA_ANT,P234_SUBTOTAL_PARCIAL,P234_IMPORTE_ANT, P234_GRAVADAS_PARCIAL,P234_EXENTAS_PARCIAL,P234_PORCENTAJE_DESCUENTO,P234_DESCUENTO,P234_TOTAL_IVA, P234_SUBTOTAL,P234_GRAVADAS,P234_EXENTAS,P234_TOTAL,P234_RECARGO_PORC,P234_MONTO_GRAVADA'
||'_10,P234_MONTO_GRAVADA_5, P234_MONTO_EXENTA,P234_TIP_CAMBIO,P234_COD_EMPRESA,P234_COD_FLETE,P234_TOTAL_PESO,P234_VOLUMEN,P234_DESCUENTO_1'
,p_attribute_03=>'P0_MENSAJE_VALIDACION,P234_VAR_MULT,P234_VAR_DIV,P234_CANTIDAD_UB,P234_RECARGO_1,P234_TOTAL_IVA_1, P234_IVA_PARCIAL,P234_IVA_ANT,P234_SUBTOTAL_PARCIAL,P234_IMPORTE_ANT,P234_GRAVADAS_PARCIAL, P234_EXENTAS_PARCIAL,P234_PORCENTAJE_DESCUENTO,P234_GRAVADA'
||'S,P234_EXENTAS,P234_RECARGO_PORC,P234_MONTO_GRAVADA_5,P234_MONTO_GRAVADA_10,P234_MONTO_EXENTA, P234_FLETE_TOTAL,P234_PORC_RECARGO_ANT,P234_MONTO_TOTAL,P234_DESCUENTO_1,P234_PORC_DESCUENTO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(99282397578806407)
,p_event_id=>wwv_flow_imp.id(99281735930806401)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P234_COD_MONEDA = ''1'' THEN',
'    :P234_MONTO_TOTAL := TO_NUMBER(REPLACE(:P234_MONTO_TOTAL,''.''));',
'    :P234_TOTAL_IVA_1 := TO_NUMBER(REPLACE(:P234_TOTAL_IVA_1,''.''));',
'    :P234_CANTIDAD := TO_NUMBER(REPLACE(:P234_CANTIDAD,''.''));',
'    :P234_PORC_DESCUENTO := TO_NUMBER(REPLACE(:P234_PORC_DESCUENTO,''.''));',
'    :P234_PORC_RECARGO := TO_NUMBER(REPLACE(:P234_PORC_RECARGO,''.''));',
'    inv.vtpedido.pr_redondeo_50(p_cod_moneda          => :P234_COD_MONEDA,',
'                                 p_det_monto_total    =>  :P234_MONTO_TOTAL,',
'                                 p_det_total_iva       => :P234_TOTAL_IVA_1,',
'                                 p_det_precio_unitario =>  :P234_PRECIO_UNITARIO,',
'                                 p_det_cantidad        => :P234_CANTIDAD,',
'                                 p_det_porc_descuento  =>  :P234_PORC_DESCUENTO,',
'                                 p_det_porc_recargo    =>  :P234_PORC_RECARGO);',
'',
'    :P234_PRECIO_UNITARIO := TO_CHAR(:P234_PRECIO_UNITARIO , ''999G999G999G999G999G999G990'');',
'END IF;'))
,p_attribute_02=>'P234_COD_MONEDA,P234_MONTO_TOTAL,P234_TOTAL_IVA_1,P234_CANTIDAD,P234_PORC_DESCUENTO,P234_PORC_RECARGO'
,p_attribute_03=>'P234_PRECIO_UNITARIO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(99282461191806408)
,p_event_id=>wwv_flow_imp.id(99281735930806401)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P234_COD_MONEDA  = ''1'' THEN ',
':P234_TOTAL_IVA:=replace(:P234_TOTAL_IVA,''.'');:P234_SUBTOTAL:=replace(:P234_SUBTOTAL,''.'');',
':P234_TOTAL:=replace(:P234_TOTAL,''.'');:P234_PRECIO_UNITARIO:=replace(:P234_PRECIO_UNITARIO,''.'');',
':P234_TOTAL_IVA_1:=replace(:P234_TOTAL_IVA_1,''.'');:P234_MONTO_TOTAL:=replace(:P234_MONTO_TOTAL,''.'');',
'DECLARE',
'V_PORC_RECARGO_ANT NUMBER;V_CARGA_PORC_RECARGO VARCHAR2(100);',
'BEGIN',
'INV.VTPEDIDO.PR_CALCULA_RECARGO(P_DET_PORC_RECARGO_ANT=>V_PORC_RECARGO_ANT,P_DET_CARGA_PORC_RECARGO=>V_CARGA_PORC_RECARGO,P_CAB_DECIMALES=>:P234_DECIMALES,',
'P_MENSAJE_ERROR=>:P0_MENSAJE_VALIDACION,',
'P_VAR_MULT=>:P234_VAR_MULT,P_VAR_DIV=>:P234_VAR_DIV,',
'P_DET_PORC_IVA=>:P234_PORC_IVA_1,P_DET_PRECIO_UNITARIO=>:P234_PRECIO_UNITARIO,',
'P_DET_CANTIDAD_UB=>:P234_CANTIDAD_UB,P_DET_CANTIDAD=>:P234_CANTIDAD,',
'P_DET_PORC_DESCUENTO=>:P234_PORC_DESCUENTO,P_DET_PORC_RECARGO=>:P234_PORC_RECARGO,',
'P_DET_DESCUENTO=>:P234_DESCUENTO_1,P_DET_MONTO_TOTAL=>:P234_MONTO_TOTAL,',
'P_DET_RECARGO=>:P234_RECARGO_1,P_VAR_PORC_IVA=>:P234_PORC_IVA,P_DET_COD_ARTICULO=>:P234_COD_ARTICULO,P_VAR_RECARGO=>:P234_RECARGO,',
'P_DET_TOTAL_IVA=>:P234_TOTAL_IVA,P_CAB_IVA_PARCIAL=>:P234_IVA_PARCIAL,',
'P_DET_IVA_ANT=>:P234_IVA_ANT,P_CAB_SUBTOTAL_PARCIAL=>:P234_SUBTOTAL_PARCIAL,P_DET_IMPORTE_ANT=>:P234_IMPORTE_ANT,P_CAB_GRAVADAS_PARCIAL=>:P234_GRAVADAS_PARCIAL,',
'P_CAB_EXENTAS_PARCIAL=>:P234_EXENTAS_PARCIAL,P_CAB_PORCENTAJE_DESCUENTO=>:P234_PORCENTAJE_DESCUENTO,',
'P_CAB_DESCUENTO=>:P234_DESCUENTO,P_CAB_TOTAL_IVA=>:P234_TOTAL_IVA,P_CAB_SUBTOTAL=>:P234_SUBTOTAL,',
'P_CAB_GRAVADAS=>:P234_GRAVADAS,P_CAB_EXENTAS=>:P234_EXENTAS,P_CAB_TOTAL=>:P234_TOTAL,P_CAB_RECARGO_PORC=>:P234_RECARGO_PORC,',
'P_CAB_RECARGO=>:P234_RECARGO,P_DET_MONTO_GRAVADA_10=>:P234_MONTO_GRAVADA_10,P_DET_MONTO_GRAVADA_5=>:P234_MONTO_GRAVADA_5,P_DET_MONTO_EXENTA=>:P234_MONTO_EXENTA,',
'P_CAB_TIP_CAMBIO=>:P234_TIP_CAMBIO,P_COD_EMPRESA=>:P234_COD_EMPRESA,P_COD_FLETE=>:P234_COD_FLETE,P_CAB_FLETE_TOTAL=>:P234_FLETE_TOTAL,',
'P_DET_TOTAL_PESO=>:P234_TOTAL_PESO,P_DET_TOTAL_VOLUMEN=>:P234_VOLUMEN,P_VAR_PORC_RECARGO_ANT=>:P234_PORC_RECARGO_ANT);',
'INV.VTPEDIDO.PR_CALCULOS(P_VAR_MULT=>:P234_VAR_MULT,P_VAR_DIV=>:P234_VAR_DIV,',
'P_DET_PORC_IVA=>:P234_PORC_IVA_1,P_DET_PRECIO_UNITARIO=>:P234_PRECIO_UNITARIO,P_CAB_DECIMALES=>:P234_DECIMALES,',
'P_DET_CANTIDAD_UB=>:P234_CANTIDAD_UB,P_DET_CANTIDAD=>:P234_CANTIDAD,P_DET_PORC_DESCUENTO=>:P234_PORC_DESCUENTO,',
'P_DET_PORC_RECARGO=>:P234_PORC_RECARGO,P_DET_DESCUENTO=>:P234_DESCUENTO_1,',
'P_DET_MONTO_TOTAL=>:P234_MONTO_TOTAL,P_DET_RECARGO=>:P234_RECARGO_1,P_VAR_PORC_IVA=>:P234_PORC_IVA,',
'P_DET_COD_ARTICULO=>:P234_COD_ARTICULO,P_VAR_RECARGO=>:P234_RECARGO,',
'P_DET_TOTAL_IVA=>:P234_TOTAL_IVA_1,P_CAB_IVA_PARCIAL=>:P234_IVA_PARCIAL,',
'P_DET_IVA_ANT=>:P234_IVA_ANT,P_CAB_SUBTOTAL_PARCIAL=>:P234_SUBTOTAL_PARCIAL,',
'P_DET_IMPORTE_ANT=>:P234_IMPORTE_ANT,P_CAB_GRAVADAS_PARCIAL=>:P234_GRAVADAS_PARCIAL,',
'P_CAB_EXENTAS_PARCIAL=>:P234_EXENTAS_PARCIAL,P_CAB_PORCENTAJE_DESCUENTO=>:P234_PORCENTAJE_DESCUENTO,',
'P_CAB_DESCUENTO=>:P234_DESCUENTO,P_CAB_TOTAL_IVA=>:P234_TOTAL_IVA,',
'P_CAB_SUBTOTAL=>:P234_SUBTOTAL,P_CAB_GRAVADAS=>:P234_GRAVADAS,P_CAB_EXENTAS=>:P234_EXENTAS,',
'P_CAB_TOTAL=>:P234_TOTAL,P_CAB_RECARGO_PORC=>:P234_RECARGO_PORC,P_CAB_RECARGO=>:P234_RECARGO,P_DET_MONTO_GRAVADA_10=>:P234_MONTO_GRAVADA_10,',
'P_DET_MONTO_GRAVADA_5=>:P234_MONTO_GRAVADA_5,',
'P_DET_MONTO_EXENTA=>:P234_MONTO_EXENTA,',
'P_MENSAJE_ERROR=>:P0_MENSAJE_VALIDACION,',
'P_CAB_TIP_CAMBIO=>:P234_TIP_CAMBIO,',
'P_COD_EMPRESA=>:P234_COD_EMPRESA,',
'P_COD_FLETE=>:P234_COD_FLETE,',
'P_CAB_FLETE_TOTAL=>:P234_FLETE_TOTAL,',
'P_DET_TOTAL_PESO=>:P234_TOTAL_PESO,',
'P_DET_TOTAL_VOLUMEN=>:P234_TOTAL_VOLUMEN);',
'END;',
'END  IF;',
''))
,p_attribute_02=>'P234_DECIMALES,P234_VAR_MULT,P234_VAR_DIV,P234_PORC_IVA_1,P234_PRECIO_UNITARIO,P234_CANTIDAD,P234_PORC_DESCUENTO, P234_PORC_RECARGO,P234_DESCUENTO,P234_MONTO_TOTAL,P234_RECARGO_1,P234_PORC_IVA,P234_COD_ARTICULO, P234_RECARGO,P234_TOTAL_IVA_1,P234_IVA'
||'_PARCIAL,P234_IVA_ANT,P234_SUBTOTAL_PARCIAL,P234_IMPORTE_ANT, P234_GRAVADAS_PARCIAL,P234_EXENTAS_PARCIAL,P234_PORCENTAJE_DESCUENTO,P234_DESCUENTO,P234_TOTAL_IVA, P234_SUBTOTAL,P234_GRAVADAS,P234_EXENTAS,P234_TOTAL,P234_RECARGO_PORC,P234_MONTO_GRAVADA'
||'_10,P234_MONTO_GRAVADA_5, P234_MONTO_EXENTA,P234_TIP_CAMBIO,P234_COD_EMPRESA,P234_COD_FLETE,P234_TOTAL_PESO,P234_VOLUMEN,P234_DESCUENTO_1,P234_COD_MONEDA'
,p_attribute_03=>'P0_MENSAJE_VALIDACION,P234_VAR_MULT,P234_VAR_DIV,P234_CANTIDAD_UB,P234_RECARGO_1,P234_TOTAL_IVA_1, P234_IVA_PARCIAL,P234_IVA_ANT,P234_SUBTOTAL_PARCIAL,P234_IMPORTE_ANT,P234_GRAVADAS_PARCIAL, P234_EXENTAS_PARCIAL,P234_PORCENTAJE_DESCUENTO,P234_GRAVADA'
||'S,P234_EXENTAS,P234_RECARGO_PORC,P234_MONTO_GRAVADA_5,P234_MONTO_GRAVADA_10,P234_MONTO_EXENTA, P234_FLETE_TOTAL,P234_PORC_RECARGO_ANT,P234_MONTO_TOTAL,P234_DESCUENTO_1,P234_PORC_DESCUENTO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(99282561548806409)
,p_event_id=>wwv_flow_imp.id(99281735930806401)
,p_event_result=>'TRUE'
,p_action_sequence=>90
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'INV.VTPEDIDO.PR_PED_PEND(P_DET_STOCK_ACTUAL => :P234_STOCK_ACTUAL,',
'               P_VAR_COD_EMPRESA  => :P234_COD_EMPRESA,',
'               P_DET_COD_ARTICULO => :P234_COD_ARTICULO,',
'               P_DET_STOCK_RESERV => :P234_STOCK_RESERV);',
'',
'IF :P234_COD_SUCURSAL IN (''09'', ''105'', ''95'', ''30'') THEN',
'BEGIN',
'SELECT DESCUENTO',
'INTO :P234_PORC_DESCUENTO',
'FROM VT_OFERTAS_OUTLET',
'WHERE COD_EMPRESA = :P234_COD_EMPRESA',
'AND COD_ARTICULO = :P234_COD_ARTICULO',
'AND FEC_CIERRE >= :P234_FEC_COMPROBANTE',
'AND FEC_ALTA <= :P234_FEC_COMPROBANTE',
'AND COD_ARTICULO = :P234_COD_ARTICULO',
'AND :P234_COD_SUCURSAL IN (''09'', ''105'', ''95'', ''30'');',
'EXCEPTION',
'WHEN OTHERS THEN',
':P234_PORC_DESCUENTO := 30;',
'END;',
'END IF;',
'IF :P234_COD_SUCURSAL IN (''30-A'') THEN',
'BEGIN',
'SELECT PRECIO_DESCUENTO, 0',
'INTO :P234_PRECIO_UNITARIO, :P234_PORC_DESCUENTO',
'FROM VT_PRODUCTOS_RENTA_STNGO',
'WHERE COD_EMPRESA = :P234_COD_EMPRESA',
'AND COD_ARTICULO = :P234_COD_ARTICULO',
'AND FEC_CIERRE >= :P234_FEC_COMPROBANTE',
'AND FEC_ALTA <= :P234_FEC_COMPROBANTE',
'AND COD_ARTICULO = :P234_COD_ARTICULO',
'AND :P234_COD_SUCURSAL IN (''30-A'');',
'EXCEPTION',
'WHEN OTHERS THEN',
'NULL;',
'END;',
'END IF;',
'',
''))
,p_attribute_02=>'P234_COD_EMPRESA,P234_COD_ARTICULO,P234_COD_SUCURSAL,P234_FEC_COMPROBANTE'
,p_attribute_03=>'P234_STOCK_ACTUAL,P234_STOCK_RESERV,P234_COD_SUCURSAL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(99282602830806410)
,p_event_id=>wwv_flow_imp.id(99281735930806401)
,p_event_result=>'TRUE'
,p_action_sequence=>100
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P234_TOTAL_IVA := replace(:P234_TOTAL_IVA,''.'');',
':P234_SUBTOTAL := replace(:P234_SUBTOTAL,''.'');',
':P234_TOTAL   := replace(:P234_TOTAL,''.'');',
':P234_PRECIO_UNITARIO  := replace(:P234_PRECIO_UNITARIO,''.'');',
':P234_TOTAL_IVA_1 := replace(:P234_TOTAL_IVA_1,''.'');',
':P234_MONTO_TOTAL := replace(:P234_MONTO_TOTAL,''.'');',
'',
':P234_DESCUENTO_1 := round((nvl(:P234_CANTIDAD, 0) *',
'                           (nvl(:P234_PRECIO_UNITARIO, 0)) *',
'                           (nvl(:P234_PORC_DESCUENTO, 0) / 100)),',
'                           nvl(:P234_DECIMALES, 0));',
'IF :P234_COD_MONEDA = ''1'' THEN ',
'    :P234_PRECIO_UNITARIO  := TO_CHAR(:P234_PRECIO_UNITARIO,''999G999G999G999G999G999G990'');',
'    :P234_TOTAL_IVA_1 := TO_CHAR(:P234_TOTAL_IVA_1,''999G999G999G999G999G999G990'');',
'    :P234_MONTO_TOTAL := TO_CHAR(:P234_MONTO_TOTAL,''999G999G999G999G999G999G990'');',
'    :P234_TOTAL_IVA := TO_CHAR(:P234_TOTAL_IVA,''999G999G999G999G999G999G990'');',
'    :P234_SUBTOTAL := TO_CHAR(:P234_SUBTOTAL,''999G999G999G999G999G999G990'');',
'    :P234_TOTAL   := TO_CHAR(:P234_TOTAL,''999G999G999G999G999G999G990'');',
'ELSE ',
'    :P234_PRECIO_UNITARIO  := TO_CHAR(:P234_PRECIO_UNITARIO,''999G999G999G999G990D00'');',
'    :P234_TOTAL_IVA_1 := TO_CHAR(:P234_TOTAL_IVA_1,''999G999G999G999G990D00'');',
'    :P234_MONTO_TOTAL := TO_CHAR(:P234_MONTO_TOTAL,''999G999G999G999G990D00'');',
'    :P234_TOTAL_IVA := TO_CHAR(:P234_TOTAL_IVA,''999G999G999G999G990D00'');',
'    :P234_SUBTOTAL := TO_CHAR(:P234_SUBTOTAL,''999G999G999G999G990D00'');',
'    :P234_TOTAL   := TO_CHAR(:P234_TOTAL,''999G999G999G999G990D00'');',
'END IF;',
''))
,p_attribute_02=>'P234_TOTAL_IVA,P234_SUBTOTAL,P234_TOTAL,P234_PRECIO_UNITARIO,P234_TOTAL_IVA_1,P234_MONTO_TOTAL,P234_CANTIDAD,P234_PORC_DESCUENTO,P234_DECIMALES,P234_COD_MONEDA'
,p_attribute_03=>'P234_TOTAL_IVA,P234_SUBTOTAL,P234_TOTAL,P234_PRECIO_UNITARIO,P234_TOTAL_IVA_1,P234_MONTO_TOTAL,P234_DESCUENTO_1'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(99282869740806412)
,p_event_id=>wwv_flow_imp.id(99281735930806401)
,p_event_result=>'TRUE'
,p_action_sequence=>110
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P234_AGREGAR_DETALLES'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_02=>'1'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(99283003526806414)
,p_event_id=>wwv_flow_imp.id(99281735930806401)
,p_event_result=>'TRUE'
,p_action_sequence=>120
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P234_CARGA_DETALLE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(68883336748126418)
,p_name=>'Validaciones columna precio unitario_1'
,p_event_sequence=>290
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P234_PRECIO_UNITARIO'
,p_bind_type=>'bind'
,p_bind_event_type=>'focusout'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(68883489075126419)
,p_event_id=>wwv_flow_imp.id(68883336748126418)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    VPRECIO NUMBER(18, 3);',
'  BEGIN',
'    IF :P234_MODIFICA_PRECIO <> ''N'' THEN',
'      IF NVL(:P234_VARIACION_MENOS, 0) > 0 AND NVL(:P234_PRECIO_LISTA, 0) > 0 THEN',
'        IF ROUND(:P234_PRECIO_LISTA -',
'                 (:P234_PRECIO_LISTA * :P234_VARIACION_MENOS / 100),',
'                 :P234_DECIMALES) > :P234_PRECIO_UNITARIO THEN',
unistr('          :P0_MENSAJE_VALIDACION := ''Variaci\00F3n de precio en menos supera al permitido.'';'),
'          RETURN;',
'        END IF;',
'      END IF;',
'    ',
'      IF NVL(:P234_VARIACION_MENOS, 0) > 0 AND NVL(:P234_PRECIO_LISTA, 0) > 0 THEN',
'        IF ROUND(:P234_PRECIO_LISTA +',
'                 (:P234_PRECIO_LISTA * :P234_VARIACION_MENOS / 100),',
'                 :P234_DECIMALES) < :P234_PRECIO_UNITARIO THEN',
unistr('          :P0_MENSAJE_VALIDACION := ''Variaci\00F3n de precio en m\00E1s supera al permitido.'';'),
'          RETURN;',
'        END IF;',
'      END IF;',
'    END IF;',
'  END;',
'',
'  IF NVL(:P234_DESCUENTO_1, 0) > 0 THEN',
'    :P234_DESCUENTO_1 := 0;',
'  END IF;',
'',
'  IF NVL(:P234_RECARGO_1, 0) > 0 THEN',
'    :P234_RECARGO_1 := 0;',
'  END IF;',
'',
'  IF :P234_CONTROL_FIN IS NULL THEN',
'    IF :P234_COD_ARTICULO = :P234_RECARGO THEN',
'      :P234_PRECIO_UNITARIO  := NVL(:P234_RECARGO_PORC, 0);',
'      :P234_CONTROL_FIN := ''S'';',
'      :P234_PORC_DESCUENTO   := 0;',
'      :P234_PORC_RECARGO     := 0;',
'    END IF;',
'  ',
'    IF :P234_COD_ARTICULO = ''DESC.GASTRO'' THEN',
'      :P234_CONTROL_FIN_3 := ''S'';',
'      :P234_PORC_DESCUENTO     := 0;',
'      :P234_PORC_RECARGO       := 0;',
'    END IF;',
'  ELSE',
'    IF :P234_COD_ARTICULO IS NOT NULL THEN',
'      :P234_PORC_DESCUENTO := 0;',
'      :P234_PORC_RECARGO   := 0;',
'    END IF;',
'  END IF;',
'',
'  DECLARE',
'    V_PORC_DESCUENTO_ANT   NUMBER;',
'    V_CARGA_PORC_DESCUENTO VARCHAR2(100);',
'  ',
'  BEGIN',
'    INV.VTPEDIDO.PR_CALCULA_DESCUENTO(P_DET_PORC_DESCUENTO_ANT   => V_PORC_DESCUENTO_ANT,',
'                                      P_PORC_DESCUENTO           => :P234_PORC_DESCUENTO,',
'                                      P_DESCUENTO                => :P234_DESCUENTO,',
'                                      P_DET_CARGA_PORC_DESCUENTO => :P234_CARGA_PORC_RECARGO,',
'                                      P_DET_CANTIDAD             => :P234_CANTIDAD,',
'                                      P_DET_PRECIO_UNITARIO      => :P234_PRECIO_UNITARIO,',
'                                      P_DECIMALES                => :P234_DECIMALES,',
'                                      P_DET_NRO_PROMO            => :P234_IND_PROMO,',
'                                      P_PORC_DESCUENTO_ANT       => V_PORC_DESCUENTO_ANT,',
'                                      P_RECARGO                  => :P234_RECARGO);',
'  END;'))
,p_attribute_02=>'P234_MODIFICA_PRECIO,P234_VARIACION_MENOS,P234_PRECIO_LISTA,P234_DECIMALES,P234_PRECIO_UNITARIO, P234-P234_DESCUENTO_1,P234_RECARGO_1,P234_CONTROL_FIN,P234_COD_ARTICULO,P234_RECARGO,P234_RECARGO_PORC, P234_PORC_DESCUENTO,P234_DESCUENTO,P234_NRO_PROMO'
||'_1'
,p_attribute_03=>'P0_MENSAJE_VALIDACION,P234_DESCUENTO_1,P234_RECARGO_1,P234_PRECIO_UNITARIO,P234_CONTROL_FIN,P234_PORC_DESCUENTO, P234_PORC_RECARGO,P234_CONTROL_FIN_3,P234_RECARGO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(68883509176126420)
,p_event_id=>wwv_flow_imp.id(68883336748126418)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE ',
'    V_PORC_RECARGO_ANT NUMBER;',
'    V_CARGA_PORC_RECARGO    VARCHAR2(100);',
'    V_TOTAL_VOLUMEN  NUMBER;',
'    V_MONTO_TOTAL NUMBER;',
'    V_TOTAL_IVA NUMBER;',
'BEGIN',
':P234_TOTAL_IVA := replace(:P234_TOTAL_IVA,''.'');',
':P234_SUBTOTAL := replace(:P234_SUBTOTAL,''.'');',
':P234_TOTAL   := replace(:P234_TOTAL,''.'');',
':P234_PRECIO_UNITARIO  := replace(:P234_PRECIO_UNITARIO,''.'');',
':P234_TOTAL_IVA_1 := replace(:P234_TOTAL_IVA_1,''.'');',
':P234_MONTO_TOTAL := replace(:P234_MONTO_TOTAL,''.'');',
'INV.VTPEDIDO.PR_CALCULA_RECARGO(P_DET_PORC_RECARGO_ANT     => V_PORC_RECARGO_ANT,',
'P_DET_CARGA_PORC_RECARGO => V_CARGA_PORC_RECARGO,',
'P_CAB_DECIMALES => :P234_DECIMALES,',
'P_MENSAJE_ERROR  => :P0_MENSAJE_VALIDACION,',
'P_VAR_MULT  => :P234_VAR_MULT,',
'P_VAR_DIV => :P234_VAR_DIV,',
'P_DET_PORC_IVA => :P234_PORC_IVA_1,',
'P_DET_PRECIO_UNITARIO => :P234_PRECIO_UNITARIO,',
'P_DET_CANTIDAD_UB => :P234_CANTIDAD_UB,',
'P_DET_CANTIDAD => :P234_CANTIDAD,',
'P_DET_PORC_DESCUENTO=> :P234_PORC_DESCUENTO,',
'P_DET_PORC_RECARGO => :P234_PORC_RECARGO,',
'P_DET_DESCUENTO => :P234_DESCUENTO_1,',
'P_DET_MONTO_TOTAL => :P234_MONTO_TOTAL,',
'P_DET_RECARGO => :P234_RECARGO_1,',
'P_VAR_PORC_IVA => :P234_PORC_IVA,',
'P_DET_COD_ARTICULO => :P234_COD_ARTICULO,',
'P_VAR_RECARGO   => :P234_RECARGO,',
'P_DET_TOTAL_IVA  => :P234_TOTAL_IVA_1,',
'P_CAB_IVA_PARCIAL => :P234_IVA_PARCIAL,',
'P_DET_IVA_ANT   => :P234_IVA_ANT,',
'P_CAB_SUBTOTAL_PARCIAL => :P234_SUBTOTAL_PARCIAL,',
'P_DET_IMPORTE_ANT     => :P234_IMPORTE_ANT,',
'P_CAB_GRAVADAS_PARCIAL => :P234_GRAVADAS_PARCIAL,',
'P_CAB_EXENTAS_PARCIAL  => :P234_EXENTAS_PARCIAL,',
'P_CAB_PORCENTAJE_DESCUENTO => :P234_PORCENTAJE_DESCUENTO,',
'P_CAB_DESCUENTO => :P234_DESCUENTO,',
'P_CAB_TOTAL_IVA => :P234_TOTAL_IVA,',
'P_CAB_SUBTOTAL => :P234_SUBTOTAL,',
'P_CAB_GRAVADAS => :P234_GRAVADAS,',
'P_CAB_EXENTAS => :P234_EXENTAS,',
'P_CAB_TOTAL => :P234_TOTAL,',
'P_CAB_RECARGO_PORC => :P234_RECARGO_PORC,',
'P_CAB_RECARGO => :P234_RECARGO,',
'P_DET_MONTO_GRAVADA_10 => :P234_MONTO_GRAVADA_10,',
'P_DET_MONTO_GRAVADA_5 => :P234_MONTO_GRAVADA_5,',
'P_DET_MONTO_EXENTA => :P234_MONTO_EXENTA,',
'P_CAB_TIP_CAMBIO => :P234_TIP_CAMBIO,',
'P_COD_EMPRESA => :P234_COD_EMPRESA,',
'P_COD_FLETE => :P234_COD_FLETE,',
'P_CAB_FLETE_TOTAL => :P234_FLETE_TOTAL,',
'P_DET_TOTAL_PESO => :P234_TOTAL_PESO,',
'P_DET_TOTAL_VOLUMEN => :P234_TOTAL_VOLUMEN,',
'P_VAR_PORC_RECARGO_ANT => :P234_PORC_RECARGO_ANT);',
'END;'))
,p_attribute_02=>'P234_DECIMALES,P234_VAR_MULT,P234_VAR_DIV,P234_PORC_IVA_1,P234_PRECIO_UNITARIO,P234_CANTIDAD, P234_PORC_DESCUENTO,P234_PORC_RECARGO,P234_DESCUENTO_1,P234_MONTO_TOTAL,P234_RECARGO_1,P234_PORC_IVA, P234_COD_ARTICULO,P234_RECARGO,P234_TOTAL_IVA_1,P234_I'
||'VA_PARCIAL,P234_IVA_ANT,P234_SUBTOTAL_PARCIAL, P234_IMPORTE_ANT,P234_GRAVADAS_PARCIAL,P234_EXENTAS_PARCIAL,P234_PORCENTAJE_DESCUENTO,P234_DESCUENTO, P234_TOTAL_IVA,P234_SUBTOTAL,P234_GRAVADAS,P234_EXENTAS,P234_TOTAL,P234_RECARGO_PORC,P234_MONTO_GRAVA'
||'DA_10, P234_MONTO_GRAVADA_5,P234_MONTO_EXENTA,P234_TIP_CAMBIO,P234_COD_EMPRESA,P234_COD_FLETE, P234_TOTAL_PESO,P234_TOTAL_VOLUMEN'
,p_attribute_03=>'P234_MONTO_TOTAL,P0_MENSAJE_VALIDACION,P234_VAR_MULT,P234_VAR_DIV,P234_CANTIDAD_UB,P234_RECARGO_1,   P234_TOTAL_IVA_1,P234_IVA_PARCIAL,P234_IVA_ANT,P234_SUBTOTAL_PARCIAL,P234_IMPORTE_ANT,   P234_GRAVADAS_PARCIAL,P234_EXENTAS_PARCIAL,P234_PORCENTAJE_D'
||'ESCUENTO,P234_GRAVADAS,P234_EXENTAS,   P234_RECARGO_PORC,P234_MONTO_GRAVADA_5,P234_MONTO_GRAVADA_10,P234_MONTO_EXENTA,P234_FLETE_TOTAL,   P234_PORC_RECARGO_ANT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(94557368964213401)
,p_event_id=>wwv_flow_imp.id(68883336748126418)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P234_TOTAL_IVA := replace(:P234_TOTAL_IVA,''.'');',
':P234_SUBTOTAL := replace(:P234_SUBTOTAL,''.'');',
':P234_TOTAL   := replace(:P234_TOTAL,''.'');',
':P234_PRECIO_UNITARIO  := replace(:P234_PRECIO_UNITARIO,''.'');',
':P234_TOTAL_IVA_1 := replace(:P234_TOTAL_IVA_1,''.'');',
':P234_MONTO_TOTAL := replace(:P234_MONTO_TOTAL,''.'');',
':P234_PORC_DESCUENTO := replace(:P234_PORC_DESCUENTO,''.'');',
':P234_DESCUENTO_1 := round((nvl(:P234_CANTIDAD, 0) *',
'                           (nvl(:P234_PRECIO_UNITARIO, 0)) *',
'                           (nvl(:P234_PORC_DESCUENTO, 0) / 100)),',
'                           nvl(:P234_DECIMALES, 0));',
'IF :P234_COD_MONEDA = ''1'' THEN ',
'    :P234_PRECIO_UNITARIO  := TO_CHAR(:P234_PRECIO_UNITARIO,''999G999G999G999G999G999G990'');',
'    :P234_TOTAL_IVA_1 := TO_CHAR(:P234_TOTAL_IVA_1,''999G999G999G999G999G999G990'');',
'    :P234_MONTO_TOTAL := TO_CHAR(:P234_MONTO_TOTAL,''999G999G999G999G999G999G990'');',
'    :P234_TOTAL_IVA := TO_CHAR(:P234_TOTAL_IVA,''999G999G999G999G999G999G990'');',
'    :P234_SUBTOTAL := TO_CHAR(:P234_SUBTOTAL,''999G999G999G999G999G999G990'');',
'    :P234_TOTAL   := TO_CHAR(:P234_TOTAL,''999G999G999G999G999G999G990'');',
'ELSE ',
'    :P234_PRECIO_UNITARIO  := TO_CHAR(:P234_PRECIO_UNITARIO,''999G999G999G999G990D00'');',
'    :P234_TOTAL_IVA_1 := TO_CHAR(:P234_TOTAL_IVA_1,''999G999G999G999G990D00'');',
'    :P234_MONTO_TOTAL := TO_CHAR(:P234_MONTO_TOTAL,''999G999G999G999G990D00'');',
'    :P234_TOTAL_IVA := TO_CHAR(:P234_TOTAL_IVA,''999G999G999G999G990D00'');',
'    :P234_SUBTOTAL := TO_CHAR(:P234_SUBTOTAL,''999G999G999G999G990D00'');',
'    :P234_TOTAL   := TO_CHAR(:P234_TOTAL,''999G999G999G999G990D00'');',
'END IF;',
''))
,p_attribute_02=>'P234_TOTAL_IVA,P234_SUBTOTAL,P234_TOTAL,P234_PRECIO_UNITARIO,P234_TOTAL_IVA_1,P234_MONTO_TOTAL,P234_CANTIDAD,P234_PORC_DESCUENTO,P234_DECIMALES,P234_COD_MONEDA'
,p_attribute_03=>'P234_TOTAL_IVA,P234_SUBTOTAL,P234_TOTAL,P234_PRECIO_UNITARIO,P234_TOTAL_IVA_1,P234_MONTO_TOTAL,P234_DESCUENTO_1'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(68881893608126403)
,p_name=>'Valida porcentaje descuento_1'
,p_event_sequence=>300
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P234_PORC_DESCUENTO'
,p_condition_element=>'P234_PORC_DESCUENTO'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'focusout'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(68882422511126409)
,p_event_id=>wwv_flow_imp.id(68881893608126403)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if nvl(:P234_ES_PROMO,''N'')=''S'' and :P234_NRO_PROMO_1 is not null then',
'  inv.vtpedido.pr_act_promo;',
'end if; '))
,p_attribute_02=>'P234_ES_PROMO,P234_NRO_PROMO_1'
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
 p_id=>wwv_flow_imp.id(78072137597103120)
,p_event_id=>wwv_flow_imp.id(68881893608126403)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P234_PORC_DESCUENTO IS NULL THEN ',
'    :P234_PORC_DESCUENTO := ''0,00'';',
'END IF;'))
,p_attribute_02=>'P234_PORC_DESCUENTO'
,p_attribute_03=>'P234_PORC_DESCUENTO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(68882137215126406)
,p_event_id=>wwv_flow_imp.id(68881893608126403)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if nvl(:P234_ES_PROMO_1,''N'')=''N'' then',
'		inv.vtpedido.pr_calc_promo(p_det_porc_descuento  => :P234_PORC_DESCUENTO,',
'                                    p_det_cod_art_corto  => :P234_COD_ART_CORTO,',
'                                    p_det_nro_promo      => :P234_NRO_PROMO_1,',
'                                    p_mensaje_error      => :P0_MENSAJE_VALIDACION,',
'                                    p_var_cod_art_aux    => :P234_COD_ART_AUX,',
'                                    p_det_es_promo       => :P234_ES_PROMO_1,',
'                                    p_cab_cant_aux       => :P234_CANT_AUX,',
'                                    p_det_cantidad       => :P234_CANTIDAD,',
'                                    p_det_cod_articulo   => :P234_COD_ARTICULO,',
'                                    p_var_cod_empresa    => :P234_COD_EMPRESA,',
'                                    p_det_cod_lista_precio => :P234_COD_LISTA_PRECIO,',
'                                    p_cod_cliente          => :P234_COD_CLIENTE,',
'                                    p_cod_condicion_venta   =>  :P234_COD_CONDICION_VENTA);',
'else',
'	NULL;',
'end if;',
''))
,p_attribute_02=>'P234_ES_PROMO_1,P234_PORC_DESCUENTO,P234_COD_ART_CORTO,P234_NRO_PROMO_1,P234_COD_ART_AUX,   P234_CANTIDAD,P234_COD_ARTICULO,P234_COD_EMPRESA,P234_COD_LISTA_PRECIO,P234_COD_CLIENTE,P234_COD_CONDICION_VENTA'
,p_attribute_03=>'P0_MENSAJE_VALIDACION,P234_ES_PROMO_1,P234_CANT_AUX,P234_PORC_DESCUENTO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(68882292151126407)
,p_event_id=>wwv_flow_imp.id(68881893608126403)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'V_IND_PROMO_DESCUENTO VARCHAR2(500);',
'V_PORC_DESCUENTO_ANT VARCHAR2(200);',
'V_CARGA_PORC_DESCUENTO  VARCHAR2(200);',
'V_CARGA_PORC_RECARGO  VARCHAR2(200);',
'V_NRO_PEDIDO_ANT VARCHAR2(200);',
'BEGIN',
':P234_TOTAL_IVA:=replace(:P234_TOTAL_IVA,''.'');',
':P234_SUBTOTAL:=replace(:P234_SUBTOTAL,''.'');',
':P234_TOTAL:=replace(:P234_TOTAL,''.'');',
':P234_PRECIO_UNITARIO:=replace(:P234_PRECIO_UNITARIO,''.'');',
':P234_TOTAL_IVA_1:=replace(:P234_TOTAL_IVA_1,''.'');',
':P234_MONTO_TOTAL:=replace(:P234_MONTO_TOTAL,''.'');',
'inv.vtpedido.pr_validaciones_descuentos(p_det_porc_descuento=>:P234_PORC_DESCUENTO,',
'p_mensaje_error=>:P0_MENSAJE_VALIDACION,',
'p_var_cod_empresa=>:P234_COD_EMPRESA,',
'p_det_cod_articulo=>:P234_COD_ARTICULO,',
'p_cab_fec_comprobante=>:P234_FEC_COMPROBANTE,',
'p_cab_cod_sucursal=>:P234_COD_SUCURSAL,',
'p_var_descuento_30=>:P234_DESCUENTO_30,',
'p_var_descuento_307=>:P234_DESCUENTO_307,',
'p_cab_cod_vendedor=>:P234_COD_VENDEDOR,',
'p_det_articulo_par=>:P234_ARTICULO_PAR,',
'p_det_ind_promo=>:P234_IND_PROMO,',
'p_det_nro_promo=>:P234_NRO_PROMO_1,',
'p_cab_cod_cliente=>:P234_COD_CLIENTE,',
'p_cab_cod_condicion_venta=>:P234_COD_CONDICION_VENTA,',
'p_cab_cod_lista_precio=>:P234_COD_LISTA_PRECIO,',
'p_det_cantidad=>:P234_CANTIDAD,',
'p_det_ind_promo_descuento=>V_IND_PROMO_DESCUENTO,',
'p_det_cod_art_corto=>:P234_COD_ART_CORTO,',
'p_cod_art_aux=>:P234_COD_ART_AUX,',
'p_det_ind_no_descuento=>:P234_IND_NO_DESCUENTO,',
'p_var_supera_descuento=>:P234_SUPERA_DESCUENTO,',
'p_det_ser_pedido_promo_ant=>:P234_SER_PEDIDO_PROMO_ANT,',
'p_det_nro_pedido_promo_ant=>:P234_SER_NRO_PROMO_ANT,',
'p_det_cod_articulo_promo_ant=>:P234_COD_ARTICULO_PROMO_ANT,',
'p_d_nro_pedido_orden_promo_ant=>V_NRO_PEDIDO_ANT,',
'p_cab_nro_comprobante=>:P234_NRO_COMPROBANTE,',
'p_var_agrega_promocion=>:P234_AGREGA_PROMOCION,',
'p_det_cod_lista_precio=>:P234_COD_LISTA_PRECIO,',
'p_det_porc_descuento_ant=>V_PORC_DESCUENTO_ANT,',
'p_det_descuento=>:P234_DESCUENTO_1,',
'p_det_carga_porc_descuento=>V_CARGA_PORC_DESCUENTO,',
'p_det_precio_unitario=>:P234_PRECIO_UNITARIO,',
'p_cab_decimales=>:P234_DECIMALES,',
'p_cab_recargo=>:P234_RECARGO,',
'p_det_porc_recargo_ant=>:P234_PORC_RECARGO_ANT,',
'p_det_carga_porc_recargo=>V_CARGA_PORC_RECARGO,',
'p_var_mult=>:P234_VAR_MULT,',
'p_var_div=>:P234_VAR_DIV,',
'p_det_porc_iva=>:P234_PORC_IVA_1,',
'p_det_cantidad_ub=>:P234_CANTIDAD_UB,',
'p_det_porc_recargo=>:P234_PORC_RECARGO,',
'p_det_monto_total=>:P234_MONTO_TOTAL,',
'p_det_recargo=>:P234_RECARGO_1,',
'p_var_porc_iva=>:P234_PORC_IVA,',
'p_var_recargo=>:P234_RECARGO,',
'p_det_total_iva=>:P234_TOTAL_IVA_1,',
'p_cab_iva_parcial=>:P234_IVA_PARCIAL,',
'p_det_iva_ant=>:P234_IVA_ANT,',
'p_cab_subtotal_parcial=>:P234_SUBTOTAL_PARCIAL,',
'p_det_importe_ant=>:P234_IMPORTE_ANT,',
'p_cab_gravadas_parcial=>:P234_GRAVADAS_PARCIAL,',
'p_cab_exentas_parcial=>:P234_EXENTAS_PARCIAL,',
'p_cab_porcentaje_descuento=>:P234_PORCENTAJE_DESCUENTO,',
'p_cab_descuento=>:P234_DESCUENTO,',
'p_cab_total_iva=>:P234_TOTAL_IVA,',
'p_cab_subtotal=>:P234_SUBTOTAL,',
'p_cab_gravadas=>:P234_GRAVADAS,',
'p_cab_exentas=>:P234_EXENTAS,',
'p_cab_total=>:P234_TOTAL,',
'p_cab_recargo_porc=>:P234_RECARGO_PORC,',
'p_det_monto_gravada_10=>:P234_MONTO_GRAVADA_10,',
'p_det_monto_gravada_5=>:P234_MONTO_GRAVADA_5,',
'p_det_monto_exenta=>:P234_MONTO_EXENTA,',
'p_cab_tip_cambio=>:P234_TIP_CAMBIO,',
'p_cod_empresa=>:P234_COD_EMPRESA,',
'p_cod_flete=>:P234_COD_FLETE,',
'p_cab_flete_total=>:P234_FLETE_TOTAL,',
'p_det_total_peso=>:P234_TOTAL_PESO,',
'p_det_total_volumen=>:P234_TOTAL_VOLUMEN,',
'p_var_porc_recargo_ant=>:P234_PORC_RECARGO_ANT);',
'END;',
':P234_DESCUENTO_1 := round((nvl(:P234_CANTIDAD, 0) *',
'(nvl(:P234_PRECIO_UNITARIO, 0)) *',
'(nvl(:P234_PORC_DESCUENTO, 0) / 100)),',
'nvl(:P234_DECIMALES, 0));',
'',
'',
'',
'',
''))
,p_attribute_02=>'P234_PORC_DESCUENTO,P234_COD_EMPRESA,P234_COD_ARTICULO,P234_FEC_COMPROBANTE,P234_COD_SUCURSAL, P234_DESCUENTO_30,P234_DESCUENTO_307,P234_COD_VENDEDOR,P234_ARTICULO_PAR,P234_IND_PROMO,P234_NRO_PROMO_1, P234_COD_CLIENTE,P234_COD_CONDICION_VENTA,P234_CO'
||'D_LISTA_PRECIO,P234_CANTIDAD,P234_COD_ART_CORTO, P234_COD_ART_AUX,P234_IND_NO_DESCUENTO,P234_SUPERA_DESCUENTO,P234_SER_PEDIDO_PROMO_ANT,P234_NRO_PEDIDO_ORDEN_PROMO_ANT, P234_COD_ARTICULO_PROMO_ANT_1,P234_NRO_PEDIDO_ORDEN_PROMO_ANT,P234_NRO_COMPROBANT'
||'E,P234_AGREGA_PROMOCION,P234_DESCUENTO, P234_PRECIO_UNITARIO,P234_DECIMALES,P234_RECARGO,P234_PORC_RECARGO_ANT,P234_VAR_MULT,P234_VAR_DIV,P234_PORC_IVA_1, P234_CANTIDAD_UB,P234_PORC_RECARGO,P234_MONTO_TOTAL,P234_RECARGO_1,P234_PORC_IVA,P234_TOTAL_IVA'
||'_1, P234_IVA_PARCIAL,P234_IVA_ANT,P234_SUBTOTAL_PARCIAL,P234_IMPORTE_ANT,P234_GRAVADAS_PARCIAL,P234_EXENTAS_PARCIAL, P234_PORCENTAJE_DESCUENTO,P234_TOTAL_IVA,P234_SUBTOTAL,P234_GRAVADAS,P234_EXENTAS,P234_TOTAL, P234_RECARGO_PORC,P234_MONTO_GRAVADA_10'
||',P234_MONTO_GRAVADA_5,P234_MONTO_EXENTA,P234_TIP_CAMBIO, P234_COD_FLETE,P234_FLETE_TOTAL,P234_TOTAL_PESO,P234_TOTAL_VOLUMEN'
,p_attribute_03=>'P234_PORC_DESCUENTO,P0_MENSAJE_VALIDACION,P234_ARTICULO_PAR, P234_PORC_RECARGO_ANT,P234_VAR_MULT,P234_VAR_DIV,P234_CANTIDAD_UB,P234_MONTO_TOTAL, P234_RECARGO_1,P234_TOTAL_IVA_1,P234_IVA_PARCIAL,P234_IVA_ANT,P234_SUBTOTAL_PARCIAL,P234_IMPORTE_ANT, P23'
||'4_GRAVADAS_PARCIAL,P234_EXENTAS_PARCIAL,P234_PORCENTAJE_DESCUENTO, P234_GRAVADAS,P234_EXENTAS,P234_MONTO_GRAVADA_10,P234_MONTO_GRAVADA_5, P234_MONTO_EXENTA,P234_FLETE_TOTAL,P234_DESCUENTO_1'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(68882347705126408)
,p_event_id=>wwv_flow_imp.id(68881893608126403)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P234_PORC_DESCUENTO < 0 THEN',
'		:P0_MENSAJE_VALIDACION := ''El porcentaje de descuento no puede ser negativo.'';',
'        :P234_PORC_DESCUENTO := ''0,00'';',
'END IF;'))
,p_attribute_02=>'P234_PORC_DESCUENTO'
,p_attribute_03=>'P0_MENSAJE_VALIDACION'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(94558365510213411)
,p_event_id=>wwv_flow_imp.id(68881893608126403)
,p_event_result=>'TRUE'
,p_action_sequence=>90
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P234_TOTAL_IVA := replace(:P234_TOTAL_IVA,''.'');',
':P234_SUBTOTAL := replace(:P234_SUBTOTAL,''.'');',
':P234_TOTAL   := replace(:P234_TOTAL,''.'');',
':P234_PRECIO_UNITARIO  := replace(:P234_PRECIO_UNITARIO,''.'');',
':P234_TOTAL_IVA_1 := replace(:P234_TOTAL_IVA_1,''.'');',
':P234_MONTO_TOTAL := replace(:P234_MONTO_TOTAL,''.'');',
'',
'IF :P234_COD_MONEDA = ''1'' THEN ',
'    :P234_PRECIO_UNITARIO  := TO_CHAR(:P234_PRECIO_UNITARIO,''999G999G999G999G999G999G990'');',
'    :P234_TOTAL_IVA_1 := TO_CHAR(:P234_TOTAL_IVA_1,''999G999G999G999G999G999G990'');',
'    :P234_MONTO_TOTAL := TO_CHAR(:P234_MONTO_TOTAL,''999G999G999G999G999G999G990'');',
'    :P234_TOTAL_IVA := TO_CHAR(:P234_TOTAL_IVA,''999G999G999G999G999G999G990'');',
'    :P234_SUBTOTAL := TO_CHAR(:P234_SUBTOTAL,''999G999G999G999G999G999G990'');',
'    :P234_TOTAL   := TO_CHAR(:P234_TOTAL,''999G999G999G999G999G999G990'');',
'ELSE ',
'    :P234_PRECIO_UNITARIO  := TO_CHAR(:P234_PRECIO_UNITARIO,''999G999G999G999G990D00'');',
'    :P234_TOTAL_IVA_1 := TO_CHAR(:P234_TOTAL_IVA_1,''999G999G999G999G990D00'');',
'    :P234_MONTO_TOTAL := TO_CHAR(:P234_MONTO_TOTAL,''999G999G999G999G990D00'');',
'    :P234_TOTAL_IVA := TO_CHAR(:P234_TOTAL_IVA,''999G999G999G999G990D00'');',
'    :P234_SUBTOTAL := TO_CHAR(:P234_SUBTOTAL,''999G999G999G999G990D00'');',
'    :P234_TOTAL   := TO_CHAR(:P234_TOTAL,''999G999G999G999G990D00'');',
'END IF;',
''))
,p_attribute_02=>'P234_TOTAL_IVA,P234_SUBTOTAL,P234_TOTAL,P234_PRECIO_UNITARIO,P234_TOTAL_IVA_1,P234_MONTO_TOTAL,P234_CANTIDAD,P234_PORC_DESCUENTO,P234_DECIMALES,P234_COD_MONEDA'
,p_attribute_03=>'P234_TOTAL_IVA,P234_SUBTOTAL,P234_TOTAL,P234_TOTAL_IVA_1,P234_MONTO_TOTAL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(72007357698704138)
,p_name=>'Valida porcentaje descuento_1_1'
,p_event_sequence=>310
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P234_PORC_RECARGO'
,p_condition_element=>'P234_PORC_RECARGO'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'focusout'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(72007460018704139)
,p_event_id=>wwv_flow_imp.id(72007357698704138)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if nvl(:P234_ES_PROMO,''N'')=''S'' and :P234_NRO_PROMO_1 is not null then',
'  inv.vtpedido.pr_act_promo;',
'end if; '))
,p_attribute_02=>'P234_ES_PROMO,P234_NRO_PROMO_1'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(78072252427103121)
,p_event_id=>wwv_flow_imp.id(72007357698704138)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P234_PORC_RECARGO IS NULL OR :P234_PORC_RECARGO = '''' THEN ',
'    :P234_PORC_RECARGO := ''0,00'';',
'END IF;'))
,p_attribute_02=>'P234_PORC_RECARGO'
,p_attribute_03=>'P234_PORC_RECARGO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(72007518591704140)
,p_event_id=>wwv_flow_imp.id(72007357698704138)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if nvl(:P234_ES_PROMO_1,''N'')=''N'' then',
'		inv.vtpedido.pr_calc_promo(p_det_porc_descuento  => :P234_PORC_DESCUENTO,',
'                                    p_det_cod_art_corto  => :P234_COD_ART_CORTO,',
'                                    p_det_nro_promo      => :P234_NRO_PROMO_1,',
'                                    p_mensaje_error      => :P0_MENSAJE_VALIDACION,',
'                                    p_var_cod_art_aux    => :P234_COD_ART_AUX,',
'                                    p_det_es_promo       => :P234_ES_PROMO_1,',
'                                    p_cab_cant_aux       => :P234_CANT_AUX,',
'                                    p_det_cantidad       => :P234_CANTIDAD,',
'                                    p_det_cod_articulo   => :P234_COD_ARTICULO,',
'                                    p_var_cod_empresa    => :P234_COD_EMPRESA,',
'                                    p_det_cod_lista_precio => :P234_COD_LISTA_PRECIO,',
'                                    p_cod_cliente          => :P234_COD_CLIENTE,',
'                                    p_cod_condicion_venta   =>  :P234_COD_CONDICION_VENTA);',
'else',
'	NULL;',
'end if;',
'',
':P234_RECARGO := 0;'))
,p_attribute_02=>'P234_ES_PROMO_1,P234_PORC_DESCUENTO,P234_COD_ART_CORTO,P234_NRO_PROMO_1,P234_COD_ART_AUX,   P234_CANTIDAD,P234_COD_ARTICULO,P234_COD_EMPRESA,P234_COD_LISTA_PRECIO,P234_COD_CLIENTE,P234_COD_CONDICION_VENTA'
,p_attribute_03=>'P234_COD_ART_CORTO,P0_MENSAJE_VALIDACION,P234_ES_PROMO_1,P234_CANT_AUX,P234_PORC_DESCUENTO,P234_RECARGO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(72007664799704141)
,p_event_id=>wwv_flow_imp.id(72007357698704138)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'V_IND_PROMO_DESCUENTO VARCHAR2(500);',
'V_PORC_DESCUENTO_ANT VARCHAR2(200);',
'V_CARGA_PORC_DESCUENTO VARCHAR2(200);',
'V_CARGA_PORC_RECARGO VARCHAR2(200);',
'V_NRO_PEDIDO_ANT VARCHAR2(200);',
'BEGIN',
':P234_DESCUENTO := null;',
':P234_TOTAL_IVA:=replace(:P234_TOTAL_IVA,''.'');:P234_SUBTOTAL:=replace(:P234_SUBTOTAL,''.'');:P234_TOTAL:=replace(:P234_TOTAL,''.'');',
':P234_PRECIO_UNITARIO:=replace(:P234_PRECIO_UNITARIO,''.'');:P234_TOTAL_IVA_1:=replace(:P234_TOTAL_IVA_1,''.'');',
':P234_MONTO_TOTAL:=replace(:P234_MONTO_TOTAL,''.'');',
'inv.vtpedido.pr_validaciones_descuentos(p_det_porc_descuento=>:P234_PORC_DESCUENTO,',
'p_mensaje_error=>:P0_MENSAJE_VALIDACION,p_var_cod_empresa=>:P234_COD_EMPRESA,',
'p_det_cod_articulo=>:P234_COD_ARTICULO,p_cab_fec_comprobante=>:P234_FEC_COMPROBANTE,',
'p_cab_cod_sucursal=>:P234_COD_SUCURSAL,p_var_descuento_30=>:P234_DESCUENTO_30,',
'p_var_descuento_307=>:P234_DESCUENTO_307,p_cab_cod_vendedor=>:P234_COD_VENDEDOR,',
'p_det_articulo_par=>:P234_ARTICULO_PAR,p_det_ind_promo=>:P234_IND_PROMO,',
'p_det_nro_promo=>:P234_NRO_PROMO_1,p_cab_cod_cliente=>:P234_COD_CLIENTE,',
'p_cab_cod_condicion_venta=>:P234_COD_CONDICION_VENTA,p_cab_cod_lista_precio=>:P234_COD_LISTA_PRECIO,',
'p_det_cantidad=>:P234_CANTIDAD,p_det_ind_promo_descuento=>V_IND_PROMO_DESCUENTO,',
'p_det_cod_art_corto=>:P234_COD_ART_CORTO,p_cod_art_aux=>:P234_COD_ART_AUX,',
'p_det_ind_no_descuento=>:P234_IND_NO_DESCUENTO,p_var_supera_descuento=>:P234_SUPERA_DESCUENTO,',
'p_det_ser_pedido_promo_ant=>:P234_SER_PEDIDO_PROMO_ANT,p_det_nro_pedido_promo_ant=>:P234_SER_NRO_PROMO_ANT,',
'p_det_cod_articulo_promo_ant=>:P234_COD_ARTICULO_PROMO_ANT,p_d_nro_pedido_orden_promo_ant=>V_NRO_PEDIDO_ANT,',
'p_cab_nro_comprobante=>:P234_NRO_COMPROBANTE,p_var_agrega_promocion=>:P234_AGREGA_PROMOCION,',
'p_det_cod_lista_precio=>:P234_COD_LISTA_PRECIO,p_det_porc_descuento_ant=>V_PORC_DESCUENTO_ANT,',
'p_det_descuento=>:P234_DESCUENTO_1,p_det_carga_porc_descuento=>V_CARGA_PORC_DESCUENTO,',
'p_det_precio_unitario=>:P234_PRECIO_UNITARIO,p_cab_decimales=>:P234_DECIMALES,',
'p_cab_recargo=>:P234_RECARGO,p_det_porc_recargo_ant=>:P234_PORC_RECARGO_ANT,',
'p_det_carga_porc_recargo=>V_CARGA_PORC_RECARGO,p_var_mult=>:P234_VAR_MULT,',
'p_var_div=>:P234_VAR_DIV,p_det_porc_iva=>:P234_PORC_IVA_1,',
'p_det_cantidad_ub=>:P234_CANTIDAD_UB,p_det_porc_recargo=>:P234_PORC_RECARGO,',
'p_det_monto_total=>:P234_MONTO_TOTAL,p_det_recargo=>:P234_RECARGO_1,',
'p_var_porc_iva=>:P234_PORC_IVA,p_var_recargo=>:P234_RECARGO,p_det_total_iva=>:P234_TOTAL_IVA_1,',
'p_cab_iva_parcial=>:P234_IVA_PARCIAL,p_det_iva_ant=>:P234_IVA_ANT,',
'p_cab_subtotal_parcial=>:P234_SUBTOTAL_PARCIAL,p_det_importe_ant=>:P234_IMPORTE_ANT,',
'p_cab_gravadas_parcial=>:P234_GRAVADAS_PARCIAL,p_cab_exentas_parcial=>:P234_EXENTAS_PARCIAL,',
'p_cab_porcentaje_descuento=>:P234_PORCENTAJE_DESCUENTO,p_cab_descuento=>:P234_DESCUENTO,',
'p_cab_total_iva=>:P234_TOTAL_IVA,p_cab_subtotal=>:P234_SUBTOTAL,p_cab_gravadas=>:P234_GRAVADAS,',
'p_cab_exentas=>:P234_EXENTAS,p_cab_total=>:P234_TOTAL,p_cab_recargo_porc=>:P234_RECARGO_PORC,',
'p_det_monto_gravada_10=>:P234_MONTO_GRAVADA_10,p_det_monto_gravada_5=>:P234_MONTO_GRAVADA_5,',
'p_det_monto_exenta=>:P234_MONTO_EXENTA,p_cab_tip_cambio=>:P234_TIP_CAMBIO,',
'p_cod_empresa=>:P234_COD_EMPRESA,p_cod_flete=>:P234_COD_FLETE,',
'p_cab_flete_total=>:P234_FLETE_TOTAL,p_det_total_peso=>:P234_TOTAL_PESO,',
'p_det_total_volumen=>:P234_TOTAL_VOLUMEN,',
'p_var_porc_recargo_ant=>:P234_PORC_RECARGO_ANT);',
'END;',
':P234_DESCUENTO_1 :=round((nvl(:P234_CANTIDAD, 0) * (nvl(:P234_PRECIO_UNITARIO, 0)) * (nvl(:P234_PORC_DESCUENTO, 0) / 100)), nvl(:P234_DECIMALES, 0));',
':P234_RECARGO_AUX := :P234_RECARGO_1;'))
,p_attribute_02=>'P234_PORC_DESCUENTO,P234_COD_EMPRESA,P234_COD_ARTICULO,P234_FEC_COMPROBANTE,P234_COD_SUCURSAL, P234_DESCUENTO_30,P234_DESCUENTO_307,P234_COD_VENDEDOR,P234_ARTICULO_PAR,P234_IND_PROMO,P234_NRO_PROMO_1, P234_COD_CLIENTE,P234_COD_CONDICION_VENTA,P234_CO'
||'D_LISTA_PRECIO,P234_CANTIDAD,P234_COD_ART_CORTO, P234_COD_ART_AUX,P234_IND_NO_DESCUENTO,P234_SUPERA_DESCUENTO,P234_SER_PEDIDO_PROMO_ANT,P234_NRO_PEDIDO_ORDEN_PROMO_ANT, P234_COD_ARTICULO_PROMO_ANT_1,P234_NRO_PEDIDO_ORDEN_PROMO_ANT,P234_NRO_COMPROBANT'
||'E,P234_AGREGA_PROMOCION,P234_DESCUENTO, P234_PRECIO_UNITARIO,P234_DECIMALES,P234_RECARGO,P234_PORC_RECARGO_ANT,P234_VAR_MULT,P234_VAR_DIV,P234_PORC_IVA_1, P234_CANTIDAD_UB,P234_PORC_RECARGO,P234_MONTO_TOTAL,P234_RECARGO_1,P234_PORC_IVA,P234_TOTAL_IVA'
||'_1, P234_IVA_PARCIAL,P234_IVA_ANT,P234_SUBTOTAL_PARCIAL,P234_IMPORTE_ANT,P234_GRAVADAS_PARCIAL,P234_EXENTAS_PARCIAL, P234_PORCENTAJE_DESCUENTO,P234_TOTAL_IVA,P234_SUBTOTAL,P234_GRAVADAS,P234_EXENTAS,P234_TOTAL, P234_RECARGO_PORC,P234_MONTO_GRAVADA_10'
||',P234_MONTO_GRAVADA_5,P234_MONTO_EXENTA,P234_TIP_CAMBIO, P234_COD_FLETE,P234_FLETE_TOTAL,P234_TOTAL_PESO,P234_TOTAL_VOLUMEN'
,p_attribute_03=>'P234_PORC_DESCUENTO,P234_MONTO_TOTAL,P234_TOTAL_IVA_1,P234_RECARGO_AUX'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(72007708504704142)
,p_event_id=>wwv_flow_imp.id(72007357698704138)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P234_PORC_DESCUENTO < 0 THEN',
'		:P0_MENSAJE_VALIDACION := ''El porcentaje de descuento no puede ser negativo.'';',
'END IF;'))
,p_attribute_02=>'P234_PORC_DESCUENTO'
,p_attribute_03=>'P0_MENSAJE_VALIDACION'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(85583126425170150)
,p_event_id=>wwv_flow_imp.id(72007357698704138)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'    :P234_TOTAL_IVA:=REPLACE(:P234_TOTAL_IVA,''.'');',
'    :P234_SUBTOTAL:=REPLACE(:P234_SUBTOTAL,''.'');',
'    :P234_TOTAL:=REPLACE(:P234_TOTAL,''.'');',
'    :P234_PRECIO_UNITARIO:=REPLACE(:P234_PRECIO_UNITARIO,''.'');',
'    :P234_TOTAL_IVA_1:=REPLACE(:P234_TOTAL_IVA_1,''.'');',
'    :P234_MONTO_TOTAL:=REPLACE(:P234_MONTO_TOTAL,''.'');',
'IF :P234_COD_MONEDA = ''1'' THEN ',
'    :P234_TOTAL_IVA:=TO_CHAR(:P234_TOTAL_IVA,''999G999G999G999G999G999G990'');',
'    :P234_SUBTOTAL:=TO_CHAR(:P234_SUBTOTAL,''999G999G999G999G999G999G990'');',
'    :P234_TOTAL:=TO_CHAR(:P234_TOTAL,''999G999G999G999G999G999G990'');',
'    :P234_PRECIO_UNITARIO:=TO_CHAR(:P234_PRECIO_UNITARIO,''999G999G999G999G999G999G990'');',
'    :P234_TOTAL_IVA_1:=TO_CHAR(:P234_TOTAL_IVA_1,''999G999G999G999G999G999G990'');',
'    :P234_MONTO_TOTAL:=TO_CHAR(:P234_MONTO_TOTAL,''999G999G999G999G999G999G990'');',
'ELSE ',
'    :P234_TOTAL_IVA:=TO_CHAR(:P234_TOTAL_IVA,''999G999G999G999G990D00'');',
'    :P234_SUBTOTAL:=TO_CHAR(:P234_SUBTOTAL,''999G999G999G999G990D00'');',
'    :P234_TOTAL:=TO_CHAR(:P234_TOTAL,''999G999G999G999G990D00'');',
'    :P234_PRECIO_UNITARIO:=TO_CHAR(:P234_PRECIO_UNITARIO,''999G999G999G999G990D00'');',
'    :P234_TOTAL_IVA_1:=TO_CHAR(:P234_TOTAL_IVA_1,''999G999G999G999G990D00'');',
'    :P234_MONTO_TOTAL:=TO_CHAR(:P234_MONTO_TOTAL,''999G999G999G999G990D00'');',
'END IF;'))
,p_attribute_02=>'P234_COD_MONEDA,P234_TOTAL_IVA,P234_SUBTOTAL,P234_TOTAL,P234_PRECIO_UNITARIO,P234_TOTAL_IVA_1,P234_MONTO_TOTAL'
,p_attribute_03=>'P234_TOTAL_IVA,P234_SUBTOTAL,P234_TOTAL,P234_PRECIO_UNITARIO,P234_TOTAL_IVA_1,P234_MONTO_TOTAL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(68882613925126411)
,p_name=>'Recargos validaciones_1'
,p_event_sequence=>320
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P234_PORC_RECARGO'
,p_condition_element=>'P234_PORC_RECARGO'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'focusout'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(68882719929126412)
,p_event_id=>wwv_flow_imp.id(68882613925126411)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE  ',
'    V_PORC_DESCUENTO_ANT NUMBER;',
'    V_CARGA_PORC_DESCUENTO  VARCHAR2(100);',
'BEGIN',
':P234_TOTAL_IVA := replace(:P234_TOTAL_IVA,''.'');',
':P234_SUBTOTAL := replace(:P234_SUBTOTAL,''.'');',
':P234_TOTAL   := replace(:P234_TOTAL,''.'');',
':P234_PRECIO_UNITARIO  := replace(:P234_PRECIO_UNITARIO,''.'');',
':P234_TOTAL_IVA_1 := replace(:P234_TOTAL_IVA_1,''.'');',
':P234_MONTO_TOTAL := replace(:P234_MONTO_TOTAL,''.'');',
'    INV.VTPEDIDO.PR_CALCULA_DESCUENTO(P_DET_PORC_DESCUENTO_ANT   => V_PORC_DESCUENTO_ANT,',
'                                      P_PORC_DESCUENTO           => :P234_PORC_DESCUENTO,',
'                                      P_DESCUENTO                => :P234_DESCUENTO,',
'                                      P_DET_CARGA_PORC_DESCUENTO => V_CARGA_PORC_DESCUENTO,',
'                                      P_DET_CANTIDAD             => :P234_CANTIDAD,',
'                                      P_DET_PRECIO_UNITARIO      => :P234_PRECIO_UNITARIO,',
'                                      P_DECIMALES                => :P234_DECIMALES,',
'                                      P_DET_NRO_PROMO            => :P234_NRO_PROMO_1,',
'                                      P_PORC_DESCUENTO_ANT       => V_PORC_DESCUENTO_ANT,',
'                                      P_RECARGO                  => :P234_RECARGO_1);',
':P234_TOTAL_IVA := TO_CHAR(:P234_TOTAL_IVA,''999G999G999G999G999G999G990'');',
':P234_SUBTOTAL := TO_CHAR(:P234_SUBTOTAL,''999G999G999G999G999G999G990'');',
':P234_TOTAL   := TO_CHAR(:P234_TOTAL,''999G999G999G999G999G999G990'');',
':P234_PRECIO_UNITARIO  := TO_CHAR(:P234_PRECIO_UNITARIO,''999G999G999G999G999G999G990'');',
':P234_TOTAL_IVA_1 := TO_CHAR(:P234_TOTAL_IVA_1,''999G999G999G999G999G999G990'');',
':P234_MONTO_TOTAL := TO_CHAR(:P234_MONTO_TOTAL,''999G999G999G999G999G999G990'');',
'END;'))
,p_attribute_02=>'P234_PORC_DESCUENTO,P234_DESCUENTO,P234_CANTIDAD,P234_PRECIO_UNITARIO,P234_DECIMALES,P234_NRO_PROMO_1'
,p_attribute_03=>'P234_DESCUENTO,P234_RECARGO,P234_RECARGO_1'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(68882894693126413)
,p_event_id=>wwv_flow_imp.id(68882613925126411)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P234_TOTAL_IVA := replace(:P234_TOTAL_IVA,''.'');',
':P234_SUBTOTAL := replace(:P234_SUBTOTAL,''.'');',
':P234_TOTAL   := replace(:P234_TOTAL,''.'');',
':P234_PRECIO_UNITARIO  := replace(:P234_PRECIO_UNITARIO,''.'');',
':P234_TOTAL_IVA_1 := replace(:P234_TOTAL_IVA_1,''.'');',
':P234_MONTO_TOTAL := replace(:P234_MONTO_TOTAL,''.'');',
'BEGIN',
'		IF nvl( :P234_PORC_RECARGO_ANT, 0 ) <> nvl( :P234_PORC_RECARGO, 0 ) or ( nvl( :P234_PORC_RECARGO, 0 ) <> 0 and nvl(:P234_RECARGO_1,0) = 0 ) THEN',
'				:P234_CARGA_PORC_RECARGO := ''S'';',
'				:P234_RECARGO_1 := round( (( nvl( :P234_CANTIDAD, 0 ) *',
'				                              ( nvl( :P234_PRECIO_UNITARIO, 0 )) - nvl(:P234_DESCUENTO_1,0) ) *',
'				                              ( nvl( :P234_PORC_RECARGO, 0 ) / 100 ) ),',
'				                                nvl( :P234_DECIMALES, 0 ) );',
'				:P234_PORC_RECARGO_ANT     := nvl( :P234_PORC_RECARGO, 0 ) ;',
'				:P234_CARGA_PORC_RECARGO := ''N'';',
'		END IF;',
'EXCEPTION',
'	  when others then',
unistr('	    :P0_MENSAJE_VALIDACION := ''Error en el c\00E1lculo de recargo ''||sqlerrm;'),
'END;',
'',
':P234_RECARGO_1 := round((nvl(:P234_CANTIDAD, 0) *',
'                           (nvl(:P234_PRECIO_UNITARIO, 0)) *',
'                           (nvl(:P234_RECARGO, 0) / 100)),',
'                           nvl(:P234_DECIMALES, 0));',
'                           ',
':P234_TOTAL_IVA := TO_CHAR(:P234_TOTAL_IVA,''999G999G999G999G999G999G990'');',
':P234_SUBTOTAL := TO_CHAR(:P234_SUBTOTAL,''999G999G999G999G999G999G990'');',
':P234_TOTAL   := TO_CHAR(:P234_TOTAL,''999G999G999G999G999G999G990'');',
':P234_PRECIO_UNITARIO  := TO_CHAR(:P234_PRECIO_UNITARIO,''999G999G999G999G999G999G990'');',
':P234_TOTAL_IVA_1 := TO_CHAR(:P234_TOTAL_IVA_1,''999G999G999G999G999G999G990'');',
':P234_MONTO_TOTAL := TO_CHAR(:P234_MONTO_TOTAL,''999G999G999G999G999G999G990'');'))
,p_attribute_02=>'P234_PORC_RECARGO_ANT,P234_PORC_RECARGO,P234_RECARGO_1,P234_CANTIDAD,P234_PRECIO_UNITARIO,P234_DESCUENTO_1,P234_DECIMALES'
,p_attribute_03=>'P234_CARGA_PORC_RECARGO,:P234_RECARGO_1,P234_PORC_RECARGO_ANT,P0_MENSAJE_VALIDACION,P234_RECARGO_1'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(72007244391704137)
,p_event_id=>wwv_flow_imp.id(68882613925126411)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'V_IND_PROMO_DESCUENTO VARCHAR2(500);',
'V_PORC_DESCUENTO_ANT VARCHAR2(200);',
'    V_CARGA_PORC_DESCUENTO  VARCHAR2(200);',
'    V_CARGA_PORC_RECARGO  VARCHAR2(200);',
'    V_NRO_PEDIDO_ANT VARCHAR2(200);',
'BEGIN',
':P234_TOTAL_IVA:=replace(:P234_TOTAL_IVA,''.'');',
':P234_SUBTOTAL:=replace(:P234_SUBTOTAL,''.'');',
':P234_TOTAL:=replace(:P234_TOTAL,''.'');',
':P234_PRECIO_UNITARIO:=replace(:P234_PRECIO_UNITARIO,''.'');',
':P234_TOTAL_IVA_1:=replace(:P234_TOTAL_IVA_1,''.'');',
':P234_MONTO_TOTAL:=replace(:P234_MONTO_TOTAL,''.'');',
'inv.vtpedido.pr_validaciones_descuentos(p_det_porc_descuento=>:P234_PORC_DESCUENTO,',
'p_mensaje_error=>:P0_MENSAJE_VALIDACION,',
'p_var_cod_empresa=>:P234_COD_EMPRESA,',
'p_det_cod_articulo=>:P234_COD_ARTICULO,',
'p_cab_fec_comprobante=>:P234_FEC_COMPROBANTE,',
'p_cab_cod_sucursal=>:P234_COD_SUCURSAL,',
'p_var_descuento_30=>:P234_DESCUENTO_30,',
'p_var_descuento_307=>:P234_DESCUENTO_307,',
'p_cab_cod_vendedor=>:P234_COD_VENDEDOR,',
'p_det_articulo_par=>:P234_ARTICULO_PAR,',
'p_det_ind_promo=>:P234_IND_PROMO,',
'p_det_nro_promo=>:P234_NRO_PROMO_1,',
'p_cab_cod_cliente=>:P234_COD_CLIENTE,',
'p_cab_cod_condicion_venta=>:P234_COD_CONDICION_VENTA,',
'p_cab_cod_lista_precio=>:P234_COD_LISTA_PRECIO,',
'p_det_cantidad=>:P234_CANTIDAD,',
'p_det_ind_promo_descuento=>V_IND_PROMO_DESCUENTO,',
'p_det_cod_art_corto=>:P234_COD_ART_CORTO,',
'p_cod_art_aux=>:P234_COD_ART_AUX,',
'p_det_ind_no_descuento=>:P234_IND_NO_DESCUENTO,',
'p_var_supera_descuento=>:P234_SUPERA_DESCUENTO,',
'p_det_ser_pedido_promo_ant=>:P234_SER_PEDIDO_PROMO_ANT,',
'p_det_nro_pedido_promo_ant=>:P234_SER_NRO_PROMO_ANT,',
'p_det_cod_articulo_promo_ant=>:P234_COD_ARTICULO_PROMO_ANT,',
'p_d_nro_pedido_orden_promo_ant=>V_NRO_PEDIDO_ANT,',
'p_cab_nro_comprobante=>:P234_NRO_COMPROBANTE,',
'p_var_agrega_promocion=>:P234_AGREGA_PROMOCION,',
'p_det_cod_lista_precio=>:P234_COD_LISTA_PRECIO,',
'p_det_porc_descuento_ant=>V_PORC_DESCUENTO_ANT,',
'p_det_descuento=>:P234_DESCUENTO_1,',
'p_det_carga_porc_descuento=>V_CARGA_PORC_DESCUENTO,',
'p_det_precio_unitario=>:P234_PRECIO_UNITARIO,',
'p_cab_decimales=>:P234_DECIMALES,',
'p_cab_recargo=>:P234_RECARGO,',
'p_det_porc_recargo_ant=>:P234_PORC_RECARGO_ANT,',
'p_det_carga_porc_recargo=>V_CARGA_PORC_RECARGO,',
'p_var_mult=>:P234_VAR_MULT,',
'p_var_div=>:P234_VAR_DIV,',
'p_det_porc_iva=>:P234_PORC_IVA_1,',
'p_det_cantidad_ub=>:P234_CANTIDAD_UB,',
'p_det_porc_recargo=>:P234_PORC_RECARGO,',
'p_det_monto_total=>:P234_MONTO_TOTAL,',
'p_det_recargo=>:P234_RECARGO_1,',
'p_var_porc_iva=>:P234_PORC_IVA,',
'p_var_recargo=>:P234_RECARGO,',
'p_det_total_iva=>:P234_TOTAL_IVA_1,',
'p_cab_iva_parcial=>:P234_IVA_PARCIAL,',
'p_det_iva_ant=>:P234_IVA_ANT,',
'p_cab_subtotal_parcial=>:P234_SUBTOTAL_PARCIAL,',
'p_det_importe_ant=>:P234_IMPORTE_ANT,',
'p_cab_gravadas_parcial=>:P234_GRAVADAS_PARCIAL,',
'p_cab_exentas_parcial=>:P234_EXENTAS_PARCIAL,',
'p_cab_porcentaje_descuento=>:P234_PORCENTAJE_DESCUENTO,',
'p_cab_descuento=>:P234_DESCUENTO,',
'p_cab_total_iva=>:P234_TOTAL_IVA,',
'p_cab_subtotal=>:P234_SUBTOTAL,',
'p_cab_gravadas=>:P234_GRAVADAS,',
'p_cab_exentas=>:P234_EXENTAS,',
'p_cab_total=>:P234_TOTAL,',
'p_cab_recargo_porc=>:P234_RECARGO_PORC,',
'p_det_monto_gravada_10=>:P234_MONTO_GRAVADA_10,',
'p_det_monto_gravada_5=>:P234_MONTO_GRAVADA_5,',
'p_det_monto_exenta=>:P234_MONTO_EXENTA,',
'p_cab_tip_cambio=>:P234_TIP_CAMBIO,',
'p_cod_empresa=>:P234_COD_EMPRESA,',
'p_cod_flete=>:P234_COD_FLETE,',
'p_cab_flete_total=>:P234_FLETE_TOTAL,',
'p_det_total_peso=>:P234_TOTAL_PESO,',
'p_det_total_volumen=>:P234_TOTAL_VOLUMEN,',
'p_var_porc_recargo_ant=>:P234_PORC_RECARGO_ANT);',
'END;',
':P234_DESCUENTO_1 := round((nvl(:P234_CANTIDAD, 0) *',
'(nvl(:P234_PRECIO_UNITARIO, 0)) *',
'(nvl(:P234_PORC_DESCUENTO, 0) / 100)),',
'nvl(:P234_DECIMALES, 0));',
':P234_TOTAL_IVA:=TO_CHAR(:P234_TOTAL_IVA,''999G999G999G999G999G999G990'');',
':P234_SUBTOTAL:=TO_CHAR(:P234_SUBTOTAL,''999G999G999G999G999G999G990'');',
':P234_TOTAL:=TO_CHAR(:P234_TOTAL,''999G999G999G999G999G999G990'');',
':P234_PRECIO_UNITARIO:=TO_CHAR(:P234_PRECIO_UNITARIO,''999G999G999G999G999G999G990'');',
':P234_TOTAL_IVA_1:=TO_CHAR(:P234_TOTAL_IVA_1,''999G999G999G999G999G999G990'');',
':P234_MONTO_TOTAL:=TO_CHAR(:P234_MONTO_TOTAL,''999G999G999G999G999G999G990'');',
''))
,p_attribute_02=>'P234_PORC_DESCUENTO,P234_COD_EMPRESA,P234_COD_ARTICULO,P234_FEC_COMPROBANTE,P234_COD_SUCURSAL, P234_DESCUENTO_30,P234_DESCUENTO_307,P234_COD_VENDEDOR,P234_ARTICULO_PAR,P234_IND_PROMO,P234_NRO_PROMO_1, P234_COD_CLIENTE,P234_COD_CONDICION_VENTA,P234_CO'
||'D_LISTA_PRECIO,P234_CANTIDAD,P234_COD_ART_CORTO, P234_COD_ART_AUX,P234_IND_NO_DESCUENTO,P234_SUPERA_DESCUENTO,P234_SER_PEDIDO_PROMO_ANT,P234_NRO_PEDIDO_ORDEN_PROMO_ANT, P234_COD_ARTICULO_PROMO_ANT_1,P234_NRO_PEDIDO_ORDEN_PROMO_ANT,P234_NRO_COMPROBANT'
||'E,P234_AGREGA_PROMOCION,P234_DESCUENTO, P234_PRECIO_UNITARIO,P234_DECIMALES,P234_RECARGO,P234_PORC_RECARGO_ANT,P234_VAR_MULT,P234_VAR_DIV,P234_PORC_IVA_1, P234_CANTIDAD_UB,P234_PORC_RECARGO,P234_MONTO_TOTAL,P234_RECARGO_1,P234_PORC_IVA,P234_TOTAL_IVA'
||'_1, P234_IVA_PARCIAL,P234_IVA_ANT,P234_SUBTOTAL_PARCIAL,P234_IMPORTE_ANT,P234_GRAVADAS_PARCIAL,P234_EXENTAS_PARCIAL, P234_PORCENTAJE_DESCUENTO,P234_TOTAL_IVA,P234_SUBTOTAL,P234_GRAVADAS,P234_EXENTAS,P234_TOTAL, P234_RECARGO_PORC,P234_MONTO_GRAVADA_10'
||',P234_MONTO_GRAVADA_5,P234_MONTO_EXENTA,P234_TIP_CAMBIO, P234_COD_FLETE,P234_FLETE_TOTAL,P234_TOTAL_PESO,P234_TOTAL_VOLUMEN'
,p_attribute_03=>'P234_PORC_DESCUENTO,P0_MENSAJE_VALIDACION,P234_ARTICULO_PAR,P234_DESCUENTO,P234_RECARGO, P234_PORC_RECARGO_ANT,P234_DESCUENTO,P234_VAR_MULT,P234_VAR_DIV,P234_CANTIDAD_UB,P234_MONTO_TOTAL, P234_RECARGO_1,P234_TOTAL_IVA_1,P234_IVA_PARCIAL,P234_IVA_ANT,'
||'P234_SUBTOTAL_PARCIAL,P234_IMPORTE_ANT, P234_GRAVADAS_PARCIAL,P234_EXENTAS_PARCIAL,P234_PORCENTAJE_DESCUENTO,P234_TOTAL_IVA,P234_SUBTOTAL, P234_GRAVADAS,P234_EXENTAS,P234_TOTAL,P234_RECARGO_PORC,P234_MONTO_GRAVADA_10,P234_MONTO_GRAVADA_5, P234_MONTO_'
||'EXENTA,P234_FLETE_TOTAL,P234_DESCUENTO_1'
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
 p_id=>wwv_flow_imp.id(72007158610704136)
,p_event_id=>wwv_flow_imp.id(68882613925126411)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P234_TOTAL_IVA := replace(:P234_TOTAL_IVA,''.'');',
':P234_SUBTOTAL := replace(:P234_SUBTOTAL,''.'');',
':P234_TOTAL   := replace(:P234_TOTAL,''.'');',
':P234_PRECIO_UNITARIO  := replace(:P234_PRECIO_UNITARIO,''.'');',
':P234_TOTAL_IVA_1 := replace(:P234_TOTAL_IVA_1,''.'');',
':P234_MONTO_TOTAL := replace(:P234_MONTO_TOTAL,''.'');',
'',
'',
':P234_TOTAL_IVA := TO_CHAR(:P234_TOTAL_IVA,''999G999G999G999G999G999G990'');',
':P234_SUBTOTAL := TO_CHAR(:P234_SUBTOTAL,''999G999G999G999G999G999G990'');',
':P234_TOTAL   := TO_CHAR(:P234_TOTAL,''999G999G999G999G999G999G990'');',
':P234_PRECIO_UNITARIO  := TO_CHAR(:P234_PRECIO_UNITARIO,''999G999G999G999G999G999G990'');',
':P234_TOTAL_IVA_1 := TO_CHAR(:P234_TOTAL_IVA_1,''999G999G999G999G999G999G990'');',
':P234_MONTO_TOTAL := TO_CHAR(:P234_MONTO_TOTAL,''999G999G999G999G999G999G990'');',
''))
,p_attribute_02=>'P234_TOTAL_IVA,P234_SUBTOTAL,P234_TOTAL,P234_PRECIO_UNITARIO,P234_TOTAL_IVA_1,P234_MONTO_TOTAL,P234_CANTIDAD,P234_PORC_DESCUENTO,P234_DECIMALES'
,p_attribute_03=>'P234_TOTAL_IVA,P234_SUBTOTAL,P234_TOTAL,P234_PRECIO_UNITARIO,P234_TOTAL_IVA_1,P234_MONTO_TOTAL,P234_DESCUENTO_1'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(68882969057126414)
,p_event_id=>wwv_flow_imp.id(68882613925126411)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE ',
'    V_PORC_RECARGO_ANT NUMBER;',
'    V_CARGA_PORC_RECARGO    VARCHAR2(100);',
'BEGIN',
':P234_TOTAL_IVA := replace(:P234_TOTAL_IVA,''.'');',
':P234_SUBTOTAL := replace(:P234_SUBTOTAL,''.'');',
':P234_TOTAL   := replace(:P234_TOTAL,''.'');',
':P234_PRECIO_UNITARIO  := replace(:P234_PRECIO_UNITARIO,''.'');',
':P234_TOTAL_IVA_1 := replace(:P234_TOTAL_IVA_1,''.'');',
':P234_MONTO_TOTAL := replace(:P234_MONTO_TOTAL,''.'');',
'INV.VTPEDIDO.PR_CALCULA_RECARGO(P_DET_PORC_RECARGO_ANT     => V_PORC_RECARGO_ANT,',
'P_DET_CARGA_PORC_RECARGO => V_CARGA_PORC_RECARGO,',
'P_CAB_DECIMALES => :P234_DECIMALES,',
'P_MENSAJE_ERROR => :P0_MENSAJE_VALIDACION,',
'P_VAR_MULT => :P234_VAR_MULT,',
'P_VAR_DIV => :P234_VAR_DIV,',
'P_DET_PORC_IVA => :P234_PORC_IVA_1,',
'P_DET_PRECIO_UNITARIO => :P234_PRECIO_UNITARIO,',
'P_DET_CANTIDAD_UB => :P234_CANTIDAD_UB,',
'P_DET_CANTIDAD => :P234_CANTIDAD,',
'P_DET_PORC_DESCUENTO  => :P234_PORC_DESCUENTO,',
'P_DET_PORC_RECARGO => :P234_PORC_RECARGO,',
'P_DET_DESCUENTO => :P234_DESCUENTO_1,',
'P_DET_MONTO_TOTAL => :P234_MONTO_TOTAL,',
'P_DET_RECARGO => :P234_RECARGO_1,',
'P_VAR_PORC_IVA => :P234_PORC_IVA,',
'P_DET_COD_ARTICULO => :P234_COD_ARTICULO,',
'P_VAR_RECARGO => :P234_RECARGO,',
'P_DET_TOTAL_IVA => :P234_TOTAL_IVA_1,',
'P_CAB_IVA_PARCIAL => :P234_IVA_PARCIAL,',
'P_DET_IVA_ANT => :P234_IVA_ANT,',
'P_CAB_SUBTOTAL_PARCIAL => :P234_SUBTOTAL_PARCIAL,',
'P_DET_IMPORTE_ANT => :P234_IMPORTE_ANT,',
'P_CAB_GRAVADAS_PARCIAL => :P234_GRAVADAS_PARCIAL,',
'P_CAB_EXENTAS_PARCIAL => :P234_EXENTAS_PARCIAL,',
'P_CAB_PORCENTAJE_DESCUENTO => :P234_PORCENTAJE_DESCUENTO,',
'P_CAB_DESCUENTO => :P234_DESCUENTO,',
'P_CAB_TOTAL_IVA => :P234_TOTAL_IVA,',
'P_CAB_SUBTOTAL => :P234_SUBTOTAL,',
'P_CAB_GRAVADAS => :P234_GRAVADAS,',
'P_CAB_EXENTAS => :P234_EXENTAS,',
'P_CAB_TOTAL => :P234_TOTAL,',
'P_CAB_RECARGO_PORC => :P234_RECARGO_PORC,',
'P_CAB_RECARGO => :P234_RECARGO,',
'P_DET_MONTO_GRAVADA_10 => :P234_MONTO_GRAVADA_10,',
'P_DET_MONTO_GRAVADA_5 => :P234_MONTO_GRAVADA_5,',
'P_DET_MONTO_EXENTA => :P234_MONTO_EXENTA,',
'P_CAB_TIP_CAMBIO => :P234_TIP_CAMBIO,',
'P_COD_EMPRESA => :P234_COD_EMPRESA,',
'P_COD_FLETE => :P234_COD_FLETE,',
'P_CAB_FLETE_TOTAL => :P234_FLETE_TOTAL,',
'P_DET_TOTAL_PESO => :P234_TOTAL_PESO,',
'P_DET_TOTAL_VOLUMEN => :P234_TOTAL_VOLUMEN,',
'P_VAR_PORC_RECARGO_ANT => :P234_PORC_RECARGO_ANT);',
'',
'INV.VTPEDIDO.PR_CALCULOS(P_VAR_MULT => :P234_VAR_MULT,',
'P_VAR_DIV => :P234_VAR_DIV,',
'P_DET_PORC_IVA => :P234_PORC_IVA,',
'P_DET_PRECIO_UNITARIO => :P234_PRECIO_UNITARIO,',
'P_CAB_DECIMALES => :P234_DECIMALES,',
'P_DET_CANTIDAD_UB => :P234_CANTIDAD_UB,',
'P_DET_CANTIDAD => :P234_CANTIDAD,',
'P_DET_PORC_DESCUENTO => :P234_PORC_DESCUENTO,',
'P_DET_PORC_RECARGO => :P234_PORC_RECARGO,',
'P_DET_DESCUENTO => :P234_DESCUENTO_1,',
'P_DET_MONTO_TOTAL => :P234_MONTO_TOTAL,',
'P_DET_RECARGO => :P234_RECARGO_1,',
'P_VAR_PORC_IVA => :P234_PORC_IVA,',
'P_DET_COD_ARTICULO => :P234_COD_ARTICULO,',
'P_VAR_RECARGO => :P234_RECARGO,',
'P_DET_TOTAL_IVA => :P234_TOTAL_IVA_1,',
'P_CAB_IVA_PARCIAL => :P234_IVA_PARCIAL,',
'P_DET_IVA_ANT => :P234_IVA_ANT,',
'P_CAB_SUBTOTAL_PARCIAL => :P234_SUBTOTAL_PARCIAL,',
'P_DET_IMPORTE_ANT => :P234_IMPORTE_ANT,',
'P_CAB_GRAVADAS_PARCIAL => :P234_GRAVADAS_PARCIAL,',
'P_CAB_EXENTAS_PARCIAL => :P234_EXENTAS_PARCIAL,',
'P_CAB_PORCENTAJE_DESCUENTO => :P234_PORCENTAJE_DESCUENTO,',
'P_CAB_DESCUENTO => :P234_DESCUENTO,',
'P_CAB_TOTAL_IVA => :P234_TOTAL_IVA,',
'P_CAB_SUBTOTAL => :P234_SUBTOTAL,',
'P_CAB_GRAVADAS => :P234_GRAVADAS,',
'P_CAB_EXENTAS => :P234_EXENTAS,',
'P_CAB_TOTAL => :P234_TOTAL,',
'P_CAB_RECARGO_PORC => :P234_RECARGO_PORC,',
'P_CAB_RECARGO => :P234_RECARGO,',
'P_DET_MONTO_GRAVADA_10 => :P234_MONTO_GRAVADA_10,',
'P_DET_MONTO_GRAVADA_5 => :P234_MONTO_GRAVADA_5,',
'P_DET_MONTO_EXENTA => :P234_MONTO_EXENTA,',
'P_MENSAJE_ERROR => :P0_MENSAJE_VALIDACION,',
'P_CAB_TIP_CAMBIO => :P234_TIP_CAMBIO,',
'P_COD_EMPRESA => :P234_COD_EMPRESA,',
'P_COD_FLETE => :P234_COD_FLETE,',
'P_CAB_FLETE_TOTAL => :P234_FLETE_TOTAL,',
'P_DET_TOTAL_PESO => :P234_TOTAL_PESO,',
'P_DET_TOTAL_VOLUMEN => :P234_TOTAL_VOLUMEN);',
'END;',
'',
'',
'',
'',
'',
''))
,p_attribute_02=>'P234_DECIMALES,P234_VAR_MULT,P234_VAR_DIV,PORC_IVA,PRECIO_UNITARIO,CANTIDAD,PORC_DESCUENTO,PORC_RECARGO,DESCUENTO,RECARGO,P234_PORC_IVA,COD_ARTICULO,P234_RECARGO,P234_IVA_PARCIAL,IVA_ANT,P234_SUBTOTAL_PARCIAL,IMPORTE_ANT,P234_GRAVADAS_PARCIAL,P234_EX'
||'ENTAS_PARCIAL,P234_PORCENTAJE_DESCUENTO,P234_DESCUENTO,P234_TOTAL_IVA,P234_SUBTOTAL,P234_GRAVADAS,P234_EXENTAS,P234_TOTAL,P234_RECARGO_PORC,MONTO_GRAVADA_10,MONTO_GRAVADA_5,MONTO_EXENTA,P234_TIP_CAMBIO,P234_COD_EMPRESA,P234_COD_FLETE,TOTAL_PESO,VOLUM'
||'EN'
,p_attribute_03=>'P234_DECIMALES,P234_VAR_MULT,P234_VAR_DIV,P234_PORC_IVA_1,P234_PRECIO_UNITARIO,P234_CANTIDAD,P234_PORC_DESCUENTO, P234_PORC_RECARGO,P234_DESCUENTO_1,P234_MONTO_TOTAL,P234_RECARGO_1,P234_PORC_IVA,P234_COD_ARTICULO, P234_RECARGO,P234_TOTAL_IVA_1,P234_I'
||'VA_PARCIAL,P234_IVA_ANT,P234_SUBTOTAL_PARCIAL,P234_IMPORTE_ANT, P234_GRAVADAS_PARCIAL,P234_EXENTAS_PARCIAL,P234_PORCENTAJE_DESCUENTO,P234_DESCUENTO,P234_TOTAL_IVA, P234_SUBTOTAL,P234_GRAVADAS,P234_EXENTAS,P234_TOTAL,P234_RECARGO_PORC,P234_MONTO_GRAVA'
||'DA_10,P234_MONTO_GRAVADA_5, P234_MONTO_EXENTA,P234_TIP_CAMBIO,P234_COD_EMPRESA,P234_COD_FLETE,P234_TOTAL_PESO,P234_TOTAL_VOLUMEN'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(68883159798126416)
,p_name=>'Validar productos_1'
,p_event_sequence=>330
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P234_IND_PRODUCTO_ARMADO'
,p_condition_element=>'P234_IND_PRODUCTO_ARMADO'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'S'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(68883289179126417)
,p_event_id=>wwv_flow_imp.id(68883159798126416)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P234_IND_PRODUCTO_ARMADO=''S'' THEN',
'	declare ',
'		VEXISTE VARCHAR2(10);',
'	begin',
'		select ''S'' INTO VEXISTE',
'		from st_articulos s',
'		where s.cod_empresa=:P234_COD_EMPRESA',
'		and s.cod_articulo=:P234_COD_ARTICULO',
'		AND S.IND_ARMADO=''S'';',
'	EXCEPTION',
'		WHEN OTHERS THEN',
'		 :P0_MENSAJE_VALIDACION := ''El producto no requiere Armado'';',
'		  :P234_IND_PRODUCTO_ARMADO:=''N'';',
'		end;',
'end if;',
'	'))
,p_attribute_02=>'P234_IND_PRODUCTO_ARMADO,P234_COD_EMPRESA,P234_COD_ARTICULO'
,p_attribute_03=>'P0_MENSAJE_VALIDACION,P234_IND_PRODUCTO_ARMADO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(63124799962930433)
,p_name=>'Obtiene datos por defecto'
,p_event_sequence=>340
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(96863529492522102)
,p_event_id=>wwv_flow_imp.id(63124799962930433)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P234_SUCURSAL_DIST_AUX := :P234_COD_SUCURSAL_DIST;'
,p_attribute_02=>'P234_COD_SUCURSAL_DIST'
,p_attribute_03=>'P234_SUCURSAL_DIST_AUX'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(81180095403178604)
,p_event_id=>wwv_flow_imp.id(63124799962930433)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P234_DESCUENTO_TOTAL := REPLACE(:P234_DESCUENTO_TOTAL , ''.'');',
':P234_DESCUENTO := REPLACE(:P234_DESCUENTO , ''.'');',
':P234_DESCUENTO := REPLACE(:P234_DESCUENTO , ''.'');',
':P234_RECARGO_AUX := REPLACE(:P234_RECARGO_AUX , ''.'');',
':P234_TOTAL_IVA := REPLACE(:P234_TOTAL_IVA , ''.'');',
':P234_RECARGO_PORC := REPLACE(:P234_RECARGO_PORC , ''.'');',
':P234_TOTAL := REPLACE(:P234_TOTAL , ''.'');',
':P234_LIMITE_CREDITO := REPLACE(:P234_LIMITE_CREDITO , ''.'');',
':P234_SALDO_DOLARES := REPLACE(:P234_SALDO_DOLARES , ''.'');',
':P234_SALDO_GS := REPLACE(:P234_SALDO_GS , ''.'');',
':P234_SALDO_TOTAL := REPLACE(:P234_SALDO_TOTAL , ''.'');',
':P234_VALORES_ADEPOSITAR := REPLACE(:P234_VALORES_ADEPOSITAR , ''.'');',
'',
'begin ',
'inv.vtpedido.pr_obtiene_datos_parametros(p_nro_comprobante_ref_par    => :P234_P_NRO_COMPROBANTE_REF_PAR,',
'        p_cod_cliente_par         => :P234_P_COD_CLIENTE_PAR,',
'        p_cab_tip_comprobante_ref => :P234_TIP_COMPROBANTE_REF,',
'        p_tip_comprobante_ref_par => :P234_P_TIP_COMPROBANTE_REF_PAR,',
'        p_cab_ser_comprobante_ref => :P234_SER_COMPROBANTE_REF,',
'        p_ser_comprobante_ref_par => :P234_P_SER_COMPROBANTE_REF_PAR,',
'        p_cab_nro_comprobante_ref => :P234_NRO_COMPROBANTE_REF,',
'        p_cab_cod_cliente         => :P234_COD_CLIENTE,',
'        p_cab_cod_empresa         => :P234_COD_EMPRESA,',
'        p_cab_nom_cliente         => :P234_NOM_CLIENTE,',
'        p_cab_cod_direccion       => :P234_COD_DIRECCION,',
'        p_cab_dir_cliente         => :P234_DIR_CLIENTE,',
'        p_cab_limite_credito      => :P234_LIMITE_CREDITO,',
'        p_cab_cod_condicion_venta => :P234_COD_CONDICION_VENTA,',
'        p_cab_cod_lista_precio    => :P234_COD_LISTA_PRECIO,',
'        p_cab_cod_vendedor        => :P234_COD_VENDEDOR,',
'        p_cab_saldo_dolares       => :P234_SALDO_DOLARES,',
'        p_cab_saldo_gs            => :P234_SALDO_GS,',
'        p_cab_saldo_total         => :P234_SALDO_TOTAL,',
'        p_cab_posible             => :P234_POSIBLE,',
'        p_cab_tel_cliente         => :P234_TEL_CLIENTE,',
'        p_cab_ruc                 => :P234_RUC,',
'        p_cab_nro_inscripcion_ad  => :P234_NRO_INSCRIPCION_AD,',
'        p_cab_ind_exento_ad       => :P234_IND_EXENTO_AD,',
'        p_mensaje_error           => :P0_MENSAJE_VALIDACION,',
'        p_cab_cod_moneda_dol      => :P234_COD_MODEDA_DOL,',
'        p_cod_vendedor_par        => :P234_P_COD_VENDEDOR_PAR,',
'        p_cab_cod_moneda_gs       => :P234_COD_MONEDA_GS,',
'        p_cod_condicion_par       => :P234_P_COD_CONDICION_PAR,',
'        p_cab_nro_jerarquia       => :P234_NRO_JERARQUIA,',
'        p_cab_plazo               => :P234_PLAZO,',
'        p_cab_tip_cliente         => :P234_TIP_CLIENTE,',
'        p_cab_tip_documento       => :P234_TIP_DOCUMENTO,',
'        p_cab_nivel               => :P234_NIVEL,',
'        p_cab_estado_cliente      => :P234_ESTADO_CLIENTE,',
'        p_cab_tipo_impuesto       => :P234_TIPO_IMPUESTO,',
'        p_cod_lista_par           => :P234_P_COD_LISTA_PAR,',
'        p_cab_cod_moneda          => :P234_COD_MONEDA,',
'        p_cab_cod_sucursal_dist   => :P234_COD_SUCURSAL_DIST,',
'        p_cab_tipo_entrega        => :P234_TIPO_ENTREGA,',
'        p_cod_entrega_par         => :P234_P_COD_ENTREGA_PAR,',
'        p_cab_cod_flete           => :P234_COD_FLETE,',
'        p_cod_flete_par           => :P234_P_COD_FLETE_PAR,',
'        p_cab_tip_fac_ref         => :P234_TIP_FAC_REF,',
'        p_cab_ser_fac_ref         => :P234_SER_FAC_REF,',
'        p_cab_nro_fac_ref         => :P234_NRO_FAC_REF,',
'        p_cab_carga_items         => :P234_CARGA_ITEMS,',
'        p_usuario                 => :APP_USER);',
' EXCEPTION ',
'    WHEN OTHERS THEN ',
'        NULL;',
' END;'))
,p_attribute_02=>'P234_P_NRO_COMPROBANTE_REF_PAR,P234_P_COD_CLIENTE_PAR,P234_TIP_COMPROBANTE_REF,P234_P_TIP_COMPROBANTE_REF_PAR,P234_SER_COMPROBANTE_REF,P234_P_SER_COMPROBANTE_REF_PAR,P234_NRO_COMPROBANTE_REF,P234_COD_CLIENTE,P234_COD_EMPRESA,P234_LIMITE_CREDITO,P234_'
||'COD_CONDICION_VENTA,P234_COD_LISTA_PRECIO,P234_COD_VENDEDOR,P234_SALDO_DOLARES,P234_SALDO_GS,P234_SALDO_TOTAL,P234_POSIBLE,P234_COD_MODEDA_DOL,P234_P_COD_VENDEDOR_PAR,P234_COD_MONEDA_GS,P234_P_COD_CONDICION_PAR,P234_ESTADO_CLIENTE,P234_P_COD_LISTA_PA'
||'R,P234_P_COD_ENTREGA_PAR,P234_COD_FLETE,P234_P_COD_FLETE_PAR,P234_TIP_FAC_REF,P234_SER_FAC_REF,P234_NRO_FAC_REF'
,p_attribute_03=>'P234_TIP_COMPROBANTE_REF, P234_SER_COMPROBANTE_REF, P234_NRO_COMPROBANTE_REF,P234_SALDO_DOLARES, P234_SALDO_GS, P234_SALDO_TOTAL,P234_POSIBLE, P234_TEL_CLIENTE, P234_RUC, P234_NRO_INSCRIPCION_AD, P234_IND_EXENTO_AD, P0_MENSAJE_VALIDACION'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(91536332739726339)
,p_event_id=>wwv_flow_imp.id(63124799962930433)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
':P234_DESCUENTO_TOTAL := REPLACE(:P234_DESCUENTO_TOTAL , ''.'');',
':P234_DESCUENTO := REPLACE(:P234_DESCUENTO , ''.'');',
':P234_DESCUENTO := REPLACE(:P234_DESCUENTO , ''.'');',
':P234_RECARGO_AUX := REPLACE(:P234_RECARGO_AUX , ''.'');',
':P234_TOTAL_IVA := REPLACE(:P234_TOTAL_IVA , ''.'');',
':P234_RECARGO_PORC := REPLACE(:P234_RECARGO_PORC , ''.'');',
':P234_TOTAL := REPLACE(:P234_TOTAL , ''.'');',
':P234_LIMITE_CREDITO := REPLACE(:P234_LIMITE_CREDITO , ''.'');',
':P234_SALDO_DOLARES := REPLACE(:P234_SALDO_DOLARES , ''.'');',
':P234_SALDO_GS := REPLACE(:P234_SALDO_GS , ''.'');',
':P234_SALDO_TOTAL := REPLACE(:P234_SALDO_TOTAL , ''.'');',
':P234_VALORES_ADEPOSITAR := REPLACE(:P234_VALORES_ADEPOSITAR , ''.'');',
'VTPEDIDO.PR_VALIDA_CLIENTES_VTPEDIDO(P_COD_SUCURSAL           => :P234_COD_SUCURSAL,',
'P_IND_LLEVA_OC           => :P234_IND_LLEVA_OC,',
'P_COD_CLIENTE            => :P234_COD_CLIENTE,',
'P_COD_EMPRESA            => :P234_COD_EMPRESA,',
'P_TIP_CLIENTE            => :P234_TIP_CLIENTE,',
'P_NRO_COMPROBANTE        => :P234_NRO_COMPROBANTE,',
'P_FECHA_TOPE_FACTURACION => :P234_FECHA_TOPE_FACTURACION,',
'P_NOM_CLIENTE            => :P234_NOM_CLIENTE,',
'P_COD_DIRECCION          => :P234_COD_DIRECCION,',
'P_LIMITE_CREDITO         => :P234_LIMITE_CREDITO,',
'P_COD_CONDICION_VENTA    => :P234_COD_CONDICION_VENTA,',
'P_COD_LISTA_PRECIO       => :P234_COD_LISTA_PRECIO,',
'P_COD_VENDEDOR           => :P234_COD_VENDEDOR,',
'P_SALDO_DOLARES          => :P234_SALDO_DOLARES,',
'P_SALDO_GS               => :P234_SALDO_GS,',
'P_SALDO_TOTAL            => :P234_SALDO_TOTAL,',
'P_POSIBLE                => :P234_POSIBLE,',
'P_DIR_CLIENTE            => :P234_DIR_CLIENTE,',
'P_TEL_CLIENTE            => :P234_TEL_CLIENTE,',
'P_RUC                    => :P234_RUC,',
'P_NRO_INSCRIPCION_AD     => :P234_NRO_INSCRIPCION_AD,',
'P_TIPO_ENTREGA_CIUDAD    => :P234_TIPO_ENTREGA_CIUDAD,',
'P_IND_CONFIRMAR_FACTURA  => :P234_IND_CONFIRMAR_FACTURA,',
'P_MENSAJE_ERROR          => :P0_MENSAJE_VALIDACION,',
'P_COPIANDO               => :P234_COPIANDO,',
'P_COD_SUCURSAL_DIST      => :P234_COD_SUCURSAL_DIST,',
'P_SOBREGIRADO            => :P234_SOBREGIRADO,',
'P_DESC_JERARQUIA         => :P234_DESC_JERARQUIA,',
'P_DESC_SCORING           => :P234_DESC_SCORING,',
'P_DERIVADO               => :P234_DERIVADO,',
'P_IND_IMPRESO            => :P234_IND_IMPRESO,',
'P_TIP_COMPROBANTE_REF    => :P234_TIP_COMPROBANTE_REF,',
'P_IND_EXENTO_AD          => :P234_IND_EXENTO_AD,',
'P_TIPO_IMPUESTO          => :P234_TIPO_IMPUESTO,',
'P_TIPO_CLIENTE           => :P234_TIPO_CLIENTE,',
'P_COD_MONEDA_DOL         => :P234_COD_MODEDA_DOL,',
'P_COD_MONEDA_GS          => :P234_COD_MODEDA_GS,',
'P_VALORES_ADEPOSITAR     => :P234_VALORES_ADEPOSITAR,',
'P_NRO_JERARQUIA          => :P234_NRO_JERARQUIA,',
'P_PLAZO                  => :P234_PLAZO,',
'P_TIP_DOCUMENTO          => :P234_TIP_DOCUMENTO,',
'P_NIVEL                  => :P234_NIVEL,',
'P_ESTADO_CLIENTE         => :P234_ESTADO_CLIENTE,',
'P_COD_FLETE              => :P234_COD_FLETE,',
'P_TIPO_ENTREGA           => :P234_TIPO_ENTREGA,',
'P_FEC_VENCIMIENTO        => :P234_FEC_VENCIMIENTO,',
'P_FEC_COMPROBANTE        => :P234_FEC_COMPROBANTE,',
'P_DIAS_VENCIM_PEDIDO     => :P234_DIAS_VENCIM_PEDIDO,',
'P_VALOR_CARPETA          => :P234_VALOR_CARPETA,',
'P_COD_MONEDA             => :P234_COD_MONEDA);',
'EXCEPTION ',
'    WHEN NO_DATA_FOUND THEN ',
'        :P0_MENSAJE_VALIDACION := NULL;',
'        ',
'    WHEN OTHERS THEN ',
'        :P0_MENSAJE_VALIDACION := NULL;',
'END;',
'',
'BEGIN',
'select CC.EMAIL',
'into :P234_CORREO',
'from CC_CONTACTOS_CLIENTES CC',
'where CC.COD_EMPRESA = :P_COD_EMPRESA',
'AND CC.COD_CLIENTE = :P234_COD_CLIENTE',
'and CC.COD_CONTACTO = ''FA''',
'AND CC.EMAIL IS NOT NULL',
'AND ROWNUM = 1;',
'EXCEPTION WHEN OTHERS THEN ',
':P234_CORREO:=NULL;',
' END;',
' ',
':P234_LIMITE_CREDITO := to_char(to_number(:P234_LIMITE_CREDITO), ''999G999G999G999G990D00'');',
':P234_SALDO_GS := to_char(to_number(:P234_SALDO_GS), ''999G999G999G999G990D00'');',
'',
':P234_VALORES_ADEPOSITAR := to_char(to_number(:P234_VALORES_ADEPOSITAR), ''999G999G999G999G990D00'');',
':P234_POSIBLE := to_char(to_number(:P234_POSIBLE), ''999G999G999G999G990D00'');'))
,p_attribute_02=>'P234_COD_SUCURSAL,P234_IND_LLEVA_OC,P234_COD_CLIENTE,P234_COD_EMPRESA,P234_TIP_CLIENTE,P234_NRO_COMPROBANTE,P234_FECHA_TOPE_FACTURACION,P234_NOM_CLIENTE,P234_COD_DIRECCION,P234_LIMITE_CREDITO,P234_COD_CONDICION_VENTA,P234_COD_LISTA_PRECIO,P234_COD_VE'
||'NDEDOR,P234_SALDO_DOLARES,P234_SALDO_GS,P234_SALDO_TOTAL,P234_POSIBLE,P234_DIR_CLIENTE,P234_TEL_CLIENTE,P234_RUC,P234_NRO_INSCRIPCION_AD,P234_TIPO_ENTREGA_CIUDAD,P234_IND_CONFIRMAR_FACTURA,P234_COPIANDO,P234_COD_SUCURSAL_DIST,P234_SOBREGIRADO,P234_DE'
||'SC_JERARQUIA,P234_DESC_SCORING,P234_DERIVADO,P234_IND_IMPRESO,P234_TIP_COMPROBANTE_REF,P234_IND_EXENTO_AD,P234_TIPO_IMPUESTO,P234_TIPO_CLIENTE,P234_COD_MODEDA_DOL,P234_COD_MODEDA_GS,P234_VALORES_ADEPOSITAR,P234_NRO_JERARQUIA,P234_PLAZO,P234_TIP_DOCUM'
||'ENTO,P234_NIVEL,P234_ESTADO_CLIENTE,P234_COD_FLETE,P234_TIPO_ENTREGA,P234_FEC_VENCIMIENTO,P234_FEC_COMPROBANTE,P234_DIAS_VENCIM_PEDIDO,P234_VALOR_CARPETA,P234_COD_MONEDA'
,p_attribute_03=>'P234_IND_LLEVA_OC, P234_FECHA_TOPE_FACTURACION, P234_LIMITE_CREDITO, P234_SALDO_DOLARES, P234_SALDO_GS, P234_SALDO_TOTAL, P234_POSIBLE, P234_NRO_INSCRIPCION_AD, P234_TIPO_ENTREGA_CIUDAD, P234_IND_CONFIRMAR_FACTURA, P234_SOBREGIRADO, P234_COD_MODEDA_D'
||'OL, P234_COD_MODEDA_GS, P234_VALORES_ADEPOSITAR, P234_NRO_JERARQUIA, P234_PLAZO,P234_DIR_CLIENTE, P234_TEL_CLIENTE, P234_RUC,P234_NRO_INSCRIPCION_AD, P234_TIPO_ENTREGA_CIUDAD, P234_IND_CONFIRMAR_FACTURA, P234_COPIANDO, P234_SOBREGIRADO, P234_DESC_JER'
||'ARQUIA, P234_DESC_SCORING,P234_IND_IMPRESO, P234_TIP_COMPROBANTE_REF, P234_IND_EXENTO_AD, P234_TIPO_IMPUESTO, P234_TIPO_CLIENTE, P234_COD_MODEDA_DOL, P234_COD_MODEDA_GS, P234_VALORES_ADEPOSITAR'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(94561785902213445)
,p_event_id=>wwv_flow_imp.id(63124799962930433)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'select a.cod_sucursal_dist ',
'into :P234_COD_SUCURSAL_DIST',
'from VT_PEDIDOS_CABECERA a',
'where a.nro_comprobante = :P234_NRO_COMPROBANTE',
'and a.ser_comprobante = :P234_ser_COMPROBANTE',
'and cod_empresa  = ''1'';',
'exception ',
'    when no_data_found then ',
'        :P234_COD_SUCURSAL_DIST := null;',
'    when others then ',
'        :P234_COD_SUCURSAL_DIST := null;',
'END;',
'',
'begin',
'SELECT d.cod_direccion cod_dir',
'into  :P234_COD_DIRECCION',
'          FROM cc_clientes    c,',
'               personas       p,',
'               cc_causales    b,',
'               direc_personas d,',
'               telef_personas t,',
'               ident_personas i,',
'               ciudades       ci',
'         WHERE c.cod_empresa = ''1''',
'           AND c.cod_cliente = :P234_COD_CLIENTE',
'           AND c.cod_persona = p.cod_persona',
'           AND c.cod_causal = b.cod_causal(+)',
'              --',
'           AND c.cod_persona = d.cod_persona(+)',
'           AND nvl(d.por_defecto(+), ''N'') = ''S''',
'              --',
'           AND c.cod_persona = t.cod_persona(+)',
'           AND nvl(t.por_defecto(+), ''N'') = ''S''',
'              --',
'           AND c.cod_persona = i.cod_persona(+)',
'           AND nvl(i.cod_ident(+), ''X'') = ''RUC''',
'              --',
'           AND ci.cod_pais(+) = d.cod_pais',
'           AND ci.cod_provincia(+) = d.cod_provincia',
'           AND ci.cod_ciudad(+) = d.cod_ciudad',
'           AND rownum = 1;',
'exception ',
'    when no_data_found then ',
'        :P234_COD_DIRECCION := null;',
'    when others then ',
'        :P234_COD_DIRECCION := null;',
'END;',
''))
,p_attribute_02=>'P234_COD_SUCURSAL_DIST,P234_COD_CLIENTE,P234_NRO_COMPROBANTE,P234_SER_COMPROBANTE'
,p_attribute_03=>'P234_COD_DIRECCION,P234_COD_SUCURSAL_DIST'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(68884286320126427)
,p_name=>'Guarda datos'
,p_event_sequence=>350
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P234_AGREGAR_DETALLES'
,p_condition_element=>'P234_AGREGAR_DETALLES'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'1'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(68886446126126449)
,p_event_id=>wwv_flow_imp.id(68884286320126427)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P234_TOTAL_IVA := replace(:P234_TOTAL_IVA,''.'');',
':P234_SUBTOTAL := replace(:P234_SUBTOTAL,''.'');',
':P234_TOTAL   := replace(:P234_TOTAL,''.'');',
':P234_PRECIO_UNITARIO  := replace(:P234_PRECIO_UNITARIO,''.'');',
':P234_TOTAL_IVA_1 := replace(:P234_TOTAL_IVA_1,''.'');',
':P234_MONTO_TOTAL := replace(:P234_MONTO_TOTAL,''.'');',
':P234_PORC_DESCUENTO := replace(:P234_PORC_DESCUENTO,''.'');',
':P234_GRAVADAS_PARCIAL := replace(:P234_GRAVADAS_PARCIAL,''.'');',
':P234_EXENTAS_PARCIAL := replace(:P234_EXENTAS_PARCIAL,''.'');',
':P234_PORC_IVA_1 := replace(:P234_PORC_IVA_1,''.'');',
'inv.vtpedido.pr_consulta_promocion(p_var_cod_empresa => :P234_COD_EMPRESA,',
'      p_det_cod_articulo         => :P234_COD_ARTICULO,',
'      p_det_ind_promo            => :P234_IND_PROMO,',
'      p_det_nro_promo            => :P234_NRO_PROMO_1,',
'      p_var_cantidad_mix         => :P234_CANTIDAD_MIX,',
'      p_var_cod_cliente          => :P234_COD_CLIENTE,',
'      p_det_cantidad             => :P234_CANTIDAD,',
'      p_cab_cod_lista_precio     => :P234_COD_LISTA_PRECIO,',
'      p_porc_descuento           => :P234_PORC_DESCUENTO,',
'      p_cab_cod_sucursal         => :P234_COD_SUCURSAL,',
'      p_cab_cod_art_aux          => :P234_COD_ART_AUX,',
'      p_var_cantidad_promo_mix   => :P234_CANTIDAD_PROMO_MIX,',
'      p_det_orden                => :P234_ORDEN,',
'      p_var_cod_moneda_base      => :P234_COD_MONEDA_BASE,',
'      p_var_recargo              => :P234_RECARGO,',
'      p_var_cod_moneda_precio    => :P234_COD_MONEDA_PRECIO,',
'      p_cab_cambio_moneda_precio => :P234_CAMBIO_MONEDA_PRECIO,',
'      p_cab_tip_cambio           => :P234_TIP_CAMBIO_COMPRA,',
'      p_cab_decimales            => :P234_DECIMALES,',
'      p_cab_fec_comprobante      => :P234_FEC_COMPROBANTE,',
'      p_cab_tipo_impuesto        => :P234_TIPO_IMPUESTO,',
'      p_cab_gravadas_parcial     => :P234_GRAVADAS_PARCIAL,',
'      p_cab_exentas_parcial      => :P234_EXENTAS_PARCIAL,',
'      p_mensaje_error            => :P0_MENSAJE_VALIDACION,',
'      p_cab_ind_exento_ad        => :P234_IND_EXENTO_AD,',
'      p_cab_cod_moneda           => :P234_COD_MONEDA,',
'      p_cab_tip_cambio_compra    => :P234_TIP_CAMBIO_COMPRA,',
'      p_var_promo_cocina         => :P234_PROMO_COCINA,',
'      p_det_cod_art_corto        => :P234_COD_ART_CORTO,',
'      p_det_precio_unitario      => :P234_PRECIO_UNITARIO,',
'      p_det_porc_recargo         => :P234_PORC_RECARGO,',
'      p_det_precio_lista         => :P234_PRECIO_LISTA,',
'      p_det_porc_iva             => :P234_PORC_IVA_1,',
'      p_det_cod_iva              => :P234_COD_IVA);',
':P234_DESCUENTO_1 := round((nvl(:P234_CANTIDAD, 0) *',
'                           (nvl(:P234_PRECIO_UNITARIO, 0)) *',
'                           (nvl(:P234_PORC_DESCUENTO, 0) / 100)),',
'                           nvl(:P234_DECIMALES, 0));',
'',
':P234_RECARGO_1 := round((nvl(:P234_CANTIDAD, 0) *',
'                           (nvl(:P234_PRECIO_UNITARIO, 0)) *',
'                           (nvl(:P234_RECARGO, 0) / 100)),',
'                           nvl(:P234_DECIMALES, 0));',
'',
'IF :P234_COD_MONEDA = ''1'' THEN ',
'    :P234_PRECIO_UNITARIO  := TO_CHAR(:P234_PRECIO_UNITARIO,''999G999G999G999G999G999G990'');',
'    :P234_TOTAL_IVA_1 := TO_CHAR(:P234_TOTAL_IVA_1,''999G999G999G999G999G999G990'');',
'    :P234_MONTO_TOTAL := TO_CHAR(:P234_MONTO_TOTAL,''999G999G999G999G999G999G990'');',
'    :P234_TOTAL_IVA := TO_CHAR(:P234_TOTAL_IVA,''999G999G999G999G999G999G990'');',
'    :P234_SUBTOTAL := TO_CHAR(:P234_SUBTOTAL,''999G999G999G999G999G999G990'');',
'    :P234_TOTAL   := TO_CHAR(:P234_TOTAL,''999G999G999G999G999G999G990'');',
'ELSE ',
'    :P234_PRECIO_UNITARIO  := TO_CHAR(:P234_PRECIO_UNITARIO,''999G999G999G999G990D00'');',
'    :P234_TOTAL_IVA_1 := TO_CHAR(:P234_TOTAL_IVA_1,''999G999G999G999G990D00'');',
'    :P234_MONTO_TOTAL := TO_CHAR(:P234_MONTO_TOTAL,''999G999G999G999G990D00'');',
'    :P234_TOTAL_IVA := TO_CHAR(:P234_TOTAL_IVA,''999G999G999G999G990D00'');',
'    :P234_SUBTOTAL := TO_CHAR(:P234_SUBTOTAL,''999G999G999G999G990D00'');',
'    :P234_TOTAL   := TO_CHAR(:P234_TOTAL,''999G999G999G999G990D00'');',
'END IF;'))
,p_attribute_02=>'P234_COD_EMPRESA,P234_COD_ARTICULO,P234_NRO_PROMO_1,P234_CANTIDAD_MIX,P234_COD_CLIENTE,P234_CANTIDAD, P234_COD_LISTA_PRECIO,P234_PORC_DESCUENTO,P234_COD_SUCURSAL,P234_COD_ART_AUX,P234_CANTIDAD_PROMO_MIX,P234_ORDEN, P234_COD_MONEDA_BASE,P234_RECARGO,P'
||'234_COD_MONEDA_PRECIO,P234_CAMBIO_MONEDA_PRECIO,P234_TIP_CAMBIO, P234_DECIMALES,P234_FEC_COMPROBANTE,P234_TIPO_IMPUESTO,P234_GRAVADAS_PARCIAL,P234_EXENTAS_PARCIAL,P234_IND_EXENTO_AD, P234_COD_MONEDA,P234_TIP_CAMBIO_COMPRA,P234_COD_ART_CORTO,P234_PREC'
||'IO_UNITARIO,P234_PORC_RECARGO,P234_PRECIO_LISTA, P234_PORC_IVA_1,P234_COD_IVA'
,p_attribute_03=>'P234_DESCUENTO_1'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(68884304384126428)
,p_event_id=>wwv_flow_imp.id(68884286320126427)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P234_NRO_PROMO_1 := NULL;',
':P234_ES_PROMO_1 :=  NULL;',
'',
'',
'IF :P234_COD_MONEDA = ''1'' THEN ',
'    :P234_PRECIO_UNITARIO  := TO_CHAR(REPLACE(:P234_PRECIO_UNITARIO, ''.''),''999G999G999G999G999G999G990'');',
'    :P234_TOTAL_IVA_1 := TO_CHAR(REPLACE(:P234_TOTAL_IVA_1, ''.''),''999G999G999G999G999G999G990'');',
'    :P234_MONTO_TOTAL := TO_CHAR(REPLACE(:P234_MONTO_TOTAL, ''.''),''999G999G999G999G999G999G990'');',
'    :P234_TOTAL_IVA := TO_CHAR(REPLACE(:P234_TOTAL_IVA, ''.''),''999G999G999G999G999G999G990'');',
'    :P234_SUBTOTAL := TO_CHAR(REPLACE(:P234_SUBTOTAL, ''.''),''999G999G999G999G999G999G990'');',
'    :P234_TOTAL   := TO_CHAR(REPLACE(:P234_TOTAL, ''.''),''999G999G999G999G999G999G990'');',
'ELSE ',
'    :P234_PRECIO_UNITARIO  := TO_CHAR(REPLACE(:P234_PRECIO_UNITARIO, ''.''),''999G999G999G999G990D00'');',
'    :P234_TOTAL_IVA_1 := TO_CHAR(REPLACE(:P234_TOTAL_IVA_1, ''.''),''999G999G999G999G990D00'');',
'    :P234_MONTO_TOTAL := TO_CHAR(REPLACE(:P234_MONTO_TOTAL, ''.''),''999G999G999G999G990D00'');',
'    :P234_TOTAL_IVA := TO_CHAR(REPLACE(:P234_TOTAL_IVA, ''.''),''999G999G999G999G990D00'');',
'    :P234_SUBTOTAL := TO_CHAR(REPLACE(:P234_SUBTOTAL, ''.''),''999G999G999G999G990D00'');',
'    :P234_TOTAL   := TO_CHAR(REPLACE(:P234_TOTAL, ''.''),''999G999G999G999G990D00'');',
'END IF;',
'apex_collection.add_member(p_collection_name => ''TMP_VTPEDIDO'',',
'     p_c001            => :P234_COD_EMPRESA,',
'     p_c002            => :P234_TIP_COMPROBANTE,',
'     p_c003            => :P234_SER_COMPROBANTE,',
'     p_c004            => ''A'',',
'     p_c005            => :P234_COD_ARTICULO,',
'     p_c006            => :P234_CANTIDAD,',
'     p_c007            => :P234_CANTIDAD_FACTURADA_1,',
'     p_c008            => :P234_MONTO_TOTAL,',
'     p_c009            => :P234_TOTAL_IVA_1,',
'     p_c010            => :P234_PRECIO_LISTA,',
'     p_c011            => :P234_DESCUENTO_1,',
'     p_c012            =>  :P234_PRECIO_UNITARIO,',
'     p_c013            => nvl(:P234_PORC_DESCUENTO, ''0,00''),',
'     p_c014            => :P234_COSTO_PROMEDIO_REF,',
'     p_c015            => :P234_COSTO_PROMEDIO,',
'     p_c016            => :P234_COSTO_CON,',
'     p_c017            => :P234_COD_UNIDAD_MEDIDA,',
'     p_c018            => :P234_CANTIDAD_UB,',
'     p_c019            => nvl(:P234_PORC_RECARGO, ''0,00''),',
'     p_c020            => NVL(:P234_RECARGO_AUX, ''0,00''),',
'     p_c021            => null,',
'     p_c022            => :P234_PORC_IVA_1,',
'     p_c023            => :P234_ORDEN,',
'     p_c024            => :P234_COD_IVA,',
'     p_c025            => :P234_CONTROL_FIN,',
'     p_c026            => :P234_COD_ART_CORTO,',
'     p_c027            => :P234_CANTIDAD_PENDIENTE,',
'     p_c028            => :P234_COD_MOTIVO_ANU_1,',
'     p_c029            => :P234_IND_NO_DESCUENTO,',
'     p_c030            => :P234_VOLUMEN,',
'     p_c031            => NVL(:P234_ES_PROMO_1, ''N''),',
'     p_c032            => :P234_NRO_PROMO,',
'     p_c033            => :P234_DESC_ARTICULO,',
'     p_c034            => :P234_VERIFICADO,',
'     p_c035            => :P234_IND_PRODUCTO_ARMADO,',
'     p_c036            => :P234_IND_PROMO,',
'     p_c037            => :P234_IMAGEN,',
'     p_c038            => :P234_CANTIDAD_ENTREGADA,',
'     p_c039            => :P234_COD_ESTABLE,',
'     p_c040            => :P234_MONTO_GRAVADA_10,',
'     p_c041            => :P234_MONTO_GRAVADA_5,',
'     p_c042            => :P234_MONTO_EXENTA,',
'     p_c043            => :P234_ARTICULO_REGALO_PROMO,',
'     p_c044            => :P234_COD_ARTICULO_PROMO_ANT_1,',
'     p_c045            => :P234_NRO_PEDIDO_PROMO_ANT_1,',
'     p_c046            => null,',
'     p_c047            => null,',
'     p_c048            => :P234_TIP_FACTURA,',
'     p_c049            => :P234_SER_FACTURA,',
'     p_c050            => :P234_NRO_FACTURA,',
'     p_n001            => null,',
'     p_n002            => null,',
'     p_n003            => to_number(replace(:P234_IVA_ANT,''.'')),',
'     p_n005            => null);--:P234_PESO);',
'',
'     :P234_PORC_RECARGO := ''0,00'';',
'     :P234_RECARGO_AUX := NULL;',
'     :P234_MONTO_GRAVADA_10 := null;'))
,p_attribute_02=>'P234_COD_EMPRESA,P234_TIP_COMPROBANTE,P234_SER_COMPROBANTE,P234_NRO_COMPROBANTE,P234_COD_ARTICULO,P234_CANTIDAD,                  P234_CANTIDAD_FACTURADA_1,P234_MONTO_TOTAL,P234_TOTAL_IVA_1,P234_PRECIO_LISTA,P234_DESCUENTO_1,P234_PRECIO_REAL,        '
||'          P234_PORC_DESCUENTO,P234_COSTO_PROMEDIO_REF,P234_COSTO_PROMEDIO,P234_COSTO_CON,P234_COD_UNIDAD_MEDIDA,P234_CANTIDAD_UB,                  P234_PORC_RECARGO,P234_RECARGO_1,P234_PORC_IVA_1,P234_ORDEN,P234_COD_IVA,P234_CONTROL_FIN,P234_COD_ART_'
||'CORTO,                  P234_CANTIDAD_PENDIENTE,P234_COD_MOTIVO_ANU_1,P234_PESO,P234_VOLUMEN,P234_ES_PROMO_1,P234_NRO_PROMO_1,                  P234_VERIFICADO,P234_IND_PRODUCTO_ARMADO,P234_IND_PROMO,P234_IMAGEN,P234_CANTIDAD_ENTREGADA,P234_COD_ESTAB'
||'LE,                  P234_MONTO_GRAVADA_10,P234_MONTO_GRAVADA_5,P234_MONTO_EXENTA,P234_ARTICULO_REGALO_PROMO,P234_COD_ARTICULO_PROMO_ANT_1,                  P234_NRO_PEDIDO_PROMO_ANT_1,P234_TIP_FACTURA,P234_SER_FACTURA,P234_NRO_FACTURA,P234_COD_GRUPO'
||'_ANT,P234_COD_ORIGEN_ART,P234_DESC_ARTICULO,P234_PRECIO_UNITARIO,P234_NRO_PROMO,P234_COD_MONEDA,P234_RECARGO_AUX'
,p_attribute_03=>'P234_PORC_RECARGO,P234_RECARGO_AUX,P234_MONTO_GRAVADA_10'
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
 p_id=>wwv_flow_imp.id(68884860097126433)
,p_event_id=>wwv_flow_imp.id(68884286320126427)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(68098607433978930)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(68884726355126432)
,p_event_id=>wwv_flow_imp.id(68884286320126427)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(55011281939330147)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(68884952372126434)
,p_event_id=>wwv_flow_imp.id(68884286320126427)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P234_COD_ART_CORTO,P234_COD_ARTICULO,P234_DESC_ARTICULO,P234_CANTIDAD,P234_PRECIO_UNITARIO,P234_PORC_DESCUENTO,P234_PORC_RECARGO,P234_TOTAL_IVA_1,P234_MONTO_TOTAL,P234_RECARGO_1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(68885212893126437)
,p_event_id=>wwv_flow_imp.id(68884286320126427)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT    sum(to_number(replace(nvl(c008, 0), ''.'')))   AS monto_total,',
'          sum(to_number(replace(nvl(c009, 0), ''.'')))  AS total_iva',
'INTO :P234_SUBTOTAL, :P234_TOTAL_IVA',
'FROM apex_collections',
'WHERE collection_name = ''TMP_VTPEDIDO''',
'AND C004 <> ''D'';',
'',
'IF :P234_COD_MONEDA = ''1'' THEN ',
'    :P234_TOTAL := TO_CHAR(TO_NUMBER(REPLACE(:P234_SUBTOTAL,''.'')) + TO_NUMBER(REPLACE(:P234_TOTAL_IVA,''.'')), ''999G999G999G999G999G999G990'');',
'    :P234_SUBTOTAL := TO_CHAR(:P234_SUBTOTAL, ''999G999G999G999G999G999G990'');',
'    :P234_TOTAL_IVA := TO_CHAR(:P234_TOTAL_IVA, ''999G999G999G999G999G999G990'');',
'ELSE ',
'    :P234_TOTAL := TO_CHAR(TO_NUMBER(REPLACE(:P234_SUBTOTAL,''.'')) + TO_NUMBER(REPLACE(:P234_TOTAL_IVA,''.'')), ''999G999G999G999G990D00'');',
'    :P234_SUBTOTAL := TO_CHAR(:P234_SUBTOTAL, ''999G999G999G999G990D00'');',
'    :P234_TOTAL_IVA := TO_CHAR(:P234_TOTAL_IVA, ''999G999G999G999G990D00'');',
'END IF;'))
,p_attribute_02=>'P234_SUBTOTAL,P234_TOTAL,P234_COD_MONEDA'
,p_attribute_03=>'P234_SUBTOTAL,P234_TOTAL_IVA,P234_TOTAL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(78072616817103125)
,p_event_id=>wwv_flow_imp.id(68884286320126427)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'inv.vtpedido.pr_calculos_fletes(p_cab_tip_cambio    => :P234_TIP_CAMBIO,',
'                                p_cod_empresa       => :P234_COD_EMPRESA,',
'                                p_cod_flete         => :P234_COD_FLETE,',
'                                p_cab_flete_total   => :P234_FLETE_TOTAL,',
'                                p_cab_total         => TO_NUMBER(REPLACE(:P234_TOTAL,''.'')),',
'                                p_det_total_peso    => TO_NUMBER(REPLACE(:P234_TOTAL_PESO,''.'')),',
'                                p_det_total_volumen => TO_NUMBER(REPLACE(:P234_TOTAL_CANTIDAD,''.'')));',
'',
':P234_FLETE_TOTAL := TO_CHAR(:P234_FLETE_TOTAL, ''999G999G999G999G999G999G990'');'))
,p_attribute_02=>'P234_TIP_CAMBIO,P234_COD_EMPRESA,P234_COD_FLETE,P234_TOTAL,P234_TOTAL_PESO,P234_TOTAL_CANTIDAD'
,p_attribute_03=>'P234_FLETE_TOTAL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(99283144017806415)
,p_event_id=>wwv_flow_imp.id(68884286320126427)
,p_event_result=>'TRUE'
,p_action_sequence=>90
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P234_AGREGAR_DETALLES'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(68884431244126429)
,p_name=>'Cerrar Modal'
,p_event_sequence=>360
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(68884113730126426)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(68884514504126430)
,p_event_id=>wwv_flow_imp.id(68884431244126429)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(68098607433978930)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(68884681494126431)
,p_event_id=>wwv_flow_imp.id(68884431244126429)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P234_COD_ART_CORTO,P234_COD_ARTICULO,P234_DESC_ARTICULO,P234_CANTIDAD,P234_PRECIO_UNITARIO,P234_PORC_DESCUENTO,P234_PORC_RECARGO,P234_TOTAL_IVA_1,P234_MONTO_TOTAL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(68885002241126435)
,p_event_id=>wwv_flow_imp.id(68884431244126429)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(55011281939330147)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(72007950963704144)
,p_event_id=>wwv_flow_imp.id(68884431244126429)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'document.getElementById(''P234_COD_ART_CORTO'').readOnly = false;',
'document.getElementById(''P234_COD_ARTICULO'').readOnly = false;',
'document.getElementById(''P234_DESC_ARTICULO'').readOnly = false;'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(77480391964133419)
,p_event_id=>wwv_flow_imp.id(68884431244126429)
,p_event_result=>'TRUE'
,p_action_sequence=>90
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT    sum(to_number(replace(nvl(c008, 0), ''.'')))   AS monto_total,',
'          sum(to_number(replace(nvl(c009, 0), ''.'')))  AS total_iva',
'INTO :P234_SUBTOTAL, :P234_TOTAL_IVA',
'FROM apex_collections',
'WHERE collection_name = ''TMP_VTPEDIDO'';',
'',
'',
':P234_TOTAL := TO_CHAR(TO_NUMBER(REPLACE(:P234_SUBTOTAL,''.'')) + TO_NUMBER(REPLACE(:P234_TOTAL_IVA,''.'')), ''999G999G999G999G999G999G990'');',
':P234_SUBTOTAL := TO_CHAR(:P234_SUBTOTAL, ''999G999G999G999G999G999G990'');',
':P234_TOTAL_IVA := TO_CHAR(:P234_TOTAL_IVA, ''999G999G999G999G999G999G990'');'))
,p_attribute_02=>'P234_SUBTOTAL,P234_TOTAL'
,p_attribute_03=>'P234_SUBTOTAL,P234_TOTAL_IVA,P234_TOTAL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(68885810209126443)
,p_name=>'Obtiene secuencia de la grilla'
,p_event_sequence=>370
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(55011281939330147)
,p_bind_type=>'bind'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|interactivegridselectionchange'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(68885970562126444)
,p_event_id=>wwv_flow_imp.id(68885810209126443)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var i, i_paginasids = "", i_operacionids = ":"',
'model = this.data.model;',
'for ( i = 0; i < this.data.selectedRecords.length; i++ ) { ',
' i_paginasids += model.getValue( this.data.selectedRecords[i], "SEQ_ID"); ',
'}',
'apex.item( "P234_SECUENCIA").setValue (i_paginasids);',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(68886196478126446)
,p_name=>'Obtiene descuentos'
,p_event_sequence=>380
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P234_SECUENCIA'
,p_condition_element=>'P234_SECUENCIA'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(68886229828126447)
,p_event_id=>wwv_flow_imp.id(68886196478126446)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE ',
'    v_cod_articulo  VARCHAR2(500);',
'    v_recargo   VARCHAR2(50);',
'BEGIN ',
':P234_DET_COMENTARIO := NULL;',
':P234_ARTICULO_PAR := NULL;',
'SELECT  C005, C011, C020, C031, c032, C030, N005',
'INTO v_cod_articulo, :P234_DESCUENTO, :P234_RECARGO_AUX,:P234_ES_PROMO, :P234_NRO_PROMO, :P234_TOTAL_CANTIDAD, :P234_TOTAL_PESO',
'FROM apex_collections',
'WHERE collection_name = ''TMP_VTPEDIDO''',
'AND SEQ_ID = :P234_SECUENCIA;',
'',
'IF :P234_COD_MONEDA = ''1'' THEN ',
':P234_DESCUENTO := TO_CHAR(:P234_DESCUENTO , ''999G999G999G999G999G999G990'');',
':P234_RECARGO_AUX  := TO_CHAR(:P234_RECARGO_AUX , ''999G999G999G999G999G999G990'');',
':P234_RECARGO := ''0,00'';',
':P234_TOTAL_CANTIDAD := TO_CHAR(:P234_TOTAL_CANTIDAD , ''999G999G999G999G990D00'');',
':P234_TOTAL_PESO := TO_CHAR(:P234_TOTAL_PESO , ''999G999G999G999G990D00'');',
'ELSE ',
':P234_DESCUENTO := TO_CHAR(:P234_DESCUENTO , ''999G999G999G999G990D00'');',
':P234_RECARGO_AUX  := TO_CHAR(:P234_RECARGO_AUX , ''999G999G999G999G990D00'');',
':P234_TOTAL_CANTIDAD := TO_CHAR(:P234_TOTAL_CANTIDAD , ''999G999G999G999G990D00'');',
':P234_TOTAL_PESO := TO_CHAR(:P234_TOTAL_PESO , ''999G999G999G999G990D00'');',
'END  IF;',
':P234_DET_COMENTARIO := (f_mensaje_pedido(:P234_COD_CLIENTE,',
'                                            :P234_COD_CONDICION_VENTA,',
'                                            :P234_COD_LISTA_PRECIO,',
'                                            1,',
'                                            v_cod_articulo, ',
'                                            0));',
'IF :P234_NRO_PROMO IS NOT NULL THEN ',
'    :P234_ARTICULO_PAR := v_cod_articulo;',
'END IF;',
'',
'',
'',
'inv.vtpedido.pr_ped_pend(p_det_stock_actual => :P234_STOCK_ACTUAL,',
'                           p_var_cod_empresa  => ''1'',',
'                           p_det_cod_articulo => v_cod_articulo,',
'                           p_det_stock_reserv => :P234_STOCK_RESERV);',
'END;'))
,p_attribute_02=>'P234_SECUENCIA,P234_COD_CLIENTE,P234_COD_CONDICION_VENTA,P234_COD_LISTA_PRECIO,P234_STOCK_ACTUAL,P234_STOCK_RESERV,P234_COD_MONEDA'
,p_attribute_03=>'P234_DESCUENTO,P234_RECARGO,P234_NRO_PROMO,P234_ES_PROMO,P234_DET_COMENTARIO,P234_ARTICULO_PAR,P234_TOTAL_PESO,P234_TOTAL_CANTIDAD,P234_STOCK_ACTUAL,P234_STOCK_RESERV,P234_RECARGO_AUX'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(68886338578126448)
,p_event_id=>wwv_flow_imp.id(68886196478126446)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P234_SECUENCIA'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(68886560280126450)
,p_name=>'Agrega botones'
,p_event_sequence=>390
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(72003695795704101)
,p_event_id=>wwv_flow_imp.id(68886560280126450)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'PLUGIN_COM.FOS.INTERACTIVE_GRID_ADD_BUTTON'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(55011281939330147)
,p_attribute_01=>'toolbar-actions4'
,p_attribute_02=>'first'
,p_attribute_05=>'Agregar'
,p_attribute_06=>'fa-plus'
,p_attribute_09=>'execute-javascript-code'
,p_attribute_11=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var cliente =  $v("P234_COD_CLIENTE");',
'var lista_precio = $v("P234_COD_LISTA_PRECIO"); ',
'var cod_sucursal_dist = $v("P234_COD_LISTA_PRECIO"); ',
'',
'if (cliente === null  || cliente ===  "") {',
'    apex.item("P0_MENSAJE_VALIDACION").setValue(''Debe seleccionar el Cliente'');',
'}else {',
'    if (lista_precio === null  || lista_precio ===  "") {',
'        apex.item("P0_MENSAJE_VALIDACION").setValue(''Debe seleccionar la lista de Precio'');',
'    }else {',
'        javascript:openModal(''detalle_principal'');',
'        document.getElementById(''btn_agregar'').style.visibility = ''visible'';',
'        document.getElementById(''btn_editar'').style.visibility = ''hidden'';',
'    }',
'}',
'',
'',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(101873265317708136)
,p_event_id=>wwv_flow_imp.id(68886560280126450)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'PLUGIN_COM.FOS.INTERACTIVE_GRID_ADD_BUTTON'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(101870010215708104)
,p_attribute_01=>'toolbar-actions4'
,p_attribute_02=>'first'
,p_attribute_05=>'Cargar Detalle'
,p_attribute_06=>'fa-plus'
,p_attribute_09=>'execute-javascript-code'
,p_attribute_11=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var fecha_entrega = $v("P234_FECHA_ENTREGA"); ',
'var sucursal_dist = $v("P234_COD_SUCURSAL_DIST"); ',
'var cod_cliente = $v("P234_COD_CLIENTE"); ',
' apex.server.process(',
' ''DETALLE_ENTREGA'', ',
' { x01: fecha_entrega,',
'   x02: sucursal_dist,',
'   x03: cod_cliente}, ',
' {',
' success: function (pData) { ',
'    var region =  apex.region("det_entregas"); ',
'     region.refresh(); ',
'     apex.item("P234_TOTAL_ENTREGA").setValue(pData.p_cantidad);',
' }, ',
' });',
'',
'',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(99779225206177743)
,p_event_id=>wwv_flow_imp.id(68886560280126450)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.region("det_entregas").widget().interactiveGrid("getActions").disable("selection-add-row");',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(72004098856704105)
,p_name=>'Elimina registros de la grilla'
,p_event_sequence=>400
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'.delete-irrow'
,p_bind_type=>'live'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(72004120220704106)
,p_event_id=>wwv_flow_imp.id(72004098856704105)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P234_ELIMINAR'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'$(this.triggeringElement).parent().data(''id_1'')'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(72004391873704108)
,p_event_id=>wwv_flow_imp.id(72004098856704105)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_collection.update_member_attribute(p_collection_name=> ',
'                        ''TMP_VTPEDIDO'',',
'                         p_seq => :P234_ELIMINAR,',
'                         p_attr_number => ''4'',',
'                         p_attr_value=>''D'');',
''))
,p_attribute_02=>'P234_ELIMINAR'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(72004486270704109)
,p_event_id=>wwv_flow_imp.id(72004098856704105)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(55011281939330147)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(72004506488704110)
,p_event_id=>wwv_flow_imp.id(72004098856704105)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN ',
'SELECT    sum(to_number(replace(nvl(c008, 0), ''.'')))   AS monto_total,',
'          sum(to_number(replace(nvl(c009, 0), ''.'')))  AS total_iva',
'INTO :P234_SUBTOTAL, :P234_TOTAL_IVA',
'FROM apex_collections',
'WHERE collection_name = ''TMP_VTPEDIDO''',
'AND c004 <> ''D'';',
'EXCEPTION ',
'    WHEN NO_DATA_FOUND THEN ',
'        :P234_SUBTOTAL := 0;',
'        :P234_TOTAL_IVA := 0;',
'        :P234_DESCUENTO := 0;',
'        :P234_RECARGO_AUX := 0;',
'        :P234_TOTAL_CANTIDAD := 0;',
'        :P234_TOTAL_PESO := 0;',
'    WHEN OTHERS  THEN ',
'        :P234_SUBTOTAL := 0;',
'        :P234_TOTAL_IVA := 0;',
'        :P234_DESCUENTO := 0;',
'        :P234_RECARGO_AUX := 0;',
'        :P234_TOTAL_CANTIDAD := 0;',
'        :P234_TOTAL_PESO := 0;',
'END;',
'',
'',
':P234_TOTAL := TO_CHAR(TO_NUMBER(REPLACE(:P234_SUBTOTAL,''.'')) + TO_NUMBER(REPLACE(:P234_TOTAL_IVA,''.'')), ''999G999G999G999G999G999G990'');',
':P234_SUBTOTAL := TO_CHAR(:P234_SUBTOTAL, ''999G999G999G999G999G999G990'');',
':P234_TOTAL_IVA := TO_CHAR(:P234_TOTAL_IVA, ''999G999G999G999G999G999G990'');',
''))
,p_attribute_02=>'P234_SUBTOTAL,P234_TOTAL'
,p_attribute_03=>'P234_SUBTOTAL,P234_TOTAL_IVA,P234_TOTAL,P234_DESCUENTO,P234_RECARGO_AUX,P234_TOTAL_CANTIDAD,P234_TOTAL_PESO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(72004975633704114)
,p_name=>'Modificar registros de la grilla'
,p_event_sequence=>410
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'.update-irrow'
,p_bind_type=>'live'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(72005048456704115)
,p_event_id=>wwv_flow_imp.id(72004975633704114)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P234_MODIFICACION'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'$(this.triggeringElement).parent().data(''id_1'')'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(72005482012704119)
,p_event_id=>wwv_flow_imp.id(72004975633704114)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT       c005   AS cod_articulo,',
'             c006   AS cantidad,',
'             c008   AS monto_total,',
'             c009   AS total_iva,',
'             c011   AS descuento,',
'             c012   AS precio_unitario,',
'             c013   AS porc_descuento,',
'             c019   AS porc_recargo,',
'             c033   AS desc_articulo,',
'             c026   AS cod_art_corto',
'        into :P234_COD_ARTICULO,',
'             :P234_CANTIDAD,',
'             :P234_MONTO_TOTAL,',
'             :P234_TOTAL_IVA_1,',
'             :P234_DESCUENTO_1,',
'             :P234_PRECIO_UNITARIO,',
'             :P234_PORC_DESCUENTO,',
'             :P234_PORC_RECARGO,',
'             :P234_DESC_ARTICULO,',
'             :P234_COD_ART_CORTO',
'        FROM apex_collections',
'       WHERE collection_name = ''TMP_VTPEDIDO''',
'       and seq_id = :P234_MODIFICACION;'))
,p_attribute_02=>'P234_MODIFICACION'
,p_attribute_03=>'P234_COD_ARTICULO,P234_CANTIDAD,P234_MONTO_TOTAL,P234_TOTAL_IVA_1,P234_DESCUENTO_1,P234_PRECIO_UNITARIO,P234_PORC_DESCUENTO,P234_PORC_RECARGO,P234_DESC_ARTICULO,P234_COD_ART_CORTO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(72005225365704117)
,p_event_id=>wwv_flow_imp.id(72004975633704114)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(55011281939330147)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(72005393260704118)
,p_event_id=>wwv_flow_imp.id(72004975633704114)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT    sum(to_number(replace(nvl(c008, 0), ''.'')))   AS monto_total,',
'          sum(to_number(replace(nvl(c009, 0), ''.'')))  AS total_iva',
'INTO :P234_SUBTOTAL, :P234_TOTAL_IVA',
'FROM apex_collections',
'WHERE collection_name = ''TMP_VTPEDIDO'';',
'',
'',
':P234_TOTAL := TO_CHAR(TO_NUMBER(REPLACE(:P234_SUBTOTAL,''.'')) + TO_NUMBER(REPLACE(:P234_TOTAL_IVA,''.'')), ''999G999G999G999G999G999G990'');',
':P234_SUBTOTAL := TO_CHAR(:P234_SUBTOTAL, ''999G999G999G999G999G999G990'');',
':P234_TOTAL_IVA := TO_CHAR(:P234_TOTAL_IVA, ''999G999G999G999G999G999G990'');'))
,p_attribute_02=>'P234_SUBTOTAL,P234_TOTAL'
,p_attribute_03=>'P234_SUBTOTAL,P234_TOTAL_IVA,P234_TOTAL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(72005595096704120)
,p_event_id=>wwv_flow_imp.id(72004975633704114)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'javascript:openModal(''detalle_principal'');',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(77479794519133413)
,p_name=>'Calcula totalizadores'
,p_event_sequence=>420
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'.ui-dialog-titlebar-close'
,p_bind_type=>'live'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(77480496960133420)
,p_event_id=>wwv_flow_imp.id(77479794519133413)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(68098607433978930)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(77480554934133421)
,p_event_id=>wwv_flow_imp.id(77479794519133413)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P234_COD_ART_CORTO,P234_COD_ARTICULO,P234_DESC_ARTICULO,P234_CANTIDAD,P234_PRECIO_UNITARIO,P234_PORC_DESCUENTO,P234_PORC_RECARGO,P234_TOTAL_IVA_1,P234_MONTO_TOTAL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(77480676249133422)
,p_event_id=>wwv_flow_imp.id(77479794519133413)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(55011281939330147)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(77480744435133423)
,p_event_id=>wwv_flow_imp.id(77479794519133413)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'document.getElementById(''P234_COD_ART_CORTO'').readOnly = false;',
'document.getElementById(''P234_COD_ARTICULO'').readOnly = false;',
'document.getElementById(''P234_DESC_ARTICULO'').readOnly = false;'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(77480896030133424)
,p_event_id=>wwv_flow_imp.id(77479794519133413)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT    sum(to_number(replace(nvl(c008, 0), ''.'')))   AS monto_total,',
'          sum(to_number(replace(nvl(c009, 0), ''.'')))  AS total_iva',
'INTO :P234_SUBTOTAL, :P234_TOTAL_IVA',
'FROM apex_collections',
'WHERE collection_name = ''TMP_VTPEDIDO'';',
'',
'',
':P234_TOTAL := TO_CHAR(TO_NUMBER(REPLACE(:P234_SUBTOTAL,''.'')) + TO_NUMBER(REPLACE(:P234_TOTAL_IVA,''.'')), ''999G999G999G999G999G999G990'');',
':P234_SUBTOTAL := TO_CHAR(:P234_SUBTOTAL, ''999G999G999G999G999G999G990'');',
':P234_TOTAL_IVA := TO_CHAR(:P234_TOTAL_IVA, ''999G999G999G999G999G999G990'');'))
,p_attribute_02=>'P234_SUBTOTAL,P234_TOTAL'
,p_attribute_03=>'P234_SUBTOTAL,P234_TOTAL_IVA,P234_TOTAL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(99779186831177742)
,p_event_id=>wwv_flow_imp.id(77479794519133413)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.region("det_entregas").widget().interactiveGrid("getActions").invoke("save");',
'var region =  apex.region("det_entregas"); ',
'region.widget().interactiveGrid("getActions").invoke("save");         ',
'apex.message.setThemeHooks({beforeShow: function(pMsgType, pElement$){                 ',
'    $(''.t-Alert'').fadeOut(0);',
'    }',
'});',
'',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(72008487646704149)
,p_name=>'Imagen de detalle'
,p_event_sequence=>430
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'.imagen-irrow'
,p_bind_type=>'live'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(72008335338704148)
,p_event_id=>wwv_flow_imp.id(72008487646704149)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var ruta = ''https://ngosaeca.com.py/api/files/imagenes/productos/aa-kitcra.jpg'';',
'$("#container").attr(''src'', ruta);',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(77478814830133404)
,p_event_id=>wwv_flow_imp.id(72008487646704149)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'javascript:openModal(''imagen'');',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(72005748998704122)
,p_name=>'Oculta botones'
,p_event_sequence=>440
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P234_MODIFICACION'
,p_condition_element=>'P234_MODIFICACION'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(72006180302704126)
,p_event_id=>wwv_flow_imp.id(72005748998704122)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'document.getElementById(''btn_editar'').style.visibility = ''visible'';',
'document.getElementById(''btn_agregar'').style.visibility = ''hidden'';',
'document.getElementById(''P234_COD_ART_CORTO'').readOnly = true;',
'document.getElementById(''P234_COD_ARTICULO'').readOnly = true;',
'document.getElementById(''P234_DESC_ARTICULO'').readOnly = true;',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(72006291855704127)
,p_name=>'Guarda Datos '
,p_event_sequence=>450
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(72005683670704121)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(72006310018704128)
,p_event_id=>wwv_flow_imp.id(72006291855704127)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P234_TOTAL_IVA := replace(:P234_TOTAL_IVA,''.'');',
':P234_SUBTOTAL := replace(:P234_SUBTOTAL,''.'');',
':P234_TOTAL   := replace(:P234_TOTAL,''.'');',
':P234_PRECIO_UNITARIO  := replace(:P234_PRECIO_UNITARIO,''.'');',
':P234_TOTAL_IVA_1 := replace(:P234_TOTAL_IVA_1,''.'');',
':P234_MONTO_TOTAL := replace(:P234_MONTO_TOTAL,''.'');',
':P234_TOTAL_IVA := TO_CHAR(:P234_TOTAL_IVA,''999G999G999G999G999G999G990'');',
':P234_SUBTOTAL := TO_CHAR(:P234_SUBTOTAL,''999G999G999G999G999G999G990'');',
':P234_TOTAL   := TO_CHAR(:P234_TOTAL,''999G999G999G999G999G999G990'');',
':P234_PRECIO_UNITARIO  := TO_CHAR(:P234_PRECIO_UNITARIO,''999G999G999G999G999G999G990'');',
':P234_TOTAL_IVA_1 := TO_CHAR(:P234_TOTAL_IVA_1,''999G999G999G999G999G999G990'');',
':P234_MONTO_TOTAL := TO_CHAR(:P234_MONTO_TOTAL,''999G999G999G999G999G999G990'');',
'BEGIN ',
'apex_collection.update_member_attribute(p_collection_name=> ',
'                        ''TMP_VTPEDIDO'',',
'                         p_seq => :P234_MODIFICACION,',
'                         p_attr_number => ''4'',',
'                         p_attr_value=>''U'');',
'',
'apex_collection.update_member_attribute(p_collection_name=> ',
'                        ''TMP_VTPEDIDO'',',
'                         p_seq => :P234_MODIFICACION,',
'                         p_attr_number => ''5'',',
'                         p_attr_value=>:P234_COD_ARTICULO);',
'',
'apex_collection.update_member_attribute(p_collection_name=> ',
'                        ''TMP_VTPEDIDO'',',
'                         p_seq => :P234_MODIFICACION,',
'                         p_attr_number => ''6'',',
'                         p_attr_value=>:P234_CANTIDAD);',
'',
'apex_collection.update_member_attribute(p_collection_name=> ',
'                        ''TMP_VTPEDIDO'',',
'                         p_seq => :P234_MODIFICACION,',
'                         p_attr_number => ''8'',',
'                         p_attr_value => :P234_MONTO_TOTAL);',
'',
'apex_collection.update_member_attribute(p_collection_name=> ',
'                        ''TMP_VTPEDIDO'',',
'                         p_seq => :P234_MODIFICACION,',
'                         p_attr_number => ''9'',',
'                         p_attr_value => :P234_TOTAL_IVA_1);',
'',
'apex_collection.update_member_attribute(p_collection_name=> ',
'                        ''TMP_VTPEDIDO'',',
'                         p_seq => :P234_MODIFICACION,',
'                         p_attr_number => ''11'',',
'                         p_attr_value => :P234_DESCUENTO_1);',
'',
'apex_collection.update_member_attribute(p_collection_name=> ',
'                        ''TMP_VTPEDIDO'',',
'                         p_seq => :P234_MODIFICACION,',
'                         p_attr_number => ''12'',',
'                         p_attr_value => :P234_PRECIO_UNITARIO);',
'',
'apex_collection.update_member_attribute(p_collection_name=> ',
'                        ''TMP_VTPEDIDO'',',
'                         p_seq => :P234_MODIFICACION,',
'                         p_attr_number => ''13'',',
'                         p_attr_value => :P234_PORC_DESCUENTO);',
'',
'apex_collection.update_member_attribute(p_collection_name=> ',
'                        ''TMP_VTPEDIDO'',',
'                         p_seq => :P234_MODIFICACION,',
'                         p_attr_number => ''19'',',
'                         p_attr_value => :P234_PORC_RECARGO);',
'',
'apex_collection.update_member_attribute(p_collection_name=> ',
'                        ''TMP_VTPEDIDO'',',
'                         p_seq => :P234_MODIFICACION,',
'                         p_attr_number => ''33'',',
'                         p_attr_value => :P234_DESC_ARTICULO);',
'',
'',
'apex_collection.update_member_attribute(p_collection_name=> ',
'                        ''TMP_VTPEDIDO'',',
'                         p_seq => :P234_MODIFICACION,',
'                         p_attr_number => ''26'',',
'                         p_attr_value => :P234_COD_ART_CORTO);',
'',
'apex_collection.update_member_attribute(p_collection_name=> ',
'                        ''TMP_VTPEDIDO'',',
'                         p_seq => :P234_MODIFICACION,',
'                         p_attr_number => ''20'',',
'                         p_attr_value => :P234_RECARGO_AUX);',
'END;',
''))
,p_attribute_02=>'P234_MODIFICACION,P234_COD_ARTICULO,P234_CANTIDAD,P234_MONTO_TOTAL,P234_TOTAL_IVA_1,P234_DESCUENTO_1,P234_PRECIO_UNITARIO,P234_PORC_DESCUENTO,P234_PORC_RECARGO,P234_DESC_ARTICULO,P234_COD_ART_CORTO,P234_RECARGO_1,P234_RECARGO_AUX'
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
 p_id=>wwv_flow_imp.id(72006564469704130)
,p_event_id=>wwv_flow_imp.id(72006291855704127)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(68098607433978930)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(72006641744704131)
,p_event_id=>wwv_flow_imp.id(72006291855704127)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(55011281939330147)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(72006710258704132)
,p_event_id=>wwv_flow_imp.id(72006291855704127)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P234_COD_ART_CORTO,P234_COD_ARTICULO,P234_DESC_ARTICULO,P234_CANTIDAD,P234_PRECIO_UNITARIO,P234_PORC_DESCUENTO,P234_PORC_RECARGO,P234_TOTAL_IVA_1,P234_MONTO_TOTAL,P234_RECARGO_1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(72007852348704143)
,p_event_id=>wwv_flow_imp.id(72006291855704127)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'document.getElementById(''P234_COD_ART_CORTO'').readOnly = false;',
'document.getElementById(''P234_COD_ARTICULO'').readOnly = false;',
'document.getElementById(''P234_DESC_ARTICULO'').readOnly = false;'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(72006892354704133)
,p_event_id=>wwv_flow_imp.id(72006291855704127)
,p_event_result=>'TRUE'
,p_action_sequence=>90
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT    sum(to_number(replace(nvl(c008, 0), ''.'')))   AS monto_total,',
'          sum(to_number(replace(nvl(c009, 0), ''.'')))  AS total_iva',
'INTO :P234_SUBTOTAL, :P234_TOTAL_IVA',
'FROM apex_collections',
'WHERE collection_name = ''TMP_VTPEDIDO'';',
'',
'',
':P234_TOTAL := TO_CHAR(TO_NUMBER(REPLACE(:P234_SUBTOTAL,''.'')) + TO_NUMBER(REPLACE(:P234_TOTAL_IVA,''.'')), ''999G999G999G999G999G999G990'');',
':P234_SUBTOTAL := TO_CHAR(:P234_SUBTOTAL, ''999G999G999G999G999G999G990'');',
':P234_TOTAL_IVA := TO_CHAR(:P234_TOTAL_IVA, ''999G999G999G999G999G999G990'');'))
,p_attribute_02=>'P234_SUBTOTAL,P234_TOTAL'
,p_attribute_03=>'P234_SUBTOTAL,P234_TOTAL_IVA,P234_TOTAL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(77478966834133405)
,p_name=>unistr('Validaci\00F3n detalle')
,p_event_sequence=>460
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(68884038382126425)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(77479097737133406)
,p_event_id=>wwv_flow_imp.id(77478966834133405)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P234_COD_ART_CORTO IS NULL AND :P234_COD_ARTICULO IS NULL THEN ',
unistr('    :P0_MENSAJE_VALIDACION := ''Debe ingresar el Art\00EDculo'';'),
'    :P234_CARGA_DETALLE := 0;',
'ELSE ',
'    if :P234_CANTIDAD is null or :P234_CANTIDAD = 0 then ',
'        raise_application_error(-20001, ''Debe ingresar la cantidad'');',
'    end if;',
'',
'    if :P234_COD_ARTICULO is null then ',
'        raise_application_error(-20001, ''Debe selecconar el articulo'');',
'    end if;',
'',
'    if to_number(replace(:P234_PRECIO_UNITARIO, ''.'')) is null or to_number(replace(:P234_PRECIO_UNITARIO, ''.'')) = 0 then ',
'        raise_application_error(-20001, ''Debe ingresar el precio unitario'');',
'    end if;',
'',
'    if to_number(replace(:P234_MONTO_TOTAL, ''.'')) is null /*or to_number(replace(:P234_MONTO_TOTAL, ''.'')) = 0 */then ',
'        raise_application_error(-20001, ''Debe ingresar monto total'');',
'    end if;',
'',
'',
'',
'',
'    ',
'    IF :P234_CANTIDAD IS NULL THEN ',
'      -- :P0_MENSAJE_VALIDACION := ''Debe ingresar la Cantidad'';',
'       -- :P234_CARGA_DETALLE := 0;',
'       :P234_CARGA_DETALLE := 1;',
'    ELSE ',
'        IF :P234_PRECIO_UNITARIO IS NULL THEN ',
'             :P0_MENSAJE_VALIDACION := ''Debe ingresar el Precio Unitario'';',
'             :P234_CARGA_DETALLE := 0;',
'        ELSE ',
'            :P234_CARGA_DETALLE := 1;',
'        END IF;',
'    END IF;',
'END IF;'))
,p_attribute_02=>'P234_COD_ART_CORTO,P234_COD_ARTICULO,P234_CANTIDAD,P234_PRECIO_UNITARIO'
,p_attribute_03=>'P0_MENSAJE_VALIDACION,P234_CARGA_DETALLE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(77481150043133427)
,p_name=>'Verifica permiso '
,p_event_sequence=>470
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(77481259273133428)
,p_event_id=>wwv_flow_imp.id(77481150043133427)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var cod_empresa = apex.item("P234_COD_EMPRESA").getValue();',
'var cod_forma  = ''VTPEDIDO'';',
'var usuario = ''&APP_USER.'';',
'',
' apex.server.process(',
' ''VALIDACION_PERMISOS'', ',
' { x01: cod_empresa,',
'   x02: cod_forma,',
'   x03: usuario}, ',
' {',
' success: function (pData) { ',
'     if (pData.p_mantiene_precio === "N") {',
'         document.getElementById(''P234_PRECIO_UNITARIO'').readOnly = true;',
'     }  ',
'     if (pData.p_carga_sucursal === "N") {',
'         $(''#P234_COD_SUCURSAL'').css(''pointer-events'',''none'');',
'',
'     }',
'     apex.item("P234_PUEDE_DESANULAR_PEDIDO").setValue(pData.p_puede_desanular_pedido);',
'     apex.item("P234_CARGA_FECHA").setValue(pData.p_carga_fecha);',
'     apex.item("P234_INSTALACION").setValue(pData.p_instalacion);',
'     apex.item("P234_DESCUENTO_30").setValue(pData.p_descuento_30);',
'     apex.item("P234_DESCUENTO_304").setValue(pData.p_descuento_304);',
'     apex.item("P234_CARGA_DESCUENTOS").setValue(pData.p_carga_descuentos);',
'     apex.item("P234_CARGA_COTIZACION").setValue(pData.p_carga_cotizacion);',
'     apex.item("P234_SUPERA_DESCUENTO").setValue(pData.p_supera_descuento);',
'     apex.item("P234_VER_MARGEN").setValue(pData.p_ver_margen);',
'    ',
' }, ',
' });',
'document.getElementById(''P234_NRO_COMPROBANTE'').readOnly = true;',
' '))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(81181828820178622)
,p_event_id=>wwv_flow_imp.id(77481150043133427)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($(''body'').hasClass(''js-navExpanded'')',
'){',
'$(''#t_Button_navControl'').click();',
'};',
'',
'$(''#P234_AUTORIZADO'').css(''pointer-events'',''none'');',
'$(''#P234_DERIVADO'').css(''pointer-events'',''none'');',
'document.getElementById(''P234_RUC'').readOnly = true;',
'document.getElementById(''P234_DIR_CLIENTE'').readOnly = true;',
'document.getElementById(''P234_TEL_CLIENTE'').readOnly = true;',
'document.getElementById(''P234_TELEFONO_DIST'').readOnly = true;',
'',
'',
'',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(81181160052178615)
,p_name=>'Refresca detalles'
,p_event_sequence=>480
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(81181523268178619)
,p_event_id=>wwv_flow_imp.id(81181160052178615)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(55011281939330147)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(94561821108213446)
,p_event_id=>wwv_flow_imp.id(81181160052178615)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'SELECT d.cod_direccion cod_dir',
'into  :P234_COD_DIRECCION',
'          FROM cc_clientes    c,',
'               personas       p,',
'               cc_causales    b,',
'               direc_personas d,',
'               telef_personas t,',
'               ident_personas i,',
'               ciudades       ci',
'         WHERE c.cod_empresa = ''1''',
'           AND c.cod_cliente = :P234_COD_CLIENTE',
'           AND c.cod_persona = p.cod_persona',
'           AND c.cod_causal = b.cod_causal(+)',
'              --',
'           AND c.cod_persona = d.cod_persona(+)',
'           AND nvl(d.por_defecto(+), ''N'') = ''S''',
'              --',
'           AND c.cod_persona = t.cod_persona(+)',
'           AND nvl(t.por_defecto(+), ''N'') = ''S''',
'              --',
'           AND c.cod_persona = i.cod_persona(+)',
'           AND nvl(i.cod_ident(+), ''X'') = ''RUC''',
'              --',
'           AND ci.cod_pais(+) = d.cod_pais',
'           AND ci.cod_provincia(+) = d.cod_provincia',
'           AND ci.cod_ciudad(+) = d.cod_ciudad',
'           AND rownum = 1;',
'exception ',
'    when no_data_found then ',
'        :P234_COD_DIRECCION := null;',
'    when others then ',
'        :P234_COD_DIRECCION := null;',
'END;',
'',
':P234_COD_CLIENTE_AUX := :P234_COD_CLIENTE;',
'',
'BEGIN',
'SELECT A.COD_LISTA_PRECIO ',
'INTO :P234_COD_LISTA_PRECIO',
'FROM  VT_PEDIDOS_CABECERA A',
'WHERE A.NRO_COMPROBANTE = :P234_NRO_COMPROBANTE',
'and A.ser_COMPROBANTE = :P234_ser_COMPROBANTE',
'AND COD_EMPRESA = ''1'';',
'exception ',
'    when no_data_found then ',
'        :P234_COD_LISTA_PRECIO := null;',
'    when others then ',
'        :P234_COD_LISTA_PRECIO := null;',
'END;'))
,p_attribute_02=>'P234_COD_SUCURSAL_DIST,P234_COD_CLIENTE,P234_NRO_COMPROBANTE,P234_SER_COMPROBANTE'
,p_attribute_03=>'P234_COD_CLIENTE_AUX,P234_COD_LISTA_PRECIO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(81181957464178623)
,p_name=>'Abre Croquis'
,p_event_sequence=>490
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(156805228915017224)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(81182030927178624)
,p_event_id=>wwv_flow_imp.id(81181957464178623)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'javascript:openModal(''croquis'');'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(156805551239017227)
,p_event_id=>wwv_flow_imp.id(81181957464178623)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(77482209694133438)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(81182299159178626)
,p_name=>unistr('Cierra regi\00F3n croquis')
,p_event_sequence=>500
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(81182145620178625)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(81182301788178627)
,p_event_id=>wwv_flow_imp.id(81182299159178626)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(77482209694133438)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(81184534104178649)
,p_name=>'Geo localizador en maps'
,p_event_sequence=>510
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(81184297273178646)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(83734529750791518)
,p_event_id=>wwv_flow_imp.id(81184534104178649)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'PLUGIN_COM.JK64.REPORT_GOOGLE_MAP_DA_R1'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(81182823937178632)
,p_attribute_01=>'geolocate'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(85579935394170118)
,p_event_id=>wwv_flow_imp.id(81184534104178649)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(81182759164178631)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(83733054658791503)
,p_name=>'Buscador de ubicaciones'
,p_event_sequence=>520
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(81182823937178632)
,p_bind_type=>'bind'
,p_bind_event_type=>'PLUGIN_COM.JK64.REPORT_GOOGLE_MAP_R1|REGION TYPE|addressfound'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(83733109096791504)
,p_event_id=>wwv_flow_imp.id(83733054658791503)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'PLUGIN_COM.JK64.REPORT_GOOGLE_MAP_DA_R1'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(81182823937178632)
,p_attribute_01=>'panTo'
,p_attribute_02=>'javascriptExpression'
,p_attribute_06=>'this.data.lat + " " + this.data.lng'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(83733293910791505)
,p_event_id=>wwv_flow_imp.id(83733054658791503)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'PLUGIN_COM.JK64.REPORT_GOOGLE_MAP_DA_R1'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(81182823937178632)
,p_attribute_01=>'setOption'
,p_attribute_02=>'static'
,p_attribute_05=>'17'
,p_attribute_07=>'zoom'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(83733370545791506)
,p_event_id=>wwv_flow_imp.id(83733054658791503)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P234_ADDRESS'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'this.data.result.formatted_address'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(83733451144791507)
,p_event_id=>wwv_flow_imp.id(83733054658791503)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P234_LATLNG,P234_DSP_LAT_LNG'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'this.data.lat + " " + this.data.lng'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(85579452171170113)
,p_event_id=>wwv_flow_imp.id(83733054658791503)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P234_LONGITUD_1'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'this.data.lng'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(85579322419170112)
,p_event_id=>wwv_flow_imp.id(83733054658791503)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P234_LATITUD_1'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'this.data.lat'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(83733761122791510)
,p_name=>'Clic a maps'
,p_event_sequence=>530
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(81182823937178632)
,p_bind_type=>'bind'
,p_bind_event_type=>'PLUGIN_COM.JK64.REPORT_GOOGLE_MAP_R1|REGION TYPE|mapclick'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(83733802893791511)
,p_event_id=>wwv_flow_imp.id(83733761122791510)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'PLUGIN_COM.JK64.REPORT_GOOGLE_MAP_DA_R1'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(81182823937178632)
,p_attribute_01=>'gotoPosByString'
,p_attribute_02=>'javascriptExpression'
,p_attribute_06=>'{"lat":this.data.lat,"lng":this.data.lng}'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(83733958417791512)
,p_event_id=>wwv_flow_imp.id(83733761122791510)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'PLUGIN_COM.JK64.REPORT_GOOGLE_MAP_DA_R1'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(81182823937178632)
,p_attribute_01=>'getAddressByPos'
,p_attribute_02=>'javascriptExpression'
,p_attribute_06=>'{"lat":this.data.lat,"lng":this.data.lng}'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(83734082522791513)
,p_name=>'Marcador de maps'
,p_event_sequence=>540
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(81182823937178632)
,p_bind_type=>'bind'
,p_bind_event_type=>'PLUGIN_COM.JK64.REPORT_GOOGLE_MAP_R1|REGION TYPE|markerdrag'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(83734103895791514)
,p_event_id=>wwv_flow_imp.id(83734082522791513)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'PLUGIN_COM.JK64.REPORT_GOOGLE_MAP_DA_R1'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(81182823937178632)
,p_attribute_01=>'getAddressByPos'
,p_attribute_02=>'javascriptExpression'
,p_attribute_06=>'{"lat":this.data.lat,"lng":this.data.lng}'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(83734284865791515)
,p_name=>'Agrega maps'
,p_event_sequence=>550
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P234_SEARCH'
,p_condition_element=>'P234_SEARCH'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(83734316282791516)
,p_event_id=>wwv_flow_imp.id(83734284865791515)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'PLUGIN_COM.JK64.REPORT_GOOGLE_MAP_DA_R1'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(81182823937178632)
,p_attribute_01=>'gotoAddress'
,p_attribute_02=>'triggeringElement'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(83735425803791527)
,p_name=>'Llamador comentarios'
,p_event_sequence=>560
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(78071385688103112)
,p_condition_element=>'P234_NRO_COMPROBANTE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(83735589625791528)
,p_event_id=>wwv_flow_imp.id(83735425803791527)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'inv.vtpedido.pr_busca_llamadas( p_cod_empresa     => :P234_COD_EMPRESA,',
'                                p_tip_comprobante => :P234_TIP_COMPROBANTE,',
'                                p_ser_comprobante => :P234_SER_COMPROBANTE,',
'                                p_nro_comprobante => :P234_NRO_COMPROBANTE);'))
,p_attribute_02=>'P234_COD_EMPRESA,P234_TIP_COMPROBANTE,P234_SER_COMPROBANTE,P234_NRO_COMPROBANTE'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(83735724678791530)
,p_event_id=>wwv_flow_imp.id(83735425803791527)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'javascript:openModal(''B_AUTVEN'');',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(83735980881791532)
,p_event_id=>wwv_flow_imp.id(83735425803791527)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(83735089291791523)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(83736915827791542)
,p_name=>'Copia Presupuesta'
,p_event_sequence=>570
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(78071510911103114)
,p_condition_element=>'P234_OPERACION'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'AGREGAR'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(94559286787213420)
,p_event_id=>wwv_flow_imp.id(83736915827791542)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P234_TEXTO := ''Seleccione un presupuesto, guardado',
'para copiarlo al pedido actual.'';'))
,p_attribute_03=>'P234_TEXTO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(94561458157213442)
,p_event_id=>wwv_flow_imp.id(83736915827791542)
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
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(83737129594791544)
,p_event_id=>wwv_flow_imp.id(83736915827791542)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P234_TIP_COMPROBANTE_COPA:=''A'';',
':P234_SER_PRESUPUESTO_COPIA:=''A'';'))
,p_attribute_03=>'P234_TIP_COMPROBANTE_COPA,P234_SER_PRESUPUESTO_COPIA'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(94560038779213428)
,p_event_id=>wwv_flow_imp.id(83736915827791542)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(83737293026791545)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(94560188838213429)
,p_event_id=>wwv_flow_imp.id(83736915827791542)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(94559476849213422)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(83737092339791543)
,p_event_id=>wwv_flow_imp.id(83736915827791542)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'javascript:openModal(''copia_presupuesto'');',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(94558940469213417)
,p_name=>'Replicar presupuestos'
,p_event_sequence=>580
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(78071084229103109)
,p_condition_element=>'P234_COD_CLIENTE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(94561334850213441)
,p_event_id=>wwv_flow_imp.id(94558940469213417)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'PLUGIN_COM.FOS.NOTIFICATIONS'
,p_attribute_01=>'warning'
,p_attribute_02=>'static'
,p_attribute_03=>unistr('Atenci\00F3n')
,p_attribute_04=>'Para realizar la copia del Pedido debe editar un Pedido existente'
,p_attribute_07=>'autodismiss:prevent-duplicates:remove-notifications:escape-html:newest-on-top:client-side-substitutions:dismiss-on-click:dismiss-on-button'
,p_attribute_08=>'top-right'
,p_attribute_09=>'Y'
,p_attribute_11=>'5'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(94560266648213430)
,p_event_id=>wwv_flow_imp.id(94558940469213417)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var htmldb_delete_messag_agregar =''Desea realizar una copia del Pedido actual? '';',
'        apex.message.confirm(htmldb_delete_messag_agregar, function( okPressed ) { ',
'        if( okPressed ) {',
'                apex.item("P234_OPERACION").setValue("AGREGAR");',
'                apex.item("P234_NRO_COMPROBANTE").setValue(null);',
'                $(document).ready(function(){',
'                $(''#CREATE'').trigger(''click'');',
'                });',
'            } else {',
'                null;',
'            }',
'        });'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(83737456817791547)
,p_name=>'Copia de presupuesto'
,p_event_sequence=>590
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(83737293026791545)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(83737553469791548)
,p_event_id=>wwv_flow_imp.id(83737456817791547)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'inv.vtpedido.pr_verifica_presupuesto(p_nro_presupuesto_copia   => :P234_NRO_PRESUPUESTO_COPIA,',
'            p_cab_tip_comprobante_ref  => :P234_TIP_COMPROBANTE_REF,',
'            p_cab_cod_empresa          => :P234_COD_EMPRESA,',
'            p_ser_presupuesto_copia    => :P234_SER_PRESUPUESTO_COPIA,',
'            p_mensaje_error            => :P0_MENSAJE_VALIDACION,',
'            p_cab_ser_comprobante_ref  => :P234_SER_COMPROBANTE_REF,',
'            p_tip_comprobante_copa     => :P234_TIP_COMPROBANTE_COPA,',
'            p_cab_cod_cliente          => :P234_COD_CLIENTE,',
'            p_cab_cod_condicion_venta  => :P234_COD_CONDICION_VENTA,',
'            p_cab_cod_moneda           => :P234_COD_MONEDA,',
'            p_cab_tip_cambio           => :P234_TIP_CAMBIO,',
'            p_cab_cod_articulo         => :P234_COD_ARTICULO,',
'            p_var_copiando             => :P234_COPIANDO,',
'            p_cab_cod_sucursal         => :P234_COD_SUCURSAL,',
'            p_cab_fec_comprobante      => :P234_FEC_COMPROBANTE,',
'            p_cab_nom_cliente          => :P234_NOM_CLIENTE,',
'            p_cab_desc_condicion       => :P234_DESC_CONDICION,',
'            p_cab_desc_moneda          => :P234_DESC_MONEDA,',
'            p_cab_decimales            => :P234_DECIMALES,',
'            p_cab_cod_lista_precio     => :P234_PRECIO_LISTA,',
'            p_cab_cod_direccion        => :P234_COD_DIRECCION,',
'            p_cab_dir_cliente          => :P234_DIR_CLIENTE,',
'            p_cab_tel_cliente          => :P234_TEL_CLIENTE,',
'            p_cab_ruc                  => :P234_RUC,',
'            p_cab_cod_vendedor         => :P234_COD_VENDEDOR,',
'            p_cab_nro_comprobante_ref  => :P234_NRO_COMPROBANTE_REF,',
'            p_cop_ser_presupuesto      => :P234_SER_PRESUPUESTO_COPIA,',
'            p_cop_nro_presupuesto      => :P234_NRO_PRESUPUESTO_COPIA,',
'            p_cop_tip_comprobante      => :P234_TIP_COMPROBANTE_COPA,',
'            p_cab_recargo              => :P234_RECARGO,',
'            p_var_mult                 => :P234_VAR_MULT,',
'            p_var_div                  => :P234_VAR_DIV,',
'            p_cab_iva_parcial          => :P234_IVA_PARCIAL,',
'            p_cab_subtotal_parcial     => :P234_SUBTOTAL_PARCIAL,',
'            p_cab_gravadas_parcial     => :P234_GRAVADAS_PARCIAL,',
'            p_cab_exentas_parcial      => :P234_EXENTAS_PARCIAL,',
'            p_cab_porcentaje_descuento => :P234_PORCENTAJE_DESCUENTO,',
'            p_cab_descuento            => :P234_DESCUENTO,',
'            p_cab_total_iva            => :P234_TOTAL_IVA,',
'            p_cab_subtotal             => :P234_SUBTOTAL,',
'            p_cab_gravadas             => :P234_GRAVADAS,',
'            p_cab_exentas              => :P234_EXENTAS,',
'            p_cab_total                => :P234_TOTAL,',
'            p_cab_recargo_porc         => :P234_RECARGO_PORC,',
'            p_cab_flete                => :P234_COD_FLETE,',
'            p_cab_flete_total          => :P234_FLETE_TOTAL,',
'            p_var_porc_recargo_ant     => :P234_PORC_RECARGO_ANT,',
'            p_cab_ser_comprobante      => :P234_SER_COMPROBANTE,',
'            p_cab_tip_comprobante      => :P234_TIP_COMPROBANTE,',
'            p_cab_nro_comprobante      => :P234_NRO_COMPROBANTE,',
'            p_cab_desc_precios        =>  :P234_DESC_PRECIOS);',
''))
,p_attribute_02=>'P234_NRO_PRESUPUESTO_COPIA,P234_TIP_COMPROBANTE_REF,P234_COD_EMPRESA,P234_SER_PRESUPUESTO_COPIA,P234_SER_COMPROBANTE_REF, P234_TIP_COMPROBANTE_COPA,P234_COD_CLIENTE,P234_COD_CONDICION_VENTA,P234_COD_MONEDA,P234_TIP_CAMBIO,P234_COD_ARTICULO, P234_SER_'
||'PRESUPUESTO_COPIA,P234_NRO_PRESUPUESTO_COPIA,P234_TIP_COMPROBANTE_COPA,P234_RECARGO,P234_VAR_MULT, P234_VAR_DIV,P234_IVA_PARCIAL,P234_SUBTOTAL_PARCIAL,P234_GRAVADAS_PARCIAL,P234_EXENTAS_PARCIAL,P234_PORCENTAJE_DESCUENTO, P234_DESCUENTO,P234_TOTAL_IVA'
||',P234_SUBTOTAL,P234_GRAVADAS,P234_EXENTAS,P234_TOTAL,P234_RECARGO_PORC,P234_COD_FLETE, P234_FLETE_TOTAL,P234_PORC_RECARGO_ANT,P234_SER_COMPROBANTE,P234_TIP_COMPROBANTE,P234_NRO_COMPROBANTE'
,p_attribute_03=>'P234_TIP_COMPROBANTE_REF,P0_MENSAJE_VALIDACION,P234_SER_COMPROBANTE_REF,P234_COD_CLIENTE,P234_COD_CONDICION_VENTA, P234_COD_MONEDA,P234_TIP_CAMBIO,P234_COPIANDO,P234_COD_SUCURSAL,P234_FEC_COMPROBANTE,P234_NOM_CLIENTE,P234_DESC_CONDICION, P234_DESC_MO'
||'NEDA,P234_DECIMALES,P234_PRECIO_LISTA,P234_COD_DIRECCION,P234_DIR_CLIENTE,P234_TEL_CLIENTE,P234_RUC, P234_COD_VENDEDOR,P234_NRO_COMPROBANTE_REF,P234_RECARGO,P234_VAR_MULT,P234_VAR_DIV,P234_IVA_PARCIAL,P234_SUBTOTAL_PARCIAL, P234_GRAVADAS_PARCIAL,P234'
||'_EXENTAS_PARCIAL,P234_PORCENTAJE_DESCUENTO,P234_DESCUENTO,P234_TOTAL_IVA,P234_SUBTOTAL, P234_GRAVADAS,P234_EXENTAS,P234_TOTAL,P234_RECARGO_PORC,P234_COD_FLETE,P234_FLETE_TOTAL,P234_PORC_RECARGO_ANT, P234_SER_COMPROBANTE,P234_TIP_COMPROBANTE,P234_NRO_'
||'COMPROBANTE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(83737777608791550)
,p_event_id=>wwv_flow_imp.id(83737456817791547)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(55011281939330147)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(94559510876213423)
,p_name=>'Copia de pedidos'
,p_event_sequence=>600
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(94559476849213422)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
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
 p_id=>wwv_flow_imp.id(94559614066213424)
,p_event_id=>wwv_flow_imp.id(94559510876213423)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'inv.vtpedido.pr_verifica_presupuesto(p_nro_presupuesto_copia   => :P234_NRO_PRESUPUESTO_COPIA,',
'            p_cab_tip_comprobante_ref  => :P234_TIP_COMPROBANTE_REF,',
'            p_cab_cod_empresa          => :P234_COD_EMPRESA,',
'            p_ser_presupuesto_copia    => :P234_SER_PRESUPUESTO_COPIA,',
'            p_mensaje_error            => :P0_MENSAJE_VALIDACION,',
'            p_cab_ser_comprobante_ref  => :P234_SER_COMPROBANTE_REF,',
'            p_tip_comprobante_copa     => :P234_TIP_COMPROBANTE_COPA,',
'            p_cab_cod_cliente          => :P234_COD_CLIENTE,',
'            p_cab_cod_condicion_venta  => :P234_COD_CONDICION_VENTA,',
'            p_cab_cod_moneda           => :P234_COD_MONEDA,',
'            p_cab_tip_cambio           => :P234_TIP_CAMBIO,',
'            p_cab_cod_articulo         => :P234_COD_ARTICULO,',
'            p_var_copiando             => :P234_COPIANDO,',
'            p_cab_cod_sucursal         => :P234_COD_SUCURSAL,',
'            p_cab_fec_comprobante      => :P234_FEC_COMPROBANTE,',
'            p_cab_nom_cliente          => :P234_NOM_CLIENTE,',
'            p_cab_desc_condicion       => :P234_DESC_CONDICION,',
'            p_cab_desc_moneda          => :P234_DESC_MONEDA,',
'            p_cab_decimales            => :P234_DECIMALES,',
'            p_cab_cod_lista_precio     => :P234_PRECIO_LISTA,',
'            p_cab_cod_direccion        => :P234_COD_DIRECCION,',
'            p_cab_dir_cliente          => :P234_DIR_CLIENTE,',
'            p_cab_tel_cliente          => :P234_TEL_CLIENTE,',
'            p_cab_ruc                  => :P234_RUC,',
'            p_cab_cod_vendedor         => :P234_COD_VENDEDOR,',
'            p_cab_nro_comprobante_ref  => :P234_NRO_COMPROBANTE_REF,',
'            p_cop_ser_presupuesto      => :P234_SER_PRESUPUESTO_COPIA,',
'            p_cop_nro_presupuesto      => :P234_NRO_PRESUPUESTO_COPIA,',
'            p_cop_tip_comprobante      => :P234_TIP_COMPROBANTE_COPA,',
'            p_cab_recargo              => :P234_RECARGO,',
'            p_var_mult                 => :P234_VAR_MULT,',
'            p_var_div                  => :P234_VAR_DIV,',
'            p_cab_iva_parcial          => :P234_IVA_PARCIAL,',
'            p_cab_subtotal_parcial     => :P234_SUBTOTAL_PARCIAL,',
'            p_cab_gravadas_parcial     => :P234_GRAVADAS_PARCIAL,',
'            p_cab_exentas_parcial      => :P234_EXENTAS_PARCIAL,',
'            p_cab_porcentaje_descuento => :P234_PORCENTAJE_DESCUENTO,',
'            p_cab_descuento            => :P234_DESCUENTO,',
'            p_cab_total_iva            => :P234_TOTAL_IVA,',
'            p_cab_subtotal             => :P234_SUBTOTAL,',
'            p_cab_gravadas             => :P234_GRAVADAS,',
'            p_cab_exentas              => :P234_EXENTAS,',
'            p_cab_total                => :P234_TOTAL,',
'            p_cab_recargo_porc         => :P234_RECARGO_PORC,',
'            p_cab_flete                => :P234_COD_FLETE,',
'            p_cab_flete_total          => :P234_FLETE_TOTAL,',
'            p_var_porc_recargo_ant     => :P234_PORC_RECARGO_ANT,',
'            p_cab_ser_comprobante      => :P234_SER_COMPROBANTE,',
'            p_cab_tip_comprobante      => :P234_TIP_COMPROBANTE,',
'            p_cab_nro_comprobante      => :P234_NRO_COMPROBANTE,',
'            p_cab_desc_precios        =>  :P234_DESC_PRECIOS);',
''))
,p_attribute_02=>'P234_NRO_PRESUPUESTO_COPIA,P234_TIP_COMPROBANTE_REF,P234_COD_EMPRESA,P234_SER_PRESUPUESTO_COPIA,P234_SER_COMPROBANTE_REF, P234_TIP_COMPROBANTE_COPA,P234_COD_CLIENTE,P234_COD_CONDICION_VENTA,P234_COD_MONEDA,P234_TIP_CAMBIO,P234_COD_ARTICULO, P234_SER_'
||'PRESUPUESTO_COPIA,P234_NRO_PRESUPUESTO_COPIA,P234_TIP_COMPROBANTE_COPA,P234_RECARGO,P234_VAR_MULT, P234_VAR_DIV,P234_IVA_PARCIAL,P234_SUBTOTAL_PARCIAL,P234_GRAVADAS_PARCIAL,P234_EXENTAS_PARCIAL,P234_PORCENTAJE_DESCUENTO, P234_DESCUENTO,P234_TOTAL_IVA'
||',P234_SUBTOTAL,P234_GRAVADAS,P234_EXENTAS,P234_TOTAL,P234_RECARGO_PORC,P234_COD_FLETE, P234_FLETE_TOTAL,P234_PORC_RECARGO_ANT,P234_SER_COMPROBANTE,P234_TIP_COMPROBANTE,P234_NRO_COMPROBANTE'
,p_attribute_03=>'P234_TIP_COMPROBANTE_REF,P0_MENSAJE_VALIDACION,P234_SER_COMPROBANTE_REF,P234_COD_CLIENTE,P234_COD_CONDICION_VENTA, P234_COD_MONEDA,P234_TIP_CAMBIO,P234_COPIANDO,P234_COD_SUCURSAL,P234_FEC_COMPROBANTE,P234_NOM_CLIENTE,P234_DESC_CONDICION, P234_DESC_MO'
||'NEDA,P234_DECIMALES,P234_PRECIO_LISTA,P234_COD_DIRECCION,P234_DIR_CLIENTE,P234_TEL_CLIENTE,P234_RUC, P234_COD_VENDEDOR,P234_NRO_COMPROBANTE_REF,P234_RECARGO,P234_VAR_MULT,P234_VAR_DIV,P234_IVA_PARCIAL,P234_SUBTOTAL_PARCIAL, P234_GRAVADAS_PARCIAL,P234'
||'_EXENTAS_PARCIAL,P234_PORCENTAJE_DESCUENTO,P234_DESCUENTO,P234_TOTAL_IVA,P234_SUBTOTAL, P234_GRAVADAS,P234_EXENTAS,P234_TOTAL,P234_RECARGO_PORC,P234_COD_FLETE,P234_FLETE_TOTAL,P234_PORC_RECARGO_ANT, P234_SER_COMPROBANTE,P234_TIP_COMPROBANTE,P234_NRO_'
||'COMPROBANTE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(94559710540213425)
,p_event_id=>wwv_flow_imp.id(94559510876213423)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(55011281939330147)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(85578274893170101)
,p_name=>'Actualiza estado'
,p_event_sequence=>610
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(78071894878103117)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(85578332048170102)
,p_event_id=>wwv_flow_imp.id(85578274893170101)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P0_MENSAJE_VALIDACION := null;',
'IF :P234_PUEDE_ACTUALIZAR_A_REM  =''S'' and NVL(:P234_ENTREGA_REMISION, ''N'') <>  ''S'' THEN 	',
'	:P234_DERECHOS := ''SSSS''; ',
'		BEGIN ',
'			 :P234_ENTREGA_REMISION := ''S''; ',
'		END; ',
'ELSIF  :P234_PUEDE_ACTUALIZAR_A_REM  =''N'' THEN',
'	:P0_MENSAJE_VALIDACION := ''Usted no tiene permisos para actualizar pedido''; ',
'end if; '))
,p_attribute_02=>'P234_PUEDE_ACTUALIZAR_A_REM,P234_ENTREGA_REMISION'
,p_attribute_03=>'P234_DERECHOS,P234_ENTREGA_REMISION,P0_MENSAJE_VALIDACION'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(85578667685170105)
,p_name=>'Mensaje de proceso'
,p_event_sequence=>620
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(78071955899103118)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(85578741619170106)
,p_event_id=>wwv_flow_imp.id(85578667685170105)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'PLUGIN_COM.FOS.NOTIFICATIONS'
,p_attribute_01=>'warning'
,p_attribute_02=>'static'
,p_attribute_03=>unistr('Atenci\00F3n')
,p_attribute_04=>'Falta migrar el Reporte '
,p_attribute_07=>'autodismiss:prevent-duplicates:escape-html:newest-on-top:client-side-substitutions:dismiss-on-click:dismiss-on-button'
,p_attribute_08=>'top-right'
,p_attribute_09=>'Y'
,p_attribute_11=>'3'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(85579512292170114)
,p_name=>'on geolocate'
,p_event_sequence=>630
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(81182823937178632)
,p_bind_type=>'bind'
,p_bind_event_type=>'PLUGIN_COM.JK64.REPORT_GOOGLE_MAP_R1|REGION TYPE|geolocate'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(85579770920170116)
,p_event_id=>wwv_flow_imp.id(85579512292170114)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P234_LONGITUD_1'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'this.data.lng'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(85579865572170117)
,p_event_id=>wwv_flow_imp.id(85579512292170114)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P234_LATITUD_1'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'this.data.lat'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(85579677900170115)
,p_event_id=>wwv_flow_imp.id(85579512292170114)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P234_LATLNG_AUX'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'this.data.lat+" "+this.data.lng'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(85581475140170133)
,p_name=>'Cierra modal maps'
,p_event_sequence=>640
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(81184152735178645)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(85581503945170134)
,p_event_id=>wwv_flow_imp.id(85581475140170133)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(81182759164178631)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(94557931789213407)
,p_name=>'Desactiva campos del detalle'
,p_event_sequence=>650
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P234_VALIDA_ARTICULO'
,p_condition_element=>'P234_VALIDA_ARTICULO'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'1'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(94558061117213408)
,p_event_id=>wwv_flow_imp.id(94557931789213407)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'document.getElementById(''P234_PORC_DESCUENTOD'').readOnly = true;',
'document.getElementById(''P234_PORC_RECARGO'').readOnly = true;'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(94558145006213409)
,p_event_id=>wwv_flow_imp.id(94557931789213407)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'document.getElementById(''P234_PORC_DESCUENTO'').readOnly = false;',
'document.getElementById(''P234_PORC_RECARGO'').readOnly = false;'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(94558521559213413)
,p_name=>unistr('Cerrar Regi\00F3n')
,p_event_sequence=>660
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(83737326651791546)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(94558611965213414)
,p_event_id=>wwv_flow_imp.id(94558521559213413)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(83736059102791533)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(94560682280213434)
,p_name=>unistr('Ocultar bot\00F3n Guardar')
,p_event_sequence=>670
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_display_when_cond=>'P234_NRO_COMPROBANTE'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(94560792672213435)
,p_event_id=>wwv_flow_imp.id(94560682280213434)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'document.getElementById(''CREATE'').style.visibility= ''hidden'';'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(94560945045213437)
,p_name=>'Llamador de Reporte'
,p_event_sequence=>680
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(78071147487103110)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
,p_da_event_comment=>'Llamador de Reporte'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(106521637508760507)
,p_event_id=>wwv_flow_imp.id(94560945045213437)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var params = []',
'var empresa = ''&P234_COD_EMPRESA.'';',
'var tip_comprobante = ''&P234_TIP_COMPROBANTE.'';',
'var ser_comprobante = ''&P234_SER_COMPROBANTE.'';',
'var nro_comprobante = ''&P234_NRO_COMPROBANTE.'';',
'var saldo_gs = apex.item(''P234_SALDO_GS'').getValue();',
'var saldo_usd = apex.item(''P234_SALDO_DOLARES'').getValue();',
'var saldo_total = apex.item(''P234_SALDO_TOTAL'').getValue();',
'//ejecutar spinner ',
'var spinner = apex.util.showSpinner(); ',
'//remover spinner ',
'$("#apex_wait_overlay").remove(); ',
'',
' apex.server.process(',
' ''OBTIENE_PARAMETROS_REPORTE'', ',
' { x01: empresa,',
'   x02: tip_comprobante,',
'   x03: ser_comprobante,',
'   x04: nro_comprobante}, ',
' {',
' success: function (pData) {',
'       params.push({ name: ''p_cod_empresa'', value: empresa})',
'       params.push({ name: ''p_tip_comprobante'', value: tip_comprobante})',
'       params.push({ name: ''p_ser_comprobante'', value: ser_comprobante}) ',
'       params.push({ name: ''p_nro_comprobante'', value: nro_comprobante}) ',
'       params.push({ name: ''p_cod_vendedor'', value: ''&P234_COD_VENDEDOR.''}) ',
'       params.push({ name: ''p_cod_corp'', value: ''''}) ',
'       params.push({ name: ''p_saldo_gsf'', value: saldo_gs}) ',
'       params.push({ name: ''p_saldo_usf'', value: saldo_usd}) ',
'       params.push({ name: ''p_tot_saldo_usf'', value: saldo_total}) ',
'       params.push({ name: ''p_limite_creditof'', value: ''&P234_LIMITE_CREDITO.''}) ',
'       params.push({ name: ''p_moneda'', value: ''&P234_COD_MONEDA.''}) ',
'       params.push({ name: ''p_pago_mes'', value: pData.p_pago_mes}) ',
'       params.push({ name: ''p_saldo_1'', value: ''&P234_SALDO_GS.''}) ',
'       params.push({ name: ''P_SALDO_US_1'', value: ''&P234_SALDO_DOLARES.''}) ',
'       params.push({ name: ''p_saldo_30'', value: ''''}) ',
'       params.push({ name: ''p_saldo_us_30'', value: ''''}) ',
'       params.push({ name: ''p_saldo_60'', value: ''''}) ',
'       params.push({ name: ''p_saldo_us_60'', value: ''''}) ',
'       params.push({ name: ''p_saldo_90'', value: ''''}) ',
'       params.push({ name: ''p_saldo_us_90'', value: ''''}) ',
'       params.push({ name: ''p_saldo_0'', value: ''''}) ',
'       params.push({ name: ''p_saldo_us'', value: ''''}) ',
'       params.push({ name: ''p_saldo_g'', value: ''''}) ',
'       params.push({ name: ''p_vc_us'', value: ''''}) ',
'       params.push({ name: ''p_vc_gs'', value: ''''}) ',
'       params.push({ name: ''p_vpedgs'', value: pData.vpedgs}) ',
'       params.push({ name: ''p_vpedus'', value: pData.vpedus}) ',
'       params.push({ name: ''p_limite'', value: ''&P234_LIMITE_CREDITO.''}) ',
'       params.push({ name: ''p_puntaje'', value: pData.puntaje}) ',
'       params.push({ name: ''p_venta_actual_gs'', value: pData.p_venta_actual_gs}) ',
'       params.push({ name: ''p_venta_anterior_gs'', value: pData.p_venta_anterior_gs}) ',
'       params.push({ name: ''p_venta_actual_us'', value: pData.p_venta_actual_us}) ',
'       params.push({ name: ''p_venta_anterior_us'', value: pData.p_venta_anterior_us}) ',
'       params.push({ name: ''P_PUBLICIDAD_ACT'', value:  pData.p_publicidad_act}) ',
'       params.push({ name: ''p_garantia_act'', value: pData.p_garantia_act}) ',
'       params.push({ name: ''P_PUBLICIDAD_ANT'', value:  pData.p_publicidad_ant})  ',
'       params.push({ name: ''p_garantia_ant'', value: pData.p_garantia_ant}) ',
'       params.push({ name: ''p_gar'', value: pData.p_gar})',
'       params.push({ name: ''p_par'', value: pData.p_par})',
'       createReportUrl(''VTPEDIDO1'', params)',
'       $(".u-Processing").remove(); ',
'    ',
' }, ',
' });',
'',
'       '))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(390604804629583005)
,p_name=>'Llamador de Reporte_1'
,p_event_sequence=>690
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(390604773814583004)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
,p_da_event_comment=>'Llamador de Reporte'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(390604912824583006)
,p_event_id=>wwv_flow_imp.id(390604804629583005)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var params = []',
'var empresa = ''&P234_COD_EMPRESA.'';',
'var tip_comprobante = ''&P234_TIP_COMPROBANTE.'';',
'var ser_comprobante = ''&P234_SER_COMPROBANTE.'';',
'var nro_comprobante = ''&P234_NRO_COMPROBANTE.'';',
'var saldo_gs = apex.item(''P234_SALDO_GS'').getValue();',
'var saldo_usd = apex.item(''P234_SALDO_DOLARES'').getValue();',
'var saldo_total = apex.item(''P234_SALDO_TOTAL'').getValue();',
'//ejecutar spinner ',
'var spinner = apex.util.showSpinner(); ',
'//remover spinner ',
'$("#apex_wait_overlay").remove(); ',
'',
' apex.server.process(',
' ''OBTIENE_PARAMETROS_REPORTE'', ',
' { x01: empresa,',
'   x02: tip_comprobante,',
'   x03: ser_comprobante,',
'   x04: nro_comprobante}, ',
' {',
' success: function (pData) {',
'       params.push({ name: ''PI_COD_EMPRESA'', value: empresa})',
'       params.push({ name: ''PI_TIP_COMPROBANTE'', value: tip_comprobante})',
'       params.push({ name: ''PI_SER_COMPROBANTE'', value: ser_comprobante}) ',
'       params.push({ name: ''PI_NRO_COMPROBANTE'', value: nro_comprobante}) ',
'      ',
'       createReportUrl(''VTPEDMP'', params)',
'       $(".u-Processing").remove(); ',
'    ',
' }, ',
' });',
'',
'       '))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(94561156992213439)
,p_name=>'Llamador de Reporte Pedido'
,p_event_sequence=>700
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(78071232277103111)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
,p_da_event_comment=>'Llamador de Reporte'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(156804558818017217)
,p_event_id=>wwv_flow_imp.id(94561156992213439)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var comprobante = document.getElementById("P234_NRO_COMPROBANTE").value; ',
'var params = []',
'var empresa = apex.item("P234_COD_EMPRESA").getValue();',
'var tip_comprobante = apex.item("P234_TIP_COMPROBANTE").getValue();',
'var ser_comprobante = apex.item("P234_SER_COMPROBANTE").getValue();',
'var nro_comprobante = apex.item("P234_NRO_COMPROBANTE").getValue();',
'var cliente = ''&P234_COD_CLIENTE.'';',
'var usuario = ''&APP_USER.'';',
'var vfacnom = "VTPEDIDO";',
'params.push({ name: ''P_COD_EMPRESA'', value: empresa})',
'params.push({ name: ''P_TIP_COMPROBANTE'', value: tip_comprobante})',
'params.push({ name: ''P_SER_COMPROBANTE'', value: ser_comprobante}) ',
'params.push({ name: ''P_NRO_COMPROBANTE'', value: nro_comprobante}) ',
'',
'createReportUrl(vfacnom, params)',
'',
'',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(81180511947178609)
,p_name=>'Obtiene detalles del pedido'
,p_event_sequence=>710
,p_condition_element=>'P234_NRO_COMPROBANTE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(81180619764178610)
,p_event_id=>wwv_flow_imp.id(81180511947178609)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'inv.vtpedido.pr_obtiene_datos_detalles(',
'  p_ser_comprobante => :P234_ser_COMPROBANTE,',
'  p_nro_comprobante => :P234_NRO_COMPROBANTE,',
'                                       p_cod_empresa     => :P234_COD_EMPRESA,',
'                                       p_cod_moneda      => :P234_COD_MONEDA);',
'EXCEPTION ',
'    WHEN OTHERS THEN ',
'      :P0_MENSAJE_VALIDACION := SQLERRM;',
' END;',
''))
,p_attribute_02=>'P234_NRO_COMPROBANTE,P234_COD_EMPRESA,P234_COD_MONEDA,P234_SER_COMPROBANTE'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(85581280955170131)
,p_event_id=>wwv_flow_imp.id(81180511947178609)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN ',
'inv.vtpedido.pr_calculos_fletes(p_cab_tip_cambio    => :P234_TIP_CAMBIO,',
'                                p_cod_empresa       => :P234_COD_EMPRESA,',
'                                p_cod_flete         => :P234_COD_FLETE,',
'                                p_cab_flete_total   => :P234_FLETE_TOTAL,',
'                                p_cab_total         => TO_NUMBER(REPLACE(:P234_TOTAL,''.'')),',
'                                p_det_total_peso    => TO_NUMBER(REPLACE(:P234_TOTAL_PESO,''.'')),',
'                                p_det_total_volumen => TO_NUMBER(REPLACE(:P234_TOTAL_CANTIDAD,''.'')));',
'EXCEPTION ',
'    WHEN OTHERS THEN ',
'      :P0_MENSAJE_VALIDACION := SQLERRM;',
' END;',
':P234_FLETE_TOTAL := TO_CHAR(:P234_FLETE_TOTAL, ''999G999G999G999G999G999G990'');'))
,p_attribute_02=>'P234_TIP_CAMBIO,P234_COD_EMPRESA,P234_COD_FLETE,P234_TOTAL,P234_TOTAL_PESO,P234_TOTAL_CANTIDAD'
,p_attribute_03=>'P234_FLETE_TOTAL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(85581186592170130)
,p_event_id=>wwv_flow_imp.id(81180511947178609)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'SELECT    sum(to_number(replace(nvl(c008, 0), ''.'')))   AS monto_total,',
'          sum(to_number(replace(nvl(c009, 0), ''.'')))  AS total_iva',
'INTO :P234_SUBTOTAL, :P234_TOTAL_IVA',
'FROM apex_collections',
'WHERE collection_name = ''TMP_VTPEDIDO'';',
'EXCEPTION ',
'    WHEN NO_DATA_FOUND THEN ',
'        :P234_SUBTOTAL := 0;',
'        :P234_TOTAL_IVA := 0;',
'    WHEN OTHERS THEN ',
'      :P234_SUBTOTAL := 0;',
'       :P234_TOTAL_IVA := 0;',
' END;',
'IF :P234_COD_MONEDA = ''1'' THEN ',
'    :P234_TOTAL := TO_CHAR(TO_NUMBER(REPLACE(:P234_SUBTOTAL,''.'')) + TO_NUMBER(REPLACE(:P234_TOTAL_IVA,''.'')), ''999G999G999G999G999G999G990'');',
'    :P234_SUBTOTAL := TO_CHAR(:P234_SUBTOTAL, ''999G999G999G999G999G999G990'');',
'    :P234_TOTAL_IVA := TO_CHAR(:P234_TOTAL_IVA, ''999G999G999G999G999G999G990'');',
'ELSE ',
'    :P234_TOTAL := TO_CHAR(TO_NUMBER(REPLACE(:P234_SUBTOTAL,''.'')) + TO_NUMBER(REPLACE(:P234_TOTAL_IVA,''.'')), ''999G999G999G999G990D00'');',
'    :P234_SUBTOTAL := TO_CHAR(:P234_SUBTOTAL, ''999G999G999G999G990D00'');',
'    :P234_TOTAL_IVA := TO_CHAR(:P234_TOTAL_IVA, ''999G999G999G999G990D00'');',
'END IF;',
'',
':P234_COD_SUCURSAL_DIST := :P234_SUCURSAL_DIST_AUX;'))
,p_attribute_02=>'P234_SUBTOTAL,P234_TOTAL,P234_COD_MONEDA,P234_COD_CLIENTE,P234_SUCURSAL_DIST_AUX'
,p_attribute_03=>'P234_SUBTOTAL,P234_TOTAL_IVA,P234_TOTAL,P234_COD_SUCURSAL_DIST'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(81180913034178613)
,p_event_id=>wwv_flow_imp.id(81180511947178609)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(55011281939330147)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(174250926475975418)
,p_event_id=>wwv_flow_imp.id(81180511947178609)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN ',
'SELECT TIPO_ENTREGA',
'INTO :P234_TIPO_ENTREGA',
'FROM VT_PEDIDOS_CABECERA A',
'WHERE A.NRO_COMPROBANTE  = :P234_NRO_COMPROBANTE',
'AND A.SER_COMPROBANTE =  :P234_SER_COMPROBANTE',
'AND A.TIP_COMPROBANTE = :P234_TIP_COMPROBANTE;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN ',
'        :P234_TIPO_ENTREGA :=  NULL;',
'END;'))
,p_attribute_02=>'P234_NRO_COMPROBANTE,P234_SER_COMPROBANTE,P234_TIP_COMPROBANTE'
,p_attribute_03=>'P234_TIPO_ENTREGA'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(174251063979975419)
,p_event_id=>wwv_flow_imp.id(81180511947178609)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN ',
'SELECT  COD_FLETE',
'INTO :P234_COD_FLETE',
'FROM VT_PEDIDOS_CABECERA A',
'WHERE A.NRO_COMPROBANTE  = :P234_NRO_COMPROBANTE',
'AND A.SER_COMPROBANTE =  :P234_SER_COMPROBANTE',
'AND A.TIP_COMPROBANTE = :P234_TIP_COMPROBANTE;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN ',
'        :P234_COD_FLETE :=  NULL;',
'END;'))
,p_attribute_02=>'P234_NRO_COMPROBANTE,P234_SER_COMPROBANTE,P234_TIP_COMPROBANTE'
,p_attribute_03=>'P234_COD_FLETE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(96865159194522118)
,p_name=>'Habilita campos'
,p_event_sequence=>720
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P234_COD_CLIENTE'
,p_condition_element=>'P234_COD_CLIENTE'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'00000'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(96865245808522119)
,p_event_id=>wwv_flow_imp.id(96865159194522118)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'document.getElementById(''P234_RUC'').readOnly = false;',
'document.getElementById(''P234_TEL_CLIENTE'').readOnly = false;',
'document.getElementById(''P234_TELEFONO_DIST'').readOnly = false;',
'document.getElementById(''P234_NOM_CLIENTE'').readOnly = false;',
'document.getElementById(''P234_DIR_CLIENTE'').readOnly = false;'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(96865396734522120)
,p_event_id=>wwv_flow_imp.id(96865159194522118)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'document.getElementById(''P234_RUC'').readOnly = true;',
'document.getElementById(''P234_TEL_CLIENTE'').readOnly = true;',
'document.getElementById(''P234_TELEFONO_DIST'').readOnly = true;',
'document.getElementById(''P234_NOM_CLIENTE'').readOnly = true;',
'document.getElementById(''P234_DIR_CLIENTE'').readOnly = true;',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(96865579407522122)
,p_name=>'Llamador de maps'
,p_event_sequence=>730
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(96865498099522121)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(96865642437522123)
,p_event_id=>wwv_flow_imp.id(96865579407522122)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'javascript:openModal(''mimapa'');'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(101872509236708129)
,p_name=>'Mostrar modal de entregas'
,p_event_sequence=>740
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P234_ENTREGA_DETALLE'
,p_condition_element=>'P234_ENTREGA_DETALLE'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'1'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(101872788594708131)
,p_event_id=>wwv_flow_imp.id(101872509236708129)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P234_ENTREGA_DETALLE'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(101872688030708130)
,p_event_id=>wwv_flow_imp.id(101872509236708129)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'javascript:openModal(''entreg'');',
'var region =  apex.region("det_entregas"); ',
'var regi =  apex.region("entreg"); ',
'region.refresh();',
'regi.refresh();',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(101872808954708132)
,p_name=>'Validar detalles de entregas'
,p_event_sequence=>750
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(101869845925708102)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(101872965927708133)
,p_event_id=>wwv_flow_imp.id(101872808954708132)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P234_FECHA_ENTREGA is null  then',
'		:P0_MENSAJE_VALIDACION := ''La fecha de entrega esta vacia !'';',
'        :P234_ENTREGA_DETALLE := 0;',
'ELSE',
'	:P234_ENTREGA_DETALLE := 1;',
'    :P0_MENSAJE_VALIDACION := null;',
'end if;'))
,p_attribute_02=>'P234_FECHA_ENTREGA'
,p_attribute_03=>'P234_ENTREGA_DETALLE,P0_MENSAJE_VALIDACION'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(99777084892177721)
,p_name=>'Recorre columna cantidad'
,p_event_sequence=>760
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_imp.id(101870010215708104)
,p_triggering_element=>'CANTIDAD_AUX'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(99777130328177722)
,p_event_id=>wwv_flow_imp.id(99777084892177721)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'sumar_grilla("det_entregas","CANTIDAD","P234_TOTAL_ENTREGA");'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(99777306052177724)
,p_name=>'Setea valor de cantidad'
,p_event_sequence=>770
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_imp.id(101870010215708104)
,p_triggering_element=>'CANTIDAD'
,p_bind_type=>'bind'
,p_bind_event_type=>'focusout'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(99777460007177725)
,p_event_id=>wwv_flow_imp.id(99777306052177724)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'COLUMN'
,p_affected_elements=>'CANTIDAD_AUX'
,p_attribute_01=>'PLSQL_EXPRESSION'
,p_attribute_04=>':CANTIDAD'
,p_attribute_07=>'CANTIDAD'
,p_attribute_08=>'Y'
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
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(99777779670177728)
,p_name=>'Guarda datos de la grilla'
,p_event_sequence=>780
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(99777507335177726)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(99777877806177729)
,p_event_id=>wwv_flow_imp.id(99777779670177728)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.region("det_entregas").widget().interactiveGrid("getActions").invoke("save");',
'var region =  apex.region("det_entregas"); ',
'region.widget().interactiveGrid("getActions").invoke("save");         ',
'apex.message.setThemeHooks({beforeShow: function(pMsgType, pElement$){                 ',
'    $(''.t-Alert'').fadeOut(0);',
'    }',
'});',
'',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(99778115003177732)
,p_event_id=>wwv_flow_imp.id(99777779670177728)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE ',
'',
'    v_cantidad NUMBER := 0;',
'    CURSOR cur_entregas IS ',
'            SELECT ',
'                 c005   AS fecha_entrega,',
'                 c006   AS cod_art_corto,',
'                 c007   AS cod_articulo,',
'                 c008   AS descripcion,',
'                 N001   AS cantidad',
'            FROM apex_collections',
'           WHERE collection_name = ''TMP_ENTREGA'';',
'BEGIN ',
'    :P234_CERRAR_ENTREGA := 2;',
'    :P0_MENSAJE_VALIDACION :=  NULL;',
'    FOR a in cur_entregas LOOP ',
'        BEGIN ',
'            SELECT SUM(to_number(c006))',
'            into v_cantidad',
'            FROM apex_collections',
'           WHERE collection_name = ''TMP_VTPEDIDO''',
'           AND C026 = a.cod_art_corto',
'           and c005 = a.cod_articulo;',
'            exception',
'                when no_data_found then',
'                     v_cantidad := 0;',
'                when others then ',
'                    v_cantidad := 0;',
'        END;',
'',
'        if a.cantidad > v_cantidad then ',
unistr('            :P0_MENSAJE_VALIDACION := ''El art\00EDculo ''|| a.cod_articulo || '' ya super\00F3 la cantidad solicidad en el pedido. Pedido: ''||v_cantidad||'', A entregar ''|| a.cantidad;'),
'            :P234_CERRAR_ENTREGA := 0;',
'            exit;',
'        end if;',
'    END LOOP;',
'    IF :P234_CERRAR_ENTREGA = 2 THEN ',
'        :P234_CERRAR_ENTREGA := 1;',
'        :P0_MENSAJE_VALIDACION :=  NULL;',
'    END IF;',
'END;'))
,p_attribute_02=>'P234_CERRAR_ENTREGA'
,p_attribute_03=>'P0_MENSAJE_VALIDACION,P234_CERRAR_ENTREGA'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(99778890181177739)
,p_event_id=>wwv_flow_imp.id(99777779670177728)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(101869962937708103)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(99778377142177734)
,p_name=>'Cerrar ventana de entrega'
,p_event_sequence=>790
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P234_CERRAR_ENTREGA'
,p_condition_element=>'P234_CERRAR_ENTREGA'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'1'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(99778414778177735)
,p_event_id=>wwv_flow_imp.id(99778377142177734)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(101869962937708103)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(99778654739177737)
,p_name=>unistr('Activa opci\00F3n de mensajes de procesos')
,p_event_sequence=>800
,p_bind_type=>'bind'
,p_bind_event_type=>'apexbeforepagesubmit'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(99778789995177738)
,p_event_id=>wwv_flow_imp.id(99778654739177737)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.message.setThemeHooks({beforeShow: function(pMsgType, pElement$){ ',
'    $(''.t-Alert'').fadeIn(0);    ',
'}}); '))
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(99777602847177727)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(101870010215708104)
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'GUARDA COLECCION DETALLE ENTREGA'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE ',
'    ',
'BEGIN ',
'    CASE :APEX$ROW_STATUS ',
'        WHEN ''C'' THEN ',
'        IF :cod_art_corto IS NOT NULL THEN   ',
'            apex_collection.add_member(p_collection_name => ''TMP_ENTREGA'',',
'                                       p_c001            => :cod_empresa,',
'                                       p_c002            => :tip_comprobante,',
'                                       p_c003            => :ser_comprobante,',
'                                       p_c004            => :nro_comprobante,',
'                                       p_c005            => :fecha_entrega,',
'                                       p_c006            => :cod_art_corto,',
'                                       p_c007            => :cod_articulo,',
'                                       p_c008            => :descripcion,',
'                                       p_N001            => :cantidad,',
'                                       p_c010            => :total,',
'                                       p_c011            => :orden,',
'                                       p_c012            => :observacion,',
'                                       p_c013            => :ind_promocion,',
'                                       p_c014            => :ind_requerido,',
'                                       p_c015            => :ind_combo,',
'                                       p_c016            => :porcentaje,',
'                                       p_c017            => :cod_sucursal_dist,',
'                                       p_c018            => :nombre,',
'                                       p_c019            => :detalle_entrega,',
'                                       p_c020            => :cod_cliente,',
'                                       p_c021            => :nro_orden',
'                                       );',
'            END IF;',
'        WHEN ''U'' THEN ',
'                apex_collection.update_member(p_collection_name => ''TMP_ENTREGA'',',
'                                       p_seq             => :SEQ_ID_2,',
'                                       p_c001            => :cod_empresa,',
'                                       p_c002            => :tip_comprobante,',
'                                       p_c003            => :ser_comprobante,',
'                                       p_c004            => :nro_comprobante,',
'                                       p_c005            => :fecha_entrega,',
'                                       p_c006            => :cod_art_corto,',
'                                       p_c007            => :cod_articulo,',
'                                       p_c008            => :descripcion,',
'                                       p_N001            => :cantidad,',
'                                       p_c010            => :total,',
'                                       p_c011            => :orden,',
'                                       p_c012            => :observacion,',
'                                       p_c013            => :ind_promocion,',
'                                       p_c014            => :ind_requerido,',
'                                       p_c015            => :ind_combo,',
'                                       p_c016            => :porcentaje,',
'                                       p_c017            => :cod_sucursal_dist,',
'                                       p_c018            => :nombre,',
'                                       p_c019            => :detalle_entrega,',
'                                       p_c020            => :cod_cliente,',
'                                       p_c021            => :nro_orden',
'                                       );',
'        WHEN ''D'' THEN ',
'               APEX_COLLECTION.DELETE_MEMBER(',
'                        p_collection_name => ''TMP_ENTREGA'',',
'                        p_seq             => :SEQ_ID_2);',
'        END CASE; ',
'         ',
' ',
'        EXCEPTION  ',
'        WHEN OTHERS THEN ',
'                raise_application_error(-20001,  sqlerrm);   ',
'END; ',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(59741098201031643)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Validaciones'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P234_TIPO_ENTREGA = ''N'' THEN ',
'    :P234_TIPO_ENTREGA := NULL;',
'END IF;',
'',
':P234_TOT_COMPROBANTE := TO_NUMBER(REPLACE (:P234_TOTAL , ''.''));',
':P234_TOT_GRAVADAS := TO_NUMBER(REPLACE (:P234_TOTAL_IVA , ''.''));',
':P234_TOT_IVA := TO_NUMBER(REPLACE (:P234_TOTAL_IVA , ''.''));',
':P234_TOT_EXENTAS := TO_NUMBER(REPLACE (NVL(:P234_EXENTAS, 0) , ''.''));',
':P234_TIP_CAMBIO_COMPRA := :P234_TIP_CAMBIO;',
':P234_RECARGO := TO_NUMBER(REPLACE (NVL(:P234_RECARGO, 0) , ''.''));',
'',
'',
'DECLARE ',
'    v_contador NUMBER := 0;',
'BEGIN ',
'    BEGIN ',
'        SELECT COUNT(*)',
'                INTO v_contador',
'                FROM apex_collections',
'               WHERE collection_name = ''TMP_VTPEDIDO''',
'               AND c004 NOT IN (''D'');',
'    EXCEPTION ',
'        WHEN NO_DATA_FOUND  THEN ',
'            v_contador := 0;',
'        WHEN OTHERS THEN ',
'            v_contador := 0;',
'    END;',
'    IF v_contador = 0 THEN ',
'        RAISE_APPLICATION_ERROR(-20001, ''No se puede insertar Pedido sin detalles'');',
'    END IF;',
'END;',
'',
'if :P234_ENTREGA_REMISION=''S'' AND :P234_TIPO_ENTREGA=''CR'' ',
'AND (:P234_NRO_CI_ENTREGA IS NULL OR :P234_CHAPA_ENTREGA IS NULL  ) then',
'',
'	raise_application_error(-20000,''Debe Ingresar los datos de Entrega'');',
'  END IF;',
'',
':P234_COD_SUCURSAL_DIST := :P234_SUCURSAL_DIST_AUX;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(99778578925177736)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'VALIDACIONES DE ENTREGAS'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE ',
'    v_cantidad NUMBER := 0;',
'    V_SUCURSAL NUMBER := 0;',
'    CURSOR cur_entregas IS ',
'            SELECT ',
'                 c005   AS fecha_entrega,',
'                 c006   AS cod_art_corto,',
'                 c007   AS cod_articulo,',
'                 c008   AS descripcion,',
'                 N001   AS cantidad,',
'                 c017   AS sucursal_dist',
'            FROM apex_collections',
'           WHERE collection_name = ''TMP_ENTREGA'';',
'BEGIN ',
'    FOR a in cur_entregas LOOP ',
'         BEGIN ',
'            SELECT COUNT(*)',
'            INTO V_SUCURSAL',
'            FROM apex_collections',
'           WHERE collection_name = ''TMP_ENTREGA''',
'           AND c007 = A.cod_articulo',
'           AND c017 = a.sucursal_dist;',
'         exception',
'                when no_data_found then',
'                     V_SUCURSAL := 0;',
'                when others then ',
'                    V_SUCURSAL := 0;',
'        END;',
'        if (V_SUCURSAL > 1 ) then ',
unistr('            RAISE_APPLICATION_ERROR(-20001, ''No se puede realizar dos env\00EDos a una sucursal con el mismo producto en un pedido'');'),
'        end if;',
'',
'        BEGIN ',
'            SELECT SUM(to_number(c006))',
'            into v_cantidad',
'            FROM apex_collections',
'           WHERE collection_name = ''TMP_VTPEDIDO''',
'           AND C026 = a.cod_art_corto',
'           and c005 = a.cod_articulo;',
'            exception',
'                when no_data_found then',
'                     v_cantidad := 0;',
'                when others then ',
'                    v_cantidad := 0;',
'        END;',
'',
'        if a.cantidad > v_cantidad then ',
unistr('            RAISE_APPLICATION_ERROR(-20001, ''El art\00EDculo ''|| a.cod_articulo || '' ya super\00F3 la cantidad solicidad en el pedido. Pedido: ''||v_cantidad||'', A entregar ''|| a.cantidad);'),
'            exit;',
'        end if;',
'',
'        IF TO_DATE(a.fecha_entrega, ''DD/MM/YYYY'') < TO_DATE(:P234_FECHA_ENTREGA, ''DD/MM/YYYY'') THEN  ',
'            RAISE_APPLICATION_ERROR(-20001, ''La fecha ingresa en el detalle de entrega no puede ser menor a la fecha de entrega ingresada en el Pedido'');',
'        END IF;',
'    END LOOP;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(77482096851133436)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PRE-INSERT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P234_ESTADO        := ''P'' ;',
':P234_HORA_ALTA     := TO_CHAR(SYSDATE, ''HH24:MI:SS'');',
'',
'IF :P234_FEC_VENCIMIENTO  IS NULL THEN ',
'    :P234_FEC_VENCIMIENTO := TO_DATE(:P234_FEC_COMPROBANTE, ''DD/MM/YYYY'') + TO_NUMBER(:P234_DIAS_VENCIM_PEDIDO);',
'END IF;',
'',
'IF :P234_TIP_CLIENTE = BS_BUSCA_PARAMETRO(''VT'', ''VT_TIPO_PERS_EMP'') THEN',
'    :P234_DERIVADO :=   ''RH'';',
'END IF;',
'',
'IF :P234_TIP_CLIENTE = BS_BUSCA_PARAMETRO(''VT'', ''VT_TIPO_PERS_EMP_CPH'') THEN',
'    :P234_DERIVADO :=   ''GC'';',
'END IF;',
'',
'',
'IF :P234_ENTREGA_REMISION = ''S'' AND  :P234_COMENTARIO IS NULL THEN',
'  RAISE_APPLICATION_ERROR(-20001, ''Debe completar el campo instrucciones de entrega.'');',
'  ',
'END IF;',
'',
'IF :P234_NRO_COMPROBANTE IS NULL THEN',
' ',
'declare',
' v_no number;',
' Begin',
' --ped_6i_increment_sequence(v_no);',
' 	BEGIN',
'				Select nvl(max(nro_comprobante), 0) + 1',
'				  into v_no',
'				  from vt_pedidos_cabecera',
'				 where cod_empresa = :P_cod_empresa',
'				   and ser_comprobante = :p234_ser_comprobante;',
'		EXCEPTION',
'				when NO_DATA_FOUND then',
'						:v_no := 1; ',
'				when others then',
'						:v_no := 1; ',
'		END;',
'    :P234_NRO_COMPROBANTE := v_no;',
' end;',
'END IF;',
'',
'',
'',
'',
'',
'BEGIN',
'  IF :P234_ESTADO <> ''P'' THEN',
'    RAISE_APPLICATION_ERROR(-20001, ''El detalle del comprobante no puede ser agregado.'');',
'  END IF;',
'END;',
'',
'DECLARE ',
'    VRUBRO VARCHAR2(1000);',
'	CURSOR  cur_detalles IS',
'            SELECT seq_id,',
'             c001   AS cod_empresa,',
'             c002   AS tip_comprobante,',
'             c003   AS COD_MONEDA_BASE,',
'             c004   AS nro_comprobante,',
'             c005   AS cod_articulo,',
'             c006   AS cantidad,',
'             c007   AS cantidad_facturada,',
'             c008   AS monto_total,',
'             c009   AS total_iva,',
'             c010   AS precio_lista,',
'             c011   AS descuento,',
'             c012   AS precio_unitario,',
'             c013   AS porc_descuento,',
'             c014   AS costo_promedio_ref,',
'             c015   AS costo_promedio,',
'             c016   AS costo_condicion,',
'             c017   AS cod_unidad_medida,',
'             c018   AS cantidad_ub,',
'             c019   AS porc_recargo,',
'             c020   AS recargo,',
'             c021   AS cod_articulo_rel_bon,',
'             c022   AS porc_iva,',
'             c023   AS orden,',
'             c024   AS cod_iva,',
'             c025   AS control_fin,',
'             c026   AS cod_art_corto,',
'             c027   AS cantidad_pendiente,',
'             c028   AS cod_motivo_anu,',
'             c029   AS IND_NO_DESCUENTO,',
'             c030   AS volumen,',
'             c031   AS es_promo,',
'             c032   AS nro_promo,',
'             c033   AS des_articulo,',
'             c034   AS verificado,',
'             c035   AS ind_producto_armado,',
'             c036   AS ind_promo,',
'             c037   AS MODIFICO_PRECIO,',
'             c038   AS cantidad_entregada,',
'             c039   AS cod_estable,',
'             c040   AS monto_gravada_10,',
'             c041   AS monto_gravada_5,',
'             c042   AS monto_exenta,',
'             c043   AS articulo_regalo_promo,',
'             c044   AS cod_articulo_promo_ant,',
'             c045   AS ser_pedido_promo_ant,',
'             c046   AS nro_pedido_promo_ant,',
'             c047   AS nro_pedido_orden_promo_ant,',
'             c048   AS tip_factura,',
'             c049   AS ser_factura,',
'             c050   AS nro_factura,',
'             n001   AS cod_grupo_ant,',
'             n002   AS cod_origen_art,',
'             n003   AS iva_ant,',
'             n004   AS importe_ant,',
'             n005   AS total_peso',
'        FROM apex_collections',
'       WHERE collection_name = ''TMP_VTPEDIDO''',
'       AND c004 in (''A'', ''U'', ''X'');',
'BEGIN',
'    FOR A IN CUR_DETALLES LOOP',
'        BEGIN',
'        	select COD_RUBRO',
'',
'        		into VRUBRO',
'        		from st_articulos a, ',
'        				 st_iva i',
'        	 where a.cod_empresa  = :P234_COD_EMPRESA ',
'        	   and a.cod_articulo = A.cod_articulo;',
'               ',
'        EXCEPTION ',
'            WHEN OTHERS THEN ',
'                VRUBRO:=NULL;',
'        END;',
'    	IF NVL(:P234_IND_TIPO_PEDIDO,''X'')<>''RE'' AND NVL(VRUBRO,''NA'')=''RE''THEN',
'    		 RAISE_APPLICATION_ERROR(-20001,  ''El tipo de Pedido no corresponde al rubro del articulo.'');',
'    	END IF;',
'    END LOOP;',
'END;',
'',
'',
'',
'',
':P234_ESTADO        := ''P'' ;',
':P234_HORA_ALTA     := to_char(sysdate, ''HH24:MI:SS'');',
'',
'',
'if :P234_TIP_CLIENTE = bs_busca_parametro(''VT'', ''VT_TIPO_PERS_EMP'') then',
'		:P234_DERIVADO :=	 ''RH'';',
'end if;',
'',
'if :P234_TIP_CLIENTE = bs_busca_parametro(''VT'', ''VT_TIPO_PERS_EMP_CPH'') then',
'		:P234_DERIVADO :=	 ''GC'';',
'end if;',
'',
'',
'if :P234_ENTREGA_REMISION = ''S'' AND  :P234_COMENTARIO is null then',
'	raise_application_error(-20001,  ''Debe completar el campo instrucciones de entrega.'');',
'end if;',
'',
'',
'',
'',
'if nvl(:P234_TIP_COMPROBANTE_REF, ''X'' ) = ''SNC'' then',
'		:P234_DERIVADO :=	 ''RP'';',
'end if;',
'',
'if to_date(:P234_FEC_COMPROBANTE, ''DD/MM/YYYY'') > to_date(:P234_FECHA_ENTREGA, ''DD/MM/YYYY'') then',
'    raise_application_error(-20001,''La fecha de entrega no puede ser menor a la fecha del pedido !'');',
'end if;',
'		',
'if :P234_COD_VENDEDOR in (''193'',''194'' ) and :P234_SECCION_PRESTAMO is null then ',
'		raise_application_error(-20001,''Debe Seleccionar la seccion del prestamo!'');',
'end if;',
'		 	',
'if :P234_COD_FLETE is null then',
'		raise_application_error(-20001,''Debe cargar el Flete antes de grabar!'');',
'end if;',
'	',
'if :P234_COD_SUCURSAL_DIST IS NULL THEN ',
'		DECLARE',
'				VEXISTE VARCHAR2(30);',
'		BEGIN',
'				begin',
'						select ''S''',
'						  into VEXISTE',
'						  from cc_clientes c, ',
'						  		 BS_SUCURSAL_CLIENTE p',
'						 where c.cod_empresa = :P234_COD_EMPRESA',
'						   and c.cod_cliente = :P234_COD_CLIENTE',
'						   and c.cod_persona = p.cod_persona	',
'						   and rownum        = 1;						',
'				exception',
'						when others then ',
'								:P234_NOMBRE        := null;',
'								:P234_LUGAR_ENTREGA := null;',
'								:P234_TELEFONO_DIST := null;',
'				end;',
'				',
'				IF NVL(VEXISTE,''N'') = ''S'' THEN',
'						raise_application_error(-20001,''Debe seleccionar la Sucursal del Cliente'');',
'				END IF;	',
'		END;',
'END IF;',
'',
'if :P234_COD_SUCURSAL_DIST is null then',
'	raise_application_error(-20001,''Debe seleccionar la Sucursal del Cliente'');',
'end if;',
'',
'if :P234_TIPO_ENTREGA not in (''CR'',''AD'') AND NVL(:P234_IND_ENVIAR ,''N'')= ''N'' AND ',
'	 NVL(:P234_IND_GUARDA,''N'')= ''N'' AND NVL(:P234_IND_TRANSPORTADORA,''N'')= ''N''  then',
'		raise_application_error(-20001,''Debe marcar si el pedido es a Enviar, En Guarda o por Transportadora!'');',
'end if;',
'		',
'if :P234_COD_CLIENTE = ''00000'' AND :P234_COD_CONDICION_VENTA not in (''36'',''20'',''182'',''0'',''178'',''205'',''233'',''204'',''195'') THEN',
unistr('	raise_application_error(-20001,''Condici\00F3n de Ventas no V\00E1lida para comprobante credito. '');'),
'END IF;',
'		',
'if :P234_FECHA_ENTREGA is null and NVL(:P234_IND_GUARDA,''N'')=''S'' then',
'	raise_application_error(-20001, ''La fecha de entrega no puede ser nula !'');',
'end if;',
'			',
'			',
'			',
'	declare',
'		verror exception;',
'		begin',
'		if :P234_TIPO_ENTREGA is null  then',
'			raise verror;',
'		end if;',
'		exception when verror then ',
'			raise_application_error(-20001,''Debe cargar el tipo de entrega antes de grabar!'');',
'			when others then',
'			null;',
'		end;			',
'		',
'	declare',
'		verror exception;',
'		begin',
'		if    :P234_FORMA_COBRO_CRO is null   ',
' ',
'				and :P234_COD_CONDICION_VENTA in (''60'',''36'') then',
'			raise verror;',
'		end if;',
'		exception when verror then ',
'			raise_application_error(-20001,''Debe cargar los datos de entrega y forma de cobro antes de grabar!'');',
'			when others then',
'			null;',
'		end;',
'		',
'		',
'	declare',
'		verror exception;',
'		begin',
'		if    :P234_CROQUIS_HABLADO_CRO is null   ',
' ',
'				and nvl(:P234_IND_CLIENTE_FINAL,''N'') =''S'' ',
'				and :P234_TIPO_ENTREGA NOT IN (''N'',''AD'',''CR'') then',
'			raise verror;',
'		end if;',
'		exception when verror then ',
'			raise_application_error(-20001,''Debe cargar los datos de entrega  antes de grabar!'');',
'			when others then',
'			null;',
'		end;',
'		',
'				',
'	declare',
'		verror exception;',
'		begin',
'		if    nvl(:P234_TOTAL_ENTREGA,0) =0 and nvl(:P234_IND_GUARDA,''N'') =''S'' then',
'			raise verror;',
'		end if;',
'		exception when verror then ',
'			raise_application_error(-20001,''Debe cargar la planificacion de entrega  antes de grabar!'');',
'			when others then',
'			null;',
'		end;',
'		',
'		',
'	declare',
'		verror exception;',
'		begin',
'				if    nvl(:P234_TIPO_ENTREGA,''CR'')=''AD'' ',
'					AND (:P234_NRO_PEDIDO_ANTERIOR IS NULL OR :P234_SER_PEDIDO_ANTERIOR IS NULL ) Then',
'			raise verror;',
'					end if;',
'		exception when verror then ',
'		 raise_application_error(-20001,''Debe cargar el pedido anterior para los arreglos administrativos!'');',
' 	',
'			when others then',
'			null;',
'		end;',
'		declare',
'		verror exception;',
'            begin',
'            		if NVL(:P234_TOTAL,0) =0 then',
'            				raise verror;',
'            		end if;',
'            exception ',
'            		when verror then ',
'            				raise_application_error(-20001, ''El importe del Pedido no puede ser 0!'');',
'            		when others then',
'            				null;',
'            end;',
'',
'',
'',
'',
'',
'',
''))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'&P0_ERROR. #SQLERRM#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(56076889022779724)
,p_process_when=>'CREATE,SAVE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(77482184917133437)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PRE_UPDATE'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  VALERTA NUMBER;',
'BEGIN',
'  IF :P234_FEC_VENCIMIENTO IS NULL THEN',
'    :P234_FEC_VENCIMIENTO := TO_DATE(:P234_FEC_COMPROBANTE, ''DD/MM/YYYY'') +',
'                             TO_NUMBER(:P234_DIAS_VENCIM_PEDIDO);',
'  END IF;',
'END;',
'',
'IF NVL(:P234_IND_ENVIAR, ''N'') = ''S'' AND',
'   :P234_COD_VENDEDOR IN',
'   (''193'', ''194'', ''195'', ''196'', ''197'', ''198'', ''26'', ''0'', ''156'') AND',
'   NVL(:P234_ESTADO, ''P'') = ''P'' AND NVL(:P234_DERIVADO, ''F'') = ''F'' THEN',
'  :P234_DERIVADO := ''MA'';',
'END IF;',
':P234_IND_CANAL_VERDE := ''N'';',
'',
'IF :P234_COD_SUCURSAL_DIST IS NULL THEN',
'  DECLARE',
'    VEXISTE VARCHAR2(30);',
'    VERROR EXCEPTION;',
'  BEGIN',
'    BEGIN',
'      SELECT ''S''',
'        INTO VEXISTE',
'        FROM CC_CLIENTES C, BS_SUCURSAL_CLIENTE P',
'       WHERE C.COD_EMPRESA = :P234_COD_EMPRESA',
'         AND C.COD_CLIENTE = :P234_COD_CLIENTE',
'         AND C.COD_PERSONA = P.COD_PERSONA',
'         AND ROWNUM = 1',
'         AND C.TIP_CLIENTE IN (''1'', ''27'', ''63'');',
'      IF NVL(VEXISTE, ''N'') = ''S'' THEN',
'        RAISE VERROR;',
'      END IF;',
'    EXCEPTION',
'      WHEN VERROR THEN',
'        RAISE_APPLICATION_ERROR(-20001,',
'                                ''Debe seleccionar la Sucursal del Distribuidor'');',
'      WHEN OTHERS THEN',
'        :P234_NOMBRE        := NULL;',
'        :P234_LUGAR_ENTREGA := NULL;',
'        :P234_TELEFONO_DIST := NULL;',
'    END;',
'  END;',
'',
'END IF;',
'',
'DECLARE',
'  VERROR EXCEPTION;',
'BEGIN',
'  IF TO_DATE(:P234_FEC_COMPROBANTE, ''DD/MM/YYYY'') >',
'     TO_DATE(:P234_FECHA_ENTREGA_1, ''DD/MM/YYYY'') THEN',
'    RAISE VERROR;',
'  END IF;',
'EXCEPTION',
'  WHEN VERROR THEN',
'    RAISE_APPLICATION_ERROR(-20001,',
'                            ''La fecha de entrega no puede ser menor a la fecha del pedido !'');',
'  WHEN OTHERS THEN',
'    NULL;',
'END;',
'',
'DECLARE',
'  VERROR EXCEPTION;',
'BEGIN',
'  IF :P234_CROQUIS_HABLADO_CRO IS NULL',
'    ',
'     AND NVL(:P234_IND_CLIENTE_FINAL, ''N'') = ''S'' AND',
'     :P234_TIPO_ENTREGA NOT IN (''N'',''AD'',''CR'') THEN',
'    RAISE VERROR;',
'  END IF;',
'EXCEPTION',
'  WHEN VERROR THEN',
'    RAISE_APPLICATION_ERROR(-20001,',
'                            ''Debe cargar los datos de entrega  antes de grabar!'');',
'  WHEN OTHERS THEN',
'    NULL;',
'END;',
'',
'DECLARE',
'  VERROR EXCEPTION;',
'BEGIN',
'  --MENSAJE_EX(:SYSTEM.RECORD_STATUS);',
'  IF :P234_FECHA_ENTREGA IS NULL AND NVL(:P234_IND_GUARDA, ''N'') = ''S'' THEN',
'    RAISE VERROR;',
'  END IF;',
'EXCEPTION',
'  WHEN VERROR THEN',
'    RAISE_APPLICATION_ERROR(-20001,',
'                            ''La fecha de entrega no puede ser nula !'');',
'  WHEN OTHERS THEN',
'    NULL;',
'END;',
'',
'DECLARE',
'  VERROR EXCEPTION;',
'BEGIN',
'  IF NVL(:P234_TOTAL_IVA_1, 0) <> NVL(:P234_TOTAL_CANTIDAD, 0)',
'    ',
'     AND NVL(:P234_IND_GUARDA, ''N'') = ''S'' THEN',
'    RAISE VERROR;',
'  END IF;',
'EXCEPTION',
'  WHEN VERROR THEN',
'    RAISE_APPLICATION_ERROR(-20001,',
'                            ''La cantidad a entregar es distinta a la cantidad del pedido!'');',
'  WHEN OTHERS THEN',
'    NULL;',
'END;',
'',
'DECLARE',
'  VERROR EXCEPTION;',
'BEGIN',
'  --MENSAJE_EX(:SYSTEM.RECORD_STATUS);',
'  IF NVL(:P234_TOTAL, 0) = 0',
'    ',
'     AND NVL(:P234_IND_GUARDA, ''N'') = ''S'' THEN',
'    RAISE VERROR;',
'  END IF;',
'EXCEPTION',
'  WHEN VERROR THEN',
'    RAISE_APPLICATION_ERROR(-20001,',
'                            ''Debe cargar la planificacion de entrega  antes de grabar!'');',
'  WHEN OTHERS THEN',
'    NULL;',
'END;',
'',
'',
'',
'declare',
'	verror exception;',
'begin',
'  if :P234_COD_FLETE is null then',
'	  raise verror;',
'	end if;',
'	  ',
'exception ',
'  when verror then ',
'		RAISE_APPLICATION_ERROR(-20001, ''Debe cargar el Flete antes de grabar!'');',
'	when others then',
'		null;',
'end;',
'',
'',
'',
'declare',
'	verror exception;',
'begin',
'	if :P234_CROQUIS_HABLADO_CRO is null and :P234_COD_LISTA_PRECIO in (''5'',''32'') and :P234_TIPO_ENTREGA IN (''CA'',''IN'') then',
'		  raise verror;',
'	end if;',
'	',
'exception ',
'	when verror then ',
'		RAISE_APPLICATION_ERROR(-20001, ''Debe cargar los datos de entrega y forma de cobro antes de grabar!'');',
'	when others then',
'		null;',
'end;',
'',
'',
'declare',
'	verror exception;',
'begin',
'	if :P234_FORMA_COBRO_CRO is null',
'		 and :P234_COD_CONDICION_VENTA in (''60'') then',
'		   raise verror;',
'	end if;',
'		',
'exception ',
'	when verror then ',
'		RAISE_APPLICATION_ERROR(-20001,  ''Debe cargar los datos de entrega y forma de cobro antes de grabar!'');',
'	when others then',
'		null;',
'end;',
'',
'',
'if :P234_TIPO_ENTREGA is  null then',
' 	raise_application_error(-20001, ''Debe seleccionar el tipo de entrega'');',
'  declare',
'	  verror exception;',
'	begin',
'	  if :P234_TIPO_ENTREGA is null then',
'		  raise verror;',
'	  end if;',
'	exception ',
'	  when verror then ',
'		 raise_application_error(-20001, ''Debe seleccionar el tipo de entrega'');',
'		when others then',
'		  null;',
'	end;   ',
'end if;',
'',
':P0_MENSAJE := ''Se ha modificado el Pedido nro: '' || :P234_NRO_COMPROBANTE;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'&P0_ERROR. #SQLERRM#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(78070523252103104)
,p_process_sequence=>60
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'KEY COMMIT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/*if :system.form_status <> ''NEW'' then',
'  cambios; ',
'end if;*/',
' ',
'declare',
'	verror exception;',
'	vlleva_oc varchar2(5):=''N'';',
'begin',
'	begin',
'		SELECT nvl(ind_lleva_oc,''N'')',
'		  into vlleva_oc',
'			FROM CC_CLIENTES ',
' 		 WHERE COD_EMPRESA           = :P234_COD_EMPRESA',
'			 AND COD_CLIENTE           = :P234_COD_CLIENTE',
'			 AND NVL(IND_LLEVA_OC,''N'') = ''S'';',
'	EXCEPTION ',
'		WHEN OTHERS THEN ',
'			vlleva_oc:=''N'';',
'	end;',
'	if NVL(vlleva_oc,''N'') =''S'' AND :P234_NRO_ORDEN_COMPRA IS NULL then',
'		raise verror;',
'	end if;',
'	',
'exception ',
'	when verror then ',
'		raise_application_error(-20001, ''Es obligatorio cargar la orden de Compra para el Pedido!'');',
'	when others then',
'		null;',
'end;',
'------------------------------------------------------------',
'		',
'------------------------------------------------------------',
'declare',
'  verror exception;',
'begin',
'  if NVL(:P234_IND_OFERTAS,''N'')=''S'' AND :P234_COD_SUC_OFER IS NULL THEN ',
'		raise verror;',
'  end if;',
'	  ',
'exception ',
'  when verror then ',
'		raise_application_error(-20001, ''Debe cargar la sucursal de ofertas antes de grabar!'');',
'	when others then',
'		null;',
'end;',
'',
'',
'------------------------------------------------------------',
'',
'------------------------------------------------------------      ',
'DECLARE  ',
'  vestado varchar2(1); ',
'BEGIN',
'  select c.estado ',
'    into vestado ',
'    from cc_clientes c ',
'   where c.cod_empresa = :P234_COD_EMPRESA ',
'     and c.cod_cliente = :P234_COD_CLIENTE     ',
'     and rownum        = 1;',
'     ',
'  if vestado <> ''A''  and :P234_TIPO_ENTREGA=''CR'' then ',
' 	  raise_application_error(-20001, ''No se pueden cargar pedidos de CLIENTE RETIRA para este estado de Cliente'' );',
'  end if;',
'END;',
'------------------------------------------------------------	   ',
'',
'-------------------------> ',
'inv.vtpedido.pr_carga_gasto_financiacion(p_cab_cod_cliente      => :P234_COD_CLIENTE,',
'                                      p_cab_cod_condicion_venta => :P234_COD_CONDICION_VENTA,',
'                                      p_cab_control_fin_2       => :P234_CONTROL_FIN_2,',
'                                      p_var_lineas_max          => :P234_LINEAS_MAX,',
'                                      p_cab_recargo_porc        => :P234_RECARGO_PORC,',
'                                      p_mensaje_error           => :P0_ERROR,',
'                                      p_cab_total               => replace(:P234_TOTAL, ''.''),',
'                                      p_cab_cod_empresa         => :P234_COD_EMPRESA,',
'                                      p_cab_control_fin         => :P234_CONTROL_FIN,',
'                                      p_cab_recargo             => :P234_RECARGO);',
'inv.vtpedido.pr_controla_promo(p_cab_cod_empresa =>  :P234_COD_EMPRESA,',
'                            p_mensaje_error   =>  :P0_ERROR);',
'commit;',
'------------------------------------------------------------',
'if :P234_COD_SUCURSAL=''09''',
'	and :P234_COD_CONDICION_VENTA in(''182'',''		'',''20'') and to_date(:P234_FEC_COMPROBANTE, ''dd/mm/yyyy'') between to_date(''22/12/2017'',''DD/MM/YYYY'') ',
'	AND to_date(''31/12/2017'',''DD/MM/YYYY'') AND :P234_COD_VENDEDOR=''18''THEN',
'    :P234_AUTORIZADO :=''S'';',
'end if;',
'',
'',
'------------------------->',
'commit;',
'------------------------->',
'',
'',
'',
'  :P0_MENSAJE := ''Se ha generado el nro: '' || to_char(:P234_NRO_COMPROBANTE);',
'  ',
'  ------------------------------------------------------------  ',
'	DECLARE	',
'	  VMENSAJE  VARCHAR2(400);',
'	  VMENSAJE2 VARCHAR2(400);',
'  BEGIN',
'    if :P234_COD_CLIENTE=''134974'' and :P234_COD_CONDICION_VENTA=''127'' then	',
'	    begin',
'	      crea_pedido_GASTO_FINANCIERO(:P234_COD_EMPRESA,',
'	                                   :P234_COD_CLIENTE, ',
'	                                   replace(:P234_TOTAL, ''.''), ',
'	                                   VMENSAJE);',
'	    exception',
'		    when others then ',
'		     raise_application_error(-20001,  ''Error '' || VMENSAJE) ;',
'		  end;',
'	    :P0_MENSAJE := ''Se ha generado el Pedido de Interes nro: '' || VMENSAJE;',
'    end if;',
'  END;',
'  ------------------------------------------------------------',
'    ',
'  ------------------------------------------------------------',
'  if :P234_COD_SUCURSAL in (''105'') AND :P234_COD_CONDICION_VENTA IN (''182'',''36'',''205'') then',
'	  DECLARE',
'      vmodifica VARCHAR2(1);',
'    BEGIN       ',
'    --IMPRIME REPORTE FALTA MIGRAR ',
'       null;   ',
'     ',
'             ',
'    EXCEPTION',
'      when others then',
'        NULL;',
'    END;',
'	 ',
'	elsif :P234_COD_SUCURSAL in (''105'') then',
'	  NULL;',
'	',
'	end if;',
'	------------------------------------------------------------',
'',
'',
'IF :P234_OPERACION = ''MODIFICAR'' THEN ',
'    :P0_MENSAJE := ''Se ha modificado el pedido '' || :P234_NRO_COMPROBANTE;',
'END IF;',
'',
'',
''))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'&P0_ERROR. #SQLERRM#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
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
 p_id=>wwv_flow_imp.id(94561623739213444)
,p_process_sequence=>70
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Validaciones Eliminar'
,p_process_sql_clob=>':P0_MENSAJE := ''Se ha eliminado el Pedido nro: '' || :P234_NRO_COMPROBANTE;'
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(56076059971779724)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(56077612452779726)
,p_process_sequence=>80
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(55983001397779669)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Procesar pantalla VTPEDIDOF'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'&P0_MENSAJE.'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(78070493243103103)
,p_process_sequence=>90
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PRE_DELETE'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'   DELETE FROM VT_PEDIDOS_DETALLE V',
'   WHERE V.COD_EMPRESA = :P234_COD_EMPRESA ',
'   and V.TIP_COMPROBANTE = :P234_TIP_COMPROBANTE ',
'   and V.SER_COMPROBANTE = :P234_SER_COMPROBANTE ',
'   and V.NRO_COMPROBANTE = :P234_NRO_COMPROBANTE;',
'   EXCEPTION ',
'    WHEN OTHERS THEN ',
'        :P0_ERROR := SQLERRM;',
'END;',
'',
'',
'BEGIN ',
'    DELETE FROM vt_croquis_pedido',
'    WHERE nro_comprobante = :P234_NRO_COMPROBANTE;',
'    EXCEPTION ',
'    WHEN OTHERS THEN ',
'        :P0_ERROR := SQLERRM;',
'END;',
'',
'',
'',
'BEGIN ',
'    DELETE FROM VT_PEDIDOS_DETALLE_ENTREGA',
'    WHERE nro_comprobante = :P234_NRO_COMPROBANTE;',
'    EXCEPTION ',
'    WHEN OTHERS THEN ',
'        :P0_ERROR := SQLERRM;',
'END;',
'COMMIT;',
':P0_MENSAJE := ''Se ha eliminado el Pedido nro: '' || :P234_NRO_COMPROBANTE;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'&P0_ERROR. #SQLERRM#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(56076059971779724)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(83734769629791520)
,p_process_sequence=>100
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Proceso Croquis'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P234_CROQUIS_HABLADO_CRO is null and :P234_COD_LISTA_PRECIO in (''5'',''32'') and :P234_TIPO_ENTREGA IN (''CA'',''IN'') then',
'inv.vtpedido.pr_guarda_croquis(p_operacion           => :P234_OPERACION,',
'                              p_cod_empresa          => :P234_COD_EMPRESA,',
'                              p_tip_comprobante      => :P234_TIP_COMPROBANTE,',
'                              p_ser_comprobante      => :P234_SER_COMPROBANTE,',
'                              p_nro_comprobante      => :P234_NRO_COMPROBANTE,',
'                              p_croquis_hablado      => :P234_CROQUIS_HABLADO_CRO,',
'                              p_ind_croquis          => :P234_IND_CROQUIS_CRO,',
'                              p_ind_retencion        => :P234_IND_RETENCION_CRO,',
'                              p_nombre_autorizado    => :P234_NOMBRE_AUTORIZADO_CRO,',
'                              p_documento_autorizado => :P234_DOCUMENTO_AUTORIZADO_CRO,',
'                              p_telefono_autorizado  => :P234_TELEFONO_AUTORIZADO_CRO,',
'                              p_forma_cobro          => :P234_FORMA_COBRO_CRO,',
'                              p_mensaje_error        => :P0_ERROR);',
'END IF;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'&P0_ERROR. #SQLERRM#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(99779073521177741)
,p_process_sequence=>110
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PROCESO_ENTREGA_DETALLE'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'inv.vtpedido.pr_guarda_detalle_entregas(p_operacion            => :P234_OPERACION,',
'                                        p_cod_empresa          => :P234_COD_EMPRESA,',
'                                        p_tip_comprobante      => :P234_TIP_COMPROBANTE,',
'                                        p_ser_comprobante      => :P234_SER_COMPROBANTE,',
'                                        p_nro_comprobante      => :P234_NRO_COMPROBANTE,',
'                                        p_cod_cliente          => :P234_COD_CLIENTE,',
'                                        p_mensaje_error        => :P0_ERROR);'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'&P0_ERROR. #SQLERRM#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(78072443812103123)
,p_process_sequence=>120
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Guarda Detalles'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'inv.vtpedido.pr_guarda_detalles(p_operacion       => :P234_OPERACION,',
'                                 p_nro_comprobante => :P234_NRO_COMPROBANTE,',
'                                 p_ser_comprobante => :P234_SER_COMPROBANTE,',
'                                 p_tip_comprobante => :P234_TIP_COMPROBANTE,',
'                                 p_mensaje_error    => :P0_ERROR);',
'',
''))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'&P0_ERROR. #SQLERRM#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(56077210904779725)
,p_process_sequence=>20
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(55983001397779669)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Inicializar pantalla VTPEDIDOF'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(63123780750930423)
,p_process_sequence=>30
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Obtiene datos '
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_collection.create_or_truncate_collection(p_collection_name => ''TMP_VTPEDIDO''); ',
'apex_collection.create_or_truncate_collection(p_collection_name => ''TMP_DETALLE2''); ',
'apex_collection.create_or_truncate_collection(p_collection_name => ''TMP_B_AUTVEN'');',
'apex_collection.create_or_truncate_collection(p_collection_name => ''TMP_ENTREGA'');',
'BEGIN',
'  Select  m.tipo_cambio_credito',
'    into :P234_CAMBIO_MONEDA_PRECIO',
'    from monedas m, parametros_generales p',
'   where p.cod_modulo = ''ST''',
'     and p.parametro = ''COD_MONEDA_PREC''',
'     and p.valor = m.cod_moneda',
'     AND ROWNUM = 1;',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN ',
'        :P234_CAMBIO_MONEDA_PRECIO := NULL;',
'  when others then',
'    :P234_CAMBIO_MONEDA_PRECIO := 1 ;',
'END;  ',
'',
':P234_COD_SUCURSAL := :P_COD_SUCURSAL;',
'',
'',
''))
,p_process_clob_language=>'PLSQL'
,p_process_when=>'P234_NRO_COMPROBANTE'
,p_process_when_type=>'ITEM_IS_NULL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(77481066564133426)
,p_process_sequence=>10
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'VALIDACION_PERMISOS'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  v_cod_empresa            VARCHAR2(2);',
'  v_cod_forma              VARCHAR2(500);',
'  v_cod_usuario            VARCHAR2(50);',
'  v_mantiene_precio        VARCHAR2(2);',
'  v_carga_sucursal         VARCHAR2(2);',
'  v_promo_anterior         VARCHAR2(2);',
'  v_puede_desanular_pedido VARCHAR2(2);',
'  v_carga_fecha            VARCHAR2(2);',
'  v_instalacion            VARCHAR2(2);',
'  v_descuento_30           VARCHAR2(2);',
'  v_descuento_307          VARCHAR2(2);',
'  v_carga_precios          VARCHAR2(2);',
'  v_carga_descuentos       VARCHAR2(2);',
'  v_carga_cotizacion       VARCHAR2(2);',
'  v_supera_descuento       VARCHAR2(2);',
'  v_ver_margen             VARCHAR2(2);',
'BEGIN',
'  v_cod_empresa := apex_application.g_x01;',
'  v_cod_forma   := apex_application.g_x02;',
'  v_cod_usuario := apex_application.g_x03;',
'',
'  v_mantiene_precio := busca_permiso(v_cod_empresa,',
'                                     v_cod_forma,',
'                                     v_cod_usuario,',
'                                     ''MANTIENE_PRECIO'');',
'',
'  v_carga_sucursal := busca_permiso(v_cod_empresa,',
'                                    v_cod_forma,',
'                                    v_cod_usuario,',
'                                    ''CARGA_SUCURSAL'');',
'',
'  v_promo_anterior := busca_permiso(v_cod_empresa,',
'                                    v_cod_forma,',
'                                    v_cod_usuario,',
'                                    ''AGREGA_PROMO_ANTERIOR'');',
'',
'  v_puede_desanular_pedido := busca_permiso(v_cod_empresa,',
'                                            v_cod_forma,',
'                                            v_cod_usuario,',
'                                            ''DESANULA_PEDIDO'');',
'',
'  v_carga_fecha := busca_permiso(v_cod_empresa,',
'                                 v_cod_forma,',
'                                 v_cod_usuario,',
'                                 ''MODIFICA FECHA ANTERIOR'');',
'  v_instalacion := busca_permiso(v_cod_empresa,',
'                                 v_cod_forma,',
'                                 v_cod_usuario,',
'                                 ''PRECIO_INSTALACION'');',
'',
'  v_descuento_30 := busca_permiso(v_cod_empresa,',
'                                  v_cod_forma,',
'                                  v_cod_usuario,',
'                                  ''CARGA_DESCUENTO_MAS_30'');',
'',
'  v_descuento_307 := busca_permiso(v_cod_empresa,',
'                                   v_cod_forma,',
'                                   v_cod_usuario,',
'                                   ''DESCUENTO_30_7'');',
'',
'  v_carga_precios := busca_permiso(v_cod_empresa,',
'                                   v_cod_forma,',
'                                   v_cod_usuario,',
'                                   ''CARGA PRECIOS'');',
'',
'  v_carga_descuentos := busca_permiso(v_cod_empresa,',
'                                      v_cod_forma,',
'                                      v_cod_usuario,',
'                                      ''CARGA DESCUENTOS'');',
'',
'  v_carga_cotizacion := busca_permiso(v_cod_empresa,',
'                                      v_cod_forma,',
'                                      v_cod_usuario,',
'                                      ''CARGA COTIZACION'');',
'',
'  v_supera_descuento := busca_permiso(v_cod_empresa,',
'                                      v_cod_forma,',
'                                      v_cod_usuario,',
'                                      ''SUPERA DESCUENTO MAX'');',
'',
'  v_ver_margen := busca_permiso(v_cod_empresa,',
'                                v_cod_forma,',
'                                v_cod_usuario,',
'                                ''VER_MARGEN'');',
'',
'  apex_json.open_object;',
'  apex_json.write(''success'', TRUE);',
'  apex_json.write(''p_mantiene_precio'', v_mantiene_precio);',
'  apex_json.write(''p_carga_sucursal'', v_carga_sucursal);',
'  apex_json.write(''p_promo_anterior'', v_promo_anterior);',
'  apex_json.write(''p_puede_desanular_pedido'', v_puede_desanular_pedido);',
'  apex_json.write(''p_carga_fecha'', v_carga_fecha);',
'  apex_json.write(''p_instalacion'', v_instalacion);',
'  apex_json.write(''p_descuento_30'', v_descuento_30);',
'  apex_json.write(''p_descuento_304'', v_descuento_307);',
'  apex_json.write(''p_carga_precios'', v_carga_precios);',
'  apex_json.write(''p_carga_descuentos'', v_carga_descuentos);',
'  apex_json.write(''p_carga_cotizacion'', v_carga_cotizacion);',
'  apex_json.write(''p_supera_descuento'', v_supera_descuento);',
'  apex_json.write(''p_ver_margen'', v_ver_margen);',
'  apex_json.close_object;',
'EXCEPTION',
'  WHEN OTHERS THEN',
'    apex_json.open_object;',
'    apex_json.write(''success'', FALSE);',
'    apex_json.close_object;',
'END;',
''))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(101873457554708138)
,p_process_sequence=>20
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'DETALLE_ENTREGA'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_fecha_entrega VARCHAR2(50);',
'    v_sucursal_dist VARCHAR2(50);',
'    v_cod_cliente   VARCHAR2(50);',
'    v_cantidad  NUMBER := 0;',
'  CURSOR  cur_detalles IS ',
'        SELECT seq_id,',
'             c001   AS cod_empresa,',
'             c002   AS tip_comprobante,',
'             c003   AS COD_MONEDA_BASE,',
'             c004   AS nro_comprobante,',
'             c005   AS cod_articulo,',
'             c006   AS cantidad,',
'             c007   AS cantidad_facturada,',
'             c008   AS monto_total,',
'             c009   AS total_iva,',
'             c010   AS precio_lista,',
'             c011   AS descuento,',
'             c012   AS precio_unitario,',
'             c013   AS porc_descuento,',
'             c014   AS costo_promedio_ref,',
'             c015   AS costo_promedio,',
'             c016   AS costo_condicion,',
'             c017   AS cod_unidad_medida,',
'             c018   AS cantidad_ub,',
'             c019   AS porc_recargo,',
'             c020   AS recargo,',
'             c021   AS cod_articulo_rel_bon,',
'             c022   AS porc_iva,',
'             c023   AS orden,',
'             c024   AS cod_iva,',
'             c025   AS control_fin,',
'             c026   AS cod_art_corto,',
'             c027   AS cantidad_pendiente,',
'             c028   AS cod_motivo_anu,',
'             c029   AS IND_NO_DESCUENTO,',
'             c030   AS volumen,',
'             c031   AS es_promo,',
'             c032   AS nro_promo,',
'             c033   AS des_articulo,',
'             c034   AS verificado,',
'             c035   AS ind_producto_armado,',
'             c036   AS ind_promo,',
'             c037   AS MODIFICO_PRECIO,',
'             c038   AS cantidad_entregada,',
'             c039   AS cod_estable,',
'             c040   AS monto_gravada_10,',
'             c041   AS monto_gravada_5,',
'             c042   AS monto_exenta,',
'             c043   AS articulo_regalo_promo,',
'             c044   AS cod_articulo_promo_ant,',
'             c045   AS ser_pedido_promo_ant,',
'             c046   AS nro_pedido_promo_ant,',
'             c047   AS nro_pedido_orden_promo_ant,',
'             c048   AS tip_factura,',
'             c049   AS ser_factura,',
'             c050   AS nro_factura,',
'             n001   AS cod_grupo_ant,',
'             n002   AS cod_origen_art,',
'             n003   AS iva_ant,',
'             n004   AS importe_ant,',
'             n005   AS total_peso',
'        FROM apex_collections',
'       WHERE collection_name = ''TMP_VTPEDIDO''',
'       AND c004 in (''A'', ''U'', ''X'');',
'BEGIN',
'    v_fecha_entrega := apex_application.g_x01;',
'    v_sucursal_dist := apex_application.g_x02;',
'    v_cod_cliente := apex_application.g_x03;',
'   apex_collection.create_or_truncate_collection(p_collection_name => ''TMP_ENTREGA'');     ',
'  FOR x IN cur_detalles LOOP ',
'        apex_collection.add_member(p_collection_name => ''TMP_ENTREGA'',',
'                                           p_c001            => x.cod_empresa,',
'                                           p_c002            => x.tip_comprobante,',
'                                           p_c003            => null,',
'                                           p_c004            => x.nro_comprobante,',
'                                           p_c005            => v_fecha_entrega,',
'                                           p_c006            => x.cod_art_corto,',
'                                           p_c007            => x.cod_articulo,',
'                                           p_c008            => x.DES_ARTICULO,',
'                                           p_N001            => x.cantidad,',
'                                           p_c010            => null,',
'                                           p_c011            => x.orden,',
'                                           p_c012            => null,',
'                                           p_c013            => null,',
'                                           p_c014            => null,',
'                                           p_c015            => null,',
'                                           p_c016            => null,',
'                                           p_c017            => v_sucursal_dist,',
'                                           p_c018            => null,',
'                                           p_c019            => null,',
'                                           p_c020            => v_cod_cliente,',
'                                           p_c021            => null',
'                                           );',
'  END LOOP;',
'',
'',
'',
'    BEGIN ',
'      SELECT SUM(N001)',
'      INTO v_cantidad',
'      FROM apex_collections',
'      WHERE collection_name = ''TMP_ENTREGA'';',
'    EXCEPTION ',
'        WHEN NO_DATA_FOUND THEN ',
'            v_cantidad := 0;',
'        WHEN OTHERS THEN ',
'            v_cantidad := 0;',
'    END;',
'  apex_json.open_object;',
'  apex_json.write(''success'', TRUE);',
'  apex_json.write(''p_cantidad'', v_cantidad);',
'  apex_json.close_object;',
'EXCEPTION',
'  WHEN OTHERS THEN',
'    apex_json.open_object;',
'    apex_json.write(''success'', FALSE);',
'    apex_json.close_object;',
'END;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(106523738542760528)
,p_process_sequence=>30
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'OBTIENE_PARAMETROS_REPORTE'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_cod_empresa VARCHAR2(500);',
'    v_tip_comprobante VARCHAR2(500);',
'    v_ser_comprobante   VARCHAR2(500);',
'    v_nro_comprobante  NUMBER;',
'    v_cod_cliente   VARCHAR2(500);',
'    v_ori_dup   varchar2(500);',
'    v_venta_actual_gs   varchar2(500);',
'    v_venta_actual_us   varchar2(500);',
'    v_venta_anterior_gs varchar2(500);',
'    v_venta_anterior_us varchar2(500);',
'    v_garantia_anio_ant number;',
'    v_repuesto_ant  varchar2(500);',
'    v_garantia_anio_act number;',
'    v_repuesto_act  number;',
'    v_garantia_ant  number;',
'    v_garantia_act  number;',
'    v_publicidad_ant    number;',
'    v_publicidad_act    number;',
'    v_vpedgs    number;',
'    v_vpedus    number;',
'    v_puntaje   number;',
'    v_gar       varchar2(500);',
'    v_par   varchar2(500);',
'    v_compra_mes    number;',
'    v_pago_mes  number;',
'BEGIN',
'    v_cod_empresa := apex_application.g_x01;',
'    v_tip_comprobante := apex_application.g_x02;',
'    v_ser_comprobante := apex_application.g_x03; ',
'    v_nro_comprobante := apex_application.g_x04; ',
'    ',
'    inv.vtpedido.pr_cargar_parametros(p_cod_empresa  => v_cod_empresa,',
'                                   p_tip_comprobante   => v_tip_comprobante,',
'                                   p_ser_comprobante   => v_ser_comprobante,',
'                                   p_nro_comprobante   => v_nro_comprobante,',
'                                   p_cod_cliente       => v_cod_cliente,',
'                                   p_ori_dup           => v_ori_dup,',
'                                   p_venta_actual_gs   => v_venta_actual_gs,',
'                                   p_venta_actual_us   => v_venta_actual_us,',
'                                   p_venta_anterior_gs => v_venta_anterior_gs,',
'                                   p_venta_anterior_us => v_venta_anterior_us,',
'                                   p_garantia_anio_ant => v_garantia_anio_ant,',
'                                   p_repuesto_ant      => v_repuesto_ant,',
'                                   p_garantia_anio_act => v_garantia_anio_act,',
'                                   p_repuesto_act      => v_repuesto_act,',
'                                   p_garantia_ant      => v_garantia_ant,',
'                                   p_garantia_act      => v_garantia_act,',
'                                   p_publicidad_ant    => v_publicidad_ant,',
'                                   p_publicidad_act    => v_publicidad_act,',
'                                   p_vpedgs              => v_vpedgs,',
'                                   p_vpedus              => v_vpedus,',
'                                   p_puntaje             => v_puntaje,',
'                                   p_gar               => v_gar,',
'                                   p_par               => v_par,',
'                                   p_compra_mes        => v_compra_mes,',
'                                   p_pago_mes          => v_pago_mes);',
'',
'  apex_json.open_object;',
'  apex_json.write(''success'', TRUE);',
'  apex_json.write(''p_cod_cliente'', v_cod_cliente);',
'    apex_json.write(''p_ori_dup'', v_ori_dup);',
'    apex_json.write(''p_venta_actual_gs'', v_venta_actual_gs);',
'    apex_json.write(''p_venta_actual_us'', v_venta_actual_us);',
'    apex_json.write(''p_venta_anterior_gs'', v_venta_anterior_gs);',
'    apex_json.write(''p_venta_anterior_us'', v_venta_anterior_us);',
'    apex_json.write(''p_garantia_anio_ant'', v_garantia_anio_ant);',
'    apex_json.write(''p_repuesto_ant'', v_repuesto_ant);',
'    apex_json.write(''p_garantia_anio_act'', v_garantia_anio_act);',
'    apex_json.write(''p_repuesto_act'', v_repuesto_act);',
'    apex_json.write(''p_garantia_ant'', v_garantia_ant);',
'    apex_json.write(''p_garantia_act'', v_garantia_act);',
'    apex_json.write(''p_publicidad_ant'', v_publicidad_ant);',
'    apex_json.write(''p_publicidad_act'', v_publicidad_act);',
'    apex_json.write(''vpedgs'', v_vpedgs);',
'    apex_json.write(''vpedus'', v_vpedus);',
'    apex_json.write(''puntaje'', v_puntaje);',
'    apex_json.write(''p_gar'', v_gar);',
'    apex_json.write(''p_par'', v_par);',
'    apex_json.write(''p_compra_mes'', v_compra_mes);',
'    apex_json.write(''p_pago_mes'', v_pago_mes);',
'  apex_json.close_object;',
'EXCEPTION',
'  WHEN OTHERS THEN',
'    apex_json.open_object;',
'    apex_json.write(''success'', FALSE);',
'    apex_json.close_object;',
'END;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp.component_end;
end;
/
