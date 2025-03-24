prompt --application/pages/page_00354
begin
--   Manifest
--     PAGE: 00354
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
 p_id=>354
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'VTPRESUPUESTOF'
,p_alias=>'VTPRESUPUESTOF'
,p_step_title=>'VTPRESUPUESTOF'
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
''))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
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
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'02'
,p_last_updated_by=>'PBOGADO'
,p_last_upd_yyyymmddhh24miss=>'20241008080422'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(152938812125635215)
,p_plug_name=>'VTPRESUPUESTOF'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_query_type=>'TABLE'
,p_query_table=>'VT_PRESUPUESTO_CABECERA'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(151965007236185672)
,p_plug_name=>'Cabecera'
,p_parent_plug_id=>wwv_flow_imp.id(152938812125635215)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody:t-Form--noPadding'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(96864709740522114)
,p_plug_name=>'Presupuestos'
,p_parent_plug_id=>wwv_flow_imp.id(151965007236185672)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>50
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(96864839230522115)
,p_plug_name=>'Clientes'
,p_parent_plug_id=>wwv_flow_imp.id(151965007236185672)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>60
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(96864991977522116)
,p_plug_name=>'Pedidos'
,p_parent_plug_id=>wwv_flow_imp.id(151965007236185672)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>70
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(151966019246185683)
,p_plug_name=>'Datos Personales'
,p_parent_plug_id=>wwv_flow_imp.id(152938812125635215)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(178823919464881707)
,p_plug_name=>'BARRA'
,p_parent_plug_id=>wwv_flow_imp.id(152938812125635215)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>5
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(181934829021957221)
,p_plug_name=>'izquierda'
,p_parent_plug_id=>wwv_flow_imp.id(178823919464881707)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(153030021809635267)
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
 p_id=>wwv_flow_imp.id(153944960599215983)
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
 p_id=>wwv_flow_imp.id(151965082127185673)
,p_plug_name=>'Cabecera_2'
,p_parent_plug_id=>wwv_flow_imp.id(153944960599215983)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>140
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(151967092667185693)
,p_plug_name=>'Detalles1'
,p_region_name=>'detalles'
,p_parent_plug_id=>wwv_flow_imp.id(153944960599215983)
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
'             (inv.vtpresupuesto.fn_agrega_estilos(p_ser_comprobante    => :P354_SER_COMPROBANTE,',
'                                              p_nro_comprobante   => :P354_NRO_COMPROBANTE,',
'                                              p_cod_articulo       => c005,',
'                                              p_cantidad           => to_number(replace(c006,  ''.'')),',
'                                              p_cab_estado         => :P354_ESTADO,',
'                                              p_cod_motivo_anu     => c028,',
'                                              p_cantidad_facturada => to_number(replace(c007,  ''.'')))) situ,',
'                                              case when nvl(to_number(replace(c008,''.'',null)),0)>1 then',
'ROUND((nvl(to_number(replace(c008,''.'',null)),0)-',
'',
'((  ',
'      select nvl(costo_prom_nue,0)/ decode(:P354_FEC_COMPROBANTE,''2'',:P354_TIP_CAMBIO, 1)',
'    ',
'        from st_costos_art',
'       where cod_empresa = :P_COD_EMPRESA',
'         and cod_articulo = c005',
'         and tip_comprobante <> ''INI''',
'         and  nvl(fec_proceso,fec_comprobante) <= :P354_FEC_COMPROBANTE',
'         and to_char(nvl(fec_proceso, fec_comprobante),''yyyy/mm/dd'') || rowid =',
'                               ( select max(to_char(nvl(fec_proceso, fec_comprobante),''yyyy/mm/dd'')||rowid)',
'                                  from st_costos_art',
'                                 where cod_empresa =:P_COD_EMPRESA',
'                                   and cod_articulo = c005',
'                                   and tip_comprobante <> ''INI''',
'                                   and nvl(fec_proceso, fec_comprobante) <= :P354_FEC_COMPROBANTE) ))',
'',
'*c006)/nvl(to_number(replace(c008,''.'',null)),0)*100,2) else 0 end ',
'MARGEN',
'',
'        FROM apex_collections',
'       WHERE collection_name = ''TMP_VTPEDIDO''',
'       AND c004 in (''A'', ''U'', ''X'');'))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P354_SER_COMPROBANTE,P354_NRO_COMPROBANTE,P354_ESTADO,P354_FEC_COMPROBANTE,P354_TIP_CAMBIO'
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
 p_id=>wwv_flow_imp.id(151967256050185695)
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
 p_id=>wwv_flow_imp.id(151967336433185696)
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
 p_id=>wwv_flow_imp.id(153936510387215848)
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
 p_id=>wwv_flow_imp.id(153936543941215849)
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
 p_id=>wwv_flow_imp.id(153936650261215850)
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
 p_id=>wwv_flow_imp.id(153936745964215851)
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
 p_id=>wwv_flow_imp.id(153937003440215853)
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
 p_id=>wwv_flow_imp.id(153937017933215854)
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
 p_id=>wwv_flow_imp.id(153937124643215855)
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
 p_id=>wwv_flow_imp.id(153937230643215856)
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
 p_id=>wwv_flow_imp.id(153937415838215858)
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
 p_id=>wwv_flow_imp.id(153937597241215859)
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
 p_id=>wwv_flow_imp.id(153937680829215860)
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
 p_id=>wwv_flow_imp.id(153937850012215862)
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
 p_id=>wwv_flow_imp.id(153937980834215863)
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
 p_id=>wwv_flow_imp.id(153938065679215864)
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
 p_id=>wwv_flow_imp.id(153938173913215865)
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
 p_id=>wwv_flow_imp.id(153938228388215866)
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
 p_id=>wwv_flow_imp.id(153938406539215867)
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
 p_id=>wwv_flow_imp.id(153938454935215868)
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
 p_id=>wwv_flow_imp.id(153938515157215869)
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
 p_id=>wwv_flow_imp.id(153938662039215870)
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
 p_id=>wwv_flow_imp.id(153938741549215871)
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
 p_id=>wwv_flow_imp.id(153938816361215872)
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
 p_id=>wwv_flow_imp.id(153939006662215873)
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
 p_id=>wwv_flow_imp.id(153939196560215875)
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
 p_id=>wwv_flow_imp.id(153939312713215877)
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
 p_id=>wwv_flow_imp.id(153939480064215878)
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
 p_id=>wwv_flow_imp.id(153939707598215880)
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
 p_id=>wwv_flow_imp.id(153939867062215882)
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
 p_id=>wwv_flow_imp.id(153940386911215887)
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
 p_id=>wwv_flow_imp.id(153940412049215888)
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
 p_id=>wwv_flow_imp.id(153940597117215889)
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
 p_id=>wwv_flow_imp.id(153940706275215890)
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
 p_id=>wwv_flow_imp.id(153940761901215891)
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
 p_id=>wwv_flow_imp.id(153940876927215892)
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
 p_id=>wwv_flow_imp.id(153941005603215893)
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
 p_id=>wwv_flow_imp.id(153941062595215894)
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
 p_id=>wwv_flow_imp.id(153941199529215895)
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
 p_id=>wwv_flow_imp.id(153941273762215896)
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
 p_id=>wwv_flow_imp.id(153941409832215947)
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
 p_id=>wwv_flow_imp.id(153941500487215948)
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
 p_id=>wwv_flow_imp.id(153941683079215950)
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
 p_id=>wwv_flow_imp.id(153941794579215951)
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
 p_id=>wwv_flow_imp.id(155285839664186883)
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
 p_id=>wwv_flow_imp.id(155285990011186884)
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
 p_id=>wwv_flow_imp.id(155286037940186885)
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
 p_id=>wwv_flow_imp.id(155286168129186886)
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
 p_id=>wwv_flow_imp.id(156696983019887190)
,p_name=>'APEX$ROW_ACTION'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_use_as_row_header=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(156697084450887191)
,p_name=>'APEX$ROW_SELECTOR'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>10
,p_attribute_01=>'Y'
,p_attribute_02=>'Y'
,p_attribute_03=>'Y'
,p_use_as_row_header=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(156697220243887193)
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
 p_id=>wwv_flow_imp.id(157869178574818049)
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
 p_id=>wwv_flow_imp.id(157869218315818050)
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
 p_id=>wwv_flow_imp.id(157869399804818051)
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
 p_id=>wwv_flow_imp.id(157869411468818052)
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
 p_id=>wwv_flow_imp.id(157869708109818054)
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
 p_id=>wwv_flow_imp.id(157869774036818055)
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
 p_id=>wwv_flow_imp.id(160080210290785975)
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
 p_id=>wwv_flow_imp.id(160080212940785976)
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
 p_id=>wwv_flow_imp.id(160080319041785977)
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
 p_id=>wwv_flow_imp.id(160080479145785978)
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
 p_id=>wwv_flow_imp.id(160081060210785984)
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
 p_id=>wwv_flow_imp.id(160081192297785985)
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
 p_id=>wwv_flow_imp.id(160081591580785989)
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
 p_id=>wwv_flow_imp.id(168959723665559650)
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
 p_id=>wwv_flow_imp.id(168960514060559658)
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
 p_id=>wwv_flow_imp.id(168963913313559692)
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
 p_id=>wwv_flow_imp.id(178136690797034158)
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
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(650047782212536533)
,p_name=>'MARGEN'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MARGEN'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Margen'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>729
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
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(151967119466185694)
,p_internal_uid=>151967119466185694
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
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(153947265684216236)
,p_interactive_grid_id=>wwv_flow_imp.id(151967119466185694)
,p_static_id=>'569915'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(153947429359216236)
,p_report_id=>wwv_flow_imp.id(153947265684216236)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(96979396553945935)
,p_view_id=>wwv_flow_imp.id(153947429359216236)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(156696983019887190)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>40
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(97003916006011432)
,p_view_id=>wwv_flow_imp.id(153947429359216236)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(156697220243887193)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>379
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(153947976425216240)
,p_view_id=>wwv_flow_imp.id(153947429359216236)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(151967256050185695)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(153948836950216252)
,p_view_id=>wwv_flow_imp.id(153947429359216236)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(151967336433185696)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(153950621112216258)
,p_view_id=>wwv_flow_imp.id(153947429359216236)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(153936510387215848)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(153951609473216261)
,p_view_id=>wwv_flow_imp.id(153947429359216236)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(153936543941215849)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>109
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(153952459593216264)
,p_view_id=>wwv_flow_imp.id(153947429359216236)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(153936650261215850)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>71
,p_sort_order=>2
,p_sort_direction=>'ASC'
,p_sort_nulls=>'LAST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(153953355754216266)
,p_view_id=>wwv_flow_imp.id(153947429359216236)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(153936745964215851)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(153955159848216272)
,p_view_id=>wwv_flow_imp.id(153947429359216236)
,p_display_seq=>24
,p_column_id=>wwv_flow_imp.id(153937003440215853)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>95
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(153956028991216275)
,p_view_id=>wwv_flow_imp.id(153947429359216236)
,p_display_seq=>22
,p_column_id=>wwv_flow_imp.id(153937017933215854)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>76
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(153956970096216277)
,p_view_id=>wwv_flow_imp.id(153947429359216236)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(153937124643215855)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(153957866070216280)
,p_view_id=>wwv_flow_imp.id(153947429359216236)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(153937230643215856)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>80
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(153959680234216285)
,p_view_id=>wwv_flow_imp.id(153947429359216236)
,p_display_seq=>14
,p_column_id=>wwv_flow_imp.id(153937415838215858)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>91
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(153960517312216288)
,p_view_id=>wwv_flow_imp.id(153947429359216236)
,p_display_seq=>15
,p_column_id=>wwv_flow_imp.id(153937597241215859)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(153961412094216291)
,p_view_id=>wwv_flow_imp.id(153947429359216236)
,p_display_seq=>16
,p_column_id=>wwv_flow_imp.id(153937680829215860)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(153963243354216296)
,p_view_id=>wwv_flow_imp.id(153947429359216236)
,p_display_seq=>17
,p_column_id=>wwv_flow_imp.id(153937850012215862)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(153964156779216299)
,p_view_id=>wwv_flow_imp.id(153947429359216236)
,p_display_seq=>18
,p_column_id=>wwv_flow_imp.id(153937980834215863)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(153965105266216301)
,p_view_id=>wwv_flow_imp.id(153947429359216236)
,p_display_seq=>19
,p_column_id=>wwv_flow_imp.id(153938065679215864)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>80
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(153965918980216304)
,p_view_id=>wwv_flow_imp.id(153947429359216236)
,p_display_seq=>20
,p_column_id=>wwv_flow_imp.id(153938173913215865)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(153966869758216307)
,p_view_id=>wwv_flow_imp.id(153947429359216236)
,p_display_seq=>21
,p_column_id=>wwv_flow_imp.id(153938228388215866)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(153967793157216310)
,p_view_id=>wwv_flow_imp.id(153947429359216236)
,p_display_seq=>23
,p_column_id=>wwv_flow_imp.id(153938406539215867)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(153968629217216312)
,p_view_id=>wwv_flow_imp.id(153947429359216236)
,p_display_seq=>25
,p_column_id=>wwv_flow_imp.id(153938454935215868)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(153969514528216315)
,p_view_id=>wwv_flow_imp.id(153947429359216236)
,p_display_seq=>26
,p_column_id=>wwv_flow_imp.id(153938515157215869)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(153970495622216318)
,p_view_id=>wwv_flow_imp.id(153947429359216236)
,p_display_seq=>27
,p_column_id=>wwv_flow_imp.id(153938662039215870)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(153971241263216320)
,p_view_id=>wwv_flow_imp.id(153947429359216236)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(153938741549215871)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>78
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(153972207133216323)
,p_view_id=>wwv_flow_imp.id(153947429359216236)
,p_display_seq=>28
,p_column_id=>wwv_flow_imp.id(153938816361215872)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(153973079218216326)
,p_view_id=>wwv_flow_imp.id(153947429359216236)
,p_display_seq=>29
,p_column_id=>wwv_flow_imp.id(153939006662215873)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(153974887996216331)
,p_view_id=>wwv_flow_imp.id(153947429359216236)
,p_display_seq=>30
,p_column_id=>wwv_flow_imp.id(153939196560215875)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(153976661453216336)
,p_view_id=>wwv_flow_imp.id(153947429359216236)
,p_display_seq=>31
,p_column_id=>wwv_flow_imp.id(153939312713215877)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(153977528725216339)
,p_view_id=>wwv_flow_imp.id(153947429359216236)
,p_display_seq=>32
,p_column_id=>wwv_flow_imp.id(153939480064215878)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(153979344184216344)
,p_view_id=>wwv_flow_imp.id(153947429359216236)
,p_display_seq=>33
,p_column_id=>wwv_flow_imp.id(153939707598215880)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(153981189492216350)
,p_view_id=>wwv_flow_imp.id(153947429359216236)
,p_display_seq=>34
,p_column_id=>wwv_flow_imp.id(153939867062215882)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(153985643752216364)
,p_view_id=>wwv_flow_imp.id(153947429359216236)
,p_display_seq=>35
,p_column_id=>wwv_flow_imp.id(153940386911215887)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(153986564631216366)
,p_view_id=>wwv_flow_imp.id(153947429359216236)
,p_display_seq=>36
,p_column_id=>wwv_flow_imp.id(153940412049215888)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(153987492824216369)
,p_view_id=>wwv_flow_imp.id(153947429359216236)
,p_display_seq=>37
,p_column_id=>wwv_flow_imp.id(153940597117215889)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(153988380964216372)
,p_view_id=>wwv_flow_imp.id(153947429359216236)
,p_display_seq=>38
,p_column_id=>wwv_flow_imp.id(153940706275215890)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(153989287437216375)
,p_view_id=>wwv_flow_imp.id(153947429359216236)
,p_display_seq=>39
,p_column_id=>wwv_flow_imp.id(153940761901215891)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(153990201637216377)
,p_view_id=>wwv_flow_imp.id(153947429359216236)
,p_display_seq=>40
,p_column_id=>wwv_flow_imp.id(153940876927215892)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(153991104618216380)
,p_view_id=>wwv_flow_imp.id(153947429359216236)
,p_display_seq=>41
,p_column_id=>wwv_flow_imp.id(153941005603215893)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(153991992174216383)
,p_view_id=>wwv_flow_imp.id(153947429359216236)
,p_display_seq=>42
,p_column_id=>wwv_flow_imp.id(153941062595215894)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(153992834030216385)
,p_view_id=>wwv_flow_imp.id(153947429359216236)
,p_display_seq=>43
,p_column_id=>wwv_flow_imp.id(153941199529215895)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(153993787810216388)
,p_view_id=>wwv_flow_imp.id(153947429359216236)
,p_display_seq=>44
,p_column_id=>wwv_flow_imp.id(153941273762215896)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(153994659508216391)
,p_view_id=>wwv_flow_imp.id(153947429359216236)
,p_display_seq=>45
,p_column_id=>wwv_flow_imp.id(153941409832215947)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(153995602786216393)
,p_view_id=>wwv_flow_imp.id(153947429359216236)
,p_display_seq=>46
,p_column_id=>wwv_flow_imp.id(153941500487215948)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(153997337794216399)
,p_view_id=>wwv_flow_imp.id(153947429359216236)
,p_display_seq=>47
,p_column_id=>wwv_flow_imp.id(153941683079215950)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>61
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(153998307149216401)
,p_view_id=>wwv_flow_imp.id(153947429359216236)
,p_display_seq=>48
,p_column_id=>wwv_flow_imp.id(153941794579215951)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(155493793822605032)
,p_view_id=>wwv_flow_imp.id(153947429359216236)
,p_display_seq=>49
,p_column_id=>wwv_flow_imp.id(155285839664186883)
,p_is_visible=>false
,p_is_frozen=>false
,p_sort_order=>1
,p_sort_direction=>'DESC'
,p_sort_nulls=>'LAST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(155494640680605036)
,p_view_id=>wwv_flow_imp.id(153947429359216236)
,p_display_seq=>50
,p_column_id=>wwv_flow_imp.id(155285990011186884)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(155495527880605038)
,p_view_id=>wwv_flow_imp.id(153947429359216236)
,p_display_seq=>51
,p_column_id=>wwv_flow_imp.id(155286037940186885)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(155496507864605041)
,p_view_id=>wwv_flow_imp.id(153947429359216236)
,p_display_seq=>52
,p_column_id=>wwv_flow_imp.id(155286168129186886)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(158042272080177249)
,p_view_id=>wwv_flow_imp.id(153947429359216236)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(157869178574818049)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>105
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(158149679597433316)
,p_view_id=>wwv_flow_imp.id(153947429359216236)
,p_display_seq=>53
,p_column_id=>wwv_flow_imp.id(157869218315818050)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(158150517719433318)
,p_view_id=>wwv_flow_imp.id(153947429359216236)
,p_display_seq=>54
,p_column_id=>wwv_flow_imp.id(157869399804818051)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(158151359876433320)
,p_view_id=>wwv_flow_imp.id(153947429359216236)
,p_display_seq=>55
,p_column_id=>wwv_flow_imp.id(157869411468818052)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(158170535880480523)
,p_view_id=>wwv_flow_imp.id(153947429359216236)
,p_display_seq=>56
,p_column_id=>wwv_flow_imp.id(157869708109818054)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(158258103079612542)
,p_view_id=>wwv_flow_imp.id(153947429359216236)
,p_display_seq=>57
,p_column_id=>wwv_flow_imp.id(157869774036818055)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(164333266648180041)
,p_view_id=>wwv_flow_imp.id(153947429359216236)
,p_display_seq=>58
,p_column_id=>wwv_flow_imp.id(160080210290785975)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(164336195170217373)
,p_view_id=>wwv_flow_imp.id(153947429359216236)
,p_display_seq=>59
,p_column_id=>wwv_flow_imp.id(160080212940785976)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(164338235286243702)
,p_view_id=>wwv_flow_imp.id(153947429359216236)
,p_display_seq=>60
,p_column_id=>wwv_flow_imp.id(160080319041785977)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(164345044859296051)
,p_view_id=>wwv_flow_imp.id(153947429359216236)
,p_display_seq=>61
,p_column_id=>wwv_flow_imp.id(160080479145785978)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(164401417251804345)
,p_view_id=>wwv_flow_imp.id(153947429359216236)
,p_display_seq=>62
,p_column_id=>wwv_flow_imp.id(160081060210785984)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(164451857395002030)
,p_view_id=>wwv_flow_imp.id(153947429359216236)
,p_display_seq=>63
,p_column_id=>wwv_flow_imp.id(160081192297785985)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(164711661617732514)
,p_view_id=>wwv_flow_imp.id(153947429359216236)
,p_display_seq=>64
,p_column_id=>wwv_flow_imp.id(160081591580785989)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(170661442273158939)
,p_view_id=>wwv_flow_imp.id(153947429359216236)
,p_display_seq=>67
,p_column_id=>wwv_flow_imp.id(168959723665559650)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(173452818014541163)
,p_view_id=>wwv_flow_imp.id(153947429359216236)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(168960514060559658)
,p_is_visible=>true
,p_is_frozen=>true
,p_width=>95
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(174398983724872627)
,p_view_id=>wwv_flow_imp.id(153947429359216236)
,p_display_seq=>66
,p_column_id=>wwv_flow_imp.id(168963913313559692)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>95
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(179230140540600313)
,p_view_id=>wwv_flow_imp.id(153947429359216236)
,p_display_seq=>68
,p_column_id=>wwv_flow_imp.id(178136690797034158)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>40
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(708379686847948253)
,p_view_id=>wwv_flow_imp.id(153947429359216236)
,p_display_seq=>65
,p_column_id=>wwv_flow_imp.id(650047782212536533)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>95
);
wwv_flow_imp_page.create_ig_report_highlight(
 p_id=>wwv_flow_imp.id(96985780447879463)
,p_view_id=>wwv_flow_imp.id(153947429359216236)
,p_execution_seq=>5
,p_name=>'Sin Stock - Rojo'
,p_background_color=>'#ff0000'
,p_text_color=>'#ffffff'
,p_condition_type=>'COLUMN'
,p_condition_column_id=>wwv_flow_imp.id(178136690797034158)
,p_condition_operator=>'EQ'
,p_condition_is_case_sensitive=>true
,p_condition_expression=>'ROJO'
,p_is_enabled=>true
);
wwv_flow_imp_page.create_ig_report_highlight(
 p_id=>wwv_flow_imp.id(97012536726863878)
,p_view_id=>wwv_flow_imp.id(153947429359216236)
,p_execution_seq=>15
,p_name=>'Anulado / Cerrado'
,p_background_color=>'#808080'
,p_text_color=>'#ffffff'
,p_condition_type=>'COLUMN'
,p_condition_column_id=>wwv_flow_imp.id(178136690797034158)
,p_condition_operator=>'EQ'
,p_condition_is_case_sensitive=>false
,p_condition_expression=>'GRIS'
,p_is_enabled=>true
);
wwv_flow_imp_page.create_ig_report_highlight(
 p_id=>wwv_flow_imp.id(97041010334869900)
,p_view_id=>wwv_flow_imp.id(153947429359216236)
,p_execution_seq=>12.5
,p_name=>'Sock Completo  - Verde'
,p_background_color=>'#008000'
,p_text_color=>'#ffffff'
,p_condition_type=>'COLUMN'
,p_condition_column_id=>wwv_flow_imp.id(178136690797034158)
,p_condition_operator=>'EQ'
,p_condition_is_case_sensitive=>false
,p_condition_expression=>'VERDE'
,p_is_enabled=>true
);
wwv_flow_imp_page.create_ig_report_highlight(
 p_id=>wwv_flow_imp.id(97186982966951810)
,p_view_id=>wwv_flow_imp.id(153947429359216236)
,p_execution_seq=>10
,p_name=>unistr('Stock en Perif\00E9ricos - Amarillo')
,p_background_color=>'#ffff00'
,p_text_color=>'#000000'
,p_condition_type=>'COLUMN'
,p_condition_column_id=>wwv_flow_imp.id(178136690797034158)
,p_condition_operator=>'EQ'
,p_condition_is_case_sensitive=>true
,p_condition_expression=>'AMARILLO'
,p_is_enabled=>true
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(153942470423215958)
,p_plug_name=>'Detalles Generales'
,p_parent_plug_id=>wwv_flow_imp.id(153944960599215983)
,p_region_template_options=>'#DEFAULT#:t-Form--noPadding'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>110
,p_plug_grid_column_span=>7
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(153942585131215959)
,p_plug_name=>'Detalle_2'
,p_parent_plug_id=>wwv_flow_imp.id(153944960599215983)
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
 p_id=>wwv_flow_imp.id(153945787169215991)
,p_plug_name=>'Totalizadores'
,p_parent_plug_id=>wwv_flow_imp.id(153942585131215959)
,p_region_template_options=>'#DEFAULT#:t-Form--noPadding'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(165054418161834476)
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
 p_id=>wwv_flow_imp.id(164930523575622966)
,p_plug_name=>'Detalles_principal'
,p_parent_plug_id=>wwv_flow_imp.id(165054418161834476)
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
 p_id=>wwv_flow_imp.id(165839746454981970)
,p_plug_name=>'Botones'
,p_parent_plug_id=>wwv_flow_imp.id(164930523575622966)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(168964040565559693)
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
 p_id=>wwv_flow_imp.id(175029362266958680)
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
 p_id=>wwv_flow_imp.id(180690693636647067)
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
 p_id=>wwv_flow_imp.id(180690900019647069)
,p_plug_name=>'B_AUTVEN_DETALLES'
,p_parent_plug_id=>wwv_flow_imp.id(180690693636647067)
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
 p_id=>wwv_flow_imp.id(180691063101647071)
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
 p_id=>wwv_flow_imp.id(180691208005647072)
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
 p_id=>wwv_flow_imp.id(180691006764647070)
,p_internal_uid=>180691006764647070
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
 p_id=>wwv_flow_imp.id(182219936491152849)
,p_interactive_grid_id=>wwv_flow_imp.id(180691006764647070)
,p_static_id=>'852642'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(182220186646152850)
,p_report_id=>wwv_flow_imp.id(182219936491152849)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(182220667873152853)
,p_view_id=>wwv_flow_imp.id(182220186646152850)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(180691063101647071)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(182221580912152857)
,p_view_id=>wwv_flow_imp.id(182220186646152850)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(180691208005647072)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(180691869830647079)
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
 p_id=>wwv_flow_imp.id(180691933448647080)
,p_plug_name=>'Presupuestos'
,p_parent_plug_id=>wwv_flow_imp.id(180691869830647079)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(97179551617855680)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(165839746454981970)
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
 p_id=>wwv_flow_imp.id(97179993752855680)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(165839746454981970)
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
 p_id=>wwv_flow_imp.id(100753786787778603)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(181934829021957221)
,p_button_name=>'Copiar_pedido'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Presupuesto'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-copy'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(97180381555855680)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(165839746454981970)
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
 p_id=>wwv_flow_imp.id(100754149144778603)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(181934829021957221)
,p_button_name=>'Ver_pedido'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Imprimir'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-materialized-view'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(390605070433583007)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(181934829021957221)
,p_button_name=>'Ver_margen'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Margen'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-materialized-view'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
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
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(97027594570855606)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(181934829021957221)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Salir'
,p_button_redirect_url=>'f?p=&APP_ID.:353:&SESSION.::&DEBUG.:354::'
,p_icon_css_classes=>'fa-reply'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(97203243682855692)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_imp.id(180691933448647080)
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
 p_id=>wwv_flow_imp.id(97202431923855691)
,p_button_sequence=>100
,p_button_plug_id=>wwv_flow_imp.id(180691933448647080)
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
 p_id=>wwv_flow_imp.id(97202801262855692)
,p_button_sequence=>110
,p_button_plug_id=>wwv_flow_imp.id(180691933448647080)
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
 p_id=>wwv_flow_imp.id(97026396645855606)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(153030021809635267)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Modificar'
,p_button_position=>'CLOSE'
,p_button_condition=>'P354_COD_CLIENTE'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_icon_css_classes=>'fa-save'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(97026719122855606)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(153030021809635267)
,p_button_name=>'CREATE'
,p_button_static_id=>'CREATE'
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
 p_id=>wwv_flow_imp.id(97027903350855606)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(153030021809635267)
,p_button_name=>'CREATE_1'
,p_button_static_id=>'crear'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Guardare'
,p_button_position=>'DELETE'
,p_icon_css_classes=>'fa-save'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(97027190968855606)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(153030021809635267)
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
,p_button_condition=>'P354_COD_CLIENTE'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_icon_css_classes=>'fa-times-square-o'
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(97318434993855748)
,p_branch_name=>unistr('Ir a P\00E1gina 353')
,p_branch_action=>'f?p=&APP_ID.:353:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(96864095367522107)
,p_name=>'P354_NRO_CONTACTO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(152938812125635215)
,p_item_source_plug_id=>wwv_flow_imp.id(152938812125635215)
,p_source=>'NRO_CONTACTO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(96864198764522108)
,p_name=>'P354_GARANTIA'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_imp.id(96864709740522114)
,p_item_source_plug_id=>wwv_flow_imp.id(152938812125635215)
,p_item_default=>'12 MESES'
,p_prompt=>unistr('Garant\00EDa')
,p_source=>'GARANTIA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC2:12 MESES;12 MESES,6 MESES;6 MESES,1 MES;1 MES,SIN GARANTIA;SIN GARANTIA'
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
 p_id=>wwv_flow_imp.id(96864275577522109)
,p_name=>'P354_VALIDEZ'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(96864991977522116)
,p_item_source_plug_id=>wwv_flow_imp.id(152938812125635215)
,p_prompt=>'Validez'
,p_source=>'VALIDEZ'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>10
,p_tag_css_classes=>'allow_only_numbers'
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(96864318067522110)
,p_name=>'P354_CORREO_CLIENTE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(96864839230522115)
,p_item_source_plug_id=>wwv_flow_imp.id(152938812125635215)
,p_prompt=>'Correo'
,p_source=>'CORREO_CLIENTE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>90
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
 p_id=>wwv_flow_imp.id(96864478773522111)
,p_name=>'P354_DERIVADO'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(152938812125635215)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(96864577778522112)
,p_name=>'P354_IND_CONFIRMAR_FACTURA'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(152938812125635215)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(96864697856522113)
,p_name=>'P354_FECHA_TOPE_FACTURACION'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(152938812125635215)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(96866022173522127)
,p_name=>'P354_IND_TIPO_PEDIDO'
,p_item_sequence=>1000
,p_item_plug_id=>wwv_flow_imp.id(151965007236185672)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(96866368075522130)
,p_name=>'P354_NOM_SUCURSAL'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(153942470423215958)
,p_prompt=>'Sucursal'
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
 p_id=>wwv_flow_imp.id(96957994944855549)
,p_name=>'P354_TIP_CAMBIO_COMPRA'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(151965007236185672)
,p_item_source_plug_id=>wwv_flow_imp.id(152938812125635215)
,p_source=>'TIP_CAMBIO_COMPRA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(96958353601855551)
,p_name=>'P354_COD_EMPRESA'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(151965007236185672)
,p_item_source_plug_id=>wwv_flow_imp.id(152938812125635215)
,p_item_default=>'1'
,p_source=>'COD_EMPRESA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(96958751144855551)
,p_name=>'P354_TIP_COMPROBANTE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(151965007236185672)
,p_item_source_plug_id=>wwv_flow_imp.id(152938812125635215)
,p_item_default=>'PED'
,p_source=>'TIP_COMPROBANTE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(96959112868855551)
,p_name=>'P354_COD_SUCURSAL'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(96864709740522114)
,p_item_source_plug_id=>wwv_flow_imp.id(152938812125635215)
,p_item_default=>'01'
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
 p_id=>wwv_flow_imp.id(96959582626855552)
,p_name=>'P354_SER_COMPROBANTE'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_is_primary_key=>true
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(96864709740522114)
,p_item_source_plug_id=>wwv_flow_imp.id(152938812125635215)
,p_prompt=>'Nro. de Presupuesto'
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
 p_id=>wwv_flow_imp.id(96959919556855552)
,p_name=>'P354_NRO_COMPROBANTE'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(96864709740522114)
,p_item_source_plug_id=>wwv_flow_imp.id(152938812125635215)
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
 p_id=>wwv_flow_imp.id(96960740716855552)
,p_name=>'P354_COD_CLIENTE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(96864839230522115)
,p_item_source_plug_id=>wwv_flow_imp.id(152938812125635215)
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
,p_attribute_10=>'COD_CLIENTE:P354_COD_CLIENTE_AUX'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(96961121713855553)
,p_name=>'P354_COD_DIRECCION'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_imp.id(96864839230522115)
,p_item_source_plug_id=>wwv_flow_imp.id(152938812125635215)
,p_prompt=>unistr('Direcci\00F3n')
,p_source=>'COD_DIRECCION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>90
,p_cMaxlength=>5
,p_tag_attributes=>'readonly'
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
 p_id=>wwv_flow_imp.id(96961545786855553)
,p_name=>'P354_COD_SUCURSAL_DIST'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_imp.id(96864839230522115)
,p_item_source_plug_id=>wwv_flow_imp.id(152938812125635215)
,p_prompt=>'Sucursal Dist'
,p_source=>'COD_SUCURSAL_DIST'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LOV_SUCURSAL_DIST_VTPRESUPUESTO'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select p.cod_SUCURSAL||'' - ''||p.nombre descri, ',
'       p.direccion, ',
'       p.telefono, ',
'       p.cod_SUCURSAL,',
'       p.nombre',
'from BS_SUCURSAL_CLIENTE p',
'where p.cod_empresa= ''1''',
'and p.cod_cliente=:P354_COD_CLIENTE'))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P354_COD_CLIENTE'
,p_ajax_items_to_submit=>'P354_COD_CLIENTE'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
,p_attribute_07=>'Sucursal Dist'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(96961992471855553)
,p_name=>'P354_LUGAR_ENTREGA'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_imp.id(151965007236185672)
,p_item_source_plug_id=>wwv_flow_imp.id(152938812125635215)
,p_source=>'LUGAR_ENTREGA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(96962332235855553)
,p_name=>'P354_NRO_ORDEN_COMPRA'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_imp.id(151965007236185672)
,p_item_source_plug_id=>wwv_flow_imp.id(152938812125635215)
,p_source=>'NRO_ORDEN_COMPRA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(96963145334855554)
,p_name=>'P354_COD_VENDEDOR'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(96864709740522114)
,p_item_source_plug_id=>wwv_flow_imp.id(152938812125635215)
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
 p_id=>wwv_flow_imp.id(96963552291855554)
,p_name=>'P354_NOM_VENDEDOR'
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_imp.id(151965007236185672)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(96963910800855554)
,p_name=>'P354_COD_CONDICION_VENTA'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(96864709740522114)
,p_item_source_plug_id=>wwv_flow_imp.id(152938812125635215)
,p_prompt=>'Cond. Venta'
,p_source=>'COD_CONDICION_VENTA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
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
 p_id=>wwv_flow_imp.id(96964344511855554)
,p_name=>'P354_DESC_CONDICION'
,p_item_sequence=>290
,p_item_plug_id=>wwv_flow_imp.id(151965007236185672)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(96964730367855554)
,p_name=>'P354_COD_LISTA_PRECIO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(96864709740522114)
,p_item_source_plug_id=>wwv_flow_imp.id(152938812125635215)
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
 p_id=>wwv_flow_imp.id(96965123225855555)
,p_name=>'P354_TIPO_ENTREGA'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(96864991977522116)
,p_item_source_plug_id=>wwv_flow_imp.id(152938812125635215)
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
 p_id=>wwv_flow_imp.id(96965596131855555)
,p_name=>'P354_COD_FLETE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(96864991977522116)
,p_item_source_plug_id=>wwv_flow_imp.id(152938812125635215)
,p_prompt=>'Flete'
,p_source=>'COD_FLETE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LOV_FLETE_VTPEDIDO'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ALL vt_fletes.descripcion, vt_fletes.cod_flete',
'  FROM vt_fletes',
' WHERE cod_empresa = ''1''',
'   AND activo = ''S''',
'   AND tipo_entrega = :P354_TIPO_ENTREGA',
' ORDER BY 1',
''))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P354_TIPO_ENTREGA'
,p_ajax_items_to_submit=>'P354_TIPO_ENTREGA'
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
 p_id=>wwv_flow_imp.id(96965908884855555)
,p_name=>'P354_IND_LLEVA_OC'
,p_item_sequence=>370
,p_item_plug_id=>wwv_flow_imp.id(151965007236185672)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(96966366179855555)
,p_name=>'P354_TIP_CLIENTE'
,p_item_sequence=>380
,p_item_plug_id=>wwv_flow_imp.id(151965007236185672)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(96966711080855555)
,p_name=>'P354_TIPO_ENTREGA_CIUDAD'
,p_item_sequence=>390
,p_item_plug_id=>wwv_flow_imp.id(151965007236185672)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(96967170912855555)
,p_name=>'P354_COPIANDO'
,p_item_sequence=>400
,p_item_plug_id=>wwv_flow_imp.id(151965007236185672)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(96967557718855556)
,p_name=>'P354_SOBREGIRADO'
,p_item_sequence=>410
,p_item_plug_id=>wwv_flow_imp.id(151965007236185672)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(96967913494855556)
,p_name=>'P354_TIPO_IMPUESTO'
,p_item_sequence=>420
,p_item_plug_id=>wwv_flow_imp.id(151965007236185672)
,p_use_cache_before_default=>'NO'
,p_item_default=>'G'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(96968326645855556)
,p_name=>'P354_TIPO_CLIENTE'
,p_item_sequence=>430
,p_item_plug_id=>wwv_flow_imp.id(151965007236185672)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(96968713276855556)
,p_name=>'P354_COD_MODEDA_DOL'
,p_item_sequence=>440
,p_item_plug_id=>wwv_flow_imp.id(151965007236185672)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(96969128318855556)
,p_name=>'P354_COD_MODEDA_GS'
,p_item_sequence=>450
,p_item_plug_id=>wwv_flow_imp.id(151965007236185672)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(96969570795855556)
,p_name=>'P354_NRO_JERARQUIA'
,p_item_sequence=>460
,p_item_plug_id=>wwv_flow_imp.id(151965007236185672)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(96969900191855556)
,p_name=>'P354_PLAZO'
,p_item_sequence=>470
,p_item_plug_id=>wwv_flow_imp.id(151965007236185672)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(96970329372855557)
,p_name=>'P354_TIP_DOCUMENTO'
,p_item_sequence=>480
,p_item_plug_id=>wwv_flow_imp.id(151965007236185672)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(96970763775855557)
,p_name=>'P354_NIVEL'
,p_item_sequence=>490
,p_item_plug_id=>wwv_flow_imp.id(151965007236185672)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(96971130336855557)
,p_name=>'P354_ESTADO_CLIENTE'
,p_item_sequence=>500
,p_item_plug_id=>wwv_flow_imp.id(151965007236185672)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(96971553088855557)
,p_name=>'P354_DIAS_VENCIM_PEDIDO'
,p_item_sequence=>510
,p_item_plug_id=>wwv_flow_imp.id(151965007236185672)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(96971943857855557)
,p_name=>'P354_NOMBRE'
,p_item_sequence=>520
,p_item_plug_id=>wwv_flow_imp.id(151965007236185672)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(96972370819855557)
,p_name=>'P354_OCULTAR'
,p_item_sequence=>530
,p_item_plug_id=>wwv_flow_imp.id(151965007236185672)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(96972760416855558)
,p_name=>'P354_NOM_SUC_OFE'
,p_item_sequence=>540
,p_item_plug_id=>wwv_flow_imp.id(151965007236185672)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(96973181565855558)
,p_name=>'P354_COD_CONDICION_VENTA_OLD'
,p_item_sequence=>550
,p_item_plug_id=>wwv_flow_imp.id(151965007236185672)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(96973577985855558)
,p_name=>'P354_CARGA_CONDICION'
,p_item_sequence=>560
,p_item_plug_id=>wwv_flow_imp.id(151965007236185672)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(96973928392855558)
,p_name=>'P354_DESC_MONEDA'
,p_item_sequence=>570
,p_item_plug_id=>wwv_flow_imp.id(151965007236185672)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(96974331541855558)
,p_name=>'P354_MANTIENE_PRECIO'
,p_item_sequence=>580
,p_item_plug_id=>wwv_flow_imp.id(151965007236185672)
,p_item_default=>'N'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(96974736912855558)
,p_name=>'P354_COD_MONEDA_BASE'
,p_item_sequence=>590
,p_item_plug_id=>wwv_flow_imp.id(151965007236185672)
,p_item_default=>'2'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(96975120773855558)
,p_name=>'P354_COD_MONEDA_PRECIO'
,p_item_sequence=>600
,p_item_plug_id=>wwv_flow_imp.id(151965007236185672)
,p_item_default=>'2'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(96975576667855559)
,p_name=>'P354_DECIMALES'
,p_item_sequence=>610
,p_item_plug_id=>wwv_flow_imp.id(151965007236185672)
,p_item_default=>'0'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(96975970722855559)
,p_name=>'P354_GRAVADAS_PARCIAL'
,p_item_sequence=>620
,p_item_plug_id=>wwv_flow_imp.id(151965007236185672)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(96976353164855559)
,p_name=>'P354_EXENTAS_PARCIAL'
,p_item_sequence=>630
,p_item_plug_id=>wwv_flow_imp.id(151965007236185672)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(96976799572855559)
,p_name=>'P354_VAR_MULT'
,p_item_sequence=>640
,p_item_plug_id=>wwv_flow_imp.id(151965007236185672)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(96977182224855559)
,p_name=>'P354_VAR_DIV'
,p_item_sequence=>650
,p_item_plug_id=>wwv_flow_imp.id(151965007236185672)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(96977524270855559)
,p_name=>'P354_IVA_PARCIAL'
,p_item_sequence=>660
,p_item_plug_id=>wwv_flow_imp.id(151965007236185672)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(96977953957855560)
,p_name=>'P354_SUBTOTAL_PARCIAL'
,p_item_sequence=>670
,p_item_plug_id=>wwv_flow_imp.id(151965007236185672)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(96978393052855560)
,p_name=>'P354_PORCENTAJE_DESCUENTO'
,p_item_sequence=>680
,p_item_plug_id=>wwv_flow_imp.id(151965007236185672)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(96978783897855560)
,p_name=>'P354_GRAVADAS'
,p_item_sequence=>690
,p_item_plug_id=>wwv_flow_imp.id(151965007236185672)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(96979143897855560)
,p_name=>'P354_EXENTAS'
,p_item_sequence=>700
,p_item_plug_id=>wwv_flow_imp.id(151965007236185672)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(96979509289855560)
,p_name=>'P354_PORC_RECARGO_ANT'
,p_item_sequence=>710
,p_item_plug_id=>wwv_flow_imp.id(151965007236185672)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(96979989944855560)
,p_name=>'P354_LISTA_PRECIO_OLD'
,p_item_sequence=>720
,p_item_plug_id=>wwv_flow_imp.id(151965007236185672)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(96980396475855561)
,p_name=>'P354_DESC_FLETE'
,p_item_sequence=>730
,p_item_plug_id=>wwv_flow_imp.id(151965007236185672)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(96980797323855561)
,p_name=>'P354_TEXTO_MES'
,p_item_sequence=>740
,p_item_plug_id=>wwv_flow_imp.id(151965007236185672)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(96981163268855561)
,p_name=>'P354_NUMERO_MES'
,p_item_sequence=>750
,p_item_plug_id=>wwv_flow_imp.id(151965007236185672)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(96981557276855561)
,p_name=>'P354_TEXTO_ANIO'
,p_item_sequence=>760
,p_item_plug_id=>wwv_flow_imp.id(151965007236185672)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(96981919224855561)
,p_name=>'P354_HORA'
,p_item_sequence=>770
,p_item_plug_id=>wwv_flow_imp.id(151965007236185672)
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
 p_id=>wwv_flow_imp.id(96982367290855561)
,p_name=>'P354_FECHA_INI'
,p_item_sequence=>780
,p_item_plug_id=>wwv_flow_imp.id(151965007236185672)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(96982757206855562)
,p_name=>'P354_FECHA_FIN'
,p_item_sequence=>790
,p_item_plug_id=>wwv_flow_imp.id(151965007236185672)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(96983134491855562)
,p_name=>'P354_CANTIDAD_PROMO_MIX'
,p_item_sequence=>800
,p_item_plug_id=>wwv_flow_imp.id(151965007236185672)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(96983514500855562)
,p_name=>'P354_PORC_IVA'
,p_item_sequence=>810
,p_item_plug_id=>wwv_flow_imp.id(151965007236185672)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(96983986317855562)
,p_name=>'P354_MODIFICA_PRECIO'
,p_item_sequence=>820
,p_item_plug_id=>wwv_flow_imp.id(151965007236185672)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(96984303222855562)
,p_name=>'P354_VARIACION_MENOS'
,p_item_sequence=>830
,p_item_plug_id=>wwv_flow_imp.id(151965007236185672)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(96984791590855562)
,p_name=>'P354_CANTIDAD_MIX'
,p_item_sequence=>840
,p_item_plug_id=>wwv_flow_imp.id(151965007236185672)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(96985100579855563)
,p_name=>'P354_COD_ART_AUX'
,p_item_sequence=>850
,p_item_plug_id=>wwv_flow_imp.id(151965007236185672)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(96985527548855563)
,p_name=>'P354_PROMO_COCINA'
,p_item_sequence=>860
,p_item_plug_id=>wwv_flow_imp.id(151965007236185672)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(96985914427855563)
,p_name=>'P354_CANT_AUX'
,p_item_sequence=>870
,p_item_plug_id=>wwv_flow_imp.id(151965007236185672)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(96986373705855563)
,p_name=>'P354_DESCUENTO_30'
,p_item_sequence=>880
,p_item_plug_id=>wwv_flow_imp.id(151965007236185672)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(96986701891855563)
,p_name=>'P354_DESCUENTO_307'
,p_item_sequence=>890
,p_item_plug_id=>wwv_flow_imp.id(151965007236185672)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(96987163383855563)
,p_name=>'P354_SUPERA_DESCUENTO'
,p_item_sequence=>900
,p_item_plug_id=>wwv_flow_imp.id(151965007236185672)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(96987547539855564)
,p_name=>'P354_AGREGA_PROMOCION'
,p_item_sequence=>910
,p_item_plug_id=>wwv_flow_imp.id(151965007236185672)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(96987978075855564)
,p_name=>'P354_COD_MANTIENE_PRECIO'
,p_item_sequence=>920
,p_item_plug_id=>wwv_flow_imp.id(151965007236185672)
,p_item_default=>'N'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(96988335788855564)
,p_name=>'P354_DESCUENTO_GASTRO'
,p_item_sequence=>930
,p_item_plug_id=>wwv_flow_imp.id(151965007236185672)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(96988760912855564)
,p_name=>'P354_PUEDE_DESANULAR_PEDIDO'
,p_item_sequence=>940
,p_item_plug_id=>wwv_flow_imp.id(151965007236185672)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(96989179618855564)
,p_name=>'P354_OPERACION'
,p_item_sequence=>950
,p_item_plug_id=>wwv_flow_imp.id(151965007236185672)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(96989526930855564)
,p_name=>'P354_PUEDE_ACTUALIZAR_A_REM'
,p_item_sequence=>960
,p_item_plug_id=>wwv_flow_imp.id(151965007236185672)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(96989940823855564)
,p_name=>'P354_DERECHOS'
,p_item_sequence=>970
,p_item_plug_id=>wwv_flow_imp.id(151965007236185672)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(96990370215855565)
,p_name=>'P354_COD_CLIENTE_AUX'
,p_item_sequence=>980
,p_item_plug_id=>wwv_flow_imp.id(151965007236185672)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(96990722869855565)
,p_name=>'P354_SUCURSAL_DIST_AUX'
,p_item_sequence=>990
,p_item_plug_id=>wwv_flow_imp.id(151965007236185672)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(96996872690855568)
,p_name=>'P354_SALDO_DOLARES'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(151965007236185672)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(96997236385855568)
,p_name=>'P354_SALDO_GS'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(151965007236185672)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(96997604401855568)
,p_name=>'P354_SALDO_TOTAL'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(151965007236185672)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(96998092501855569)
,p_name=>'P354_LIMITE_CREDITO'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(151965007236185672)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(96998485755855569)
,p_name=>'P354_VALORES_ADEPOSITAR'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(151965007236185672)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(96998802418855569)
,p_name=>'P354_POSIBLE'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(151965007236185672)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(96999265565855569)
,p_name=>'P354_DESC_JERARQUIA'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(151965007236185672)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(97000349323855570)
,p_name=>'P354_FEC_COMPROBANTE'
,p_source_data_type=>'DATE'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(96864709740522114)
,p_item_source_plug_id=>wwv_flow_imp.id(152938812125635215)
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
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(97000787027855570)
,p_name=>'P354_RUC'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(96864839230522115)
,p_item_source_plug_id=>wwv_flow_imp.id(152938812125635215)
,p_prompt=>'Ruc'
,p_source=>'RUC'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>60
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
 p_id=>wwv_flow_imp.id(97001124732855570)
,p_name=>'P354_TEL_CLIENTE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(96864839230522115)
,p_item_source_plug_id=>wwv_flow_imp.id(152938812125635215)
,p_prompt=>unistr('Tel\00E9fono')
,p_source=>'TEL_CLIENTE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>80
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
 p_id=>wwv_flow_imp.id(97001544616855570)
,p_name=>'P354_TELEFONO_DIST'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_imp.id(96864839230522115)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(97002757274855571)
,p_name=>'P354_COD_MONEDA'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(96864991977522116)
,p_item_source_plug_id=>wwv_flow_imp.id(152938812125635215)
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
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(97003159259855571)
,p_name=>'P354_TIP_CAMBIO'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(96864991977522116)
,p_item_source_plug_id=>wwv_flow_imp.id(152938812125635215)
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
 p_id=>wwv_flow_imp.id(97003567211855571)
,p_name=>'P354_CAMBIO_MONEDA_PRECIO'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(96864991977522116)
,p_item_source_plug_id=>wwv_flow_imp.id(152938812125635215)
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
 p_id=>wwv_flow_imp.id(97003996805855571)
,p_name=>'P354_DIAS'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(96864991977522116)
,p_item_source_plug_id=>wwv_flow_imp.id(152938812125635215)
,p_source=>'DIAS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(97005162893855572)
,p_name=>'P354_COMENTARIO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_imp.id(96864839230522115)
,p_item_source_plug_id=>wwv_flow_imp.id(152938812125635215)
,p_prompt=>unistr('Observaci\00F3n')
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
 p_id=>wwv_flow_imp.id(97007061458855572)
,p_name=>'P354_CARGA_FECHA'
,p_item_sequence=>280
,p_item_plug_id=>wwv_flow_imp.id(151966019246185683)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(97007438236855573)
,p_name=>'P354_INSTALACION'
,p_item_sequence=>290
,p_item_plug_id=>wwv_flow_imp.id(151966019246185683)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(97007829965855573)
,p_name=>'P354_DESCUENTO_304'
,p_item_sequence=>300
,p_item_plug_id=>wwv_flow_imp.id(151966019246185683)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(97008260855855573)
,p_name=>'P354_CARGA_DESCUENTOS'
,p_item_sequence=>310
,p_item_plug_id=>wwv_flow_imp.id(151966019246185683)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(97008679187855573)
,p_name=>'P354_CARGA_COTIZACION'
,p_item_sequence=>320
,p_item_plug_id=>wwv_flow_imp.id(151966019246185683)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(97009046867855573)
,p_name=>'P354_VER_MARGEN'
,p_item_sequence=>330
,p_item_plug_id=>wwv_flow_imp.id(151966019246185683)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(97014842102855601)
,p_name=>'P354_VALOR_CARPETA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(151965007236185672)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(97015259100855601)
,p_name=>'P354_NRO_INSCRIPCION_AD'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(151965007236185672)
,p_item_source_plug_id=>wwv_flow_imp.id(152938812125635215)
,p_source=>'NRO_INSCRIPCION_AD'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(97015617411855601)
,p_name=>'P354_DESC_SCORING'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(151965007236185672)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(97018072385855602)
,p_name=>'P354_IND_EXENTO_AD'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(151965007236185672)
,p_item_source_plug_id=>wwv_flow_imp.id(152938812125635215)
,p_source=>'IND_EXENTO_AD'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(97029302358855607)
,p_name=>'P354_TOT_COMPROBANTE'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(151965082127185673)
,p_item_source_plug_id=>wwv_flow_imp.id(152938812125635215)
,p_source=>'TOT_COMPROBANTE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(97029729333855608)
,p_name=>'P354_TOT_GRAVADAS'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(151965082127185673)
,p_item_source_plug_id=>wwv_flow_imp.id(152938812125635215)
,p_source=>'TOT_GRAVADAS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(97030179868855608)
,p_name=>'P354_TOT_EXENTAS'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(151965082127185673)
,p_item_source_plug_id=>wwv_flow_imp.id(152938812125635215)
,p_source=>'TOT_EXENTAS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(97030533646855608)
,p_name=>'P354_TOT_IVA'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(151965082127185673)
,p_item_source_plug_id=>wwv_flow_imp.id(152938812125635215)
,p_source=>'TOT_IVA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(97030983064855608)
,p_name=>'P354_FEC_ALTA'
,p_source_data_type=>'DATE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(151965082127185673)
,p_item_source_plug_id=>wwv_flow_imp.id(152938812125635215)
,p_source=>'FEC_ALTA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(97031378529855608)
,p_name=>'P354_NRO_AUTORIZACION'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(151965082127185673)
,p_item_source_plug_id=>wwv_flow_imp.id(152938812125635215)
,p_source=>'NRO_AUTORIZACION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(97031718400855608)
,p_name=>'P354_FEC_VENCIMIENTO'
,p_source_data_type=>'DATE'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(96864991977522116)
,p_item_source_plug_id=>wwv_flow_imp.id(152938812125635215)
,p_prompt=>'Fecha Vencimiento'
,p_source=>'FEC_VENCIMIENTO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_css_classes=>'allow_only_numbers'
,p_tag_attributes=>'onfocusout="this.value= isValidDate(this.value);" onkeyup = "setDateFormat(this);"'
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
 p_id=>wwv_flow_imp.id(97032141268855609)
,p_name=>'P354_TOT_DESCUENTO_DET'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(151965082127185673)
,p_item_source_plug_id=>wwv_flow_imp.id(152938812125635215)
,p_source=>'TOT_DESCUENTO_DET'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(97032508318855609)
,p_name=>'P354_TIP_COMPROBANTE_REF'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(151965082127185673)
,p_item_source_plug_id=>wwv_flow_imp.id(152938812125635215)
,p_source=>'TIP_COMPROBANTE_REF'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(97032918231855609)
,p_name=>'P354_PROCESADO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(151965082127185673)
,p_item_source_plug_id=>wwv_flow_imp.id(152938812125635215)
,p_source=>'PROCESADO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(97033304902855609)
,p_name=>'P354_NRO_COMPROBANTE_REF'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(151965082127185673)
,p_item_source_plug_id=>wwv_flow_imp.id(152938812125635215)
,p_source=>'NRO_COMPROBANTE_REF'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(97033774621855609)
,p_name=>'P354_NOM_CLIENTE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(96864839230522115)
,p_item_source_plug_id=>wwv_flow_imp.id(152938812125635215)
,p_prompt=>'Nombre Cliente'
,p_source=>'NOM_CLIENTE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
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
 p_id=>wwv_flow_imp.id(97034115686855609)
,p_name=>'P354_NOMBRE_CAB'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(151965082127185673)
,p_item_source_plug_id=>wwv_flow_imp.id(152938812125635215)
,p_source=>'NOMBRE_CAB'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(97034566931855609)
,p_name=>'P354_GRU_COMPROBANTE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(151965082127185673)
,p_item_source_plug_id=>wwv_flow_imp.id(152938812125635215)
,p_source=>'GRU_COMPROBANTE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(97034947455855610)
,p_name=>'P354_FEC_NACIMIENTO'
,p_source_data_type=>'DATE'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(151965082127185673)
,p_item_source_plug_id=>wwv_flow_imp.id(152938812125635215)
,p_source=>'FEC_NACIMIENTO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(97035396625855610)
,p_name=>'P354_DESCUENTO_DET'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(151965082127185673)
,p_item_source_plug_id=>wwv_flow_imp.id(152938812125635215)
,p_source=>'DESCUENTO_DET'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(97035715767855610)
,p_name=>'P354_DIR_CLIENTE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_imp.id(96864839230522115)
,p_item_source_plug_id=>wwv_flow_imp.id(152938812125635215)
,p_prompt=>unistr('Direcci\00F3n Cliente')
,p_source=>'DIR_CLIENTE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
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
 p_id=>wwv_flow_imp.id(97036105436855610)
,p_name=>'P354_COLUMNA'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_imp.id(151965082127185673)
,p_item_source_plug_id=>wwv_flow_imp.id(152938812125635215)
,p_source=>'COLUMNA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(97036573772855610)
,p_name=>'P354_COD_SECTOR'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_imp.id(151965082127185673)
,p_item_source_plug_id=>wwv_flow_imp.id(152938812125635215)
,p_source=>'COD_SECTOR'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(97036964017855610)
,p_name=>'P354_CAMBIO_DOLAR'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_imp.id(151965082127185673)
,p_item_source_plug_id=>wwv_flow_imp.id(152938812125635215)
,p_source=>'CAMBIO_DOLAR'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(97037303069855611)
,p_name=>'P354_TIP_COMPROBANTE_PET'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_imp.id(151965082127185673)
,p_item_source_plug_id=>wwv_flow_imp.id(152938812125635215)
,p_source=>'TIP_COMPROBANTE_PET'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(97037738539855611)
,p_name=>'P354_SER_COMPROBANTE_PET'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_imp.id(151965082127185673)
,p_item_source_plug_id=>wwv_flow_imp.id(152938812125635215)
,p_source=>'SER_COMPROBANTE_PET'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(97038142383855611)
,p_name=>'P354_NRO_COMPROBANTE_PET'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_imp.id(151965082127185673)
,p_item_source_plug_id=>wwv_flow_imp.id(152938812125635215)
,p_source=>'NRO_COMPROBANTE_PET'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(97038511237855611)
,p_name=>'P354_COD_USUARIO_AUTORIZACION'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>270
,p_item_plug_id=>wwv_flow_imp.id(151965082127185673)
,p_item_source_plug_id=>wwv_flow_imp.id(152938812125635215)
,p_source=>'COD_USUARIO_AUTORIZACION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(97038941176855611)
,p_name=>'P354_FECHA_AUTORIZACION'
,p_source_data_type=>'DATE'
,p_item_sequence=>280
,p_item_plug_id=>wwv_flow_imp.id(151965082127185673)
,p_item_source_plug_id=>wwv_flow_imp.id(152938812125635215)
,p_source=>'FECHA_AUTORIZACION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(97039312009855611)
,p_name=>'P354_IND_IMPRESO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>290
,p_item_plug_id=>wwv_flow_imp.id(151965082127185673)
,p_item_source_plug_id=>wwv_flow_imp.id(152938812125635215)
,p_item_default=>'N'
,p_source=>'IND_IMPRESO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(97039722848855612)
,p_name=>'P354_COD_MOTIVO_ANU'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>300
,p_item_plug_id=>wwv_flow_imp.id(151965082127185673)
,p_item_source_plug_id=>wwv_flow_imp.id(152938812125635215)
,p_source=>'COD_MOTIVO_ANU'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(97040183844855612)
,p_name=>'P354_OBSERVACION'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>310
,p_item_plug_id=>wwv_flow_imp.id(151965082127185673)
,p_item_source_plug_id=>wwv_flow_imp.id(152938812125635215)
,p_source=>'OBSERVACION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(97040548384855612)
,p_name=>'P354_PRESUPUESTO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>320
,p_item_plug_id=>wwv_flow_imp.id(151965082127185673)
,p_item_source_plug_id=>wwv_flow_imp.id(152938812125635215)
,p_source=>'PRESUPUESTO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(97040954139855612)
,p_name=>'P354_FECHA_APROBADO'
,p_source_data_type=>'DATE'
,p_item_sequence=>330
,p_item_plug_id=>wwv_flow_imp.id(151965082127185673)
,p_item_source_plug_id=>wwv_flow_imp.id(152938812125635215)
,p_source=>'FECHA_APROBADO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(97041301997855612)
,p_name=>'P354_NRO_LLAMADA'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>340
,p_item_plug_id=>wwv_flow_imp.id(151965082127185673)
,p_item_source_plug_id=>wwv_flow_imp.id(152938812125635215)
,p_source=>'NRO_LLAMADA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(97041773331855612)
,p_name=>'P354_FEC_SEGUIMIENTO'
,p_source_data_type=>'DATE'
,p_item_sequence=>350
,p_item_plug_id=>wwv_flow_imp.id(151965082127185673)
,p_item_source_plug_id=>wwv_flow_imp.id(152938812125635215)
,p_source=>'FEC_SEGUIMIENTO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(97042153405855612)
,p_name=>'P354_PESO_TOTAL'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>360
,p_item_plug_id=>wwv_flow_imp.id(151965082127185673)
,p_item_source_plug_id=>wwv_flow_imp.id(152938812125635215)
,p_source=>'PESO_TOTAL'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(97042511929855613)
,p_name=>'P354_VOLUMEN_TOTAL'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>370
,p_item_plug_id=>wwv_flow_imp.id(151965082127185673)
,p_item_source_plug_id=>wwv_flow_imp.id(152938812125635215)
,p_source=>'VOLUMEN_TOTAL'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(97042938249855613)
,p_name=>'P354_SER_COMPROBANTE_REF'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>380
,p_item_plug_id=>wwv_flow_imp.id(151965082127185673)
,p_item_source_plug_id=>wwv_flow_imp.id(152938812125635215)
,p_source=>'SER_COMPROBANTE_REF'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(97043327408855613)
,p_name=>'P354_ENTREGA_INICIAL'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>390
,p_item_plug_id=>wwv_flow_imp.id(151965082127185673)
,p_item_source_plug_id=>wwv_flow_imp.id(152938812125635215)
,p_source=>'ENTREGA_INICIAL'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(97043724629855613)
,p_name=>'P354_PORC_ENT_INICIAL'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>400
,p_item_plug_id=>wwv_flow_imp.id(151965082127185673)
,p_item_source_plug_id=>wwv_flow_imp.id(152938812125635215)
,p_source=>'PORC_ENT_INICIAL'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(97044187728855613)
,p_name=>'P354_FEC_PAGO'
,p_source_data_type=>'DATE'
,p_item_sequence=>410
,p_item_plug_id=>wwv_flow_imp.id(151965082127185673)
,p_item_source_plug_id=>wwv_flow_imp.id(152938812125635215)
,p_source=>'FEC_PAGO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
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
 p_id=>wwv_flow_imp.id(97044555384855613)
,p_name=>'P354_CONSULTA_INFORMCONF'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>420
,p_item_plug_id=>wwv_flow_imp.id(151965082127185673)
,p_item_source_plug_id=>wwv_flow_imp.id(152938812125635215)
,p_source=>'CONSULTA_INFORMCONF'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(97044943978855613)
,p_name=>'P354_DESC_ERROR'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>430
,p_item_plug_id=>wwv_flow_imp.id(151965082127185673)
,p_item_source_plug_id=>wwv_flow_imp.id(152938812125635215)
,p_source=>'DESC_ERROR'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(97045336898855614)
,p_name=>'P354_FEC_APRO_RECHA'
,p_source_data_type=>'DATE'
,p_item_sequence=>440
,p_item_plug_id=>wwv_flow_imp.id(151965082127185673)
,p_item_source_plug_id=>wwv_flow_imp.id(152938812125635215)
,p_source=>'FEC_APRO_RECHA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(97045776597855614)
,p_name=>'P354_COD_USU_APRO_RECHA'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>450
,p_item_plug_id=>wwv_flow_imp.id(151965082127185673)
,p_item_source_plug_id=>wwv_flow_imp.id(152938812125635215)
,p_source=>'COD_USU_APRO_RECHA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(97057787063855618)
,p_name=>'P354_TIP_CONTADO'
,p_item_sequence=>750
,p_item_plug_id=>wwv_flow_imp.id(151965082127185673)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(97058148793855619)
,p_name=>'P354_COD_MONEDA_DOL'
,p_item_sequence=>760
,p_item_plug_id=>wwv_flow_imp.id(151965082127185673)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(97058504450855619)
,p_name=>'P354_COD_MONEDA_GS'
,p_item_sequence=>770
,p_item_plug_id=>wwv_flow_imp.id(151965082127185673)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(97058918396855619)
,p_name=>'P354_LINEAS_MAX'
,p_item_sequence=>780
,p_item_plug_id=>wwv_flow_imp.id(151965082127185673)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(97109416310855648)
,p_name=>'P354_SECUENCIA'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(151967092667185693)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(97109879467855648)
,p_name=>'P354_ELIMINAR'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(151967092667185693)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(97110221673855648)
,p_name=>'P354_MODIFICACION'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(151967092667185693)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(97111295818855649)
,p_name=>'P354_DET_COMENTARIO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(153942470423215958)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(97111605794855649)
,p_name=>'P354_AUTORIZADO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(153942470423215958)
,p_item_source_plug_id=>wwv_flow_imp.id(152938812125635215)
,p_source=>'AUTORIZADO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(97112430846855650)
,p_name=>'P354_DESC_ESTADO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(153942470423215958)
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
 p_id=>wwv_flow_imp.id(97112816237855650)
,p_name=>'P354_F_ESTADO_DISTRIBUCION'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(153942470423215958)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(97113253741855650)
,p_name=>'P354_RESULTADO_ENTREGA'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(153942470423215958)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(97113679427855650)
,p_name=>'P354_NRO_FAC'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(153942470423215958)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(97114096744855650)
,p_name=>'P354_FECHA_FACT'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(153942470423215958)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(97115364714855651)
,p_name=>'P354_SER_PEDIDO_PROMO_ANT'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(153942470423215958)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(97115717017855651)
,p_name=>'P354_NRO_PEDIDO_PROMO_ANT'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(153942470423215958)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(97116136298855651)
,p_name=>'P354_NRO_PEDIDO_ORDEN_PROMO_ANT'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(153942470423215958)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(97116557694855651)
,p_name=>'P354_COD_ARTICULO_PROMO_ANT'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(153942470423215958)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(97117268865855652)
,p_name=>'P354_ES_PROMO'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(153942470423215958)
,p_prompt=>'Es Promo'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(97117658602855652)
,p_name=>'P354_NRO_PROMO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(153942470423215958)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(97118054792855652)
,p_name=>'P354_ARTICULO_PAR'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(153942470423215958)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(97118469003855652)
,p_name=>'P354_CANTIDAD_FACTURADA'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(153942470423215958)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(97119196280855653)
,p_name=>'P354_COD_USUARIO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(153942470423215958)
,p_item_source_plug_id=>wwv_flow_imp.id(152938812125635215)
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
 p_id=>wwv_flow_imp.id(97119569481855653)
,p_name=>'P354_FEC_ESTADO'
,p_source_data_type=>'DATE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(153942470423215958)
,p_item_source_plug_id=>wwv_flow_imp.id(152938812125635215)
,p_prompt=>'Fecha Estado'
,p_source=>'FEC_ESTADO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
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
 p_id=>wwv_flow_imp.id(97119946215855653)
,p_name=>'P354_HORA_ALTA'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(153942470423215958)
,p_item_source_plug_id=>wwv_flow_imp.id(152938812125635215)
,p_prompt=>'Hora Alta'
,p_source=>'HORA_ALTA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>20
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
 p_id=>wwv_flow_imp.id(97120335327855653)
,p_name=>'P354_COD_USUARIO_ANU'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(153942470423215958)
,p_item_source_plug_id=>wwv_flow_imp.id(152938812125635215)
,p_source=>'COD_USUARIO_ANU'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(97120769091855653)
,p_name=>'P354_COD_MOTIVO_ANULACION'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(153942470423215958)
,p_item_source_plug_id=>wwv_flow_imp.id(152938812125635215)
,p_source=>'COD_MOTIVO_ANULACION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(97121155526855654)
,p_name=>'P354_NRO_IMPRESION'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(153942470423215958)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(97123389037855655)
,p_name=>'P354_CONTROL_FIN'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(153942470423215958)
,p_item_source_plug_id=>wwv_flow_imp.id(152938812125635215)
,p_prompt=>'Fin'
,p_source=>'CONTROL_FIN'
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
 p_id=>wwv_flow_imp.id(97125707544855656)
,p_name=>'P354_FECHA_ENTREGA_DET'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(153942585131215959)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(97126152681855656)
,p_name=>'P354_DESCUENTO_TOTAL'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(153942585131215959)
,p_prompt=>'Descuento'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_css_classes=>'allow_only_numbers'
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_grid_column=>7
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(97126545508855657)
,p_name=>'P354_DESCUENTO'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(153942585131215959)
,p_item_source_plug_id=>wwv_flow_imp.id(152938812125635215)
,p_prompt=>'Descuento'
,p_source=>'DESCUENTO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>10
,p_tag_css_classes=>'allow_only_numbers'
,p_tag_attributes=>'readonly'
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(97126999627855657)
,p_name=>'P354_SUBTOTAL'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(153942585131215959)
,p_use_cache_before_default=>'NO'
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
 p_id=>wwv_flow_imp.id(97127318211855657)
,p_name=>'P354_RECARGO'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(96864991977522116)
,p_item_source_plug_id=>wwv_flow_imp.id(152938812125635215)
,p_item_default=>'0'
,p_prompt=>'Recargo'
,p_source=>'RECARGO'
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
 p_id=>wwv_flow_imp.id(97127761461855657)
,p_name=>'P354_RECARGO_AUX'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(153942585131215959)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Recargo'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>90
,p_tag_attributes=>'readonly'
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(97128108764855657)
,p_name=>'P354_TOTAL_IVA'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(153942585131215959)
,p_use_cache_before_default=>'NO'
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
 p_id=>wwv_flow_imp.id(97128524202855657)
,p_name=>'P354_RECARGO_PORC'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(153942585131215959)
,p_prompt=>'Porc. recargo'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>90
,p_cMaxlength=>10
,p_tag_css_classes=>'allow_only_numbers'
,p_tag_attributes=>'readonly'
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(97128923319855658)
,p_name=>'P354_TOTAL'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(153942585131215959)
,p_use_cache_before_default=>'NO'
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
 p_id=>wwv_flow_imp.id(97130229478855658)
,p_name=>'P354_TOTAL_PESO'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(153945787169215991)
,p_item_source_plug_id=>wwv_flow_imp.id(152938812125635215)
,p_source=>'PESO_TOTAL'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(97130628608855658)
,p_name=>'P354_TOTAL_CANTIDAD'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(96864991977522116)
,p_item_source_plug_id=>wwv_flow_imp.id(152938812125635215)
,p_prompt=>'Volumen'
,p_source=>'VOLUMEN_TOTAL'
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
 p_id=>wwv_flow_imp.id(97131046785855659)
,p_name=>'P354_STOCK_RESERV'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(153945787169215991)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(97131441037855659)
,p_name=>'P354_RECARGO_TOTAL'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(153945787169215991)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(97131862628855659)
,p_name=>'P354_STOCK_ACTUAL'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(153945787169215991)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(97132274287855659)
,p_name=>'P354_FLETE_TOTAL'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(96864991977522116)
,p_item_source_plug_id=>wwv_flow_imp.id(152938812125635215)
,p_prompt=>'Flete'
,p_source=>'FLETE_TOTAL'
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
 p_id=>wwv_flow_imp.id(97132685689855659)
,p_name=>'P354_ESTADO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(153945787169215991)
,p_item_source_plug_id=>wwv_flow_imp.id(152938812125635215)
,p_item_default=>'P'
,p_source=>'ESTADO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(97134817283855661)
,p_name=>'P354_COD_ART_CORTO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(164930523575622966)
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
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'Y'
,p_attribute_05=>'N'
,p_attribute_07=>unistr('Art\00EDculos ')
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(97135213469855661)
,p_name=>'P354_COD_ARTICULO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(164930523575622966)
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
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(97135672870855661)
,p_name=>'P354_DESC_ARTICULO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(164930523575622966)
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
 p_id=>wwv_flow_imp.id(97136045340855661)
,p_name=>'P354_COD_EMPRESA_1'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(164930523575622966)
,p_item_source_plug_id=>wwv_flow_imp.id(164930523575622966)
,p_source=>'COD_EMPRESA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(97136487588855662)
,p_name=>'P354_TIP_COMPROBANTE_1'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(164930523575622966)
,p_item_source_plug_id=>wwv_flow_imp.id(164930523575622966)
,p_source=>'TIP_COMPROBANTE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(97136878815855662)
,p_name=>'P354_SER_COMPROBANTE_1'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(164930523575622966)
,p_item_source_plug_id=>wwv_flow_imp.id(164930523575622966)
,p_source=>'SER_COMPROBANTE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(97137200087855662)
,p_name=>'P354_NRO_COMPROBANTE_1'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(164930523575622966)
,p_item_source_plug_id=>wwv_flow_imp.id(164930523575622966)
,p_source=>'NRO_COMPROBANTE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(97137631259855662)
,p_name=>'P354_CANTIDAD'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(164930523575622966)
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
 p_id=>wwv_flow_imp.id(97138001533855662)
,p_name=>'P354_PRECIO_UNITARIO'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(164930523575622966)
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
 p_id=>wwv_flow_imp.id(97138424048855663)
,p_name=>'P354_PORC_DESCUENTO'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(164930523575622966)
,p_use_cache_before_default=>'NO'
,p_item_default=>'0'
,p_prompt=>'% Descuento'
,p_format_mask=>'999G999G999G999G990D00'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_cMaxlength=>6
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(97138819354855663)
,p_name=>'P354_PORC_RECARGO'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(164930523575622966)
,p_use_cache_before_default=>'NO'
,p_prompt=>'% Recargo'
,p_format_mask=>'999G999G999G999G990D00'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_cMaxlength=>3
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(97139282360855663)
,p_name=>'P354_TOTAL_IVA_1'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(164930523575622966)
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
 p_id=>wwv_flow_imp.id(97139680758855663)
,p_name=>'P354_MONTO_TOTAL'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(164930523575622966)
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
 p_id=>wwv_flow_imp.id(97140040767855663)
,p_name=>'P354_CANTIDAD_FACTURADA_1'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(164930523575622966)
,p_item_source_plug_id=>wwv_flow_imp.id(164930523575622966)
,p_source=>'CANTIDAD_FACTURADA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(97140426275855663)
,p_name=>'P354_PRECIO_LISTA'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(164930523575622966)
,p_item_source_plug_id=>wwv_flow_imp.id(164930523575622966)
,p_source=>'PRECIO_LISTA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(97140889502855664)
,p_name=>'P354_DESCUENTO_1'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(164930523575622966)
,p_item_source_plug_id=>wwv_flow_imp.id(164930523575622966)
,p_source=>'DESCUENTO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(97141264242855664)
,p_name=>'P354_PRECIO_REAL'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(164930523575622966)
,p_item_source_plug_id=>wwv_flow_imp.id(164930523575622966)
,p_source=>'PRECIO_REAL'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(97141625383855664)
,p_name=>'P354_COSTO_PROMEDIO_REF'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(164930523575622966)
,p_item_source_plug_id=>wwv_flow_imp.id(164930523575622966)
,p_source=>'COSTO_PROMEDIO_REF'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(97142047795855664)
,p_name=>'P354_COSTO_PROMEDIO'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_imp.id(164930523575622966)
,p_item_source_plug_id=>wwv_flow_imp.id(164930523575622966)
,p_source=>'COSTO_PROMEDIO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(97142404885855664)
,p_name=>'P354_COSTO_CON'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_imp.id(164930523575622966)
,p_item_source_plug_id=>wwv_flow_imp.id(164930523575622966)
,p_source=>'COSTO_CON'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(97142814102855664)
,p_name=>'P354_COD_UNIDAD_MEDIDA'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_imp.id(164930523575622966)
,p_item_source_plug_id=>wwv_flow_imp.id(164930523575622966)
,p_source=>'COD_UNIDAD_MEDIDA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(97143294042855664)
,p_name=>'P354_CANTIDAD_UB'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_imp.id(164930523575622966)
,p_item_source_plug_id=>wwv_flow_imp.id(164930523575622966)
,p_source=>'CANTIDAD_UB'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(97143658637855665)
,p_name=>'P354_RECARGO_1'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_imp.id(164930523575622966)
,p_item_source_plug_id=>wwv_flow_imp.id(164930523575622966)
,p_source=>'RECARGO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(97144048809855665)
,p_name=>'P354_COD_ARTICULO_REL_BON'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_imp.id(164930523575622966)
,p_item_source_plug_id=>wwv_flow_imp.id(164930523575622966)
,p_source=>'COD_ARTICULO_REL_BON'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(97144429998855665)
,p_name=>'P354_PORC_IVA_1'
,p_item_sequence=>270
,p_item_plug_id=>wwv_flow_imp.id(164930523575622966)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(97144842184855665)
,p_name=>'P354_ORDEN'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>280
,p_item_plug_id=>wwv_flow_imp.id(164930523575622966)
,p_item_source_plug_id=>wwv_flow_imp.id(164930523575622966)
,p_source=>'ORDEN'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(97145299793855665)
,p_name=>'P354_COD_IVA'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>290
,p_item_plug_id=>wwv_flow_imp.id(164930523575622966)
,p_item_source_plug_id=>wwv_flow_imp.id(164930523575622966)
,p_source=>'COD_IVA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(97145639201855665)
,p_name=>'P354_CONTROL_FIN_1'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>300
,p_item_plug_id=>wwv_flow_imp.id(164930523575622966)
,p_item_source_plug_id=>wwv_flow_imp.id(164930523575622966)
,p_source=>'CONTROL_FIN'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(97146049811855666)
,p_name=>'P354_CANTIDAD_PENDIENTE'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>310
,p_item_plug_id=>wwv_flow_imp.id(164930523575622966)
,p_item_source_plug_id=>wwv_flow_imp.id(164930523575622966)
,p_source=>'CANTIDAD_PENDIENTE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
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
 p_id=>wwv_flow_imp.id(97146422064855666)
,p_name=>'P354_COD_MOTIVO_ANU_1'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>320
,p_item_plug_id=>wwv_flow_imp.id(164930523575622966)
,p_item_source_plug_id=>wwv_flow_imp.id(164930523575622966)
,p_source=>'COD_MOTIVO_ANU'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(97146877381855666)
,p_name=>'P354_PESO'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>330
,p_item_plug_id=>wwv_flow_imp.id(164930523575622966)
,p_item_source_plug_id=>wwv_flow_imp.id(164930523575622966)
,p_source=>'PESO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(97147292191855666)
,p_name=>'P354_VOLUMEN'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>340
,p_item_plug_id=>wwv_flow_imp.id(164930523575622966)
,p_item_source_plug_id=>wwv_flow_imp.id(164930523575622966)
,p_source=>'VOLUMEN'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(97147652962855666)
,p_name=>'P354_IND_REPOSICION'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>350
,p_item_plug_id=>wwv_flow_imp.id(164930523575622966)
,p_item_source_plug_id=>wwv_flow_imp.id(164930523575622966)
,p_source=>'IND_REPOSICION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(97148071834855666)
,p_name=>'P354_ES_PROMO_1'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>360
,p_item_plug_id=>wwv_flow_imp.id(164930523575622966)
,p_item_source_plug_id=>wwv_flow_imp.id(164930523575622966)
,p_source=>'ES_PROMO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(97148409036855667)
,p_name=>'P354_NRO_PROMO_1'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>370
,p_item_plug_id=>wwv_flow_imp.id(164930523575622966)
,p_item_source_plug_id=>wwv_flow_imp.id(164930523575622966)
,p_source=>'NRO_PROMO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(97148807517855667)
,p_name=>'P354_ARTICULO_PAR_1'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>380
,p_item_plug_id=>wwv_flow_imp.id(164930523575622966)
,p_item_source_plug_id=>wwv_flow_imp.id(164930523575622966)
,p_source=>'ARTICULO_PAR'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(97149206688855667)
,p_name=>'P354_VERIFICADO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>390
,p_item_plug_id=>wwv_flow_imp.id(164930523575622966)
,p_item_source_plug_id=>wwv_flow_imp.id(164930523575622966)
,p_source=>'VERIFICADO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(97149655228855667)
,p_name=>'P354_HORA_ALTA_1'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>400
,p_item_plug_id=>wwv_flow_imp.id(164930523575622966)
,p_item_source_plug_id=>wwv_flow_imp.id(164930523575622966)
,p_source=>'HORA_ALTA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(97150063392855667)
,p_name=>'P354_IND_PROMO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>410
,p_item_plug_id=>wwv_flow_imp.id(164930523575622966)
,p_item_source_plug_id=>wwv_flow_imp.id(164930523575622966)
,p_source=>'IND_PROMO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(97150492990855667)
,p_name=>'P354_IMAGEN'
,p_source_data_type=>'BLOB'
,p_item_sequence=>420
,p_item_plug_id=>wwv_flow_imp.id(164930523575622966)
,p_item_source_plug_id=>wwv_flow_imp.id(164930523575622966)
,p_source=>'IMAGEN'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(97150827318855667)
,p_name=>'P354_PORC_DESCUENTO_ADICIONAL'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>430
,p_item_plug_id=>wwv_flow_imp.id(164930523575622966)
,p_item_source_plug_id=>wwv_flow_imp.id(164930523575622966)
,p_source=>'PORC_DESCUENTO_ADICIONAL'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(97151295196855668)
,p_name=>'P354_IND_OUTLET'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>440
,p_item_plug_id=>wwv_flow_imp.id(164930523575622966)
,p_item_source_plug_id=>wwv_flow_imp.id(164930523575622966)
,p_source=>'IND_OUTLET'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(97151649669855668)
,p_name=>'P354_COD_ESPECIE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>450
,p_item_plug_id=>wwv_flow_imp.id(164930523575622966)
,p_item_source_plug_id=>wwv_flow_imp.id(164930523575622966)
,p_source=>'COD_ESPECIE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(97152067727855668)
,p_name=>'P354_COD_ESTABLE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>460
,p_item_plug_id=>wwv_flow_imp.id(164930523575622966)
,p_item_source_plug_id=>wwv_flow_imp.id(164930523575622966)
,p_source=>'COD_ESTABLE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(97152426757855668)
,p_name=>'P354_MONTO_GRAVADA_10'
,p_item_sequence=>470
,p_item_plug_id=>wwv_flow_imp.id(164930523575622966)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(97152879027855668)
,p_name=>'P354_MONTO_GRAVADA_5'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>480
,p_item_plug_id=>wwv_flow_imp.id(164930523575622966)
,p_item_source_plug_id=>wwv_flow_imp.id(164930523575622966)
,p_source=>'MONTO_GRAVADA_5'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(97153260106855668)
,p_name=>'P354_MONTO_EXENTA'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>490
,p_item_plug_id=>wwv_flow_imp.id(164930523575622966)
,p_item_source_plug_id=>wwv_flow_imp.id(164930523575622966)
,p_source=>'MONTO_EXENTA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(97153647428855669)
,p_name=>'P354_ARTICULO_REGALO_PROMO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>500
,p_item_plug_id=>wwv_flow_imp.id(164930523575622966)
,p_item_source_plug_id=>wwv_flow_imp.id(164930523575622966)
,p_source=>'ARTICULO_REGALO_PROMO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(97154013710855669)
,p_name=>'P354_COD_ARTICULO_PROMO_ANT_1'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>510
,p_item_plug_id=>wwv_flow_imp.id(164930523575622966)
,p_item_source_plug_id=>wwv_flow_imp.id(164930523575622966)
,p_source=>'COD_ARTICULO_PROMO_ANT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(97154451467855669)
,p_name=>'P354_SER_PEDIDO_PROMO_ANT_1'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>520
,p_item_plug_id=>wwv_flow_imp.id(164930523575622966)
,p_item_source_plug_id=>wwv_flow_imp.id(164930523575622966)
,p_source=>'SER_PEDIDO_PROMO_ANT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(97154839844855669)
,p_name=>'P354_NRO_PEDIDO_PROMO_ANT_1'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>530
,p_item_plug_id=>wwv_flow_imp.id(164930523575622966)
,p_item_source_plug_id=>wwv_flow_imp.id(164930523575622966)
,p_source=>'NRO_PEDIDO_PROMO_ANT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(97155220084855669)
,p_name=>'P354_NRO_PEDIDO_ORDEN_PROMO_ANT_1'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>540
,p_item_plug_id=>wwv_flow_imp.id(164930523575622966)
,p_item_source_plug_id=>wwv_flow_imp.id(164930523575622966)
,p_source=>'NRO_PEDIDO_ORDEN_PROMO_ANT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(97155652678855670)
,p_name=>'P354_TIP_FACTURA'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(96864991977522116)
,p_item_source_plug_id=>wwv_flow_imp.id(164930523575622966)
,p_prompt=>'Pedido'
,p_source=>'TIP_FACTURA'
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
 p_id=>wwv_flow_imp.id(97156055965855670)
,p_name=>'P354_SER_FACTURA'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(96864991977522116)
,p_item_source_plug_id=>wwv_flow_imp.id(164930523575622966)
,p_prompt=>'Ser Factura'
,p_source=>'SER_FACTURA'
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
 p_id=>wwv_flow_imp.id(97156417461855670)
,p_name=>'P354_NRO_FACTURA'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(96864991977522116)
,p_item_source_plug_id=>wwv_flow_imp.id(164930523575622966)
,p_prompt=>'Nro. Factura'
,p_source=>'NRO_FACTURA'
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
 p_id=>wwv_flow_imp.id(97156861531855670)
,p_name=>'P354_FECHA_ENTREGA_1'
,p_source_data_type=>'DATE'
,p_item_sequence=>580
,p_item_plug_id=>wwv_flow_imp.id(164930523575622966)
,p_item_source_plug_id=>wwv_flow_imp.id(164930523575622966)
,p_source=>'FECHA_ENTREGA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(97157252981855671)
,p_name=>'P354_IND_PRODUCTO_ARMADO'
,p_item_sequence=>590
,p_item_plug_id=>wwv_flow_imp.id(164930523575622966)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(97157690683855671)
,p_name=>'P354_CANTIDAD_ENTREGADA'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>600
,p_item_plug_id=>wwv_flow_imp.id(164930523575622966)
,p_item_source_plug_id=>wwv_flow_imp.id(164930523575622966)
,p_source=>'CANTIDAD_ENTREGADA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(97158084988855671)
,p_name=>'P354_ORDEN_PRODUCTO_PRINCIPAL'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>610
,p_item_plug_id=>wwv_flow_imp.id(164930523575622966)
,p_item_source_plug_id=>wwv_flow_imp.id(164930523575622966)
,p_source=>'ORDEN_PRODUCTO_PRINCIPAL'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(97158449230855671)
,p_name=>'P354_COD_MONEDA_BASE_1'
,p_item_sequence=>620
,p_item_plug_id=>wwv_flow_imp.id(164930523575622966)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(97158897003855671)
,p_name=>'P354_COD_GRUPO_ANT'
,p_item_sequence=>630
,p_item_plug_id=>wwv_flow_imp.id(164930523575622966)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(97159241640855671)
,p_name=>'P354_COD_ORIGEN_ART'
,p_item_sequence=>640
,p_item_plug_id=>wwv_flow_imp.id(164930523575622966)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(97159688581855672)
,p_name=>'P354_IND_NO_DESCUENTO'
,p_item_sequence=>650
,p_item_plug_id=>wwv_flow_imp.id(164930523575622966)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(97160077991855672)
,p_name=>'P354_IMPORTE_ANT'
,p_item_sequence=>660
,p_item_plug_id=>wwv_flow_imp.id(164930523575622966)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(97160466958855672)
,p_name=>'P354_IVA_ANT'
,p_item_sequence=>670
,p_item_plug_id=>wwv_flow_imp.id(164930523575622966)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(97160804733855672)
,p_name=>'P354_TOTAL_VOLUMEN'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(96864991977522116)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(97161200246855672)
,p_name=>'P354_SER_NRO_PROMO_ANT'
,p_item_sequence=>690
,p_item_plug_id=>wwv_flow_imp.id(164930523575622966)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(97161550745855672)
,p_name=>'P354_CARGA_PORC_RECARGO'
,p_item_sequence=>700
,p_item_plug_id=>wwv_flow_imp.id(164930523575622966)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(97161930184855672)
,p_name=>'P354_CARGA_DETALLE'
,p_item_sequence=>710
,p_item_plug_id=>wwv_flow_imp.id(164930523575622966)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(97162342324855673)
,p_name=>'P354_STOCK_ACTUAL_1'
,p_item_sequence=>730
,p_item_plug_id=>wwv_flow_imp.id(164930523575622966)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(97162754833855673)
,p_name=>'P354_TIP_FAC_REF'
,p_item_sequence=>740
,p_item_plug_id=>wwv_flow_imp.id(164930523575622966)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(97163192703855673)
,p_name=>'P354_SER_FAC_REF'
,p_item_sequence=>750
,p_item_plug_id=>wwv_flow_imp.id(164930523575622966)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(97163512129855673)
,p_name=>'P354_NRO_FAC_REF'
,p_item_sequence=>760
,p_item_plug_id=>wwv_flow_imp.id(164930523575622966)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(97163980089855673)
,p_name=>'P354_CARGA_ITEMS'
,p_item_sequence=>770
,p_item_plug_id=>wwv_flow_imp.id(164930523575622966)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(97164383396855673)
,p_name=>'P354_DESC_PRECIOS'
,p_item_sequence=>780
,p_item_plug_id=>wwv_flow_imp.id(164930523575622966)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(97164726180855674)
,p_name=>'P354_VALIDA_ARTICULO'
,p_item_sequence=>790
,p_item_plug_id=>wwv_flow_imp.id(164930523575622966)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(97186452746855683)
,p_name=>'P354_FEC_EMI_INICIAL_PAR'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(175029362266958680)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(97186865909855683)
,p_name=>'P354_FEC_EMI_FINAL_PAR'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(175029362266958680)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(97187257662855683)
,p_name=>'P354_P_LOGISTICA_PAR'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(175029362266958680)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(97187614533855684)
,p_name=>'P354_P_COD_EMPRESA_PAR'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(175029362266958680)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(97188006417855684)
,p_name=>'P354_P_COD_CLIENTE_PAR'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(175029362266958680)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(97188480122855684)
,p_name=>'P354_P_TIP_COMPROBANTE_PAR'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(175029362266958680)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(97188822884855684)
,p_name=>'P354_P_SER_COMPROBANTE_PAR'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(175029362266958680)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(97189256562855684)
,p_name=>'P354_P_NRO_COMPROBANTE_PAR'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(175029362266958680)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(97189651960855684)
,p_name=>'P354_P_TIP_COMPROBANTE_REF_PAR'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(175029362266958680)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(97190084764855685)
,p_name=>'P354_P_SER_COMPROBANTE_REF_PAR'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(175029362266958680)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(97190480577855685)
,p_name=>'P354_P_NRO_COMPROBANTE_REF_PAR'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(175029362266958680)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(97190857613855685)
,p_name=>'P354_P_COD_VENDEDOR_PAR'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(175029362266958680)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(97191240379855685)
,p_name=>'P354_P_COD_CONDICION_PAR'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(175029362266958680)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(97191607736855685)
,p_name=>'P354_P_COD_LISTA_PAR'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(175029362266958680)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(97192078969855685)
,p_name=>'P354_P_COD_ENTREGA_PAR'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(175029362266958680)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(97192423837855686)
,p_name=>'P354_P_COD_FLETE_PAR'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(175029362266958680)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(97192853197855686)
,p_name=>'P354_P_NRO_VALE_PAR'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(175029362266958680)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(97193230085855686)
,p_name=>'P354_P_SER_VALE_PAR'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(175029362266958680)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(97203688203855692)
,p_name=>'P354_TIP_COMPROBANTE_COPA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(180691933448647080)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(97204008980855692)
,p_name=>'P354_SER_COMPROBANTE_COPIA'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(180691933448647080)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(97204410171855692)
,p_name=>'P354_NRO_COMPROBANTE_COPIA'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(180691933448647080)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(97204860815855692)
,p_name=>'P354_TEXTO'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(180691933448647080)
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(97205274752855692)
,p_name=>'P354_SER_PRESUPUESTO_COPIA'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(180691933448647080)
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
 p_id=>wwv_flow_imp.id(97205615763855693)
,p_name=>'P354_NRO_PRESUPUESTO_COPIA'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(180691933448647080)
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
 p_id=>wwv_flow_imp.id(97206014154855693)
,p_name=>'P354_MANTIENE_PRECIO_COPIA'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(180691933448647080)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(99283216314806416)
,p_name=>'P354_AGREGAR_DETALLES'
,p_item_sequence=>800
,p_item_plug_id=>wwv_flow_imp.id(164930523575622966)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(134815563658775549)
,p_name=>'P354_AGREGAR_DETALLES_1'
,p_item_sequence=>810
,p_item_plug_id=>wwv_flow_imp.id(164930523575622966)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(134815630489775550)
,p_name=>'P354_CARGA_DETALLE_1'
,p_item_sequence=>720
,p_item_plug_id=>wwv_flow_imp.id(164930523575622966)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(175479816731656536)
,p_name=>'P354_INFORME'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(152938812125635215)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(99285157072806435)
,p_validation_name=>'Validador de gmail'
,p_validation_sequence=>10
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE ',
'    v_mensaje VARCHAR2(4000);',
'BEGIN',
'    if :P354_CORREO_CLIENTE is not null then    ',
'        INV.PCK_GENERAL_APEX.pr_validar_direccion_email(p_direccion_mail => :P354_CORREO_CLIENTE,',
'                                                        p_mensaje         => v_mensaje);',
'        IF v_mensaje IS NOT NULL THEN ',
'            RETURN v_mensaje;',
'        END IF;',
'    END IF;',
'END;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_associated_item=>wwv_flow_imp.id(96864318067522110)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(97206596019855693)
,p_validation_name=>unistr('Validaci\00F3n de edici\00F3n')
,p_validation_sequence=>20
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  valerta NUMBER;',
'BEGIN',
'  IF :P354_ESTADO <> ''P'' THEN',
unistr('     return ''El comprobante N\00B0 ''||:P354_SER_COMPROBANTE||'' ''||'),
'            to_char(:P354_NRO_COMPROBANTE)||'' no puede ser modificado.'';',
'  END IF;',
'END;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_when_button_pressed=>wwv_flow_imp.id(97026396645855606)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(97206961173855694)
,p_validation_name=>unistr('Validaci\00F3n de eliminar')
,p_validation_sequence=>30
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  valerta NUMBER;',
'BEGIN',
'  IF :P354_ESTADO <> ''P'' THEN',
unistr('     return ''El comprobante N\00B0 ''||:P354_SER_COMPROBANTE||'' ''||'),
'            to_char(:P354_NRO_COMPROBANTE)||'' no puede ser eliminado.'';',
'  END IF;',
'END;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_when_button_pressed=>wwv_flow_imp.id(97027190968855606)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(97212105090855697)
,p_name=>'Valida proceso comprobante'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P354_SER_COMPROBANTE'
,p_condition_element=>'P354_SER_COMPROBANTE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'focusout'
,p_da_event_comment=>'Valida proceso comprobante'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(97212670959855697)
,p_event_id=>wwv_flow_imp.id(97212105090855697)
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
'       AND TIP_COMPROBANTE = :P354_TIP_COMPROBANTE',
'       AND SER_COMPROBANTE = :P354_SER_COMPROBANTE',
'       AND SER_COMPROBANTE IN (''A'', ''B'', ''W'');',
'     ',
'  EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'      :P0_MENSAJE_VALIDACION := ''No se encuentra serie de comprobante.'';',
'    WHEN OTHERS THEN',
'      :P0_MENSAJE_VALIDACION := ''Error en la tabla de Series de Comprobantes'';',
'  END;'))
,p_attribute_02=>'P354_TIP_COMPROBANTE,P354_SER_COMPROBANTE'
,p_attribute_03=>'P0_MENSAJE_VALIDACION'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(97307738468855743)
,p_name=>'Obtiene datos por defectos'
,p_event_sequence=>10
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
,p_display_when_type=>'ITEM_IS_NULL'
,p_display_when_cond=>'P354_NRO_COMPROBANTE'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(97308251329855743)
,p_event_id=>wwv_flow_imp.id(97307738468855743)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  BEGIN ',
'  :P354_SER_COMPROBANTE     :=  inv.vtpresupuesto.fn_busca_parametro(''VT'', ''SER_PED_VENTAS'', :P0_MENSAJE_VALIDACION);',
'  :P354_COD_LISTA_PRECIO       :=   inv.vtpresupuesto.fn_busca_parametro( ''VT'', ''PRECIO_CONTADO'', :P0_MENSAJE_VALIDACION);',
'  :P354_COD_CONDICION_VENTA     :=   inv.vtpresupuesto.fn_busca_parametro( ''VT'', ''CONDICION_CONTADO'', :P0_MENSAJE_VALIDACION);',
'  :P354_TIP_CONTADO         :=  ''PED'';',
'  :P354_COD_MONEDA_PRECIO   :=   inv.vtpresupuesto.fn_busca_parametro( ''VT'', ''COD_MONEDA_PREC'', :P0_MENSAJE_VALIDACION);',
'  :P354_COD_MONEDA_BASE     :=   inv.vtpresupuesto.fn_busca_parametro( ''VT'', ''COD_MONEDA_BASE'', :P0_MENSAJE_VALIDACION);',
'  :P354_DIAS_VENCIM_PEDIDO  :=   inv.vtpresupuesto.fn_busca_parametro( ''VT'', ''DIAS_VENCIM_PEDIDO'', :P0_MENSAJE_VALIDACION);',
'  :P354_COD_MONEDA_DOL      :=   inv.vtpresupuesto.fn_busca_parametro( ''VT'', ''COD_MONEDA_DOL'', :P0_MENSAJE_VALIDACION);',
'  :P354_COD_MONEDA_GS       :=   inv.vtpresupuesto.fn_busca_parametro( ''VT'', ''COD_MONEDA_BASE'', :P0_MENSAJE_VALIDACION);',
'  :P354_RECARGO             :=   inv.vtpresupuesto.fn_busca_parametro( ''VT'', ''RECARGO_ARTICULO'', :P0_MENSAJE_VALIDACION);',
'  :P354_TIP_COMPROBANTE  := :P354_TIP_CONTADO;',
'',
'',
'if :P354_ESTADO =''P'' then',
'  :P354_DESC_ESTADO := ''Pendiente'';',
'elsif :P354_ESTADO =''F'' then',
'   :P354_DESC_ESTADO := ''Facturado'';',
'elsif :P354_ESTADO =''A'' then',
'   :P354_DESC_ESTADO := ''Anulado'';',
'   elsif :P354_ESTADO =''C'' then',
'   :P354_DESC_ESTADO := ''Cerrado'';',
'else',
'   :P354_DESC_ESTADO := '' '';',
'end if;',
'',
' EXCEPTION ',
'    WHEN NO_DATA_FOUND THEN ',
'        NULL;',
'    WHEN OTHERS THEN ',
'        NULL;',
' END;'))
,p_attribute_02=>'P354_ESTADO'
,p_attribute_03=>'P354_SER_COMPROBANTE,P354_COD_LISTA_PRECIO,P354_COD_CONDICION_VENTA,P354_TIP_CONTADO,P354_COD_MONEDA_PRECIO,P354_DIAS_VENCIM_PEDIDO,P354_COD_MONEDA_DOL,P354_COD_MONEDA_GS,P0_MENSAJE_VALIDACION,P354_TIP_COMPROBANTE,P354_COD_MONEDA_BASE,P354_DESC_ESTAD'
||'O'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(97213034792855697)
,p_name=>'Obtiene datos de cliente'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P354_COD_CLIENTE'
,p_condition_element=>'P354_COD_CLIENTE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_da_event_comment=>'Obtiene datos de cliente'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(97213542181855698)
,p_event_id=>wwv_flow_imp.id(97213034792855697)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P354_DESCUENTO_TOTAL := REPLACE(:P354_DESCUENTO_TOTAL , ''.'');',
':P354_DESCUENTO := REPLACE(:P354_DESCUENTO , ''.'');',
':P354_DESCUENTO := REPLACE(:P354_DESCUENTO , ''.'');',
':P354_RECARGO_AUX := REPLACE(:P354_RECARGO_AUX , ''.'');',
':P354_TOTAL_IVA := REPLACE(:P354_TOTAL_IVA , ''.'');',
':P354_RECARGO_PORC := REPLACE(:P354_RECARGO_PORC , ''.'');',
':P354_TOTAL := REPLACE(:P354_TOTAL , ''.'');',
':P354_LIMITE_CREDITO := REPLACE(:P354_LIMITE_CREDITO , ''.'');',
':P354_SALDO_DOLARES := REPLACE(:P354_SALDO_DOLARES , ''.'');',
':P354_SALDO_GS := REPLACE(:P354_SALDO_GS , ''.'');',
':P354_SALDO_TOTAL := REPLACE(:P354_SALDO_TOTAL , ''.'');',
':P354_VALORES_ADEPOSITAR := REPLACE(:P354_VALORES_ADEPOSITAR , ''.'');',
'BEGIN ',
'INV.VTPRESUPUESTO.PR_VALIDA_CLIENTES_VTPEDIDO(P_COD_SUCURSAL           => :P354_COD_SUCURSAL,',
'       P_IND_LLEVA_OC           => :P354_IND_LLEVA_OC,',
'       P_COD_CLIENTE            => :P354_COD_CLIENTE,',
'       P_COD_EMPRESA            => :P354_COD_EMPRESA,',
'       P_TIP_CLIENTE            => :P354_TIP_CLIENTE,',
'       P_NRO_COMPROBANTE        => :P354_NRO_COMPROBANTE,',
'       P_FECHA_TOPE_FACTURACION => :P354_FECHA_TOPE_FACTURACION,',
'       P_NOM_CLIENTE            => :P354_NOM_CLIENTE,',
'       P_COD_DIRECCION          => :P354_COD_DIRECCION,',
'       P_LIMITE_CREDITO         => :P354_LIMITE_CREDITO,',
'       P_COD_CONDICION_VENTA    => :P354_COD_CONDICION_VENTA,',
'       P_COD_LISTA_PRECIO       => :P354_COD_LISTA_PRECIO,',
'       P_COD_VENDEDOR           => :P354_COD_VENDEDOR,',
'       P_SALDO_DOLARES          => :P354_SALDO_DOLARES,',
'       P_SALDO_GS               => :P354_SALDO_GS,',
'       P_SALDO_TOTAL            => :P354_SALDO_TOTAL,',
'       P_POSIBLE                => :P354_POSIBLE,',
'       P_DIR_CLIENTE            => :P354_DIR_CLIENTE,',
'       P_TEL_CLIENTE            => :P354_TEL_CLIENTE,',
'       P_RUC                    => :P354_RUC,',
'       P_NRO_INSCRIPCION_AD     => :P354_NRO_INSCRIPCION_AD,',
'       P_TIPO_ENTREGA_CIUDAD    => :P354_TIPO_ENTREGA_CIUDAD,',
'       P_IND_CONFIRMAR_FACTURA  => :P354_IND_CONFIRMAR_FACTURA,',
'       P_MENSAJE_ERROR          => :P0_MENSAJE_VALIDACION,',
'       P_COPIANDO               => :P354_COPIANDO,',
'       P_COD_SUCURSAL_DIST      => :P354_COD_SUCURSAL_DIST,',
'       P_SOBREGIRADO            => :P354_SOBREGIRADO,',
'       P_DESC_JERARQUIA         => :P354_DESC_JERARQUIA,',
'       P_DESC_SCORING           => :P354_DESC_SCORING,',
'       P_DERIVADO               => :P354_DERIVADO,',
'       P_IND_IMPRESO            => :P354_IND_IMPRESO,',
'       P_TIP_COMPROBANTE_REF    => :P354_TIP_COMPROBANTE_REF,',
'       P_IND_EXENTO_AD          => :P354_IND_EXENTO_AD,',
'       P_TIPO_IMPUESTO          => :P354_TIPO_IMPUESTO,',
'       P_TIPO_CLIENTE           => :P354_TIPO_CLIENTE,',
'       P_COD_MONEDA_DOL         => :P354_COD_MODEDA_DOL,',
'       P_COD_MONEDA_GS          => :P354_COD_MODEDA_GS,',
'       P_VALORES_ADEPOSITAR     => :P354_VALORES_ADEPOSITAR,',
'       P_NRO_JERARQUIA          => :P354_NRO_JERARQUIA,',
'       P_PLAZO                  => :P354_PLAZO,',
'       P_TIP_DOCUMENTO          => :P354_TIP_DOCUMENTO,',
'       P_NIVEL                  => :P354_NIVEL,',
'       P_ESTADO_CLIENTE         => :P354_ESTADO_CLIENTE,',
'       P_COD_FLETE              => :P354_COD_FLETE,',
'       P_TIPO_ENTREGA           => :P354_TIPO_ENTREGA,',
'       P_FEC_VENCIMIENTO        => :P354_FEC_VENCIMIENTO,',
'       P_FEC_COMPROBANTE        => :P354_FEC_COMPROBANTE,',
'       P_DIAS_VENCIM_PEDIDO     => :P354_DIAS_VENCIM_PEDIDO,',
'       P_VALOR_CARPETA          => :P354_VALOR_CARPETA,',
'       P_COD_MONEDA             => :P354_COD_MONEDA,',
'       p_correo                 => :P354_CORREO_CLIENTE);',
'',
'EXCEPTION ',
'    WHEN NO_DATA_FOUND THEN ',
'        NULL;',
'    WHEN OTHERS THEN ',
'        NULL;',
'END;',
':P354_LIMITE_CREDITO := to_char(to_number(:P354_LIMITE_CREDITO), ''999G999G999G999G990D00'');',
':P354_SALDO_GS := to_char(to_number(:P354_SALDO_GS), ''999G999G999G999G990D00'');'))
,p_attribute_02=>'P354_COD_SUCURSAL,P354_IND_LLEVA_OC,P354_COD_CLIENTE,P354_COD_EMPRESA,P354_TIP_CLIENTE,P354_NRO_COMPROBANTE,P354_NOM_CLIENTE,P354_COD_DIRECCION,P354_LIMITE_CREDITO,P354_COD_CONDICION_VENTA,P354_COD_LISTA_PRECIO,P354_COD_VENDEDOR,P354_SALDO_DOLARES,P3'
||'54_SALDO_GS,P354_SALDO_TOTAL,P354_POSIBLE,P354_DIR_CLIENTE,P354_TEL_CLIENTE,P354_RUC,P354_NRO_INSCRIPCION_AD,P354_TIPO_ENTREGA_CIUDAD,P354_COPIANDO,P354_COD_SUCURSAL_DIST,P354_SOBREGIRADO,P354_DESC_JERARQUIA,P354_DESC_SCORING,P354_IND_IMPRESO,P354_TI'
||'P_COMPROBANTE_REF,P354_IND_EXENTO_AD,P354_TIPO_IMPUESTO,P354_TIPO_CLIENTE,P354_COD_MODEDA_DOL,P354_COD_MODEDA_GS,P354_VALORES_ADEPOSITAR,P354_NRO_JERARQUIA,P354_PLAZO,P354_TIP_DOCUMENTO,P354_NIVEL,P354_ESTADO_CLIENTE,P354_COD_FLETE,P354_TIPO_ENTREGA,'
||'P354_FEC_VENCIMIENTO,P354_FEC_COMPROBANTE,P354_DIAS_VENCIM_PEDIDO,P354_VALOR_CARPETA,P354_COD_MONEDA'
,p_attribute_03=>'P0_MENSAJE_VALIDACION,P354_COD_SUCURSAL,P354_IND_LLEVA_OC,P354_TIP_CLIENTE,P354_NRO_COMPROBANTE,P354_NOM_CLIENTE,P354_COD_DIRECCION,P354_LIMITE_CREDITO,P354_COD_CONDICION_VENTA,P354_COD_LISTA_PRECIO,P354_COD_VENDEDOR,P354_SALDO_DOLARES,P354_SALDO_GS,'
||'P354_SALDO_TOTAL,P354_POSIBLE,P354_DIR_CLIENTE,P354_TEL_CLIENTE,P354_RUC,P354_NRO_INSCRIPCION_AD,P354_TIPO_ENTREGA_CIUDAD,P354_COPIANDO,P354_SOBREGIRADO,P354_DESC_JERARQUIA,P354_DESC_SCORING,P354_IND_IMPRESO,P354_TIP_COMPROBANTE_REF,P354_IND_EXENTO_A'
||'D,P354_TIPO_IMPUESTO,P354_TIPO_CLIENTE,P354_COD_MODEDA_DOL,P354_COD_MODEDA_GS,P354_VALORES_ADEPOSITAR,P354_NRO_JERARQUIA,P354_PLAZO,P354_TIP_DOCUMENTO,P354_NIVEL,P354_ESTADO_CLIENTE,P354_COD_FLETE,P354_TIPO_ENTREGA,P354_FEC_VENCIMIENTO,P354_FEC_COMPR'
||'OBANTE,P354_DIAS_VENCIM_PEDIDO,P354_VALOR_CARPETA,P354_COD_MONEDA,P354_COD_SUCURSAL_DIST,P354_CORREO_CLIENTE'
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
 p_id=>wwv_flow_imp.id(97213990754855698)
,p_name=>'Obtiene datos de sucursales'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P354_COD_SUCURSAL_DIST'
,p_condition_element=>'P354_COD_SUCURSAL_DIST'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(97214447862855699)
,p_event_id=>wwv_flow_imp.id(97213990754855698)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P354_COD_SUCURSAL_DIST IS NOT NULL THEN',
'    BEGIN',
'      SELECT P.NOMBRE, P.DIRECCION, P.TELEFONO',
'        INTO :P354_NOMBRE, :P354_LUGAR_ENTREGA, :P354_TELEFONO_DIST',
'        FROM CC_CLIENTES C, BS_SUCURSAL_CLIENTE P',
'       WHERE C.COD_EMPRESA = :P354_COD_EMPRESA',
'         AND C.COD_CLIENTE = :P354_COD_CLIENTE',
'         AND C.COD_PERSONA = P.COD_PERSONA',
'         AND P.COD_SUCURSAL = :P354_COD_SUCURSAL_DIST;',
'    EXCEPTION',
'      WHEN OTHERS THEN',
'        :P0_MENSAJE_VALIDACION := ''No existe la sucursal del cliente'';',
'      ',
'        :P354_NOMBRE        := NULL;',
'        :P354_LUGAR_ENTREGA := NULL;',
'        :P354_TELEFONO_DIST := NULL;',
'        RETURN;',
'    END;',
'  ',
'    BEGIN',
'      SELECT NVL(DEPOSITO_ENTREGA, :P354_TIPO_ENTREGA_CIUDAD)',
'        INTO :P354_TIPO_ENTREGA_CIUDAD',
'        FROM CC_CLIENTES C, BS_SUCURSAL_CLIENTE P, CIUDADES CI',
'       WHERE C.COD_EMPRESA = :P354_COD_EMPRESA',
'         AND C.COD_CLIENTE = :P354_COD_CLIENTE',
'         AND C.COD_PERSONA = P.COD_PERSONA',
'         AND P.COD_SUCURSAL = :P354_COD_SUCURSAL_DIST',
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
'  IF :P354_COD_SUCURSAL_DIST IS NULL THEN',
'    DECLARE',
'      VEXISTE VARCHAR2(30);',
'      VERROR EXCEPTION;',
'    BEGIN',
'      BEGIN',
'        SELECT ''S''',
'          INTO VEXISTE',
'          FROM CC_CLIENTES C, BS_SUCURSAL_CLIENTE P',
'         WHERE C.COD_EMPRESA = :P354_COD_EMPRESA',
'           AND C.COD_CLIENTE = :P354_COD_CLIENTE',
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
'          :P354_NOMBRE        := NULL;',
'          :P354_LUGAR_ENTREGA := NULL;',
'          :P354_TELEFONO_DIST := NULL;',
'      END;',
'    END;',
'  ',
'  END IF;',
'',
'  :P354_TIPO_ENTREGA := NULL;',
'  :P354_COD_FLETE    := NULL;'))
,p_attribute_02=>'P354_COD_SUCURSAL_DIST,P354_COD_EMPRESA,P354_COD_CLIENTE,P354_TIPO_ENTREGA_CIUDAD'
,p_attribute_03=>'P354_NOMBRE,P354_LUGAR_ENTREGA,P354_TELEFONO_DIST,P0_MENSAJE_VALIDACION,P354_TIPO_ENTREGA_CIUDAD,P354_TIPO_ENTREGA,P354_COD_FLETE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(97214874279855699)
,p_name=>'Verifica orden'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P354_NRO_ORDEN_COMPRA'
,p_condition_element=>'P354_NRO_ORDEN_COMPRA'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'focusout'
,p_da_event_comment=>'Verifica orden'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(97215322757855699)
,p_event_id=>wwv_flow_imp.id(97214874279855699)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P354_IND_LLEVA_OC = ''S'' THEN',
'    IF :P354_NRO_ORDEN_COMPRA IS NOT NULL THEN',
'      DECLARE',
'        VEXISTE     VARCHAR2(10);',
'        VNRO_PEDIDO VARCHAR2(60);',
'      BEGIN',
'        SELECT ''S'', MAX(NRO_COMPROBANTE)',
'          INTO VEXISTE, VNRO_PEDIDO',
'          FROM VT_PEDIDOS_CABECERA C',
'         WHERE C.COD_EMPRESA = :P354_COD_EMPRESA',
'           AND NRO_ORDEN_COMPRA = :P354_NRO_ORDEN_COMPRA',
'           AND C.COD_CLIENTE = :P354_COD_CLIENTE',
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
,p_attribute_02=>'P354_IND_LLEVA_OC,P354_NRO_ORDEN_COMPRA,P354_COD_EMPRESA,P354_COD_CLIENTE'
,p_attribute_03=>'P0_MENSAJE_VALIDACION'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(97215726860855699)
,p_name=>'Verificaciones de vendedores'
,p_event_sequence=>70
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P354_COD_VENDEDOR'
,p_condition_element=>'P354_COD_VENDEDOR'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'focusout'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(97216200484855699)
,p_event_id=>wwv_flow_imp.id(97215726860855699)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P354_COD_VENDEDOR is not null then',
'		declare',
'				vestado varchar2(1);',
'		begin',
'				begin',
'					  select nvl( v.descripcion, p.nombre ),',
'					  			 v.estado',
'					    into :P354_NOM_VENDEDOR,',
'					    	   vestado',
'					    from fv_vendedores v, ',
'					         personas p ',
'					   where v.cod_empresa  = :P354_COD_EMPRESA',
'					     and v.cod_vendedor = :P354_COD_VENDEDOR',
'					     and v.cod_persona  = p.cod_persona;',
'				exception',
'					  when no_data_found then',
'						    :P354_NOM_VENDEDOR := NULL;',
unistr('						    :P0_MENSAJE_VALIDACION := ''No se encuentra c\00F3digo de vendedor. Favor verificar el c\00F3digo ingresado. '';'),
'						    RETURN;',
'					  when others then',
'						    :P354_NOM_VENDEDOR := NULL;',
'						    :P0_MENSAJE_VALIDACION := ''Error al consultar vendedores. ''|| sqlerrm;',
'						    RETURN;       ',
'				end;',
'				--',
'				if nvl(vestado, ''I'') <> ''A'' then',
'					  :P354_NOM_VENDEDOR := NULL;',
'				    :P0_MENSAJE_VALIDACION := ''El vendedor ingresado se encuentra inactivo. '';',
'				    RETURN;',
'				end if;',
'				--',
'				if :P354_TIP_CLIENTE IN ( bs_busca_parametro(''VT'', ''VT_TIPO_PERS_EMP''), bs_busca_parametro(''VT'', ''VT_TIPO_PERS_EMP_CPH'')) and :P354_COD_VENDEDOR <> bs_busca_parametro(''VT'', ''VT_COD_VEND_PERSONAL'') then',
'					  IF :P354_COD_VENDEDOR <> bs_busca_parametro(''VT'', ''VT_VEND_PREMIOS'') ',
'					  		and :P354_COD_VENDEDOR not in (''195'')  THEN					  ',
'						    :P354_NOM_VENDEDOR := NULL;',
unistr('						    :P0_MENSAJE_VALIDACION := ''El c\00F3digo de vendedor no corresponde. Debe asignar el c\00F3digo de vendedor asignado para las ventas a colaboradores. '';'),
'						    RETURN;',
'				    END IF;',
'				end if;',
'		end;',
'end if;',
'',
'if :P354_COD_VENDEDOR = ''18'' then',
'        :P354_OCULTAR  := 1;      ',
'else',
'        :P354_OCULTAR  := 2;',
'end if;',
'',
'if :P354_COD_VENDEDOR = ''19'' then',
'		:P354_COD_CONDICION_VENTA := ''20'' ;',
'		:P354_COMENTARIO          := ''FACTURAR DEL DEPOSITO''||'' ''||:P354_COD_SUCURSAL;',
'else ',
'		if :P354_COD_VENDEDOR in( ''193'' ) then	',
'                :P354_OCULTAR := 3;',
'		else',
'             :P354_OCULTAR := 4;',
'				IF :P354_COD_VENDEDOR in (''194'',''195'',''196'',''197'') THEN',
'			      :P354_DERIVADO := ''MA'';',
'						IF :P354_COD_VENDEDOR in (''194'',''196'') THEN',
'                                :P354_OCULTAR := 5;',
'					  END IF;	',
'				END IF;',
'		end if;	',
'end if;',
''))
,p_attribute_02=>'P354_COD_VENDEDOR,P354_COD_EMPRESA,P354_TIP_CLIENTE'
,p_attribute_03=>'P354_NOM_VENDEDOR,P0_MENSAJE_VALIDACION,P354_OCULTAR'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(97216634944855699)
,p_name=>'Muestra campos sucursales, nombres, ofertas'
,p_event_sequence=>80
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P354_OCULTAR'
,p_condition_element=>'P354_OCULTAR'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'1'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(97217164243855700)
,p_event_id=>wwv_flow_imp.id(97216634944855699)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P354_NOM_SUC_OFE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(97217556297855700)
,p_name=>'Oculta campos sucursales, nombres, ofertas'
,p_event_sequence=>90
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P354_OCULTAR'
,p_condition_element=>'P354_OCULTAR'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'2'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(97218045770855700)
,p_event_id=>wwv_flow_imp.id(97217556297855700)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P354_NOM_SUC_OFE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(97218421649855700)
,p_name=>unistr('Muestra motivos, secci\00F3n y d\00EDas')
,p_event_sequence=>100
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P354_OCULTAR'
,p_condition_element=>'P354_OCULTAR'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'3'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
,p_da_event_comment=>unistr('Muestra motivos, secci\00F3n y d\00EDas')
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(97218946382855701)
,p_event_id=>wwv_flow_imp.id(97218421649855700)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P354_DIAS'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(97219371619855701)
,p_name=>unistr('Oculta motivos, secci\00F3n y d\00EDas')
,p_event_sequence=>110
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P354_OCULTAR'
,p_condition_element=>'P354_OCULTAR'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'4'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(97219801004855701)
,p_event_id=>wwv_flow_imp.id(97219371619855701)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P354_DIAS'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(97220244985855701)
,p_name=>unistr('Muestra d\00EDas y secci\00F3n prestamos ')
,p_event_sequence=>120
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P354_OCULTAR'
,p_condition_element=>'P354_OCULTAR'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'5'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
,p_da_event_comment=>unistr('Muestra d\00EDas y secci\00F3n prestamos ')
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(97220705876855701)
,p_event_id=>wwv_flow_imp.id(97220244985855701)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P354_DIAS'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(97221156632855701)
,p_name=>'Validaciones condiciones ventas'
,p_event_sequence=>130
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P354_COD_CONDICION_VENTA'
,p_condition_element=>'P354_COD_CONDICION_VENTA'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_da_event_comment=>'Validaciones condiciones ventas'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(97221699366855702)
,p_event_id=>wwv_flow_imp.id(97221156632855701)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P354_COD_CONDICION_VENTA IS NULL THEN',
'RETURN;',
'END IF;',
'IF :P354_COD_CONDICION_VENTA IS NOT NULL THEN',
':P354_COD_CONDICION_VENTA_OLD := :P354_COD_CONDICION_VENTA;',
'END IF;',
'IF :P354_CARGA_CONDICION <> ''S'' THEN',
'DECLARE',
'  VALERTA       NUMBER;',
'  VAUTORIZACION VARCHAR2(1);',
'  VAUTORIZADO   VARCHAR2(1);',
'BEGIN',
'  SELECT C.DESCRIPCION, LP.COD_MONEDA, RECARGO',
'    INTO :P354_DESC_CONDICION, :P354_COD_MONEDA, :P354_RECARGO',
'    FROM CC_CONDICIONES_VENTAS C, VT_LISTAS_PRECIOS_CAB LP',
'   WHERE C.COD_EMPRESA = :P354_COD_EMPRESA',
'     AND C.ESTADO = ''A''',
'     AND C.COD_CONDICION_VENTA = :P354_COD_CONDICION_VENTA',
'     AND LP.COD_EMPRESA = C.COD_EMPRESA',
'     AND LP.COD_LISTA_PRECIO = C.COD_LISTA_PRECIO;',
'EXCEPTION',
'  WHEN NO_DATA_FOUND THEN',
'    :P354_DESC_CONDICION   := NULL;',
'    :P354_COD_LISTA_PRECIO := NULL;',
'    :P354_COD_MONEDA       := NULL;',
'    :P354_DESC_MONEDA      := NULL;',
unistr('    :P0_MENSAJE_VALIDACION := ''Condici\00F3n de venta no puede aplicarse al cliente. '';'),
'    RETURN;',
'  WHEN OTHERS THEN',
'    :P354_DESC_CONDICION   := NULL;',
'    :P354_COD_LISTA_PRECIO := NULL;',
'    :P354_COD_MONEDA       := NULL;',
'    :P354_DESC_MONEDA      := NULL;',
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
'    INTO :P354_DESC_CONDICION, :P354_COD_MONEDA, :P354_RECARGO',
'    FROM CC_CONDICIONES_VENTAS C, VT_LISTAS_PRECIOS_CAB LP',
'   WHERE C.COD_EMPRESA = :P354_COD_EMPRESA',
'     AND C.ESTADO = ''A''',
'     AND C.COD_CONDICION_VENTA = :P354_COD_CONDICION_VENTA',
'     AND LP.COD_EMPRESA = C.COD_EMPRESA',
'     AND LP.COD_LISTA_PRECIO = C.COD_LISTA_PRECIO;',
'EXCEPTION',
'  WHEN NO_DATA_FOUND THEN',
'    :P354_DESC_CONDICION   := NULL;',
'    :P354_COD_LISTA_PRECIO := NULL;',
'    :P354_RECARGO          := NULL;',
'    :P354_COD_MONEDA       := NULL;',
'    :P354_DESC_MONEDA      := NULL;',
unistr('    :P0_MENSAJE_VALIDACION := ''Condici\00F3n de venta no puede aplicarse al cliente. '';'),
'    RETURN;',
'  WHEN OTHERS THEN',
'    :P354_DESC_CONDICION   := NULL;',
'    :P354_COD_LISTA_PRECIO := NULL;',
'    :P354_RECARGO          := NULL;',
'    :P354_COD_MONEDA       := NULL;',
'    :P354_DESC_MONEDA      := NULL;',
unistr('    :P0_MENSAJE_VALIDACION := ''Error al consultar la condici\00F3n de venta. '' ||'),
'                              SQLERRM;',
'    RETURN;',
'END;',
'END IF;',
'BEGIN',
'SELECT COD_LISTA_PRECIO',
'  INTO :P354_COD_LISTA_PRECIO',
'  FROM CC_CLIENTES',
' WHERE COD_EMPRESA = :P354_COD_EMPRESA',
'   AND COD_CLIENTE = :P354_COD_CLIENTE;',
'EXCEPTION',
'WHEN OTHERS THEN',
'  :P354_COD_LISTA_PRECIO := NULL;',
'END;',
'IF :P354_RECARGO IS NULL THEN',
'IF :P354_COD_CONDICION_VENTA =',
'   BS_BUSCA_PARAMETRO(''VT'', ''VT_COND_CONTADO'') OR',
'   :P354_COD_CONDICION_VENTA =',
'   BS_BUSCA_PARAMETRO(''VT'', ''VT_COND_CONT_ST'') THEN',
'  :P354_RECARGO := 0;',
'ELSE',
'  :P354_RECARGO := 3;',
'END IF;',
'END IF;',
'IF :P354_COD_CONDICION_VENTA =',
' BS_BUSCA_PARAMETRO(''VT'', ''VT_COND_CONT_ST'') THEN',
':P354_COD_LISTA_PRECIO := ''15'';',
'END IF;',
'IF :P354_COD_CLIENTE IS NOT NULL THEN',
'DECLARE',
'  VSG VARCHAR2(20);',
'BEGIN',
'  SELECT IND_FINANCIACION',
'    INTO VSG',
'    FROM CC_CLIENTES',
'   WHERE COD_EMPRESA = :P354_COD_EMPRESA',
'     AND COD_CLIENTE = :P354_COD_CLIENTE;',
'  IF NVL(VSG, ''N'') = ''S'' THEN',
'    :P354_RECARGO := 0;',
'  END IF;',
'EXCEPTION',
'  WHEN OTHERS THEN',
'    VSG := NULL;',
'END;',
'END IF;',
':P354_RECARGO := 0;',
'IF NVL(:P354_TIP_COMPROBANTE_REF, ''x'') = ''SNC'' THEN',
':P354_COD_CONDICION_VENTA := :P354_COD_CONDICION_VENTA;',
':P354_COD_LISTA_PRECIO    := :P354_COD_LISTA_PRECIO;',
':P354_COD_MONEDA          := ''1'';',
':P354_COD_SUCURSAL_DIST   := ''1'';',
':P354_TIPO_ENTREGA        := :P354_TIPO_ENTREGA;',
':P354_COD_FLETE           := :P354_COD_FLETE;',
'END IF;'))
,p_attribute_02=>'P354_COD_CONDICION_VENTA,P354_CARGA_CONDICION,P354_COD_EMPRESA,P354_COD_CLIENTE,P354_RECARGO,P354_TIPO_ENTREGA,P354_COD_FLETE'
,p_attribute_03=>'P354_COD_CONDICION_VENTA_OLD,P354_DESC_CONDICION,P354_COD_MONEDA,P354_RECARGO,P354_COD_LISTA_PRECIO,P354_DESC_MONEDA,P0_MENSAJE_VALIDACION,P354_TIPO_ENTREGA,P354_COD_FLETE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(97222138103855702)
,p_event_id=>wwv_flow_imp.id(97221156632855701)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P354_COD_CONDICION_VENTA_OLD <> :P354_COD_CONDICION_VENTA and :P354_COD_CONDICION_VENTA_OLD is not null and (:P354_ESTADO =''P'' OR :P354_ESTADO IS NULL) then',
'    inv.vtpresupuesto.pr_cambios_vtpedido(p_control_fin               => :P354_CONTROL_FIN,',
'                    p_recargo                    => :P354_RECARGO,',
'                    p_mensaje_error              => :P0_MENSAJE_VALIDACION,',
'                    p_cod_sucursal               => :P354_COD_SUCURSAL,',
'                    p_mantiene_precio            => :P354_MANTIENE_PRECIO,',
'                    p_variable_cod_empresa       => :P354_COD_EMPRESA,',
'                    p_variable_cod_moneda_base   => :P354_COD_MONEDA_BASE,',
'                    p_cab_ind_exento_ad          => :P354_IND_EXENTO_AD,',
'                    p_cab_tipo_impuesto          => :P354_TIPO_IMPUESTO,',
'                    p_cab_cod_client             => :P354_COD_CLIENTE,',
'                    p_cab_cod_lista_precio       => :P354_COD_LISTA_PRECIO,',
'                    p_cab_recargo                => :P354_RECARGO,',
'                    p_cab_cod_moneda             => :P354_COD_MONEDA,',
'                    p_variable_cod_moneda_precio => :P354_COD_MONEDA_PRECIO,',
'                    p_cab_cambio_moneda_precio   => :P354_CAMBIO_MONEDA_PRECIO,',
'                    p_cab_tip_cambio             => :P354_TIP_CAMBIO,',
'                    p_cab_decimales              => :P354_DECIMALES,',
'                    p_cab_fec_comprobante        => :P354_FEC_COMPROBANTE,',
'                    p_cab_gravadas_parcial       =>  :P354_GRAVADAS_PARCIAL,',
'                    p_cab_exentas_parcial        => :P354_EXENTAS_PARCIAL,',
'                    p_cab_tip_cambio_compra      =>  :P354_TIP_CAMBIO_COMPRA);',
'',
'                    ',
'    inv.vtpresupuesto.pr_cambios2(p_cod_cliente                 => :P354_COD_CLIENTE,',
'                    p_cod_condicion_venta      => :P354_COD_CONDICION_VENTA,',
'                    p_cod_lista_precio         => :P354_COD_LISTA_PRECIO,',
'                    p_cod_sucursal             => :P354_COD_SUCURSAL,',
'                    p_cod_empresa              => :P354_COD_EMPRESA,',
'                    p_fec_comprobante          => :P354_FEC_COMPROBANTE,',
'                    p_cod_flete                => :P354_COD_FLETE,',
'                    p_ind_tipo_pedido          => :P354_IND_TIPO_PEDIDO,',
'                    p_decimales                => :P354_DECIMALES,',
'                    p_mensaje_error            =>  :P0_MENSAJE_VALIDACION,',
'                    p_var_mult                 => :P354_VAR_MULT,',
'                    p_var_div                  => :P354_VAR_DIV,',
'                    p_var_recargo              => :P354_RECARGO,',
'                    p_cab_iva_parcial          => :P354_IVA_PARCIAL,',
'                    p_cab_subtotal_parcial     => :P354_SUBTOTAL_PARCIAL,',
'                    p_cab_gravadas_parcial     => :P354_GRAVADAS_PARCIAL,',
'                    p_cab_exentas_parcial      => :P354_EXENTAS_PARCIAL,',
'                    p_cab_porcentaje_descuento => :P354_PORCENTAJE_DESCUENTO,',
'                    p_cab_descuento            => :P354_DESCUENTO,',
'                    p_cab_total_iva            => :P354_TOTAL_IVA,',
'                    p_cab_subtotal             => :P354_SUBTOTAL,',
'                    p_cab_gravadas             => :P354_GRAVADAS,',
'                    p_cab_exentas              => :P354_EXENTAS,',
'                    p_cab_recargo_porc         => :P354_RECARGO_PORC,',
'                    p_cab_recargo              => :P354_RECARGO,',
'                    p_cab_tip_cambio           => :P354_TIP_CAMBIO,',
'                    p_cab_flete_total          => :P354_FLETE_TOTAL,',
'                    p_var_porc_recargo_ant     => :P354_PORC_RECARGO_ANT,',
'                    p_cab_total                => :P354_TOTAL);',
'end iF;',
':P354_RECARGO := 0;',
'',
'',
''))
,p_attribute_02=>'P354_CONTROL_FIN,P354_RECARGO,P354_COD_SUCURSAL,P354_MANTIENE_PRECIO,P354_COD_EMPRESA,P354_COD_MONEDA_BASE,P354_IND_EXENTO_AD,P354_TIPO_IMPUESTO,P354_COD_CLIENTE,P354_COD_LISTA_PRECIO,P354_COD_MONEDA,P354_COD_MONEDA_PRECIO,P354_TIP_CAMBIO,P354_DECIMA'
||'LES,P354_FEC_COMPROBANTE,P354_GRAVADAS_PARCIAL,P354_EXENTAS_PARCIAL,P354_TIP_CAMBIO_COMPRA,P354_COD_CONDICION_VENTA_OLD,P354_COD_CONDICION_VENTA,P354_ESTADO,P354_COD_FLETE,P354_VAR_MULT,P354_VAR_DIV,P354_IVA_PARCIAL,P354_SUBTOTAL_PARCIAL,P354_PORCENT'
||'AJE_DESCUENTO,P354_DESCUENTO,P354_TOTAL_IVA,P354_SUBTOTAL,P354_GRAVADAS,P354_EXENTAS,P354_RECARGO_PORC,P354_PORC_RECARGO_ANT,P354_TOTAL'
,p_attribute_03=>'P0_MENSAJE_VALIDACION,P354_COD_MONEDA_BASE,P354_GRAVADAS_PARCIAL,P354_EXENTAS_PARCIAL,P354_TIP_CAMBIO_COMPRA,P354_VAR_MULT,P354_VAR_DIV,P354_IVA_PARCIAL,P354_SUBTOTAL_PARCIAL,P354_PORCENTAJE_DESCUENTO,P354_TOTAL_IVA,P354_SUBTOTAL,P354_GRAVADAS,P354_E'
||'XENTAS,P354_RECARGO_PORC,P354_RECARGO,P354_FLETE_TOTAL,P354_PORC_RECARGO_ANT,P354_TOTAL,P354_COD_MONEDA'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(97222592016855702)
,p_name=>'Calcula monto'
,p_event_sequence=>140
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P354_COD_LISTA_PRECIO'
,p_bind_type=>'bind'
,p_bind_event_type=>'focusout'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(97223014772855703)
,p_event_id=>wwv_flow_imp.id(97222592016855702)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P354_LISTA_PRECIO_OLD <> :P354_COD_LISTA_PRECIO AND',
'     :P354_LISTA_PRECIO_OLD IS NOT NULL AND',
'     (:P354_ESTADO = ''P'' OR :P354_ESTADO IS NULL) THEN',
'INV.vtpresupuesto.PR_CAMBIOS_VTPEDIDO(P_CONTROL_FIN            => :P354_CONTROL_FIN,',
'                             P_RECARGO                    => :P354_RECARGO,',
'                             P_MENSAJE_ERROR              => :P0_MENSAJE_VALIDACION,',
'                             P_COD_SUCURSAL               => :P354_COD_SUCURSAL,',
'                             P_MANTIENE_PRECIO            => :P354_MANTIENE_PRECIO,',
'                             P_VARIABLE_COD_EMPRESA       => :P354_COD_EMPRESA,',
'                             P_VARIABLE_COD_MONEDA_BASE   => :P354_COD_MONEDA_BASE,',
'                             P_CAB_IND_EXENTO_AD          => :P354_IND_EXENTO_AD,',
'                             P_CAB_TIPO_IMPUESTO          => :P354_TIPO_IMPUESTO,',
'                             P_CAB_COD_CLIENT             => :P354_COD_CLIENTE,',
'                             P_CAB_COD_LISTA_PRECIO       => :P354_COD_LISTA_PRECIO,',
'                             P_CAB_RECARGO                => :P354_RECARGO,',
'                             P_CAB_COD_MONEDA             => :P354_COD_MONEDA,',
'                             P_VARIABLE_COD_MONEDA_PRECIO => :P354_COD_MONEDA_PRECIO,',
'                             P_CAB_CAMBIO_MONEDA_PRECIO   => :P354_CAMBIO_MONEDA_PRECIO,',
'                             P_CAB_TIP_CAMBIO             => :P354_TIP_CAMBIO,',
'                             P_CAB_DECIMALES              => :P354_DECIMALES,',
'                             P_CAB_FEC_COMPROBANTE        => :P354_FEC_COMPROBANTE,',
'                             P_CAB_GRAVADAS_PARCIAL       => :P354_GRAVADAS_PARCIAL,',
'                             P_CAB_EXENTAS_PARCIAL        => :P354_EXENTAS_PARCIAL,',
'                             P_CAB_TIP_CAMBIO_COMPRA      => :P354_TIP_CAMBIO_COMPRA);',
'',
'INV.vtpresupuesto.PR_CAMBIOS2(P_COD_CLIENTE          => :P354_COD_CLIENTE,',
'                     P_COD_CONDICION_VENTA      => :P354_COD_CONDICION_VENTA,',
'                     P_COD_LISTA_PRECIO         => :P354_COD_LISTA_PRECIO,',
'                     P_COD_SUCURSAL             => :P354_COD_SUCURSAL,',
'                     P_COD_EMPRESA              => :P354_COD_EMPRESA,',
'                     P_FEC_COMPROBANTE          => :P354_FEC_COMPROBANTE,',
'                     P_COD_FLETE                => :P354_COD_FLETE,',
'                     P_IND_TIPO_PEDIDO          => :P354_IND_TIPO_PEDIDO,',
'                     P_DECIMALES                => :P354_DECIMALES,',
'                     P_MENSAJE_ERROR            => :P0_MENSAJE_VALIDACION,',
'                     P_VAR_MULT                 => :P354_VAR_MULT,',
'                     P_VAR_DIV                  => :P354_VAR_DIV,',
'                     P_VAR_RECARGO              => :P354_RECARGO,',
'                     P_CAB_IVA_PARCIAL          => :P354_IVA_PARCIAL,',
'                     P_CAB_SUBTOTAL_PARCIAL     => :P354_SUBTOTAL_PARCIAL,',
'                     P_CAB_GRAVADAS_PARCIAL     => :P354_GRAVADAS_PARCIAL,',
'                     P_CAB_EXENTAS_PARCIAL      => :P354_EXENTAS_PARCIAL,',
'                     P_CAB_PORCENTAJE_DESCUENTO => :P354_PORCENTAJE_DESCUENTO,',
'                     P_CAB_DESCUENTO            => :P354_DESCUENTO,',
'                     P_CAB_TOTAL_IVA            => :P354_TOTAL_IVA,',
'                     P_CAB_SUBTOTAL             => :P354_SUBTOTAL,',
'                     P_CAB_GRAVADAS             => :P354_GRAVADAS,',
'                     P_CAB_EXENTAS              => :P354_EXENTAS,',
'                     P_CAB_RECARGO_PORC         => :P354_RECARGO_PORC,',
'                     P_CAB_RECARGO              => :P354_RECARGO,',
'                     P_CAB_TIP_CAMBIO           => :P354_TIP_CAMBIO,',
'                     P_CAB_FLETE_TOTAL          => :P354_FLETE_TOTAL,',
'                     P_VAR_PORC_RECARGO_ANT     => :P354_PORC_RECARGO_ANT,',
'                     P_CAB_TOTAL                => :P354_TOTAL);',
'  END IF;',
'  :P354_RECARGO := 0;'))
,p_attribute_02=>'P354_CONTROL_FIN,P354_RECARGO,P354_COD_SUCURSAL,P354_MANTIENE_PRECIO,P354_COD_EMPRESA,P354_COD_MONEDA_BASE,P354_IND_EXENTO_AD,P354_TIPO_IMPUESTO,P354_COD_CLIENTE,P354_COD_LISTA_PRECIO,P354_COD_MONEDA,P354_COD_MONEDA_PRECIO,P354_TIP_CAMBIO,P354_DECIMA'
||'LES,P354_FEC_COMPROBANTE,P354_GRAVADAS_PARCIAL,P354_EXENTAS_PARCIAL,P354_TIP_CAMBIO_COMPRA,P354_COD_CONDICION_VENTA_OLD,P354_COD_CONDICION_VENTA,P354_ESTADO,P354_COD_FLETE,P354_VAR_MULT,P354_VAR_DIV,P354_IVA_PARCIAL,P354_SUBTOTAL_PARCIAL,P354_PORCENT'
||'AJE_DESCUENTO,P354_DESCUENTO,P354_TOTAL_IVA,P354_SUBTOTAL,P354_GRAVADAS,P354_EXENTAS,P354_RECARGO_PORC,P354_PORC_RECARGO_ANT,P354_TOTAL,P354_LISTA_PRECIO_OLD'
,p_attribute_03=>'P0_MENSAJE_VALIDACION,P354_COD_MONEDA_BASE,P354_GRAVADAS_PARCIAL,P354_EXENTAS_PARCIAL,P354_TIP_CAMBIO_COMPRA,P354_VAR_MULT,P354_VAR_DIV,P354_IVA_PARCIAL,P354_SUBTOTAL_PARCIAL,P354_PORCENTAJE_DESCUENTO,P354_TOTAL_IVA,P354_SUBTOTAL,P354_GRAVADAS,P354_E'
||'XENTAS,P354_RECARGO_PORC,P354_RECARGO,P354_FLETE_TOTAL,P354_PORC_RECARGO_ANT,P354_TOTAL,P354_COD_MONEDA'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(97224308728855704)
,p_name=>'Valida tipo entrega'
,p_event_sequence=>160
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P354_TIPO_ENTREGA'
,p_condition_element=>'P354_TIPO_ENTREGA'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(97224807295855704)
,p_event_id=>wwv_flow_imp.id(97224308728855704)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P354_TIPO_ENTREGA_CIUDAD IS NOT NULL THEN',
'    BEGIN',
'      SELECT DESCRIPCION, COD_FLETE',
'        INTO :P354_DESC_FLETE, :P354_COD_FLETE',
'        FROM VT_FLETES',
'       WHERE COD_EMPRESA = :P354_COD_EMPRESA',
'         AND TIPO_ENTREGA = :P354_TIPO_ENTREGA',
'         AND ORIGEN_ENTREGA = :P354_TIPO_ENTREGA_CIUDAD',
'         AND ROWNUM = 1;',
'    EXCEPTION',
'      WHEN OTHERS THEN',
'        NULL;',
'      ',
'    END;',
'  ELSE',
'  ',
'    :P354_DESC_FLETE := NULL;',
'    :P354_COD_FLETE  := NULL;',
'  END IF;'))
,p_attribute_02=>'P354_TIPO_ENTREGA_CIUDAD,P354_COD_EMPRESA,P354_TIPO_ENTREGA'
,p_attribute_03=>'P354_DESC_FLETE,P354_COD_FLETE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(97225286733855704)
,p_name=>'Valida flete'
,p_event_sequence=>170
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P354_COD_FLETE'
,p_condition_element=>'P354_COD_FLETE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'focusout'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(97225722710855704)
,p_event_id=>wwv_flow_imp.id(97225286733855704)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P354_COD_FLETE IS NOT NULL THEN',
'    BEGIN',
'      SELECT DESCRIPCION',
'        INTO :P354_DESC_FLETE',
'        FROM VT_FLETES',
'       WHERE COD_EMPRESA = :P354_COD_EMPRESA',
'         AND COD_FLETE = :P354_COD_FLETE',
'         AND TIPO_ENTREGA = :P354_TIPO_ENTREGA',
'         AND ACTIVO = ''S'';',
'    EXCEPTION',
'      WHEN OTHERS THEN',
'        :P0_MENSAJE_VALIDACION := ''No existe el codigo de flete'';',
'        :P354_DESC_FLETE       := NULL;',
'        RETURN;',
'    END;',
'  ELSE',
'    :P354_DESC_FLETE   := NULL;',
'    :P354_TIPO_ENTREGA := NULL;',
'  END IF;',
'  ---------------PARA COLOCAR LOS PARAMETROS EN PEDIDOS GENERADOS DESDE UNA SNC',
'  IF NVL(:P354_TIP_COMPROBANTE_REF, ''x'') = ''SNC'' AND',
'     :P354_COD_FLETE IS NULL THEN',
'    BEGIN',
'      SELECT DESCRIPCION',
'        INTO :P354_DESC_FLETE',
'        FROM VT_FLETES',
'       WHERE COD_EMPRESA = :P354_COD_EMPRESA',
'         AND COD_FLETE = :P354_COD_FLETE',
'         AND TIPO_ENTREGA = :P354_TIPO_ENTREGA',
'         AND ACTIVO = ''S'';',
'    EXCEPTION',
'      WHEN OTHERS THEN',
'        :P0_MENSAJE_VALIDACION := ''No existe el codigo de flete'';',
'        :P354_DESC_FLETE       := NULL;',
'        RETURN;',
'    END;',
'  END IF;'))
,p_attribute_02=>'P354_COD_FLETE,P354_COD_EMPRESA,P354_TIP_COMPROBANTE_REF'
,p_attribute_03=>'P354_DESC_FLETE,P0_MENSAJE_VALIDACION'
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
 p_id=>wwv_flow_imp.id(97226183269855704)
,p_name=>'Valida nro obra'
,p_event_sequence=>180
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P354_NRO_OBRA'
,p_condition_element=>'P354_NRO_OBRA'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'focusout'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(97226691661855705)
,p_event_id=>wwv_flow_imp.id(97226183269855704)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P354_NRO_OBRA IS NULL THEN',
unistr('    :P0_MENSAJE_VALIDACION := ''Para continuar con la carga de productos se debe colocar el "N\00BA de obra" al que corresponde el pedido. De no estar relacionado con una obra, seleccionar la opci\00F3n "Ninguno" para continuar.'';'),
'    RETURN;',
'  ',
'  ELSIF :P354_NRO_OBRA <> ''0'' THEN',
'    DECLARE',
'      VCOND VARCHAR(5);',
'    BEGIN',
'      SELECT COD_CONDICION',
'        INTO VCOND',
'        FROM SM_OT_OBRA O',
'       WHERE O.NRO_COMPROBANTE = :P354_NRO_OBRA;',
'      IF VCOND IS NOT NULL AND VCOND <> :P354_COD_CONDICION_VENTA THEN',
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
,p_attribute_02=>'P354_NRO_OBRA,P354_COD_CONDICION_VENTA'
,p_attribute_03=>'P0_MENSAJE_VALIDACION'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(97227084937855705)
,p_name=>'Valida monedas'
,p_event_sequence=>190
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P354_COD_MONEDA'
,p_condition_element=>'P354_COD_MONEDA'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(97227597162855705)
,p_event_id=>wwv_flow_imp.id(97227084937855705)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P354_COD_MONEDA IS NULL THEN',
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
'      INTO :P354_DESC_MONEDA,',
'           :P354_TIP_CAMBIO,',
'           :P354_DECIMALES,',
'           :P354_TIP_CAMBIO_COMPRA',
'      FROM MONEDAS',
'     WHERE COD_MONEDA = :P354_COD_MONEDA;',
'    IF NVL(:P354_DECIMALES, 0) > 0 THEN',
'      :P354_DECIMALES := 2;',
'    END IF;',
'  EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'      :P354_DESC_MONEDA      := NULL;',
'      :P354_DECIMALES        := 0;',
unistr('      :P0_MENSAJE_VALIDACION := ''No se encuentra c\00F3digo de moneda.'';'),
'      RETURN;',
'    WHEN OTHERS THEN',
'      :P354_DESC_MONEDA      := NULL;',
'      :P354_DECIMALES        := 0;',
'      :P0_MENSAJE_VALIDACION := ''Error en la tabla de Monedas : '' ||',
'                                SQLERRM;',
'      RETURN;',
'  END;'))
,p_attribute_02=>'P354_COD_MONEDA,P354_DECIMALES'
,p_attribute_03=>'P354_DESC_MONEDA,P354_TIP_CAMBIO,P354_DECIMALES,P354_TIP_CAMBIO_COMPRA,P0_MENSAJE_VALIDACION'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(97227961634855705)
,p_name=>'Valida pedido anterior'
,p_event_sequence=>200
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P354_SER_PEDIDO_ANTERIOR'
,p_condition_element=>'P354_SER_PEDIDO_ANTERIOR'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'focusout'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(97228402457855705)
,p_event_id=>wwv_flow_imp.id(97227961634855705)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P354_NRO_PEDIDO_ANTERIOR IS NOT NULL THEN',
'    DECLARE',
'      VERROR EXCEPTION;',
'      VCLIENTE VARCHAR2(100);',
'    BEGIN',
'      IF NVL(VCLIENTE, ''0'') <> :P354_COD_CLIENTE THEN',
'        RAISE VERROR;',
'      END IF;',
'    EXCEPTION',
'      WHEN VERROR THEN',
'        :P0_MENSAJE_VALIDACION := ''Debe cargar el pedido anterior del cliente para los arreglos administrativos!'';',
'      WHEN OTHERS THEN',
'        NULL;',
'    END;',
'  END IF;'))
,p_attribute_02=>'P354_NRO_PEDIDO_ANTERIOR,P354_COD_CLIENTE'
,p_attribute_03=>'P0_MENSAJE_VALIDACION'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(97228882239855705)
,p_name=>unistr('Valida datos de env\00EDo')
,p_event_sequence=>210
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P354_IND_ENVIAR'
,p_bind_type=>'bind'
,p_bind_event_type=>'focusout'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(97229374226855706)
,p_event_id=>wwv_flow_imp.id(97228882239855705)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P354_IND_ENVIAR = ''S'' THEN',
'	  :P354_IND_GUARDA         := ''N'';',
'	  :P354_IND_TRANSPORTADORA := ''N'';',
'	  :P354_FEC_ENVIO := SYSDATE;',
'	  ',
'ELSIF :P354_IND_ENVIAR = ''N'' THEN',
'	  :P354_FEC_ENVIO := NULL;	',
'END IF;',
''))
,p_attribute_02=>'P354_IND_ENVIAR'
,p_attribute_03=>'P354_IND_GUARDA,P354_IND_TRANSPORTADORA,P354_FEC_ENVIO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(97229738945855706)
,p_name=>'Valida datos guarda'
,p_event_sequence=>220
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P354_IND_GUARDA'
,p_bind_type=>'bind'
,p_bind_event_type=>'focusout'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(97230223790855706)
,p_event_id=>wwv_flow_imp.id(97229738945855706)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
' IF :P354_IND_ENVIAR = ''S'' THEN',
'    :P354_FEC_ENVIO := SYSDATE;',
'  ELSIF :P354_IND_ENVIAR = ''N'' THEN',
'    :P354_FEC_ENVIO := NULL;',
'  END IF;',
'',
'  IF :P354_ENTREGA_REMISION = ''S'' THEN',
unistr('    :P0_MENSAJE_VALIDACION := ''El pedido ya tiene entrega con remisi\00F3n'';'),
'    :P354_IND_GUARDA       := ''N'';',
'    RETURN;',
'  END IF;',
''))
,p_attribute_02=>'P354_IND_ENVIAR,P354_ENTREGA_REMISION'
,p_attribute_03=>'P354_FEC_ENVIO,P0_MENSAJE_VALIDACION,P354_IND_GUARDA'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(97230642594855706)
,p_name=>'Valida ind transportador'
,p_event_sequence=>230
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P354_IND_TRANSPORTADORA'
,p_bind_type=>'bind'
,p_bind_event_type=>'focusout'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(97231120252855706)
,p_event_id=>wwv_flow_imp.id(97230642594855706)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P354_IND_ENVIAR = ''S'' THEN',
'    :P354_FEC_ENVIO := SYSDATE;',
'ELSIF :P354_IND_ENVIAR = ''N'' THEN',
'    :P354_FEC_ENVIO := NULL;',
'END IF;',
'',
'IF :P354_IND_TRANSPORTADORA = ''S'' THEN',
'    :P354_IND_ENVIAR := ''N'';',
'    :P354_IND_GUARDA := ''N'';',
'END IF;'))
,p_attribute_02=>'P354_IND_ENVIAR,P354_IND_TRANSPORTADORA'
,p_attribute_03=>'P354_FEC_ENVIO,P354_IND_GUARDA,P354_IND_ENVIAR'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(97231588667855706)
,p_name=>unistr('Valida entrega remisi\00F3n')
,p_event_sequence=>240
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P354_ENTREGA_REMISION'
,p_bind_type=>'bind'
,p_bind_event_type=>'focusout'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(97232016067855707)
,p_event_id=>wwv_flow_imp.id(97231588667855706)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P354_IND_GUARDA = ''S'' then',
unistr('	:P0_MENSAJE_VALIDACION := ''El pedido ya est\00E1 en guarda'';'),
'	:P354_ENTREGA_REMISION := ''N'';',
'	return;',
'end if;',
'',
'if :P354_COMENTARIO is null and :P354_ENTREGA_REMISION = ''S'' then',
'	:P0_MENSAJE_VALIDACION :=  ''Se debe completar el campo instrucciones de entrega'';',
'	return;',
'end if;'))
,p_attribute_02=>'P354_IND_GUARDA,P354_COMENTARIO,P354_ENTREGA_REMISION'
,p_attribute_03=>'P0_MENSAJE_VALIDACION,P354_ENTREGA_REMISION'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(97232404515855707)
,p_name=>'Valida confirma factura'
,p_event_sequence=>250
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P354_IND_CONFIRMAR_FACTURA'
,p_bind_type=>'bind'
,p_bind_event_type=>'focusout'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(97232926579855707)
,p_event_id=>wwv_flow_imp.id(97232404515855707)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P354_IND_ENVIAR = ''S'' THEN',
'    :P354_FEC_ENVIO := SYSDATE;',
'  ELSIF :P354_IND_ENVIAR = ''N'' THEN',
'    :P354_FEC_ENVIO := NULL;',
'  END IF;',
'',
'  IF :P354_IND_TRANSPORTADORA = ''S'' THEN',
'    :P354_IND_ENVIAR := ''N'';',
'    :P354_IND_GUARDA := ''N'';',
'  END IF;'))
,p_attribute_02=>'P354_IND_ENVIAR,P354_IND_TRANSPORTADORA'
,p_attribute_03=>'P354_FEC_ENVIO,P354_IND_GUARDA'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(97233353419855707)
,p_name=>unistr('Validaciones art\00EDculos_1')
,p_event_sequence=>260
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P354_COD_ART_CORTO'
,p_condition_element=>'P354_COD_ART_CORTO'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'focusout'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(97235834295855709)
,p_event_id=>wwv_flow_imp.id(97233353419855707)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P0_MENSAJE_VALIDACION := (f_mensaje_pedido(:P354_COD_CLIENTE,',
'                                            :P354_COD_CONDICION_VENTA,',
'                                            :P354_COD_LISTA_PRECIO,',
'                                            1,',
'                                            :P354_COD_ARTICULO, ',
'                                            0));',
'                                           '))
,p_attribute_02=>'P354_COD_CLIENTE,P354_COD_CONDICION_VENTA,P354_COD_LISTA_PRECIO,P354_COD_ARTICULO'
,p_attribute_03=>'P0_MENSAJE_VALIDACION'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(97234399100855708)
,p_event_id=>wwv_flow_imp.id(97233353419855707)
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
'V_PRECIO_UNITARIO  := replace(:P354_PRECIO_UNITARIO,''.'');',
'inv.VTPRESUPUESTO.pr_validaciones_articulos(p_cab_mantiene_precio  => :P354_MANTIENE_PRECIO,',
'                  p_cab_sucursal          => :P354_COD_SUCURSAL,',
'                  p_det_desc_articulo     => :P354_DESC_ARTICULO,',
'                  p_det_precio_unitario   => V_PRECIO_UNITARIO,',
'                  p_det_cod_moneda_base   => :P354_COD_MONEDA_BASE_1,',
'                  p_det_cod_grupo_art     => :P354_COD_GRUPO_ANT,',
'                  p_det_cod_origen_art    => :P354_COD_ORIGEN_ART,',
'                  p_det_modifica_precio   => :P354_MODIFICA_PRECIO,',
'                  p_det_porc_iva          => :P354_PORC_IVA_1,',
'                  p_det_cod_articulo      => :P354_COD_ARTICULO,',
'                  p_det_peso              => :P354_PESO,',
'                  p_det_volumen           => :P354_VOLUMEN,',
'                  p_det_ind_no_descuento  => :P354_IND_NO_DESCUENTO,',
'                  p_mensaje_error         => :P0_MENSAJE_VALIDACION,',
'                  p_cab_cod_empresa       => :P354_COD_EMPRESA,',
'                  p_det_cod_iva           => :P354_COD_IVA,',
'                  p_det_es_promo          => :P354_ES_PROMO_1,',
'                  p_det_porc_descuento    => :P354_PORC_DESCUENTO,',
'                  p_cab_cod_moneda_base   => :P354_COD_MONEDA_BASE,',
'                  p_cab_ind_exento_ad     => :P354_IND_EXENTO_AD,',
'                  p_cab_tipo_impuesto     => :P354_TIPO_IMPUESTO,',
'                  p_det_cantidad          => :P354_CANTIDAD,',
'                  p_cab_cod_lista_precio  => :P354_COD_LISTA_PRECIO,',
'                  p_cab_cod_cliente       => :P354_COD_CLIENTE,',
'                  p_cab_recargo           => :P354_RECARGO,',
'                  p_cab_cod_moneda_precio => :P354_COD_MONEDA_PRECIO,',
'                  p_cambio_moneda_precio  => :P354_CAMBIO_MONEDA_PRECIO,',
'                  p_cab_tip_cambio        => :P354_TIP_CAMBIO_COMPRA,',
'                  p_cab_decimales         => :P354_DECIMALES,',
'                  p_tip_cambio_compra     => :P354_TIP_CAMBIO_COMPRA,--:P354_TIP_CAMBIO_COMPRA,',
'                  p_det_precio_lista      => :P354_PRECIO_LISTA,',
'                  p_cab_fec_comprobante   => :P354_FEC_COMPROBANTE,',
'                  p_cab_gravadas_parcial  => :P354_GRAVADAS_PARCIAL,',
'                  p_det_importe_ant       => :P354_IMPORTE_ANT,',
'                  p_cab_exentas_parcial   => :P354_EXENTAS_PARCIAL,',
'                  p_det_cod_art_corto     => :P354_COD_ART_CORTO,',
'                  p_cab_cod_moneda        => :P354_COD_MONEDA);',
'IF :P354_COD_MONEDA = ''1'' THEN ',
'    :P354_PRECIO_UNITARIO  := TO_CHAR(V_PRECIO_UNITARIO,''999G999G999G999G999G999G990'');',
'    ',
'ELSE ',
'    :P354_PRECIO_UNITARIO  := TO_CHAR(V_PRECIO_UNITARIO,''999G999G999G999G990D00'');',
'    ',
'END IF;',
'',
'END;'))
,p_attribute_02=>'P354_MANTIENE_PRECIO,P354_COD_SUCURSAL,P354_PRECIO_UNITARIO,P354_COD_GRUPO_ANT,P354_COD_ORIGEN_ART,   P354_PORC_IVA_1,P354_COD_ARTICULO,P354_PESO,P354_VOLUMEN,P354_COD_EMPRESA,P354_COD_IVA,   P354_ES_PROMO_1,P354_PORC_DESCUENTO,P354_COD_MONEDA_BASE,P'
||'354_IND_EXENTO_AD,P354_TIPO_IMPUESTO,   P354_CANTIDAD,P354_COD_LISTA_PRECIO,P354_COD_CLIENTE,P354_RECARGO,P354_COD_MONEDA_PRECIO,   P354_CAMBIO_MONEDA_PRECIO,P354_TIP_CAMBIO,P354_DECIMALES,P354_TIP_CAMBIO_COMPRA,P354_PRECIO_LISTA,   P354_FEC_COMPROBA'
||'NTE,P354_GRAVADAS_PARCIAL,P354_EXENTAS_PARCIAL,P354_COD_ART_CORTO,P354_COD_MONEDA,   P354_MODIFICA_PRECIO,P354_IVA_ANT,P354_IMPORTE_ANT,P354_IND_NO_DESCUENTO,P354_COD_MONEDA_BASE_1'
,p_attribute_03=>'P354_DESC_ARTICULO,P354_COD_GRUPO_ANT,P354_COD_ORIGEN_ART,P354_PORC_IVA_1, P354_COD_ARTICULO,P354_VOLUMEN,P0_MENSAJE_VALIDACION,P354_COD_IVA,P354_PORC_DESCUENTO,P354_CANTIDAD, P354_PRECIO_LISTA,P354_GRAVADAS_PARCIAL,P354_EXENTAS_PARCIAL,P354_MODIFICA'
||'_PRECIO,P354_IMPORTE_ANT, P354_IND_NO_DESCUENTO,P354_COD_MONEDA_BASE_1,P354_PRECIO_UNITARIO,P354_PESO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(97234828023855708)
,p_event_id=>wwv_flow_imp.id(97233353419855707)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'inv.vtpresupuesto.PR_VALIDA_MIX_DESCUENTOS(P_VAR_CANTIDAD_PROMO_MIX  => :P354_CANTIDAD_PROMO_MIX,',
'                                    P_DET_COD_ARTICULO        => :P354_COD_ARTICULO,',
'                                    P_VAR_COD_EMPRESA         => :P354_COD_EMPRESA,',
'                                    P_VAR_COD_CLIENTE         => :P354_COD_CLIENTE,',
'                                    P_VAR_COD_LISTA_PRECIO    => :P354_COD_LISTA_PRECIO,',
'                                    P_DET_NRO_PROMO           => :P354_NRO_PROMO_1,',
'                                    P_DET_PORC_DESCUENTO      => :P354_PORC_DESCUENTO,',
'                                    P_DET_CANTIDAD            => :P354_CANTIDAD,',
'                                    P_DET_IND_PROMO           => :P354_IND_PROMO,',
'                                    P_VAR_COD_CONDICION_VENTA => :P354_COD_CONDICION_VENTA);',
'',
'  IF :P354_COD_SUCURSAL IN (''09'', ''105'', ''95'', ''30'') THEN',
'    BEGIN',
'      SELECT DESCUENTO',
'        INTO :P354_PORC_DESCUENTO',
'        FROM VT_OFERTAS_OUTLET',
'       WHERE COD_EMPRESA = :P354_COD_EMPRESA',
'         AND COD_ARTICULO = :P354_COD_ARTICULO',
'         AND FEC_CIERRE >= :P354_FEC_COMPROBANTE',
'         AND FEC_ALTA < :P354_FEC_COMPROBANTE',
'         AND COD_ARTICULO = :P354_COD_ARTICULO',
'         AND :P354_COD_SUCURSAL IN (''09'', ''105'', ''95'', ''30'');',
'    EXCEPTION',
'      WHEN OTHERS THEN',
'        :P354_PORC_DESCUENTO := 30;',
'    END;',
'  END IF;',
'  '))
,p_attribute_02=>'P354_COD_ARTICULO,P354_COD_EMPRESA,P354_COD_CLIENTE,P354_COD_LISTA_PRECIO,P354_NRO_PROMO_1,P354_PORC_DESCUENTO,   P354_CANTIDAD,P354_IND_PROMO,P354_COD_CONDICION_VENTA,P354_COD_SUCURSAL,P354_FEC_COMPROBANTE'
,p_attribute_03=>'P354_CANTIDAD_PROMO_MIX,P354_PORC_DESCUENTO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(97235316482855708)
,p_event_id=>wwv_flow_imp.id(97233353419855707)
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
'v_total_iva := replace(:P354_TOTAL_IVA,''.'');',
'V_SUBTOTAL := replace(:P354_SUBTOTAL,''.'');',
'V_TOTAL   := replace(:P354_TOTAL,''.'');',
'V_PRECIO_UNITARIO  := replace(:P354_PRECIO_UNITARIO,''.'');',
'V_TOTAL_IVA_1 := replace(:P354_TOTAL_IVA_1,''.'');',
'V_MONTO_TOTAL := replace(:P354_MONTO_TOTAL,''.'');',
'',
':P354_DESCUENTO := NULL;',
':P354_RECARGO := 0;',
'v_total_iva := NULL;',
'V_SUBTOTAL := NULL;',
'V_TOTAL := NULL;',
'INV.vtpresupuesto.PR_CALCULA_RECARGO(P_DET_PORC_RECARGO_ANT => :P354_PORC_RECARGO_ANT,',
'P_DET_CARGA_PORC_RECARGO => V_CARGA_PORC_RECARGO,',
'P_CAB_DECIMALES => :P354_DECIMALES,',
'P_MENSAJE_ERROR => :P0_MENSAJE_VALIDACION,',
'P_VAR_MULT => :P354_VAR_MULT,',
'P_VAR_DIV => :P354_VAR_DIV,',
'P_DET_PORC_IVA => :P354_PORC_IVA_1,',
'P_DET_PRECIO_UNITARIO => V_PRECIO_UNITARIO,',
'P_DET_CANTIDAD_UB => :P354_CANTIDAD_UB,',
'P_DET_CANTIDAD => :P354_CANTIDAD,',
'P_DET_PORC_DESCUENTO => :P354_PORC_DESCUENTO,',
'P_DET_PORC_RECARGO => :P354_PORC_RECARGO,',
'P_DET_DESCUENTO => :P354_DESCUENTO,',
'P_DET_MONTO_TOTAL => V_MONTO_TOTAL,',
'P_DET_RECARGO => :P354_RECARGO,',
'P_VAR_PORC_IVA => :P354_PORC_IVA,',
'P_DET_COD_ARTICULO => :P354_COD_ARTICULO,',
'P_VAR_RECARGO => :P354_RECARGO,',
'P_DET_TOTAL_IVA => V_TOTAL_IVA_1,',
'P_CAB_IVA_PARCIAL => :P354_IVA_PARCIAL,',
'P_DET_IVA_ANT => :P354_IVA_ANT,',
'P_CAB_SUBTOTAL_PARCIAL => :P354_SUBTOTAL_PARCIAL,',
'P_DET_IMPORTE_ANT  => :P354_IMPORTE_ANT,',
'P_CAB_GRAVADAS_PARCIAL => :P354_GRAVADAS_PARCIAL,',
'P_CAB_EXENTAS_PARCIAL => :P354_EXENTAS_PARCIAL,',
'P_CAB_PORCENTAJE_DESCUENTO => :P354_PORCENTAJE_DESCUENTO,',
'P_CAB_DESCUENTO => :P354_DESCUENTO,',
'P_CAB_TOTAL_IVA => v_total_iva,',
'P_CAB_SUBTOTAL => V_SUBTOTAL,',
'P_CAB_GRAVADAS => :P354_GRAVADAS,',
'P_CAB_EXENTAS => :P354_EXENTAS,',
'P_CAB_TOTAL => V_TOTAL,',
'P_CAB_RECARGO_PORC => :P354_RECARGO_PORC,',
'P_CAB_RECARGO => :P354_RECARGO,',
'P_DET_MONTO_GRAVADA_10 => :P354_MONTO_GRAVADA_10,',
'P_DET_MONTO_GRAVADA_5 => :P354_MONTO_GRAVADA_5,',
'P_DET_MONTO_EXENTA => :P354_MONTO_EXENTA,',
'P_CAB_TIP_CAMBIO => :P354_TIP_CAMBIO,',
'P_COD_EMPRESA => :P354_COD_EMPRESA,',
'P_COD_FLETE => :P354_COD_FLETE,',
'P_CAB_FLETE_TOTAL => :P354_FLETE_TOTAL,',
'P_DET_TOTAL_PESO => :P354_TOTAL_PESO,',
'P_DET_TOTAL_VOLUMEN => :P354_TOTAL_VOLUMEN,',
'P_VAR_PORC_RECARGO_ANT => :P354_PORC_RECARGO_ANT);',
'',
':P354_TOTAL_IVA := TO_CHAR(v_total_iva,''999G999G999G999G999G999G990'');',
':P354_SUBTOTAL := TO_CHAR(V_SUBTOTAL,''999G999G999G999G999G999G990'');',
':P354_TOTAL   := TO_CHAR(V_TOTAL,''999G999G999G999G999G999G990'');',
':P354_PRECIO_UNITARIO  := TO_CHAR(V_PRECIO_UNITARIO,''999G999G999G999G999G999G990'');',
':P354_TOTAL_IVA_1 := TO_CHAR(V_TOTAL_IVA_1,''999G999G999G999G999G999G990'');',
':P354_MONTO_TOTAL := TO_CHAR(V_MONTO_TOTAL,''999G999G999G999G999G999G990'');',
'/*',
':P354_COD_MONEDA_BASE_1  := NULL;',
':P354_COD_GRUPO_ANT  := NULL;',
':P354_COD_ORIGEN_ART  := NULL;',
':P354_PORC_IVA_1  := NULL;',
':P354_VOLUMEN  := NULL;',
':P354_IND_NO_DESCUENTO  := NULL;',
':P354_COD_IVA  := NULL;',
':P354_RECARGO  := NULL;',
':P354_PRECIO_LISTA  := NULL;',
'',
':P354_DESCUENTO := NULL;',
':P354_RECARGO := 0;',
'v_total_iva := NULL;',
'V_SUBTOTAL := NULL;',
'V_TOTAL := NULL;*/',
'END;'))
,p_attribute_02=>'P354_DECIMALES,P354_VAR_MULT,P354_VAR_DIV,P354_PORC_IVA_1,P354_PRECIO_UNITARIO,P354_CANTIDAD,P354_PORC_DESCUENTO,   P354_PORC_RECARGO,P354_DESCUENTO_1,P354_MONTO_TOTAL,P354_RECARGO_1,P354_PORC_IVA,P354_COD_ARTICULO,   P354_RECARGO,P354_TOTAL_IVA_1,P3'
||'54_IVA_PARCIAL,P354_IVA_ANT,P354_SUBTOTAL_PARCIAL,P354_IMPORTE_ANT,   P354_GRAVADAS_PARCIAL,P354_EXENTAS_PARCIAL,P354_PORCENTAJE_DESCUENTO,P354_DESCUENTO,P354_TOTAL_IVA,   P354_SUBTOTAL,P354_GRAVADAS,P354_EXENTAS,P354_TOTAL,P354_RECARGO_PORC,P354_MON'
||'TO_GRAVADA_10,P354_MONTO_GRAVADA_5,   P354_MONTO_EXENTA,P354_TIP_CAMBIO,P354_COD_EMPRESA,P354_COD_FLETE,P354_TOTAL_PESO,P354_VOLUMEN'
,p_attribute_03=>'P0_MENSAJE_VALIDACION,P354_VAR_MULT,P354_VAR_DIV,P354_CANTIDAD_UB,P354_RECARGO,P354_TOTAL_IVA_1,P354_IVA_PARCIAL,   P354_IVA_ANT,P354_SUBTOTAL_PARCIAL,P354_IMPORTE_ANT,P354_GRAVADAS_PARCIAL,P354_EXENTAS_PARCIAL,   P354_PORCENTAJE_DESCUENTO,P354_GRAVA'
||'DAS,P354_EXENTAS,   P354_RECARGO_PORC,P354_MONTO_GRAVADA_5,P354_MONTO_GRAVADA_10,P354_MONTO_EXENTA,P354_FLETE_TOTAL,P354_PORC_RECARGO_ANT,P354_MONTO_TOTAL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(97236345146855709)
,p_event_id=>wwv_flow_imp.id(97233353419855707)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_FOCUS'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P354_COD_ARTICULO'
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(97233831822855707)
,p_event_id=>wwv_flow_imp.id(97233353419855707)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P354_COD_IVA = ''7'' THEN ',
'    :P354_VALIDA_ARTICULO :=  1;',
'ELSE ',
'    :P354_VALIDA_ARTICULO := 0;',
'END IF;'))
,p_attribute_02=>'P354_COD_IVA'
,p_attribute_03=>'P354_VALIDA_ARTICULO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(97236751684855709)
,p_name=>unistr('Validaciones datos art\00EDculos_1')
,p_event_sequence=>270
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P354_COD_ARTICULO'
,p_condition_element=>'P354_COD_ARTICULO'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'focusout'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(97237735119855710)
,p_event_id=>wwv_flow_imp.id(97236751684855709)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P0_MENSAJE_VALIDACION := (f_mensaje_pedido(:P354_COD_CLIENTE,',
'                                            :P354_COD_CONDICION_VENTA,',
'                                            :P354_COD_LISTA_PRECIO,',
'                                            1,',
'                                            :P354_COD_ARTICULO, ',
'                                            0));',
'                                            ',
':P354_DET_COMENTARIO := :P0_MENSAJE_VALIDACION;'))
,p_attribute_02=>'P354_COD_CLIENTE,P354_COD_CONDICION_VENTA,P354_COD_LISTA_PRECIO,P354_COD_ARTICULO'
,p_attribute_03=>'P0_MENSAJE_VALIDACION,P354_DET_COMENTARIO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(97238277881855710)
,p_event_id=>wwv_flow_imp.id(97236751684855709)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P354_TOTAL_IVA := replace(:P354_TOTAL_IVA,''.'');',
':P354_SUBTOTAL := replace(:P354_SUBTOTAL,''.'');',
':P354_TOTAL   := replace(:P354_TOTAL,''.'');',
':P354_PRECIO_UNITARIO  := replace(:P354_PRECIO_UNITARIO,''.'');',
':P354_TOTAL_IVA_1 := replace(:P354_TOTAL_IVA_1,''.'');',
':P354_MONTO_TOTAL := replace(:P354_MONTO_TOTAL,''.'');',
'inv.vtpresupuesto.pr_validaciones_det_articulos(p_cop_mantiene_precio       => :P354_COD_MANTIENE_PRECIO,',
'            p_det_cod_articulo =>  :P354_COD_ARTICULO,',
'            p_det_desc_articulo => :P354_DESC_ARTICULO,',
'            p_det_precio_unitario => :P354_PRECIO_UNITARIO,',
'            p_det_cod_moneda_base => :P354_COD_MONEDA_BASE_1,',
'            p_det_cod_grupo_art => :P354_COD_GRUPO_ANT,',
'            p_det_cod_origen_art => :P354_COD_ORIGEN_ART,',
'            p_det_modifica_precio => :P354_MODIFICA_PRECIO,',
'            p_det_porc_iva => :P354_PORC_IVA_1,',
'            p_det_cod_art_corto => :P354_COD_ART_CORTO,',
'            p_det_peso => :P354_PESO,',
'            p_det_volumen => :P354_VOLUMEN,',
'            p_det_ind_no_descuento => :P354_IND_NO_DESCUENTO,',
'            p_var_cod_empresa => :P354_COD_EMPRESA,',
'            p_det_cod_iva  => :P354_COD_IVA,',
'            p_det_es_promo => :P354_ES_PROMO_1,',
'            p_det_porc_descuento  => :P354_PORC_DESCUENTO,',
'            p_cab_cod_condicion_venta  => :P354_COD_CONDICION_VENTA,',
'            p_var_cod_moneda_base => :P354_COD_MONEDA_BASE,',
'            p_cab_ind_exento_ad => :P354_IND_EXENTO_AD,',
'            p_cab_tipo_impuesto => :P354_TIPO_IMPUESTO,',
'            p_det_cantidad => :P354_CANTIDAD,',
'            p_cab_cod_sucursal => :P354_COD_SUCURSAL,',
'            p_cab_cod_cliente => :P354_COD_CLIENTE,',
'            p_var_recargo => :P354_RECARGO,',
'            p_cab_cod_lista_precio => :P354_COD_LISTA_PRECIO,',
'            p_cab_recargo  => :P354_RECARGO,',
'            p_cab_cod_moneda  => :P354_COD_MONEDA,',
'            p_var_cod_moneda_precio => :P354_COD_MONEDA_PRECIO,',
'            p_cab_cambio_moneda_precio => :P354_CAMBIO_MONEDA_PRECIO,',
'            p_cab_tip_cambio => :P354_TIP_CAMBIO,',
'            p_cab_decimales => :P354_DECIMALES,',
'            p_det_precio_lista => :P354_PRECIO_LISTA,',
'            p_cab_fec_comprobante => :P354_FEC_COMPROBANTE,',
'            p_cab_gravadas_parcial  => :P354_GRAVADAS_PARCIAL,',
'            p_det_importe_ant => :P354_IMPORTE_ANT,',
'            p_cab_exentas_parcial => :P354_EXENTAS_PARCIAL,',
'            p_det_total => :P354_TOTAL,',
'            p_var_descuento_gastro => :P354_DESCUENTO_GASTRO,',
'            p_det_comentario => :P354_COMENTARIO,',
'            p_mensaje_error => :P0_MENSAJE_VALIDACION,',
'            p_cab_tip_cambio_compra => :P354_TIP_CAMBIO_COMPRA,',
'            p_det_stock_actual => :P354_STOCK_ACTUAL_1,',
'            p_det_stock_reserv => :P354_STOCK_RESERV,',
'            p_cambio_moneda_precio => :P354_CAMBIO_MONEDA_PRECIO);',
'',
'IF :P354_COD_MONEDA = ''1'' THEN ',
'    :P354_PRECIO_UNITARIO  := TO_CHAR(:P354_PRECIO_UNITARIO,''999G999G999G999G999G999G990'');',
'    :P354_TOTAL_IVA := TO_CHAR(:P354_TOTAL_IVA,''999G999G999G999G999G999G990'');',
'    :P354_SUBTOTAL := TO_CHAR(:P354_SUBTOTAL,''999G999G999G999G999G999G990'');',
'    :P354_TOTAL   := TO_CHAR(:P354_TOTAL,''999G999G999G999G999G999G990'');',
'    /*:P354_TOTAL_IVA_1 := TO_CHAR(:P354_TOTAL_IVA_1,''999G999G999G999G999G999G990'');',
'    :P354_MONTO_TOTAL := TO_CHAR(:P354_MONTO_TOTAL,''999G999G999G999G999G999G990'');*/',
'ELSE ',
'    :P354_PRECIO_UNITARIO  := TO_CHAR(:P354_PRECIO_UNITARIO,''999G999G999G999G990D00'');',
'    :P354_TOTAL_IVA := TO_CHAR(:P354_TOTAL_IVA,''999G999G999G999G990D00'');',
'    :P354_SUBTOTAL := TO_CHAR(:P354_SUBTOTAL,''999G999G999G999G990D00'');',
'    :P354_TOTAL   := TO_CHAR(:P354_TOTAL,''999G999G999G999G990D00'');',
'    /*:P354_TOTAL_IVA_1 := TO_CHAR(:P354_TOTAL_IVA_1,''999G999G999G999G990D00'');',
'    :P354_MONTO_TOTAL := TO_CHAR(:P354_MONTO_TOTAL,''999G999G999G999G990D00'');*/',
'END IF;',
''))
,p_attribute_02=>'P354_COD_MANTIENE_PRECIO,P354_COD_ARTICULO,P354_IND_NO_DESCUENTO,P354_COD_EMPRESA,P354_COD_IVA,   P354_ES_PROMO_1,P354_PORC_DESCUENTO,P354_COD_CONDICION_VENTA,P354_COD_MONEDA_BASE,P354_IND_EXENTO_AD,   P354_TIPO_IMPUESTO,P354_CANTIDAD,P354_COD_SUCURS'
||'AL,P354_COD_CLIENTE,P354_RECARGO,P354_COD_MONEDA,   P354_COD_MONEDA_PRECIO,P354_CAMBIO_MONEDA_PRECIO,P354_TIP_CAMBIO,P354_DECIMALES,P354_FEC_COMPROBANTE,   P354_GRAVADAS_PARCIAL,P354_IMPORTE_ANT,P354_EXENTAS_PARCIAL,P354_TOTAL,P354_DESCUENTO_GASTRO, '
||'  P354_TIP_CAMBIO_COMPRA,P354_COD_ART_CORTO,P354_COD_LISTA_PRECIO'
,p_attribute_03=>'P354_DESC_ARTICULO,P354_PRECIO_UNITARIO,P354_PORC_IVA_1,P354_CANTIDAD,P354_COD_ART_CORTO,P354_STOCK_ACTUAL,P354_STOCK_ACTUAL_1,P354_PORC_DESCUENTO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(97237215233855709)
,p_event_id=>wwv_flow_imp.id(97236751684855709)
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
'V_PRECIO_UNITARIO  := replace(:P354_PRECIO_UNITARIO,''.'');',
'inv.vtpresupuesto.pr_validaciones_articulos(p_cab_mantiene_precio  => :P354_MANTIENE_PRECIO,',
'                  p_cab_sucursal          => :P354_COD_SUCURSAL,',
'                  p_det_desc_articulo     => :P354_DESC_ARTICULO,',
'                  p_det_precio_unitario   => V_PRECIO_UNITARIO,',
'                  p_det_cod_moneda_base   => :P354_COD_MONEDA_BASE_1,',
'                  p_det_cod_grupo_art     => :P354_COD_GRUPO_ANT,',
'                  p_det_cod_origen_art    => :P354_COD_ORIGEN_ART,',
'                  p_det_modifica_precio   => :P354_MODIFICA_PRECIO,',
'                  p_det_porc_iva          => :P354_PORC_IVA_1,',
'                  p_det_cod_articulo      => :P354_COD_ARTICULO,',
'                  p_det_peso              => :P354_PESO,',
'                  p_det_volumen           => :P354_VOLUMEN,',
'                  p_det_ind_no_descuento  => :P354_IND_NO_DESCUENTO,',
'                  p_mensaje_error         => :P0_MENSAJE_VALIDACION,',
'                  p_cab_cod_empresa       => :P354_COD_EMPRESA,',
'                  p_det_cod_iva           => :P354_COD_IVA,',
'                  p_det_es_promo          => :P354_ES_PROMO_1,',
'                  p_det_porc_descuento    => :P354_PORC_DESCUENTO,',
'                  p_cab_cod_moneda_base   => :P354_COD_MONEDA_BASE,',
'                  p_cab_ind_exento_ad     => :P354_IND_EXENTO_AD,',
'                  p_cab_tipo_impuesto     => :P354_TIPO_IMPUESTO,',
'                  p_det_cantidad          => :P354_CANTIDAD,',
'                  p_cab_cod_lista_precio  => :P354_COD_LISTA_PRECIO,',
'                  p_cab_cod_cliente       => :P354_COD_CLIENTE,',
'                  p_cab_recargo           => :P354_RECARGO,',
'                  p_cab_cod_moneda_precio => :P354_COD_MONEDA_PRECIO,',
'                  p_cambio_moneda_precio  => :P354_CAMBIO_MONEDA_PRECIO,',
'                  p_cab_tip_cambio        => :P354_TIP_CAMBIO_COMPRA,',
'                  p_cab_decimales         => :P354_DECIMALES,',
'                  p_tip_cambio_compra     => :P354_TIP_CAMBIO_COMPRA,--:P354_TIP_CAMBIO_COMPRA,',
'                  p_det_precio_lista      => :P354_PRECIO_LISTA,',
'                  p_cab_fec_comprobante   => :P354_FEC_COMPROBANTE,',
'                  p_cab_gravadas_parcial  => :P354_GRAVADAS_PARCIAL,',
'                  p_det_importe_ant       => :P354_IMPORTE_ANT,',
'                  p_cab_exentas_parcial   => :P354_EXENTAS_PARCIAL,',
'                  p_det_cod_art_corto     => :P354_COD_ART_CORTO,',
'                  p_cab_cod_moneda        => :P354_COD_MONEDA);',
'IF :P354_COD_MONEDA = ''1'' THEN ',
'    :P354_PRECIO_UNITARIO  := TO_CHAR(V_PRECIO_UNITARIO,''999G999G999G999G999G999G990'');',
'    ',
'ELSE ',
'    :P354_PRECIO_UNITARIO  := TO_CHAR(V_PRECIO_UNITARIO,''999G999G999G999G990D00'');',
'    ',
'END IF;',
'',
'END;'))
,p_attribute_02=>'P354_MANTIENE_PRECIO,P354_COD_SUCURSAL,P354_PRECIO_UNITARIO,P354_COD_GRUPO_ANT,P354_COD_ORIGEN_ART,   P354_PORC_IVA_1,P354_COD_ARTICULO,P354_PESO,P354_VOLUMEN,P354_COD_EMPRESA,P354_COD_IVA,   P354_ES_PROMO_1,P354_PORC_DESCUENTO,P354_COD_MONEDA_BASE,P'
||'354_IND_EXENTO_AD,P354_TIPO_IMPUESTO,   P354_CANTIDAD,P354_COD_LISTA_PRECIO,P354_COD_CLIENTE,P354_RECARGO,P354_COD_MONEDA_PRECIO,   P354_CAMBIO_MONEDA_PRECIO,P354_TIP_CAMBIO,P354_DECIMALES,P354_TIP_CAMBIO_COMPRA,P354_PRECIO_LISTA,   P354_FEC_COMPROBA'
||'NTE,P354_GRAVADAS_PARCIAL,P354_EXENTAS_PARCIAL,P354_COD_ART_CORTO,P354_COD_MONEDA,   P354_MODIFICA_PRECIO,P354_IVA_ANT,P354_IMPORTE_ANT,P354_IND_NO_DESCUENTO,P354_COD_MONEDA_BASE_1'
,p_attribute_03=>'P354_DESC_ARTICULO,P354_COD_GRUPO_ANT,P354_COD_ORIGEN_ART,P354_PORC_IVA_1, P354_COD_ARTICULO,P354_VOLUMEN,P0_MENSAJE_VALIDACION,P354_COD_IVA,P354_PORC_DESCUENTO,P354_CANTIDAD, P354_PRECIO_LISTA,P354_GRAVADAS_PARCIAL,P354_EXENTAS_PARCIAL,P354_MODIFICA'
||'_PRECIO,P354_IMPORTE_ANT, P354_IND_NO_DESCUENTO,P354_COD_MONEDA_BASE_1,P354_PRECIO_UNITARIO,P354_PESO'
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
 p_id=>wwv_flow_imp.id(97239273511855710)
,p_event_id=>wwv_flow_imp.id(97236751684855709)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P354_COD_IVA = ''7'' THEN ',
'    :P354_VALIDA_ARTICULO :=  1;',
'ELSE ',
'    :P354_VALIDA_ARTICULO := 0;',
'END IF;'))
,p_attribute_02=>'P354_COD_IVA'
,p_attribute_03=>'P354_VALIDA_ARTICULO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(97238764749855710)
,p_event_id=>wwv_flow_imp.id(97236751684855709)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_FOCUS'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P354_CANTIDAD'
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(97239662425855710)
,p_name=>'Valida cantidades_1'
,p_event_sequence=>280
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P354_CANTIDAD'
,p_bind_type=>'live'
,p_bind_event_type=>'focusout'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(97241133528855711)
,p_event_id=>wwv_flow_imp.id(97239662425855710)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if nvl(:P354_ES_PROMO,''N'')=''S'' and :P354_NRO_PROMO_1 is not null then',
'  inv.vtpresupuesto.pr_act_promo;',
'end if; '))
,p_attribute_02=>'P354_ES_PROMO,P354_NRO_PROMO_1'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(97241688269855712)
,p_event_id=>wwv_flow_imp.id(97239662425855710)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P354_TOTAL_IVA := replace(:P354_TOTAL_IVA,''.'');',
':P354_SUBTOTAL := replace(:P354_SUBTOTAL,''.'');',
':P354_TOTAL   := replace(:P354_TOTAL,''.'');',
':P354_PRECIO_UNITARIO  := replace(:P354_PRECIO_UNITARIO,''.'');',
':P354_TOTAL_IVA_1 := replace(:P354_TOTAL_IVA_1,''.'');',
':P354_MONTO_TOTAL := replace(:P354_MONTO_TOTAL,''.'');',
'IF :P354_CANTIDAD IS NULL THEN',
'    :P0_MENSAJE_VALIDACION := ''Es obligatorio ingresar la cantidad. '';',
'    RETURN;',
'  END IF;',
'  DECLARE ',
'    V_IND_TIPO_PEDIDO VARCHAR2(100);',
'  BEGIN',
'  INV.vtpresupuesto.PR_DESCUENTOS(P_DET_IND_PROMO        => :P354_IND_PROMO,',
'     P_DET_NRO_PROMO        => :P354_NRO_PROMO_1,',
'     P_PORC_DESCUENTO       => :P354_PORC_DESCUENTO,',
'     P_COD_CLIENTE          => :P354_COD_CLIENTE,',
'     P_COD_CONDICION_VENTA  => :P354_COD_CONDICION_VENTA,',
'     P_DET_COD_LISTA_PRECIO => :P354_PRECIO_LISTA,',
'     P_DET_CANTIDAD         => :P354_CANTIDAD,',
'     P_DET_COD_ARTICULO     => :P354_COD_ARTICULO,',
'     P_COD_SUCURSAL         => :P354_COD_SUCURSAL,',
'     P_COD_EMPRESA          => :P354_COD_EMPRESA,',
'     P_FEC_COMPROBANTE      => :P354_FEC_COMPROBANTE,',
'     P_DET_PRECIO_UNITARIO  => :P354_PRECIO_UNITARIO,',
'     P_COD_FLETE            => :P354_COD_FLETE,',
'     P_COD_LISTA_PRECIO     => :P354_COD_LISTA_PRECIO,',
'     P_IND_TIPO_PEDIDO      => :P354_IND_TIPO_PEDIDO);',
'    END;',
'  IF NVL(:P354_DESCUENTO_1, 0) > 0 AND :P354_COD_ARTICULO IS NOT NULL THEN',
'    :P354_DESCUENTO_1 := 0;',
'  END IF;',
'  DECLARE ',
'   V_PORC_DESCUENTO_ANT NUMBER;',
'   V_CARGA_PORC_DESCUENTO VARCHAR2(100);',
'   ',
'  BEGIN',
'  INV.vtpresupuesto.PR_CALCULA_DESCUENTO(P_DET_PORC_DESCUENTO_ANT   => V_PORC_DESCUENTO_ANT,',
'    P_PORC_DESCUENTO           => :P354_PORC_DESCUENTO,',
'    P_DESCUENTO                => :P354_DESCUENTO_1,',
'    P_DET_CARGA_PORC_DESCUENTO => V_CARGA_PORC_DESCUENTO,',
'    P_DET_CANTIDAD             => :P354_CANTIDAD,',
'    P_DET_PRECIO_UNITARIO      => :P354_PRECIO_UNITARIO,',
'    P_DECIMALES                => :P354_DECIMALES,',
'    P_DET_NRO_PROMO            => :P354_NRO_PROMO_1,',
'    P_PORC_DESCUENTO_ANT       => V_PORC_DESCUENTO_ANT,',
'    P_RECARGO                  => :P354_RECARGO);',
'   END;',
'  IF NVL(:P354_RECARGO_1, 0) > 0 AND :P354_COD_ARTICULO IS NOT NULL THEN',
'    :P354_RECARGO_1 := 0;',
'  END IF;',
'DECLARE ',
'    V_IND_TIPO_PEDIDO VARCHAR2(100); VUNITARIO NUMBER;',
'BEGIN',
'INV.vtpresupuesto.PR_DESCUENTOS(P_DET_IND_PROMO        => :P354_IND_PROMO,',
'P_DET_NRO_PROMO        => :P354_NRO_PROMO_1,',
'P_PORC_DESCUENTO       => :P354_PORC_DESCUENTO,',
'P_COD_CLIENTE          => :P354_COD_CLIENTE,',
'P_COD_CONDICION_VENTA  => :P354_COD_CONDICION_VENTA,',
'P_DET_COD_LISTA_PRECIO => :P354_PRECIO_LISTA,',
'P_DET_CANTIDAD         => :P354_CANTIDAD,',
'P_DET_COD_ARTICULO     => :P354_COD_ARTICULO,',
'P_COD_SUCURSAL         => :P354_COD_SUCURSAL,',
'P_COD_EMPRESA          => :P354_COD_EMPRESA,',
'P_FEC_COMPROBANTE      => :P354_FEC_COMPROBANTE,',
'P_DET_PRECIO_UNITARIO  => VUNITARIO,',
'P_COD_FLETE            => :P354_COD_FLETE,',
'P_COD_LISTA_PRECIO     => :P354_COD_LISTA_PRECIO,',
'P_IND_TIPO_PEDIDO      => :P354_IND_TIPO_PEDIDO);',
'END;',
':P354_TOTAL_IVA := TO_CHAR(:P354_TOTAL_IVA,''999G999G999G999G999G999G990'');',
':P354_SUBTOTAL := TO_CHAR(:P354_SUBTOTAL,''999G999G999G999G999G999G990'');',
':P354_TOTAL   := TO_CHAR(:P354_TOTAL,''999G999G999G999G999G999G990'');',
':P354_TOTAL_IVA_1 := TO_CHAR(:P354_TOTAL_IVA_1,''999G999G999G999G999G999G990'');',
':P354_MONTO_TOTAL := TO_CHAR(:P354_MONTO_TOTAL,''999G999G999G999G999G999G990'');',
'IF :P354_COD_MONEDA = ''1'' THEN ',
'    :P354_PRECIO_UNITARIO  := TO_CHAR(:P354_PRECIO_UNITARIO,''999G999G999G999G999G999G990'');',
'ELSE ',
'    :P354_PRECIO_UNITARIO  := TO_CHAR(:P354_PRECIO_UNITARIO,''999G999G999G999G990D00'');',
'END IF;',
''))
,p_attribute_02=>'P354_CANTIDAD,P354_IND_PROMO,P354_NRO_PROMO_1,P354_COD_CLIENTE,P354_COD_CONDICION_VENTA,P354_PRECIO_LISTA, P354_COD_ARTICULO,P354_COD_SUCURSAL,P354_COD_EMPRESA,P354_FEC_COMPROBANTE,P354_COD_FLETE,P354_COD_LISTA_PRECIO, P354_DESCUENTO,P354_PORC_DESCUE'
||'NTO,P354_PRECIO_UNITARIO,P354_DECIMALES,P354_RECARGO,P354_RECARGO_1,P354_COD_MONEDA'
,p_attribute_03=>'P0_MENSAJE_VALIDACION,P354_PORC_DESCUENTO,P354_DESCUENTO,P354_RECARGO_1,P354_DESCUENTO_1'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(97242102851855712)
,p_event_id=>wwv_flow_imp.id(97239662425855710)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P354_PRECIO_UNITARIO  := replace(:P354_PRECIO_UNITARIO,''.'');',
'inv.vtpresupuesto.PR_VALIDA_MIX_DESCUENTOS(P_VAR_CANTIDAD_PROMO_MIX  => :P354_CANTIDAD_PROMO_MIX,',
'                                    P_DET_COD_ARTICULO        => :P354_COD_ARTICULO,',
'                                    P_VAR_COD_EMPRESA         => :P354_COD_EMPRESA,',
'                                    P_VAR_COD_CLIENTE         => :P354_COD_CLIENTE,',
'                                    P_VAR_COD_LISTA_PRECIO    => :P354_COD_LISTA_PRECIO,',
'                                    P_DET_NRO_PROMO           => :P354_NRO_PROMO_1,',
'                                    P_DET_PORC_DESCUENTO      => :P354_PORC_DESCUENTO,',
'                                    P_DET_CANTIDAD            => :P354_CANTIDAD,',
'                                    P_DET_IND_PROMO           => :P354_IND_PROMO,',
'                                    P_VAR_COD_CONDICION_VENTA => :P354_COD_CONDICION_VENTA);',
'',
'  IF :P354_COD_SUCURSAL IN (''09'', ''105'', ''95'', ''30'') THEN',
'    BEGIN',
'      SELECT DESCUENTO',
'        INTO :P354_PORC_DESCUENTO',
'        FROM VT_OFERTAS_OUTLET',
'       WHERE COD_EMPRESA = :P354_COD_EMPRESA',
'         AND COD_ARTICULO = :P354_COD_ARTICULO',
'         AND FEC_CIERRE >= :P354_FEC_COMPROBANTE',
'         AND FEC_ALTA < :P354_FEC_COMPROBANTE',
'         AND COD_ARTICULO = :P354_COD_ARTICULO',
'         AND :P354_COD_SUCURSAL IN (''09'', ''105'', ''95'', ''30'');',
'    EXCEPTION',
'      WHEN OTHERS THEN',
'        :P354_PORC_DESCUENTO := 30;',
'    END;',
'  END IF;',
'  IF :P354_COD_SUCURSAL IN (''30-A'') THEN',
'    BEGIN',
'      SELECT PRECIO_DESCUENTO, 0',
'        INTO :P354_PRECIO_UNITARIO, :P354_PORC_DESCUENTO',
'        FROM VT_PRODUCTOS_RENTA_STNGO',
'       WHERE COD_EMPRESA = :P354_COD_EMPRESA',
'         AND COD_ARTICULO = :P354_COD_ARTICULO',
'         AND FEC_CIERRE >= :P354_FEC_COMPROBANTE',
'         AND FEC_ALTA <= :P354_FEC_COMPROBANTE',
'         AND COD_ARTICULO = :P354_COD_ARTICULO',
'         AND :P354_COD_SUCURSAL IN (''30-A'');',
'    EXCEPTION',
'      WHEN OTHERS THEN',
'        NULL;',
'    END;',
'  END IF;',
'IF :P354_COD_MONEDA = ''1'' THEN ',
'    :P354_PRECIO_UNITARIO  := TO_CHAR(:P354_PRECIO_UNITARIO,''999G999G999G999G999G999G990'');',
'ELSE ',
'    :P354_PRECIO_UNITARIO  := TO_CHAR(:P354_PRECIO_UNITARIO,''999G999G999G999G990D00'');',
'END IF;',
'',
':P354_RECARGO := 0;',
':P354_DESCUENTO := 0;'))
,p_attribute_02=>'P354_COD_ARTICULO,P354_COD_EMPRESA,P354_COD_CLIENTE,P354_COD_LISTA_PRECIO,P354_NRO_PROMO_1,P354_PORC_DESCUENTO,   P354_CANTIDAD,P354_IND_PROMO,P354_COD_CONDICION_VENTA,P354_COD_SUCURSAL,P354_FEC_COMPROBANTE,P354_COD_MONEDA'
,p_attribute_03=>'P354_CANTIDAD_PROMO_MIX,P354_PORC_DESCUENTO,P354_RECARGO,P354_DESCUENTO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(97240180361855711)
,p_event_id=>wwv_flow_imp.id(97239662425855710)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P354_COD_IVA = ''7'' THEN ',
'    :P354_PORC_DESCUENTO := ''0,00'';',
'END IF;'))
,p_attribute_02=>'P354_COD_IVA'
,p_attribute_03=>'P354_PORC_DESCUENTO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(97242674108855712)
,p_event_id=>wwv_flow_imp.id(97239662425855710)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P354_TOTAL_IVA:=replace(:P354_TOTAL_IVA,''.'');:P354_SUBTOTAL:=replace(:P354_SUBTOTAL,''.'');',
':P354_TOTAL:=replace(:P354_TOTAL,''.'');:P354_PRECIO_UNITARIO:=replace(:P354_PRECIO_UNITARIO,''.'');',
':P354_TOTAL_IVA_1:=replace(:P354_TOTAL_IVA_1,''.'');:P354_MONTO_TOTAL:=replace(:P354_MONTO_TOTAL,''.'');',
'DECLARE',
'V_PORC_RECARGO_ANT NUMBER;V_CARGA_PORC_RECARGO VARCHAR2(100);',
'BEGIN',
'/*',
'INV.vtpresupuesto.PR_CALCULA_RECARGO(P_DET_PORC_RECARGO_ANT=>V_PORC_RECARGO_ANT,P_DET_CARGA_PORC_RECARGO=>V_CARGA_PORC_RECARGO,P_CAB_DECIMALES=>:P354_DECIMALES,',
'P_MENSAJE_ERROR=>:P0_MENSAJE_VALIDACION,',
'P_VAR_MULT=>:P354_VAR_MULT,P_VAR_DIV=>:P354_VAR_DIV,',
'P_DET_PORC_IVA=>:P354_PORC_IVA_1,P_DET_PRECIO_UNITARIO=>:P354_PRECIO_UNITARIO,',
'P_DET_CANTIDAD_UB=>:P354_CANTIDAD_UB,P_DET_CANTIDAD=>:P354_CANTIDAD,',
'P_DET_PORC_DESCUENTO=>:P354_PORC_DESCUENTO,P_DET_PORC_RECARGO=>:P354_PORC_RECARGO,',
'P_DET_DESCUENTO=>:P354_DESCUENTO_1,P_DET_MONTO_TOTAL=>:P354_MONTO_TOTAL,',
'P_DET_RECARGO=>:P354_RECARGO_1,P_VAR_PORC_IVA=>:P354_PORC_IVA,P_DET_COD_ARTICULO=>:P354_COD_ARTICULO,P_VAR_RECARGO=>:P354_RECARGO,',
'P_DET_TOTAL_IVA=>:P354_TOTAL_IVA,P_CAB_IVA_PARCIAL=>:P354_IVA_PARCIAL,',
'P_DET_IVA_ANT=>:P354_IVA_ANT,P_CAB_SUBTOTAL_PARCIAL=>:P354_SUBTOTAL_PARCIAL,P_DET_IMPORTE_ANT=>:P354_IMPORTE_ANT,P_CAB_GRAVADAS_PARCIAL=>:P354_GRAVADAS_PARCIAL,',
'P_CAB_EXENTAS_PARCIAL=>:P354_EXENTAS_PARCIAL,P_CAB_PORCENTAJE_DESCUENTO=>:P354_PORCENTAJE_DESCUENTO,',
'P_CAB_DESCUENTO=>:P354_DESCUENTO,P_CAB_TOTAL_IVA=>:P354_TOTAL_IVA,P_CAB_SUBTOTAL=>:P354_SUBTOTAL,',
'P_CAB_GRAVADAS=>:P354_GRAVADAS,P_CAB_EXENTAS=>:P354_EXENTAS,P_CAB_TOTAL=>:P354_TOTAL,P_CAB_RECARGO_PORC=>:P354_RECARGO_PORC,',
'P_CAB_RECARGO=>:P354_RECARGO,P_DET_MONTO_GRAVADA_10=>:P354_MONTO_GRAVADA_10,P_DET_MONTO_GRAVADA_5=>:P354_MONTO_GRAVADA_5,P_DET_MONTO_EXENTA=>:P354_MONTO_EXENTA,',
'P_CAB_TIP_CAMBIO=>:P354_TIP_CAMBIO,P_COD_EMPRESA=>:P354_COD_EMPRESA,P_COD_FLETE=>:P354_COD_FLETE,P_CAB_FLETE_TOTAL=>:P354_FLETE_TOTAL,',
'P_DET_TOTAL_PESO=>:P354_TOTAL_PESO,P_DET_TOTAL_VOLUMEN=>:P354_VOLUMEN,P_VAR_PORC_RECARGO_ANT=>:P354_PORC_RECARGO_ANT);*/',
'',
'INV.vtpresupuesto.PR_CALCULOS(P_VAR_MULT=>:P354_VAR_MULT,P_VAR_DIV=>:P354_VAR_DIV,',
'P_DET_PORC_IVA=>:P354_PORC_IVA_1,P_DET_PRECIO_UNITARIO=>:P354_PRECIO_UNITARIO,P_CAB_DECIMALES=>:P354_DECIMALES,',
'P_DET_CANTIDAD_UB=>:P354_CANTIDAD_UB,P_DET_CANTIDAD=>:P354_CANTIDAD,P_DET_PORC_DESCUENTO=>:P354_PORC_DESCUENTO,',
'P_DET_PORC_RECARGO=>:P354_PORC_RECARGO,P_DET_DESCUENTO=>:P354_DESCUENTO_1,',
'P_DET_MONTO_TOTAL=>:P354_MONTO_TOTAL,P_DET_RECARGO=>:P354_RECARGO_1,P_VAR_PORC_IVA=>:P354_PORC_IVA,',
'P_DET_COD_ARTICULO=>:P354_COD_ARTICULO,P_VAR_RECARGO=>:P354_RECARGO,',
'P_DET_TOTAL_IVA=>:P354_TOTAL_IVA_1,P_CAB_IVA_PARCIAL=>:P354_IVA_PARCIAL,',
'P_DET_IVA_ANT=>:P354_IVA_ANT,P_CAB_SUBTOTAL_PARCIAL=>:P354_SUBTOTAL_PARCIAL,',
'P_DET_IMPORTE_ANT=>:P354_IMPORTE_ANT,P_CAB_GRAVADAS_PARCIAL=>:P354_GRAVADAS_PARCIAL,',
'P_CAB_EXENTAS_PARCIAL=>:P354_EXENTAS_PARCIAL,P_CAB_PORCENTAJE_DESCUENTO=>:P354_PORCENTAJE_DESCUENTO,',
'P_CAB_DESCUENTO=>:P354_DESCUENTO,P_CAB_TOTAL_IVA=>:P354_TOTAL_IVA,',
'P_CAB_SUBTOTAL=>:P354_SUBTOTAL,P_CAB_GRAVADAS=>:P354_GRAVADAS,P_CAB_EXENTAS=>:P354_EXENTAS,',
'P_CAB_TOTAL=>:P354_TOTAL,P_CAB_RECARGO_PORC=>:P354_RECARGO_PORC,P_CAB_RECARGO=>:P354_RECARGO,P_DET_MONTO_GRAVADA_10=>:P354_MONTO_GRAVADA_10,',
'P_DET_MONTO_GRAVADA_5=>:P354_MONTO_GRAVADA_5,',
'P_DET_MONTO_EXENTA=>:P354_MONTO_EXENTA,',
'P_MENSAJE_ERROR=>:P0_MENSAJE_VALIDACION,',
'P_CAB_TIP_CAMBIO=>:P354_TIP_CAMBIO,',
'P_COD_EMPRESA=>:P354_COD_EMPRESA,',
'P_COD_FLETE=>:P354_COD_FLETE,',
'P_CAB_FLETE_TOTAL=>:P354_FLETE_TOTAL,',
'P_DET_TOTAL_PESO=>:P354_TOTAL_PESO,',
'P_DET_TOTAL_VOLUMEN=>:P354_TOTAL_VOLUMEN);',
'END;',
''))
,p_attribute_02=>'P354_DECIMALES,P354_VAR_MULT,P354_VAR_DIV,P354_PORC_IVA_1,P354_PRECIO_UNITARIO,P354_CANTIDAD,P354_PORC_DESCUENTO, P354_PORC_RECARGO,P354_DESCUENTO,P354_MONTO_TOTAL,P354_RECARGO_1,P354_PORC_IVA,P354_COD_ARTICULO, P354_RECARGO,P354_TOTAL_IVA_1,P354_IVA'
||'_PARCIAL,P354_IVA_ANT,P354_SUBTOTAL_PARCIAL,P354_IMPORTE_ANT, P354_GRAVADAS_PARCIAL,P354_EXENTAS_PARCIAL,P354_PORCENTAJE_DESCUENTO,P354_DESCUENTO,P354_TOTAL_IVA, P354_SUBTOTAL,P354_GRAVADAS,P354_EXENTAS,P354_TOTAL,P354_RECARGO_PORC,P354_MONTO_GRAVADA'
||'_10,P354_MONTO_GRAVADA_5, P354_MONTO_EXENTA,P354_TIP_CAMBIO,P354_COD_EMPRESA,P354_COD_FLETE,P354_TOTAL_PESO,P354_VOLUMEN,P354_DESCUENTO_1'
,p_attribute_03=>'P0_MENSAJE_VALIDACION,P354_VAR_MULT,P354_VAR_DIV,P354_CANTIDAD_UB,P354_RECARGO_1,P354_TOTAL_IVA_1, P354_IVA_PARCIAL,P354_IVA_ANT,P354_SUBTOTAL_PARCIAL,P354_IMPORTE_ANT,P354_GRAVADAS_PARCIAL, P354_EXENTAS_PARCIAL,P354_PORCENTAJE_DESCUENTO,P354_GRAVADA'
||'S,P354_EXENTAS,P354_RECARGO_PORC,P354_MONTO_GRAVADA_5,P354_MONTO_GRAVADA_10,P354_MONTO_EXENTA, P354_FLETE_TOTAL,P354_PORC_RECARGO_ANT,P354_MONTO_TOTAL,P354_DESCUENTO_1,P354_PORC_DESCUENTO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(97240617724855711)
,p_event_id=>wwv_flow_imp.id(97239662425855710)
,p_event_result=>'TRUE'
,p_action_sequence=>90
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P354_COD_MONEDA = ''1'' THEN',
'    :P354_MONTO_TOTAL := TO_NUMBER(REPLACE(:P354_MONTO_TOTAL,''.''));',
'    :P354_TOTAL_IVA_1 := TO_NUMBER(REPLACE(:P354_TOTAL_IVA_1,''.''));',
'    :P354_CANTIDAD := TO_NUMBER(REPLACE(:P354_CANTIDAD,''.''));',
'    :P354_PORC_DESCUENTO := TO_NUMBER(REPLACE(:P354_PORC_DESCUENTO,''.''));',
'    :P354_PORC_RECARGO := TO_NUMBER(REPLACE(:P354_PORC_RECARGO,''.''));',
'    ',
'',
'    :P354_PRECIO_UNITARIO := TO_CHAR(:P354_PRECIO_UNITARIO , ''999G999G999G999G999G999G990'');',
'END IF;'))
,p_attribute_02=>'P354_COD_MONEDA,P354_MONTO_TOTAL,P354_TOTAL_IVA_1,P354_CANTIDAD,P354_PORC_DESCUENTO,P354_PORC_RECARGO'
,p_attribute_03=>'P354_PRECIO_UNITARIO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(97244109059855713)
,p_event_id=>wwv_flow_imp.id(97239662425855710)
,p_event_result=>'TRUE'
,p_action_sequence=>100
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P354_COD_MONEDA  = ''1'' THEN ',
':P354_TOTAL_IVA:=replace(:P354_TOTAL_IVA,''.'');:P354_SUBTOTAL:=replace(:P354_SUBTOTAL,''.'');',
':P354_TOTAL:=replace(:P354_TOTAL,''.'');:P354_PRECIO_UNITARIO:=replace(:P354_PRECIO_UNITARIO,''.'');',
':P354_TOTAL_IVA_1:=replace(:P354_TOTAL_IVA_1,''.'');:P354_MONTO_TOTAL:=replace(:P354_MONTO_TOTAL,''.'');',
'DECLARE',
'V_PORC_RECARGO_ANT NUMBER;V_CARGA_PORC_RECARGO VARCHAR2(100);',
'BEGIN/*',
'INV.vtpresupuesto.PR_CALCULA_RECARGO(P_DET_PORC_RECARGO_ANT=>V_PORC_RECARGO_ANT,P_DET_CARGA_PORC_RECARGO=>V_CARGA_PORC_RECARGO,P_CAB_DECIMALES=>:P354_DECIMALES,',
'P_MENSAJE_ERROR=>:P0_MENSAJE_VALIDACION,',
'P_VAR_MULT=>:P354_VAR_MULT,P_VAR_DIV=>:P354_VAR_DIV,',
'P_DET_PORC_IVA=>:P354_PORC_IVA_1,P_DET_PRECIO_UNITARIO=>:P354_PRECIO_UNITARIO,',
'P_DET_CANTIDAD_UB=>:P354_CANTIDAD_UB,P_DET_CANTIDAD=>:P354_CANTIDAD,',
'P_DET_PORC_DESCUENTO=>:P354_PORC_DESCUENTO,P_DET_PORC_RECARGO=>:P354_PORC_RECARGO,',
'P_DET_DESCUENTO=>:P354_DESCUENTO_1,P_DET_MONTO_TOTAL=>:P354_MONTO_TOTAL,',
'P_DET_RECARGO=>:P354_RECARGO_1,P_VAR_PORC_IVA=>:P354_PORC_IVA,P_DET_COD_ARTICULO=>:P354_COD_ARTICULO,P_VAR_RECARGO=>:P354_RECARGO,',
'P_DET_TOTAL_IVA=>:P354_TOTAL_IVA,P_CAB_IVA_PARCIAL=>:P354_IVA_PARCIAL,',
'P_DET_IVA_ANT=>:P354_IVA_ANT,P_CAB_SUBTOTAL_PARCIAL=>:P354_SUBTOTAL_PARCIAL,P_DET_IMPORTE_ANT=>:P354_IMPORTE_ANT,P_CAB_GRAVADAS_PARCIAL=>:P354_GRAVADAS_PARCIAL,',
'P_CAB_EXENTAS_PARCIAL=>:P354_EXENTAS_PARCIAL,P_CAB_PORCENTAJE_DESCUENTO=>:P354_PORCENTAJE_DESCUENTO,',
'P_CAB_DESCUENTO=>:P354_DESCUENTO,P_CAB_TOTAL_IVA=>:P354_TOTAL_IVA,P_CAB_SUBTOTAL=>:P354_SUBTOTAL,',
'P_CAB_GRAVADAS=>:P354_GRAVADAS,P_CAB_EXENTAS=>:P354_EXENTAS,P_CAB_TOTAL=>:P354_TOTAL,P_CAB_RECARGO_PORC=>:P354_RECARGO_PORC,',
'P_CAB_RECARGO=>:P354_RECARGO,P_DET_MONTO_GRAVADA_10=>:P354_MONTO_GRAVADA_10,P_DET_MONTO_GRAVADA_5=>:P354_MONTO_GRAVADA_5,P_DET_MONTO_EXENTA=>:P354_MONTO_EXENTA,',
'P_CAB_TIP_CAMBIO=>:P354_TIP_CAMBIO,P_COD_EMPRESA=>:P354_COD_EMPRESA,P_COD_FLETE=>:P354_COD_FLETE,P_CAB_FLETE_TOTAL=>:P354_FLETE_TOTAL,',
'P_DET_TOTAL_PESO=>:P354_TOTAL_PESO,P_DET_TOTAL_VOLUMEN=>:P354_VOLUMEN,P_VAR_PORC_RECARGO_ANT=>:P354_PORC_RECARGO_ANT);*/',
'INV.vtpresupuesto.PR_CALCULOS(P_VAR_MULT=>:P354_VAR_MULT,P_VAR_DIV=>:P354_VAR_DIV,',
'P_DET_PORC_IVA=>:P354_PORC_IVA_1,P_DET_PRECIO_UNITARIO=>:P354_PRECIO_UNITARIO,P_CAB_DECIMALES=>:P354_DECIMALES,',
'P_DET_CANTIDAD_UB=>:P354_CANTIDAD_UB,P_DET_CANTIDAD=>:P354_CANTIDAD,P_DET_PORC_DESCUENTO=>:P354_PORC_DESCUENTO,',
'P_DET_PORC_RECARGO=>:P354_PORC_RECARGO,P_DET_DESCUENTO=>:P354_DESCUENTO_1,',
'P_DET_MONTO_TOTAL=>:P354_MONTO_TOTAL,P_DET_RECARGO=>:P354_RECARGO_1,P_VAR_PORC_IVA=>:P354_PORC_IVA,',
'P_DET_COD_ARTICULO=>:P354_COD_ARTICULO,P_VAR_RECARGO=>:P354_RECARGO,',
'P_DET_TOTAL_IVA=>:P354_TOTAL_IVA_1,P_CAB_IVA_PARCIAL=>:P354_IVA_PARCIAL,',
'P_DET_IVA_ANT=>:P354_IVA_ANT,P_CAB_SUBTOTAL_PARCIAL=>:P354_SUBTOTAL_PARCIAL,',
'P_DET_IMPORTE_ANT=>:P354_IMPORTE_ANT,P_CAB_GRAVADAS_PARCIAL=>:P354_GRAVADAS_PARCIAL,',
'P_CAB_EXENTAS_PARCIAL=>:P354_EXENTAS_PARCIAL,P_CAB_PORCENTAJE_DESCUENTO=>:P354_PORCENTAJE_DESCUENTO,',
'P_CAB_DESCUENTO=>:P354_DESCUENTO,P_CAB_TOTAL_IVA=>:P354_TOTAL_IVA,',
'P_CAB_SUBTOTAL=>:P354_SUBTOTAL,P_CAB_GRAVADAS=>:P354_GRAVADAS,P_CAB_EXENTAS=>:P354_EXENTAS,',
'P_CAB_TOTAL=>:P354_TOTAL,P_CAB_RECARGO_PORC=>:P354_RECARGO_PORC,P_CAB_RECARGO=>:P354_RECARGO,P_DET_MONTO_GRAVADA_10=>:P354_MONTO_GRAVADA_10,',
'P_DET_MONTO_GRAVADA_5=>:P354_MONTO_GRAVADA_5,',
'P_DET_MONTO_EXENTA=>:P354_MONTO_EXENTA,',
'P_MENSAJE_ERROR=>:P0_MENSAJE_VALIDACION,',
'P_CAB_TIP_CAMBIO=>:P354_TIP_CAMBIO,',
'P_COD_EMPRESA=>:P354_COD_EMPRESA,',
'P_COD_FLETE=>:P354_COD_FLETE,',
'P_CAB_FLETE_TOTAL=>:P354_FLETE_TOTAL,',
'P_DET_TOTAL_PESO=>:P354_TOTAL_PESO,',
'P_DET_TOTAL_VOLUMEN=>:P354_TOTAL_VOLUMEN);',
'END;',
'END  IF;',
''))
,p_attribute_02=>'P354_DECIMALES,P354_VAR_MULT,P354_VAR_DIV,P354_PORC_IVA_1,P354_PRECIO_UNITARIO,P354_CANTIDAD,P354_PORC_DESCUENTO, P354_PORC_RECARGO,P354_DESCUENTO,P354_MONTO_TOTAL,P354_RECARGO_1,P354_PORC_IVA,P354_COD_ARTICULO, P354_RECARGO,P354_TOTAL_IVA_1,P354_IVA'
||'_PARCIAL,P354_IVA_ANT,P354_SUBTOTAL_PARCIAL,P354_IMPORTE_ANT, P354_GRAVADAS_PARCIAL,P354_EXENTAS_PARCIAL,P354_PORCENTAJE_DESCUENTO,P354_DESCUENTO,P354_TOTAL_IVA, P354_SUBTOTAL,P354_GRAVADAS,P354_EXENTAS,P354_TOTAL,P354_RECARGO_PORC,P354_MONTO_GRAVADA'
||'_10,P354_MONTO_GRAVADA_5, P354_MONTO_EXENTA,P354_TIP_CAMBIO,P354_COD_EMPRESA,P354_COD_FLETE,P354_TOTAL_PESO,P354_VOLUMEN,P354_DESCUENTO_1,P354_COD_MONEDA'
,p_attribute_03=>'P0_MENSAJE_VALIDACION,P354_VAR_MULT,P354_VAR_DIV,P354_CANTIDAD_UB,P354_RECARGO_1,P354_TOTAL_IVA_1, P354_IVA_PARCIAL,P354_IVA_ANT,P354_SUBTOTAL_PARCIAL,P354_IMPORTE_ANT,P354_GRAVADAS_PARCIAL, P354_EXENTAS_PARCIAL,P354_PORCENTAJE_DESCUENTO,P354_GRAVADA'
||'S,P354_EXENTAS,P354_RECARGO_PORC,P354_MONTO_GRAVADA_5,P354_MONTO_GRAVADA_10,P354_MONTO_EXENTA, P354_FLETE_TOTAL,P354_PORC_RECARGO_ANT,P354_MONTO_TOTAL,P354_DESCUENTO_1,P354_PORC_DESCUENTO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(97243191359855712)
,p_event_id=>wwv_flow_imp.id(97239662425855710)
,p_event_result=>'TRUE'
,p_action_sequence=>110
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'INV.vtpresupuesto.PR_PED_PEND(P_DET_STOCK_ACTUAL => :P354_STOCK_ACTUAL,',
'               P_VAR_COD_EMPRESA  => :P354_COD_EMPRESA,',
'               P_DET_COD_ARTICULO => :P354_COD_ARTICULO,',
'               P_DET_STOCK_RESERV => :P354_STOCK_RESERV);',
'',
'IF :P354_COD_SUCURSAL IN (''09'', ''105'', ''95'', ''30'') THEN',
'BEGIN',
'SELECT DESCUENTO',
'INTO :P354_PORC_DESCUENTO',
'FROM VT_OFERTAS_OUTLET',
'WHERE COD_EMPRESA = :P354_COD_EMPRESA',
'AND COD_ARTICULO = :P354_COD_ARTICULO',
'AND FEC_CIERRE >= :P354_FEC_COMPROBANTE',
'AND FEC_ALTA <= :P354_FEC_COMPROBANTE',
'AND COD_ARTICULO = :P354_COD_ARTICULO',
'AND :P354_COD_SUCURSAL IN (''09'', ''105'', ''95'', ''30'');',
'EXCEPTION',
'WHEN OTHERS THEN',
':P354_PORC_DESCUENTO := 30;',
'END;',
'END IF;',
'IF :P354_COD_SUCURSAL IN (''30-A'') THEN',
'BEGIN',
'SELECT PRECIO_DESCUENTO, 0',
'INTO :P354_PRECIO_UNITARIO, :P354_PORC_DESCUENTO',
'FROM VT_PRODUCTOS_RENTA_STNGO',
'WHERE COD_EMPRESA = :P354_COD_EMPRESA',
'AND COD_ARTICULO = :P354_COD_ARTICULO',
'AND FEC_CIERRE >= :P354_FEC_COMPROBANTE',
'AND FEC_ALTA <= :P354_FEC_COMPROBANTE',
'AND COD_ARTICULO = :P354_COD_ARTICULO',
'AND :P354_COD_SUCURSAL IN (''30-A'');',
'EXCEPTION',
'WHEN OTHERS THEN',
'NULL;',
'END;',
'END IF;',
'',
''))
,p_attribute_02=>'P354_COD_EMPRESA,P354_COD_ARTICULO,P354_COD_SUCURSAL,P354_FEC_COMPROBANTE'
,p_attribute_03=>'P354_STOCK_ACTUAL,P354_STOCK_RESERV,P354_COD_SUCURSAL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(97243672686855713)
,p_event_id=>wwv_flow_imp.id(97239662425855710)
,p_event_result=>'TRUE'
,p_action_sequence=>120
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P354_TOTAL_IVA := replace(:P354_TOTAL_IVA,''.'');',
':P354_SUBTOTAL := replace(:P354_SUBTOTAL,''.'');',
':P354_TOTAL   := replace(:P354_TOTAL,''.'');',
':P354_PRECIO_UNITARIO  := replace(:P354_PRECIO_UNITARIO,''.'');',
':P354_TOTAL_IVA_1 := replace(:P354_TOTAL_IVA_1,''.'');',
':P354_MONTO_TOTAL := replace(:P354_MONTO_TOTAL,''.'');',
'',
':P354_DESCUENTO_1 := round((nvl(:P354_CANTIDAD, 0) *',
'                           (nvl(:P354_PRECIO_UNITARIO, 0)) *',
'                           (nvl(:P354_PORC_DESCUENTO, 0) / 100)),',
'                           nvl(:P354_DECIMALES, 0));',
'IF :P354_COD_MONEDA = ''1'' THEN ',
'    :P354_PRECIO_UNITARIO  := TO_CHAR(:P354_PRECIO_UNITARIO,''999G999G999G999G999G999G990'');',
'    :P354_TOTAL_IVA_1 := TO_CHAR(:P354_TOTAL_IVA_1,''999G999G999G999G999G999G990'');',
'    :P354_MONTO_TOTAL := TO_CHAR(:P354_MONTO_TOTAL,''999G999G999G999G999G999G990'');',
'    :P354_TOTAL_IVA := TO_CHAR(:P354_TOTAL_IVA,''999G999G999G999G999G999G990'');',
'    :P354_SUBTOTAL := TO_CHAR(:P354_SUBTOTAL,''999G999G999G999G999G999G990'');',
'    :P354_TOTAL   := TO_CHAR(:P354_TOTAL,''999G999G999G999G999G999G990'');',
'ELSE ',
'    :P354_PRECIO_UNITARIO  := TO_CHAR(:P354_PRECIO_UNITARIO,''999G999G999G999G990D00'');',
'    :P354_TOTAL_IVA_1 := TO_CHAR(:P354_TOTAL_IVA_1,''999G999G999G999G990D00'');',
'    :P354_MONTO_TOTAL := TO_CHAR(:P354_MONTO_TOTAL,''999G999G999G999G990D00'');',
'    :P354_TOTAL_IVA := TO_CHAR(:P354_TOTAL_IVA,''999G999G999G999G990D00'');',
'    :P354_SUBTOTAL := TO_CHAR(:P354_SUBTOTAL,''999G999G999G999G990D00'');',
'    :P354_TOTAL   := TO_CHAR(:P354_TOTAL,''999G999G999G999G990D00'');',
'END IF;',
''))
,p_attribute_02=>'P354_TOTAL_IVA,P354_SUBTOTAL,P354_TOTAL,P354_PRECIO_UNITARIO,P354_TOTAL_IVA_1,P354_MONTO_TOTAL,P354_CANTIDAD,P354_PORC_DESCUENTO,P354_DECIMALES,P354_COD_MONEDA'
,p_attribute_03=>'P354_TOTAL_IVA,P354_SUBTOTAL,P354_TOTAL,P354_PRECIO_UNITARIO,P354_TOTAL_IVA_1,P354_MONTO_TOTAL,P354_DESCUENTO_1'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(99283372029806417)
,p_name=>'Validaciones de datos en el guardado'
,p_event_sequence=>290
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P354_CARGA_DETALLE'
,p_condition_element=>'P354_CARGA_DETALLE'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'1'
,p_bind_type=>'live'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(99283491077806418)
,p_event_id=>wwv_flow_imp.id(99283372029806417)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if nvl(:P354_ES_PROMO,''N'')=''S'' and :P354_NRO_PROMO_1 is not null then',
'  inv.vtpresupuesto.pr_act_promo;',
'end if; '))
,p_attribute_02=>'P354_ES_PROMO,P354_NRO_PROMO_1'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(99283593412806419)
,p_event_id=>wwv_flow_imp.id(99283372029806417)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P354_PORC_DESCUENTO IN (''0'', ''0,00'','''') OR :P354_PORC_DESCUENTO IS NULL THEN',
':P354_TOTAL_IVA := replace(:P354_TOTAL_IVA,''.'');',
':P354_SUBTOTAL := replace(:P354_SUBTOTAL,''.'');',
':P354_TOTAL   := replace(:P354_TOTAL,''.'');',
':P354_PRECIO_UNITARIO  := replace(:P354_PRECIO_UNITARIO,''.'');',
':P354_TOTAL_IVA_1 := replace(:P354_TOTAL_IVA_1,''.'');',
':P354_MONTO_TOTAL := replace(:P354_MONTO_TOTAL,''.'');',
'IF :P354_CANTIDAD IS NULL THEN',
'    :P0_MENSAJE_VALIDACION := ''Es obligatorio ingresar la cantidad. '';',
'    RETURN;',
'  END IF;',
'  DECLARE ',
'    V_IND_TIPO_PEDIDO VARCHAR2(100);',
'  BEGIN',
'  INV.vtpresupuesto.PR_DESCUENTOS(P_DET_IND_PROMO        => :P354_IND_PROMO,',
'     P_DET_NRO_PROMO        => :P354_NRO_PROMO_1,',
'     P_PORC_DESCUENTO       => :P354_PORC_DESCUENTO,',
'     P_COD_CLIENTE          => :P354_COD_CLIENTE,',
'     P_COD_CONDICION_VENTA  => :P354_COD_CONDICION_VENTA,',
'     P_DET_COD_LISTA_PRECIO => :P354_PRECIO_LISTA,',
'     P_DET_CANTIDAD         => :P354_CANTIDAD,',
'     P_DET_COD_ARTICULO     => :P354_COD_ARTICULO,',
'     P_COD_SUCURSAL         => :P354_COD_SUCURSAL,',
'     P_COD_EMPRESA          => :P354_COD_EMPRESA,',
'     P_FEC_COMPROBANTE      => :P354_FEC_COMPROBANTE,',
'     P_DET_PRECIO_UNITARIO  => :P354_PRECIO_UNITARIO,',
'     P_COD_FLETE            => :P354_COD_FLETE,',
'     P_COD_LISTA_PRECIO     => :P354_COD_LISTA_PRECIO,',
'     P_IND_TIPO_PEDIDO      => :P354_IND_TIPO_PEDIDO);',
'    END;',
'  IF NVL(:P354_DESCUENTO_1, 0) > 0 AND :P354_COD_ARTICULO IS NOT NULL THEN',
'    :P354_DESCUENTO_1 := 0;',
'  END IF;',
'  DECLARE ',
'   V_PORC_DESCUENTO_ANT NUMBER;',
'   V_CARGA_PORC_DESCUENTO VARCHAR2(100);',
'   ',
'  BEGIN',
'  INV.vtpresupuesto.PR_CALCULA_DESCUENTO(P_DET_PORC_DESCUENTO_ANT   => V_PORC_DESCUENTO_ANT,',
'    P_PORC_DESCUENTO           => :P354_PORC_DESCUENTO,',
'    P_DESCUENTO                => :P354_DESCUENTO_1,',
'    P_DET_CARGA_PORC_DESCUENTO => V_CARGA_PORC_DESCUENTO,',
'    P_DET_CANTIDAD             => :P354_CANTIDAD,',
'    P_DET_PRECIO_UNITARIO      => :P354_PRECIO_UNITARIO,',
'    P_DECIMALES                => :P354_DECIMALES,',
'    P_DET_NRO_PROMO            => :P354_NRO_PROMO_1,',
'    P_PORC_DESCUENTO_ANT       => V_PORC_DESCUENTO_ANT,',
'    P_RECARGO                  => :P354_RECARGO);',
'   END;',
'  IF NVL(:P354_RECARGO_1, 0) > 0 AND :P354_COD_ARTICULO IS NOT NULL THEN',
'    :P354_RECARGO_1 := 0;',
'  END IF;',
'DECLARE ',
'    V_IND_TIPO_PEDIDO VARCHAR2(100); VUNITAARIO NUMBER;',
'BEGIN',
'INV.vtpresupuesto.PR_DESCUENTOS(P_DET_IND_PROMO        => :P354_IND_PROMO,',
'P_DET_NRO_PROMO        => :P354_NRO_PROMO_1,',
'P_PORC_DESCUENTO       => :P354_PORC_DESCUENTO,',
'P_COD_CLIENTE          => :P354_COD_CLIENTE,',
'P_COD_CONDICION_VENTA  => :P354_COD_CONDICION_VENTA,',
'P_DET_COD_LISTA_PRECIO => :P354_PRECIO_LISTA,',
'P_DET_CANTIDAD         => :P354_CANTIDAD,',
'P_DET_COD_ARTICULO     => :P354_COD_ARTICULO,',
'P_COD_SUCURSAL         => :P354_COD_SUCURSAL,',
'P_COD_EMPRESA          => :P354_COD_EMPRESA,',
'P_FEC_COMPROBANTE      => :P354_FEC_COMPROBANTE,',
'P_DET_PRECIO_UNITARIO  => VUNITAARIO,',
'P_COD_FLETE            => :P354_COD_FLETE,',
'P_COD_LISTA_PRECIO     => :P354_COD_LISTA_PRECIO,',
'P_IND_TIPO_PEDIDO      => :P354_IND_TIPO_PEDIDO);',
'END;',
':P354_TOTAL_IVA := TO_CHAR(:P354_TOTAL_IVA,''999G999G999G999G999G999G990'');',
':P354_SUBTOTAL := TO_CHAR(:P354_SUBTOTAL,''999G999G999G999G999G999G990'');',
':P354_TOTAL   := TO_CHAR(:P354_TOTAL,''999G999G999G999G999G999G990'');',
':P354_TOTAL_IVA_1 := TO_CHAR(:P354_TOTAL_IVA_1,''999G999G999G999G999G999G990'');',
':P354_MONTO_TOTAL := TO_CHAR(:P354_MONTO_TOTAL,''999G999G999G999G999G999G990'');',
'IF :P354_COD_MONEDA = ''1'' THEN ',
'    :P354_PRECIO_UNITARIO  := TO_CHAR(:P354_PRECIO_UNITARIO,''999G999G999G999G999G999G990'');',
'ELSE ',
'    :P354_PRECIO_UNITARIO  := TO_CHAR(:P354_PRECIO_UNITARIO,''999G999G999G999G990D00'');',
'END IF;',
'END IF;'))
,p_attribute_02=>'P354_CANTIDAD,P354_IND_PROMO,P354_NRO_PROMO_1,P354_COD_CLIENTE,P354_COD_CONDICION_VENTA,P354_PRECIO_LISTA, P354_COD_ARTICULO,P354_COD_SUCURSAL,P354_COD_EMPRESA,P354_FEC_COMPROBANTE,P354_COD_FLETE,P354_COD_LISTA_PRECIO, P354_DESCUENTO,P354_PORC_DESCUE'
||'NTO,P354_PRECIO_UNITARIO,P354_DECIMALES,P354_RECARGO,P354_RECARGO_1,P354_COD_MONEDA'
,p_attribute_03=>'P0_MENSAJE_VALIDACION,P354_PORC_DESCUENTO,P354_DESCUENTO,P354_RECARGO_1,P354_DESCUENTO_1'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(99283607229806420)
,p_event_id=>wwv_flow_imp.id(99283372029806417)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P354_PRECIO_UNITARIO  := replace(:P354_PRECIO_UNITARIO,''.'');',
'INV.vtpresupuesto.PR_VALIDA_MIX_DESCUENTOS(P_VAR_CANTIDAD_PROMO_MIX  => :P354_CANTIDAD_PROMO_MIX,',
'                                    P_DET_COD_ARTICULO        => :P354_COD_ARTICULO,',
'                                    P_VAR_COD_EMPRESA         => :P354_COD_EMPRESA,',
'                                    P_VAR_COD_CLIENTE         => :P354_COD_CLIENTE,',
'                                    P_VAR_COD_LISTA_PRECIO    => :P354_COD_LISTA_PRECIO,',
'                                    P_DET_NRO_PROMO           => :P354_NRO_PROMO_1,',
'                                    P_DET_PORC_DESCUENTO      => :P354_PORC_DESCUENTO,',
'                                    P_DET_CANTIDAD            => :P354_CANTIDAD,',
'                                    P_DET_IND_PROMO           => :P354_IND_PROMO,',
'                                    P_VAR_COD_CONDICION_VENTA => :P354_COD_CONDICION_VENTA);',
'',
'  IF :P354_COD_SUCURSAL IN (''09'', ''105'', ''95'', ''30'') THEN',
'    BEGIN',
'      SELECT DESCUENTO',
'        INTO :P354_PORC_DESCUENTO',
'        FROM VT_OFERTAS_OUTLET',
'       WHERE COD_EMPRESA = :P354_COD_EMPRESA',
'         AND COD_ARTICULO = :P354_COD_ARTICULO',
'         AND FEC_CIERRE >= :P354_FEC_COMPROBANTE',
'         AND FEC_ALTA < :P354_FEC_COMPROBANTE',
'         AND COD_ARTICULO = :P354_COD_ARTICULO',
'         AND :P354_COD_SUCURSAL IN (''09'', ''105'', ''95'', ''30'');',
'    EXCEPTION',
'      WHEN OTHERS THEN',
'        :P354_PORC_DESCUENTO := 30;',
'    END;',
'  END IF;',
'  IF :P354_COD_SUCURSAL IN (''30-A'') THEN',
'    BEGIN',
'      SELECT PRECIO_DESCUENTO, 0',
'        INTO :P354_PRECIO_UNITARIO, :P354_PORC_DESCUENTO',
'        FROM VT_PRODUCTOS_RENTA_STNGO',
'       WHERE COD_EMPRESA = :P354_COD_EMPRESA',
'         AND COD_ARTICULO = :P354_COD_ARTICULO',
'         AND FEC_CIERRE >= :P354_FEC_COMPROBANTE',
'         AND FEC_ALTA <= :P354_FEC_COMPROBANTE',
'         AND COD_ARTICULO = :P354_COD_ARTICULO',
'         AND :P354_COD_SUCURSAL IN (''30-A'');',
'    EXCEPTION',
'      WHEN OTHERS THEN',
'        NULL;',
'    END;',
'  END IF;',
'IF :P354_COD_MONEDA = ''1'' THEN ',
'    :P354_PRECIO_UNITARIO  := TO_CHAR(:P354_PRECIO_UNITARIO,''999G999G999G999G999G999G990'');',
'ELSE ',
'    :P354_PRECIO_UNITARIO  := TO_CHAR(:P354_PRECIO_UNITARIO,''999G999G999G999G990D00'');',
'END IF;',
'',
':P354_RECARGO := 0;',
':P354_DESCUENTO := 0;'))
,p_attribute_02=>'P354_COD_ARTICULO,P354_COD_EMPRESA,P354_COD_CLIENTE,P354_COD_LISTA_PRECIO,P354_NRO_PROMO_1,P354_PORC_DESCUENTO,   P354_CANTIDAD,P354_IND_PROMO,P354_COD_CONDICION_VENTA,P354_COD_SUCURSAL,P354_FEC_COMPROBANTE,P354_COD_MONEDA'
,p_attribute_03=>'P354_CANTIDAD_PROMO_MIX,P354_PORC_DESCUENTO,P354_RECARGO,P354_DESCUENTO'
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
 p_id=>wwv_flow_imp.id(99283747861806421)
,p_event_id=>wwv_flow_imp.id(99283372029806417)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P354_COD_IVA = ''7'' THEN ',
'    :P354_PORC_DESCUENTO := ''0,00'';',
'END IF;'))
,p_attribute_02=>'P354_COD_IVA'
,p_attribute_03=>'P354_PORC_DESCUENTO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(99283899868806422)
,p_event_id=>wwv_flow_imp.id(99283372029806417)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P354_TOTAL_IVA:=replace(:P354_TOTAL_IVA,''.'');:P354_SUBTOTAL:=replace(:P354_SUBTOTAL,''.'');',
':P354_TOTAL:=replace(:P354_TOTAL,''.'');:P354_PRECIO_UNITARIO:=replace(:P354_PRECIO_UNITARIO,''.'');',
':P354_TOTAL_IVA_1:=replace(:P354_TOTAL_IVA_1,''.'');:P354_MONTO_TOTAL:=replace(:P354_MONTO_TOTAL,''.'');',
'DECLARE',
'V_PORC_RECARGO_ANT NUMBER;V_CARGA_PORC_RECARGO VARCHAR2(100);',
'BEGIN',
'INV.vtpresupuesto.PR_CALCULA_RECARGO(P_DET_PORC_RECARGO_ANT=>V_PORC_RECARGO_ANT,P_DET_CARGA_PORC_RECARGO=>V_CARGA_PORC_RECARGO,P_CAB_DECIMALES=>:P354_DECIMALES,',
'P_MENSAJE_ERROR=>:P0_MENSAJE_VALIDACION,',
'P_VAR_MULT=>:P354_VAR_MULT,P_VAR_DIV=>:P354_VAR_DIV,',
'P_DET_PORC_IVA=>:P354_PORC_IVA_1,P_DET_PRECIO_UNITARIO=>:P354_PRECIO_UNITARIO,',
'P_DET_CANTIDAD_UB=>:P354_CANTIDAD_UB,P_DET_CANTIDAD=>:P354_CANTIDAD,',
'P_DET_PORC_DESCUENTO=>:P354_PORC_DESCUENTO,P_DET_PORC_RECARGO=>:P354_PORC_RECARGO,',
'P_DET_DESCUENTO=>:P354_DESCUENTO_1,P_DET_MONTO_TOTAL=>:P354_MONTO_TOTAL,',
'P_DET_RECARGO=>:P354_RECARGO_1,P_VAR_PORC_IVA=>:P354_PORC_IVA,P_DET_COD_ARTICULO=>:P354_COD_ARTICULO,P_VAR_RECARGO=>:P354_RECARGO,',
'P_DET_TOTAL_IVA=>:P354_TOTAL_IVA,P_CAB_IVA_PARCIAL=>:P354_IVA_PARCIAL,',
'P_DET_IVA_ANT=>:P354_IVA_ANT,P_CAB_SUBTOTAL_PARCIAL=>:P354_SUBTOTAL_PARCIAL,P_DET_IMPORTE_ANT=>:P354_IMPORTE_ANT,P_CAB_GRAVADAS_PARCIAL=>:P354_GRAVADAS_PARCIAL,',
'P_CAB_EXENTAS_PARCIAL=>:P354_EXENTAS_PARCIAL,P_CAB_PORCENTAJE_DESCUENTO=>:P354_PORCENTAJE_DESCUENTO,',
'P_CAB_DESCUENTO=>:P354_DESCUENTO,P_CAB_TOTAL_IVA=>:P354_TOTAL_IVA,P_CAB_SUBTOTAL=>:P354_SUBTOTAL,',
'P_CAB_GRAVADAS=>:P354_GRAVADAS,P_CAB_EXENTAS=>:P354_EXENTAS,P_CAB_TOTAL=>:P354_TOTAL,P_CAB_RECARGO_PORC=>:P354_RECARGO_PORC,',
'P_CAB_RECARGO=>:P354_RECARGO,P_DET_MONTO_GRAVADA_10=>:P354_MONTO_GRAVADA_10,P_DET_MONTO_GRAVADA_5=>:P354_MONTO_GRAVADA_5,P_DET_MONTO_EXENTA=>:P354_MONTO_EXENTA,',
'P_CAB_TIP_CAMBIO=>:P354_TIP_CAMBIO,P_COD_EMPRESA=>:P354_COD_EMPRESA,P_COD_FLETE=>:P354_COD_FLETE,P_CAB_FLETE_TOTAL=>:P354_FLETE_TOTAL,',
'P_DET_TOTAL_PESO=>:P354_TOTAL_PESO,P_DET_TOTAL_VOLUMEN=>:P354_VOLUMEN,P_VAR_PORC_RECARGO_ANT=>:P354_PORC_RECARGO_ANT);',
'INV.vtpresupuesto.PR_CALCULOS(P_VAR_MULT=>:P354_VAR_MULT,P_VAR_DIV=>:P354_VAR_DIV,',
'P_DET_PORC_IVA=>:P354_PORC_IVA_1,P_DET_PRECIO_UNITARIO=>:P354_PRECIO_UNITARIO,P_CAB_DECIMALES=>:P354_DECIMALES,',
'P_DET_CANTIDAD_UB=>:P354_CANTIDAD_UB,P_DET_CANTIDAD=>:P354_CANTIDAD,P_DET_PORC_DESCUENTO=>:P354_PORC_DESCUENTO,',
'P_DET_PORC_RECARGO=>:P354_PORC_RECARGO,P_DET_DESCUENTO=>:P354_DESCUENTO_1,',
'P_DET_MONTO_TOTAL=>:P354_MONTO_TOTAL,P_DET_RECARGO=>:P354_RECARGO_1,P_VAR_PORC_IVA=>:P354_PORC_IVA,',
'P_DET_COD_ARTICULO=>:P354_COD_ARTICULO,P_VAR_RECARGO=>:P354_RECARGO,',
'P_DET_TOTAL_IVA=>:P354_TOTAL_IVA_1,P_CAB_IVA_PARCIAL=>:P354_IVA_PARCIAL,',
'P_DET_IVA_ANT=>:P354_IVA_ANT,P_CAB_SUBTOTAL_PARCIAL=>:P354_SUBTOTAL_PARCIAL,',
'P_DET_IMPORTE_ANT=>:P354_IMPORTE_ANT,P_CAB_GRAVADAS_PARCIAL=>:P354_GRAVADAS_PARCIAL,',
'P_CAB_EXENTAS_PARCIAL=>:P354_EXENTAS_PARCIAL,P_CAB_PORCENTAJE_DESCUENTO=>:P354_PORCENTAJE_DESCUENTO,',
'P_CAB_DESCUENTO=>:P354_DESCUENTO,P_CAB_TOTAL_IVA=>:P354_TOTAL_IVA,',
'P_CAB_SUBTOTAL=>:P354_SUBTOTAL,P_CAB_GRAVADAS=>:P354_GRAVADAS,P_CAB_EXENTAS=>:P354_EXENTAS,',
'P_CAB_TOTAL=>:P354_TOTAL,P_CAB_RECARGO_PORC=>:P354_RECARGO_PORC,P_CAB_RECARGO=>:P354_RECARGO,P_DET_MONTO_GRAVADA_10=>:P354_MONTO_GRAVADA_10,',
'P_DET_MONTO_GRAVADA_5=>:P354_MONTO_GRAVADA_5,',
'P_DET_MONTO_EXENTA=>:P354_MONTO_EXENTA,',
'P_MENSAJE_ERROR=>:P0_MENSAJE_VALIDACION,',
'P_CAB_TIP_CAMBIO=>:P354_TIP_CAMBIO,',
'P_COD_EMPRESA=>:P354_COD_EMPRESA,',
'P_COD_FLETE=>:P354_COD_FLETE,',
'P_CAB_FLETE_TOTAL=>:P354_FLETE_TOTAL,',
'P_DET_TOTAL_PESO=>:P354_TOTAL_PESO,',
'P_DET_TOTAL_VOLUMEN=>:P354_TOTAL_VOLUMEN);',
'END;',
''))
,p_attribute_02=>'P354_DECIMALES,P354_VAR_MULT,P354_VAR_DIV,P354_PORC_IVA_1,P354_PRECIO_UNITARIO,P354_CANTIDAD,P354_PORC_DESCUENTO, P354_PORC_RECARGO,P354_DESCUENTO,P354_MONTO_TOTAL,P354_RECARGO_1,P354_PORC_IVA,P354_COD_ARTICULO, P354_RECARGO,P354_TOTAL_IVA_1,P354_IVA'
||'_PARCIAL,P354_IVA_ANT,P354_SUBTOTAL_PARCIAL,P354_IMPORTE_ANT, P354_GRAVADAS_PARCIAL,P354_EXENTAS_PARCIAL,P354_PORCENTAJE_DESCUENTO,P354_DESCUENTO,P354_TOTAL_IVA, P354_SUBTOTAL,P354_GRAVADAS,P354_EXENTAS,P354_TOTAL,P354_RECARGO_PORC,P354_MONTO_GRAVADA'
||'_10,P354_MONTO_GRAVADA_5, P354_MONTO_EXENTA,P354_TIP_CAMBIO,P354_COD_EMPRESA,P354_COD_FLETE,P354_TOTAL_PESO,P354_VOLUMEN,P354_DESCUENTO_1'
,p_attribute_03=>'P0_MENSAJE_VALIDACION,P354_VAR_MULT,P354_VAR_DIV,P354_CANTIDAD_UB,P354_RECARGO_1,P354_TOTAL_IVA_1, P354_IVA_PARCIAL,P354_IVA_ANT,P354_SUBTOTAL_PARCIAL,P354_IMPORTE_ANT,P354_GRAVADAS_PARCIAL, P354_EXENTAS_PARCIAL,P354_PORCENTAJE_DESCUENTO,P354_GRAVADA'
||'S,P354_EXENTAS,P354_RECARGO_PORC,P354_MONTO_GRAVADA_5,P354_MONTO_GRAVADA_10,P354_MONTO_EXENTA, P354_FLETE_TOTAL,P354_PORC_RECARGO_ANT,P354_MONTO_TOTAL,P354_DESCUENTO_1,P354_PORC_DESCUENTO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(99283919258806423)
,p_event_id=>wwv_flow_imp.id(99283372029806417)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P354_COD_MONEDA = ''1'' THEN',
'    :P354_MONTO_TOTAL := TO_NUMBER(REPLACE(:P354_MONTO_TOTAL,''.''));',
'    :P354_TOTAL_IVA_1 := TO_NUMBER(REPLACE(:P354_TOTAL_IVA_1,''.''));',
'    :P354_CANTIDAD := TO_NUMBER(REPLACE(:P354_CANTIDAD,''.''));',
'    :P354_PORC_DESCUENTO := TO_NUMBER(REPLACE(:P354_PORC_DESCUENTO,''.''));',
'    :P354_PORC_RECARGO := TO_NUMBER(REPLACE(:P354_PORC_RECARGO,''.''));',
'    /*inv.vtpresupuesto.pr_redondeo_50(p_cod_moneda          => :P354_COD_MONEDA,',
'                                 p_det_monto_total    =>  :P354_MONTO_TOTAL,',
'                                 p_det_total_iva       => :P354_TOTAL_IVA_1,',
'                                 p_det_precio_unitario =>  :P354_PRECIO_UNITARIO,',
'                                 p_det_cantidad        => :P354_CANTIDAD,',
'                                 p_det_porc_descuento  =>  :P354_PORC_DESCUENTO,',
'                                 p_det_porc_recargo    =>  :P354_PORC_RECARGO);*/',
'',
'    :P354_PRECIO_UNITARIO := TO_CHAR(:P354_PRECIO_UNITARIO , ''999G999G999G999G999G999G990'');',
'END IF;'))
,p_attribute_02=>'P354_COD_MONEDA,P354_MONTO_TOTAL,P354_TOTAL_IVA_1,P354_CANTIDAD,P354_PORC_DESCUENTO,P354_PORC_RECARGO'
,p_attribute_03=>'P354_PRECIO_UNITARIO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(99284084941806424)
,p_event_id=>wwv_flow_imp.id(99283372029806417)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P354_COD_MONEDA  = ''1'' THEN ',
':P354_TOTAL_IVA:=replace(:P354_TOTAL_IVA,''.'');:P354_SUBTOTAL:=replace(:P354_SUBTOTAL,''.'');',
':P354_TOTAL:=replace(:P354_TOTAL,''.'');:P354_PRECIO_UNITARIO:=replace(:P354_PRECIO_UNITARIO,''.'');',
':P354_TOTAL_IVA_1:=replace(:P354_TOTAL_IVA_1,''.'');:P354_MONTO_TOTAL:=replace(:P354_MONTO_TOTAL,''.'');',
'DECLARE',
'V_PORC_RECARGO_ANT NUMBER;V_CARGA_PORC_RECARGO VARCHAR2(100);',
'BEGIN',
'INV.vtpresupuesto.PR_CALCULA_RECARGO(P_DET_PORC_RECARGO_ANT=>V_PORC_RECARGO_ANT,P_DET_CARGA_PORC_RECARGO=>V_CARGA_PORC_RECARGO,P_CAB_DECIMALES=>:P354_DECIMALES,',
'P_MENSAJE_ERROR=>:P0_MENSAJE_VALIDACION,',
'P_VAR_MULT=>:P354_VAR_MULT,P_VAR_DIV=>:P354_VAR_DIV,',
'P_DET_PORC_IVA=>:P354_PORC_IVA_1,P_DET_PRECIO_UNITARIO=>:P354_PRECIO_UNITARIO,',
'P_DET_CANTIDAD_UB=>:P354_CANTIDAD_UB,P_DET_CANTIDAD=>:P354_CANTIDAD,',
'P_DET_PORC_DESCUENTO=>:P354_PORC_DESCUENTO,P_DET_PORC_RECARGO=>:P354_PORC_RECARGO,',
'P_DET_DESCUENTO=>:P354_DESCUENTO_1,P_DET_MONTO_TOTAL=>:P354_MONTO_TOTAL,',
'P_DET_RECARGO=>:P354_RECARGO_1,P_VAR_PORC_IVA=>:P354_PORC_IVA,P_DET_COD_ARTICULO=>:P354_COD_ARTICULO,P_VAR_RECARGO=>:P354_RECARGO,',
'P_DET_TOTAL_IVA=>:P354_TOTAL_IVA,P_CAB_IVA_PARCIAL=>:P354_IVA_PARCIAL,',
'P_DET_IVA_ANT=>:P354_IVA_ANT,P_CAB_SUBTOTAL_PARCIAL=>:P354_SUBTOTAL_PARCIAL,P_DET_IMPORTE_ANT=>:P354_IMPORTE_ANT,P_CAB_GRAVADAS_PARCIAL=>:P354_GRAVADAS_PARCIAL,',
'P_CAB_EXENTAS_PARCIAL=>:P354_EXENTAS_PARCIAL,P_CAB_PORCENTAJE_DESCUENTO=>:P354_PORCENTAJE_DESCUENTO,',
'P_CAB_DESCUENTO=>:P354_DESCUENTO,P_CAB_TOTAL_IVA=>:P354_TOTAL_IVA,P_CAB_SUBTOTAL=>:P354_SUBTOTAL,',
'P_CAB_GRAVADAS=>:P354_GRAVADAS,P_CAB_EXENTAS=>:P354_EXENTAS,P_CAB_TOTAL=>:P354_TOTAL,P_CAB_RECARGO_PORC=>:P354_RECARGO_PORC,',
'P_CAB_RECARGO=>:P354_RECARGO,P_DET_MONTO_GRAVADA_10=>:P354_MONTO_GRAVADA_10,P_DET_MONTO_GRAVADA_5=>:P354_MONTO_GRAVADA_5,P_DET_MONTO_EXENTA=>:P354_MONTO_EXENTA,',
'P_CAB_TIP_CAMBIO=>:P354_TIP_CAMBIO,P_COD_EMPRESA=>:P354_COD_EMPRESA,P_COD_FLETE=>:P354_COD_FLETE,P_CAB_FLETE_TOTAL=>:P354_FLETE_TOTAL,',
'P_DET_TOTAL_PESO=>:P354_TOTAL_PESO,P_DET_TOTAL_VOLUMEN=>:P354_VOLUMEN,P_VAR_PORC_RECARGO_ANT=>:P354_PORC_RECARGO_ANT);',
'INV.vtpresupuesto.PR_CALCULOS(P_VAR_MULT=>:P354_VAR_MULT,P_VAR_DIV=>:P354_VAR_DIV,',
'P_DET_PORC_IVA=>:P354_PORC_IVA_1,P_DET_PRECIO_UNITARIO=>:P354_PRECIO_UNITARIO,P_CAB_DECIMALES=>:P354_DECIMALES,',
'P_DET_CANTIDAD_UB=>:P354_CANTIDAD_UB,P_DET_CANTIDAD=>:P354_CANTIDAD,P_DET_PORC_DESCUENTO=>:P354_PORC_DESCUENTO,',
'P_DET_PORC_RECARGO=>:P354_PORC_RECARGO,P_DET_DESCUENTO=>:P354_DESCUENTO_1,',
'P_DET_MONTO_TOTAL=>:P354_MONTO_TOTAL,P_DET_RECARGO=>:P354_RECARGO_1,P_VAR_PORC_IVA=>:P354_PORC_IVA,',
'P_DET_COD_ARTICULO=>:P354_COD_ARTICULO,P_VAR_RECARGO=>:P354_RECARGO,',
'P_DET_TOTAL_IVA=>:P354_TOTAL_IVA_1,P_CAB_IVA_PARCIAL=>:P354_IVA_PARCIAL,',
'P_DET_IVA_ANT=>:P354_IVA_ANT,P_CAB_SUBTOTAL_PARCIAL=>:P354_SUBTOTAL_PARCIAL,',
'P_DET_IMPORTE_ANT=>:P354_IMPORTE_ANT,P_CAB_GRAVADAS_PARCIAL=>:P354_GRAVADAS_PARCIAL,',
'P_CAB_EXENTAS_PARCIAL=>:P354_EXENTAS_PARCIAL,P_CAB_PORCENTAJE_DESCUENTO=>:P354_PORCENTAJE_DESCUENTO,',
'P_CAB_DESCUENTO=>:P354_DESCUENTO,P_CAB_TOTAL_IVA=>:P354_TOTAL_IVA,',
'P_CAB_SUBTOTAL=>:P354_SUBTOTAL,P_CAB_GRAVADAS=>:P354_GRAVADAS,P_CAB_EXENTAS=>:P354_EXENTAS,',
'P_CAB_TOTAL=>:P354_TOTAL,P_CAB_RECARGO_PORC=>:P354_RECARGO_PORC,P_CAB_RECARGO=>:P354_RECARGO,P_DET_MONTO_GRAVADA_10=>:P354_MONTO_GRAVADA_10,',
'P_DET_MONTO_GRAVADA_5=>:P354_MONTO_GRAVADA_5,',
'P_DET_MONTO_EXENTA=>:P354_MONTO_EXENTA,',
'P_MENSAJE_ERROR=>:P0_MENSAJE_VALIDACION,',
'P_CAB_TIP_CAMBIO=>:P354_TIP_CAMBIO,',
'P_COD_EMPRESA=>:P354_COD_EMPRESA,',
'P_COD_FLETE=>:P354_COD_FLETE,',
'P_CAB_FLETE_TOTAL=>:P354_FLETE_TOTAL,',
'P_DET_TOTAL_PESO=>:P354_TOTAL_PESO,',
'P_DET_TOTAL_VOLUMEN=>:P354_TOTAL_VOLUMEN);',
'END;',
'END  IF;',
''))
,p_attribute_02=>'P354_DECIMALES,P354_VAR_MULT,P354_VAR_DIV,P354_PORC_IVA_1,P354_PRECIO_UNITARIO,P354_CANTIDAD,P354_PORC_DESCUENTO, P354_PORC_RECARGO,P354_DESCUENTO,P354_MONTO_TOTAL,P354_RECARGO_1,P354_PORC_IVA,P354_COD_ARTICULO, P354_RECARGO,P354_TOTAL_IVA_1,P354_IVA'
||'_PARCIAL,P354_IVA_ANT,P354_SUBTOTAL_PARCIAL,P354_IMPORTE_ANT, P354_GRAVADAS_PARCIAL,P354_EXENTAS_PARCIAL,P354_PORCENTAJE_DESCUENTO,P354_DESCUENTO,P354_TOTAL_IVA, P354_SUBTOTAL,P354_GRAVADAS,P354_EXENTAS,P354_TOTAL,P354_RECARGO_PORC,P354_MONTO_GRAVADA'
||'_10,P354_MONTO_GRAVADA_5, P354_MONTO_EXENTA,P354_TIP_CAMBIO,P354_COD_EMPRESA,P354_COD_FLETE,P354_TOTAL_PESO,P354_VOLUMEN,P354_DESCUENTO_1,P354_COD_MONEDA'
,p_attribute_03=>'P0_MENSAJE_VALIDACION,P354_VAR_MULT,P354_VAR_DIV,P354_CANTIDAD_UB,P354_RECARGO_1,P354_TOTAL_IVA_1, P354_IVA_PARCIAL,P354_IVA_ANT,P354_SUBTOTAL_PARCIAL,P354_IMPORTE_ANT,P354_GRAVADAS_PARCIAL, P354_EXENTAS_PARCIAL,P354_PORCENTAJE_DESCUENTO,P354_GRAVADA'
||'S,P354_EXENTAS,P354_RECARGO_PORC,P354_MONTO_GRAVADA_5,P354_MONTO_GRAVADA_10,P354_MONTO_EXENTA, P354_FLETE_TOTAL,P354_PORC_RECARGO_ANT,P354_MONTO_TOTAL,P354_DESCUENTO_1,P354_PORC_DESCUENTO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(99284135157806425)
,p_event_id=>wwv_flow_imp.id(99283372029806417)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'INV.vtpresupuesto.PR_PED_PEND(P_DET_STOCK_ACTUAL => :P354_STOCK_ACTUAL,',
'               P_VAR_COD_EMPRESA  => :P354_COD_EMPRESA,',
'               P_DET_COD_ARTICULO => :P354_COD_ARTICULO,',
'               P_DET_STOCK_RESERV => :P354_STOCK_RESERV);',
'',
'IF :P354_COD_SUCURSAL IN (''09'', ''105'', ''95'', ''30'') THEN',
'BEGIN',
'SELECT DESCUENTO',
'INTO :P354_PORC_DESCUENTO',
'FROM VT_OFERTAS_OUTLET',
'WHERE COD_EMPRESA = :P354_COD_EMPRESA',
'AND COD_ARTICULO = :P354_COD_ARTICULO',
'AND FEC_CIERRE >= :P354_FEC_COMPROBANTE',
'AND FEC_ALTA <= :P354_FEC_COMPROBANTE',
'AND COD_ARTICULO = :P354_COD_ARTICULO',
'AND :P354_COD_SUCURSAL IN (''09'', ''105'', ''95'', ''30'');',
'EXCEPTION',
'WHEN OTHERS THEN',
':P354_PORC_DESCUENTO := 30;',
'END;',
'END IF;',
'IF :P354_COD_SUCURSAL IN (''30-A'') THEN',
'BEGIN',
'SELECT PRECIO_DESCUENTO, 0',
'INTO :P354_PRECIO_UNITARIO, :P354_PORC_DESCUENTO',
'FROM VT_PRODUCTOS_RENTA_STNGO',
'WHERE COD_EMPRESA = :P354_COD_EMPRESA',
'AND COD_ARTICULO = :P354_COD_ARTICULO',
'AND FEC_CIERRE >= :P354_FEC_COMPROBANTE',
'AND FEC_ALTA <= :P354_FEC_COMPROBANTE',
'AND COD_ARTICULO = :P354_COD_ARTICULO',
'AND :P354_COD_SUCURSAL IN (''30-A'');',
'EXCEPTION',
'WHEN OTHERS THEN',
'NULL;',
'END;',
'END IF;',
'',
''))
,p_attribute_02=>'P354_COD_EMPRESA,P354_COD_ARTICULO,P354_COD_SUCURSAL,P354_FEC_COMPROBANTE'
,p_attribute_03=>'P354_STOCK_ACTUAL,P354_STOCK_RESERV,P354_COD_SUCURSAL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(99284230968806426)
,p_event_id=>wwv_flow_imp.id(99283372029806417)
,p_event_result=>'TRUE'
,p_action_sequence=>90
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P354_TOTAL_IVA := replace(:P354_TOTAL_IVA,''.'');',
':P354_SUBTOTAL := replace(:P354_SUBTOTAL,''.'');',
':P354_TOTAL   := replace(:P354_TOTAL,''.'');',
':P354_PRECIO_UNITARIO  := replace(:P354_PRECIO_UNITARIO,''.'');',
':P354_TOTAL_IVA_1 := replace(:P354_TOTAL_IVA_1,''.'');',
':P354_MONTO_TOTAL := replace(:P354_MONTO_TOTAL,''.'');',
'',
':P354_DESCUENTO_1 := round((nvl(:P354_CANTIDAD, 0) *',
'                           (nvl(:P354_PRECIO_UNITARIO, 0)) *',
'                           (nvl(:P354_PORC_DESCUENTO, 0) / 100)),',
'                           nvl(:P354_DECIMALES, 0));',
'IF :P354_COD_MONEDA = ''1'' THEN ',
'    :P354_PRECIO_UNITARIO  := TO_CHAR(:P354_PRECIO_UNITARIO,''999G999G999G999G999G999G990'');',
'    :P354_TOTAL_IVA_1 := TO_CHAR(:P354_TOTAL_IVA_1,''999G999G999G999G999G999G990'');',
'    :P354_MONTO_TOTAL := TO_CHAR(:P354_MONTO_TOTAL,''999G999G999G999G999G999G990'');',
'    :P354_TOTAL_IVA := TO_CHAR(:P354_TOTAL_IVA,''999G999G999G999G999G999G990'');',
'    :P354_SUBTOTAL := TO_CHAR(:P354_SUBTOTAL,''999G999G999G999G999G999G990'');',
'    :P354_TOTAL   := TO_CHAR(:P354_TOTAL,''999G999G999G999G999G999G990'');',
'ELSE ',
'    :P354_PRECIO_UNITARIO  := TO_CHAR(:P354_PRECIO_UNITARIO,''999G999G999G999G990D00'');',
'    :P354_TOTAL_IVA_1 := TO_CHAR(:P354_TOTAL_IVA_1,''999G999G999G999G990D00'');',
'    :P354_MONTO_TOTAL := TO_CHAR(:P354_MONTO_TOTAL,''999G999G999G999G990D00'');',
'    :P354_TOTAL_IVA := TO_CHAR(:P354_TOTAL_IVA,''999G999G999G999G990D00'');',
'    :P354_SUBTOTAL := TO_CHAR(:P354_SUBTOTAL,''999G999G999G999G990D00'');',
'    :P354_TOTAL   := TO_CHAR(:P354_TOTAL,''999G999G999G999G990D00'');',
'END IF;',
''))
,p_attribute_02=>'P354_TOTAL_IVA,P354_SUBTOTAL,P354_TOTAL,P354_PRECIO_UNITARIO,P354_TOTAL_IVA_1,P354_MONTO_TOTAL,P354_CANTIDAD,P354_PORC_DESCUENTO,P354_DECIMALES,P354_COD_MONEDA'
,p_attribute_03=>'P354_TOTAL_IVA,P354_SUBTOTAL,P354_TOTAL,P354_PRECIO_UNITARIO,P354_TOTAL_IVA_1,P354_MONTO_TOTAL,P354_DESCUENTO_1'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(99284339771806427)
,p_event_id=>wwv_flow_imp.id(99283372029806417)
,p_event_result=>'TRUE'
,p_action_sequence=>100
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P354_AGREGAR_DETALLES'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_02=>'1'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(99284463108806428)
,p_event_id=>wwv_flow_imp.id(99283372029806417)
,p_event_result=>'TRUE'
,p_action_sequence=>110
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P354_CARGA_DETALLE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(136999957862087901)
,p_name=>'Validaciones de datos en el guardado_1'
,p_event_sequence=>300
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P354_CARGA_DETALLE_1'
,p_condition_element=>'P354_CARGA_DETALLE_1'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'1'
,p_bind_type=>'live'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(137000083589087902)
,p_event_id=>wwv_flow_imp.id(136999957862087901)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if nvl(:P354_ES_PROMO,''N'')=''S'' and :P354_NRO_PROMO_1 is not null then',
'  inv.vtpresupuesto.pr_act_promo;',
'end if; '))
,p_attribute_02=>'P354_ES_PROMO,P354_NRO_PROMO_1'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(137000131855087903)
,p_event_id=>wwv_flow_imp.id(136999957862087901)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P354_PORC_DESCUENTO IN (''0'', ''0,00'','''') OR :P354_PORC_DESCUENTO IS NULL THEN',
':P354_TOTAL_IVA := replace(:P354_TOTAL_IVA,''.'');',
':P354_SUBTOTAL := replace(:P354_SUBTOTAL,''.'');',
':P354_TOTAL   := replace(:P354_TOTAL,''.'');',
':P354_PRECIO_UNITARIO  := replace(:P354_PRECIO_UNITARIO,''.'');',
':P354_TOTAL_IVA_1 := replace(:P354_TOTAL_IVA_1,''.'');',
':P354_MONTO_TOTAL := replace(:P354_MONTO_TOTAL,''.'');',
'IF :P354_CANTIDAD IS NULL THEN',
'    :P0_MENSAJE_VALIDACION := ''Es obligatorio ingresar la cantidad. '';',
'    RETURN;',
'  END IF;',
'  DECLARE ',
'    V_IND_TIPO_PEDIDO VARCHAR2(100);',
'    VUNITARIO NUMBER;',
'  BEGIN',
'  INV.vtpresupuesto.PR_DESCUENTOS(P_DET_IND_PROMO        => :P354_IND_PROMO,',
'     P_DET_NRO_PROMO        => :P354_NRO_PROMO_1,',
'     P_PORC_DESCUENTO       => :P354_PORC_DESCUENTO,',
'     P_COD_CLIENTE          => :P354_COD_CLIENTE,',
'     P_COD_CONDICION_VENTA  => :P354_COD_CONDICION_VENTA,',
'     P_DET_COD_LISTA_PRECIO => :P354_PRECIO_LISTA,',
'     P_DET_CANTIDAD         => :P354_CANTIDAD,',
'     P_DET_COD_ARTICULO     => :P354_COD_ARTICULO,',
'     P_COD_SUCURSAL         => :P354_COD_SUCURSAL,',
'     P_COD_EMPRESA          => :P354_COD_EMPRESA,',
'     P_FEC_COMPROBANTE      => :P354_FEC_COMPROBANTE,',
'     P_DET_PRECIO_UNITARIO  => VUNITARIO ,--:P354_PRECIO_UNITARIO,',
'     P_COD_FLETE            => :P354_COD_FLETE,',
'     P_COD_LISTA_PRECIO     => :P354_COD_LISTA_PRECIO,',
'     P_IND_TIPO_PEDIDO      => :P354_IND_TIPO_PEDIDO);',
'    END;',
'  IF NVL(:P354_DESCUENTO_1, 0) > 0 AND :P354_COD_ARTICULO IS NOT NULL THEN',
'    :P354_DESCUENTO_1 := 0;',
'  END IF;',
'  DECLARE ',
'   V_PORC_DESCUENTO_ANT NUMBER;',
'   V_CARGA_PORC_DESCUENTO VARCHAR2(100);',
'   ',
'  BEGIN',
'  INV.vtpresupuesto.PR_CALCULA_DESCUENTO(P_DET_PORC_DESCUENTO_ANT   => V_PORC_DESCUENTO_ANT,',
'    P_PORC_DESCUENTO           => :P354_PORC_DESCUENTO,',
'    P_DESCUENTO                => :P354_DESCUENTO_1,',
'    P_DET_CARGA_PORC_DESCUENTO => V_CARGA_PORC_DESCUENTO,',
'    P_DET_CANTIDAD             => :P354_CANTIDAD,',
'    P_DET_PRECIO_UNITARIO      => :P354_PRECIO_UNITARIO,',
'    P_DECIMALES                => :P354_DECIMALES,',
'    P_DET_NRO_PROMO            => :P354_NRO_PROMO_1,',
'    P_PORC_DESCUENTO_ANT       => V_PORC_DESCUENTO_ANT,',
'    P_RECARGO                  => :P354_RECARGO);',
'   END;',
'  IF NVL(:P354_RECARGO_1, 0) > 0 AND :P354_COD_ARTICULO IS NOT NULL THEN',
'    :P354_RECARGO_1 := 0;',
'  END IF;',
'DECLARE ',
'    V_IND_TIPO_PEDIDO VARCHAR2(100);',
'    VUNITARIO NUMBER;',
'BEGIN',
'INV.vtpresupuesto.PR_DESCUENTOS(P_DET_IND_PROMO        => :P354_IND_PROMO,',
'P_DET_NRO_PROMO        => :P354_NRO_PROMO_1,',
'P_PORC_DESCUENTO       => :P354_PORC_DESCUENTO,',
'P_COD_CLIENTE          => :P354_COD_CLIENTE,',
'P_COD_CONDICION_VENTA  => :P354_COD_CONDICION_VENTA,',
'P_DET_COD_LISTA_PRECIO => :P354_PRECIO_LISTA,',
'P_DET_CANTIDAD         => :P354_CANTIDAD,',
'P_DET_COD_ARTICULO     => :P354_COD_ARTICULO,',
'P_COD_SUCURSAL         => :P354_COD_SUCURSAL,',
'P_COD_EMPRESA          => :P354_COD_EMPRESA,',
'P_FEC_COMPROBANTE      => :P354_FEC_COMPROBANTE,',
'P_DET_PRECIO_UNITARIO  => VUNITARIO,',
'P_COD_FLETE            => :P354_COD_FLETE,',
'P_COD_LISTA_PRECIO     => :P354_COD_LISTA_PRECIO,',
'P_IND_TIPO_PEDIDO      => :P354_IND_TIPO_PEDIDO);',
'END;',
':P354_TOTAL_IVA := TO_CHAR(:P354_TOTAL_IVA,''999G999G999G999G999G999G990'');',
':P354_SUBTOTAL := TO_CHAR(:P354_SUBTOTAL,''999G999G999G999G999G999G990'');',
':P354_TOTAL   := TO_CHAR(:P354_TOTAL,''999G999G999G999G999G999G990'');',
':P354_TOTAL_IVA_1 := TO_CHAR(:P354_TOTAL_IVA_1,''999G999G999G999G999G999G990'');',
':P354_MONTO_TOTAL := TO_CHAR(:P354_MONTO_TOTAL,''999G999G999G999G999G999G990'');',
'IF :P354_COD_MONEDA = ''1'' THEN ',
'    :P354_PRECIO_UNITARIO  := TO_CHAR(:P354_PRECIO_UNITARIO,''999G999G999G999G999G999G990'');',
'ELSE ',
'    :P354_PRECIO_UNITARIO  := TO_CHAR(:P354_PRECIO_UNITARIO,''999G999G999G999G990D00'');',
'END IF;',
'END IF;'))
,p_attribute_02=>'P354_CANTIDAD,P354_IND_PROMO,P354_NRO_PROMO_1,P354_COD_CLIENTE,P354_COD_CONDICION_VENTA,P354_PRECIO_LISTA, P354_COD_ARTICULO,P354_COD_SUCURSAL,P354_COD_EMPRESA,P354_FEC_COMPROBANTE,P354_COD_FLETE,P354_COD_LISTA_PRECIO, P354_DESCUENTO,P354_PORC_DESCUE'
||'NTO,P354_PRECIO_UNITARIO,P354_DECIMALES,P354_RECARGO,P354_RECARGO_1,P354_COD_MONEDA'
,p_attribute_03=>'P0_MENSAJE_VALIDACION,P354_PORC_DESCUENTO,P354_DESCUENTO,P354_RECARGO_1,P354_DESCUENTO_1'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(137000237872087904)
,p_event_id=>wwv_flow_imp.id(136999957862087901)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P354_PRECIO_UNITARIO  := replace(:P354_PRECIO_UNITARIO,''.'');',
'INV.vtpresupuesto.PR_VALIDA_MIX_DESCUENTOS(P_VAR_CANTIDAD_PROMO_MIX  => :P354_CANTIDAD_PROMO_MIX,',
'                                    P_DET_COD_ARTICULO        => :P354_COD_ARTICULO,',
'                                    P_VAR_COD_EMPRESA         => :P354_COD_EMPRESA,',
'                                    P_VAR_COD_CLIENTE         => :P354_COD_CLIENTE,',
'                                    P_VAR_COD_LISTA_PRECIO    => :P354_COD_LISTA_PRECIO,',
'                                    P_DET_NRO_PROMO           => :P354_NRO_PROMO_1,',
'                                    P_DET_PORC_DESCUENTO      => :P354_PORC_DESCUENTO,',
'                                    P_DET_CANTIDAD            => :P354_CANTIDAD,',
'                                    P_DET_IND_PROMO           => :P354_IND_PROMO,',
'                                    P_VAR_COD_CONDICION_VENTA => :P354_COD_CONDICION_VENTA);',
'',
'  IF :P354_COD_SUCURSAL IN (''09'', ''105'', ''95'', ''30'') THEN',
'    BEGIN',
'      SELECT DESCUENTO',
'        INTO :P354_PORC_DESCUENTO',
'        FROM VT_OFERTAS_OUTLET',
'       WHERE COD_EMPRESA = :P354_COD_EMPRESA',
'         AND COD_ARTICULO = :P354_COD_ARTICULO',
'         AND FEC_CIERRE >= :P354_FEC_COMPROBANTE',
'         AND FEC_ALTA < :P354_FEC_COMPROBANTE',
'         AND COD_ARTICULO = :P354_COD_ARTICULO',
'         AND :P354_COD_SUCURSAL IN (''09'', ''105'', ''95'', ''30'');',
'    EXCEPTION',
'      WHEN OTHERS THEN',
'        :P354_PORC_DESCUENTO := 30;',
'    END;',
'  END IF;',
' ',
'IF :P354_COD_MONEDA = ''1'' THEN ',
'    :P354_PRECIO_UNITARIO  := TO_CHAR(:P354_PRECIO_UNITARIO,''999G999G999G999G999G999G990'');',
'ELSE ',
'    :P354_PRECIO_UNITARIO  := TO_CHAR(:P354_PRECIO_UNITARIO,''999G999G999G999G990D00'');',
'END IF;',
'',
':P354_RECARGO := 0;',
':P354_DESCUENTO := 0;'))
,p_attribute_02=>'P354_COD_ARTICULO,P354_COD_EMPRESA,P354_COD_CLIENTE,P354_COD_LISTA_PRECIO,P354_NRO_PROMO_1,P354_PORC_DESCUENTO,   P354_CANTIDAD,P354_IND_PROMO,P354_COD_CONDICION_VENTA,P354_COD_SUCURSAL,P354_FEC_COMPROBANTE,P354_COD_MONEDA'
,p_attribute_03=>'P354_CANTIDAD_PROMO_MIX,P354_PORC_DESCUENTO,P354_RECARGO,P354_DESCUENTO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(137000380359087905)
,p_event_id=>wwv_flow_imp.id(136999957862087901)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P354_COD_IVA = ''7'' THEN ',
'    :P354_PORC_DESCUENTO := ''0,00'';',
'END IF;'))
,p_attribute_02=>'P354_COD_IVA'
,p_attribute_03=>'P354_PORC_DESCUENTO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(137000439461087906)
,p_event_id=>wwv_flow_imp.id(136999957862087901)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P354_TOTAL_IVA:=replace(:P354_TOTAL_IVA,''.'');:P354_SUBTOTAL:=replace(:P354_SUBTOTAL,''.'');',
':P354_TOTAL:=replace(:P354_TOTAL,''.'');:P354_PRECIO_UNITARIO:=replace(:P354_PRECIO_UNITARIO,''.'');',
':P354_TOTAL_IVA_1:=replace(:P354_TOTAL_IVA_1,''.'');:P354_MONTO_TOTAL:=replace(:P354_MONTO_TOTAL,''.'');',
'DECLARE',
'V_PORC_RECARGO_ANT NUMBER;V_CARGA_PORC_RECARGO VARCHAR2(100);',
'BEGIN',
'INV.vtpresupuesto.PR_CALCULA_RECARGO(P_DET_PORC_RECARGO_ANT=>V_PORC_RECARGO_ANT,P_DET_CARGA_PORC_RECARGO=>V_CARGA_PORC_RECARGO,P_CAB_DECIMALES=>:P354_DECIMALES,',
'P_MENSAJE_ERROR=>:P0_MENSAJE_VALIDACION,',
'P_VAR_MULT=>:P354_VAR_MULT,P_VAR_DIV=>:P354_VAR_DIV,',
'P_DET_PORC_IVA=>:P354_PORC_IVA_1,P_DET_PRECIO_UNITARIO=>:P354_PRECIO_UNITARIO,',
'P_DET_CANTIDAD_UB=>:P354_CANTIDAD_UB,P_DET_CANTIDAD=>:P354_CANTIDAD,',
'P_DET_PORC_DESCUENTO=>:P354_PORC_DESCUENTO,P_DET_PORC_RECARGO=>:P354_PORC_RECARGO,',
'P_DET_DESCUENTO=>:P354_DESCUENTO_1,P_DET_MONTO_TOTAL=>:P354_MONTO_TOTAL,',
'P_DET_RECARGO=>:P354_RECARGO_1,P_VAR_PORC_IVA=>:P354_PORC_IVA,P_DET_COD_ARTICULO=>:P354_COD_ARTICULO,P_VAR_RECARGO=>:P354_RECARGO,',
'P_DET_TOTAL_IVA=>:P354_TOTAL_IVA,P_CAB_IVA_PARCIAL=>:P354_IVA_PARCIAL,',
'P_DET_IVA_ANT=>:P354_IVA_ANT,P_CAB_SUBTOTAL_PARCIAL=>:P354_SUBTOTAL_PARCIAL,P_DET_IMPORTE_ANT=>:P354_IMPORTE_ANT,P_CAB_GRAVADAS_PARCIAL=>:P354_GRAVADAS_PARCIAL,',
'P_CAB_EXENTAS_PARCIAL=>:P354_EXENTAS_PARCIAL,P_CAB_PORCENTAJE_DESCUENTO=>:P354_PORCENTAJE_DESCUENTO,',
'P_CAB_DESCUENTO=>:P354_DESCUENTO,P_CAB_TOTAL_IVA=>:P354_TOTAL_IVA,P_CAB_SUBTOTAL=>:P354_SUBTOTAL,',
'P_CAB_GRAVADAS=>:P354_GRAVADAS,P_CAB_EXENTAS=>:P354_EXENTAS,P_CAB_TOTAL=>:P354_TOTAL,P_CAB_RECARGO_PORC=>:P354_RECARGO_PORC,',
'P_CAB_RECARGO=>:P354_RECARGO,P_DET_MONTO_GRAVADA_10=>:P354_MONTO_GRAVADA_10,P_DET_MONTO_GRAVADA_5=>:P354_MONTO_GRAVADA_5,P_DET_MONTO_EXENTA=>:P354_MONTO_EXENTA,',
'P_CAB_TIP_CAMBIO=>:P354_TIP_CAMBIO,P_COD_EMPRESA=>:P354_COD_EMPRESA,P_COD_FLETE=>:P354_COD_FLETE,P_CAB_FLETE_TOTAL=>:P354_FLETE_TOTAL,',
'P_DET_TOTAL_PESO=>:P354_TOTAL_PESO,P_DET_TOTAL_VOLUMEN=>:P354_VOLUMEN,P_VAR_PORC_RECARGO_ANT=>:P354_PORC_RECARGO_ANT);',
'INV.vtpresupuesto.PR_CALCULOS(P_VAR_MULT=>:P354_VAR_MULT,P_VAR_DIV=>:P354_VAR_DIV,',
'P_DET_PORC_IVA=>:P354_PORC_IVA_1,P_DET_PRECIO_UNITARIO=>:P354_PRECIO_UNITARIO,P_CAB_DECIMALES=>:P354_DECIMALES,',
'P_DET_CANTIDAD_UB=>:P354_CANTIDAD_UB,P_DET_CANTIDAD=>:P354_CANTIDAD,P_DET_PORC_DESCUENTO=>:P354_PORC_DESCUENTO,',
'P_DET_PORC_RECARGO=>:P354_PORC_RECARGO,P_DET_DESCUENTO=>:P354_DESCUENTO_1,',
'P_DET_MONTO_TOTAL=>:P354_MONTO_TOTAL,P_DET_RECARGO=>:P354_RECARGO_1,P_VAR_PORC_IVA=>:P354_PORC_IVA,',
'P_DET_COD_ARTICULO=>:P354_COD_ARTICULO,P_VAR_RECARGO=>:P354_RECARGO,',
'P_DET_TOTAL_IVA=>:P354_TOTAL_IVA_1,P_CAB_IVA_PARCIAL=>:P354_IVA_PARCIAL,',
'P_DET_IVA_ANT=>:P354_IVA_ANT,P_CAB_SUBTOTAL_PARCIAL=>:P354_SUBTOTAL_PARCIAL,',
'P_DET_IMPORTE_ANT=>:P354_IMPORTE_ANT,P_CAB_GRAVADAS_PARCIAL=>:P354_GRAVADAS_PARCIAL,',
'P_CAB_EXENTAS_PARCIAL=>:P354_EXENTAS_PARCIAL,P_CAB_PORCENTAJE_DESCUENTO=>:P354_PORCENTAJE_DESCUENTO,',
'P_CAB_DESCUENTO=>:P354_DESCUENTO,P_CAB_TOTAL_IVA=>:P354_TOTAL_IVA,',
'P_CAB_SUBTOTAL=>:P354_SUBTOTAL,P_CAB_GRAVADAS=>:P354_GRAVADAS,P_CAB_EXENTAS=>:P354_EXENTAS,',
'P_CAB_TOTAL=>:P354_TOTAL,P_CAB_RECARGO_PORC=>:P354_RECARGO_PORC,P_CAB_RECARGO=>:P354_RECARGO,P_DET_MONTO_GRAVADA_10=>:P354_MONTO_GRAVADA_10,',
'P_DET_MONTO_GRAVADA_5=>:P354_MONTO_GRAVADA_5,',
'P_DET_MONTO_EXENTA=>:P354_MONTO_EXENTA,',
'P_MENSAJE_ERROR=>:P0_MENSAJE_VALIDACION,',
'P_CAB_TIP_CAMBIO=>:P354_TIP_CAMBIO,',
'P_COD_EMPRESA=>:P354_COD_EMPRESA,',
'P_COD_FLETE=>:P354_COD_FLETE,',
'P_CAB_FLETE_TOTAL=>:P354_FLETE_TOTAL,',
'P_DET_TOTAL_PESO=>:P354_TOTAL_PESO,',
'P_DET_TOTAL_VOLUMEN=>:P354_TOTAL_VOLUMEN);',
'END;',
''))
,p_attribute_02=>'P354_DECIMALES,P354_VAR_MULT,P354_VAR_DIV,P354_PORC_IVA_1,P354_PRECIO_UNITARIO,P354_CANTIDAD,P354_PORC_DESCUENTO, P354_PORC_RECARGO,P354_DESCUENTO,P354_MONTO_TOTAL,P354_RECARGO_1,P354_PORC_IVA,P354_COD_ARTICULO, P354_RECARGO,P354_TOTAL_IVA_1,P354_IVA'
||'_PARCIAL,P354_IVA_ANT,P354_SUBTOTAL_PARCIAL,P354_IMPORTE_ANT, P354_GRAVADAS_PARCIAL,P354_EXENTAS_PARCIAL,P354_PORCENTAJE_DESCUENTO,P354_DESCUENTO,P354_TOTAL_IVA, P354_SUBTOTAL,P354_GRAVADAS,P354_EXENTAS,P354_TOTAL,P354_RECARGO_PORC,P354_MONTO_GRAVADA'
||'_10,P354_MONTO_GRAVADA_5, P354_MONTO_EXENTA,P354_TIP_CAMBIO,P354_COD_EMPRESA,P354_COD_FLETE,P354_TOTAL_PESO,P354_VOLUMEN,P354_DESCUENTO_1'
,p_attribute_03=>'P0_MENSAJE_VALIDACION,P354_VAR_MULT,P354_VAR_DIV,P354_CANTIDAD_UB,P354_RECARGO_1,P354_TOTAL_IVA_1, P354_IVA_PARCIAL,P354_IVA_ANT,P354_SUBTOTAL_PARCIAL,P354_IMPORTE_ANT,P354_GRAVADAS_PARCIAL, P354_EXENTAS_PARCIAL,P354_PORCENTAJE_DESCUENTO,P354_GRAVADA'
||'S,P354_EXENTAS,P354_RECARGO_PORC,P354_MONTO_GRAVADA_5,P354_MONTO_GRAVADA_10,P354_MONTO_EXENTA, P354_FLETE_TOTAL,P354_PORC_RECARGO_ANT,P354_MONTO_TOTAL,P354_DESCUENTO_1,P354_PORC_DESCUENTO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(137000558001087907)
,p_event_id=>wwv_flow_imp.id(136999957862087901)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P354_COD_MONEDA = ''1'' THEN',
'    :P354_MONTO_TOTAL := TO_NUMBER(REPLACE(:P354_MONTO_TOTAL,''.''));',
'    :P354_TOTAL_IVA_1 := TO_NUMBER(REPLACE(:P354_TOTAL_IVA_1,''.''));',
'    :P354_CANTIDAD := TO_NUMBER(REPLACE(:P354_CANTIDAD,''.''));',
'    :P354_PORC_DESCUENTO := TO_NUMBER(REPLACE(:P354_PORC_DESCUENTO,''.''));',
'    :P354_PORC_RECARGO := TO_NUMBER(REPLACE(:P354_PORC_RECARGO,''.''));',
'    ',
'',
'    :P354_PRECIO_UNITARIO := TO_CHAR(:P354_PRECIO_UNITARIO , ''999G999G999G999G999G999G990'');',
'END IF;'))
,p_attribute_02=>'P354_COD_MONEDA,P354_MONTO_TOTAL,P354_TOTAL_IVA_1,P354_CANTIDAD,P354_PORC_DESCUENTO,P354_PORC_RECARGO'
,p_attribute_03=>'P354_PRECIO_UNITARIO'
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
 p_id=>wwv_flow_imp.id(137000621359087908)
,p_event_id=>wwv_flow_imp.id(136999957862087901)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P354_COD_MONEDA  = ''1'' THEN ',
':P354_TOTAL_IVA:=replace(:P354_TOTAL_IVA,''.'');:P354_SUBTOTAL:=replace(:P354_SUBTOTAL,''.'');',
':P354_TOTAL:=replace(:P354_TOTAL,''.'');:P354_PRECIO_UNITARIO:=replace(:P354_PRECIO_UNITARIO,''.'');',
':P354_TOTAL_IVA_1:=replace(:P354_TOTAL_IVA_1,''.'');:P354_MONTO_TOTAL:=replace(:P354_MONTO_TOTAL,''.'');',
'DECLARE',
'V_PORC_RECARGO_ANT NUMBER;V_CARGA_PORC_RECARGO VARCHAR2(100);',
'BEGIN',
'INV.vtpresupuesto.PR_CALCULA_RECARGO(P_DET_PORC_RECARGO_ANT=>V_PORC_RECARGO_ANT,P_DET_CARGA_PORC_RECARGO=>V_CARGA_PORC_RECARGO,P_CAB_DECIMALES=>:P354_DECIMALES,',
'P_MENSAJE_ERROR=>:P0_MENSAJE_VALIDACION,',
'P_VAR_MULT=>:P354_VAR_MULT,P_VAR_DIV=>:P354_VAR_DIV,',
'P_DET_PORC_IVA=>:P354_PORC_IVA_1,P_DET_PRECIO_UNITARIO=>:P354_PRECIO_UNITARIO,',
'P_DET_CANTIDAD_UB=>:P354_CANTIDAD_UB,P_DET_CANTIDAD=>:P354_CANTIDAD,',
'P_DET_PORC_DESCUENTO=>:P354_PORC_DESCUENTO,P_DET_PORC_RECARGO=>:P354_PORC_RECARGO,',
'P_DET_DESCUENTO=>:P354_DESCUENTO_1,P_DET_MONTO_TOTAL=>:P354_MONTO_TOTAL,',
'P_DET_RECARGO=>:P354_RECARGO_1,P_VAR_PORC_IVA=>:P354_PORC_IVA,P_DET_COD_ARTICULO=>:P354_COD_ARTICULO,P_VAR_RECARGO=>:P354_RECARGO,',
'P_DET_TOTAL_IVA=>:P354_TOTAL_IVA,P_CAB_IVA_PARCIAL=>:P354_IVA_PARCIAL,',
'P_DET_IVA_ANT=>:P354_IVA_ANT,P_CAB_SUBTOTAL_PARCIAL=>:P354_SUBTOTAL_PARCIAL,P_DET_IMPORTE_ANT=>:P354_IMPORTE_ANT,P_CAB_GRAVADAS_PARCIAL=>:P354_GRAVADAS_PARCIAL,',
'P_CAB_EXENTAS_PARCIAL=>:P354_EXENTAS_PARCIAL,P_CAB_PORCENTAJE_DESCUENTO=>:P354_PORCENTAJE_DESCUENTO,',
'P_CAB_DESCUENTO=>:P354_DESCUENTO,P_CAB_TOTAL_IVA=>:P354_TOTAL_IVA,P_CAB_SUBTOTAL=>:P354_SUBTOTAL,',
'P_CAB_GRAVADAS=>:P354_GRAVADAS,P_CAB_EXENTAS=>:P354_EXENTAS,P_CAB_TOTAL=>:P354_TOTAL,P_CAB_RECARGO_PORC=>:P354_RECARGO_PORC,',
'P_CAB_RECARGO=>:P354_RECARGO,P_DET_MONTO_GRAVADA_10=>:P354_MONTO_GRAVADA_10,P_DET_MONTO_GRAVADA_5=>:P354_MONTO_GRAVADA_5,P_DET_MONTO_EXENTA=>:P354_MONTO_EXENTA,',
'P_CAB_TIP_CAMBIO=>:P354_TIP_CAMBIO,P_COD_EMPRESA=>:P354_COD_EMPRESA,P_COD_FLETE=>:P354_COD_FLETE,P_CAB_FLETE_TOTAL=>:P354_FLETE_TOTAL,',
'P_DET_TOTAL_PESO=>:P354_TOTAL_PESO,P_DET_TOTAL_VOLUMEN=>:P354_VOLUMEN,P_VAR_PORC_RECARGO_ANT=>:P354_PORC_RECARGO_ANT);',
'INV.vtpresupuesto.PR_CALCULOS(P_VAR_MULT=>:P354_VAR_MULT,P_VAR_DIV=>:P354_VAR_DIV,',
'P_DET_PORC_IVA=>:P354_PORC_IVA_1,P_DET_PRECIO_UNITARIO=>:P354_PRECIO_UNITARIO,P_CAB_DECIMALES=>:P354_DECIMALES,',
'P_DET_CANTIDAD_UB=>:P354_CANTIDAD_UB,P_DET_CANTIDAD=>:P354_CANTIDAD,P_DET_PORC_DESCUENTO=>:P354_PORC_DESCUENTO,',
'P_DET_PORC_RECARGO=>:P354_PORC_RECARGO,P_DET_DESCUENTO=>:P354_DESCUENTO_1,',
'P_DET_MONTO_TOTAL=>:P354_MONTO_TOTAL,P_DET_RECARGO=>:P354_RECARGO_1,P_VAR_PORC_IVA=>:P354_PORC_IVA,',
'P_DET_COD_ARTICULO=>:P354_COD_ARTICULO,P_VAR_RECARGO=>:P354_RECARGO,',
'P_DET_TOTAL_IVA=>:P354_TOTAL_IVA_1,P_CAB_IVA_PARCIAL=>:P354_IVA_PARCIAL,',
'P_DET_IVA_ANT=>:P354_IVA_ANT,P_CAB_SUBTOTAL_PARCIAL=>:P354_SUBTOTAL_PARCIAL,',
'P_DET_IMPORTE_ANT=>:P354_IMPORTE_ANT,P_CAB_GRAVADAS_PARCIAL=>:P354_GRAVADAS_PARCIAL,',
'P_CAB_EXENTAS_PARCIAL=>:P354_EXENTAS_PARCIAL,P_CAB_PORCENTAJE_DESCUENTO=>:P354_PORCENTAJE_DESCUENTO,',
'P_CAB_DESCUENTO=>:P354_DESCUENTO,P_CAB_TOTAL_IVA=>:P354_TOTAL_IVA,',
'P_CAB_SUBTOTAL=>:P354_SUBTOTAL,P_CAB_GRAVADAS=>:P354_GRAVADAS,P_CAB_EXENTAS=>:P354_EXENTAS,',
'P_CAB_TOTAL=>:P354_TOTAL,P_CAB_RECARGO_PORC=>:P354_RECARGO_PORC,P_CAB_RECARGO=>:P354_RECARGO,P_DET_MONTO_GRAVADA_10=>:P354_MONTO_GRAVADA_10,',
'P_DET_MONTO_GRAVADA_5=>:P354_MONTO_GRAVADA_5,',
'P_DET_MONTO_EXENTA=>:P354_MONTO_EXENTA,',
'P_MENSAJE_ERROR=>:P0_MENSAJE_VALIDACION,',
'P_CAB_TIP_CAMBIO=>:P354_TIP_CAMBIO,',
'P_COD_EMPRESA=>:P354_COD_EMPRESA,',
'P_COD_FLETE=>:P354_COD_FLETE,',
'P_CAB_FLETE_TOTAL=>:P354_FLETE_TOTAL,',
'P_DET_TOTAL_PESO=>:P354_TOTAL_PESO,',
'P_DET_TOTAL_VOLUMEN=>:P354_TOTAL_VOLUMEN);',
'END;',
'END  IF;',
''))
,p_attribute_02=>'P354_DECIMALES,P354_VAR_MULT,P354_VAR_DIV,P354_PORC_IVA_1,P354_PRECIO_UNITARIO,P354_CANTIDAD,P354_PORC_DESCUENTO, P354_PORC_RECARGO,P354_DESCUENTO,P354_MONTO_TOTAL,P354_RECARGO_1,P354_PORC_IVA,P354_COD_ARTICULO, P354_RECARGO,P354_TOTAL_IVA_1,P354_IVA'
||'_PARCIAL,P354_IVA_ANT,P354_SUBTOTAL_PARCIAL,P354_IMPORTE_ANT, P354_GRAVADAS_PARCIAL,P354_EXENTAS_PARCIAL,P354_PORCENTAJE_DESCUENTO,P354_DESCUENTO,P354_TOTAL_IVA, P354_SUBTOTAL,P354_GRAVADAS,P354_EXENTAS,P354_TOTAL,P354_RECARGO_PORC,P354_MONTO_GRAVADA'
||'_10,P354_MONTO_GRAVADA_5, P354_MONTO_EXENTA,P354_TIP_CAMBIO,P354_COD_EMPRESA,P354_COD_FLETE,P354_TOTAL_PESO,P354_VOLUMEN,P354_DESCUENTO_1,P354_COD_MONEDA'
,p_attribute_03=>'P0_MENSAJE_VALIDACION,P354_VAR_MULT,P354_VAR_DIV,P354_CANTIDAD_UB,P354_RECARGO_1,P354_TOTAL_IVA_1, P354_IVA_PARCIAL,P354_IVA_ANT,P354_SUBTOTAL_PARCIAL,P354_IMPORTE_ANT,P354_GRAVADAS_PARCIAL, P354_EXENTAS_PARCIAL,P354_PORCENTAJE_DESCUENTO,P354_GRAVADA'
||'S,P354_EXENTAS,P354_RECARGO_PORC,P354_MONTO_GRAVADA_5,P354_MONTO_GRAVADA_10,P354_MONTO_EXENTA, P354_FLETE_TOTAL,P354_PORC_RECARGO_ANT,P354_MONTO_TOTAL,P354_DESCUENTO_1,P354_PORC_DESCUENTO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(137000743118087909)
,p_event_id=>wwv_flow_imp.id(136999957862087901)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'INV.vtpresupuesto.PR_PED_PEND(P_DET_STOCK_ACTUAL => :P354_STOCK_ACTUAL,',
'               P_VAR_COD_EMPRESA  => :P354_COD_EMPRESA,',
'               P_DET_COD_ARTICULO => :P354_COD_ARTICULO,',
'               P_DET_STOCK_RESERV => :P354_STOCK_RESERV);',
'',
'IF :P354_COD_SUCURSAL IN (''09'', ''105'', ''95'', ''30'') THEN',
'BEGIN',
'SELECT DESCUENTO',
'INTO :P354_PORC_DESCUENTO',
'FROM VT_OFERTAS_OUTLET',
'WHERE COD_EMPRESA = :P354_COD_EMPRESA',
'AND COD_ARTICULO = :P354_COD_ARTICULO',
'AND FEC_CIERRE >= :P354_FEC_COMPROBANTE',
'AND FEC_ALTA <= :P354_FEC_COMPROBANTE',
'AND COD_ARTICULO = :P354_COD_ARTICULO',
'AND :P354_COD_SUCURSAL IN (''09'', ''105'', ''95'', ''30'');',
'EXCEPTION',
'WHEN OTHERS THEN',
':P354_PORC_DESCUENTO := 30;',
'END;',
'END IF;',
' ',
'',
''))
,p_attribute_02=>'P354_COD_EMPRESA,P354_COD_ARTICULO,P354_COD_SUCURSAL,P354_FEC_COMPROBANTE'
,p_attribute_03=>'P354_STOCK_ACTUAL,P354_STOCK_RESERV,P354_COD_SUCURSAL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(137000828925087910)
,p_event_id=>wwv_flow_imp.id(136999957862087901)
,p_event_result=>'TRUE'
,p_action_sequence=>90
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P354_TOTAL_IVA := replace(:P354_TOTAL_IVA,''.'');',
':P354_SUBTOTAL := replace(:P354_SUBTOTAL,''.'');',
':P354_TOTAL   := replace(:P354_TOTAL,''.'');',
':P354_PRECIO_UNITARIO  := replace(:P354_PRECIO_UNITARIO,''.'');',
':P354_TOTAL_IVA_1 := replace(:P354_TOTAL_IVA_1,''.'');',
':P354_MONTO_TOTAL := replace(:P354_MONTO_TOTAL,''.'');',
'',
':P354_DESCUENTO_1 := round((nvl(:P354_CANTIDAD, 0) *',
'                           (nvl(:P354_PRECIO_UNITARIO, 0)) *',
'                           (nvl(:P354_PORC_DESCUENTO, 0) / 100)),',
'                           nvl(:P354_DECIMALES, 0));',
'IF :P354_COD_MONEDA = ''1'' THEN ',
'    :P354_PRECIO_UNITARIO  := TO_CHAR(:P354_PRECIO_UNITARIO,''999G999G999G999G999G999G990'');',
'    :P354_TOTAL_IVA_1 := TO_CHAR(:P354_TOTAL_IVA_1,''999G999G999G999G999G999G990'');',
'    :P354_MONTO_TOTAL := TO_CHAR(:P354_MONTO_TOTAL,''999G999G999G999G999G999G990'');',
'    :P354_TOTAL_IVA := TO_CHAR(:P354_TOTAL_IVA,''999G999G999G999G999G999G990'');',
'    :P354_SUBTOTAL := TO_CHAR(:P354_SUBTOTAL,''999G999G999G999G999G999G990'');',
'    :P354_TOTAL   := TO_CHAR(:P354_TOTAL,''999G999G999G999G999G999G990'');',
'ELSE ',
'    :P354_PRECIO_UNITARIO  := TO_CHAR(:P354_PRECIO_UNITARIO,''999G999G999G999G990D00'');',
'    :P354_TOTAL_IVA_1 := TO_CHAR(:P354_TOTAL_IVA_1,''999G999G999G999G990D00'');',
'    :P354_MONTO_TOTAL := TO_CHAR(:P354_MONTO_TOTAL,''999G999G999G999G990D00'');',
'    :P354_TOTAL_IVA := TO_CHAR(:P354_TOTAL_IVA,''999G999G999G999G990D00'');',
'    :P354_SUBTOTAL := TO_CHAR(:P354_SUBTOTAL,''999G999G999G999G990D00'');',
'    :P354_TOTAL   := TO_CHAR(:P354_TOTAL,''999G999G999G999G990D00'');',
'END IF;',
''))
,p_attribute_02=>'P354_TOTAL_IVA,P354_SUBTOTAL,P354_TOTAL,P354_PRECIO_UNITARIO,P354_TOTAL_IVA_1,P354_MONTO_TOTAL,P354_CANTIDAD,P354_PORC_DESCUENTO,P354_DECIMALES,P354_COD_MONEDA'
,p_attribute_03=>'P354_TOTAL_IVA,P354_SUBTOTAL,P354_TOTAL,P354_PRECIO_UNITARIO,P354_TOTAL_IVA_1,P354_MONTO_TOTAL,P354_DESCUENTO_1'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(137000962487087911)
,p_event_id=>wwv_flow_imp.id(136999957862087901)
,p_event_result=>'TRUE'
,p_action_sequence=>100
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P354_AGREGAR_DETALLES_1'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_02=>'1'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(137001096814087912)
,p_event_id=>wwv_flow_imp.id(136999957862087901)
,p_event_result=>'TRUE'
,p_action_sequence=>110
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P354_CARGA_DETALLE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(97244530074855713)
,p_name=>'Validaciones columna precio unitario_1'
,p_event_sequence=>310
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P354_PRECIO_UNITARIO'
,p_bind_type=>'bind'
,p_bind_event_type=>'focusout'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(97245050994855714)
,p_event_id=>wwv_flow_imp.id(97244530074855713)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    VPRECIO NUMBER(18, 3);',
'  BEGIN',
'    IF :P354_MODIFICA_PRECIO <> ''N'' THEN',
'      IF NVL(:P354_VARIACION_MENOS, 0) > 0 AND NVL(:P354_PRECIO_LISTA, 0) > 0 THEN',
'        IF ROUND(:P354_PRECIO_LISTA -',
'                 (:P354_PRECIO_LISTA * :P354_VARIACION_MENOS / 100),',
'                 :P354_DECIMALES) > :P354_PRECIO_UNITARIO THEN',
unistr('          :P0_MENSAJE_VALIDACION := ''Variaci\00F3n de precio en menos supera al permitido.'';'),
'          RETURN;',
'        END IF;',
'      END IF;',
'    ',
'      IF NVL(:P354_VARIACION_MENOS, 0) > 0 AND NVL(:P354_PRECIO_LISTA, 0) > 0 THEN',
'        IF ROUND(:P354_PRECIO_LISTA +',
'                 (:P354_PRECIO_LISTA * :P354_VARIACION_MENOS / 100),',
'                 :P354_DECIMALES) < :P354_PRECIO_UNITARIO THEN',
unistr('          :P0_MENSAJE_VALIDACION := ''Variaci\00F3n de precio en m\00E1s supera al permitido.'';'),
'          RETURN;',
'        END IF;',
'      END IF;',
'    END IF;',
'  END;',
'',
'  IF NVL(:P354_DESCUENTO_1, 0) > 0 THEN',
'    :P354_DESCUENTO_1 := 0;',
'  END IF;',
'',
'  IF NVL(:P354_RECARGO_1, 0) > 0 THEN',
'    :P354_RECARGO_1 := 0;',
'  END IF;',
'',
'  IF :P354_CONTROL_FIN IS NULL THEN',
'    IF :P354_COD_ARTICULO = :P354_RECARGO THEN',
'      :P354_PRECIO_UNITARIO  := NVL(:P354_RECARGO_PORC, 0);',
'      :P354_CONTROL_FIN := ''S'';',
'      :P354_PORC_DESCUENTO   := 0;',
'      :P354_PORC_RECARGO     := 0;',
'    END IF;',
'  ',
'    IF :P354_COD_ARTICULO = ''DESC.GASTRO'' THEN',
'      :P354_CONTROL_FIN_3 := ''S'';',
'      :P354_PORC_DESCUENTO     := 0;',
'      :P354_PORC_RECARGO       := 0;',
'    END IF;',
'  ELSE',
'    IF :P354_COD_ARTICULO IS NOT NULL THEN',
'      :P354_PORC_DESCUENTO := 0;',
'      :P354_PORC_RECARGO   := 0;',
'    END IF;',
'  END IF;',
'',
'  DECLARE',
'    V_PORC_DESCUENTO_ANT   NUMBER;',
'    V_CARGA_PORC_DESCUENTO VARCHAR2(100);',
'  ',
'  BEGIN',
'    INV.vtpresupuesto.PR_CALCULA_DESCUENTO(P_DET_PORC_DESCUENTO_ANT   => V_PORC_DESCUENTO_ANT,',
'                                      P_PORC_DESCUENTO           => :P354_PORC_DESCUENTO,',
'                                      P_DESCUENTO                => :P354_DESCUENTO,',
'                                      P_DET_CARGA_PORC_DESCUENTO => :P354_CARGA_PORC_RECARGO,',
'                                      P_DET_CANTIDAD             => :P354_CANTIDAD,',
'                                      P_DET_PRECIO_UNITARIO      => :P354_PRECIO_UNITARIO,',
'                                      P_DECIMALES                => :P354_DECIMALES,',
'                                      P_DET_NRO_PROMO            => :P354_IND_PROMO,',
'                                      P_PORC_DESCUENTO_ANT       => V_PORC_DESCUENTO_ANT,',
'                                      P_RECARGO                  => :P354_RECARGO);',
'  END;'))
,p_attribute_02=>'P354_MODIFICA_PRECIO,P354_VARIACION_MENOS,P354_PRECIO_LISTA,P354_DECIMALES,P354_PRECIO_UNITARIO, P354-P354_DESCUENTO_1,P354_RECARGO_1,P354_CONTROL_FIN,P354_COD_ARTICULO,P354_RECARGO,P354_RECARGO_PORC, P354_PORC_DESCUENTO,P354_DESCUENTO,P354_NRO_PROMO'
||'_1'
,p_attribute_03=>'P0_MENSAJE_VALIDACION,P354_DESCUENTO_1,P354_RECARGO_1,P354_PRECIO_UNITARIO,P354_CONTROL_FIN,P354_PORC_DESCUENTO, P354_PORC_RECARGO,P354_RECARGO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(97245594737855714)
,p_event_id=>wwv_flow_imp.id(97244530074855713)
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
':P354_TOTAL_IVA := replace(:P354_TOTAL_IVA,''.'');',
':P354_SUBTOTAL := replace(:P354_SUBTOTAL,''.'');',
':P354_TOTAL   := replace(:P354_TOTAL,''.'');',
':P354_PRECIO_UNITARIO  := replace(:P354_PRECIO_UNITARIO,''.'');',
':P354_TOTAL_IVA_1 := replace(:P354_TOTAL_IVA_1,''.'');',
':P354_MONTO_TOTAL := replace(:P354_MONTO_TOTAL,''.'');',
'',
'INV.vtpresupuesto.PR_CALCULA_RECARGO(P_DET_PORC_RECARGO_ANT     => V_PORC_RECARGO_ANT,',
'P_DET_CARGA_PORC_RECARGO => V_CARGA_PORC_RECARGO,',
'P_CAB_DECIMALES => :P354_DECIMALES,',
'P_MENSAJE_ERROR  => :P0_MENSAJE_VALIDACION,',
'P_VAR_MULT  => :P354_VAR_MULT,',
'P_VAR_DIV => :P354_VAR_DIV,',
'P_DET_PORC_IVA => :P354_PORC_IVA_1,',
'P_DET_PRECIO_UNITARIO => :P354_PRECIO_UNITARIO,',
'P_DET_CANTIDAD_UB => :P354_CANTIDAD_UB,',
'P_DET_CANTIDAD => :P354_CANTIDAD,',
'P_DET_PORC_DESCUENTO=> :P354_PORC_DESCUENTO,',
'P_DET_PORC_RECARGO => :P354_PORC_RECARGO,',
'P_DET_DESCUENTO => :P354_DESCUENTO_1,',
'P_DET_MONTO_TOTAL => :P354_MONTO_TOTAL,',
'P_DET_RECARGO => :P354_RECARGO_1,',
'P_VAR_PORC_IVA => :P354_PORC_IVA,',
'P_DET_COD_ARTICULO => :P354_COD_ARTICULO,',
'P_VAR_RECARGO   => :P354_RECARGO,',
'P_DET_TOTAL_IVA  => :P354_TOTAL_IVA_1,',
'P_CAB_IVA_PARCIAL => :P354_IVA_PARCIAL,',
'P_DET_IVA_ANT   => :P354_IVA_ANT,',
'P_CAB_SUBTOTAL_PARCIAL => :P354_SUBTOTAL_PARCIAL,',
'P_DET_IMPORTE_ANT     => :P354_IMPORTE_ANT,',
'P_CAB_GRAVADAS_PARCIAL => :P354_GRAVADAS_PARCIAL,',
'P_CAB_EXENTAS_PARCIAL  => :P354_EXENTAS_PARCIAL,',
'P_CAB_PORCENTAJE_DESCUENTO => :P354_PORCENTAJE_DESCUENTO,',
'P_CAB_DESCUENTO => :P354_DESCUENTO,',
'P_CAB_TOTAL_IVA => :P354_TOTAL_IVA,',
'P_CAB_SUBTOTAL => :P354_SUBTOTAL,',
'P_CAB_GRAVADAS => :P354_GRAVADAS,',
'P_CAB_EXENTAS => :P354_EXENTAS,',
'P_CAB_TOTAL => :P354_TOTAL,',
'P_CAB_RECARGO_PORC => :P354_RECARGO_PORC,',
'P_CAB_RECARGO => :P354_RECARGO,',
'P_DET_MONTO_GRAVADA_10 => :P354_MONTO_GRAVADA_10,',
'P_DET_MONTO_GRAVADA_5 => :P354_MONTO_GRAVADA_5,',
'P_DET_MONTO_EXENTA => :P354_MONTO_EXENTA,',
'P_CAB_TIP_CAMBIO => :P354_TIP_CAMBIO,',
'P_COD_EMPRESA => :P354_COD_EMPRESA,',
'P_COD_FLETE => :P354_COD_FLETE,',
'P_CAB_FLETE_TOTAL => :P354_FLETE_TOTAL,',
'P_DET_TOTAL_PESO => :P354_TOTAL_PESO,',
'P_DET_TOTAL_VOLUMEN => :P354_TOTAL_VOLUMEN,',
'P_VAR_PORC_RECARGO_ANT => :P354_PORC_RECARGO_ANT);',
'END;'))
,p_attribute_02=>'P354_DECIMALES,P354_VAR_MULT,P354_VAR_DIV,P354_PORC_IVA_1,P354_PRECIO_UNITARIO,P354_CANTIDAD, P354_PORC_DESCUENTO,P354_PORC_RECARGO,P354_DESCUENTO_1,P354_MONTO_TOTAL,P354_RECARGO_1,P354_PORC_IVA, P354_COD_ARTICULO,P354_RECARGO,P354_TOTAL_IVA_1,P354_I'
||'VA_PARCIAL,P354_IVA_ANT,P354_SUBTOTAL_PARCIAL, P354_IMPORTE_ANT,P354_GRAVADAS_PARCIAL,P354_EXENTAS_PARCIAL,P354_PORCENTAJE_DESCUENTO,P354_DESCUENTO, P354_TOTAL_IVA,P354_SUBTOTAL,P354_GRAVADAS,P354_EXENTAS,P354_TOTAL,P354_RECARGO_PORC,P354_MONTO_GRAVA'
||'DA_10, P354_MONTO_GRAVADA_5,P354_MONTO_EXENTA,P354_TIP_CAMBIO,P354_COD_EMPRESA,P354_COD_FLETE, P354_TOTAL_PESO,P354_TOTAL_VOLUMEN'
,p_attribute_03=>'P354_MONTO_TOTAL,P0_MENSAJE_VALIDACION,P354_VAR_MULT,P354_VAR_DIV,P354_CANTIDAD_UB,P354_RECARGO_1,   P354_TOTAL_IVA_1,P354_IVA_PARCIAL,P354_IVA_ANT,P354_SUBTOTAL_PARCIAL,P354_IMPORTE_ANT,   P354_GRAVADAS_PARCIAL,P354_EXENTAS_PARCIAL,P354_PORCENTAJE_D'
||'ESCUENTO,P354_GRAVADAS,P354_EXENTAS,   P354_RECARGO_PORC,P354_MONTO_GRAVADA_5,P354_MONTO_GRAVADA_10,P354_MONTO_EXENTA,P354_FLETE_TOTAL,   P354_PORC_RECARGO_ANT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(97246045122855714)
,p_event_id=>wwv_flow_imp.id(97244530074855713)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P354_TOTAL_IVA := replace(:P354_TOTAL_IVA,''.'');',
':P354_SUBTOTAL := replace(:P354_SUBTOTAL,''.'');',
':P354_TOTAL   := replace(:P354_TOTAL,''.'');',
':P354_PRECIO_UNITARIO  := replace(:P354_PRECIO_UNITARIO,''.'');',
':P354_TOTAL_IVA_1 := replace(:P354_TOTAL_IVA_1,''.'');',
':P354_MONTO_TOTAL := replace(:P354_MONTO_TOTAL,''.'');',
'',
':P354_DESCUENTO_1 := round((nvl(:P354_CANTIDAD, 0) *',
'                           (nvl(:P354_PRECIO_UNITARIO, 0)) *',
'                           (nvl(:P354_PORC_DESCUENTO, 0) / 100)),',
'                           nvl(:P354_DECIMALES, 0));',
'IF :P354_COD_MONEDA = ''1'' THEN ',
'    :P354_PRECIO_UNITARIO  := TO_CHAR(:P354_PRECIO_UNITARIO,''999G999G999G999G999G999G990'');',
'    :P354_TOTAL_IVA_1 := TO_CHAR(:P354_TOTAL_IVA_1,''999G999G999G999G999G999G990'');',
'    :P354_MONTO_TOTAL := TO_CHAR(:P354_MONTO_TOTAL,''999G999G999G999G999G999G990'');',
'    :P354_TOTAL_IVA := TO_CHAR(:P354_TOTAL_IVA,''999G999G999G999G999G999G990'');',
'    :P354_SUBTOTAL := TO_CHAR(:P354_SUBTOTAL,''999G999G999G999G999G999G990'');',
'    :P354_TOTAL   := TO_CHAR(:P354_TOTAL,''999G999G999G999G999G999G990'');',
'ELSE ',
'    :P354_PRECIO_UNITARIO  := TO_CHAR(:P354_PRECIO_UNITARIO,''999G999G999G999G990D00'');',
'    :P354_TOTAL_IVA_1 := TO_CHAR(:P354_TOTAL_IVA_1,''999G999G999G999G990D00'');',
'    :P354_MONTO_TOTAL := TO_CHAR(:P354_MONTO_TOTAL,''999G999G999G999G990D00'');',
'    :P354_TOTAL_IVA := TO_CHAR(:P354_TOTAL_IVA,''999G999G999G999G990D00'');',
'    :P354_SUBTOTAL := TO_CHAR(:P354_SUBTOTAL,''999G999G999G999G990D00'');',
'    :P354_TOTAL   := TO_CHAR(:P354_TOTAL,''999G999G999G999G990D00'');',
'END IF;',
''))
,p_attribute_02=>'P354_TOTAL_IVA,P354_SUBTOTAL,P354_TOTAL,P354_PRECIO_UNITARIO,P354_TOTAL_IVA_1,P354_MONTO_TOTAL,P354_CANTIDAD,P354_PORC_DESCUENTO,P354_DECIMALES,P354_COD_MONEDA'
,p_attribute_03=>'P354_TOTAL_IVA,P354_SUBTOTAL,P354_TOTAL,P354_PRECIO_UNITARIO,P354_TOTAL_IVA_1,P354_MONTO_TOTAL,P354_DESCUENTO_1'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(137001360114087915)
,p_name=>'Valida porcentaje descuento_1'
,p_event_sequence=>330
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P354_PORC_DESCUENTO'
,p_condition_element=>'P354_PORC_DESCUENTO'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'focusout'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(137001406139087916)
,p_event_id=>wwv_flow_imp.id(137001360114087915)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if nvl(:P354_ES_PROMO,''N'')=''S'' and :P354_NRO_PROMO_1 is not null then',
'  inv.vtpresupuesto.pr_act_promo;',
'end if; '))
,p_attribute_02=>'P354_ES_PROMO,P354_NRO_PROMO_1'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(137001560216087917)
,p_event_id=>wwv_flow_imp.id(137001360114087915)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P354_PORC_DESCUENTO IS NULL THEN ',
'    :P354_PORC_DESCUENTO := ''0,00'';',
'END IF;'))
,p_attribute_02=>'P354_PORC_DESCUENTO'
,p_attribute_03=>'P354_PORC_DESCUENTO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(137001682476087918)
,p_event_id=>wwv_flow_imp.id(137001360114087915)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if nvl(:P354_ES_PROMO_1,''N'')=''N'' then',
'		inv.vtpresupuesto.pr_calc_promo(p_det_porc_descuento  => :P354_PORC_DESCUENTO,',
'                                    p_det_cod_art_corto  => :P354_COD_ART_CORTO,',
'                                    p_det_nro_promo      => :P354_NRO_PROMO_1,',
'                                    p_mensaje_error      => :P0_MENSAJE_VALIDACION,',
'                                    p_var_cod_art_aux    => :P354_COD_ART_AUX,',
'                                    p_det_es_promo       => :P354_ES_PROMO_1,',
'                                    p_cab_cant_aux       => :P354_CANT_AUX,',
'                                    p_det_cantidad       => :P354_CANTIDAD,',
'                                    p_det_cod_articulo   => :P354_COD_ARTICULO,',
'                                    p_var_cod_empresa    => :P354_COD_EMPRESA,',
'                                    p_det_cod_lista_precio => :P354_COD_LISTA_PRECIO,',
'                                    p_cod_cliente          => :P354_COD_CLIENTE,',
'                                    p_cod_condicion_venta   =>  :P354_COD_CONDICION_VENTA);',
'else',
'	NULL;',
'end if;',
''))
,p_attribute_02=>'P354_ES_PROMO_1,P354_PORC_DESCUENTO,P354_COD_ART_CORTO,P354_NRO_PROMO_1,P354_COD_ART_AUX,   P354_CANTIDAD,P354_COD_ARTICULO,P354_COD_EMPRESA,P354_COD_LISTA_PRECIO,P354_COD_CLIENTE,P354_COD_CONDICION_VENTA'
,p_attribute_03=>'P0_MENSAJE_VALIDACION,P354_ES_PROMO_1,P354_CANT_AUX,P354_PORC_DESCUENTO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(137001724016087919)
,p_event_id=>wwv_flow_imp.id(137001360114087915)
,p_event_result=>'TRUE'
,p_action_sequence=>30
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
':P354_TOTAL_IVA:=replace(:P354_TOTAL_IVA,''.'');',
':P354_SUBTOTAL:=replace(:P354_SUBTOTAL,''.'');',
':P354_TOTAL:=replace(:P354_TOTAL,''.'');',
':P354_PRECIO_UNITARIO:=replace(:P354_PRECIO_UNITARIO,''.'');',
':P354_TOTAL_IVA_1:=replace(:P354_TOTAL_IVA_1,''.'');',
':P354_MONTO_TOTAL:=replace(:P354_MONTO_TOTAL,''.'');',
'inv.vtpresupuesto.pr_validaciones_descuentos(p_det_porc_descuento=>:P354_PORC_DESCUENTO,',
'p_mensaje_error=>:P0_MENSAJE_VALIDACION,',
'p_var_cod_empresa=>:P354_COD_EMPRESA,',
'p_det_cod_articulo=>:P354_COD_ARTICULO,',
'p_cab_fec_comprobante=>:P354_FEC_COMPROBANTE,',
'p_cab_cod_sucursal=>:P354_COD_SUCURSAL,',
'p_var_descuento_30=>:P354_DESCUENTO_30,',
'p_var_descuento_307=>:P354_DESCUENTO_307,',
'p_cab_cod_vendedor=>:P354_COD_VENDEDOR,',
'p_det_articulo_par=>:P354_ARTICULO_PAR,',
'p_det_ind_promo=>:P354_IND_PROMO,',
'p_det_nro_promo=>:P354_NRO_PROMO_1,',
'p_cab_cod_cliente=>:P354_COD_CLIENTE,',
'p_cab_cod_condicion_venta=>:P354_COD_CONDICION_VENTA,',
'p_cab_cod_lista_precio=>:P354_COD_LISTA_PRECIO,',
'p_det_cantidad=>:P354_CANTIDAD,',
'p_det_ind_promo_descuento=>V_IND_PROMO_DESCUENTO,',
'p_det_cod_art_corto=>:P354_COD_ART_CORTO,',
'p_cod_art_aux=>:P354_COD_ART_AUX,',
'p_det_ind_no_descuento=>:P354_IND_NO_DESCUENTO,',
'p_var_supera_descuento=>:P354_SUPERA_DESCUENTO,',
'p_det_ser_pedido_promo_ant=>:P354_SER_PEDIDO_PROMO_ANT,',
'p_det_nro_pedido_promo_ant=>:P354_SER_NRO_PROMO_ANT,',
'p_det_cod_articulo_promo_ant=>:P354_COD_ARTICULO_PROMO_ANT,',
'p_d_nro_pedido_orden_promo_ant=>V_NRO_PEDIDO_ANT,',
'p_cab_nro_comprobante=>:P354_NRO_COMPROBANTE,',
'p_var_agrega_promocion=>:P354_AGREGA_PROMOCION,',
'p_det_cod_lista_precio=>:P354_COD_LISTA_PRECIO,',
'p_det_porc_descuento_ant=>V_PORC_DESCUENTO_ANT,',
'p_det_descuento=>:P354_DESCUENTO_1,',
'p_det_carga_porc_descuento=>V_CARGA_PORC_DESCUENTO,',
'p_det_precio_unitario=>:P354_PRECIO_UNITARIO,',
'p_cab_decimales=>:P354_DECIMALES,',
'p_cab_recargo=>:P354_RECARGO,',
'p_det_porc_recargo_ant=>:P354_PORC_RECARGO_ANT,',
'p_det_carga_porc_recargo=>V_CARGA_PORC_RECARGO,',
'p_var_mult=>:P354_VAR_MULT,',
'p_var_div=>:P354_VAR_DIV,',
'p_det_porc_iva=>:P354_PORC_IVA_1,',
'p_det_cantidad_ub=>:P354_CANTIDAD_UB,',
'p_det_porc_recargo=>:P354_PORC_RECARGO,',
'p_det_monto_total=>:P354_MONTO_TOTAL,',
'p_det_recargo=>:P354_RECARGO_1,',
'p_var_porc_iva=>:P354_PORC_IVA,',
'p_var_recargo=>:P354_RECARGO,',
'p_det_total_iva=>:P354_TOTAL_IVA_1,',
'p_cab_iva_parcial=>:P354_IVA_PARCIAL,',
'p_det_iva_ant=>:P354_IVA_ANT,',
'p_cab_subtotal_parcial=>:P354_SUBTOTAL_PARCIAL,',
'p_det_importe_ant=>:P354_IMPORTE_ANT,',
'p_cab_gravadas_parcial=>:P354_GRAVADAS_PARCIAL,',
'p_cab_exentas_parcial=>:P354_EXENTAS_PARCIAL,',
'p_cab_porcentaje_descuento=>:P354_PORCENTAJE_DESCUENTO,',
'p_cab_descuento=>:P354_DESCUENTO,',
'p_cab_total_iva=>:P354_TOTAL_IVA,',
'p_cab_subtotal=>:P354_SUBTOTAL,',
'p_cab_gravadas=>:P354_GRAVADAS,',
'p_cab_exentas=>:P354_EXENTAS,',
'p_cab_total=>:P354_TOTAL,',
'p_cab_recargo_porc=>:P354_RECARGO_PORC,',
'p_det_monto_gravada_10=>:P354_MONTO_GRAVADA_10,',
'p_det_monto_gravada_5=>:P354_MONTO_GRAVADA_5,',
'p_det_monto_exenta=>:P354_MONTO_EXENTA,',
'p_cab_tip_cambio=>:P354_TIP_CAMBIO,',
'p_cod_empresa=>:P354_COD_EMPRESA,',
'p_cod_flete=>:P354_COD_FLETE,',
'p_cab_flete_total=>:P354_FLETE_TOTAL,',
'p_det_total_peso=>:P354_TOTAL_PESO,',
'p_det_total_volumen=>:P354_TOTAL_VOLUMEN,',
'p_var_porc_recargo_ant=>:P354_PORC_RECARGO_ANT);',
'END;',
':P354_DESCUENTO_1 := round((nvl(:P354_CANTIDAD, 0) *',
'(nvl(:P354_PRECIO_UNITARIO, 0)) *',
'(nvl(:P354_PORC_DESCUENTO, 0) / 100)),',
'nvl(:P354_DECIMALES, 0));',
'',
'',
'',
'',
''))
,p_attribute_02=>'P354_PORC_DESCUENTO,P354_COD_EMPRESA,P354_COD_ARTICULO,P354_FEC_COMPROBANTE,P354_COD_SUCURSAL, P354_DESCUENTO_30,P354_DESCUENTO_307,P354_COD_VENDEDOR,P354_ARTICULO_PAR,P354_IND_PROMO,P354_NRO_PROMO_1, P354_COD_CLIENTE,P354_COD_CONDICION_VENTA,P354_CO'
||'D_LISTA_PRECIO,P354_CANTIDAD,P354_COD_ART_CORTO, P354_COD_ART_AUX,P354_IND_NO_DESCUENTO,P354_SUPERA_DESCUENTO,P354_SER_PEDIDO_PROMO_ANT,P354_NRO_PEDIDO_ORDEN_PROMO_ANT, P354_COD_ARTICULO_PROMO_ANT_1,P354_NRO_PEDIDO_ORDEN_PROMO_ANT,P354_NRO_COMPROBANT'
||'E,P354_AGREGA_PROMOCION,P354_DESCUENTO, P354_PRECIO_UNITARIO,P354_DECIMALES,P354_RECARGO,P354_PORC_RECARGO_ANT,P354_VAR_MULT,P354_VAR_DIV,P354_PORC_IVA_1, P354_CANTIDAD_UB,P354_PORC_RECARGO,P354_MONTO_TOTAL,P354_RECARGO_1,P354_PORC_IVA,P354_TOTAL_IVA'
||'_1, P354_IVA_PARCIAL,P354_IVA_ANT,P354_SUBTOTAL_PARCIAL,P354_IMPORTE_ANT,P354_GRAVADAS_PARCIAL,P354_EXENTAS_PARCIAL, P354_PORCENTAJE_DESCUENTO,P354_TOTAL_IVA,P354_SUBTOTAL,P354_GRAVADAS,P354_EXENTAS,P354_TOTAL, P354_RECARGO_PORC,P354_MONTO_GRAVADA_10'
||',P354_MONTO_GRAVADA_5,P354_MONTO_EXENTA,P354_TIP_CAMBIO, P354_COD_FLETE,P354_FLETE_TOTAL,P354_TOTAL_PESO,P354_TOTAL_VOLUMEN'
,p_attribute_03=>'P354_PORC_DESCUENTO,P0_MENSAJE_VALIDACION,P354_ARTICULO_PAR, P354_PORC_RECARGO_ANT,P354_VAR_MULT,P354_VAR_DIV,P354_CANTIDAD_UB,P354_MONTO_TOTAL, P354_RECARGO_1,P354_TOTAL_IVA_1,P354_IVA_PARCIAL,P354_IVA_ANT,P354_SUBTOTAL_PARCIAL,P354_IMPORTE_ANT, P35'
||'4_GRAVADAS_PARCIAL,P354_EXENTAS_PARCIAL,P354_PORCENTAJE_DESCUENTO, P354_GRAVADAS,P354_EXENTAS,P354_MONTO_GRAVADA_10,P354_MONTO_GRAVADA_5, P354_MONTO_EXENTA,P354_FLETE_TOTAL,P354_DESCUENTO_1'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(137001809583087920)
,p_event_id=>wwv_flow_imp.id(137001360114087915)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P354_PORC_DESCUENTO < 0 THEN',
'		:P0_MENSAJE_VALIDACION := ''El porcentaje de descuento no puede ser negativo.'';',
'        :P354_PORC_DESCUENTO := ''0,00'';',
'END IF;'))
,p_attribute_02=>'P354_PORC_DESCUENTO'
,p_attribute_03=>'P0_MENSAJE_VALIDACION'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(137001988720087921)
,p_event_id=>wwv_flow_imp.id(137001360114087915)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P354_TOTAL_IVA := replace(:P354_TOTAL_IVA,''.'');',
':P354_SUBTOTAL := replace(:P354_SUBTOTAL,''.'');',
':P354_TOTAL   := replace(:P354_TOTAL,''.'');',
':P354_PRECIO_UNITARIO  := replace(:P354_PRECIO_UNITARIO,''.'');',
':P354_TOTAL_IVA_1 := replace(:P354_TOTAL_IVA_1,''.'');',
':P354_MONTO_TOTAL := replace(:P354_MONTO_TOTAL,''.'');',
'',
'IF :P354_COD_MONEDA = ''1'' THEN ',
'    :P354_PRECIO_UNITARIO  := TO_CHAR(:P354_PRECIO_UNITARIO,''999G999G999G999G999G999G990'');',
'    :P354_TOTAL_IVA_1 := TO_CHAR(:P354_TOTAL_IVA_1,''999G999G999G999G999G999G990'');',
'    :P354_MONTO_TOTAL := TO_CHAR(:P354_MONTO_TOTAL,''999G999G999G999G999G999G990'');',
'    :P354_TOTAL_IVA := TO_CHAR(:P354_TOTAL_IVA,''999G999G999G999G999G999G990'');',
'    :P354_SUBTOTAL := TO_CHAR(:P354_SUBTOTAL,''999G999G999G999G999G999G990'');',
'    :P354_TOTAL   := TO_CHAR(:P354_TOTAL,''999G999G999G999G999G999G990'');',
'ELSE ',
'    :P354_PRECIO_UNITARIO  := TO_CHAR(:P354_PRECIO_UNITARIO,''999G999G999G999G990D00'');',
'    :P354_TOTAL_IVA_1 := TO_CHAR(:P354_TOTAL_IVA_1,''999G999G999G999G990D00'');',
'    :P354_MONTO_TOTAL := TO_CHAR(:P354_MONTO_TOTAL,''999G999G999G999G990D00'');',
'    :P354_TOTAL_IVA := TO_CHAR(:P354_TOTAL_IVA,''999G999G999G999G990D00'');',
'    :P354_SUBTOTAL := TO_CHAR(:P354_SUBTOTAL,''999G999G999G999G990D00'');',
'    :P354_TOTAL   := TO_CHAR(:P354_TOTAL,''999G999G999G999G990D00'');',
'END IF;',
''))
,p_attribute_02=>'P354_TOTAL_IVA,P354_SUBTOTAL,P354_TOTAL,P354_PRECIO_UNITARIO,P354_TOTAL_IVA_1,P354_MONTO_TOTAL,P354_CANTIDAD,P354_PORC_DESCUENTO,P354_DECIMALES,P354_COD_MONEDA'
,p_attribute_03=>'P354_TOTAL_IVA,P354_SUBTOTAL,P354_TOTAL,P354_PRECIO_UNITARIO,P354_TOTAL_IVA_1,P354_MONTO_TOTAL'
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
 p_id=>wwv_flow_imp.id(97249897855855716)
,p_name=>'Valida porcentaje descuento_1_1'
,p_event_sequence=>340
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P354_PORC_RECARGO'
,p_condition_element=>'P354_PORC_RECARGO'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'focusout'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(97250358918855716)
,p_event_id=>wwv_flow_imp.id(97249897855855716)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if nvl(:P354_ES_PROMO,''N'')=''S'' and :P354_NRO_PROMO_1 is not null then',
'  inv.vtpresupuesto.pr_act_promo;',
'end if; '))
,p_attribute_02=>'P354_ES_PROMO,P354_NRO_PROMO_1'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(97250852984855717)
,p_event_id=>wwv_flow_imp.id(97249897855855716)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P354_PORC_RECARGO IS NULL OR :P354_PORC_RECARGO = '''' THEN ',
'    :P354_PORC_RECARGO := ''0,00'';',
'END IF;'))
,p_attribute_02=>'P354_PORC_RECARGO'
,p_attribute_03=>'P354_PORC_RECARGO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(97252372659855717)
,p_event_id=>wwv_flow_imp.id(97249897855855716)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if nvl(:P354_ES_PROMO_1,''N'')=''N'' then',
'		inv.vtpresupuesto.pr_calc_promo(p_det_porc_descuento  => :P354_PORC_DESCUENTO,',
'                                    p_det_cod_art_corto  => :P354_COD_ART_CORTO,',
'                                    p_det_nro_promo      => :P354_NRO_PROMO_1,',
'                                    p_mensaje_error      => :P0_MENSAJE_VALIDACION,',
'                                    p_var_cod_art_aux    => :P354_COD_ART_AUX,',
'                                    p_det_es_promo       => :P354_ES_PROMO_1,',
'                                    p_cab_cant_aux       => :P354_CANT_AUX,',
'                                    p_det_cantidad       => :P354_CANTIDAD,',
'                                    p_det_cod_articulo   => :P354_COD_ARTICULO,',
'                                    p_var_cod_empresa    => :P354_COD_EMPRESA,',
'                                    p_det_cod_lista_precio => :P354_COD_LISTA_PRECIO,',
'                                    p_cod_cliente          => :P354_COD_CLIENTE,',
'                                    p_cod_condicion_venta   =>  :P354_COD_CONDICION_VENTA);',
'else',
'	NULL;',
'end if;',
'',
':P354_RECARGO := 0;'))
,p_attribute_02=>'P354_ES_PROMO_1,P354_PORC_DESCUENTO,P354_COD_ART_CORTO,P354_NRO_PROMO_1,P354_COD_ART_AUX,   P354_CANTIDAD,P354_COD_ARTICULO,P354_COD_EMPRESA,P354_COD_LISTA_PRECIO,P354_COD_CLIENTE,P354_COD_CONDICION_VENTA'
,p_attribute_03=>'P354_COD_ART_CORTO,P0_MENSAJE_VALIDACION,P354_ES_PROMO_1,P354_CANT_AUX,P354_PORC_DESCUENTO,P354_RECARGO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(97251335200855717)
,p_event_id=>wwv_flow_imp.id(97249897855855716)
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
':P354_DESCUENTO := null;',
':P354_TOTAL_IVA:=replace(:P354_TOTAL_IVA,''.'');:P354_SUBTOTAL:=replace(:P354_SUBTOTAL,''.'');:P354_TOTAL:=replace(:P354_TOTAL,''.'');',
':P354_PRECIO_UNITARIO:=replace(:P354_PRECIO_UNITARIO,''.'');:P354_TOTAL_IVA_1:=replace(:P354_TOTAL_IVA_1,''.'');',
':P354_MONTO_TOTAL:=replace(:P354_MONTO_TOTAL,''.'');',
'inv.vtpresupuesto.pr_validaciones_descuentos(p_det_porc_descuento=>:P354_PORC_DESCUENTO,',
'p_mensaje_error=>:P0_MENSAJE_VALIDACION,p_var_cod_empresa=>:P354_COD_EMPRESA,',
'p_det_cod_articulo=>:P354_COD_ARTICULO,p_cab_fec_comprobante=>:P354_FEC_COMPROBANTE,',
'p_cab_cod_sucursal=>:P354_COD_SUCURSAL,p_var_descuento_30=>:P354_DESCUENTO_30,',
'p_var_descuento_307=>:P354_DESCUENTO_307,p_cab_cod_vendedor=>:P354_COD_VENDEDOR,',
'p_det_articulo_par=>:P354_ARTICULO_PAR,p_det_ind_promo=>:P354_IND_PROMO,',
'p_det_nro_promo=>:P354_NRO_PROMO_1,p_cab_cod_cliente=>:P354_COD_CLIENTE,',
'p_cab_cod_condicion_venta=>:P354_COD_CONDICION_VENTA,p_cab_cod_lista_precio=>:P354_COD_LISTA_PRECIO,',
'p_det_cantidad=>:P354_CANTIDAD,p_det_ind_promo_descuento=>V_IND_PROMO_DESCUENTO,',
'p_det_cod_art_corto=>:P354_COD_ART_CORTO,p_cod_art_aux=>:P354_COD_ART_AUX,',
'p_det_ind_no_descuento=>:P354_IND_NO_DESCUENTO,p_var_supera_descuento=>:P354_SUPERA_DESCUENTO,',
'p_det_ser_pedido_promo_ant=>:P354_SER_PEDIDO_PROMO_ANT,p_det_nro_pedido_promo_ant=>:P354_SER_NRO_PROMO_ANT,',
'p_det_cod_articulo_promo_ant=>:P354_COD_ARTICULO_PROMO_ANT,p_d_nro_pedido_orden_promo_ant=>V_NRO_PEDIDO_ANT,',
'p_cab_nro_comprobante=>:P354_NRO_COMPROBANTE,p_var_agrega_promocion=>:P354_AGREGA_PROMOCION,',
'p_det_cod_lista_precio=>:P354_COD_LISTA_PRECIO,p_det_porc_descuento_ant=>V_PORC_DESCUENTO_ANT,',
'p_det_descuento=>:P354_DESCUENTO_1,p_det_carga_porc_descuento=>V_CARGA_PORC_DESCUENTO,',
'p_det_precio_unitario=>:P354_PRECIO_UNITARIO,p_cab_decimales=>:P354_DECIMALES,',
'p_cab_recargo=>:P354_RECARGO,p_det_porc_recargo_ant=>:P354_PORC_RECARGO_ANT,',
'p_det_carga_porc_recargo=>V_CARGA_PORC_RECARGO,p_var_mult=>:P354_VAR_MULT,',
'p_var_div=>:P354_VAR_DIV,p_det_porc_iva=>:P354_PORC_IVA_1,',
'p_det_cantidad_ub=>:P354_CANTIDAD_UB,p_det_porc_recargo=>:P354_PORC_RECARGO,',
'p_det_monto_total=>:P354_MONTO_TOTAL,p_det_recargo=>:P354_RECARGO_1,',
'p_var_porc_iva=>:P354_PORC_IVA,p_var_recargo=>:P354_RECARGO,p_det_total_iva=>:P354_TOTAL_IVA_1,',
'p_cab_iva_parcial=>:P354_IVA_PARCIAL,p_det_iva_ant=>:P354_IVA_ANT,',
'p_cab_subtotal_parcial=>:P354_SUBTOTAL_PARCIAL,p_det_importe_ant=>:P354_IMPORTE_ANT,',
'p_cab_gravadas_parcial=>:P354_GRAVADAS_PARCIAL,p_cab_exentas_parcial=>:P354_EXENTAS_PARCIAL,',
'p_cab_porcentaje_descuento=>:P354_PORCENTAJE_DESCUENTO,p_cab_descuento=>:P354_DESCUENTO,',
'p_cab_total_iva=>:P354_TOTAL_IVA,p_cab_subtotal=>:P354_SUBTOTAL,p_cab_gravadas=>:P354_GRAVADAS,',
'p_cab_exentas=>:P354_EXENTAS,p_cab_total=>:P354_TOTAL,p_cab_recargo_porc=>:P354_RECARGO_PORC,',
'p_det_monto_gravada_10=>:P354_MONTO_GRAVADA_10,p_det_monto_gravada_5=>:P354_MONTO_GRAVADA_5,',
'p_det_monto_exenta=>:P354_MONTO_EXENTA,p_cab_tip_cambio=>:P354_TIP_CAMBIO,',
'p_cod_empresa=>:P354_COD_EMPRESA,p_cod_flete=>:P354_COD_FLETE,',
'p_cab_flete_total=>:P354_FLETE_TOTAL,p_det_total_peso=>:P354_TOTAL_PESO,',
'p_det_total_volumen=>:P354_TOTAL_VOLUMEN,',
'p_var_porc_recargo_ant=>:P354_PORC_RECARGO_ANT);',
'END;',
':P354_DESCUENTO_1 :=round((nvl(:P354_CANTIDAD, 0) * (nvl(:P354_PRECIO_UNITARIO, 0)) * (nvl(:P354_PORC_DESCUENTO, 0) / 100)), nvl(:P354_DECIMALES, 0));',
':P354_RECARGO_AUX := :P354_RECARGO_1;'))
,p_attribute_02=>'P354_PORC_DESCUENTO,P354_COD_EMPRESA,P354_COD_ARTICULO,P354_FEC_COMPROBANTE,P354_COD_SUCURSAL, P354_DESCUENTO_30,P354_DESCUENTO_307,P354_COD_VENDEDOR,P354_ARTICULO_PAR,P354_IND_PROMO,P354_NRO_PROMO_1, P354_COD_CLIENTE,P354_COD_CONDICION_VENTA,P354_CO'
||'D_LISTA_PRECIO,P354_CANTIDAD,P354_COD_ART_CORTO, P354_COD_ART_AUX,P354_IND_NO_DESCUENTO,P354_SUPERA_DESCUENTO,P354_SER_PEDIDO_PROMO_ANT,P354_NRO_PEDIDO_ORDEN_PROMO_ANT, P354_COD_ARTICULO_PROMO_ANT_1,P354_NRO_PEDIDO_ORDEN_PROMO_ANT,P354_NRO_COMPROBANT'
||'E,P354_AGREGA_PROMOCION,P354_DESCUENTO, P354_PRECIO_UNITARIO,P354_DECIMALES,P354_RECARGO,P354_PORC_RECARGO_ANT,P354_VAR_MULT,P354_VAR_DIV,P354_PORC_IVA_1, P354_CANTIDAD_UB,P354_PORC_RECARGO,P354_MONTO_TOTAL,P354_RECARGO_1,P354_PORC_IVA,P354_TOTAL_IVA'
||'_1, P354_IVA_PARCIAL,P354_IVA_ANT,P354_SUBTOTAL_PARCIAL,P354_IMPORTE_ANT,P354_GRAVADAS_PARCIAL,P354_EXENTAS_PARCIAL, P354_PORCENTAJE_DESCUENTO,P354_TOTAL_IVA,P354_SUBTOTAL,P354_GRAVADAS,P354_EXENTAS,P354_TOTAL, P354_RECARGO_PORC,P354_MONTO_GRAVADA_10'
||',P354_MONTO_GRAVADA_5,P354_MONTO_EXENTA,P354_TIP_CAMBIO, P354_COD_FLETE,P354_FLETE_TOTAL,P354_TOTAL_PESO,P354_TOTAL_VOLUMEN'
,p_attribute_03=>'P354_PORC_DESCUENTO,P354_MONTO_TOTAL,P354_TOTAL_IVA_1,P354_RECARGO_AUX'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(97251877962855717)
,p_event_id=>wwv_flow_imp.id(97249897855855716)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P354_PORC_DESCUENTO < 0 THEN',
'		:P0_MENSAJE_VALIDACION := ''El porcentaje de descuento no puede ser negativo.'';',
'END IF;'))
,p_attribute_02=>'P354_PORC_DESCUENTO'
,p_attribute_03=>'P0_MENSAJE_VALIDACION'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(97252804591855718)
,p_event_id=>wwv_flow_imp.id(97249897855855716)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'    :P354_TOTAL_IVA:=REPLACE(:P354_TOTAL_IVA,''.'');',
'    :P354_SUBTOTAL:=REPLACE(:P354_SUBTOTAL,''.'');',
'    :P354_TOTAL:=REPLACE(:P354_TOTAL,''.'');',
'    :P354_PRECIO_UNITARIO:=REPLACE(:P354_PRECIO_UNITARIO,''.'');',
'    :P354_TOTAL_IVA_1:=REPLACE(:P354_TOTAL_IVA_1,''.'');',
'    :P354_MONTO_TOTAL:=REPLACE(:P354_MONTO_TOTAL,''.'');',
'IF :P354_COD_MONEDA = ''1'' THEN ',
'    :P354_TOTAL_IVA:=TO_CHAR(:P354_TOTAL_IVA,''999G999G999G999G999G999G990'');',
'    :P354_SUBTOTAL:=TO_CHAR(:P354_SUBTOTAL,''999G999G999G999G999G999G990'');',
'    :P354_TOTAL:=TO_CHAR(:P354_TOTAL,''999G999G999G999G999G999G990'');',
'    :P354_PRECIO_UNITARIO:=TO_CHAR(:P354_PRECIO_UNITARIO,''999G999G999G999G999G999G990'');',
'    :P354_TOTAL_IVA_1:=TO_CHAR(:P354_TOTAL_IVA_1,''999G999G999G999G999G999G990'');',
'    :P354_MONTO_TOTAL:=TO_CHAR(:P354_MONTO_TOTAL,''999G999G999G999G999G999G990'');',
'ELSE ',
'    :P354_TOTAL_IVA:=TO_CHAR(:P354_TOTAL_IVA,''999G999G999G999G990D00'');',
'    :P354_SUBTOTAL:=TO_CHAR(:P354_SUBTOTAL,''999G999G999G999G990D00'');',
'    :P354_TOTAL:=TO_CHAR(:P354_TOTAL,''999G999G999G999G990D00'');',
'    :P354_PRECIO_UNITARIO:=TO_CHAR(:P354_PRECIO_UNITARIO,''999G999G999G999G990D00'');',
'    :P354_TOTAL_IVA_1:=TO_CHAR(:P354_TOTAL_IVA_1,''999G999G999G999G990D00'');',
'    :P354_MONTO_TOTAL:=TO_CHAR(:P354_MONTO_TOTAL,''999G999G999G999G990D00'');',
'END IF;'))
,p_attribute_02=>'P354_COD_MONEDA,P354_TOTAL_IVA,P354_SUBTOTAL,P354_TOTAL,P354_PRECIO_UNITARIO,P354_TOTAL_IVA_1,P354_MONTO_TOTAL'
,p_attribute_03=>'P354_TOTAL_IVA,P354_SUBTOTAL,P354_TOTAL,P354_PRECIO_UNITARIO,P354_TOTAL_IVA_1,P354_MONTO_TOTAL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(97253271946855718)
,p_name=>'Recargos validaciones_1'
,p_event_sequence=>350
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P354_PORC_RECARGO'
,p_condition_element=>'P354_PORC_RECARGO'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'focusout'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(97253713967855718)
,p_event_id=>wwv_flow_imp.id(97253271946855718)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE  ',
'    V_PORC_DESCUENTO_ANT NUMBER;',
'    V_CARGA_PORC_DESCUENTO  VARCHAR2(100);',
'BEGIN',
':P354_TOTAL_IVA := replace(:P354_TOTAL_IVA,''.'');',
':P354_SUBTOTAL := replace(:P354_SUBTOTAL,''.'');',
':P354_TOTAL   := replace(:P354_TOTAL,''.'');',
':P354_PRECIO_UNITARIO  := replace(:P354_PRECIO_UNITARIO,''.'');',
':P354_TOTAL_IVA_1 := replace(:P354_TOTAL_IVA_1,''.'');',
':P354_MONTO_TOTAL := replace(:P354_MONTO_TOTAL,''.'');',
'    INV.vtpresupuesto.PR_CALCULA_DESCUENTO(P_DET_PORC_DESCUENTO_ANT   => V_PORC_DESCUENTO_ANT,',
'                                      P_PORC_DESCUENTO           => :P354_PORC_DESCUENTO,',
'                                      P_DESCUENTO                => :P354_DESCUENTO,',
'                                      P_DET_CARGA_PORC_DESCUENTO => V_CARGA_PORC_DESCUENTO,',
'                                      P_DET_CANTIDAD             => :P354_CANTIDAD,',
'                                      P_DET_PRECIO_UNITARIO      => :P354_PRECIO_UNITARIO,',
'                                      P_DECIMALES                => :P354_DECIMALES,',
'                                      P_DET_NRO_PROMO            => :P354_NRO_PROMO_1,',
'                                      P_PORC_DESCUENTO_ANT       => V_PORC_DESCUENTO_ANT,',
'                                      P_RECARGO                  => :P354_RECARGO_1);',
':P354_TOTAL_IVA := TO_CHAR(:P354_TOTAL_IVA,''999G999G999G999G999G999G990'');',
':P354_SUBTOTAL := TO_CHAR(:P354_SUBTOTAL,''999G999G999G999G999G999G990'');',
':P354_TOTAL   := TO_CHAR(:P354_TOTAL,''999G999G999G999G999G999G990'');',
':P354_PRECIO_UNITARIO  := TO_CHAR(:P354_PRECIO_UNITARIO,''999G999G999G999G999G999G990'');',
':P354_TOTAL_IVA_1 := TO_CHAR(:P354_TOTAL_IVA_1,''999G999G999G999G999G999G990'');',
':P354_MONTO_TOTAL := TO_CHAR(:P354_MONTO_TOTAL,''999G999G999G999G999G999G990'');',
'END;'))
,p_attribute_02=>'P354_PORC_DESCUENTO,P354_DESCUENTO,P354_CANTIDAD,P354_PRECIO_UNITARIO,P354_DECIMALES,P354_NRO_PROMO_1'
,p_attribute_03=>'P354_DESCUENTO,P354_RECARGO,P354_RECARGO_1'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(97254243724855718)
,p_event_id=>wwv_flow_imp.id(97253271946855718)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P354_TOTAL_IVA := replace(:P354_TOTAL_IVA,''.'');',
':P354_SUBTOTAL := replace(:P354_SUBTOTAL,''.'');',
':P354_TOTAL   := replace(:P354_TOTAL,''.'');',
':P354_PRECIO_UNITARIO  := replace(:P354_PRECIO_UNITARIO,''.'');',
':P354_TOTAL_IVA_1 := replace(:P354_TOTAL_IVA_1,''.'');',
':P354_MONTO_TOTAL := replace(:P354_MONTO_TOTAL,''.'');',
'BEGIN',
'		IF nvl( :P354_PORC_RECARGO_ANT, 0 ) <> nvl( :P354_PORC_RECARGO, 0 ) or ( nvl( :P354_PORC_RECARGO, 0 ) <> 0 and nvl(:P354_RECARGO_1,0) = 0 ) THEN',
'				:P354_CARGA_PORC_RECARGO := ''S'';',
'				:P354_RECARGO_1 := round( (( nvl( :P354_CANTIDAD, 0 ) *',
'				                              ( nvl( :P354_PRECIO_UNITARIO, 0 )) - nvl(:P354_DESCUENTO_1,0) ) *',
'				                              ( nvl( :P354_PORC_RECARGO, 0 ) / 100 ) ),',
'				                                nvl( :P354_DECIMALES, 0 ) );',
'				:P354_PORC_RECARGO_ANT     := nvl( :P354_PORC_RECARGO, 0 ) ;',
'				:P354_CARGA_PORC_RECARGO := ''N'';',
'		END IF;',
'EXCEPTION',
'	  when others then',
unistr('	    :P0_MENSAJE_VALIDACION := ''Error en el c\00E1lculo de recargo ''||sqlerrm;'),
'END;',
'',
':P354_RECARGO_1 := round((nvl(:P354_CANTIDAD, 0) *',
'                           (nvl(:P354_PRECIO_UNITARIO, 0)) *',
'                           (nvl(:P354_RECARGO, 0) / 100)),',
'                           nvl(:P354_DECIMALES, 0));',
'                           ',
':P354_TOTAL_IVA := TO_CHAR(:P354_TOTAL_IVA,''999G999G999G999G999G999G990'');',
':P354_SUBTOTAL := TO_CHAR(:P354_SUBTOTAL,''999G999G999G999G999G999G990'');',
':P354_TOTAL   := TO_CHAR(:P354_TOTAL,''999G999G999G999G999G999G990'');',
':P354_PRECIO_UNITARIO  := TO_CHAR(:P354_PRECIO_UNITARIO,''999G999G999G999G999G999G990'');',
':P354_TOTAL_IVA_1 := TO_CHAR(:P354_TOTAL_IVA_1,''999G999G999G999G999G999G990'');',
':P354_MONTO_TOTAL := TO_CHAR(:P354_MONTO_TOTAL,''999G999G999G999G999G999G990'');'))
,p_attribute_02=>'P354_PORC_RECARGO_ANT,P354_PORC_RECARGO,P354_RECARGO_1,P354_CANTIDAD,P354_PRECIO_UNITARIO,P354_DESCUENTO_1,P354_DECIMALES'
,p_attribute_03=>'P354_CARGA_PORC_RECARGO,:P354_RECARGO_1,P354_PORC_RECARGO_ANT,P0_MENSAJE_VALIDACION,P354_RECARGO_1'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(97254736587855719)
,p_event_id=>wwv_flow_imp.id(97253271946855718)
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
':P354_TOTAL_IVA:=replace(:P354_TOTAL_IVA,''.'');',
':P354_SUBTOTAL:=replace(:P354_SUBTOTAL,''.'');',
':P354_TOTAL:=replace(:P354_TOTAL,''.'');',
':P354_PRECIO_UNITARIO:=replace(:P354_PRECIO_UNITARIO,''.'');',
':P354_TOTAL_IVA_1:=replace(:P354_TOTAL_IVA_1,''.'');',
':P354_MONTO_TOTAL:=replace(:P354_MONTO_TOTAL,''.'');',
'inv.vtpresupuesto.pr_validaciones_descuentos(p_det_porc_descuento=>:P354_PORC_DESCUENTO,',
'p_mensaje_error=>:P0_MENSAJE_VALIDACION,',
'p_var_cod_empresa=>:P354_COD_EMPRESA,',
'p_det_cod_articulo=>:P354_COD_ARTICULO,',
'p_cab_fec_comprobante=>:P354_FEC_COMPROBANTE,',
'p_cab_cod_sucursal=>:P354_COD_SUCURSAL,',
'p_var_descuento_30=>:P354_DESCUENTO_30,',
'p_var_descuento_307=>:P354_DESCUENTO_307,',
'p_cab_cod_vendedor=>:P354_COD_VENDEDOR,',
'p_det_articulo_par=>:P354_ARTICULO_PAR,',
'p_det_ind_promo=>:P354_IND_PROMO,',
'p_det_nro_promo=>:P354_NRO_PROMO_1,',
'p_cab_cod_cliente=>:P354_COD_CLIENTE,',
'p_cab_cod_condicion_venta=>:P354_COD_CONDICION_VENTA,',
'p_cab_cod_lista_precio=>:P354_COD_LISTA_PRECIO,',
'p_det_cantidad=>:P354_CANTIDAD,',
'p_det_ind_promo_descuento=>V_IND_PROMO_DESCUENTO,',
'p_det_cod_art_corto=>:P354_COD_ART_CORTO,',
'p_cod_art_aux=>:P354_COD_ART_AUX,',
'p_det_ind_no_descuento=>:P354_IND_NO_DESCUENTO,',
'p_var_supera_descuento=>:P354_SUPERA_DESCUENTO,',
'p_det_ser_pedido_promo_ant=>:P354_SER_PEDIDO_PROMO_ANT,',
'p_det_nro_pedido_promo_ant=>:P354_SER_NRO_PROMO_ANT,',
'p_det_cod_articulo_promo_ant=>:P354_COD_ARTICULO_PROMO_ANT,',
'p_d_nro_pedido_orden_promo_ant=>V_NRO_PEDIDO_ANT,',
'p_cab_nro_comprobante=>:P354_NRO_COMPROBANTE,',
'p_var_agrega_promocion=>:P354_AGREGA_PROMOCION,',
'p_det_cod_lista_precio=>:P354_COD_LISTA_PRECIO,',
'p_det_porc_descuento_ant=>V_PORC_DESCUENTO_ANT,',
'p_det_descuento=>:P354_DESCUENTO_1,',
'p_det_carga_porc_descuento=>V_CARGA_PORC_DESCUENTO,',
'p_det_precio_unitario=>:P354_PRECIO_UNITARIO,',
'p_cab_decimales=>:P354_DECIMALES,',
'p_cab_recargo=>:P354_RECARGO,',
'p_det_porc_recargo_ant=>:P354_PORC_RECARGO_ANT,',
'p_det_carga_porc_recargo=>V_CARGA_PORC_RECARGO,',
'p_var_mult=>:P354_VAR_MULT,',
'p_var_div=>:P354_VAR_DIV,',
'p_det_porc_iva=>:P354_PORC_IVA_1,',
'p_det_cantidad_ub=>:P354_CANTIDAD_UB,',
'p_det_porc_recargo=>:P354_PORC_RECARGO,',
'p_det_monto_total=>:P354_MONTO_TOTAL,',
'p_det_recargo=>:P354_RECARGO_1,',
'p_var_porc_iva=>:P354_PORC_IVA,',
'p_var_recargo=>:P354_RECARGO,',
'p_det_total_iva=>:P354_TOTAL_IVA_1,',
'p_cab_iva_parcial=>:P354_IVA_PARCIAL,',
'p_det_iva_ant=>:P354_IVA_ANT,',
'p_cab_subtotal_parcial=>:P354_SUBTOTAL_PARCIAL,',
'p_det_importe_ant=>:P354_IMPORTE_ANT,',
'p_cab_gravadas_parcial=>:P354_GRAVADAS_PARCIAL,',
'p_cab_exentas_parcial=>:P354_EXENTAS_PARCIAL,',
'p_cab_porcentaje_descuento=>:P354_PORCENTAJE_DESCUENTO,',
'p_cab_descuento=>:P354_DESCUENTO,',
'p_cab_total_iva=>:P354_TOTAL_IVA,',
'p_cab_subtotal=>:P354_SUBTOTAL,',
'p_cab_gravadas=>:P354_GRAVADAS,',
'p_cab_exentas=>:P354_EXENTAS,',
'p_cab_total=>:P354_TOTAL,',
'p_cab_recargo_porc=>:P354_RECARGO_PORC,',
'p_det_monto_gravada_10=>:P354_MONTO_GRAVADA_10,',
'p_det_monto_gravada_5=>:P354_MONTO_GRAVADA_5,',
'p_det_monto_exenta=>:P354_MONTO_EXENTA,',
'p_cab_tip_cambio=>:P354_TIP_CAMBIO,',
'p_cod_empresa=>:P354_COD_EMPRESA,',
'p_cod_flete=>:P354_COD_FLETE,',
'p_cab_flete_total=>:P354_FLETE_TOTAL,',
'p_det_total_peso=>:P354_TOTAL_PESO,',
'p_det_total_volumen=>:P354_TOTAL_VOLUMEN,',
'p_var_porc_recargo_ant=>:P354_PORC_RECARGO_ANT);',
'END;',
':P354_DESCUENTO_1 := round((nvl(:P354_CANTIDAD, 0) *',
'(nvl(:P354_PRECIO_UNITARIO, 0)) *',
'(nvl(:P354_PORC_DESCUENTO, 0) / 100)),',
'nvl(:P354_DECIMALES, 0));',
':P354_TOTAL_IVA:=TO_CHAR(:P354_TOTAL_IVA,''999G999G999G999G999G999G990'');',
':P354_SUBTOTAL:=TO_CHAR(:P354_SUBTOTAL,''999G999G999G999G999G999G990'');',
':P354_TOTAL:=TO_CHAR(:P354_TOTAL,''999G999G999G999G999G999G990'');',
':P354_PRECIO_UNITARIO:=TO_CHAR(:P354_PRECIO_UNITARIO,''999G999G999G999G999G999G990'');',
':P354_TOTAL_IVA_1:=TO_CHAR(:P354_TOTAL_IVA_1,''999G999G999G999G999G999G990'');',
':P354_MONTO_TOTAL:=TO_CHAR(:P354_MONTO_TOTAL,''999G999G999G999G999G999G990'');',
''))
,p_attribute_02=>'P354_PORC_DESCUENTO,P354_COD_EMPRESA,P354_COD_ARTICULO,P354_FEC_COMPROBANTE,P354_COD_SUCURSAL, P354_DESCUENTO_30,P354_DESCUENTO_307,P354_COD_VENDEDOR,P354_ARTICULO_PAR,P354_IND_PROMO,P354_NRO_PROMO_1, P354_COD_CLIENTE,P354_COD_CONDICION_VENTA,P354_CO'
||'D_LISTA_PRECIO,P354_CANTIDAD,P354_COD_ART_CORTO, P354_COD_ART_AUX,P354_IND_NO_DESCUENTO,P354_SUPERA_DESCUENTO,P354_SER_PEDIDO_PROMO_ANT,P354_NRO_PEDIDO_ORDEN_PROMO_ANT, P354_COD_ARTICULO_PROMO_ANT_1,P354_NRO_PEDIDO_ORDEN_PROMO_ANT,P354_NRO_COMPROBANT'
||'E,P354_AGREGA_PROMOCION,P354_DESCUENTO, P354_PRECIO_UNITARIO,P354_DECIMALES,P354_RECARGO,P354_PORC_RECARGO_ANT,P354_VAR_MULT,P354_VAR_DIV,P354_PORC_IVA_1, P354_CANTIDAD_UB,P354_PORC_RECARGO,P354_MONTO_TOTAL,P354_RECARGO_1,P354_PORC_IVA,P354_TOTAL_IVA'
||'_1, P354_IVA_PARCIAL,P354_IVA_ANT,P354_SUBTOTAL_PARCIAL,P354_IMPORTE_ANT,P354_GRAVADAS_PARCIAL,P354_EXENTAS_PARCIAL, P354_PORCENTAJE_DESCUENTO,P354_TOTAL_IVA,P354_SUBTOTAL,P354_GRAVADAS,P354_EXENTAS,P354_TOTAL, P354_RECARGO_PORC,P354_MONTO_GRAVADA_10'
||',P354_MONTO_GRAVADA_5,P354_MONTO_EXENTA,P354_TIP_CAMBIO, P354_COD_FLETE,P354_FLETE_TOTAL,P354_TOTAL_PESO,P354_TOTAL_VOLUMEN'
,p_attribute_03=>'P354_PORC_DESCUENTO,P0_MENSAJE_VALIDACION,P354_ARTICULO_PAR,P354_DESCUENTO,P354_RECARGO, P354_PORC_RECARGO_ANT,P354_DESCUENTO,P354_VAR_MULT,P354_VAR_DIV,P354_CANTIDAD_UB,P354_MONTO_TOTAL, P354_RECARGO_1,P354_TOTAL_IVA_1,P354_IVA_PARCIAL,P354_IVA_ANT,'
||'P354_SUBTOTAL_PARCIAL,P354_IMPORTE_ANT, P354_GRAVADAS_PARCIAL,P354_EXENTAS_PARCIAL,P354_PORCENTAJE_DESCUENTO,P354_TOTAL_IVA,P354_SUBTOTAL, P354_GRAVADAS,P354_EXENTAS,P354_TOTAL,P354_RECARGO_PORC,P354_MONTO_GRAVADA_10,P354_MONTO_GRAVADA_5, P354_MONTO_'
||'EXENTA,P354_FLETE_TOTAL,P354_DESCUENTO_1'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(97255726041855720)
,p_event_id=>wwv_flow_imp.id(97253271946855718)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P354_TOTAL_IVA := replace(:P354_TOTAL_IVA,''.'');',
':P354_SUBTOTAL := replace(:P354_SUBTOTAL,''.'');',
':P354_TOTAL   := replace(:P354_TOTAL,''.'');',
':P354_PRECIO_UNITARIO  := replace(:P354_PRECIO_UNITARIO,''.'');',
':P354_TOTAL_IVA_1 := replace(:P354_TOTAL_IVA_1,''.'');',
':P354_MONTO_TOTAL := replace(:P354_MONTO_TOTAL,''.'');',
'',
'',
':P354_TOTAL_IVA := TO_CHAR(:P354_TOTAL_IVA,''999G999G999G999G999G999G990'');',
':P354_SUBTOTAL := TO_CHAR(:P354_SUBTOTAL,''999G999G999G999G999G999G990'');',
':P354_TOTAL   := TO_CHAR(:P354_TOTAL,''999G999G999G999G999G999G990'');',
':P354_PRECIO_UNITARIO  := TO_CHAR(:P354_PRECIO_UNITARIO,''999G999G999G999G999G999G990'');',
':P354_TOTAL_IVA_1 := TO_CHAR(:P354_TOTAL_IVA_1,''999G999G999G999G999G999G990'');',
':P354_MONTO_TOTAL := TO_CHAR(:P354_MONTO_TOTAL,''999G999G999G999G999G999G990'');',
''))
,p_attribute_02=>'P354_TOTAL_IVA,P354_SUBTOTAL,P354_TOTAL,P354_PRECIO_UNITARIO,P354_TOTAL_IVA_1,P354_MONTO_TOTAL,P354_CANTIDAD,P354_PORC_DESCUENTO,P354_DECIMALES'
,p_attribute_03=>'P354_TOTAL_IVA,P354_SUBTOTAL,P354_TOTAL,P354_PRECIO_UNITARIO,P354_TOTAL_IVA_1,P354_MONTO_TOTAL,P354_DESCUENTO_1'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(97255215670855719)
,p_event_id=>wwv_flow_imp.id(97253271946855718)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE ',
'    V_PORC_RECARGO_ANT NUMBER;',
'    V_CARGA_PORC_RECARGO    VARCHAR2(100);',
'BEGIN',
':P354_TOTAL_IVA := replace(:P354_TOTAL_IVA,''.'');',
':P354_SUBTOTAL := replace(:P354_SUBTOTAL,''.'');',
':P354_TOTAL   := replace(:P354_TOTAL,''.'');',
':P354_PRECIO_UNITARIO  := replace(:P354_PRECIO_UNITARIO,''.'');',
':P354_TOTAL_IVA_1 := replace(:P354_TOTAL_IVA_1,''.'');',
':P354_MONTO_TOTAL := replace(:P354_MONTO_TOTAL,''.'');',
'INV.vtpresupuesto.PR_CALCULA_RECARGO(P_DET_PORC_RECARGO_ANT     => V_PORC_RECARGO_ANT,',
'P_DET_CARGA_PORC_RECARGO => V_CARGA_PORC_RECARGO,',
'P_CAB_DECIMALES => :P354_DECIMALES,',
'P_MENSAJE_ERROR => :P0_MENSAJE_VALIDACION,',
'P_VAR_MULT => :P354_VAR_MULT,',
'P_VAR_DIV => :P354_VAR_DIV,',
'P_DET_PORC_IVA => :P354_PORC_IVA_1,',
'P_DET_PRECIO_UNITARIO => :P354_PRECIO_UNITARIO,',
'P_DET_CANTIDAD_UB => :P354_CANTIDAD_UB,',
'P_DET_CANTIDAD => :P354_CANTIDAD,',
'P_DET_PORC_DESCUENTO  => :P354_PORC_DESCUENTO,',
'P_DET_PORC_RECARGO => :P354_PORC_RECARGO,',
'P_DET_DESCUENTO => :P354_DESCUENTO_1,',
'P_DET_MONTO_TOTAL => :P354_MONTO_TOTAL,',
'P_DET_RECARGO => :P354_RECARGO_1,',
'P_VAR_PORC_IVA => :P354_PORC_IVA,',
'P_DET_COD_ARTICULO => :P354_COD_ARTICULO,',
'P_VAR_RECARGO => :P354_RECARGO,',
'P_DET_TOTAL_IVA => :P354_TOTAL_IVA_1,',
'P_CAB_IVA_PARCIAL => :P354_IVA_PARCIAL,',
'P_DET_IVA_ANT => :P354_IVA_ANT,',
'P_CAB_SUBTOTAL_PARCIAL => :P354_SUBTOTAL_PARCIAL,',
'P_DET_IMPORTE_ANT => :P354_IMPORTE_ANT,',
'P_CAB_GRAVADAS_PARCIAL => :P354_GRAVADAS_PARCIAL,',
'P_CAB_EXENTAS_PARCIAL => :P354_EXENTAS_PARCIAL,',
'P_CAB_PORCENTAJE_DESCUENTO => :P354_PORCENTAJE_DESCUENTO,',
'P_CAB_DESCUENTO => :P354_DESCUENTO,',
'P_CAB_TOTAL_IVA => :P354_TOTAL_IVA,',
'P_CAB_SUBTOTAL => :P354_SUBTOTAL,',
'P_CAB_GRAVADAS => :P354_GRAVADAS,',
'P_CAB_EXENTAS => :P354_EXENTAS,',
'P_CAB_TOTAL => :P354_TOTAL,',
'P_CAB_RECARGO_PORC => :P354_RECARGO_PORC,',
'P_CAB_RECARGO => :P354_RECARGO,',
'P_DET_MONTO_GRAVADA_10 => :P354_MONTO_GRAVADA_10,',
'P_DET_MONTO_GRAVADA_5 => :P354_MONTO_GRAVADA_5,',
'P_DET_MONTO_EXENTA => :P354_MONTO_EXENTA,',
'P_CAB_TIP_CAMBIO => :P354_TIP_CAMBIO,',
'P_COD_EMPRESA => :P354_COD_EMPRESA,',
'P_COD_FLETE => :P354_COD_FLETE,',
'P_CAB_FLETE_TOTAL => :P354_FLETE_TOTAL,',
'P_DET_TOTAL_PESO => :P354_TOTAL_PESO,',
'P_DET_TOTAL_VOLUMEN => :P354_TOTAL_VOLUMEN,',
'P_VAR_PORC_RECARGO_ANT => :P354_PORC_RECARGO_ANT);',
'',
'INV.vtpresupuesto.PR_CALCULOS(P_VAR_MULT => :P354_VAR_MULT,',
'P_VAR_DIV => :P354_VAR_DIV,',
'P_DET_PORC_IVA => :P354_PORC_IVA,',
'P_DET_PRECIO_UNITARIO => :P354_PRECIO_UNITARIO,',
'P_CAB_DECIMALES => :P354_DECIMALES,',
'P_DET_CANTIDAD_UB => :P354_CANTIDAD_UB,',
'P_DET_CANTIDAD => :P354_CANTIDAD,',
'P_DET_PORC_DESCUENTO => :P354_PORC_DESCUENTO,',
'P_DET_PORC_RECARGO => :P354_PORC_RECARGO,',
'P_DET_DESCUENTO => :P354_DESCUENTO_1,',
'P_DET_MONTO_TOTAL => :P354_MONTO_TOTAL,',
'P_DET_RECARGO => :P354_RECARGO_1,',
'P_VAR_PORC_IVA => :P354_PORC_IVA,',
'P_DET_COD_ARTICULO => :P354_COD_ARTICULO,',
'P_VAR_RECARGO => :P354_RECARGO,',
'P_DET_TOTAL_IVA => :P354_TOTAL_IVA_1,',
'P_CAB_IVA_PARCIAL => :P354_IVA_PARCIAL,',
'P_DET_IVA_ANT => :P354_IVA_ANT,',
'P_CAB_SUBTOTAL_PARCIAL => :P354_SUBTOTAL_PARCIAL,',
'P_DET_IMPORTE_ANT => :P354_IMPORTE_ANT,',
'P_CAB_GRAVADAS_PARCIAL => :P354_GRAVADAS_PARCIAL,',
'P_CAB_EXENTAS_PARCIAL => :P354_EXENTAS_PARCIAL,',
'P_CAB_PORCENTAJE_DESCUENTO => :P354_PORCENTAJE_DESCUENTO,',
'P_CAB_DESCUENTO => :P354_DESCUENTO,',
'P_CAB_TOTAL_IVA => :P354_TOTAL_IVA,',
'P_CAB_SUBTOTAL => :P354_SUBTOTAL,',
'P_CAB_GRAVADAS => :P354_GRAVADAS,',
'P_CAB_EXENTAS => :P354_EXENTAS,',
'P_CAB_TOTAL => :P354_TOTAL,',
'P_CAB_RECARGO_PORC => :P354_RECARGO_PORC,',
'P_CAB_RECARGO => :P354_RECARGO,',
'P_DET_MONTO_GRAVADA_10 => :P354_MONTO_GRAVADA_10,',
'P_DET_MONTO_GRAVADA_5 => :P354_MONTO_GRAVADA_5,',
'P_DET_MONTO_EXENTA => :P354_MONTO_EXENTA,',
'P_MENSAJE_ERROR => :P0_MENSAJE_VALIDACION,',
'P_CAB_TIP_CAMBIO => :P354_TIP_CAMBIO,',
'P_COD_EMPRESA => :P354_COD_EMPRESA,',
'P_COD_FLETE => :P354_COD_FLETE,',
'P_CAB_FLETE_TOTAL => :P354_FLETE_TOTAL,',
'P_DET_TOTAL_PESO => :P354_TOTAL_PESO,',
'P_DET_TOTAL_VOLUMEN => :P354_TOTAL_VOLUMEN);',
'END;',
'',
'',
'',
'',
'',
''))
,p_attribute_02=>'P354_DECIMALES,P354_VAR_MULT,P354_VAR_DIV,PORC_IVA,PRECIO_UNITARIO,CANTIDAD,PORC_DESCUENTO,PORC_RECARGO,DESCUENTO,RECARGO,P354_PORC_IVA,COD_ARTICULO,P354_RECARGO,P354_IVA_PARCIAL,IVA_ANT,P354_SUBTOTAL_PARCIAL,IMPORTE_ANT,P354_GRAVADAS_PARCIAL,P354_EX'
||'ENTAS_PARCIAL,P354_PORCENTAJE_DESCUENTO,P354_DESCUENTO,P354_TOTAL_IVA,P354_SUBTOTAL,P354_GRAVADAS,P354_EXENTAS,P354_TOTAL,P354_RECARGO_PORC,MONTO_GRAVADA_10,MONTO_GRAVADA_5,MONTO_EXENTA,P354_TIP_CAMBIO,P354_COD_EMPRESA,P354_COD_FLETE,TOTAL_PESO,VOLUM'
||'EN'
,p_attribute_03=>'P354_DECIMALES,P354_VAR_MULT,P354_VAR_DIV,P354_PORC_IVA_1,P354_PRECIO_UNITARIO,P354_CANTIDAD,P354_PORC_DESCUENTO, P354_PORC_RECARGO,P354_DESCUENTO_1,P354_MONTO_TOTAL,P354_RECARGO_1,P354_PORC_IVA,P354_COD_ARTICULO, P354_RECARGO,P354_TOTAL_IVA_1,P354_I'
||'VA_PARCIAL,P354_IVA_ANT,P354_SUBTOTAL_PARCIAL,P354_IMPORTE_ANT, P354_GRAVADAS_PARCIAL,P354_EXENTAS_PARCIAL,P354_PORCENTAJE_DESCUENTO,P354_DESCUENTO,P354_TOTAL_IVA, P354_SUBTOTAL,P354_GRAVADAS,P354_EXENTAS,P354_TOTAL,P354_RECARGO_PORC,P354_MONTO_GRAVA'
||'DA_10,P354_MONTO_GRAVADA_5, P354_MONTO_EXENTA,P354_TIP_CAMBIO,P354_COD_EMPRESA,P354_COD_FLETE,P354_TOTAL_PESO,P354_TOTAL_VOLUMEN'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(97256124695855720)
,p_name=>'Validar productos_1'
,p_event_sequence=>360
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P354_IND_PRODUCTO_ARMADO'
,p_condition_element=>'P354_IND_PRODUCTO_ARMADO'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'S'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(97256600513855720)
,p_event_id=>wwv_flow_imp.id(97256124695855720)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P354_IND_PRODUCTO_ARMADO=''S'' THEN',
'	declare ',
'		VEXISTE VARCHAR2(10);',
'	begin',
'		select ''S'' INTO VEXISTE',
'		from st_articulos s',
'		where s.cod_empresa=:P354_COD_EMPRESA',
'		and s.cod_articulo=:P354_COD_ARTICULO',
'		AND S.IND_ARMADO=''S'';',
'	EXCEPTION',
'		WHEN OTHERS THEN',
'		 :P0_MENSAJE_VALIDACION := ''El producto no requiere Armado'';',
'		  :P354_IND_PRODUCTO_ARMADO:=''N'';',
'		end;',
'end if;',
'	'))
,p_attribute_02=>'P354_IND_PRODUCTO_ARMADO,P354_COD_EMPRESA,P354_COD_ARTICULO'
,p_attribute_03=>'P0_MENSAJE_VALIDACION,P354_IND_PRODUCTO_ARMADO'
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
 p_id=>wwv_flow_imp.id(97258994793855721)
,p_name=>'Guarda datos'
,p_event_sequence=>370
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P354_AGREGAR_DETALLES'
,p_condition_element=>'P354_AGREGAR_DETALLES'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'1'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(97259416292855721)
,p_event_id=>wwv_flow_imp.id(97258994793855721)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P354_TOTAL_IVA := replace(:P354_TOTAL_IVA,''.'');',
':P354_SUBTOTAL := replace(:P354_SUBTOTAL,''.'');',
':P354_TOTAL   := replace(:P354_TOTAL,''.'');',
':P354_PRECIO_UNITARIO  := replace(:P354_PRECIO_UNITARIO,''.'');',
':P354_TOTAL_IVA_1 := replace(:P354_TOTAL_IVA_1,''.'');',
':P354_MONTO_TOTAL := replace(:P354_MONTO_TOTAL,''.'');',
':P354_PORC_DESCUENTO := replace(:P354_PORC_DESCUENTO,''.'');',
':P354_GRAVADAS_PARCIAL := replace(:P354_GRAVADAS_PARCIAL,''.'');',
':P354_EXENTAS_PARCIAL := replace(:P354_EXENTAS_PARCIAL,''.'');',
':P354_PORC_IVA_1 := replace(:P354_PORC_IVA_1,''.'');',
'inv.vtpresupuesto.pr_consulta_promocion(p_var_cod_empresa => :P354_COD_EMPRESA,',
'      p_det_cod_articulo         => :P354_COD_ARTICULO,',
'      p_det_ind_promo            => :P354_IND_PROMO,',
'      p_det_nro_promo            => :P354_NRO_PROMO_1,',
'      p_var_cantidad_mix         => :P354_CANTIDAD_MIX,',
'      p_var_cod_cliente          => :P354_COD_CLIENTE,',
'      p_det_cantidad             => :P354_CANTIDAD,',
'      p_cab_cod_lista_precio     => :P354_COD_LISTA_PRECIO,',
'      p_porc_descuento           => :P354_PORC_DESCUENTO,',
'      p_cab_cod_sucursal         => :P354_COD_SUCURSAL,',
'      p_cab_cod_art_aux          => :P354_COD_ART_AUX,',
'      p_var_cantidad_promo_mix   => :P354_CANTIDAD_PROMO_MIX,',
'      p_det_orden                => :P354_ORDEN,',
'      p_var_cod_moneda_base      => :P354_COD_MONEDA_BASE,',
'      p_var_recargo              => :P354_RECARGO,',
'      p_var_cod_moneda_precio    => :P354_COD_MONEDA_PRECIO,',
'      p_cab_cambio_moneda_precio => :P354_CAMBIO_MONEDA_PRECIO,',
'      p_cab_tip_cambio           => :P354_TIP_CAMBIO_COMPRA,',
'      p_cab_decimales            => :P354_DECIMALES,',
'      p_cab_fec_comprobante      => :P354_FEC_COMPROBANTE,',
'      p_cab_tipo_impuesto        => :P354_TIPO_IMPUESTO,',
'      p_cab_gravadas_parcial     => :P354_GRAVADAS_PARCIAL,',
'      p_cab_exentas_parcial      => :P354_EXENTAS_PARCIAL,',
'      p_mensaje_error            => :P0_MENSAJE_VALIDACION,',
'      p_cab_ind_exento_ad        => :P354_IND_EXENTO_AD,',
'      p_cab_cod_moneda           => :P354_COD_MONEDA,',
'      p_cab_tip_cambio_compra    => :P354_TIP_CAMBIO_COMPRA,',
'      p_var_promo_cocina         => :P354_PROMO_COCINA,',
'      p_det_cod_art_corto        => :P354_COD_ART_CORTO,',
'      p_det_precio_unitario      => :P354_PRECIO_UNITARIO,',
'      p_det_porc_recargo         => :P354_PORC_RECARGO,',
'      p_det_precio_lista         => :P354_PRECIO_LISTA,',
'      p_det_porc_iva             => :P354_PORC_IVA_1,',
'      p_det_cod_iva              => :P354_COD_IVA);',
':P354_DESCUENTO_1 := round((nvl(:P354_CANTIDAD, 0) *',
'                           (nvl(:P354_PRECIO_UNITARIO, 0)) *',
'                           (nvl(:P354_PORC_DESCUENTO, 0) / 100)),',
'                           nvl(:P354_DECIMALES, 0));',
'',
':P354_RECARGO_1 := round((nvl(:P354_CANTIDAD, 0) *',
'                           (nvl(:P354_PRECIO_UNITARIO, 0)) *',
'                           (nvl(:P354_RECARGO, 0) / 100)),',
'                           nvl(:P354_DECIMALES, 0));',
'',
'IF :P354_COD_MONEDA = ''1'' THEN ',
'    :P354_PRECIO_UNITARIO  := TO_CHAR(:P354_PRECIO_UNITARIO,''999G999G999G999G999G999G990'');',
'    :P354_TOTAL_IVA_1 := TO_CHAR(:P354_TOTAL_IVA_1,''999G999G999G999G999G999G990'');',
'    :P354_MONTO_TOTAL := TO_CHAR(:P354_MONTO_TOTAL,''999G999G999G999G999G999G990'');',
'    :P354_TOTAL_IVA := TO_CHAR(:P354_TOTAL_IVA,''999G999G999G999G999G999G990'');',
'    :P354_SUBTOTAL := TO_CHAR(:P354_SUBTOTAL,''999G999G999G999G999G999G990'');',
'    :P354_TOTAL   := TO_CHAR(:P354_TOTAL,''999G999G999G999G999G999G990'');',
'ELSE ',
'    :P354_PRECIO_UNITARIO  := TO_CHAR(:P354_PRECIO_UNITARIO,''999G999G999G999G990D00'');',
'    :P354_TOTAL_IVA_1 := TO_CHAR(:P354_TOTAL_IVA_1,''999G999G999G999G990D00'');',
'    :P354_MONTO_TOTAL := TO_CHAR(:P354_MONTO_TOTAL,''999G999G999G999G990D00'');',
'    :P354_TOTAL_IVA := TO_CHAR(:P354_TOTAL_IVA,''999G999G999G999G990D00'');',
'    :P354_SUBTOTAL := TO_CHAR(:P354_SUBTOTAL,''999G999G999G999G990D00'');',
'    :P354_TOTAL   := TO_CHAR(:P354_TOTAL,''999G999G999G999G990D00'');',
'END IF;'))
,p_attribute_02=>'P354_COD_EMPRESA,P354_COD_ARTICULO,P354_NRO_PROMO_1,P354_CANTIDAD_MIX,P354_COD_CLIENTE,P354_CANTIDAD, P354_COD_LISTA_PRECIO,P354_PORC_DESCUENTO,P354_COD_SUCURSAL,P354_COD_ART_AUX,P354_CANTIDAD_PROMO_MIX,P354_ORDEN, P354_COD_MONEDA_BASE,P354_RECARGO,P'
||'354_COD_MONEDA_PRECIO,P354_CAMBIO_MONEDA_PRECIO,P354_TIP_CAMBIO, P354_DECIMALES,P354_FEC_COMPROBANTE,P354_TIPO_IMPUESTO,P354_GRAVADAS_PARCIAL,P354_EXENTAS_PARCIAL,P354_IND_EXENTO_AD, P354_COD_MONEDA,P354_TIP_CAMBIO_COMPRA,P354_COD_ART_CORTO,P354_PREC'
||'IO_UNITARIO,P354_PORC_RECARGO,P354_PRECIO_LISTA, P354_PORC_IVA_1,P354_COD_IVA'
,p_attribute_03=>'P354_DESCUENTO_1'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(97259939552855722)
,p_event_id=>wwv_flow_imp.id(97258994793855721)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P354_NRO_PROMO_1 := NULL;',
':P354_ES_PROMO_1 :=  NULL;',
'',
'',
'IF :P354_COD_MONEDA = ''1'' THEN ',
'    :P354_PRECIO_UNITARIO  := TO_CHAR(REPLACE(:P354_PRECIO_UNITARIO, ''.''),''999G999G999G999G999G999G990'');',
'    :P354_TOTAL_IVA_1 := TO_CHAR(REPLACE(:P354_TOTAL_IVA_1, ''.''),''999G999G999G999G999G999G990'');',
'    :P354_MONTO_TOTAL := TO_CHAR(REPLACE(:P354_MONTO_TOTAL, ''.''),''999G999G999G999G999G999G990'');',
'    :P354_TOTAL_IVA := TO_CHAR(REPLACE(:P354_TOTAL_IVA, ''.''),''999G999G999G999G999G999G990'');',
'    :P354_SUBTOTAL := TO_CHAR(REPLACE(:P354_SUBTOTAL, ''.''),''999G999G999G999G999G999G990'');',
'    :P354_TOTAL   := TO_CHAR(REPLACE(:P354_TOTAL, ''.''),''999G999G999G999G999G999G990'');',
'ELSE ',
'    :P354_PRECIO_UNITARIO  := TO_CHAR(REPLACE(:P354_PRECIO_UNITARIO, ''.''),''999G999G999G999G990D00'');',
'    :P354_TOTAL_IVA_1 := TO_CHAR(REPLACE(:P354_TOTAL_IVA_1, ''.''),''999G999G999G999G990D00'');',
'    :P354_MONTO_TOTAL := TO_CHAR(REPLACE(:P354_MONTO_TOTAL, ''.''),''999G999G999G999G990D00'');',
'    :P354_TOTAL_IVA := TO_CHAR(REPLACE(:P354_TOTAL_IVA, ''.''),''999G999G999G999G990D00'');',
'    :P354_SUBTOTAL := TO_CHAR(REPLACE(:P354_SUBTOTAL, ''.''),''999G999G999G999G990D00'');',
'    :P354_TOTAL   := TO_CHAR(REPLACE(:P354_TOTAL, ''.''),''999G999G999G999G990D00'');',
'END IF;',
'apex_collection.add_member(p_collection_name => ''TMP_VTPEDIDO'',',
'     p_c001            => :P354_COD_EMPRESA,',
'     p_c002            => :P354_TIP_COMPROBANTE,',
'     p_c003            => :P354_SER_COMPROBANTE,',
'     p_c004            => ''A'',',
'     p_c005            => :P354_COD_ARTICULO,',
'     p_c006            => :P354_CANTIDAD,',
'     p_c007            => :P354_CANTIDAD_FACTURADA_1,',
'     p_c008            => :P354_MONTO_TOTAL,',
'     p_c009            => :P354_TOTAL_IVA_1,',
'     p_c010            => :P354_PRECIO_LISTA,',
'     p_c011            => :P354_DESCUENTO_1,',
'     p_c012            =>  :P354_PRECIO_UNITARIO,',
'     p_c013            => :P354_PORC_DESCUENTO,',
'     p_c014            => :P354_COSTO_PROMEDIO_REF,',
'     p_c015            => :P354_COSTO_PROMEDIO,',
'     p_c016            => :P354_COSTO_CON,',
'     p_c017            => :P354_COD_UNIDAD_MEDIDA,',
'     p_c018            => :P354_CANTIDAD_UB,',
'     p_c019            => nvl(:P354_PORC_RECARGO, ''0,00''),',
'     p_c020            => NVL(:P354_RECARGO_AUX, ''0,00''),',
'     p_c021            => null,',
'     p_c022            => :P354_PORC_IVA_1,',
'     p_c023            => :P354_ORDEN,',
'     p_c024            => :P354_COD_IVA,',
'     p_c025            => :P354_CONTROL_FIN,',
'     p_c026            => :P354_COD_ART_CORTO,',
'     p_c027            => :P354_CANTIDAD_PENDIENTE,',
'     p_c028            => :P354_COD_MOTIVO_ANU_1,',
'     p_c029            => :P354_IND_NO_DESCUENTO,',
'     p_c030            => :P354_VOLUMEN,',
'     p_c031            => NVL(:P354_ES_PROMO_1, ''N''),',
'     p_c032            => :P354_NRO_PROMO,',
'     p_c033            => :P354_DESC_ARTICULO,',
'     p_c034            => :P354_VERIFICADO,',
'     p_c035            => :P354_IND_PRODUCTO_ARMADO,',
'     p_c036            => :P354_IND_PROMO,',
'     p_c037            => :P354_IMAGEN,',
'     p_c038            => :P354_CANTIDAD_ENTREGADA,',
'     p_c039            => :P354_COD_ESTABLE,',
'     p_c040            => :P354_MONTO_GRAVADA_10,',
'     p_c041            => :P354_MONTO_GRAVADA_5,',
'     p_c042            => :P354_MONTO_EXENTA,',
'     p_c043            => :P354_ARTICULO_REGALO_PROMO,',
'     p_c044            => :P354_COD_ARTICULO_PROMO_ANT_1,',
'     p_c045            => :P354_NRO_PEDIDO_PROMO_ANT_1,',
'     p_c046            => null,',
'     p_c047            => null,',
'     p_c048            => :P354_TIP_FACTURA,',
'     p_c049            => :P354_SER_FACTURA,',
'     p_c050            => :P354_NRO_FACTURA,',
'     p_n001            => null,',
'     p_n002            => null,',
'     p_n003            => to_number(replace(:P354_IVA_ANT,''.'')),',
'     p_n005            => null);--:P354_PESO);',
'',
'     :P354_PORC_RECARGO := ''0,00'';',
'     :P354_RECARGO_AUX := NULL;',
'     :P354_MONTO_GRAVADA_10 := null;'))
,p_attribute_02=>'P354_COD_EMPRESA,P354_TIP_COMPROBANTE,P354_SER_COMPROBANTE,P354_NRO_COMPROBANTE,P354_COD_ARTICULO,P354_CANTIDAD,                  P354_CANTIDAD_FACTURADA_1,P354_MONTO_TOTAL,P354_TOTAL_IVA_1,P354_PRECIO_LISTA,P354_DESCUENTO_1,P354_PRECIO_REAL,        '
||'          P354_PORC_DESCUENTO,P354_COSTO_PROMEDIO_REF,P354_COSTO_PROMEDIO,P354_COSTO_CON,P354_COD_UNIDAD_MEDIDA,P354_CANTIDAD_UB,                  P354_PORC_RECARGO,P354_RECARGO_1,P354_PORC_IVA_1,P354_ORDEN,P354_COD_IVA,P354_CONTROL_FIN,P354_COD_ART_'
||'CORTO,                  P354_CANTIDAD_PENDIENTE,P354_COD_MOTIVO_ANU_1,P354_PESO,P354_VOLUMEN,P354_ES_PROMO_1,P354_NRO_PROMO_1,                  P354_VERIFICADO,P354_IND_PRODUCTO_ARMADO,P354_IND_PROMO,P354_IMAGEN,P354_CANTIDAD_ENTREGADA,P354_COD_ESTAB'
||'LE,                  P354_MONTO_GRAVADA_10,P354_MONTO_GRAVADA_5,P354_MONTO_EXENTA,P354_ARTICULO_REGALO_PROMO,P354_COD_ARTICULO_PROMO_ANT_1,                  P354_NRO_PEDIDO_PROMO_ANT_1,P354_TIP_FACTURA,P354_SER_FACTURA,P354_NRO_FACTURA,P354_COD_GRUPO'
||'_ANT,P354_COD_ORIGEN_ART,P354_DESC_ARTICULO,P354_PRECIO_UNITARIO,P354_NRO_PROMO,P354_COD_MONEDA,P354_RECARGO_AUX'
,p_attribute_03=>'P354_PORC_RECARGO,P354_RECARGO_AUX,P354_MONTO_GRAVADA_10'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(97260463853855722)
,p_event_id=>wwv_flow_imp.id(97258994793855721)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(165054418161834476)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(97260911247855722)
,p_event_id=>wwv_flow_imp.id(97258994793855721)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(151967092667185693)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(97261404425855723)
,p_event_id=>wwv_flow_imp.id(97258994793855721)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P354_COD_ART_CORTO,P354_COD_ARTICULO,P354_DESC_ARTICULO,P354_CANTIDAD,P354_PRECIO_UNITARIO,P354_PORC_DESCUENTO,P354_PORC_RECARGO,P354_TOTAL_IVA_1,P354_MONTO_TOTAL,P354_RECARGO_1,P354_AGREGAR_DETALLES'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(97261991859855723)
,p_event_id=>wwv_flow_imp.id(97258994793855721)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT    sum(to_number(replace(nvl(c008, 0), ''.'')))   AS monto_total,',
'          sum(to_number(replace(nvl(c009, 0), ''.'')))  AS total_iva',
'INTO :P354_SUBTOTAL, :P354_TOTAL_IVA',
'FROM apex_collections',
'WHERE collection_name = ''TMP_VTPEDIDO''',
'AND C004 <> ''D'';',
'',
'IF :P354_COD_MONEDA = ''1'' THEN ',
'    :P354_TOTAL := TO_CHAR(TO_NUMBER(REPLACE(:P354_SUBTOTAL,''.'')) + TO_NUMBER(REPLACE(:P354_TOTAL_IVA,''.'')), ''999G999G999G999G999G999G990'');',
'    :P354_SUBTOTAL := TO_CHAR(:P354_SUBTOTAL, ''999G999G999G999G999G999G990'');',
'    :P354_TOTAL_IVA := TO_CHAR(:P354_TOTAL_IVA, ''999G999G999G999G999G999G990'');',
'ELSE ',
'    :P354_TOTAL := TO_CHAR(TO_NUMBER(REPLACE(:P354_SUBTOTAL,''.'')) + TO_NUMBER(REPLACE(:P354_TOTAL_IVA,''.'')), ''999G999G999G999G990D00'');',
'    :P354_SUBTOTAL := TO_CHAR(:P354_SUBTOTAL, ''999G999G999G999G990D00'');',
'    :P354_TOTAL_IVA := TO_CHAR(:P354_TOTAL_IVA, ''999G999G999G999G990D00'');',
'END IF;'))
,p_attribute_02=>'P354_SUBTOTAL,P354_TOTAL,P354_COD_MONEDA'
,p_attribute_03=>'P354_SUBTOTAL,P354_TOTAL_IVA,P354_TOTAL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(143658600561222710)
,p_event_id=>wwv_flow_imp.id(97258994793855721)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$("#apex_wait_overlay").remove(); ',
'$(".u-Processing").remove(); '))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(97262444493855723)
,p_event_id=>wwv_flow_imp.id(97258994793855721)
,p_event_result=>'TRUE'
,p_action_sequence=>90
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'inv.vtpresupuesto.pr_calculos_fletes(p_cab_tip_cambio    => :P354_TIP_CAMBIO,',
'                                p_cod_empresa       => :P354_COD_EMPRESA,',
'                                p_cod_flete         => :P354_COD_FLETE,',
'                                p_cab_flete_total   => :P354_FLETE_TOTAL,',
'                                p_cab_total         => TO_NUMBER(REPLACE(:P354_TOTAL,''.'')),',
'                                p_det_total_peso    => TO_NUMBER(REPLACE(:P354_TOTAL_PESO,''.'')),',
'                                p_det_total_volumen => TO_NUMBER(REPLACE(:P354_TOTAL_CANTIDAD,''.'')));',
'',
':P354_FLETE_TOTAL := TO_CHAR(:P354_FLETE_TOTAL, ''999G999G999G999G999G999G990'');'))
,p_attribute_02=>'P354_TIP_CAMBIO,P354_COD_EMPRESA,P354_COD_FLETE,P354_TOTAL,P354_TOTAL_PESO,P354_TOTAL_CANTIDAD'
,p_attribute_03=>'P354_FLETE_TOTAL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(97262815418855723)
,p_name=>'Cerrar Modal'
,p_event_sequence=>380
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(97180381555855680)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(97263371114855724)
,p_event_id=>wwv_flow_imp.id(97262815418855723)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(165054418161834476)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(97263878955855724)
,p_event_id=>wwv_flow_imp.id(97262815418855723)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P354_COD_ART_CORTO,P354_COD_ARTICULO,P354_DESC_ARTICULO,P354_CANTIDAD,P354_PRECIO_UNITARIO,P354_PORC_DESCUENTO,P354_PORC_RECARGO,P354_TOTAL_IVA_1,P354_MONTO_TOTAL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(97264319051855724)
,p_event_id=>wwv_flow_imp.id(97262815418855723)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(151967092667185693)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(97264860362855724)
,p_event_id=>wwv_flow_imp.id(97262815418855723)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'document.getElementById(''P354_COD_ART_CORTO'').readOnly = false;',
'document.getElementById(''P354_COD_ARTICULO'').readOnly = false;',
'document.getElementById(''P354_DESC_ARTICULO'').readOnly = false;'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(97265394409855724)
,p_event_id=>wwv_flow_imp.id(97262815418855723)
,p_event_result=>'TRUE'
,p_action_sequence=>90
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT    sum(to_number(replace(nvl(c008, 0), ''.'')))   AS monto_total,',
'          sum(to_number(replace(nvl(c009, 0), ''.'')))  AS total_iva',
'INTO :P354_SUBTOTAL, :P354_TOTAL_IVA',
'FROM apex_collections',
'WHERE collection_name = ''TMP_VTPEDIDO'';',
'',
'',
':P354_TOTAL := TO_CHAR(TO_NUMBER(REPLACE(:P354_SUBTOTAL,''.'')) + TO_NUMBER(REPLACE(:P354_TOTAL_IVA,''.'')), ''999G999G999G999G999G999G990'');',
':P354_SUBTOTAL := TO_CHAR(:P354_SUBTOTAL, ''999G999G999G999G999G999G990'');',
':P354_TOTAL_IVA := TO_CHAR(:P354_TOTAL_IVA, ''999G999G999G999G999G999G990'');'))
,p_attribute_02=>'P354_SUBTOTAL,P354_TOTAL'
,p_attribute_03=>'P354_SUBTOTAL,P354_TOTAL_IVA,P354_TOTAL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(97265778318855724)
,p_name=>'Obtiene secuencia de la grilla'
,p_event_sequence=>390
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(151967092667185693)
,p_bind_type=>'bind'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|interactivegridselectionchange'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(97266276776855725)
,p_event_id=>wwv_flow_imp.id(97265778318855724)
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
'apex.item( "P354_SECUENCIA").setValue (i_paginasids);',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(97266652649855725)
,p_name=>'Obtiene descuentos'
,p_event_sequence=>400
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P354_SECUENCIA'
,p_condition_element=>'P354_SECUENCIA'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(97267191829855725)
,p_event_id=>wwv_flow_imp.id(97266652649855725)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE ',
'    v_cod_articulo  VARCHAR2(500);',
'    v_recargo   VARCHAR2(50);',
'BEGIN ',
':P354_DET_COMENTARIO := NULL;',
':P354_ARTICULO_PAR := NULL;',
'',
'begin',
'SELECT  C005, C011, C020, C031, c032, C030, N005',
'INTO v_cod_articulo, :P354_DESCUENTO, :P354_RECARGO_AUX,:P354_ES_PROMO, :P354_NRO_PROMO, :P354_TOTAL_CANTIDAD, :P354_TOTAL_PESO',
'FROM apex_collections',
'WHERE collection_name = ''TMP_VTPEDIDO''',
'AND SEQ_ID = :P354_SECUENCIA;',
'EXCEPTION ',
'    WHEN NO_DATA_FOUND THEN ',
'        NULL;',
'    WHEN OTHERS THEN ',
'        NULL;',
'END;',
'',
'IF :P354_COD_MONEDA = ''1'' THEN ',
':P354_DESCUENTO := TO_CHAR(:P354_DESCUENTO , ''999G999G999G999G999G999G990'');',
':P354_RECARGO_AUX  := TO_CHAR(:P354_RECARGO_AUX , ''999G999G999G999G999G999G990'');',
':P354_RECARGO := ''0,00'';',
':P354_TOTAL_CANTIDAD := TO_CHAR(:P354_TOTAL_CANTIDAD , ''999G999G999G999G990D00'');',
':P354_TOTAL_PESO := TO_CHAR(:P354_TOTAL_PESO , ''999G999G999G999G990D00'');',
'ELSE ',
':P354_DESCUENTO := TO_CHAR(:P354_DESCUENTO , ''999G999G999G999G990D00'');',
':P354_RECARGO_AUX  := TO_CHAR(:P354_RECARGO_AUX , ''999G999G999G999G990D00'');',
':P354_TOTAL_CANTIDAD := TO_CHAR(:P354_TOTAL_CANTIDAD , ''999G999G999G999G990D00'');',
':P354_TOTAL_PESO := TO_CHAR(:P354_TOTAL_PESO , ''999G999G999G999G990D00'');',
'END  IF;',
':P354_DET_COMENTARIO := (f_mensaje_pedido(:P354_COD_CLIENTE,',
'                                            :P354_COD_CONDICION_VENTA,',
'                                            :P354_COD_LISTA_PRECIO,',
'                                            1,',
'                                            v_cod_articulo, ',
'                                            0));',
'IF :P354_NRO_PROMO IS NOT NULL THEN ',
'    :P354_ARTICULO_PAR := v_cod_articulo;',
'END IF;',
'',
'',
'BEGIN',
'inv.vtpresupuesto.pr_ped_pend(p_det_stock_actual => :P354_STOCK_ACTUAL,',
'                           p_var_cod_empresa  => ''1'',',
'                           p_det_cod_articulo => v_cod_articulo,',
'                           p_det_stock_reserv => :P354_STOCK_RESERV);',
'EXCEPTION ',
'    WHEN NO_DATA_FOUND THEN ',
'        NULL;',
'    WHEN OTHERS THEN ',
'        NULL;',
'END;',
'EXCEPTION ',
'    WHEN NO_DATA_FOUND THEN ',
'        NULL;',
'    WHEN OTHERS THEN ',
'        NULL;',
'END;'))
,p_attribute_02=>'P354_SECUENCIA,P354_COD_CLIENTE,P354_COD_CONDICION_VENTA,P354_COD_LISTA_PRECIO,P354_STOCK_ACTUAL,P354_STOCK_RESERV,P354_COD_MONEDA'
,p_attribute_03=>'P354_DESCUENTO,P354_RECARGO,P354_NRO_PROMO,P354_ES_PROMO,P354_DET_COMENTARIO,P354_ARTICULO_PAR,P354_TOTAL_PESO,P354_TOTAL_CANTIDAD,P354_STOCK_ACTUAL,P354_STOCK_RESERV,P354_RECARGO_AUX'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(97267638433855725)
,p_event_id=>wwv_flow_imp.id(97266652649855725)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P354_SECUENCIA'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(97268023177855725)
,p_name=>'Agrega botones'
,p_event_sequence=>410
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(97268574072855726)
,p_event_id=>wwv_flow_imp.id(97268023177855725)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'PLUGIN_COM.FOS.INTERACTIVE_GRID_ADD_BUTTON'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(151967092667185693)
,p_attribute_01=>'toolbar-actions4'
,p_attribute_02=>'first'
,p_attribute_05=>'Agregar'
,p_attribute_06=>'fa-plus'
,p_attribute_09=>'execute-javascript-code'
,p_attribute_11=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var cliente =  $v("P354_COD_CLIENTE");',
'var lista_precio = $v("P354_COD_LISTA_PRECIO"); ',
'var cod_sucursal_dist = $v("P354_COD_LISTA_PRECIO"); ',
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
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(97268994165855726)
,p_name=>'Elimina registros de la grilla'
,p_event_sequence=>420
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'.delete-irrow'
,p_bind_type=>'live'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(97269407734855726)
,p_event_id=>wwv_flow_imp.id(97268994165855726)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P354_ELIMINAR'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'$(this.triggeringElement).parent().data(''id_1'')'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(97269912876855727)
,p_event_id=>wwv_flow_imp.id(97268994165855726)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_collection.update_member_attribute(p_collection_name=> ',
'                        ''TMP_VTPEDIDO'',',
'                         p_seq => :P354_ELIMINAR,',
'                         p_attr_number => ''4'',',
'                         p_attr_value=>''D'');',
''))
,p_attribute_02=>'P354_ELIMINAR'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(97270472306855727)
,p_event_id=>wwv_flow_imp.id(97268994165855726)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(151967092667185693)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(97270938584855727)
,p_event_id=>wwv_flow_imp.id(97268994165855726)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN ',
'SELECT    sum(to_number(replace(nvl(c008, 0), ''.'')))   AS monto_total,',
'          sum(to_number(replace(nvl(c009, 0), ''.'')))  AS total_iva',
'INTO :P354_SUBTOTAL, :P354_TOTAL_IVA',
'FROM apex_collections',
'WHERE collection_name = ''TMP_VTPEDIDO''',
'AND c004 <> ''D'';',
'EXCEPTION ',
'    WHEN NO_DATA_FOUND THEN ',
'        :P354_SUBTOTAL := 0;',
'        :P354_TOTAL_IVA := 0;',
'        :P354_DESCUENTO := 0;',
'        :P354_RECARGO_AUX := 0;',
'        :P354_TOTAL_CANTIDAD := 0;',
'        :P354_TOTAL_PESO := 0;',
'    WHEN OTHERS  THEN ',
'        :P354_SUBTOTAL := 0;',
'        :P354_TOTAL_IVA := 0;',
'        :P354_DESCUENTO := 0;',
'        :P354_RECARGO_AUX := 0;',
'        :P354_TOTAL_CANTIDAD := 0;',
'        :P354_TOTAL_PESO := 0;',
'END;',
'',
'',
':P354_TOTAL := TO_CHAR(TO_NUMBER(REPLACE(:P354_SUBTOTAL,''.'')) + TO_NUMBER(REPLACE(:P354_TOTAL_IVA,''.'')), ''999G999G999G999G999G999G990'');',
':P354_SUBTOTAL := TO_CHAR(:P354_SUBTOTAL, ''999G999G999G999G999G999G990'');',
':P354_TOTAL_IVA := TO_CHAR(:P354_TOTAL_IVA, ''999G999G999G999G999G999G990'');',
''))
,p_attribute_02=>'P354_SUBTOTAL,P354_TOTAL'
,p_attribute_03=>'P354_SUBTOTAL,P354_TOTAL_IVA,P354_TOTAL,P354_DESCUENTO,P354_RECARGO_AUX,P354_TOTAL_CANTIDAD,P354_TOTAL_PESO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(97271348349855727)
,p_name=>'Modificar registros de la grilla'
,p_event_sequence=>430
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'.update-irrow'
,p_bind_type=>'live'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(97271847691855728)
,p_event_id=>wwv_flow_imp.id(97271348349855727)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P354_MODIFICACION'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'$(this.triggeringElement).parent().data(''id_1'')'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(97272385779855728)
,p_event_id=>wwv_flow_imp.id(97271348349855727)
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
'        into :P354_COD_ARTICULO,',
'             :P354_CANTIDAD,',
'             :P354_MONTO_TOTAL,',
'             :P354_TOTAL_IVA_1,',
'             :P354_DESCUENTO_1,',
'             :P354_PRECIO_UNITARIO,',
'             :P354_PORC_DESCUENTO,',
'             :P354_PORC_RECARGO,',
'             :P354_DESC_ARTICULO,',
'             :P354_COD_ART_CORTO',
'        FROM apex_collections',
'       WHERE collection_name = ''TMP_VTPEDIDO''',
'       and seq_id = :P354_MODIFICACION;'))
,p_attribute_02=>'P354_MODIFICACION'
,p_attribute_03=>'P354_COD_ARTICULO,P354_CANTIDAD,P354_MONTO_TOTAL,P354_TOTAL_IVA_1,P354_DESCUENTO_1,P354_PRECIO_UNITARIO,P354_PORC_DESCUENTO,P354_PORC_RECARGO,P354_DESC_ARTICULO,P354_COD_ART_CORTO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(97272825403855728)
,p_event_id=>wwv_flow_imp.id(97271348349855727)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(151967092667185693)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(97273324883855728)
,p_event_id=>wwv_flow_imp.id(97271348349855727)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT    sum(to_number(replace(nvl(c008, 0), ''.'')))   AS monto_total,',
'          sum(to_number(replace(nvl(c009, 0), ''.'')))  AS total_iva',
'INTO :P354_SUBTOTAL, :P354_TOTAL_IVA',
'FROM apex_collections',
'WHERE collection_name = ''TMP_VTPEDIDO'';',
'',
'',
':P354_TOTAL := TO_CHAR(TO_NUMBER(REPLACE(:P354_SUBTOTAL,''.'')) + TO_NUMBER(REPLACE(:P354_TOTAL_IVA,''.'')), ''999G999G999G999G999G999G990'');',
':P354_SUBTOTAL := TO_CHAR(:P354_SUBTOTAL, ''999G999G999G999G999G999G990'');',
':P354_TOTAL_IVA := TO_CHAR(:P354_TOTAL_IVA, ''999G999G999G999G999G999G990'');'))
,p_attribute_02=>'P354_SUBTOTAL,P354_TOTAL'
,p_attribute_03=>'P354_SUBTOTAL,P354_TOTAL_IVA,P354_TOTAL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(97273805394855728)
,p_event_id=>wwv_flow_imp.id(97271348349855727)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'javascript:openModal(''detalle_principal'');',
''))
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
 p_id=>wwv_flow_imp.id(97274209591855729)
,p_name=>'Calcula totalizadores'
,p_event_sequence=>440
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'.ui-dialog-titlebar-close'
,p_bind_type=>'live'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(97274700818855729)
,p_event_id=>wwv_flow_imp.id(97274209591855729)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(165054418161834476)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(97275223386855729)
,p_event_id=>wwv_flow_imp.id(97274209591855729)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P354_COD_ART_CORTO,P354_COD_ARTICULO,P354_DESC_ARTICULO,P354_CANTIDAD,P354_PRECIO_UNITARIO,P354_PORC_DESCUENTO,P354_PORC_RECARGO,P354_TOTAL_IVA_1,P354_MONTO_TOTAL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(97275760198855729)
,p_event_id=>wwv_flow_imp.id(97274209591855729)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(151967092667185693)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(97276268975855729)
,p_event_id=>wwv_flow_imp.id(97274209591855729)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'document.getElementById(''P354_COD_ART_CORTO'').readOnly = false;',
'document.getElementById(''P354_COD_ARTICULO'').readOnly = false;',
'document.getElementById(''P354_DESC_ARTICULO'').readOnly = false;'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(97276799711855730)
,p_event_id=>wwv_flow_imp.id(97274209591855729)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT    sum(to_number(replace(nvl(c008, 0), ''.'')))   AS monto_total,',
'          sum(to_number(replace(nvl(c009, 0), ''.'')))  AS total_iva',
'INTO :P354_SUBTOTAL, :P354_TOTAL_IVA',
'FROM apex_collections',
'WHERE collection_name = ''TMP_VTPEDIDO'';',
'',
'',
':P354_TOTAL := TO_CHAR(TO_NUMBER(REPLACE(:P354_SUBTOTAL,''.'')) + TO_NUMBER(REPLACE(:P354_TOTAL_IVA,''.'')), ''999G999G999G999G999G999G990'');',
':P354_SUBTOTAL := TO_CHAR(:P354_SUBTOTAL, ''999G999G999G999G999G999G990'');',
':P354_TOTAL_IVA := TO_CHAR(:P354_TOTAL_IVA, ''999G999G999G999G999G999G990'');'))
,p_attribute_02=>'P354_SUBTOTAL,P354_TOTAL'
,p_attribute_03=>'P354_SUBTOTAL,P354_TOTAL_IVA,P354_TOTAL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(97277109600855730)
,p_name=>'Imagen de detalle'
,p_event_sequence=>450
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'.imagen-irrow'
,p_bind_type=>'live'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(97277606654855730)
,p_event_id=>wwv_flow_imp.id(97277109600855730)
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
 p_id=>wwv_flow_imp.id(97278197021855730)
,p_event_id=>wwv_flow_imp.id(97277109600855730)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'javascript:openModal(''imagen'');',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(97278520781855730)
,p_name=>'Oculta botones'
,p_event_sequence=>460
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P354_MODIFICACION'
,p_condition_element=>'P354_MODIFICACION'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(97279020517855730)
,p_event_id=>wwv_flow_imp.id(97278520781855730)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'document.getElementById(''btn_editar'').style.visibility = ''visible'';',
'document.getElementById(''btn_agregar'').style.visibility = ''hidden'';',
'document.getElementById(''P354_COD_ART_CORTO'').readOnly = true;',
'document.getElementById(''P354_COD_ARTICULO'').readOnly = true;',
'document.getElementById(''P354_DESC_ARTICULO'').readOnly = true;',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(97279467290855731)
,p_name=>'Guarda Datos '
,p_event_sequence=>470
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P354_AGREGAR_DETALLES_1'
,p_condition_element=>'P354_AGREGAR_DETALLES_1'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'1'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(134815412873775548)
,p_event_id=>wwv_flow_imp.id(97279467290855731)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P354_TOTAL_IVA := replace(:P354_TOTAL_IVA,''.'');',
':P354_SUBTOTAL := replace(:P354_SUBTOTAL,''.'');',
':P354_TOTAL   := replace(:P354_TOTAL,''.'');',
':P354_PRECIO_UNITARIO  := replace(:P354_PRECIO_UNITARIO,''.'');',
':P354_TOTAL_IVA_1 := replace(:P354_TOTAL_IVA_1,''.'');',
':P354_MONTO_TOTAL := replace(:P354_MONTO_TOTAL,''.'');',
'',
'IF :P354_COD_MONEDA = ''1'' THEN ',
'    :P354_PRECIO_UNITARIO  := TO_CHAR(:P354_PRECIO_UNITARIO,''999G999G999G999G999G999G990'');',
'    :P354_TOTAL_IVA_1 := TO_CHAR(:P354_TOTAL_IVA_1,''999G999G999G999G999G999G990'');',
'    :P354_MONTO_TOTAL := TO_CHAR(:P354_MONTO_TOTAL,''999G999G999G999G999G999G990'');',
'    :P354_TOTAL_IVA := TO_CHAR(:P354_TOTAL_IVA,''999G999G999G999G999G999G990'');',
'    :P354_SUBTOTAL := TO_CHAR(:P354_SUBTOTAL,''999G999G999G999G999G999G990'');',
'    :P354_TOTAL   := TO_CHAR(:P354_TOTAL,''999G999G999G999G999G999G990'');',
'ELSE ',
'    :P354_PRECIO_UNITARIO  := TO_CHAR(:P354_PRECIO_UNITARIO,''999G999G999G999G990D00'');',
'    :P354_TOTAL_IVA_1 := TO_CHAR(:P354_TOTAL_IVA_1,''999G999G999G999G990D00'');',
'    :P354_MONTO_TOTAL := TO_CHAR(:P354_MONTO_TOTAL,''999G999G999G999G990D00'');',
'    :P354_TOTAL_IVA := TO_CHAR(:P354_TOTAL_IVA,''999G999G999G999G990D00'');',
'    :P354_SUBTOTAL := TO_CHAR(:P354_SUBTOTAL,''999G999G999G999G990D00'');',
'    :P354_TOTAL   := TO_CHAR(:P354_TOTAL,''999G999G999G999G990D00'');',
'END IF;',
''))
,p_attribute_02=>'P354_TOTAL_IVA,P354_SUBTOTAL,P354_TOTAL,P354_PRECIO_UNITARIO,P354_TOTAL_IVA_1,P354_MONTO_TOTAL,P354_CANTIDAD,P354_PORC_DESCUENTO,P354_DECIMALES,P354_COD_MONEDA'
,p_attribute_03=>'P354_TOTAL_IVA,P354_SUBTOTAL,P354_TOTAL,P354_PRECIO_UNITARIO,P354_TOTAL_IVA_1,P354_MONTO_TOTAL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(97279999335855731)
,p_event_id=>wwv_flow_imp.id(97279467290855731)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P354_TOTAL_IVA := replace(:P354_TOTAL_IVA,''.'');',
':P354_SUBTOTAL := replace(:P354_SUBTOTAL,''.'');',
':P354_TOTAL   := replace(:P354_TOTAL,''.'');',
':P354_PRECIO_UNITARIO  := replace(:P354_PRECIO_UNITARIO,''.'');',
':P354_TOTAL_IVA_1 := replace(:P354_TOTAL_IVA_1,''.'');',
':P354_MONTO_TOTAL := replace(:P354_MONTO_TOTAL,''.'');',
':P354_TOTAL_IVA := TO_CHAR(:P354_TOTAL_IVA,''999G999G999G999G999G999G990'');',
':P354_SUBTOTAL := TO_CHAR(:P354_SUBTOTAL,''999G999G999G999G999G999G990'');',
':P354_TOTAL   := TO_CHAR(:P354_TOTAL,''999G999G999G999G999G999G990'');',
':P354_PRECIO_UNITARIO  := TO_CHAR(:P354_PRECIO_UNITARIO,''999G999G999G999G999G999G990'');',
':P354_TOTAL_IVA_1 := TO_CHAR(:P354_TOTAL_IVA_1,''999G999G999G999G999G999G990'');',
':P354_MONTO_TOTAL := TO_CHAR(:P354_MONTO_TOTAL,''999G999G999G999G999G999G990'');',
'BEGIN ',
'apex_collection.update_member_attribute(p_collection_name=> ',
'                        ''TMP_VTPEDIDO'',',
'                         p_seq => :P354_MODIFICACION,',
'                         p_attr_number => ''4'',',
'                         p_attr_value=>''U'');',
'',
'apex_collection.update_member_attribute(p_collection_name=> ',
'                        ''TMP_VTPEDIDO'',',
'                         p_seq => :P354_MODIFICACION,',
'                         p_attr_number => ''5'',',
'                         p_attr_value=>:P354_COD_ARTICULO);',
'',
'apex_collection.update_member_attribute(p_collection_name=> ',
'                        ''TMP_VTPEDIDO'',',
'                         p_seq => :P354_MODIFICACION,',
'                         p_attr_number => ''6'',',
'                         p_attr_value=>:P354_CANTIDAD);',
'',
'apex_collection.update_member_attribute(p_collection_name=> ',
'                        ''TMP_VTPEDIDO'',',
'                         p_seq => :P354_MODIFICACION,',
'                         p_attr_number => ''8'',',
'                         p_attr_value => :P354_MONTO_TOTAL);',
'',
'apex_collection.update_member_attribute(p_collection_name=> ',
'                        ''TMP_VTPEDIDO'',',
'                         p_seq => :P354_MODIFICACION,',
'                         p_attr_number => ''9'',',
'                         p_attr_value => :P354_TOTAL_IVA_1);',
'',
'apex_collection.update_member_attribute(p_collection_name=> ',
'                        ''TMP_VTPEDIDO'',',
'                         p_seq => :P354_MODIFICACION,',
'                         p_attr_number => ''11'',',
'                         p_attr_value => :P354_DESCUENTO_1);',
'',
'apex_collection.update_member_attribute(p_collection_name=> ',
'                        ''TMP_VTPEDIDO'',',
'                         p_seq => :P354_MODIFICACION,',
'                         p_attr_number => ''12'',',
'                         p_attr_value => :P354_PRECIO_UNITARIO);',
'',
'apex_collection.update_member_attribute(p_collection_name=> ',
'                        ''TMP_VTPEDIDO'',',
'                         p_seq => :P354_MODIFICACION,',
'                         p_attr_number => ''13'',',
'                         p_attr_value => :P354_PORC_DESCUENTO);',
'',
'apex_collection.update_member_attribute(p_collection_name=> ',
'                        ''TMP_VTPEDIDO'',',
'                         p_seq => :P354_MODIFICACION,',
'                         p_attr_number => ''19'',',
'                         p_attr_value => :P354_PORC_RECARGO);',
'',
'apex_collection.update_member_attribute(p_collection_name=> ',
'                        ''TMP_VTPEDIDO'',',
'                         p_seq => :P354_MODIFICACION,',
'                         p_attr_number => ''33'',',
'                         p_attr_value => :P354_DESC_ARTICULO);',
'',
'',
'apex_collection.update_member_attribute(p_collection_name=> ',
'                        ''TMP_VTPEDIDO'',',
'                         p_seq => :P354_MODIFICACION,',
'                         p_attr_number => ''26'',',
'                         p_attr_value => :P354_COD_ART_CORTO);',
'',
'apex_collection.update_member_attribute(p_collection_name=> ',
'                        ''TMP_VTPEDIDO'',',
'                         p_seq => :P354_MODIFICACION,',
'                         p_attr_number => ''20'',',
'                         p_attr_value => :P354_RECARGO_AUX);',
'END;',
''))
,p_attribute_02=>'P354_MODIFICACION,P354_COD_ARTICULO,P354_CANTIDAD,P354_MONTO_TOTAL,P354_TOTAL_IVA_1,P354_DESCUENTO_1,P354_PRECIO_UNITARIO,P354_PORC_DESCUENTO,P354_PORC_RECARGO,P354_DESC_ARTICULO,P354_COD_ART_CORTO,P354_RECARGO_1,P354_RECARGO_AUX'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(97280425732855731)
,p_event_id=>wwv_flow_imp.id(97279467290855731)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(165054418161834476)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(97280941004855731)
,p_event_id=>wwv_flow_imp.id(97279467290855731)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(151967092667185693)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(97281465771855732)
,p_event_id=>wwv_flow_imp.id(97279467290855731)
,p_event_result=>'TRUE'
,p_action_sequence=>90
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P354_COD_ART_CORTO,P354_COD_ARTICULO,P354_DESC_ARTICULO,P354_CANTIDAD,P354_PRECIO_UNITARIO,P354_PORC_DESCUENTO,P354_PORC_RECARGO,P354_TOTAL_IVA_1,P354_MONTO_TOTAL,P354_RECARGO_1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(97281979801855732)
,p_event_id=>wwv_flow_imp.id(97279467290855731)
,p_event_result=>'TRUE'
,p_action_sequence=>100
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'document.getElementById(''P354_COD_ART_CORTO'').readOnly = false;',
'document.getElementById(''P354_COD_ARTICULO'').readOnly = false;',
'document.getElementById(''P354_DESC_ARTICULO'').readOnly = false;'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(97282491828855732)
,p_event_id=>wwv_flow_imp.id(97279467290855731)
,p_event_result=>'TRUE'
,p_action_sequence=>110
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT    sum(to_number(replace(nvl(c008, 0), ''.'')))   AS monto_total,',
'          sum(to_number(replace(nvl(c009, 0), ''.'')))  AS total_iva',
'INTO :P354_SUBTOTAL, :P354_TOTAL_IVA',
'FROM apex_collections',
'WHERE collection_name = ''TMP_VTPEDIDO'';',
'',
'',
':P354_TOTAL := TO_CHAR(TO_NUMBER(REPLACE(:P354_SUBTOTAL,''.'')) + TO_NUMBER(REPLACE(:P354_TOTAL_IVA,''.'')), ''999G999G999G999G999G999G990'');',
':P354_SUBTOTAL := TO_CHAR(:P354_SUBTOTAL, ''999G999G999G999G999G999G990'');',
':P354_TOTAL_IVA := TO_CHAR(:P354_TOTAL_IVA, ''999G999G999G999G999G999G990'');'))
,p_attribute_02=>'P354_SUBTOTAL,P354_TOTAL'
,p_attribute_03=>'P354_SUBTOTAL,P354_TOTAL_IVA,P354_TOTAL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(137002282426087924)
,p_event_id=>wwv_flow_imp.id(97279467290855731)
,p_event_result=>'TRUE'
,p_action_sequence=>120
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$("#apex_wait_overlay").remove(); ',
'$(".u-Processing").remove(); '))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(97282843977855732)
,p_name=>unistr('Validaci\00F3n detalle')
,p_event_sequence=>480
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(97179551617855680)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(143658497362222708)
,p_event_id=>wwv_flow_imp.id(97282843977855732)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'var spinner = apex.util.showSpinner(); '
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(143658532857222709)
,p_event_id=>wwv_flow_imp.id(97282843977855732)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'dbms_lock.sleep(1);'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(97283329300855732)
,p_event_id=>wwv_flow_imp.id(97282843977855732)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P354_COD_ART_CORTO IS NULL AND :P354_COD_ARTICULO IS NULL THEN ',
unistr('    :P0_MENSAJE_VALIDACION := ''Debe ingresar el Art\00EDculo'';'),
'    :P354_CARGA_DETALLE := 0;',
'ELSE ',
'    IF :P354_CANTIDAD IS NULL THEN ',
'        :P0_MENSAJE_VALIDACION := ''Debe ingresar la Cantidad'';',
'        :P354_CARGA_DETALLE := 0;',
'    ELSE ',
'        IF :P354_PRECIO_UNITARIO IS NULL THEN ',
'             :P0_MENSAJE_VALIDACION := ''Debe ingresar el Precio Unitario'';',
'             :P354_CARGA_DETALLE := 0;',
'        ELSE ',
'            :P354_CARGA_DETALLE := 1;',
'        END IF;',
'    END IF;',
'END IF;'))
,p_attribute_02=>'P354_COD_ART_CORTO,P354_COD_ARTICULO,P354_CANTIDAD,P354_PRECIO_UNITARIO'
,p_attribute_03=>'P0_MENSAJE_VALIDACION,P354_CARGA_DETALLE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(137001191826087913)
,p_name=>unistr('Validaci\00F3n detalle_1')
,p_event_sequence=>490
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(97179993752855680)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(137002136079087923)
,p_event_id=>wwv_flow_imp.id(137001191826087913)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'var spinner = apex.util.showSpinner(); '
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(137002049062087922)
,p_event_id=>wwv_flow_imp.id(137001191826087913)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'dbms_lock.sleep(1);'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(137001246908087914)
,p_event_id=>wwv_flow_imp.id(137001191826087913)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P354_COD_ART_CORTO IS NULL AND :P354_COD_ARTICULO IS NULL THEN ',
unistr('    :P0_MENSAJE_VALIDACION := ''Debe ingresar el Art\00EDculo'';'),
'    :P354_CARGA_DETALLE_1 := 0;',
'ELSE ',
'    IF :P354_CANTIDAD IS NULL THEN ',
'        :P0_MENSAJE_VALIDACION := ''Debe ingresar la Cantidad'';',
'        :P354_CARGA_DETALLE_1 := 0;',
'    ELSE ',
'        IF :P354_PRECIO_UNITARIO IS NULL THEN ',
'             :P0_MENSAJE_VALIDACION := ''Debe ingresar el Precio Unitario'';',
'             :P354_CARGA_DETALLE_1 := 0;',
'        ELSE ',
'            :P354_CARGA_DETALLE_1 := 1;',
'        END IF;',
'    END IF;',
'END IF;'))
,p_attribute_02=>'P354_COD_ART_CORTO,P354_COD_ARTICULO,P354_CANTIDAD,P354_PRECIO_UNITARIO'
,p_attribute_03=>'P0_MENSAJE_VALIDACION,P354_CARGA_DETALLE_1'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(97283729211855732)
,p_name=>'Verifica permiso '
,p_event_sequence=>500
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(97284237252855733)
,p_event_id=>wwv_flow_imp.id(97283729211855732)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var cod_empresa = apex.item("P354_COD_EMPRESA").getValue();',
'var cod_forma  = ''VTPRESUP'';',
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
'         document.getElementById(''P354_PRECIO_UNITARIO'').readOnly = true;',
'     }  ',
'     if (pData.p_carga_sucursal === "N") {',
'         $(''#P354_COD_SUCURSAL'').css(''pointer-events'',''none'');',
'',
'     }',
'     apex.item("P354_PUEDE_DESANULAR_PEDIDO").setValue(pData.p_puede_desanular_pedido);',
'     apex.item("P354_CARGA_FECHA").setValue(pData.p_carga_fecha);',
'     apex.item("P354_INSTALACION").setValue(pData.p_instalacion);',
'     apex.item("P354_DESCUENTO_30").setValue(pData.p_descuento_30);',
'     apex.item("P354_DESCUENTO_304").setValue(pData.p_descuento_304);',
'     apex.item("P354_CARGA_DESCUENTOS").setValue(pData.p_carga_descuentos);',
'     apex.item("P354_CARGA_COTIZACION").setValue(pData.p_carga_cotizacion);',
'     apex.item("P354_SUPERA_DESCUENTO").setValue(pData.p_supera_descuento);',
'     apex.item("P354_VER_MARGEN").setValue(pData.p_ver_margen);',
'    ',
' }, ',
' });',
'document.getElementById(''P354_NRO_COMPROBANTE'').readOnly = true;',
' '))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(97284735468855733)
,p_event_id=>wwv_flow_imp.id(97283729211855732)
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
'$(''#P354_AUTORIZADO'').css(''pointer-events'',''none'');',
'$(''#P354_DERIVADO'').css(''pointer-events'',''none'');'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(97287551943855734)
,p_name=>'Refresca detalles'
,p_event_sequence=>510
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_display_when_cond=>'P354_NRO_COMPROBANTE'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(97285646698855733)
,p_event_id=>wwv_flow_imp.id(97287551943855734)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN ',
'inv.vtpresupuesto.pr_obtiene_datos_detalles(p_nro_comprobante => :P354_NRO_COMPROBANTE,',
'                                       p_cod_empresa     => :P354_COD_EMPRESA,',
'                                       p_cod_moneda      => :P354_COD_MONEDA,',
'                                       p_TOTAL           => :P354_TOTAL,',
'                                       p_SUBTOTAL        => :P354_SUBTOTAL,',
'                                       p_TOTAL_IVA       => :P354_TOTAL_IVA);',
'EXCEPTION ',
'    WHEN NO_DATA_FOUND THEN ',
'        NULL;',
'    WHEN OTHERS THEN ',
'        NULL;',
'END;'))
,p_attribute_02=>'P354_NRO_COMPROBANTE,P354_COD_EMPRESA,P354_COD_MONEDA'
,p_attribute_03=>'P354_TOTAL,P354_SUBTOTAL,P354_TOTAL_IVA'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(97288037637855734)
,p_event_id=>wwv_flow_imp.id(97287551943855734)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(151967092667185693)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(99776109559177712)
,p_event_id=>wwv_flow_imp.id(97287551943855734)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  Select descripcion',
'    into :P354_NOM_SUCURSAL',
'    from sucursales',
'   where cod_empresa = :P354_COD_EMPRESA',
'     and cod_sucursal = :P354_COD_SUCURSAL;',
'EXCEPTION',
'  when others then',
'    null;',
'END; ',
'',
'',
'if :P354_ESTADO =''P'' then',
'  :P354_DESC_ESTADO := ''Pendiente'';',
'elsif :P354_ESTADO =''F'' then',
'   :P354_DESC_ESTADO := ''Facturado'';',
'elsif :P354_ESTADO =''A'' then',
'   :P354_DESC_ESTADO := ''Anulado'';',
'   elsif :P354_ESTADO =''C'' then',
'   :P354_DESC_ESTADO := ''Cerrado'';',
'else',
'   :P354_DESC_ESTADO := '' '';',
'end if;'))
,p_attribute_02=>'P354_COD_SUCURSAL,P354_COD_EMPRESA,P354_ESTADO'
,p_attribute_03=>'P354_NOM_SUCURSAL,P354_DESC_ESTADO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(97288933212855735)
,p_name=>'Abre Croquis'
,p_event_sequence=>520
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P354_TIPO_ENTREGA'
,p_condition_element=>'P354_TIPO_ENTREGA'
,p_triggering_condition_type=>'IN_LIST'
,p_triggering_expression=>'CA,IN'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(97289443621855735)
,p_event_id=>wwv_flow_imp.id(97288933212855735)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'javascript:openModal(''croquis'');'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(97298387079855738)
,p_name=>'Agrega maps'
,p_event_sequence=>530
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P354_SEARCH'
,p_condition_element=>'P354_SEARCH'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(97304520740855741)
,p_name=>'Copia de presupuesto'
,p_event_sequence=>540
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(97202431923855691)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(97305029832855742)
,p_event_id=>wwv_flow_imp.id(97304520740855741)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'inv.vtpresupuesto.pr_verifica_presupuesto(p_nro_presupuesto_copia   => :P354_NRO_PRESUPUESTO_COPIA,',
'            p_cab_tip_comprobante_ref  => :P354_TIP_COMPROBANTE_REF,',
'            p_cab_cod_empresa          => :P354_COD_EMPRESA,',
'            p_ser_presupuesto_copia    => :P354_SER_PRESUPUESTO_COPIA,',
'            p_mensaje_error            => :P0_MENSAJE_VALIDACION,',
'            p_cab_ser_comprobante_ref  => :P354_SER_COMPROBANTE_REF,',
'            p_tip_comprobante_copa     => :P354_TIP_COMPROBANTE_COPA,',
'            p_cab_cod_cliente          => :P354_COD_CLIENTE,',
'            p_cab_cod_condicion_venta  => :P354_COD_CONDICION_VENTA,',
'            p_cab_cod_moneda           => :P354_COD_MONEDA,',
'            p_cab_tip_cambio           => :P354_TIP_CAMBIO,',
'            p_cab_cod_articulo         => :P354_COD_ARTICULO,',
'            p_var_copiando             => :P354_COPIANDO,',
'            p_cab_cod_sucursal         => :P354_COD_SUCURSAL,',
'            p_cab_fec_comprobante      => :P354_FEC_COMPROBANTE,',
'            p_cab_nom_cliente          => :P354_NOM_CLIENTE,',
'            p_cab_desc_condicion       => :P354_DESC_CONDICION,',
'            p_cab_desc_moneda          => :P354_DESC_MONEDA,',
'            p_cab_decimales            => :P354_DECIMALES,',
'            p_cab_cod_lista_precio     => :P354_PRECIO_LISTA,',
'            p_cab_cod_direccion        => :P354_COD_DIRECCION,',
'            p_cab_dir_cliente          => :P354_DIR_CLIENTE,',
'            p_cab_tel_cliente          => :P354_TEL_CLIENTE,',
'            p_cab_ruc                  => :P354_RUC,',
'            p_cab_cod_vendedor         => :P354_COD_VENDEDOR,',
'            p_cab_nro_comprobante_ref  => :P354_NRO_COMPROBANTE_REF,',
'            p_cop_ser_presupuesto      => :P354_SER_PRESUPUESTO_COPIA,',
'            p_cop_nro_presupuesto      => :P354_NRO_PRESUPUESTO_COPIA,',
'            p_cop_tip_comprobante      => :P354_TIP_COMPROBANTE_COPA,',
'            p_cab_recargo              => :P354_RECARGO,',
'            p_var_mult                 => :P354_VAR_MULT,',
'            p_var_div                  => :P354_VAR_DIV,',
'            p_cab_iva_parcial          => :P354_IVA_PARCIAL,',
'            p_cab_subtotal_parcial     => :P354_SUBTOTAL_PARCIAL,',
'            p_cab_gravadas_parcial     => :P354_GRAVADAS_PARCIAL,',
'            p_cab_exentas_parcial      => :P354_EXENTAS_PARCIAL,',
'            p_cab_porcentaje_descuento => :P354_PORCENTAJE_DESCUENTO,',
'            p_cab_descuento            => :P354_DESCUENTO,',
'            p_cab_total_iva            => :P354_TOTAL_IVA,',
'            p_cab_subtotal             => :P354_SUBTOTAL,',
'            p_cab_gravadas             => :P354_GRAVADAS,',
'            p_cab_exentas              => :P354_EXENTAS,',
'            p_cab_total                => :P354_TOTAL,',
'            p_cab_recargo_porc         => :P354_RECARGO_PORC,',
'            p_cab_flete                => :P354_COD_FLETE,',
'            p_cab_flete_total          => :P354_FLETE_TOTAL,',
'            p_var_porc_recargo_ant     => :P354_PORC_RECARGO_ANT,',
'            p_cab_ser_comprobante      => :P354_SER_COMPROBANTE,',
'            p_cab_tip_comprobante      => :P354_TIP_COMPROBANTE,',
'            p_cab_nro_comprobante      => :P354_NRO_COMPROBANTE,',
'            p_cab_desc_precios        =>  :P354_DESC_PRECIOS);',
''))
,p_attribute_02=>'P354_NRO_PRESUPUESTO_COPIA,P354_TIP_COMPROBANTE_REF,P354_COD_EMPRESA,P354_SER_PRESUPUESTO_COPIA,P354_SER_COMPROBANTE_REF, P354_TIP_COMPROBANTE_COPA,P354_COD_CLIENTE,P354_COD_CONDICION_VENTA,P354_COD_MONEDA,P354_TIP_CAMBIO,P354_COD_ARTICULO, P354_SER_'
||'PRESUPUESTO_COPIA,P354_NRO_PRESUPUESTO_COPIA,P354_TIP_COMPROBANTE_COPA,P354_RECARGO,P354_VAR_MULT, P354_VAR_DIV,P354_IVA_PARCIAL,P354_SUBTOTAL_PARCIAL,P354_GRAVADAS_PARCIAL,P354_EXENTAS_PARCIAL,P354_PORCENTAJE_DESCUENTO, P354_DESCUENTO,P354_TOTAL_IVA'
||',P354_SUBTOTAL,P354_GRAVADAS,P354_EXENTAS,P354_TOTAL,P354_RECARGO_PORC,P354_COD_FLETE, P354_FLETE_TOTAL,P354_PORC_RECARGO_ANT,P354_SER_COMPROBANTE,P354_TIP_COMPROBANTE,P354_NRO_COMPROBANTE'
,p_attribute_03=>'P354_TIP_COMPROBANTE_REF,P0_MENSAJE_VALIDACION,P354_SER_COMPROBANTE_REF,P354_COD_CLIENTE,P354_COD_CONDICION_VENTA, P354_COD_MONEDA,P354_TIP_CAMBIO,P354_COPIANDO,P354_COD_SUCURSAL,P354_FEC_COMPROBANTE,P354_NOM_CLIENTE,P354_DESC_CONDICION, P354_DESC_MO'
||'NEDA,P354_DECIMALES,P354_PRECIO_LISTA,P354_COD_DIRECCION,P354_DIR_CLIENTE,P354_TEL_CLIENTE,P354_RUC, P354_COD_VENDEDOR,P354_NRO_COMPROBANTE_REF,P354_RECARGO,P354_VAR_MULT,P354_VAR_DIV,P354_IVA_PARCIAL,P354_SUBTOTAL_PARCIAL, P354_GRAVADAS_PARCIAL,P354'
||'_EXENTAS_PARCIAL,P354_PORCENTAJE_DESCUENTO,P354_DESCUENTO,P354_TOTAL_IVA,P354_SUBTOTAL, P354_GRAVADAS,P354_EXENTAS,P354_TOTAL,P354_RECARGO_PORC,P354_COD_FLETE,P354_FLETE_TOTAL,P354_PORC_RECARGO_ANT, P354_SER_COMPROBANTE,P354_TIP_COMPROBANTE,P354_NRO_'
||'COMPROBANTE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(97305596454855742)
,p_event_id=>wwv_flow_imp.id(97304520740855741)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(151967092667185693)
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
 p_id=>wwv_flow_imp.id(97309506231855744)
,p_name=>'Copia de pedidos'
,p_event_sequence=>550
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(97203243682855692)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(97310095002855744)
,p_event_id=>wwv_flow_imp.id(97309506231855744)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'inv.vtpresupuesto.pr_verifica_presupuesto(p_nro_presupuesto_copia   => :P354_NRO_PRESUPUESTO_COPIA,',
'            p_cab_tip_comprobante_ref  => :P354_TIP_COMPROBANTE_REF,',
'            p_cab_cod_empresa          => :P354_COD_EMPRESA,',
'            p_ser_presupuesto_copia    => :P354_SER_PRESUPUESTO_COPIA,',
'            p_mensaje_error            => :P0_MENSAJE_VALIDACION,',
'            p_cab_ser_comprobante_ref  => :P354_SER_COMPROBANTE_REF,',
'            p_tip_comprobante_copa     => :P354_TIP_COMPROBANTE_COPA,',
'            p_cab_cod_cliente          => :P354_COD_CLIENTE,',
'            p_cab_cod_condicion_venta  => :P354_COD_CONDICION_VENTA,',
'            p_cab_cod_moneda           => :P354_COD_MONEDA,',
'            p_cab_tip_cambio           => :P354_TIP_CAMBIO,',
'            p_cab_cod_articulo         => :P354_COD_ARTICULO,',
'            p_var_copiando             => :P354_COPIANDO,',
'            p_cab_cod_sucursal         => :P354_COD_SUCURSAL,',
'            p_cab_fec_comprobante      => :P354_FEC_COMPROBANTE,',
'            p_cab_nom_cliente          => :P354_NOM_CLIENTE,',
'            p_cab_desc_condicion       => :P354_DESC_CONDICION,',
'            p_cab_desc_moneda          => :P354_DESC_MONEDA,',
'            p_cab_decimales            => :P354_DECIMALES,',
'            p_cab_cod_lista_precio     => :P354_PRECIO_LISTA,',
'            p_cab_cod_direccion        => :P354_COD_DIRECCION,',
'            p_cab_dir_cliente          => :P354_DIR_CLIENTE,',
'            p_cab_tel_cliente          => :P354_TEL_CLIENTE,',
'            p_cab_ruc                  => :P354_RUC,',
'            p_cab_cod_vendedor         => :P354_COD_VENDEDOR,',
'            p_cab_nro_comprobante_ref  => :P354_NRO_COMPROBANTE_REF,',
'            p_cop_ser_presupuesto      => :P354_SER_PRESUPUESTO_COPIA,',
'            p_cop_nro_presupuesto      => :P354_NRO_PRESUPUESTO_COPIA,',
'            p_cop_tip_comprobante      => :P354_TIP_COMPROBANTE_COPA,',
'            p_cab_recargo              => :P354_RECARGO,',
'            p_var_mult                 => :P354_VAR_MULT,',
'            p_var_div                  => :P354_VAR_DIV,',
'            p_cab_iva_parcial          => :P354_IVA_PARCIAL,',
'            p_cab_subtotal_parcial     => :P354_SUBTOTAL_PARCIAL,',
'            p_cab_gravadas_parcial     => :P354_GRAVADAS_PARCIAL,',
'            p_cab_exentas_parcial      => :P354_EXENTAS_PARCIAL,',
'            p_cab_porcentaje_descuento => :P354_PORCENTAJE_DESCUENTO,',
'            p_cab_descuento            => :P354_DESCUENTO,',
'            p_cab_total_iva            => :P354_TOTAL_IVA,',
'            p_cab_subtotal             => :P354_SUBTOTAL,',
'            p_cab_gravadas             => :P354_GRAVADAS,',
'            p_cab_exentas              => :P354_EXENTAS,',
'            p_cab_total                => :P354_TOTAL,',
'            p_cab_recargo_porc         => :P354_RECARGO_PORC,',
'            p_cab_flete                => :P354_COD_FLETE,',
'            p_cab_flete_total          => :P354_FLETE_TOTAL,',
'            p_var_porc_recargo_ant     => :P354_PORC_RECARGO_ANT,',
'            p_cab_ser_comprobante      => :P354_SER_COMPROBANTE,',
'            p_cab_tip_comprobante      => :P354_TIP_COMPROBANTE,',
'            p_cab_nro_comprobante      => :P354_NRO_COMPROBANTE,',
'            p_cab_desc_precios        =>  :P354_DESC_PRECIOS);',
''))
,p_attribute_02=>'P354_NRO_PRESUPUESTO_COPIA,P354_TIP_COMPROBANTE_REF,P354_COD_EMPRESA,P354_SER_PRESUPUESTO_COPIA,P354_SER_COMPROBANTE_REF, P354_TIP_COMPROBANTE_COPA,P354_COD_CLIENTE,P354_COD_CONDICION_VENTA,P354_COD_MONEDA,P354_TIP_CAMBIO,P354_COD_ARTICULO, P354_SER_'
||'PRESUPUESTO_COPIA,P354_NRO_PRESUPUESTO_COPIA,P354_TIP_COMPROBANTE_COPA,P354_RECARGO,P354_VAR_MULT, P354_VAR_DIV,P354_IVA_PARCIAL,P354_SUBTOTAL_PARCIAL,P354_GRAVADAS_PARCIAL,P354_EXENTAS_PARCIAL,P354_PORCENTAJE_DESCUENTO, P354_DESCUENTO,P354_TOTAL_IVA'
||',P354_SUBTOTAL,P354_GRAVADAS,P354_EXENTAS,P354_TOTAL,P354_RECARGO_PORC,P354_COD_FLETE, P354_FLETE_TOTAL,P354_PORC_RECARGO_ANT,P354_SER_COMPROBANTE,P354_TIP_COMPROBANTE,P354_NRO_COMPROBANTE'
,p_attribute_03=>'P354_TIP_COMPROBANTE_REF,P0_MENSAJE_VALIDACION,P354_SER_COMPROBANTE_REF,P354_COD_CLIENTE,P354_COD_CONDICION_VENTA, P354_COD_MONEDA,P354_TIP_CAMBIO,P354_COPIANDO,P354_COD_SUCURSAL,P354_FEC_COMPROBANTE,P354_NOM_CLIENTE,P354_DESC_CONDICION, P354_DESC_MO'
||'NEDA,P354_DECIMALES,P354_PRECIO_LISTA,P354_COD_DIRECCION,P354_DIR_CLIENTE,P354_TEL_CLIENTE,P354_RUC, P354_COD_VENDEDOR,P354_NRO_COMPROBANTE_REF,P354_RECARGO,P354_VAR_MULT,P354_VAR_DIV,P354_IVA_PARCIAL,P354_SUBTOTAL_PARCIAL, P354_GRAVADAS_PARCIAL,P354'
||'_EXENTAS_PARCIAL,P354_PORCENTAJE_DESCUENTO,P354_DESCUENTO,P354_TOTAL_IVA,P354_SUBTOTAL, P354_GRAVADAS,P354_EXENTAS,P354_TOTAL,P354_RECARGO_PORC,P354_COD_FLETE,P354_FLETE_TOTAL,P354_PORC_RECARGO_ANT, P354_SER_COMPROBANTE,P354_TIP_COMPROBANTE,P354_NRO_'
||'COMPROBANTE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(97310501847855744)
,p_event_id=>wwv_flow_imp.id(97309506231855744)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(151967092667185693)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(97316909870855747)
,p_name=>'Desactiva campos del detalle'
,p_event_sequence=>560
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P354_VALIDA_ARTICULO'
,p_condition_element=>'P354_VALIDA_ARTICULO'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'1'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(97317425157855747)
,p_event_id=>wwv_flow_imp.id(97316909870855747)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'document.getElementById(''P354_PORC_DESCUENTO'').readOnly = true;',
'document.getElementById(''P354_PORC_RECARGO'').readOnly = true;'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(97317937814855747)
,p_event_id=>wwv_flow_imp.id(97316909870855747)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'document.getElementById(''P354_PORC_DESCUENTO'').readOnly = false;',
'document.getElementById(''P354_PORC_RECARGO'').readOnly = false;'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(97211294146855696)
,p_name=>unistr('Cerrar Regi\00F3n')
,p_event_sequence=>570
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(97202801262855692)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(97211730900855697)
,p_event_id=>wwv_flow_imp.id(97211294146855696)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(180691869830647079)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(96866101208522128)
,p_name=>'Validaciones de Validez'
,p_event_sequence=>580
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P354_VALIDEZ'
,p_condition_element=>'P354_VALIDEZ'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'focusout'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(96866229885522129)
,p_event_id=>wwv_flow_imp.id(96866101208522128)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P354_FEC_VENCIMIENTO := TO_DATE(:P354_FEC_COMPROBANTE, ''DD/MM/YYYY'') +  TO_NUMBER(:P354_VALIDEZ);'
,p_attribute_02=>'P354_FEC_COMPROBANTE,P354_VALIDEZ'
,p_attribute_03=>'P354_FEC_VENCIMIENTO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(99656554391213500)
,p_name=>'Habilita campos'
,p_event_sequence=>590
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P354_COD_CLIENTE'
,p_condition_element=>'P354_COD_CLIENTE'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'00000'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(99657074533213501)
,p_event_id=>wwv_flow_imp.id(99656554391213500)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'document.getElementById(''P354_RUC'').readOnly = true;',
'document.getElementById(''P354_TEL_CLIENTE'').readOnly = true;',
'document.getElementById(''P354_NOM_CLIENTE'').readOnly = true;',
'document.getElementById(''P354_DIR_CLIENTE'').readOnly = true;',
'document.getElementById(''P354_CORREO_CLIENTE'').readOnly = true;',
'document.getElementById(''P354_COD_DIRECCION'').readOnly = true;'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(99657559534213501)
,p_event_id=>wwv_flow_imp.id(99656554391213500)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'document.getElementById(''P354_RUC'').readOnly = false;',
'document.getElementById(''P354_TEL_CLIENTE'').readOnly = false;',
'document.getElementById(''P354_NOM_CLIENTE'').readOnly = false;',
'document.getElementById(''P354_DIR_CLIENTE'').readOnly = false;',
'document.getElementById(''P354_CORREO_CLIENTE'').readOnly = false;',
'document.getElementById(''P354_COD_DIRECCION'').readOnly = false;'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(100763319384789944)
,p_name=>'Replicar presupuestos'
,p_event_sequence=>600
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(100753786787778603)
,p_condition_element=>'P354_NRO_COMPROBANTE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(100764258191789945)
,p_event_id=>wwv_flow_imp.id(100763319384789944)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'PLUGIN_COM.FOS.NOTIFICATIONS'
,p_attribute_01=>'warning'
,p_attribute_02=>'static'
,p_attribute_03=>unistr('Atenci\00F3n')
,p_attribute_04=>'Para realizar la copia del Presupuesto debe editar un Presupuesto existente'
,p_attribute_07=>'autodismiss:prevent-duplicates:remove-notifications:escape-html:newest-on-top:client-side-substitutions:dismiss-on-click:dismiss-on-button'
,p_attribute_08=>'top-right'
,p_attribute_09=>'Y'
,p_attribute_11=>'5'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(100763704986789945)
,p_event_id=>wwv_flow_imp.id(100763319384789944)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var htmldb_delete_messag_agregar =''Desea realizar una copia del Presupuesto actual? '';',
'        apex.message.confirm(htmldb_delete_messag_agregar, function( okPressed ) { ',
'        if( okPressed ) {',
'                apex.item("P354_OPERACION").setValue("AGREGAR");',
'                apex.item("P354_NRO_COMPROBANTE").setValue(null);',
'                $(document).ready(function(){',
'                $(''#CREATE'').trigger(''click'');',
'                });',
'            } else {',
'                null;',
'            }',
'        });'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(100766542679811853)
,p_name=>unistr('Ocultar bot\00F3n Guardar')
,p_event_sequence=>610
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_display_when_cond=>'P354_NRO_COMPROBANTE'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(100766908267811853)
,p_event_id=>wwv_flow_imp.id(100766542679811853)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'document.getElementById(''CREATE'').style.visibility= ''hidden'';'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(99776250236177713)
,p_name=>'Visualizar Presupuesto'
,p_event_sequence=>620
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(100754149144778603)
,p_condition_element=>'P354_NRO_COMPROBANTE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(101869791335708101)
,p_event_id=>wwv_flow_imp.id(99776250236177713)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'PLUGIN_COM.FOS.NOTIFICATIONS'
,p_attribute_01=>'warning'
,p_attribute_02=>'static'
,p_attribute_03=>unistr('Atenci\00F2n')
,p_attribute_04=>'Solo se puede visualizar Presupuestos ya generados'
,p_attribute_07=>'autodismiss:prevent-duplicates:remove-notifications:escape-html:newest-on-top:client-side-substitutions:dismiss-on-click:dismiss-on-button'
,p_attribute_08=>'top-right'
,p_attribute_09=>'Y'
,p_attribute_11=>'4'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(175479926430656537)
,p_event_id=>wwv_flow_imp.id(99776250236177713)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin :P354_INFORME := BS_BUSCA_PARAMETRO(''VT'',''VTPRESUPUESTO'');',
'end;'))
,p_attribute_03=>'P354_INFORME'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(99776369615177714)
,p_event_id=>wwv_flow_imp.id(99776250236177713)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var params = []',
'var empresa = apex.item("P354_COD_EMPRESA").getValue();',
'var tip_comprobante = apex.item("P354_TIP_COMPROBANTE").getValue();',
'var ser_comprobante = apex.item("P354_SER_COMPROBANTE").getValue();',
'var nro_comprobante = apex.item("P354_NRO_COMPROBANTE").getValue();',
'var informe = apex.item("P354_INFORME").getValue();',
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
 p_id=>wwv_flow_imp.id(390605146382583008)
,p_name=>'da_ver_margen'
,p_event_sequence=>630
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(390605070433583007)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(390605200318583009)
,p_event_id=>wwv_flow_imp.id(390605146382583008)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'var params = []',
'var empresa = apex.item("P354_COD_EMPRESA").getValue();',
'var tip_comprobante = apex.item("P354_TIP_COMPROBANTE").getValue();',
'var ser_comprobante = apex.item("P354_SER_COMPROBANTE").getValue();',
'var nro_comprobante = apex.item("P354_NRO_COMPROBANTE").getValue();',
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
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(97207217626855694)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Validaciones'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P354_TIPO_ENTREGA = ''N'' THEN ',
'    :P354_TIPO_ENTREGA := NULL;',
'END IF;',
'',
':P354_TOT_COMPROBANTE := TO_NUMBER(REPLACE (:P354_TOTAL , ''.''));',
':P354_TOT_GRAVADAS := TO_NUMBER(REPLACE (:P354_TOTAL_IVA , ''.''));',
':P354_TOT_IVA := TO_NUMBER(REPLACE (:P354_TOTAL_IVA , ''.''));',
':P354_TOT_EXENTAS := TO_NUMBER(REPLACE (NVL(:P354_EXENTAS, 0) , ''.''));',
':P354_TIP_CAMBIO_COMPRA := :P354_TIP_CAMBIO;',
':P354_RECARGO := TO_NUMBER(REPLACE (NVL(:P354_RECARGO, 0) , ''.''));',
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
'        RAISE_APPLICATION_ERROR(-20001, ''No se puede insertar Presupuesto sin detalles'');',
'    END IF;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(97208470416855695)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PRE-INSERT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P354_COD_SUCURSAL IS NULL THEN',
'   :P354_COD_SUCURSAL := :P354_COD_SUCURSAL ;',
'END IF;',
'',
':P354_ESTADO := ''P'' ;',
':P354_FEC_VENCIMIENTO := to_date(:P354_FEC_COMPROBANTE, ''DD/MM/YYYY'') + TO_NUMBER(:P354_DIAS_VENCIM_PEDIDO);',
':P354_HORA_ALTA := to_char(sysdate, ''HH24:MI:SS'');',
'IF :P354_NRO_COMPROBANTE IS NULL THEN',
'  BEGIN',
'    Select max(  nro_comprobante )',
'      into :P354_NRO_COMPROBANTE',
'      from vt_PRESUPUESTO_cabecera',
'      where cod_empresa = :P354_COD_EMPRESA',
'        and ser_comprobante = :P354_SER_COMPROBANTE',
'            and nro_comprobante < 800000;',
'',
'    :P354_NRO_COMPROBANTE := nvl(:P354_NRO_COMPROBANTE,0) + 1;',
'   EXCEPTION',
'     when others then',
'       :P354_NRO_COMPROBANTE := 1; ',
'  END;',
'END IF;',
':P354_PESO_TOTAL := :P354_TOTAL_PESO;',
':P354_VOLUMEN_TOTAL := :P354_TOTAL_VOLUMEN;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'&P0_ERROR. #SQLERRM#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(97026719122855606)
,p_process_when=>'CREATE,SAVE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(97208834212855695)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PRE_UPDATE'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  valerta NUMBER;',
'BEGIN',
'  ',
'  :P354_FEC_VENCIMIENTO := to_date(:P354_FEC_COMPROBANTE, ''DD/MM/YYYY'') + TO_NUMBER(nvl(:P354_DIAS_VENCIM_PEDIDO,0));',
'END;',
':P354_PESO_TOTAL := :P354_TOTAL_PESO;',
':P354_VOLUMEN_TOTAL := :P354_TOTAL_VOLUMEN;',
'',
'IF :P354_OPERACION = ''MODIFICAR'' THEN ',
'    :P0_MENSAJE := ''Se ha modificado el Presupuesto nro: '' || TO_CHAR(:P354_NRO_COMPROBANTE) ;',
'END IF;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'&P0_ERROR. #SQLERRM#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(97209600227855695)
,p_process_sequence=>60
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'KEY COMMIT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'  DECLARE',
'    VERROR EXCEPTION;',
'        CURSOR CUR_DETALLE_2 IS',
'                  SELECT SEQ_ID,',
'                         C001   AS COD_ARTICULO,',
'                         C002   AS COD_ART,',
'                         C003   AS DESCRIPCION,',
'                         C004   AS CANTIDAD,',
'                         C005   AS ORDEN,',
'                         C006   AS NRO_PROMO,',
'                         C007   AS IND_PROMOCION,',
'                         C008   AS IND_REQUERIDO,',
'                         C009   AS IND_COMBO,',
'                         C010   AS ORDEN_PRODUCTO_PRINCIPAL,',
'                         C011   AS PORCENTAJE,',
'                         C012   AS DESCUENTO_AUX',
'                    FROM APEX_COLLECTIONS',
'                   WHERE COLLECTION_NAME = ''TMP_DETALLE2'';',
'  BEGIN',
'    FOR A IN CUR_DETALLE_2 LOOP',
'    BEGIN',
'    UPDATE ST_PROMOCION P',
'       SET P.CANTIDAD=NVL(P.CANTIDAD,0) + NVL(TO_NUMBER(A.CANTIDAD),0),',
'           P.COMP= P.COMP ||''|''|| TO_CHAR(:P354_NRO_COMPROBANTE)',
'    WHERE P.COD_EMPRESA = :P354_COD_EMPRESA',
'      AND P.COD_ART_PROMO=A.COD_ART',
'      AND P.COD_ARTICULO=A.COD_ARTICULO;',
'    EXCEPTION',
'      WHEN OTHERS THEN',
'        NULL;',
'    END;',
'    ',
'        BEGIN',
'          UPDATE ST_PROMOCION P',
'             SET P.CANTIDAD=NVL(P.CANTIDAD,0) + NVL(TO_NUMBER(A.CANTIDAD),0),',
'                 P.COMP= P.COMP ||''|''|| TO_CHAR(:P354_NRO_COMPROBANTE)',
'           WHERE P.COD_EMPRESA=:P354_COD_EMPRESA',
'             AND P.COD_ART_PROMO=A.COD_ART',
'             AND P.COD_ARTICULO=A.COD_ARTICULO',
'             AND P.NRO_PROMO=A.NRO_PROMO;',
'       EXCEPTION',
'          WHEN OTHERS THEN',
'                NULL;',
'       END;',
'            EXIT;',
'      ',
'    END LOOP; ',
'  END;',
' COMMIT;',
'  ',
'IF :P354_OPERACION = ''AGREGAR'' THEN ',
'    :P0_MENSAJE := ''Se ha generado el nro: '' || TO_CHAR(:P354_NRO_COMPROBANTE) ;',
'END IF;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'&P0_ERROR. #SQLERRM#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(97210841426855696)
,p_process_sequence=>70
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Validaciones Eliminar'
,p_process_sql_clob=>':P0_MENSAJE := ''Se ha eliminado el Pedido nro: '' || :P354_NRO_COMPROBANTE;'
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(97027190968855606)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(96956828889855548)
,p_process_sequence=>80
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(152938812125635215)
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
 p_id=>wwv_flow_imp.id(97209275030855695)
,p_process_sequence=>90
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PRE_DELETE'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'   DELETE FROM VT_PRESUPUESTO_DETALLE V',
'   WHERE V.COD_EMPRESA = :P354_COD_EMPRESA ',
'   and V.TIP_COMPROBANTE = :P354_TIP_COMPROBANTE ',
'   and V.SER_COMPROBANTE = :P354_SER_COMPROBANTE ',
'   and V.NRO_COMPROBANTE = :P354_NRO_COMPROBANTE;',
'   EXCEPTION ',
'    WHEN OTHERS THEN ',
'        :P0_ERROR := SQLERRM;',
'END;',
'COMMIT;',
':P0_MENSAJE := ''Se ha eliminado el Pedido nro: '' || :P354_NRO_COMPROBANTE;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'&P0_ERROR. #SQLERRM#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(97027190968855606)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(97210032902855696)
,p_process_sequence=>110
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Guarda Detalles'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'inv.vtpresupuesto.pr_guarda_detalles(p_operacion       => :P354_OPERACION,',
'                                 p_nro_comprobante => :P354_NRO_COMPROBANTE,',
'                                 p_ser_comprobante => :P354_SER_COMPROBANTE,',
'                                 p_tip_comprobante => :P354_TIP_COMPROBANTE,',
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
 p_id=>wwv_flow_imp.id(96956455834855548)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(152938812125635215)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Inicializar pantalla VTPEDIDOF'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(97207659347855694)
,p_process_sequence=>20
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Obtiene datos '
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_collection.create_or_truncate_collection(p_collection_name => ''TMP_VTPEDIDO''); ',
'apex_collection.create_or_truncate_collection(p_collection_name => ''TMP_DETALLE2'');',
'apex_collection.create_or_truncate_collection(p_collection_name => ''TMP_B_AUTVEN'');',
'',
'BEGIN',
'  Select  m.tipo_cambio_credito',
'    into :P354_CAMBIO_MONEDA_PRECIO',
'    from monedas m, parametros_generales p',
'   where p.cod_modulo = ''ST''',
'     and p.parametro = ''COD_MONEDA_PREC''',
'     and p.valor = m.cod_moneda',
'     AND ROWNUM = 1;',
'EXCEPTION',
'  WHEN NO_DATA_FOUND THEN ',
'    :P354_CAMBIO_MONEDA_PRECIO := 1 ;',
'  when others then',
'    :P354_CAMBIO_MONEDA_PRECIO := 1 ;',
'END;  ',
':P354_INFORME := BS_BUSCA_PARAMETRO(''VT'',''VTPRESUPUESTO'');'))
,p_process_clob_language=>'PLSQL'
,p_process_when=>'P354_NRO_COMPROBANTE'
,p_process_when_type=>'ITEM_IS_NULL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(97208098815855694)
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
'   WHEN NO_DATA_FOUND THEN ',
'        NULL;',
'  WHEN OTHERS THEN',
'    apex_json.open_object;',
'    apex_json.write(''success'', FALSE);',
'    apex_json.close_object;',
'END;',
''))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp.component_end;
end;
/
