prompt --application/pages/page_00099
begin
--   Manifest
--     PAGE: 00099
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
 p_id=>99
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Carga de Facturas'
,p_alias=>'CARGA-DE-FACTURAS'
,p_step_title=>'Carga de Facturas'
,p_allow_duplicate_submissions=>'N'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_javascript_file_urls=>'#APP_FILES#util_generico.js'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function removeParam(key, sourceURL) {',
'    var rtn = sourceURL.split("?")[0],',
'        param,',
'        params_arr = [],',
'        queryString = (sourceURL.indexOf("?") !== -1) ? sourceURL.split("?")[1] : "";',
'    if (queryString !== "") {',
'        params_arr = queryString.split("&");',
'        for (var i = params_arr.length - 1; i >= 0; i -= 1) {',
'            param = params_arr[i].split("=")[0];',
'            if (param === key) {',
'                params_arr.splice(i, 1);',
'            }',
'        }',
'        rtn = rtn + "?" + params_arr.join("&");',
'    }',
'    return rtn;',
'}',
'',
'function doDescarga(p_cod_empresa, p_tip_comprobante, p_ser_comprobante, p_nro_comprobante, p_cod_cliente, p_reporte, p_reimpreso, p_cod_usuario, p_pagado){',
'  if ((p_reporte !== undefined) && (p_reporte !== null) && (p_reporte !== "")) {',
'     var vURL = ''https://ngosaeca.com.py/reportes/flow.html?_flowId=viewReportFlow&_flowId=viewReportFlow&ParentFolderUri=%2Freports&reportUnit=%2Freports%2F''+p_reporte+''&standAlone=true&j_username=ngojruser&j_password=tengoquecambiar1&output=pdf&P_C'
||'OD_EMPRESA=''+p_cod_empresa+''&P_TIP_COMPROBANTE=''+p_tip_comprobante+''&P_SER_COMPROBANTE=''+p_ser_comprobante+''&P_NRO_COMPROBANTE=''+p_nro_comprobante+''&P_COD_CLIENTE=''+p_cod_cliente+''&P_REIMPRESO=''+p_reimpreso+''&P_IMPRIME_CONDICION=S''+''&P_PAGADO=''+p_pag'
||'ado+''&P_COD_USUARIO=''+p_cod_usuario;',
'',
'     console.log(vURL);',
'   ',
'      window.open(vURL,"Pagina Child","width=1800,height=1000,scrollbars=NO") ;',
'   }',
'}',
'',
'function doDescarga1(p_cod_empresa, p_tip_comprobante, p_ser_comprobante, p_nro_comprobante, p_cod_cliente, p_reporte, p_reimpreso, p_cod_usuario, p_pagado,',
'                     p_tip_comprobante_ref, p_ser_comprobante_ref, p_nro_comprobante_ref){',
'  if ((p_reporte !== undefined) && (p_reporte !== null) && (p_reporte !== "")) { ',
'     var vURL = ''https://ngosaeca.com.py/reportes/flow.html?_flowId=viewReportFlow&_flowId=viewReportFlow&ParentFolderUri=%2Freports&reportUnit=%2Freports%2F''+p_reporte+',
'             ''&standAlone=true&j_username=ngojruser&j_password=tengoquecambiar1&output=pdf&P_COD_EMPRESA='' + p_cod_empresa + ''&P_TIP_COMPROBANTE='' + p_tip_comprobante  + ',
'            ''&P_SER_COMPROBANTE=''+ p_ser_comprobante + ''&P_NRO_COMPROBANTE=''+ p_nro_comprobante',
'            + ''&P_COD_CLIENTE=''+ p_cod_cliente + ''&P_REIMPRESO='' + p_reimpreso + ''&P_COD_USUARIO='' + p_cod_usuario + ''&P_PAGADO='' + p_pagado +',
'            ''&P_TIP_COMPROBANTE_REF='' + p_tip_comprobante_ref  + ''&P_SER_COMPROBANTE_REF=''+ p_ser_comprobante_ref ',
'            + ''&P_NRO_COMPROBANTE_REF=''+ p_nro_comprobante_ref +',
'            ''&P_IMPRIME_CONDICION=S'';',
'     ',
'     console.log(vURL);',
'     window.open(vURL,"Pagina Child","width=1800,height=1000,scrollbars=NO") ;',
'  }',
'}',
'',
'function soloNumerosEnteros(e){',
'  var key = e.charCode;',
'    return key >= 48 && key <= 57;    ',
'}',
'function soloNumeros(e) {',
'  var key = e.charCode;',
'  var char = String.fromCharCode(key);',
'',
unistr('  // Permite n\00FAmeros del 0 al 9'),
'  if (key >= 48 && key <= 57) {',
'    return true;',
'  }',
'  // // Permite el punto decimal (ASCII 46) o coma decimal (ASCII 44) solo si no se ha ingresado previamente ',
'else if ((key === 46 || key === 44) && e.target.value.indexOf(''.'') === -1 && e.target.value.indexOf('','') === -1) {',
'    return true;',
'',
'  }',
'  ',
unistr('  // Bloquea cualquier otro car\00E1cter'),
'  e.preventDefault();',
'  return false;',
'}',
'',
'',
'function seleccionar(cb) {',
'    console.log(cb.value);',
'    console.log(cb.checked);',
'  if (cb.checked == true){',
'    console.log("block" + cb.value);',
'      $s(''P99_ACCION'',''AGREGAR'');',
'      $s(''P99_SEQ_ID_PED'', cb.value,false);',
'  } else {',
'      $s(''P99_ACCION'',''QUITAR'');',
'      $s(''P99_SEQ_ID_PED'', cb.value,false);',
'  }',
'}'))
,p_javascript_code_onload=>'window.history.pushState("object or string", "Title", removeParam("success_msg", window.location.href));'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.btn{',
'    margin-top: 15px;',
'}',
'',
'.u-checkbox {',
'    margin-top: 25px !important;',
'}',
'',
'#btn_cobro {',
'    display: none !important;',
'}',
'',
'#P99_MENSAJE_PAGARE {',
'    background-color: white;',
'    color: red;',
'    font-weight: bold;',
'}',
'',
' .t-Body-contentInner{    background: #c0d0e6!important;}',
' ',
'',
'.t-Form-label, .t-Form-itemText--pre{',
'    color:  #003A85 !important;     ',
'    font-weight: bold;',
'    } ',
'',
'',
'',
'    .a-IRR-toolbar, .a-IRR-content',
'    {    background: #d0e0f783!important;}',
'',
'',
'.t-Report-colHead, .a-IRR-headerLink {',
'      background: #003a85!important;',
'       color: yellow; ',
' }'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'NZARATE'
,p_last_upd_yyyymmddhh24miss=>'20250314144044'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(21771034358343321)
,p_plug_name=>'VARIABLES'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(21771534139343326)
,p_plug_name=>'Carga de Facturas'
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(21771617885343327)
,p_plug_name=>'CABECERA'
,p_parent_plug_id=>wwv_flow_imp.id(21771534139343326)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(21772006322343331)
,p_plug_name=>'CAB1'
,p_parent_plug_id=>wwv_flow_imp.id(21771617885343327)
,p_region_template_options=>'#DEFAULT#:t-Form--noPadding'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>10
,p_plug_grid_column_span=>5
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(21772235352343333)
,p_plug_name=>'Movimiento de Documentos'
,p_parent_plug_id=>wwv_flow_imp.id(21772006322343331)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody:t-Form--noPadding'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(21772146939343332)
,p_plug_name=>'CAB2'
,p_parent_plug_id=>wwv_flow_imp.id(21771617885343327)
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
 p_id=>wwv_flow_imp.id(22563598982269813)
,p_plug_name=>'Detalle del comprobante'
,p_parent_plug_id=>wwv_flow_imp.id(21771534139343326)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(24410539880161944)
,p_plug_name=>'REPORTE'
,p_parent_plug_id=>wwv_flow_imp.id(22563598982269813)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT  SEQ_ID,',
'          C001 cod_articulo,                ',
'          C002 desc_articulo,                ',
'          C003 cod_unidad_medida,                                ',
'          C004 cod_relacion_um,                                ',
'          TO_NUMBER(C005) cantidad,                 ',
'          TO_NUMBER(C006) cantidad_ub,                 ',
'          C007 total_iva,                ',
'          C008 precio_unitario,                                 ',
'          C009 precio_lista,                                ',
'          C010 descuento,                                ',
'          TO_NUMBER(C011) porc_recargo,                                ',
'          C012 porc_iva,                                ',
'          TO_NUMBER(C013) recargo,                                 ',
'          C014 porc_descuento,                                 ',
'          C015 monto_total,                                ',
'          C016 nro_promo,                                ',
'          C017 IND_OUTLET,                                ',
'          C018 ind_PRODUCTO_ARMADO,                                ',
'          C019 orden_detalle_pedido,                ',
'          C020 cod_grupo_art,                 ',
'          C021 cod_moneda_base,                ',
'          C022 cod_origen_art,                ',
'          C023 vmodifica_precio, ',
'          C024 costo_promedio,  ',
'          C025 costo_promedio_ref,  ',
'          C026 maneja_lotes,  ',
'          C027 nro_lote,  ',
'          C028 ind_renta,  ',
'          C029 cod_iva,  ',
'          C030 porc_iva_ad, ',
'          C031 ind_incremento_stngo, ',
'          C032 ind_no_stock, ',
'          C033 cod_sucursal, ',
'          C034 ser_pedido,',
'          C035 nro_pedido,',
'          c036 repuesto_sta,',
'          null eliminar,',
'          null editar,',
'            NVL( TO_NUMBER(C015),0)+NVL( TO_NUMBER(C007),0) TOTAL',
'FROM APEX_COLLECTIONS',
'WHERE COLLECTION_NAME = ''DETALLE_COMPROBANTE''',
'',
'',
'                                     '))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'REPORTE'
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
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(24410654521161945)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_fixed_header=>'REGION'
,p_fixed_header_max_height=>300
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'MARIANABLA'
,p_internal_uid=>24410654521161945
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(24410771219161946)
,p_db_column_name=>'COD_ARTICULO'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>unistr('Cod. Art\00EDculo')
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(24410847330161947)
,p_db_column_name=>'DESC_ARTICULO'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>unistr('Desc. Art\00EDculo')
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(24410981430161948)
,p_db_column_name=>'COD_UNIDAD_MEDIDA'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Cod Unidad Medida'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(24411092568161949)
,p_db_column_name=>'COD_RELACION_UM'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Cod Relacion Um'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(26360172819470504)
,p_db_column_name=>'PRECIO_LISTA'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Precio Lista'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(26360438752470507)
,p_db_column_name=>'PORC_IVA'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Porc Iva'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(26360816271470511)
,p_db_column_name=>'NRO_PROMO'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Nro Promo'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(26360967038470512)
,p_db_column_name=>'IND_OUTLET'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Ind Outlet'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(26361007910470513)
,p_db_column_name=>'IND_PRODUCTO_ARMADO'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'Ind Producto Armado'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(26361101904470514)
,p_db_column_name=>'ORDEN_DETALLE_PEDIDO'
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>'Orden Detalle Pedido'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(26361268735470515)
,p_db_column_name=>'COD_GRUPO_ART'
,p_display_order=>200
,p_column_identifier=>'T'
,p_column_label=>'Cod Grupo Art'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(26361371134470516)
,p_db_column_name=>'COD_MONEDA_BASE'
,p_display_order=>210
,p_column_identifier=>'U'
,p_column_label=>'Cod Moneda Base'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(26361483200470517)
,p_db_column_name=>'COD_ORIGEN_ART'
,p_display_order=>220
,p_column_identifier=>'V'
,p_column_label=>'Cod Origen Art'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(26361585853470518)
,p_db_column_name=>'VMODIFICA_PRECIO'
,p_display_order=>230
,p_column_identifier=>'W'
,p_column_label=>'Vmodifica Precio'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(26361672011470519)
,p_db_column_name=>'COSTO_PROMEDIO'
,p_display_order=>240
,p_column_identifier=>'X'
,p_column_label=>'Costo Promedio'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(26361701650470520)
,p_db_column_name=>'COSTO_PROMEDIO_REF'
,p_display_order=>250
,p_column_identifier=>'Y'
,p_column_label=>'Costo Promedio Ref'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(26361865032470521)
,p_db_column_name=>'MANEJA_LOTES'
,p_display_order=>260
,p_column_identifier=>'Z'
,p_column_label=>'Maneja Lotes'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(26361990072470522)
,p_db_column_name=>'NRO_LOTE'
,p_display_order=>270
,p_column_identifier=>'AA'
,p_column_label=>'Lote'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(26362034080470523)
,p_db_column_name=>'IND_RENTA'
,p_display_order=>280
,p_column_identifier=>'AB'
,p_column_label=>'Ind Renta'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(26362128302470524)
,p_db_column_name=>'COD_IVA'
,p_display_order=>290
,p_column_identifier=>'AC'
,p_column_label=>'Cod Iva'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(26362214183470525)
,p_db_column_name=>'PORC_IVA_AD'
,p_display_order=>300
,p_column_identifier=>'AD'
,p_column_label=>'Porc Iva Ad'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(26362324182470526)
,p_db_column_name=>'IND_INCREMENTO_STNGO'
,p_display_order=>310
,p_column_identifier=>'AE'
,p_column_label=>'Ind Incremento Stngo'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(26362484778470527)
,p_db_column_name=>'IND_NO_STOCK'
,p_display_order=>320
,p_column_identifier=>'AF'
,p_column_label=>'Ind No Stock'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(26362590574470528)
,p_db_column_name=>'COD_SUCURSAL'
,p_display_order=>330
,p_column_identifier=>'AG'
,p_column_label=>'Cod Sucursal'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(26362695377470529)
,p_db_column_name=>'SER_PEDIDO'
,p_display_order=>340
,p_column_identifier=>'AH'
,p_column_label=>'Ser Pedido'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(26362726338470530)
,p_db_column_name=>'NRO_PEDIDO'
,p_display_order=>350
,p_column_identifier=>'AI'
,p_column_label=>'Nro Pedido'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(26362846410470531)
,p_db_column_name=>'REPUESTO_STA'
,p_display_order=>360
,p_column_identifier=>'AJ'
,p_column_label=>'Repuesto Sta'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(26363121364470534)
,p_db_column_name=>'CANTIDAD'
,p_display_order=>380
,p_column_identifier=>'AL'
,p_column_label=>'Cantidad'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(26363225884470535)
,p_db_column_name=>'CANTIDAD_UB'
,p_display_order=>390
,p_column_identifier=>'AM'
,p_column_label=>'Cantidad Ub'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(26363535637470538)
,p_db_column_name=>'PORC_RECARGO'
,p_display_order=>420
,p_column_identifier=>'AP'
,p_column_label=>'% Recargo'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(26363664829470539)
,p_db_column_name=>'RECARGO'
,p_display_order=>430
,p_column_identifier=>'AQ'
,p_column_label=>'Recargo'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(26474317838310217)
,p_db_column_name=>'SEQ_ID'
,p_display_order=>460
,p_column_identifier=>'AT'
,p_column_label=>'Seq Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(27323600869312302)
,p_db_column_name=>'ELIMINAR'
,p_display_order=>470
,p_column_identifier=>'AU'
,p_column_label=>'Eliminar'
,p_column_link=>'javascript:$s(''P99_ELIMINA_REGISTRO'',''#SEQ_ID#'');'
,p_column_linktext=>'<span class="fa fa-trash" aria-hidden="true"></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_display_condition_type=>'FUNCTION_BODY'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'VCONTROL NUMBER;',
'BEGIN',
'',
'    VCONTROL := SEGURIDAD_GRANULAR.RETORNA_PERMISO_BOTON(ppage_id     => :APP_PAGE_ID,',
'                                                         papli0100_id => :P_APLI0100_ID,',
'                                                         pcod_empresa => :P_COD_EMPRESA,',
'                                                         pusua0100_id => :P_USUA0100_ID,',
'                                                         pdm_boto     => 3); ',
'',
'    IF VCONTROL = 0 THEN',
'        RETURN FALSE;',
'    ELSE',
'        RETURN TRUE;',
'    END IF;                                                     ',
'END;'))
,p_display_condition2=>'PLSQL'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(27324266243312308)
,p_db_column_name=>'EDITAR'
,p_display_order=>480
,p_column_identifier=>'AV'
,p_column_label=>'Editar'
,p_column_link=>'javascript:$s(''P99_SEQ_ID'',''#SEQ_ID#'');'
,p_column_linktext=>'<span aria-hidden="true" class="fa fa-edit"></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_display_condition_type=>'FUNCTION_BODY'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'VCONTROL NUMBER;',
'BEGIN',
'    VCONTROL := SEGURIDAD_GRANULAR.RETORNA_PERMISO_BOTON(ppage_id     => :APP_PAGE_ID,',
'                                                         papli0100_id => :P_APLI0100_ID,',
'                                                         pcod_empresa => :P_COD_EMPRESA,',
'                                                         pusua0100_id => :P_USUA0100_ID,',
'                                                         pdm_boto     => 2); ',
'',
'    IF VCONTROL = 0 THEN',
'        RETURN FALSE;',
'    ELSE',
'        RETURN TRUE;',
'    END IF;                                                     ',
'END;'))
,p_display_condition2=>'PLSQL'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(101874428802708148)
,p_db_column_name=>'TOTAL_IVA'
,p_display_order=>490
,p_column_identifier=>'AW'
,p_column_label=>'Total Iva'
,p_column_type=>'STRING'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(101874575797708149)
,p_db_column_name=>'PRECIO_UNITARIO'
,p_display_order=>500
,p_column_identifier=>'AX'
,p_column_label=>'Precio Unitario'
,p_column_type=>'STRING'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(101874606503708150)
,p_db_column_name=>'DESCUENTO'
,p_display_order=>510
,p_column_identifier=>'AY'
,p_column_label=>'Descuento'
,p_column_type=>'STRING'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(106521024469760501)
,p_db_column_name=>'PORC_DESCUENTO'
,p_display_order=>520
,p_column_identifier=>'AZ'
,p_column_label=>'Porc Descuento'
,p_column_type=>'STRING'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(106521134230760502)
,p_db_column_name=>'MONTO_TOTAL'
,p_display_order=>530
,p_column_identifier=>'BA'
,p_column_label=>'Monto Total'
,p_column_type=>'STRING'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(171715890273910430)
,p_db_column_name=>'TOTAL'
,p_display_order=>540
,p_column_identifier=>'BD'
,p_column_label=>'Total'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(26379279974490699)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'263793'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'EDITAR:COD_ARTICULO:DESC_ARTICULO:NRO_LOTE:CANTIDAD:PRECIO_UNITARIO:PORC_DESCUENTO:PORC_RECARGO:TOTAL_IVA:MONTO_TOTAL:TOTAL:ELIMINAR:'
,p_sum_columns_on_break=>'TOTAL'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(22563624567269814)
,p_plug_name=>'DETALLE_PIE'
,p_parent_plug_id=>wwv_flow_imp.id(21771534139343326)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>40
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(22563712500269815)
,p_plug_name=>'PIE1'
,p_parent_plug_id=>wwv_flow_imp.id(22563624567269814)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>10
,p_plug_grid_column_span=>6
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(22564365172269821)
,p_plug_name=>'PIE2'
,p_parent_plug_id=>wwv_flow_imp.id(22563624567269814)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>30
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(22564809096269826)
,p_plug_name=>'PIE3'
,p_parent_plug_id=>wwv_flow_imp.id(22563624567269814)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>40
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(22564987785269827)
,p_plug_name=>'PIE4'
,p_parent_plug_id=>wwv_flow_imp.id(22563624567269814)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>50
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(22566656373269844)
,p_plug_name=>'PIE5'
,p_parent_plug_id=>wwv_flow_imp.id(22563624567269814)
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
 p_id=>wwv_flow_imp.id(22844632481807401)
,p_plug_name=>'IMPRESION'
,p_parent_plug_id=>wwv_flow_imp.id(21771534139343326)
,p_region_template_options=>'#DEFAULT#:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(40120082745263659)
,p_plug_display_sequence=>50
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(22844774940807402)
,p_plug_name=>unistr('Motivo de Impresi\00F3n')
,p_parent_plug_id=>wwv_flow_imp.id(22844632481807401)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(23046861734166020)
,p_plug_name=>'TALONARIO'
,p_parent_plug_id=>wwv_flow_imp.id(21771534139343326)
,p_region_template_options=>'#DEFAULT#:js-dialog-size720x480'
,p_plug_template=>wwv_flow_imp.id(40120082745263659)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(26473627920310210)
,p_plug_name=>unistr('MODIFICACI\00D3N DE REGISTRO')
,p_parent_plug_id=>wwv_flow_imp.id(21771534139343326)
,p_region_template_options=>'#DEFAULT#:js-dialog-autoheight:js-dialog-size720x480'
,p_plug_template=>wwv_flow_imp.id(40120082745263659)
,p_plug_display_sequence=>60
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(27324440826312310)
,p_plug_name=>'AGREGAR REGISTRO'
,p_parent_plug_id=>wwv_flow_imp.id(21771534139343326)
,p_region_template_options=>'#DEFAULT#:js-dialog-autoheight:js-dialog-size720x480'
,p_plug_template=>wwv_flow_imp.id(40120082745263659)
,p_plug_display_sequence=>80
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(27327850789312344)
,p_plug_name=>'ANULAR'
,p_parent_plug_id=>wwv_flow_imp.id(21771534139343326)
,p_region_template_options=>'#DEFAULT#:js-dialog-autoheight:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(40120082745263659)
,p_plug_display_sequence=>90
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
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
 p_id=>wwv_flow_imp.id(27327993967312345)
,p_plug_name=>unistr('Debe ingresar un motivo de anulaci\00F3n')
,p_parent_plug_id=>wwv_flow_imp.id(27327850789312344)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(29128892270274603)
,p_plug_name=>'AUXILIARES_DETALLE'
,p_parent_plug_id=>wwv_flow_imp.id(21771534139343326)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>70
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(30779926061619802)
,p_plug_name=>'OT'
,p_parent_plug_id=>wwv_flow_imp.id(21771534139343326)
,p_region_template_options=>'#DEFAULT#:js-dialog-size720x480'
,p_plug_template=>wwv_flow_imp.id(40120082745263659)
,p_plug_display_sequence=>100
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(30783665158619839)
,p_plug_name=>'Carga de pedidos'
,p_parent_plug_id=>wwv_flow_imp.id(30779926061619802)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(30780070773619803)
,p_plug_name=>'Carga de Pedidos'
,p_parent_plug_id=>wwv_flow_imp.id(30783665158619839)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT SEQ_ID,',
'       C001 cod_empresa,                             ',
'       C002 tip_comprobante,    ',
'       C003 ser_comprobante,    ',
'       C004 nro_comprobante,     ',
'       C005 cod_cliente,        ',
'       C006 nom_cliente,         ',
'       C007 tipo,',
'       APEX_ITEM.CHECKBOX (p_idx         => 1 ,',
'                           p_value       => SEQ_ID,',
'                           p_attributes  => (case C008',
'                                                 when ''S'' then ''checked ''',
'                                             else null',
'                                                 end ) ||''onclick="seleccionar(this)"'' ) as Carga',
'  FROM APEX_COLLECTIONS',
' WHERE COLLECTION_NAME = ''DETALLE_OT''      '))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Carga de Pedidos'
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
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(30780453853619807)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'MARIANABLA'
,p_internal_uid=>30780453853619807
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(30780586243619808)
,p_db_column_name=>'SEQ_ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Seq Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(30780643342619809)
,p_db_column_name=>'COD_EMPRESA'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Cod Empresa'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(30780739736619810)
,p_db_column_name=>'TIP_COMPROBANTE'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Tipo'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(30780868347619811)
,p_db_column_name=>'SER_COMPROBANTE'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Serie'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(30780967252619812)
,p_db_column_name=>'NRO_COMPROBANTE'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Nro. comprobante'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(30781042502619813)
,p_db_column_name=>'COD_CLIENTE'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>unistr('C\00F3digo')
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(30781117613619814)
,p_db_column_name=>'NOM_CLIENTE'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Nombre'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(30781228660619815)
,p_db_column_name=>'TIPO'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Tipo'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(30781361675619816)
,p_db_column_name=>'CARGA'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Carga'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(30848542952056552)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'308486'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'COD_CLIENTE:NOM_CLIENTE:TIP_COMPROBANTE:SER_COMPROBANTE:NRO_COMPROBANTE:TIPO:CARGA:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(22944167130412543)
,p_plug_name=>'PARAMETROS'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(99779964120177750)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(21772146939343332)
,p_button_name=>'AGG_CLIENTE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Crear Cliente'
,p_button_redirect_url=>'f?p=&APP_ID.:92:&SESSION.::&DEBUG.:::'
,p_icon_css_classes=>'fa-address-card'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(24409215524161931)
,p_button_sequence=>210
,p_button_plug_id=>wwv_flow_imp.id(21772146939343332)
,p_button_name=>'CARGAR_FACTURA'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Cargar'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'btn'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>2
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(22563367209269811)
,p_button_sequence=>220
,p_button_plug_id=>wwv_flow_imp.id(21772146939343332)
,p_button_name=>'PED'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Cargar Pedidos'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'btn'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(22563490227269812)
,p_button_sequence=>230
,p_button_plug_id=>wwv_flow_imp.id(21772146939343332)
,p_button_name=>'MOV_CAJA'
,p_button_static_id=>'forma_cobro'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Forma de Cobro'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'btn'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(110473949312213406)
,p_button_sequence=>250
,p_button_plug_id=>wwv_flow_imp.id(21772146939343332)
,p_button_name=>'Cobro'
,p_button_static_id=>'btn_cobro'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'F Cobro'
,p_button_redirect_url=>'f?p=&APP_ID.:95:&SESSION.::&DEBUG.::P95_COD_SUCURSAL,P95_SER_COMPROBANTE,P95_NRO_COMPROBANTE,P95_MOVCAJ_COD_CLIENTE,P95_TIPO_COMPROBANTE,P95_MOVCAJ_COD_MONEDA,P95_COD_MONEDA_BASE,P95_COD_SUCURSAL,P95_COD_CUSTODIO,P95_COD_CUSTODIO_ENT,P95_P_IND_GENERA_MD,P95_P_FECHA,P95_TIP_COMPRO,P95_NRO_COMPRO,P95_SER_COMP,P95_DETALLE_SER_MOV_CAJ,P95_TIP_COMPRO:&P99_COD_SUCURSAL.,&P99_SER_COMPROBANTE.,&P99_NRO_COMPROBANTE.,&P99_COD_CLIENTE.,&P99_TIP_COMPROBANTE_AUX.,&P99_COD_MONEDA.,&P99_COD_MONEDA_BASE.,&P99_COD_SUCURSAL.,&P99_COD_CUSTODIO.,&P99_COD_CUSTODIO_ENT.,&P99_GENERA_MD.,&P99_FEC_COMPROBANTE.,&P99_TIP_COMPROBANTE_AUX.,&P99_NRO_COMPROBANTE.,&P99_SER_COMPROBANTE.,&P99_SER_COMPROBANTE.,&P99_TIP_COMPROBANTE_AUX.'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(27820365998945129)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(27327993967312345)
,p_button_name=>'CANCELAR_ANULACION'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Cancelar'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(29394118245747228)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(22844632481807401)
,p_button_name=>'VOLVER_IMPRESION'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Volver '
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(30783206892619835)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(30783665158619839)
,p_button_name=>'VOLVER_OT'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Aceptar'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(27325612081312322)
,p_button_sequence=>90
,p_button_plug_id=>wwv_flow_imp.id(27324440826312310)
,p_button_name=>'VOLVER_AGREGAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Cancelar'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(27819949016945125)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(27327993967312345)
,p_button_name=>'ACEPTAR_ANULACION'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Aceptar '
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(23048399808166035)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(23046861734166020)
,p_button_name=>'VOLVER'
,p_button_static_id=>'VOLVER'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Aceptar'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-reply'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(22845279862807407)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(22844632481807401)
,p_button_name=>'IMPRIMIR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Imprimir'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'btn'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(26474686723310220)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(26473627920310210)
,p_button_name=>'VOLVER_CAMBIOS'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Volver'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(27325565401312321)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_imp.id(27324440826312310)
,p_button_name=>'AGREGAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Agregar'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(27326198411312327)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(22563598982269813)
,p_button_name=>'AGREGAR_REGISTRO'
,p_button_static_id=>'AGREGAR_REGISTRO'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Agregar'
,p_button_position=>'EDIT'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(114141240015544434)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(21771534139343326)
,p_button_name=>'Imprimir'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187078917263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Imprimir Factura'
,p_button_position=>'EDIT'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-print'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(114141165403544433)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(21771534139343326)
,p_button_name=>'Visualizar'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187078917263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Visualizar Factura'
,p_button_position=>'EDIT'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-materialized-view'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(1098917952413283402)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(21771534139343326)
,p_button_name=>'Visualizar_2'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Visualizar Factura'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:760:&SESSION.::&DEBUG.::P760_COD_EMPRESA,P760_TIP_COMPROBANTE,P760_SER_COMPROBANTE,P760_NRO_COMPROBANTE,P760_REIMPRESO,P760_COD_CLIENTE,P760_IMPRIME_CONDICION,P760_USUARIO:&P99_COD_EMPRESA.,&P99_TIP_COMPROBANTE.,&P99_SER_COMPROBANTE.,&P99_NRO_COMPROBANTE.,N,&P99_COD_CLIENTE.,&P99_IMPRIME_CONDICION.,&P_COD_USUARIO.'
,p_icon_css_classes=>'fa-materialized-view'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(23498593628061409)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(21771534139343326)
,p_button_name=>'LIMPIAR'
,p_button_static_id=>'LIMPIAR'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Limpiar'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:99:&SESSION.::&DEBUG.:99,95::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(23498671994061410)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(21771534139343326)
,p_button_name=>'IMPRIMIR1'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Imprimir'
,p_button_position=>'EDIT'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(23498347213061407)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(21771534139343326)
,p_button_name=>'BUSCAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Buscar'
,p_button_position=>'EDIT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'u-color-21-bg u-color-13-text'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(23498759414061411)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_imp.id(21771534139343326)
,p_button_name=>'GUARDAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Guardar'
,p_button_position=>'EDIT'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'VCONTROL NUMBER;',
'BEGIN',
'    VCONTROL := SEGURIDAD_GRANULAR.RETORNA_PERMISO_BOTON(ppage_id     => :APP_PAGE_ID,',
'                                                         papli0100_id => :P_APLI0100_ID,',
'                                                         pcod_empresa => :P_COD_EMPRESA,',
'                                                         pusua0100_id => :P_USUA0100_ID,',
'                                                         pdm_boto     => 1); ',
'',
'    IF VCONTROL = 0 THEN',
'        RETURN FALSE;',
'    ELSE',
'        RETURN TRUE;',
'    END IF;                                                     ',
'END;'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'FUNCTION_BODY'
,p_button_css_classes=>'u-color-21-bg u-color-13-text'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(23498898281061412)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_imp.id(21771534139343326)
,p_button_name=>'ACTUALIZAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Actualizar'
,p_button_position=>'EDIT'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'VCONTROL NUMBER;',
'BEGIN',
'    VCONTROL := SEGURIDAD_GRANULAR.RETORNA_PERMISO_BOTON(ppage_id     => :APP_PAGE_ID,',
'                                                         papli0100_id => :P_APLI0100_ID,',
'                                                         pcod_empresa => :P_COD_EMPRESA,',
'                                                         pusua0100_id => :P_USUA0100_ID,',
'                                                         pdm_boto     => 2); ',
'',
'    IF VCONTROL = 0 THEN',
'        RETURN FALSE;',
'    ELSE',
'        RETURN TRUE;',
'    END IF;                                                     ',
'END;'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'FUNCTION_BODY'
,p_button_css_classes=>'u-color-21-bg u-color-13-text'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(23498456223061408)
,p_button_sequence=>90
,p_button_plug_id=>wwv_flow_imp.id(21771534139343326)
,p_button_name=>'ELIMINAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Eliminar'
,p_button_position=>'EDIT'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'VCONTROL NUMBER;',
'BEGIN',
'    VCONTROL := SEGURIDAD_GRANULAR.RETORNA_PERMISO_BOTON(ppage_id     => :APP_PAGE_ID,',
'                                                         papli0100_id => :P_APLI0100_ID,',
'                                                         pcod_empresa => :P_COD_EMPRESA,',
'                                                         pusua0100_id => :P_USUA0100_ID,',
'                                                         pdm_boto     => 3); ',
'',
'    IF VCONTROL = 0 THEN',
'        RETURN FALSE;',
'    ELSE',
'        RETURN TRUE;',
'    END IF;                                                     ',
'END;'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'FUNCTION_BODY'
,p_button_css_classes=>'u-color-21-bg u-color-13-text'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(207199680267570103)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(21771534139343326)
,p_button_name=>'BT_VOLVER'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--simple:t-Button--gapRight'
,p_button_template_id=>wwv_flow_imp.id(40187078917263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Volver'
,p_button_position=>'LEFT_OF_TITLE'
,p_button_redirect_url=>'f?p=&APP_ID.:612:&SESSION.::&DEBUG.:612::'
,p_icon_css_classes=>'fa-arrow-left'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(106524733074760538)
,p_branch_name=>unistr('Ir a P\00E1gina 99')
,p_branch_action=>'f?p=&APP_ID.:99:&SESSION.::&DEBUG.:99,95:P99_COD_EMPRESA,P99_COD_CLIENTE,P99_COD_USUARIO,P99_TIP_COMPROBANTE,P99_SER_COMPROBANTE,P99_NRO_COMPROBANTE,P99_IMPRIMIR_REPORTE,P99_TIP_COMPROBANTE_AUX:&P99_COD_EMPRESA.,&P99_COD_CLIENTE.,&P99_COD_USUARIO.,&P99_TIP_COMPROBANTE.,&P99_SER_COMPROBANTE.,&P99_NRO_COMPROBANTE.,&P99_IMPRIMIR_REPORTE.,&P99_TIP_COMPROBANTE_AUX.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
,p_branch_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_branch_condition=>'P99_TIP_COMPROBANTE'
,p_branch_condition_text=>'FCO'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(36458083882086729)
,p_branch_name=>'GO_TO_FORM_CCMOVCAJ'
,p_branch_action=>'f?p=&APP_ID.:95:&SESSION.::&DEBUG.:95:P95_COD_MONEDA_COBRO:1&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(23498759414061411)
,p_branch_sequence=>20
,p_branch_condition_type=>'FUNCTION_BODY'
,p_branch_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P99_TIP_COMPROBANTE = ''FCO'' or :P99_TIP_COMPROBANTE = ''TKT'' THEN',
'    DECLARE',
'        DUMMY VARCHAR2(1);',
'    BEGIN',
'        Select DISTINCT ''1''',
'          into DUMMY',
'          from cc_habilitaciones',
'         where cod_empresa = :P99_COD_EMPRESA',
'           and cod_sucursal = :P99_COD_SUCURSAL_VAR',
'           and cod_usuario = :P99_COD_USUARIO',
'           and fec_cierre IS NULL;',
'        RETURN TRUE;   ',
'    EXCEPTION',
'        when no_data_found then',
unistr('            apex_error.add_error (p_message         => ''El usuario '' || :P99_COD_USUARIO || '' no posee ninguna caja habilitada.'' || chr(13) ||''No podr\00E1 grabar ning\00FAn registro hasta que tenga habilitada su caja.'','),
'                                  p_display_location => apex_error.c_inline_in_notification);',
'            RETURN FALSE;',
'        when others then',
'            apex_error.add_error (p_message         => ''Error en la tabla de Habilitaciones de Cajas'' || sqlerrm,',
'                                  p_display_location => apex_error.c_inline_in_notification);',
'            RETURN FALSE;',
'    END;',
'ELSE',
'    RETURN FALSE;',
'END IF;'))
,p_branch_condition_text=>'PLSQL'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(36458109036086730)
,p_branch_name=>'GO_TO_FORM_CCRECIBO'
,p_branch_action=>'f?p=&APP_ID.:44:&SESSION.::&DEBUG.:44:P44_COD_CLIENTE,P44_NOM_CLIENTE,P44_SER_COMPROBANTE,P44_NRO_COMPROBANTE:&P99_COD_CLIENTE.,&P99_NOM_CLIENTE.,&P99_SER_COMPROBANTE_REF.,&P99_NRO_COMPROBANTE_REF.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(23498759414061411)
,p_branch_sequence=>30
,p_branch_condition_type=>'FUNCTION_BODY'
,p_branch_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P99_TIP_COMPROBANTE = ''FCO'' AND :P99_TIP_COMPROBANTE_REF = ''ORT'' THEN',
'    RETURN TRUE;',
'ELSE',
'    RETURN FALSE;',
'END IF;'))
,p_branch_condition_text=>'PLSQL'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(36457851270086727)
,p_branch_name=>'GO_TO_FORM_CCMOVCAJ'
,p_branch_action=>'f?p=&APP_ID.:95:&SESSION.::&DEBUG.:95::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(23498759414061411)
,p_branch_sequence=>40
,p_branch_condition_type=>'VALUE_OF_ITEM_IN_CONDITION_IN_COLON_DELIMITED_LIST'
,p_branch_condition=>'P99_TIP_COMPROBANTE'
,p_branch_condition_text=>'FCO,TKT'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(101873867215708142)
,p_branch_name=>unistr('Ir a P\00E1gina 99')
,p_branch_action=>'f?p=&APP_ID.:99:&SESSION.::&DEBUG.::P99_COD_EMPRESA,P99_COD_CLIENTE,P99_COD_USUARIO,P99_TIP_COMPROBANTE,P99_SER_COMPROBANTE,P99_NRO_COMPROBANTE,P99_IMPRIMIR_REPORTE,P99_TIP_COMPROBANTE_AUX:&P99_COD_EMPRESA.,&P99_COD_CLIENTE.,&P99_COD_USUARIO.,&P99_TIP_COMPROBANTE.,&P99_SER_COMPROBANTE.,&P99_NRO_COMPROBANTE.,&P99_IMPRIMIR_REPORTE.,&P99_TIP_COMPROBANTE_AUX.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>50
,p_branch_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_branch_condition=>'P99_TIP_COMPROBANTE'
,p_branch_condition_text=>'FCR'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(36457700976086726)
,p_branch_name=>'GO_TO_FORM_CCSALMOD'
,p_branch_action=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(23498759414061411)
,p_branch_sequence=>70
,p_branch_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_branch_condition=>'P99_IMPRIMIR'
,p_branch_condition_text=>'S'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(36458229358086731)
,p_branch_name=>'GO_TO_FORM_SMORDSER'
,p_branch_action=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(23498759414061411)
,p_branch_sequence=>80
,p_branch_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_branch_condition=>'P99_GEN_ORDEN'
,p_branch_condition_text=>'S'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(21771188079343322)
,p_name=>'P99_COD_EMPRESA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(21771034358343321)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(21771255882343323)
,p_name=>'P99_COD_SUCURSAL_VAR'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(21771034358343321)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(21771396360343324)
,p_name=>'P99_COD_MODULO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(21771034358343321)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(21771424219343325)
,p_name=>'P99_COD_USUARIO'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(21771034358343321)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(21771816432343329)
,p_name=>'P99_COD_SUCURSAL'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(21772006322343331)
,p_prompt=>'Sucursal'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LVVSUCURSALDET_VTFACTUR'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  select cod_sucursal||'' - ''||descripcion D, cod_sucursal R',
'    from sucursales ',
'   where cod_empresa = :P_COD_EMPRESA',
'   and cod_sucursal not in (''209'')',
'order by descripcion'))
,p_lov_cascade_parent_items=>'P_COD_EMPRESA'
,p_ajax_items_to_submit=>'P_COD_EMPRESA'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>90
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(21771928919343330)
,p_name=>'P99_TIP_COMPROBANTE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(21772006322343331)
,p_prompt=>'Tipo de Comprobante'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC2:FCO;FCO,FCR;FCR,TKT;TKT,DEB;DEB,FEX;FEX'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(21772396723343334)
,p_name=>'P99_SER_COMPROBANTE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(21772006322343331)
,p_prompt=>'Serie'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
,p_attribute_06=>'UPPER'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(21772446175343335)
,p_name=>'P99_NRO_COMPROBANTE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(21772006322343331)
,p_prompt=>unistr('N\00FAmero')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>8
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
 p_id=>wwv_flow_imp.id(21772510776343336)
,p_name=>'P99_COD_SECTOR'
,p_is_required=>true
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(21772006322343331)
,p_prompt=>'Sector'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LVSECTORES'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT cod_sector||'' - ''||descripcion D, ',
'         cod_sector R',
'    FROM sectores ',
'   WHERE cod_empresa = :P_COD_EMPRESA ',
'ORDER BY descripcion;'))
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
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
 p_id=>wwv_flow_imp.id(21772633063343337)
,p_name=>'P99_TIP_COMPROBANTE_REF'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(21772006322343331)
,p_prompt=>'Referencia'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC2:PED;PED,ORT;ORT,NIN,PER;PER,MAN;MAN'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(21772738817343338)
,p_name=>'P99_SER_COMPROBANTE_REF'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(21772006322343331)
,p_prompt=>'Serie'
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
 p_id=>wwv_flow_imp.id(21772807627343339)
,p_name=>'P99_NRO_COMPROBANTE_REF'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(21772006322343331)
,p_prompt=>unistr('N\00FAmero')
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
 p_id=>wwv_flow_imp.id(21772930985343340)
,p_name=>'P99_COD_CUSTODIO'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(21772006322343331)
,p_prompt=>'Custodio'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(21773030057343341)
,p_name=>'P99_GENERA_MD'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(21772235352343333)
,p_prompt=>'Generar'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(21773135300343342)
,p_name=>'P99_COD_CUSTODIO_ENT'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(21772235352343333)
,p_prompt=>'Destino'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  select cod_custodio||'' - ''||descripcion, cod_custodio ',
'    from cc_custodios',
'   where cod_empresa = :P99_COD_EMPRESA ',
'     --and cod_custodio <> :P99_COD_CUSTODIO ',
'order by descripcion'))
,p_cSize=>90
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(21773238686343343)
,p_name=>'P99_NRO_PLANILLA'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(21772235352343333)
,p_prompt=>'Planilla'
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
 p_id=>wwv_flow_imp.id(21773399403343344)
,p_name=>'P99_COD_CLIENTE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(21772146939343332)
,p_prompt=>'Cliente'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_CLIENTES_VTFACTUR'
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
' WHERE c.cod_empresa = :P_COD_EMPRESA',
'   AND c.cod_persona = p.cod_persona',
'   AND p.cod_persona = pt.cod_persona(+)',
'   AND p.cod_persona = pi.cod_persona(+)',
'   and  estado<>''I'' ',
' ORDER BY nombre'))
,p_cSize=>30
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'Y'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
,p_attribute_07=>'Clientes'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(21773437109343345)
,p_name=>'P99_COD_DIRECCION'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(21772146939343332)
,p_prompt=>unistr('Direcci\00F3n')
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LV_DIRECCIONES_VTFACTUR'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  select descripcion_ref, ',
'         detalle, ',
'         cod_direccion D,',
'         cod_direccion R',
'    from direc_personas ',
'   where cod_persona = :P99_CLIENTE_PERSONA',
'order by cod_direccion'))
,p_lov_cascade_parent_items=>'P99_CLIENTE_PERSONA'
,p_ajax_items_to_submit=>'P99_CLIENTE_PERSONA'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_cattributes_element=>'DETALLE:P99_DIR_CLIENTE'
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(21773528939343346)
,p_name=>'P99_RECARGO'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(21772146939343332)
,p_prompt=>'Recargo'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(21773657529343347)
,p_name=>'P99_NRO_INSCRIPCION_AD'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(21772146939343332)
,p_prompt=>'Nro. Insc. Ad.'
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
 p_id=>wwv_flow_imp.id(21773873066343349)
,p_name=>'P99_RUC'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(21772146939343332)
,p_prompt=>'RUC'
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
 p_id=>wwv_flow_imp.id(21773932890343350)
,p_name=>'P99_TEL_CLIENTE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(21772146939343332)
,p_prompt=>unistr('Tel\00E9fono')
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
 p_id=>wwv_flow_imp.id(22562322482269801)
,p_name=>'P99_IND_EXENTO_AD'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(21772146939343332)
,p_prompt=>'Exento Ad.'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22562426420269802)
,p_name=>'P99_IMPRIME_CONDICION'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(21772146939343332)
,p_prompt=>'Imp. sin cond. venta'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'S'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22562504059269803)
,p_name=>'P99_COD_VENDEDOR'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(21772146939343332)
,p_prompt=>'Vendedor'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_VENDEDORES_VTFACTUR'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  select v.cod_vendedor||'' - ''||nvl( v.descripcion, ltrim(p.nombre) ) D, ',
'         v.cod_vendedor R',
'    from fv_vendedores v, personas p ',
'   where v.cod_empresa = :P_COD_EMPRESA',
'     and v.cod_persona = p.cod_persona ',
'     and v.estado = ''A'' ',
'order by ltrim(p.nombre)'))
,p_cSize=>90
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22562676165269804)
,p_name=>'P99_COD_CONDICION_VENTA'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(21772146939343332)
,p_prompt=>'Cond. Venta'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov_language=>'PLSQL'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P99_USA_CONDICIONES = ''S'' THEN',
'    RETURN (''select cod_condicion_venta|| '''' - ''''||c.descripcion  descripcion, ',
'                    c.cod_condicion_venta                 ',
'               from cc_condiciones_ventas c ',
'              where c.cod_empresa = :P_COD_EMPRESA ',
'                and c.estado = ''''A'''' ',
'              ',
'                 ',
'           order by c.descripcion'');',
'ELSE',
'    RETURN(''select cod_condicion_venta|| '''' - ''''||c.descripcion descripcion, ',
'                   c.cod_condicion_venta',
'              from cc_condiciones_ventas c',
'             where c.cod_empresa = :P_COD_EMPRESA ',
'             and c.estado = ''''A'''' ',
'          ',
'              ',
'        order by c.descripcion'');',
'',
'END IF;'))
,p_lov_cascade_parent_items=>'P_COD_EMPRESA'
,p_ajax_items_to_submit=>'P_COD_EMPRESA'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>90
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22562735521269805)
,p_name=>'P99_COD_LISTA_PRECIO'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(21772146939343332)
,p_prompt=>'Lista Precio'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_LISTAS_PRECIOS_VTNOTCRE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT l.cod_lista_precio||'' - ''||l.descripcion D, ',
'         l.cod_lista_precio R',
'    FROM vt_listas_precios_cab l, monedas m ',
'   WHERE l.cod_empresa = :P_COD_EMPRESA',
'     AND l.cod_moneda = m.cod_moneda ',
'     AND l.estado = ''A'' ',
'ORDER BY l.descripcion'))
,p_cSize=>90
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22562880971269806)
,p_name=>'P99_COD_MONEDA'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(21772146939343332)
,p_prompt=>'Moneda'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_MONEDAS_VTFACTUR'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  select cod_moneda R, ',
'         siglas, ',
'         tipo_cambio_dia, ',
'         cod_moneda||'' - ''||descripcion D',
'    from monedas ',
'order by cod_moneda'))
,p_cSize=>90
,p_begin_on_new_line=>'N'
,p_colspan=>6
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
,p_attribute_10=>'TIPO_CAMBIO_DIA:P99_C_TIP_CAMBIO'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22562974550269807)
,p_name=>'P99_FECHA_INICIAL'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(21772146939343332)
,p_prompt=>'Fecha Inicial'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_css_classes=>'allow_only_numbers'
,p_tag_attributes=>'onfocusout="this.value= isValidDate(this.value);"  onkeyup = "setDateFormat(this);" '
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22563017616269808)
,p_name=>'P99_FECHA_FINAL'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(21772146939343332)
,p_prompt=>'Fecha Final'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_css_classes=>'allow_only_numbers'
,p_tag_attributes=>'onfocusout="this.value= isValidDate(this.value);"  onkeyup = "setDateFormat(this);" '
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22563162792269809)
,p_name=>'P99_TIP_CAMBIO'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(21772146939343332)
,p_prompt=>'Referencia'
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
 p_id=>wwv_flow_imp.id(22563258289269810)
,p_name=>'P99_CAMBIO_MONEDA_PRECIO'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(21772146939343332)
,p_prompt=>'&nbsp'
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
 p_id=>wwv_flow_imp.id(22563806290269816)
,p_name=>'P99_D_COD_SUCURSAL'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(26473627920310210)
,p_prompt=>'Sucursal'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LVVSUCURSALDET_VTFACTUR'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  select cod_sucursal||'' - ''||descripcion D, cod_sucursal R',
'    from sucursales ',
'   where cod_empresa = :P_COD_EMPRESA',
'   and cod_sucursal not in (''209'')',
'order by descripcion'))
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22563966003269817)
,p_name=>'P99_COMENTARIO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(22563712500269815)
,p_prompt=>'Observaciones'
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
 p_id=>wwv_flow_imp.id(22564039771269818)
,p_name=>'P99_DESCRIPCION_DETALLE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(22563712500269815)
,p_prompt=>unistr('Descripci\00F3n Detalle (Licitaci\00F3n)')
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
 p_id=>wwv_flow_imp.id(22564164490269819)
,p_name=>'P99_IMPORTE_CAPITAL'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(22563712500269815)
,p_prompt=>'Capital'
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
 p_id=>wwv_flow_imp.id(22564202277269820)
,p_name=>'P99_IMPORTE_INTERES'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(22563712500269815)
,p_prompt=>unistr('Inter\00E9s')
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
 p_id=>wwv_flow_imp.id(22564471794269822)
,p_name=>'P99_ENTREGA_INICIAL'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(22564365172269821)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22564568264269823)
,p_name=>'P99_RECARGO_PORC'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(22564365172269821)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22564632548269824)
,p_name=>'P99_NRO_PROMO'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(22564365172269821)
,p_prompt=>unistr('N\00B0 promo')
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
 p_id=>wwv_flow_imp.id(22564714361269825)
,p_name=>'P99_NRO_PEDIDO'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(22564365172269821)
,p_prompt=>unistr('N\00FAmero Pedido')
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
 p_id=>wwv_flow_imp.id(22565066474269828)
,p_name=>'P99_EXENTAS'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(22564809096269826)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22565133132269829)
,p_name=>'P99_GRAVADAS'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(22564809096269826)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22565227339269830)
,p_name=>'P99_CONTROL_FIN'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(22564809096269826)
,p_prompt=>'Control fin.'
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
 p_id=>wwv_flow_imp.id(22565343835269831)
,p_name=>'P99_IND_PRODUCTO_ARMADO'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(22564809096269826)
,p_prompt=>'Producto Armado'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_tag_attributes=>'readonly'
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22565427395269832)
,p_name=>'P99_SUBTOTAL'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(22564987785269827)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22565557430269833)
,p_name=>'P99_TOTAL_IVA'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(22564987785269827)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22565624465269834)
,p_name=>'P99_AJUSTE_IVA'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(22564987785269827)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22565706175269835)
,p_name=>'P99_TOTAL'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(22564987785269827)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22565850963269836)
,p_name=>'P99_EXENTAS_1'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(22564809096269826)
,p_item_default=>'0'
,p_prompt=>'Exentas'
,p_format_mask=>'999G999G999G999G990D00'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22565950535269837)
,p_name=>'P99_GRAVADAS_1'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(22564809096269826)
,p_prompt=>'Gravadas'
,p_format_mask=>'999G999G999G999G990D00'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22566069586269838)
,p_name=>'P99_SUBTOTAL_1'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(22564987785269827)
,p_prompt=>'Subtotal'
,p_format_mask=>'999G999G999G999G990D00'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22566145140269839)
,p_name=>'P99_TOTAL_IVA_1'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(22564987785269827)
,p_prompt=>'Total IVA'
,p_format_mask=>'999G999G999G999G990D00'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22566204523269840)
,p_name=>'P99_AJUSTE_IVA_1'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(22564987785269827)
,p_prompt=>'Ajuste IVA'
,p_format_mask=>'999G999G999G999G990D00'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22566374408269841)
,p_name=>'P99_TOTAL_1'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(22564987785269827)
,p_prompt=>'Total'
,p_format_mask=>'999G999G999G999G990D00'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22566407712269842)
,p_name=>'P99_ENTREGA_INICIAL_1'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(22564365172269821)
,p_prompt=>'Entrega Inicial'
,p_format_mask=>'999G999G999G999G990D00'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22566513059269843)
,p_name=>'P99_RECARGO_PORC_1'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(22564365172269821)
,p_prompt=>'Recargo'
,p_format_mask=>'999G999G999G999G990D00'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22566731178269845)
,p_name=>'P99_COD_USUARIO_CAB'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(22566656373269844)
,p_prompt=>'Datos de Alta'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22566876192269846)
,p_name=>'P99_HORA_ALTA'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(22566656373269844)
,p_prompt=>'&nbsp'
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
 p_id=>wwv_flow_imp.id(22566934534269847)
,p_name=>'P99_NRO_MOV_CAJ'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(22566656373269844)
,p_prompt=>'Movimiento de Caja'
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
 p_id=>wwv_flow_imp.id(22567031878269848)
,p_name=>'P99_ESTADO'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(22566656373269844)
,p_prompt=>'Anulado'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'A'
,p_attribute_03=>'P'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22567162195269849)
,p_name=>'P99_FEC_ESTADO'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(22566656373269844)
,p_prompt=>'&nbsp'
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
 p_id=>wwv_flow_imp.id(22844849515807403)
,p_name=>'P99_COD_MOTIVO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(22844774940807402)
,p_prompt=>'Motivo'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_MOTIVO_REIMPRESION_VTNOTCRE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DESCRIPCION D, ',
'       COD_MOTIVO R',
'  FROM cc_MOTIVOS_IMPRESION_canje'))
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22844913202807404)
,p_name=>'P99_DESCRIPCION'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(22844774940807402)
,p_prompt=>'Comentario'
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
 p_id=>wwv_flow_imp.id(22845087878807405)
,p_name=>'P99_I_COD_USUARIO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(22844774940807402)
,p_prompt=>'Usuario'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22845178527807406)
,p_name=>'P99_FECHA'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(22844774940807402)
,p_prompt=>unistr('Fecha de impresi\00F3n')
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
 p_id=>wwv_flow_imp.id(22845328866807408)
,p_name=>'P99_TIP_TICKET'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(21771034358343321)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22845453581807409)
,p_name=>'P99_COD_SUCURSAL_CENTRAL'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(21771034358343321)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22845518386807410)
,p_name=>'P99_NRO_TIK_INICIAL'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(21771034358343321)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22845653006807411)
,p_name=>'P99_NRO_TIK_FINAL'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(21771034358343321)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22845758825807412)
,p_name=>'P99_FEC_COMPROBANTE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(21772006322343331)
,p_prompt=>'Fecha'
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22845976543807414)
,p_name=>'P99_DIR_CLIENTE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(21772146939343332)
,p_prompt=>'&nbsp'
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
 p_id=>wwv_flow_imp.id(22846035723807415)
,p_name=>'P99_CLIENTE_PERSONA'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(21771034358343321)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22846268360807417)
,p_name=>'P99_PAGARE'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(21771034358343321)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22846398651807418)
,p_name=>'P99_SER_COMPROBANTE_VAR'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(21771034358343321)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22846404192807419)
,p_name=>'P99_P_TIPO'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(22944167130412543)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22846568011807420)
,p_name=>'P99_SER_DEB'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(21771034358343321)
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
 p_id=>wwv_flow_imp.id(22846671782807421)
,p_name=>'P99_SER_TIK'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(21771034358343321)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22846787920807422)
,p_name=>'P99_LISTA_PRECIOS_VAR'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(21771034358343321)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22846856311807423)
,p_name=>'P99_COD_CLIENTE_OCA'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(21771034358343321)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22846904102807424)
,p_name=>'P99_CONDICION_VENTA'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(21771034358343321)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22847084944807425)
,p_name=>'P99_MODIFICA_PRECIOS'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(21771034358343321)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22847141854807426)
,p_name=>'P99_VARIACION_MENOS'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(21771034358343321)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22847299264807427)
,p_name=>'P99_VARIACION_MAS'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(21771034358343321)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22847382299807428)
,p_name=>'P99_TIP_CONTADO'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_imp.id(21771034358343321)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22847499913807429)
,p_name=>'P99_TIP_TICKET_VAR'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_imp.id(21771034358343321)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22847558056807430)
,p_name=>'P99_TIP_DEBITO'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_imp.id(21771034358343321)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22847665969807431)
,p_name=>'P99_TIP_CREDITO'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_imp.id(21771034358343321)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22847723727807432)
,p_name=>'P99_TIP_REFERENCIAS'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_imp.id(21771034358343321)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22847881074807433)
,p_name=>'P99_VENDEDOR_SERVICIOS'
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_imp.id(21771034358343321)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22847959871807434)
,p_name=>'P99_COD_MONEDA_PRECIO'
,p_item_sequence=>270
,p_item_plug_id=>wwv_flow_imp.id(21771034358343321)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22848073601807435)
,p_name=>'P99_COD_MONEDA_BASE'
,p_item_sequence=>280
,p_item_plug_id=>wwv_flow_imp.id(21771034358343321)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22848113052807436)
,p_name=>'P99_COD_SECTOR_VAR'
,p_item_sequence=>290
,p_item_plug_id=>wwv_flow_imp.id(21771034358343321)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22848291117807437)
,p_name=>'P99_MENSAJE_CONTADO'
,p_item_sequence=>300
,p_item_plug_id=>wwv_flow_imp.id(21771034358343321)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22848396934807438)
,p_name=>'P99_MENSAJE_CREDITO'
,p_item_sequence=>310
,p_item_plug_id=>wwv_flow_imp.id(21771034358343321)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22848417920807439)
,p_name=>'P99_USA_CONDICIONES'
,p_item_sequence=>320
,p_item_plug_id=>wwv_flow_imp.id(21771034358343321)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22848557994807440)
,p_name=>'P99_TIPO_TALON_FACTURA'
,p_item_sequence=>330
,p_item_plug_id=>wwv_flow_imp.id(21771034358343321)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22848617292807441)
,p_name=>'P99_UNIDAD_MEDIDA'
,p_item_sequence=>340
,p_item_plug_id=>wwv_flow_imp.id(21771034358343321)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22848735378807442)
,p_name=>'P99_TIP_VENTA'
,p_item_sequence=>350
,p_item_plug_id=>wwv_flow_imp.id(21771034358343321)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22848847474807443)
,p_name=>'P99_RUBRO_REPUESTO'
,p_item_sequence=>360
,p_item_plug_id=>wwv_flow_imp.id(21771034358343321)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22848973997807444)
,p_name=>'P99_RUBRO_MANO_OBRA'
,p_item_sequence=>370
,p_item_plug_id=>wwv_flow_imp.id(21771034358343321)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22849095051807445)
,p_name=>'P99_VIENE_DEL_LOTE'
,p_item_sequence=>380
,p_item_plug_id=>wwv_flow_imp.id(21771034358343321)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22849157981807446)
,p_name=>'P99_MONTO_AJUSTE_MAX'
,p_item_sequence=>390
,p_item_plug_id=>wwv_flow_imp.id(21771034358343321)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22849255170807447)
,p_name=>'P99_CREDITO_MINIMO'
,p_item_sequence=>400
,p_item_plug_id=>wwv_flow_imp.id(21771034358343321)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22849371113807448)
,p_name=>'P99_FEC_VENCIMIENTO'
,p_item_sequence=>410
,p_item_plug_id=>wwv_flow_imp.id(21771034358343321)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22849455105807449)
,p_name=>'P99_LOTE_DEFECTO'
,p_item_sequence=>420
,p_item_plug_id=>wwv_flow_imp.id(21771034358343321)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22849596371807450)
,p_name=>'P99_TIP_MOTIVO_ANULACION'
,p_item_sequence=>430
,p_item_plug_id=>wwv_flow_imp.id(21771034358343321)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22939928485412501)
,p_name=>'P99_MAX_NRO_FACTURA'
,p_item_sequence=>440
,p_item_plug_id=>wwv_flow_imp.id(21771034358343321)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22940039916412502)
,p_name=>'P99_RECARGO_VAR'
,p_item_sequence=>450
,p_item_plug_id=>wwv_flow_imp.id(21771034358343321)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22940117880412503)
,p_name=>'P99_TEL_EMPRESA'
,p_item_sequence=>460
,p_item_plug_id=>wwv_flow_imp.id(21771034358343321)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22940215642412504)
,p_name=>'P99_FAX_EMPRESA'
,p_item_sequence=>470
,p_item_plug_id=>wwv_flow_imp.id(21771034358343321)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22940382622412505)
,p_name=>'P99_RUC_EMPRESA'
,p_item_sequence=>480
,p_item_plug_id=>wwv_flow_imp.id(21771034358343321)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22940424835412506)
,p_name=>'P99_TIMB_EMPRESA'
,p_item_sequence=>490
,p_item_plug_id=>wwv_flow_imp.id(21771034358343321)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22940588441412507)
,p_name=>'P99_VT_COND_CONTADO'
,p_item_sequence=>500
,p_item_plug_id=>wwv_flow_imp.id(21771034358343321)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22940806955412510)
,p_name=>'P99_PORC_IVA'
,p_item_sequence=>510
,p_item_plug_id=>wwv_flow_imp.id(21771034358343321)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22940970108412511)
,p_name=>'P99_REFERENCIA'
,p_item_sequence=>520
,p_item_plug_id=>wwv_flow_imp.id(21771034358343321)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22941085843412512)
,p_name=>'P99_FACTURA_NEGATIVO'
,p_item_sequence=>530
,p_item_plug_id=>wwv_flow_imp.id(21771034358343321)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22941177069412513)
,p_name=>'P99_FACTURA_SIN_AUTORIZACION'
,p_item_sequence=>540
,p_item_plug_id=>wwv_flow_imp.id(21771034358343321)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22941249731412514)
,p_name=>'P99_PERMITE_ANULAR'
,p_item_sequence=>550
,p_item_plug_id=>wwv_flow_imp.id(21771034358343321)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22941356736412515)
,p_name=>'P99_CAMBIA_NUMERO_FAC'
,p_item_sequence=>560
,p_item_plug_id=>wwv_flow_imp.id(21771034358343321)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22941451005412516)
,p_name=>'P99_CARGA_SUCURSAL'
,p_item_sequence=>570
,p_item_plug_id=>wwv_flow_imp.id(21771034358343321)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22941571354412517)
,p_name=>'P99_CARGA_PRECIOS'
,p_item_sequence=>580
,p_item_plug_id=>wwv_flow_imp.id(21771034358343321)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22941617937412518)
,p_name=>'P99_CARGA_DESCUENTOS'
,p_item_sequence=>590
,p_item_plug_id=>wwv_flow_imp.id(21771034358343321)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22941789086412519)
,p_name=>'P99_CARGA_RECARGO'
,p_item_sequence=>600
,p_item_plug_id=>wwv_flow_imp.id(21771034358343321)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22941836830412520)
,p_name=>'P99_SUPERA_DESCUENTO'
,p_item_sequence=>610
,p_item_plug_id=>wwv_flow_imp.id(21771034358343321)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22941967202412521)
,p_name=>'P99_CARGA_COTIZACION'
,p_item_sequence=>620
,p_item_plug_id=>wwv_flow_imp.id(21771034358343321)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22942065294412522)
,p_name=>'P99_MODIFICA_FECHA_ANT'
,p_item_sequence=>630
,p_item_plug_id=>wwv_flow_imp.id(21771034358343321)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22942159391412523)
,p_name=>'P99_CAMBIA_FECHA'
,p_item_sequence=>640
,p_item_plug_id=>wwv_flow_imp.id(21771034358343321)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22942241333412524)
,p_name=>'P99_MODIFICA_DETALLE'
,p_item_sequence=>650
,p_item_plug_id=>wwv_flow_imp.id(21771034358343321)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22942336537412525)
,p_name=>'P99_REIMPRIME'
,p_item_sequence=>660
,p_item_plug_id=>wwv_flow_imp.id(21771034358343321)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22942480015412526)
,p_name=>'P99_IMPRIME_LICITACION'
,p_item_sequence=>670
,p_item_plug_id=>wwv_flow_imp.id(21771034358343321)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22942589430412527)
,p_name=>'P99_IMPRIME_COMENTARIO'
,p_item_sequence=>680
,p_item_plug_id=>wwv_flow_imp.id(21771034358343321)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22942619786412528)
,p_name=>'P99_NRO_MENSAJE'
,p_item_sequence=>690
,p_item_plug_id=>wwv_flow_imp.id(21771034358343321)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22942720486412529)
,p_name=>'P99_USA_UM_DEF'
,p_item_sequence=>700
,p_item_plug_id=>wwv_flow_imp.id(21771034358343321)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22942930811412531)
,p_name=>'P99_SUPERA_CANT_LINEAS'
,p_item_sequence=>710
,p_item_plug_id=>wwv_flow_imp.id(21771034358343321)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22944082017412542)
,p_name=>'P99_NRO_CUOTAS'
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_imp.id(21772146939343332)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22944208044412544)
,p_name=>'P99_P_NRO_COMPROBANTE'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(22944167130412543)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22944493570412546)
,p_name=>'P99_P_IND_ANTICIPO'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(22944167130412543)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22944536775412547)
,p_name=>'P99_P_NRO_COMPROBANTE_REF'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(22944167130412543)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22944650538412548)
,p_name=>'P99_P_TIP_COMPROBANTE_REF'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(22944167130412543)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22944716796412549)
,p_name=>'P99_P_SER_COMPROBANTE_REF'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(22944167130412543)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(23044988457166001)
,p_name=>'P99_ESTADO_ANT'
,p_item_sequence=>720
,p_item_plug_id=>wwv_flow_imp.id(21771034358343321)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(23045080071166002)
,p_name=>'P99_NRO_AUTORIZACION'
,p_item_sequence=>730
,p_item_plug_id=>wwv_flow_imp.id(21771034358343321)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(23045186658166003)
,p_name=>'P99_SER_CON'
,p_item_sequence=>740
,p_item_plug_id=>wwv_flow_imp.id(21771034358343321)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(23045221355166004)
,p_name=>'P99_NRO_CON_INICIAL'
,p_item_sequence=>750
,p_item_plug_id=>wwv_flow_imp.id(21771034358343321)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(23045375633166005)
,p_name=>'P99_NRO_CON_FINAL'
,p_item_sequence=>760
,p_item_plug_id=>wwv_flow_imp.id(21771034358343321)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(23045770351166009)
,p_name=>'P99_IMPRIME_CON'
,p_item_sequence=>770
,p_item_plug_id=>wwv_flow_imp.id(21771034358343321)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(23045867287166010)
,p_name=>'P99_TIP_IMPRESION_CON'
,p_item_sequence=>780
,p_item_plug_id=>wwv_flow_imp.id(21771034358343321)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(23045989552166011)
,p_name=>'P99_AUTO_IMPRESO'
,p_item_sequence=>790
,p_item_plug_id=>wwv_flow_imp.id(21771034358343321)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(23046009215166012)
,p_name=>'P99_AUX_MSJ'
,p_item_sequence=>860
,p_item_plug_id=>wwv_flow_imp.id(21771034358343321)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(23046124155166013)
,p_name=>'P99_SER_CRE'
,p_item_sequence=>800
,p_item_plug_id=>wwv_flow_imp.id(21771034358343321)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(23046280244166014)
,p_name=>'P99_NRO_CRE_INICIAL'
,p_item_sequence=>810
,p_item_plug_id=>wwv_flow_imp.id(21771034358343321)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(23046365577166015)
,p_name=>'P99_NRO_CRE_FINAL'
,p_item_sequence=>820
,p_item_plug_id=>wwv_flow_imp.id(21771034358343321)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(23046498685166016)
,p_name=>'P99_IMPRIME_CRE'
,p_item_sequence=>830
,p_item_plug_id=>wwv_flow_imp.id(21771034358343321)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(23046545376166017)
,p_name=>'P99_TIP_IMPRESION_CRE'
,p_item_sequence=>840
,p_item_plug_id=>wwv_flow_imp.id(21771034358343321)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(23046719642166019)
,p_name=>'P99_SHOW_LOV_CON'
,p_item_sequence=>870
,p_item_plug_id=>wwv_flow_imp.id(21771034358343321)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(23046968042166021)
,p_name=>'P99_TALON_CONTADO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(23046861734166020)
,p_prompt=>'Seleccione un talonario CONTADO para facturar'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_TALON_CONTADO_VTFACTUR'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
' select numero_inicial, ',
'        numero_final, ',
'        nro_talonario, ',
'        serie SERIE, ',
'        imprime, ',
'        tip_impresion, ',
'        decode( nvl( tip_impresion, ''F'' ), ''F'', ''Factura'', ''T'', ''Ticket'' ) desc_impresion,',
'        DECODE (auto_impresion,''S'',''AUTOIMPRESOR'',''PREIMPRESO'') TIPO, ',
'        auto_impresion ',
'   from talonarios ',
'  where cod_empresa = :P_COD_EMPRESA ',
'    and tip_talonario = ''FCO''',
'    and cod_sucursal = :P_COD_SUCURSAL',
'    and nvl( activo, ''N'' ) <> ''N'' ',
'    and nvl(codigo_usuario,:APP_USER)=:APP_USER',
'order by numero_inicial'))
,p_lov_cascade_parent_items=>'P_COD_EMPRESA,P99_TIP_CONTADO,P_COD_SUCURSAL'
,p_ajax_items_to_submit=>'P_COD_EMPRESA,P99_TIP_CONTADO,P_COD_SUCURSAL'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
,p_attribute_07=>'Talonario Contado'
,p_attribute_08=>'700'
,p_attribute_09=>'450'
,p_attribute_10=>'NUMERO_INICIAL:P99_NRO_CON_INICIAL,NUMERO_FINAL:P99_NRO_CON_FINAL,SERIE:P99_SER_COMPROBANTE,IMPRIME:P99_IMPRIME_CRE,TIP_IMPRESION:P99_TIP_IMPRESION_CRE,TIPO:P99_TIPO_IMPRESION,AUTO_IMPRESION:P99_AUTO_IMPRESION'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(23047031093166022)
,p_name=>'P99_TALON_CREDITO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(23046861734166020)
,p_prompt=>unistr('Seleccione un talonario CR\00C9DITO para facturar')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_TALON_CREDITO_VTFACTUR'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select numero_inicial, ',
'numero_final, ',
'nro_talonario,   ',
'SERIE, ',
'imprime, ',
'tip_impresion, ',
'decode( nvl( tip_impresion, ''F'' ), ''F'', ''Factura'', ''T'', ''Ticket'' ) desc_impresion,',
'DECODE (auto_impresion,''S'',''AUTOIMPRESOR'',''PREIMPRESO'') TIPO, ',
'auto_impresion',
'from talonarios T ',
'where cod_empresa = :P_COD_EMPRESA ',
'and tip_talonario = :P99_TIP_CREDITO ',
'and cod_sucursal = :P_COD_SUCURSAL',
'and nvl( activo, ''N'' ) <> ''N'' ',
'and nvl(codigo_usuario,:APP_USER)=:APP_USER ',
'order by numero_inicial, numero_final'))
,p_lov_cascade_parent_items=>'P_COD_EMPRESA,P99_TIP_CREDITO,P_COD_SUCURSAL'
,p_ajax_items_to_submit=>'P_COD_EMPRESA,P99_TIP_CREDITO,P_COD_SUCURSAL'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
,p_attribute_07=>unistr('Talonario Cr\00E9dito')
,p_attribute_08=>'700'
,p_attribute_09=>'450'
,p_attribute_10=>'NUMERO_INICIAL:P99_NRO_CRE_INICIAL,NUMERO_FINAL:P99_NRO_CRE_FINAL,SERIE:P99_SER_COMPROBANTE,IMPRIME:P99_IMPRIME_CRE,TIP_IMPRESION:P99_TIP_IMPRESION_CRE,TIPO:P99_TIPO_IMPRESION,AUTO_IMPRESION:P99_AUTO_IMPRESION'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(23047134279166023)
,p_name=>'P99_TALON_TICKET'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(23046861734166020)
,p_prompt=>'Seleccione un talonario TICKET para facturar'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_TALON_TICKET_VTFACTUR'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select numero_inicial,',
'       numero_final,',
'       nro_talonario,',
'       serie,',
'       imprime,',
'       tip_impresion R,',
'       decode(nvl(tip_impresion, ''F''), ''F'', ''Factura'', ''T'', ''Ticket'') D',
'  from talonarios',
' where cod_empresa = :P_COD_EMPRESA',
'   and tip_talonario = :P99_TIP_TICKET',
'   and cod_sucursal = :P99_COD_SUCURSAL_CENTRAL',
'   and nvl(activo, ''N'') <> ''N''',
'   AND DECODE(:P99_COD_USUARIO,''LETICIAI'',',
'              ''S5'',',
'              ''CAJAST4'',  ',
'              ''I5'',',
'              ''CAJAST6'',',
'              ''I5'',',
'              ''JOSEGI'',',
'              ''H4'',',
'              ''CAJAST2'',',
'              ''S5'',',
'              ''CAJAST3'',',
'              ''H4'',',
'              ''CAJAST1'',',
'              ''Q4'',',
'              ''S5''   )= SERIE',
' order by numero_inicial'))
,p_cSize=>30
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
,p_attribute_08=>'700'
,p_attribute_09=>'450'
,p_attribute_10=>'NUMERO_INICIAL:P99_CRO_TIK_INICIAL,NUMERO_FINAL:P99_NRO_TIK_FINAL'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(23047246962166024)
,p_name=>'P99_TIPO_IMPRESION'
,p_item_sequence=>910
,p_item_plug_id=>wwv_flow_imp.id(21771034358343321)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(23048828094166040)
,p_name=>'P99_GEN_ORDEN'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(21771617885343327)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(23048950474166041)
,p_name=>'P99_CANTIDAD_IMPRESION'
,p_item_sequence=>920
,p_item_plug_id=>wwv_flow_imp.id(21771034358343321)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(23049094836166042)
,p_name=>'P99_IMPRIMIR'
,p_item_sequence=>930
,p_item_plug_id=>wwv_flow_imp.id(21771034358343321)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(23049263770166044)
,p_name=>'P99_IND_ANTICIPO_OT'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(21771617885343327)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(23049321118166045)
,p_name=>'P99_BORRADO'
,p_item_sequence=>940
,p_item_plug_id=>wwv_flow_imp.id(21771034358343321)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(23049450679166046)
,p_name=>'P99_IVA_PARCIAL'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(21771617885343327)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(23049550588166047)
,p_name=>'P99_SUBTOTAL_PARCIAL'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(21771617885343327)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(23049638213166048)
,p_name=>'P99_GRAVADAS_PARCIAL'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(21771617885343327)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(23049712269166049)
,p_name=>'P99_EXENTAS_PARCIAL'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(21771617885343327)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(23049868270166050)
,p_name=>'P99_GRU_COMPROBANTE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(21771617885343327)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(23497737483061401)
,p_name=>'P99_CARGA_DETALLES_VARIOS'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(21771617885343327)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(23497813431061402)
,p_name=>'P99_CARGA_DETALLE'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(21771617885343327)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(23497994205061403)
,p_name=>'P99_NRO_LINEAS'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(21771617885343327)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(23498009903061404)
,p_name=>'P99_TIP_ANTERIOR'
,p_item_sequence=>950
,p_item_plug_id=>wwv_flow_imp.id(21771034358343321)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(23498293444061406)
,p_name=>'P99_DESC_CUSTODIO'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(21772006322343331)
,p_prompt=>'&nbsp'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>90
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(23499388004061417)
,p_name=>'P99_OLD_ESTADO'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(21771617885343327)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(23499404437061418)
,p_name=>'P99_ESTADO_REPARTO'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(21771617885343327)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(23501521370061439)
,p_name=>'P99_CALCULA_IVA'
,p_item_sequence=>970
,p_item_plug_id=>wwv_flow_imp.id(21771034358343321)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(23641992832268806)
,p_name=>'P99_CONSULTA'
,p_item_sequence=>960
,p_item_plug_id=>wwv_flow_imp.id(21771034358343321)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(23911347954717803)
,p_name=>'P99_VENC_TKT'
,p_item_sequence=>980
,p_item_plug_id=>wwv_flow_imp.id(21771034358343321)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(23911536326717805)
,p_name=>'P99_DESC_IMPRESION'
,p_item_sequence=>990
,p_item_plug_id=>wwv_flow_imp.id(21771034358343321)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(24407458653161913)
,p_name=>'P99_ESTADO_CLIENTE'
,p_item_sequence=>1000
,p_item_plug_id=>wwv_flow_imp.id(21771034358343321)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(24407516992161914)
,p_name=>'P99_COD_ZONA'
,p_item_sequence=>1010
,p_item_plug_id=>wwv_flow_imp.id(21771034358343321)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(24407627546161915)
,p_name=>'P99_TIP_CLIENTE'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(21771617885343327)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(24408105366161920)
,p_name=>'P99_NRO_JERARQUIA'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(21771617885343327)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(24408293374161921)
,p_name=>'P99_PLAZO'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(21771617885343327)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(24408317409161922)
,p_name=>'P99_TIP_DOCUMENTO'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(21771617885343327)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(24408482203161923)
,p_name=>'P99_NIVEL'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(21771617885343327)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(24408595847161924)
,p_name=>'P99_TIPO_IMPUESTO'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(21771617885343327)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(24408623645161925)
,p_name=>'P99_SENIA'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(21771617885343327)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(24408731140161926)
,p_name=>'P99_DESC_OBSERVACION'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(22563712500269815)
,p_prompt=>unistr('Observaci\00F3n de Pedido')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_tag_attributes=>'readonly'
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
 p_id=>wwv_flow_imp.id(24409591212161934)
,p_name=>'P99_PORCENTAJE_DESCUENTO'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_imp.id(21771617885343327)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(24409697486161935)
,p_name=>'P99_P_IMPORTE_ANTICIPO'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(22944167130412543)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(24409706527161936)
,p_name=>'P99_DESCUENTO'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_imp.id(21771617885343327)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(25331096690948406)
,p_name=>'P99_OLD_CLIENTE'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_imp.id(21771617885343327)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(25332908802948425)
,p_name=>'P99_DECIMALES'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_imp.id(21771617885343327)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(25333067258948426)
,p_name=>'P99_TIP_CAMBIO_COMPRA'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_imp.id(21771617885343327)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(25333518813948431)
,p_name=>'P99_FECHA_LIMITE_FACTURACION'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(21772146939343332)
,p_prompt=>unistr('Fecha L\00EDmite Facturaci\00F3n')
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(26473779904310211)
,p_name=>'P99_M_COD_ARTICULO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(26473627920310210)
,p_prompt=>unistr('Art\00CDculo')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(26473880671310212)
,p_name=>'P99_M_CANTIDAD'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(26473627920310210)
,p_prompt=>'Cantidad'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_cMaxlength=>10
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(26473924179310213)
,p_name=>'P99_M_PORC_DESCUENTO'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(26473627920310210)
,p_prompt=>'% Descuento'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_cMaxlength=>5
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(26474030774310214)
,p_name=>'P99_SEQ_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(24410539880161944)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(26475621312310230)
,p_name=>'P99_COD_ARTICULO_AUX'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(29128892270274603)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(26475709825310231)
,p_name=>'P99_MULT'
,p_item_sequence=>1040
,p_item_plug_id=>wwv_flow_imp.id(21771034358343321)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(26475856218310232)
,p_name=>'P99_DIV'
,p_item_sequence=>1050
,p_item_plug_id=>wwv_flow_imp.id(21771034358343321)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(26475996950310233)
,p_name=>'P99_CANTIDAD_UB_AUX'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(29128892270274603)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(26476003028310234)
,p_name=>'P99_IND_NO_STOCK_AUX'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(29128892270274603)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(26476228865310236)
,p_name=>'P99_NRO_LOTE_AUX'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(26473627920310210)
,p_prompt=>'Nro Lote'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT '' Lote:  ''||NRO_LOTE ||'' Stock:  ''||nvl((select',
'sum(e.cant_dispon) from st_existencia_art e where e.cod_empresa=a.cod_empresa and e.cod_articulo=a.cod_articulo and e.nro_lote=a.nro_lote',
'and e.cod_sucursal=nvl(:P99_D_COD_SUCURSAL,:P99_COD_SUCURSAL)),0)d, NRO_LOTE c FROM ST_LOTES A WHERE COD_EMPRESA=:P_COD_EMPRESA AND COD_ARTICULO=:P99_COD_ARTICULO_AUX',
'',
''))
,p_lov_cascade_parent_items=>'P99_COD_ARTICULO_AUX,P_COD_EMPRESA,P99_COD_SUCURSAL,P99_D_COD_SUCURSAL'
,p_ajax_items_to_submit=>'P99_COD_ARTICULO_AUX,P_COD_EMPRESA,P99_COD_SUCURSAL,P99_D_COD_SUCURSAL'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(26476571631310239)
,p_name=>'P99_COD_ARTICULO_REL_BON_AUX'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(29128892270274603)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(26476697900310240)
,p_name=>'P99_COD_UNIDAD_MEDIDA_AUX'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(29128892270274603)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(26476795944310241)
,p_name=>'P99_M_PRECIO_UNITARIO'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(26473627920310210)
,p_prompt=>'Precio Unitario'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_cMaxlength=>15
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(26476861872310242)
,p_name=>'P99_DESCUENTO_AUX'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(29128892270274603)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(26476951667310243)
,p_name=>'P99_PORC_DESCUENTO_ANT_AUX'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(29128892270274603)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(26477069350310244)
,p_name=>'P99_TIENE_BONIF_AUX'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(29128892270274603)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(26477164110310245)
,p_name=>'P99_IMPORTE_BON_AUX'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(29128892270274603)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(26477207989310246)
,p_name=>'P99_PORC_RECARGO_ANT_AUX'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(29128892270274603)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(26477340185310247)
,p_name=>'P99_M_PORC_RECARGO'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(26473627920310210)
,p_prompt=>'% Recargo'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_cMaxlength=>3
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(26477402824310248)
,p_name=>'P99_RECARGO_AUX'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(29128892270274603)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(26477572423310249)
,p_name=>'P99_PORC_IVA_AUX'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_imp.id(29128892270274603)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(26477690172310250)
,p_name=>'P99_PORC_IVA_AD_AUX'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_imp.id(29128892270274603)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(26598095307744701)
,p_name=>'P99_BAND_BONIF'
,p_item_sequence=>1060
,p_item_plug_id=>wwv_flow_imp.id(21771034358343321)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(26598156803744702)
,p_name=>'P99_VART'
,p_item_sequence=>1070
,p_item_plug_id=>wwv_flow_imp.id(21771034358343321)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(26598213894744703)
,p_name=>'P99_COD_UNIDAD_BON'
,p_item_sequence=>1080
,p_item_plug_id=>wwv_flow_imp.id(21771034358343321)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(26598355607744704)
,p_name=>'P99_VCOD_ARTICULO_BON'
,p_item_sequence=>1090
,p_item_plug_id=>wwv_flow_imp.id(21771034358343321)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(26598460554744705)
,p_name=>'P99_VCANTIDAD_BON'
,p_item_sequence=>1100
,p_item_plug_id=>wwv_flow_imp.id(21771034358343321)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(26598509890744706)
,p_name=>'P99_VCANTIDAD_ART'
,p_item_sequence=>1110
,p_item_plug_id=>wwv_flow_imp.id(21771034358343321)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(26598690060744707)
,p_name=>'P99_VCANTIDAD_MIN'
,p_item_sequence=>1120
,p_item_plug_id=>wwv_flow_imp.id(21771034358343321)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(26598781577744708)
,p_name=>'P99_MONTO_TOTAL_AUX'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_imp.id(29128892270274603)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(26598887731744709)
,p_name=>'P99_TOTAL_IVA_AUX'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_imp.id(29128892270274603)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(26598990932744710)
,p_name=>'P99_IVA_ANT_AUX'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_imp.id(29128892270274603)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(26599084410744711)
,p_name=>'P99_IMPORTE_ANT_AUX'
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_imp.id(29128892270274603)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(26599188090744712)
,p_name=>'P99_MONTO_GRAVADA_10_AUX'
,p_item_sequence=>270
,p_item_plug_id=>wwv_flow_imp.id(29128892270274603)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(26599229615744713)
,p_name=>'P99_MONTO_GRAVADA_5_AUX'
,p_item_sequence=>280
,p_item_plug_id=>wwv_flow_imp.id(29128892270274603)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(26599399195744714)
,p_name=>'P99_MONTO_EXENTA_AUX'
,p_item_sequence=>290
,p_item_plug_id=>wwv_flow_imp.id(29128892270274603)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(26599767846744718)
,p_name=>'P99_IND_NO_DESCUENTO_AUX'
,p_item_sequence=>300
,p_item_plug_id=>wwv_flow_imp.id(29128892270274603)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(26599900140744720)
,p_name=>'P99_M_NRO_PROMO'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(26473627920310210)
,p_prompt=>'Nro. Promo'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LVARTPROMO_VTFACTUR'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
' select a.descripcion||''(''||p.cod_corto_art||'')'' descripcion,',
'        p.cod_articulo,',
'        p.fec_alta fecha_alta,',
'        p.nro_promo  ',
'   from inv.st_promocion p,st_articulos a',
'  where p.cod_empresa=a.cod_empresa',
'    and p.cod_articulo=a.cod_articulo',
'    and p.cod_art_promo=:P99_COD_ARTICULO_AUX',
'    and p.cod_empresa=:P_COD_EMPRESA;'))
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
,p_attribute_10=>'COD_ARTICULO:P99_COD_ART_AUX'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(26600027306744721)
,p_name=>'P99_COD_ART_AUX'
,p_item_sequence=>1140
,p_item_plug_id=>wwv_flow_imp.id(21771034358343321)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(26600282440744723)
,p_name=>'P99_COD_ART_PROMO_AUX'
,p_item_sequence=>310
,p_item_plug_id=>wwv_flow_imp.id(29128892270274603)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(26600524852744726)
,p_name=>'P99_AUX_MUESTRA_PROMO'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(26473627920310210)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(26601368738744734)
,p_name=>'P99_DESCUENTO_MAXIMO_AUX'
,p_item_sequence=>320
,p_item_plug_id=>wwv_flow_imp.id(29128892270274603)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(26601713087744738)
,p_name=>'P99_PRECIO_LISTA_AUX'
,p_item_sequence=>330
,p_item_plug_id=>wwv_flow_imp.id(29128892270274603)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(27323714900312303)
,p_name=>'P99_ELIMINA_REGISTRO'
,p_item_sequence=>1220
,p_item_plug_id=>wwv_flow_imp.id(21771034358343321)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(27324515696312311)
,p_name=>'P99_AUX_AGREGAR_REGISTRO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(27324440826312310)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(27324660806312312)
,p_name=>'P99_A_COD_ARTICULO'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(27324440826312310)
,p_prompt=>unistr('Art\00EDiculo')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_ARTICULOS_VTFACTUR'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cod_articulo||'' - ''||descripcion D, ',
'       cod_articulo R, ',
'       cod_origen_art, ',
'       cod_art_corto ',
'  from st_articulos ',
' where cod_empresa = :P_COD_EMPRESA',
'   and estado = ''A'' ',
'order by descripcion --) in ''AS'' order by descripcion'))
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(27324883376312314)
,p_name=>'P99_A_NRO_LOTE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(27324440826312310)
,p_prompt=>'Lote'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
' select l.nro_lote d,',
'        l.nro_lote r',
'   from st_lotes l, st_existencia_art s ',
'  where s.cod_empresa = :P_COD_EMPRESA ',
'    and s.cod_articulo = :P99_A_COD_ARTICULO ',
'    and s.cod_sucursal = :P99_COD_SUCURSAL',
'    and nvl( s.cant_dispon, 0 ) > 0 ',
'    and s.cod_empresa = l.cod_empresa ',
'    and s.cod_articulo = l.cod_articulo ',
'    and s.nro_lote = l.nro_lote ',
'    and nvl(l.activo,''N'') = ''S'' ',
'order by l.fec_vencimiento'))
,p_lov_cascade_parent_items=>'P99_A_COD_ARTICULO'
,p_ajax_items_to_submit=>'P99_A_COD_ARTICULO,P99_COD_SUCURSAL'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(27324959879312315)
,p_name=>'P99_A_CANTIDAD'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(27324440826312310)
,p_prompt=>'Cantidad'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(27325005265312316)
,p_name=>'P99_A_PRECIO_UNITARIO'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(27324440826312310)
,p_prompt=>'Precio Unitario'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(27325390847312319)
,p_name=>'P99_A_PORC_DESCUENTO'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(27324440826312310)
,p_prompt=>'% Descuento'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(27325496583312320)
,p_name=>'P99_A_PORC_RECARGO'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(27324440826312310)
,p_prompt=>'% Recargo'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(27326855513312334)
,p_name=>'P99_C_CAMBIO_MONEDA_PRECIO'
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_imp.id(21771617885343327)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(27327535817312341)
,p_name=>'P99_COD_MOTIVO_ANU'
,p_item_sequence=>270
,p_item_plug_id=>wwv_flow_imp.id(21771617885343327)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(27327619572312342)
,p_name=>'P99_COD_USUARIO_ANU'
,p_item_sequence=>280
,p_item_plug_id=>wwv_flow_imp.id(21771617885343327)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(27327775809312343)
,p_name=>'P99_ABRE_ANULACION'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(22566656373269844)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(27818265583945108)
,p_name=>'P99_MODIFICA_PRECIO_AUX'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(29128892270274603)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(27818616476945112)
,p_name=>'P99_DIRECCION'
,p_item_sequence=>1150
,p_item_plug_id=>wwv_flow_imp.id(21771034358343321)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(27818722522945113)
,p_name=>'P99_D_DESCUENTO_ANT_AUX'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(29128892270274603)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(27818847861945114)
,p_name=>'P99_D_RECARGO_ANT_AUX'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(29128892270274603)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(27819175101945117)
,p_name=>'P99_COD_ARTICULO_ANT'
,p_item_sequence=>1160
,p_item_plug_id=>wwv_flow_imp.id(21771034358343321)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(27819855294945124)
,p_name=>'P99_A_COD_MOTIVO_ANU'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(27327993967312345)
,p_prompt=>'Motivo'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select descripcion, cod_motivo_anu ',
'from vt_motivo_anulacion ',
'where cod_empresa = :P99_COD_EMPRESA',
'and tip_motivo = :P99_TIP_MOTIVO_ANULACION',
'order by 1'))
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(29128986359274604)
,p_name=>'P99_A_NRO_PROMO'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(27324440826312310)
,p_prompt=>'Nro. Promo'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LVARTPROMO_VTFACTUR'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
' select a.descripcion||''(''||p.cod_corto_art||'')'' descripcion,',
'        p.cod_articulo,',
'        p.fec_alta fecha_alta,',
'        p.nro_promo  ',
'   from inv.st_promocion p,st_articulos a',
'  where p.cod_empresa=a.cod_empresa',
'    and p.cod_articulo=a.cod_articulo',
'    and p.cod_art_promo=:P99_COD_ARTICULO_AUX',
'    and p.cod_empresa=:P_COD_EMPRESA;'))
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
,p_attribute_10=>'COD_ARTICULO:P99_COD_ART_AUX'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(29129098945274605)
,p_name=>'P99_AUX_MUESTRA_PROMO_1'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(27324440826312310)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(29132176747274636)
,p_name=>'P99_COD_IVA_AUX'
,p_item_sequence=>340
,p_item_plug_id=>wwv_flow_imp.id(29128892270274603)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(29132256594274637)
,p_name=>'P99_IND_RENTA_AUX'
,p_item_sequence=>350
,p_item_plug_id=>wwv_flow_imp.id(29128892270274603)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(29132531698274640)
,p_name=>'P99_FEC_ALTA'
,p_item_sequence=>290
,p_item_plug_id=>wwv_flow_imp.id(21771617885343327)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(29132643029274641)
,p_name=>'P99_IND_IMPRESO'
,p_item_sequence=>300
,p_item_plug_id=>wwv_flow_imp.id(21771617885343327)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(29132701946274642)
,p_name=>'P99_COD_RELACION_UM'
,p_item_sequence=>1180
,p_item_plug_id=>wwv_flow_imp.id(21771034358343321)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(29132861494274643)
,p_name=>'P99_DESC_ARTICULO_AUX'
,p_item_sequence=>360
,p_item_plug_id=>wwv_flow_imp.id(29128892270274603)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(29132989054274644)
,p_name=>'P99_COD_GRUPO_ART_AUX'
,p_item_sequence=>370
,p_item_plug_id=>wwv_flow_imp.id(29128892270274603)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(29133042756274645)
,p_name=>'P99_COD_ORIGEN_ART_AUX'
,p_item_sequence=>380
,p_item_plug_id=>wwv_flow_imp.id(29128892270274603)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(29133153007274646)
,p_name=>'P99_COSTO_PROMEDIO_AUX'
,p_item_sequence=>390
,p_item_plug_id=>wwv_flow_imp.id(29128892270274603)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(29133237041274647)
,p_name=>'P99_COSTO_PROMEDIO_REF_AUX'
,p_item_sequence=>400
,p_item_plug_id=>wwv_flow_imp.id(29128892270274603)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(29133385057274648)
,p_name=>'P99_MANEJA_LOTES_AUX'
,p_item_sequence=>410
,p_item_plug_id=>wwv_flow_imp.id(29128892270274603)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(29133417507274649)
,p_name=>'P99_COD_MONEDA_BASE_AUX'
,p_item_sequence=>420
,p_item_plug_id=>wwv_flow_imp.id(29128892270274603)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(29133558427274650)
,p_name=>'P99_DESCRIPCION_AUX'
,p_item_sequence=>430
,p_item_plug_id=>wwv_flow_imp.id(29128892270274603)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(29391658993747203)
,p_name=>'P99_VCANTIDAD'
,p_item_sequence=>1130
,p_item_plug_id=>wwv_flow_imp.id(21771034358343321)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(29393644196747223)
,p_name=>'P99_MAX_ORDEN'
,p_item_sequence=>310
,p_item_plug_id=>wwv_flow_imp.id(21771617885343327)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(29393785654747224)
,p_name=>'P99_ORDEN_AUX'
,p_item_sequence=>440
,p_item_plug_id=>wwv_flow_imp.id(29128892270274603)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(29393848274747225)
,p_name=>'P99_ABRE_IMPRIME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(22844632481807401)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(29395304795747240)
,p_name=>'P99_P_TIP_COMPROBANTE'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(22944167130412543)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(29395454925747241)
,p_name=>'P99_P_SER_COMPROBANTE'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_imp.id(22944167130412543)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(29395521504747242)
,p_name=>'P99_COD_ENCARGADO_FAC'
,p_item_sequence=>320
,p_item_plug_id=>wwv_flow_imp.id(21771617885343327)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(29395686395747243)
,p_name=>'P99_DESC_ENCARGADO_FAC'
,p_item_sequence=>330
,p_item_plug_id=>wwv_flow_imp.id(21771617885343327)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(29395955674747246)
,p_name=>'P99_C_TIP_CAMBIO'
,p_item_sequence=>340
,p_item_plug_id=>wwv_flow_imp.id(21771617885343327)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(29396239132747249)
,p_name=>'P99_ESTA_CONSULTANDO'
,p_item_sequence=>1170
,p_item_plug_id=>wwv_flow_imp.id(21771034358343321)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(30781554118619818)
,p_name=>'P99_SEQ_ID_PED'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(30779926061619802)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(30781640463619819)
,p_name=>'P99_ACCION'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(30779926061619802)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(30782902638619832)
,p_name=>'P99_ABRE_PEDIDOS'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(30779926061619802)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(31456648730510707)
,p_name=>'P99_URL'
,p_item_sequence=>350
,p_item_plug_id=>wwv_flow_imp.id(21771617885343327)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(31456927056510710)
,p_name=>'P99_SHOW_LOV_CRE'
,p_item_sequence=>880
,p_item_plug_id=>wwv_flow_imp.id(21771034358343321)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(31457047871510711)
,p_name=>'P99_SHOW_LOV_TCK'
,p_item_sequence=>890
,p_item_plug_id=>wwv_flow_imp.id(21771034358343321)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(31457141600510712)
,p_name=>'P99_SHOW_LOV'
,p_item_sequence=>900
,p_item_plug_id=>wwv_flow_imp.id(21771034358343321)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(31457771241510718)
,p_name=>'P99_NOM_CLIENTE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(21772146939343332)
,p_prompt=>'Nombre'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>90
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(35474754621616301)
,p_name=>'P99_REPORTE'
,p_item_sequence=>1210
,p_item_plug_id=>wwv_flow_imp.id(21771034358343321)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(35475088737616304)
,p_name=>'P99_REIMPRESO'
,p_item_sequence=>1190
,p_item_plug_id=>wwv_flow_imp.id(21771034358343321)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(35475102195616305)
,p_name=>'P99_PAGADO'
,p_item_sequence=>1200
,p_item_plug_id=>wwv_flow_imp.id(21771034358343321)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(72427169213335723)
,p_name=>'P99_CANTIDAD_ANTERIOR'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(26473627920310210)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(98643658112582149)
,p_name=>'P99_MENSAJE_PAGARE'
,p_item_sequence=>280
,p_item_plug_id=>wwv_flow_imp.id(21772146939343332)
,p_prompt=>'Mensaje'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
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
 p_id=>wwv_flow_imp.id(101873971629708143)
,p_name=>'P99_IMPRIMIR_REPORTE'
,p_item_sequence=>1230
,p_item_plug_id=>wwv_flow_imp.id(21771034358343321)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(101874280834708146)
,p_name=>'P99_TIP_COMPROBANTE_AUX'
,p_item_sequence=>1240
,p_item_plug_id=>wwv_flow_imp.id(21771034358343321)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(108924328480676442)
,p_name=>'P99_MENSAJE_NC'
,p_item_sequence=>1030
,p_item_plug_id=>wwv_flow_imp.id(21771034358343321)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(110474017719213407)
,p_name=>'P99_FORMA_COBRO'
,p_item_sequence=>270
,p_item_plug_id=>wwv_flow_imp.id(21772146939343332)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(114139850276544420)
,p_name=>'P95_REPORTE'
,p_item_sequence=>1250
,p_item_plug_id=>wwv_flow_imp.id(21771034358343321)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(114140487582544426)
,p_name=>'P99_SER_COMPROBANTE_AUX'
,p_item_sequence=>1260
,p_item_plug_id=>wwv_flow_imp.id(21771034358343321)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(114140525905544427)
,p_name=>'P99_TIP_COMPROBANTE_AUX2'
,p_item_sequence=>1270
,p_item_plug_id=>wwv_flow_imp.id(21771034358343321)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(114140609863544428)
,p_name=>'P99_NRO_COMPROBANTE_AUX'
,p_item_sequence=>1280
,p_item_plug_id=>wwv_flow_imp.id(21771034358343321)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(116055807902387802)
,p_name=>'P99_P_NOM_FAC'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(22944167130412543)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(207093550529914650)
,p_name=>'P99_ACCION_CONSULTA'
,p_item_sequence=>1290
,p_item_plug_id=>wwv_flow_imp.id(21771034358343321)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(119709434479278413)
,p_validation_name=>'Valida Numero de factura'
,p_validation_sequence=>10
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE ',
'    v_impresion VARCHAR2(5);',
'BEGIN ',
'    begin ',
'          select A.AUTO_IMPRESION',
'          INTO v_impresion',
'          from talonarios a',
'          where A.COD_EMPRESA = :P_COD_EMPRESA',
'          and A.serie = :P99_SER_COMPROBANTE',
'          and A.TIP_TALONARIO in (''FCR'', ''FCO'')',
'          and a.cod_sucursal = :P_COD_SUCURSAL',
'          AND FEC_VENCIMIENTO>=TRUNC(SYSDATE)',
'          AND ROWNUM =  1;',
'    end;',
'    IF v_impresion = ''N'' and :P99_NRO_COMPROBANTE is null then ',
unistr('        return ''Debe ingresar el n\00FAmero de factura'';'),
'    END IF;',
'END;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_when_button_pressed=>wwv_flow_imp.id(23498759414061411)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(171717819606910450)
,p_validation_name=>'Valida CONDICION_VENTA'
,p_validation_sequence=>20
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
' ',
'',
'DECLARE',
'      xbloqueado     EXCEPTION;',
'      vplazo NUMBER(3);',
'      vnro_cuotas NUMBER(3);',
'    BEGIN',
'      select nro_cuotas*per_cuotas, nro_cuotas',
'        into vplazo, vnro_cuotas',
'        from cc_condiciones_ventas',
'       where cod_empresa = :p_cod_empresa',
'         and cod_condicion_venta = :P99_COD_CONDICION_VENTA;',
'',
'       ',
'',
'         IF nvl( vplazo, 0 ) > 1 AND :P99_TIP_COMPROBANTE=''FCO'' THEN            ',
'             return ''Condicion de venta no valida para la FCO'';',
'             ',
'           ',
'        END IF;',
'        IF nvl( vnro_cuotas, 0 ) > 1 AND :P99_TIP_COMPROBANTE=''FCO'' THEN            ',
'             return ''Condicion de venta no valida para la FCO'';',
'             ',
'           ',
'        END IF;',
'',
'         IF nvl( vnro_cuotas, 0 ) = 0 AND :P99_TIP_COMPROBANTE=''FCR'' THEN            ',
'             return ''Condicion de venta no valida para la FCR'';',
'        END IF;',
'',
'     ',
'    EXCEPTION',
'      ',
'      when others then ',
'         null;',
'    END;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_when_button_pressed=>wwv_flow_imp.id(23498759414061411)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(175476562529656503)
,p_validation_name=>'Valida datos_pedidos'
,p_validation_sequence=>30
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
' ',
'if :P99_TIP_COMPROBANTE_REF=''PED'' THEN',
'DECLARE',
'      xbloqueado     EXCEPTION;',
'     vCOD_VENDEDOR VARCHAR2(60); VCOD_MONEDA VARCHAR2(60); VCOD_LISTA_PRECIOS VARCHAR2(60); VCOD_CLIENTE VARCHAR2(60); VCOD_condicion_venta VARCHAR2(60);',
'  ',
'    BEGIN',
'      select COD_VENDEDOR, COD_MONEDA, COD_LISTA_PRECIO, COD_CLIENTE, COD_CONDICION_VENTA',
'        into vCOD_VENDEDOR, VCOD_MONEDA, VCOD_LISTA_PRECIOS, VCOD_CLIENTE,VCOD_condicion_venta',
'        from vt_pedidos_cabecera',
'       where cod_empresa = :p_cod_empresa',
'         and tip_comprobante = :P99_TIP_COMPROBANTE_REF',
'         AND SER_COMPROBANTE= :P99_SER_COMPROBANTE_REF',
'         AND NRO_COMPROBANTE = :P99_NRO_COMPROBANTE_REF;',
'',
'       ',
'',
'        IF NVL(vCOD_VENDEDOR,''X'')<>:P99_COD_VENDEDOR THEN            ',
'             return ''El vendedor de la factura no coincide al pedido'';',
'        END IF;',
'',
'        IF NVL(vCOD_MONEDA,''X'')<>:P99_COD_MONEDA THEN            ',
'             return ''La Moneda de la factura no coincide al pedido'';',
'        END IF;',
'',
'        IF NVL(VCOD_LISTA_PRECIOS,''X'')<>:P99_COD_LISTA_PRECIO THEN            ',
'             return ''La Lista de precios de la factura no coincide al pedido'';',
'        END IF;',
'',
'        IF NVL(VCOD_CLIENTE,''X'')<>:P99_COD_cliente THEN            ',
'             return ''El cod cliente de la factura no coincide al pedido'';',
'        END IF;',
'',
'        IF NVL(VCOD_condicion_venta,''X'')<>:P99_COD_CONDICION_VENTA THEN            ',
'             return ''El cod de condicion de venta de la factura no coincide al pedido'';',
'        END IF;',
'',
'    ',
'',
'    EXCEPTION',
'      ',
'      when others then ',
'         null;',
'    END;',
'    END IF;',
'    if   :P99_TOTAL_1 IS NULL THEN',
'      return ''No se puede guardar una factura con importe 0'';',
'    END IF;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_when_button_pressed=>wwv_flow_imp.id(23498759414061411)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(175476705455656505)
,p_validation_name=>'Valida CLIENTE'
,p_validation_sequence=>40
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
' ',
' ',
'DECLARE',
'     VESTADO_CLIENTE VARCHAR2(60); ',
'    BEGIN',
'     ',
'     select ESTADO',
'        into VESTADO_CLIENTE',
'        from CC_CLIENTES',
'       where cod_empresa = :p_cod_empresa',
'         and COD_CLIENTE = :P99_COD_CLIENTE ;',
'',
'        IF nvl( VESTADO_CLIENTE, ''A'' ) = ''B'' and :P99_tip_comprobante not in (''FCO'',''TKT'')',
'    	and  :P99_COD_SECTOR not in (''4.1'')  THEN',
'    	  IF BS_busca_parametro( ''BS'', ''VT_COND_CONTADO''    )= NVL(:P99_COD_CONDICION_VENTA,''36'') AND :P99_tip_comprobante=''FCR'' AND :P99_tip_comprobante_REF=''ORT'' THEN',
'		    		NULL ;',
'	    	ELSE',
'			      RETURN(''El cliente seleccionado se encuentra bloqueado.'' );',
'			      ',
'			   END IF;',
'    END IF;',
'     IF nvl( VESTADO_CLIENTE, ''A'' ) = ''C'' and :P99_tip_comprobante not in (''FCO'',''TKT'')',
'    	and  :P99_COD_SECTOR not in (''4.1'')  THEN',
'    	 IF BS_busca_parametro( ''BS'', ''VT_COND_CONTADO''    ) = NVL(:P99_COD_CONDICION_VENTA,''36'') AND :P99_tip_comprobante=''FCR'' AND :P99_tip_comprobante_REF=''ORT'' THEN',
'		    		NULL ;',
'	    	ELSE',
'			      RETURN(''El cliente seleccionado se encuentra con credito bloqueado.'' );',
'			     ',
'			 END IF;',
'    END IF;',
'    ',
'',
'    IF nvl( VESTADO_CLIENTE, ''A'' ) = ''I'' and :P99_tip_comprobante not in (''FCO'',''TKT'') ',
'    		and  :P99_COD_SECTOR not in (''4.1'') THEN',
'      RETURN(''No se pueden realizar facturas al cliente seleccionado pues se encuentra inactivo.'' );      ',
'    END IF;',
'',
'         ',
'  ',
'    EXCEPTION',
'      ',
'      when others then ',
'         null;',
'    END;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_when_button_pressed=>wwv_flow_imp.id(23498759414061411)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(22940613229412508)
,p_name=>'DA_HIDE'
,p_event_sequence=>10
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(22940790414412509)
,p_event_id=>wwv_flow_imp.id(22940613229412508)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(22563367209269811)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(23047910450166031)
,p_event_id=>wwv_flow_imp.id(22940613229412508)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P99_TALON_CONTADO,P99_TALON_CREDITO,P99_TALON_TICKET'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(26600121504744722)
,p_event_id=>wwv_flow_imp.id(22940613229412508)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P99_M_NRO_PROMO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(29129488976274609)
,p_event_id=>wwv_flow_imp.id(22940613229412508)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P99_A_NRO_PROMO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(25333866312948434)
,p_event_id=>wwv_flow_imp.id(22940613229412508)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P99_COD_VENDEDOR'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(29391489710747201)
,p_event_id=>wwv_flow_imp.id(22940613229412508)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(27326198411312327)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30784573518619848)
,p_event_id=>wwv_flow_imp.id(22940613229412508)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(23498898281061412)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(34011689267371449)
,p_event_id=>wwv_flow_imp.id(22940613229412508)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(23498456223061408)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(31456058208510701)
,p_event_id=>wwv_flow_imp.id(22940613229412508)
,p_event_result=>'TRUE'
,p_action_sequence=>90
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(23498759414061411)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(190745603660605902)
,p_event_id=>wwv_flow_imp.id(22940613229412508)
,p_event_result=>'TRUE'
,p_action_sequence=>100
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P99_MENSAJE_PAGARE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(22943090261412532)
,p_name=>'DA_PERMITE_ANULAR'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P99_PERMITE_ANULAR'
,p_condition_element=>'P99_PERMITE_ANULAR'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'S'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(22943114533412533)
,p_event_id=>wwv_flow_imp.id(22943090261412532)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P99_ESTADO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(22943394012412535)
,p_event_id=>wwv_flow_imp.id(22943090261412532)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P99_ESTADO'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(22943634915412538)
,p_name=>'DA_HABILITA_BOTON'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P99_COD_SECTOR,P99_SER_COMPROBANTE_REF'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'apex.item(''P99_COD_SECTOR'') == ''4'' || apex.item(''P99_COD_SECTOR'') == ''4.1'' || apex.item(''P99_COD_SECTOR'') == ''4.2'' && apex.item(''P99_SER_COMPROBANTE_REF'') == ''W'' ||apex.item(''P99_SER_COMPROBANTE_REF'') == ''J'''
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(22943727621412539)
,p_event_id=>wwv_flow_imp.id(22943634915412538)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(22563367209269811)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(22943877131412540)
,p_name=>'DA_COD_CONDICION_VENTA'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P99_COD_CONDICION_VENTA'
,p_condition_element=>'P99_COD_CONDICION_VENTA'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(22943974101412541)
,p_event_id=>wwv_flow_imp.id(22943877131412540)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'--completa datos que devuelve la lista de valores',
'IF :P99_USA_CONDICIONES = ''S'' THEN',
'    BEGIN',
'        select /*c.cod_lista_precio,*/ lp.cod_moneda, c.nro_cuotas         ',
'          into /*:P99_COD_LISTA_PRECIO, */:P99_COD_MONEDA, :P99_NRO_CUOTAS                   ',
'          from cc_condiciones_ventas c, vt_listas_precios_cab lp /*, cc_tipo_documentacion ct */ ',
'         where c.cod_empresa = :P99_COD_EMPRESA ',
'           and c.estado = ''A''',
'           and lp.cod_empresa = c.cod_empresa ',
'           and lp.cod_lista_precio = c.cod_lista_precio ',
'           and c.cod_condicion_venta = :P99_COD_CONDICION_VENTA',
'            /* and c.tip_documento = ct.cod_tip_doc and nvl( c.nro_jerarquia, 0 ) >= nvl( :b_cabecera.nro_jerarquia, 0 ) and nvl( c.plazo, 0 ) <= nvl( :b_cabecera.plazo, 0 ) and nvl( c.tip_cliente, :b_cabecera.tip_cliente ) = :b_cabecera.tip_cliente '
||'and nvl( ct.nivel, 0) >= nvl( :b_cabecera.nivel, 0 ) */ ',
'      order by c.descripcion;',
'  EXCEPTION',
'        when others then',
'            NULL;',
'    END; ',
'ELSE',
'    BEGIN',
'        select /*c.cod_lista_precio, */lp.cod_moneda, c.nro_cuotas',
'          into /*:P99_COD_LISTA_PRECIO, */:P99_COD_MONEDA, :P99_NRO_CUOTAS',
'          from cc_condiciones_ventas c, vt_listas_precios_cab lp, cc_tipo_documentacion ct ',
'         where c.cod_empresa = :P99_COD_EMPRESA ',
'           and c.estado = ''A'' ',
'           and c.tip_documento = ct.cod_tip_doc ',
'           and lp.cod_empresa = c.cod_empresa ',
'           and lp.cod_lista_precio = c.cod_lista_precio ',
'           and c.cod_condicion_venta = :P99_COD_CONDICION_VENTA',
'         /*and ((:b_cabecera.tip_comprobante = :variables.tip_credito and c.nro_cuotas > 0) or c.nro_cuotas = 0 )*/ ',
'      order by c.descripcion;',
'    EXCEPTION',
'        when others then',
'            NULL;',
'    END; ',
'END IF;'))
,p_attribute_02=>'P99_USA_CONDICIONES,P99_COD_CONDICION_VENTA'
,p_attribute_03=>'P99_NRO_CUOTAS,P99_COD_MONEDA'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(23047405955166026)
,p_name=>'DA_SHOW_LOV'
,p_event_sequence=>50
,p_condition_element=>'P99_IMPRIMIR_REPORTE'
,p_triggering_condition_type=>'NOT_EQUALS'
,p_triggering_expression=>'S'
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(23047884403166030)
,p_event_id=>wwv_flow_imp.id(23047405955166026)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(23046861734166020)
,p_client_condition_type=>'NOT_EQUALS'
,p_client_condition_element=>'P99_ACCION_CONSULTA'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(23047545849166027)
,p_event_id=>wwv_flow_imp.id(23047405955166026)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P99_TALON_CONTADO'
,p_client_condition_type=>'NOT_EQUALS'
,p_client_condition_element=>'P99_ACCION_CONSULTA'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(23047619077166028)
,p_event_id=>wwv_flow_imp.id(23047405955166026)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P99_TALON_CREDITO'
,p_client_condition_type=>'NOT_EQUALS'
,p_client_condition_element=>'P99_ACCION_CONSULTA'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(23047777138166029)
,p_event_id=>wwv_flow_imp.id(23047405955166026)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P99_TALON_TICKET'
,p_client_condition_type=>'NOT_EQUALS'
,p_client_condition_element=>'P99_ACCION_CONSULTA'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(23500970811061433)
,p_event_id=>wwv_flow_imp.id(23047405955166026)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P99_SHOW_LOV_CON := ''0'';',
':P99_SHOW_LOV_CRE := ''0'';',
':P99_SHOW_LOV_TCK := ''0''; '))
,p_attribute_03=>'P99_SHOW_LOV_CON,P99_SHOW_LOV_CRE,P99_SHOW_LOV_TCK'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NOT_EQUALS'
,p_client_condition_element=>'P99_ACCION_CONSULTA'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(23048154153166033)
,p_name=>'DA_VOLVER_TALONARIO'
,p_event_sequence=>80
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(23048399808166035)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(23048260482166034)
,p_event_id=>wwv_flow_imp.id(23048154153166033)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(23046861734166020)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(23498902157061413)
,p_name=>'DA_ELIMINAR'
,p_event_sequence=>90
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(23498456223061408)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(31456578353510706)
,p_event_id=>wwv_flow_imp.id(23498902157061413)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\00BFDesea eliminar el comprobante &P99_TIP_COMPROBANTE. &P99_SER_COMPROBANTE. &P99_NRO_COMPROBANTE. de forma permanente?')
,p_attribute_02=>unistr('Atenci\00F3n')
,p_attribute_06=>'Aceptar'
,p_attribute_07=>'Cancelar'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(23499050829061414)
,p_event_id=>wwv_flow_imp.id(23498902157061413)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'--PRE-DELETE B_CABECERA',
'if :P99_NRO_MOV_CAJ IS NOT NULL and :P99_NRO_MOV_CAJ <> 1 then',
'   RAISE_APPLICATION_ERROR(-20000, '' Comprobante no puede ser modificado porque tiene movimiento de caja '');',
'end if;',
'if :P99_TIP_COMPROBANTE is null or :P99_SER_COMPROBANTE is null or :P99_NRO_COMPROBANTE is null then',
'   RAISE_APPLICATION_ERROR(-20000, ''Debe completar los datos del comprobante a eliminar. ''); ',
'end if;   ',
':P99_IMPRIMIR := ''N'';',
':P99_BORRADO := ''S'';',
'/*',
'DECLARE',
'    VEXISTE VARCHAR(1);',
'BEGIN',
'    begin',
'        select ''S''',
'          into VEXISTE',
'          from vt_comprobantes_cabecera c',
'         where c.cod_empresa = :P99_COD_EMPRESA',
'         and c.tip_comprobante = :P99_TIP_COMPROBANTE',
'         and c.ser_comprobante = :P99_SER_COMPROBANTE',
'         and c.nro_comprobante = :P99_NRO_COMPROBANTE;',
'    exception',
'        when others then',
'             VEXISTE := ''N'';',
'    end ;',
'    IF NVL(VEXISTE, ''N'') = ''N'' THEN',
unistr('        RAISE_APPLICATION_ERROR(-20000, ''No se ha encontrado el comprobante. Revise su tipo, serie y n\00FAmero.'');'),
'    END IF;',
'END;        */',
'NULL;'))
,p_attribute_02=>'P99_NRO_MOV_CAJ,P99_COD_EMPRESA,P99_TIP_COMPROBANTE,P99_SER_COMPROBANTE,P99_NRO_COMPROBANTE'
,p_attribute_03=>'P99_IMPRIMIR ,P99_BORRADO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30783980428619842)
,p_event_id=>wwv_flow_imp.id(23498902157061413)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_01=>'ELIMINAR'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(23499190881061415)
,p_name=>'DA_ACTUALIZAR'
,p_event_sequence=>100
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(23498898281061412)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(23499205506061416)
,p_event_id=>wwv_flow_imp.id(23499190881061415)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'--PRE-UPDATE B_CABECERA - B_DETALLE',
'IF :P99_NRO_MOV_CAJ IS NOT NULL AND :P99_NRO_MOV_CAJ <> 1 THEN',
'    RAISE_APPLICATION_ERROR(-20000,''El comprobante actual no puede ser modificado porque tiene movimiento de caja.'');',
'END IF;',
'',
'IF :P99_TIP_COMPROBANTE = :P99_TIP_CREDITO THEN',
'    IF nvl( TO_NUMBER(:P99_CREDITO_MINIMO), 0 ) <> 0 THEN',
'        IF ( nvl( TO_NUMBER(:P99_TOTAL), 0 ) * nvl( TO_NUMBER(:P99_C_TIP_CAMBIO), 1 ) ) < nvl( TO_NUMBER(:P99_CREDITO_MINIMO), 0 ) THEN',
unistr('          --  RAISE_APPLICATION_ERROR(-20000,''El monto m\00EDnimo de la factura a cr\00E9dito es '' ||'),
'            --     to_char( nvl( :P99_CREDITO_MINIMO, 0 ), ''999,999,999'' ) ||'' Gs.'');',
'            null;',
'   ',
'    END IF;',
'  END IF;',
'END IF;',
'',
'IF nvl( :P99_OLD_ESTADO, ''P'' ) <> nvl( :P99_ESTADO, ''P'' ) THEN',
'--  :b_cabecera.fec_estado := sysdate;',
'  IF nvl( :P99_ESTADO, ''P'' ) = ''A'' THEN',
'    :P99_ESTADO_REPARTO := ''A'';',
'  ELSE',
'    :P99_ESTADO_REPARTO := ''P'';',
'  END IF;',
'END IF;',
'',
':P99_IMPRIMIR := ''N'';',
':P99_BORRADO := ''N'';',
'',
'',
''))
,p_attribute_02=>'P99_NRO_MOV_CAJ,P99_TIP_COMPROBANTE,P99_TIP_CREDITO,P99_CREDITO_MINIMO,P99_TOTAL,P99_C_TIP_CAMBIO,P99_OLD_ESTADO,P99_ESTADO'
,p_attribute_03=>'P99_ESTADO_REPARTO,P99_IMPRIMIR,P99_BORRADO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30783863983619841)
,p_event_id=>wwv_flow_imp.id(23499190881061415)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_01=>'ACTUALIZAR'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(23499506638061419)
,p_name=>'DA_GUARDAR'
,p_event_sequence=>110
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(23498759414061411)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(25333374862948429)
,p_event_id=>wwv_flow_imp.id(23499506638061419)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P99_AUX_MSJ.'
,p_attribute_02=>'Error'
,p_attribute_03=>'warning'
,p_attribute_04=>'fa-warning'
,p_attribute_06=>'Aceptar'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P99_AUX_MSJ'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(23499622259061420)
,p_event_id=>wwv_flow_imp.id(23499506638061419)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'--KEY-COMMIT',
'VTFACTUR.key_commit(PI_COD_EMPRESA      => :P99_COD_EMPRESA,',
'                    PI_SER_COMPROBANTE  => :P99_SER_COMPROBANTE, ',
'                    PI_NRO_COMPROBANTE  => :P99_NRO_COMPROBANTE, ',
'                    PI_TIP_COMPROBANTE  => :P99_TIP_COMPROBANTE);',
'if nvl(REPLACE(:P99_TOTAL_1, ''.''),0) > 0 then',
'	NULL; --		guardar: LLAMA A OTROS FORMS... FALTA AGREGAR ESAS LLAMADAS',
'    IF :P99_GRU_COMPROBANTE IS NULL THEN',
'          :P99_GRU_COMPROBANTE := ''FAC'';',
'    END IF;',
'        VTFACTUR.ACT_PROMO(:P99_COD_EMPRESA,:P99_TIP_COMPROBANTE_REF, :P99_SER_COMPROBANTE_REF, :P99_NRO_COMPROBANTE_REF);',
'        CREA_PEDIDO_DEPOSITO(:P99_TIP_COMPROBANTE, :P99_SER_COMPROBANTE, :P99_NRO_COMPROBANTE);',
'else',
'  	raise_application_error(-20000, ''Verificar los detalles de la Factura. Monto debe ser mayor a cero.'');	',
'end if;',
'',
'--PRE-INSERT B_CABECERA',
'VTFACTUR.VALIDA_NUMERACION_AUTOIMPRESO(PI_COD_EMPRESA     => :P99_COD_EMPRESA,',
'                                       PI_TIP_COMPDOBANTE => :P99_TIP_COMPROBANTE, ',
'                                       PI_SER_COMPROBANTE => :P99_SER_COMPROBANTE, ',
'                                       PI_NRO_COMPROBANTE => :P99_NRO_COMPROBANTE, ',
'                                       PI_COD_SUCURSAL    => :P99_COD_SUCURSAL, ',
'                                       PI_COD_USUARIO     => :P99_COD_USUARIO,',
'                                       PI_NRO_CON_INICIAL => :P99_NRO_CON_INICIAL,',
'                                       PO_AUTO_IMPRESO    => :P99_AUTO_IMPRESO); ',
'',
'if :P99_COD_VENDEDOR in ( ''128'',''132'',''145'',''166'') and :P99_COD_SUCURSAL not in (''09'',''105'') then',
'    raise_application_error(-20000,''No cuenta con permiso para el Deposito ''||:P99_COD_SUCURSAL);',
'end if;	',
'',
'DECLARE',
'    xbloqueado EXCEPTION;',
'    vplazo NUMBER(3);',
'BEGIN',
'    select nro_cuotas',
'      into vplazo',
'      from cc_condiciones_ventas',
'     where cod_empresa = :P99_COD_EMPRESA',
'       and cod_condicion_venta = :P99_COD_CONDICION_VENTA;',
'',
'    IF :P99_TIP_COMPROBANTE=''FCO'' AND nvl(VPLAZO,0)>1  and :P99_COD_CONDICION_VENTA not in (''231'') THEN',
'        raise xbloqueado;',
'    END IF;',
'    IF :P99_TIP_COMPROBANTE=''FCR'' AND nvl(VPLAZO,0)=0 and :P99_COD_CONDICION_VENTA not in (''231'') THEN',
'        raise xbloqueado;',
'    END IF;',
'EXCEPTION',
'    when xbloqueado then',
unistr('        raise_application_error(-20000,''Condici\00F3n de Ventas no V\00E1lida - Para el tipo de comprobante'');'),
'    when others then ',
'        null;',
'END;  ',
'',
'DECLARE',
'    verror_cv exception;',
'    verror_lp exception;',
'    verror_obs exception;',
'BEGIN',
'    if :P99_COD_CONDICION_VENTA is null then',
'    	raise verror_cv;',
'    end if;',
'',
'    if :P99_COD_LISTA_PRECIO is null then',
'    	raise verror_lp;',
'    end if;',
'',
'    if :P99_COD_VENDEDOR in (''195'',''225'',''199'',''198'')  and :P99_TIP_COMPROBANTE not in (''FCO'') then',
'		raise verror_obs;',
'	end if;',
'',
'    if :P99_COD_SECTOR in (''4.1'')  and :P99_TIP_COMPROBANTE not in (''FCO'') then',
'		raise verror_obs;',
'	end if;',
'EXCEPTION ',
'    when verror_lp then ',
unistr('        raise_application_error(-20000,''\00A1El comprobante no tiene cargado lista de precios!'');'),
'    when verror_cv then ',
unistr('        raise_application_error(-20000,''\00A1El comprobante no tiene cargado condicion venta!'');'),
'    when verror_OBS then ',
unistr('        raise_application_error(-20000,''\00A1El comprobante debe ser contado!'');'),
'    when others then',
'        null;',
'end;',
'		'))
,p_attribute_02=>'P99_TIP_COMPROBANTE_REF,P99_SER_COMPROBANTE_REF,P99_NRO_COMPROBANTE_REF,P99_TOTAL,P99_COD_CONDICION_VENTA,P99_COD_LISTA_PRECIO,P99_COD_SECTOR,P99_COD_VENDEDOR,P99_COD_EMPRESA,P99_TIP_COMPROBANTE,P99_SER_COMPROBANTE,P99_NRO_COMPROBANTE,P99_COD_SUCURSA'
||'L,P99_COD_USUARIO,P99_NRO_CON_INICIAL'
,p_attribute_03=>'P99_AUTO_IMPRESO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P99_AUX_MSJ'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30783707931619840)
,p_event_id=>wwv_flow_imp.id(23499506638061419)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_01=>'GUARDAR'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(23499934388061423)
,p_name=>'DA_COD_SUCURSAL'
,p_event_sequence=>120
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P99_COD_SUCURSAL'
,p_bind_type=>'bind'
,p_bind_event_type=>'focusin'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(23500006889061424)
,p_event_id=>wwv_flow_imp.id(23499934388061423)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P99_COD_SUCURSAL'
,p_client_condition_type=>'NOT_EQUALS'
,p_client_condition_element=>'P99_CARGA_SUCURSAL'
,p_client_condition_expression=>'S'
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
 p_id=>wwv_flow_imp.id(920103670983595341)
,p_event_id=>wwv_flow_imp.id(23499934388061423)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin IF nvl(:P99_COD_SUCURSAL,''01'') IN(''190'',''03'',''209'') THEN',
'    :P99_COD_CUSTODIO_ENT:=''514'';',
'ELSIF nvl(:P99_COD_SUCURSAL,''01'')=''65'' THEN',
'    :P99_COD_CUSTODIO_ENT:=''171'';	 ',
'ELSIF nvl(:P99_COD_SUCURSAL,''01'') IN(''02'',''15'') THEN',
'    :P99_COD_CUSTODIO_ENT:=''305'';	',
'ELSIF nvl(:P99_COD_SUCURSAL,''01'') IN(''09'',''105'') THEN',
'    :P99_COD_CUSTODIO_ENT:=''233'';	',
'-- 07 - 13 - 15 - 02 ',
'ELSIF nvl(:P99_COD_SUCURSAL,''01'') IN(''07'',''13'',''15'',''02'',''01'',''18'') THEN',
'    :P99_COD_CUSTODIO_ENT:=''40'';	',
'ELSE 	                        ',
'    :P99_COD_CUSTODIO_ENT:=''40'';-- busca_parametro( ''CC'', ''COD_CUSTODIO_DEP'' ); ',
'END IF;',
'end;',
'if :P99_COD_SUCURSAL in (''209'') then',
'    RAISE_APPLICATION_ERROR(-20000, ''No es posible usar la sucursal 209 para facturacion use la 190.'');',
'end if;'))
,p_attribute_02=>'P99_COD_SUCURSAL'
,p_attribute_03=>'P99_COD_CUSTODIO_ENT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NOT_EQUALS'
,p_client_condition_element=>'P99_CARGA_SUCURSAL'
,p_client_condition_expression=>'S'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(23500100728061425)
,p_name=>'DA_VALIDA_SUCURSAL'
,p_event_sequence=>130
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P99_COD_SUCURSAL'
,p_condition_element=>'P99_CARGA_SUCURSAL'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'S'
,p_bind_type=>'bind'
,p_bind_event_type=>'focusout'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(23500295751061426)
,p_event_id=>wwv_flow_imp.id(23500100728061425)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P99_COD_SUCURSAL IS NOT NULL THEN',
'    DECLARE',
'        vcen VARCHAR2(100);',
'    BEGIN',
'        Select cod_sucursal /* cod_sucursal_central */',
'          into  vcen',
'          from sucursales',
'         where cod_empresa  = :P99_COD_EMPRESA',
'           and cod_sucursal = :P99_COD_SUCURSAL; ',
'        --* and nvl( stock_propio, ''N'' ) = ''S'';',
'        IF :P99_COD_SUCURSAL_CENTRAL <> vcen THEN',
'            :P99_COD_SUCURSAL_CENTRAL := vcen ;',
'            vtfactur.talonario (PI_COD_EMPRESA  => :P99_COD_EMPRESA,',
'                                PI_TIP_CONTADO  => :P99_TIP_CONTADO,',
'                                PI_TIP_CREDITO => :P99_TIP_CREDITO,',
'                                PI_TIP_TICKET => :P99_TIP_TICKET_VAR,',
'                                PI_P_TIPO => :P99_P_TIPO, ',
'                                PI_COD_SUCURSAL => :P99_COD_SUCURSAL, ',
'                                PI_COD_SUCURSAL_CENTRAL => :P99_COD_SUCURSAL_CENTRAL,',
'                                PI_COD_USUARIO => :P99_COD_USUARIO,',
'                                PO_SER_CON => :P99_SER_CON,',
'                                PO_NRO_CON_INICIAL => :P99_NRO_CON_INICIAL,',
'                                PO_NRO_CON_FINAL => :P99_NRO_CON_FINAL,',
'                                PO_IMPRIME_CON => :P99_IMPRIME_CON,',
'                                PO_TIP_IMPRESION_CON => :P99_TIP_IMPRESION_CON,',
'                                PO_AUTO_IMPRESO => :P99_AUTO_IMPRESO,',
'                                PO_SER_CRE => :P99_SER_CRE,                     ',
'                                PO_NRO_CRE_INICIAL => :P99_NRO_CRE_INICIAL,',
'                                PO_NRO_CRE_FINAL => :P99_NRO_CRE_FINAL,',
'                                PO_IMPRIME_CRE => :P99_IMPRIME_CRE,',
'                                PO_TIP_IMPRESION_CRE => :P99_TIP_IMPRESION_CRE,',
'                                PO_SER_TIK => :P99_SER_TIK,',
'                                PO_NRO_TIK_INICIAL => :P99_NRO_TIK_INICIAL,',
'                                PO_NRO_TIK_FINAL => :P99_NRO_TIK_FINAL,',
'                                PO_MENSAJE => :P99_AUX_MSJ,',
'                                PO_SHOW_LOV_CON   => :P99_SHOW_LOV_CON,                     ',
'                                PO_SHOW_LOV_CRE   => :P99_SHOW_LOV_CRE,',
'                                PO_SHOW_LOV_TKC   => :P99_SHOW_LOV_TCK);  ',
'',
'            IF :P99_SHOW_LOV_CON = ''1'' OR :P99_SHOW_LOV_CRE = ''1'' OR :P99_SHOW_LOV_TCK = ''1'' THEN',
'                :P99_SHOW_LOV := 1;',
'            ELSE',
'                :P99_SHOW_LOV := 2;                            ',
'            END IF;',
'        END IF;    ',
'    EXCEPTION',
'        when no_data_found then',
'            :P99_USA_UM_DEF := ''N'';',
unistr('            RAISE_APPLICATION_ERROR(-20000, ''No se encuentra c\00F3digo de sucursal.'');'),
'        when others then',
'            :P99_USA_UM_DEF := ''N'';',
'            RAISE_APPLICATION_ERROR(-20000, ''Error en la tabla de Sucursales ''|| sqlerrm);',
'    END;',
'ELSE',
'    :P99_USA_UM_DEF := ''N'';',
'END IF;',
'BEGIN',
'    VTFACTUR.valida_sucursal(PI_COD_EMPRESA       => :P99_COD_EMPRESA,',
'                          PI_TIP_COMPROBANTE_REF  => :P99_TIP_COMPROBANTE_REF, ',
'                          PI_SER_COMPROBANTE_REF  => :P99_SER_COMPROBANTE_REF, ',
'                          PI_NRO_COMPROBANTE_REF  => :P99_NRO_COMPROBANTE_REF,',
'                          PI_COD_SUCURSAL         => :P99_COD_SUCURSAL,',
'                          PI_AUTO_IMPRESO         => :P99_AUTO_IMPRESO, ',
'                          PI_P_TIPO               => :P99_P_TIPO,',
'                          PO_USA_UM_DEF           => :P99_USA_UM_DEF,',
'                          PO_COD_CUSTODIO_ENT     => :P99_COD_CUSTODIO_ENT,',
'                          PO_GENERA_MD            => :P99_GENERA_MD,',
'                          PO_SER_COMPROBANTE      => :P99_SER_COMPROBANTE); ',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        NULL;',
'END;                          ',
''))
,p_attribute_02=>'P99_AUTO_IMPRESO,P99_TIP_COMPROBANTE_REF,P99_SER_COMPROBANTE_REF,P99_NRO_COMPROBANTE_REF,P99_COD_USUARIO,P99_COD_SUCURSAL,P99_COD_SUCURSAL_CENTRAL,P99_COD_EMPRESA,P99_TIP_CONTADO,P99_TIP_CREDITO,P99_TIP_TICKET_VAR,P99_P_TIPO'
,p_attribute_03=>'P99_SER_COMPROBANTE,P99_COD_CUSTODIO_ENT,P99_GENERA_MD,P99_SER_CON,P99_NRO_CON_INICIAL,P99_NRO_CON_FINAL,P99_IMPRIME_CON, P99_TIP_IMPRESION_CON,P99_AUTO_IMPRESO,P99_SER_CRE,P99_NRO_CRE_INICIAL, P99_NRO_CRE_FINAL,P99_IMPRIME_CRE,P99_TIP_IMPRESION_CRE,'
||'P99_SER_TIK, P99_NRO_TIK_INICIAL,P99_NRO_TIK_FINAL,P99_AUX_MSJ,P99_SHOW_LOV_CON,P99_USA_UM_DEF,P99_COD_SUCURSAL_CENTRAL,P99_SHOW_LOV_CRE,P99_SHOW_LOV_TCK,P99_SHOW_LOV'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(23500313995061427)
,p_name=>'DA_TALONARIO'
,p_event_sequence=>140
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P99_SHOW_LOV'
,p_condition_element=>'P99_SHOW_LOV'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'1'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(23500454140061428)
,p_event_id=>wwv_flow_imp.id(23500313995061427)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(23046861734166020)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(23500553189061429)
,p_event_id=>wwv_flow_imp.id(23500313995061427)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P99_TALON_CONTADO'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P99_SHOW_LOV_CON'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(23500670594061430)
,p_event_id=>wwv_flow_imp.id(23500313995061427)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P99_TALON_CREDITO'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P99_SHOW_LOV_CON'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(23500758115061431)
,p_event_id=>wwv_flow_imp.id(23500313995061427)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P99_TALON_TICKET'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P99_SHOW_LOV_CON'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(23500828798061432)
,p_event_id=>wwv_flow_imp.id(23500313995061427)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P99_SHOW_LOV_CON := ''0'';',
':P99_SHOW_LOV_CRE := ''0'';',
':P99_SHOW_LOV_TCK := ''0''; '))
,p_attribute_03=>'P99_SHOW_LOV_CON ,P99_SHOW_LOV_CRE,P99_SHOW_LOV_TCK'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(23641695528268803)
,p_name=>'DA_PERMISOS_TIP_COMPROBANTE'
,p_event_sequence=>150
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P99_TIP_COMPROBANTE'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>wwv_flow_string.join(wwv_flow_t_varchar2(
'(apex.item(''P99_CAMBIA_NUMERO_FAC'').getValue() == ''S'' && (apex.item(''P99_AUTO_IMPRESO'').getValue() == ''N'' || apex.item(''P99_AUTO_IMPRESO'').getValue() == '''')) || apex.item(''P99_CONSULTA'').getValue() == ''S''',
''))
,p_bind_type=>'bind'
,p_bind_event_type=>'focusin'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(23641799510268804)
,p_event_id=>wwv_flow_imp.id(23641695528268803)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P99_TIP_COMPROBANTE'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(23641852001268805)
,p_event_id=>wwv_flow_imp.id(23641695528268803)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P99_TIP_COMPROBANTE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(23501021908061434)
,p_name=>'DA_NRO_COMPROBANTE'
,p_event_sequence=>160
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P99_NRO_COMPROBANTE_REF'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'apex.item(''P99_CONSULTA'').getValue() == ''N'' && apex.item(''P99_SER_COMPROBANTE_REF'').getValue() == '''' || apex.item(''P99_TOTAL'').getValue() > 0 '
,p_bind_type=>'bind'
,p_bind_event_type=>'focusin'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(23501129331061435)
,p_event_id=>wwv_flow_imp.id(23501021908061434)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_FOCUS'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P99_COD_CUSTODIO'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(23501321296061437)
,p_name=>'DA_VALIDA_TIP_COMPROBANTE'
,p_event_sequence=>170
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P99_TIP_COMPROBANTE'
,p_bind_type=>'bind'
,p_bind_event_type=>'focusout'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(23501481199061438)
,p_event_id=>wwv_flow_imp.id(23501321296061437)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P99_TIP_COMPROBANTE = :P99_TIP_CONTADO THEN   ',
'   :P99_GENERA_MD := ''N'' ;',
'   :P99_COD_CUSTODIO_ENT := bs_busca_parametro( ''CC'', ''COD_CUSTODIO_CAJ'' ) ; ',
'END IF ;',
'IF :P99_TIP_COMPROBANTE = :P99_TIP_CREDITO THEN',
'   :P99_GENERA_MD := ''S'' ;',
'   :P99_COD_CUSTODIO_ENT := bs_busca_parametro( ''CC'', ''COD_CUSTODIO_DEP'' ) ;',
' IF NVL(:P99_AUTO_IMPRESO,''N'')<>''S'' THEN',
'    :P99_SER_COMPROBANTE := :P99_SER_CRE ; ',
'   END IF; ',
'END IF ;',
'IF NVL(:P99_AUTO_IMPRESO,''N'')<>''S'' THEN ',
'    IF NVL(:P99_P_TIPO,:P99_TIP_COMPROBANTE )=''FCR'' THEN',
'        IF :P99_COD_SUCURSAL IN(''190'',''210'', ''220'', ''209'',''03'',''33'') THEN',
'            :P99_SER_COMPROBANTE:=''L4'';',
'        ELSIF :P99_COD_SUCURSAL IN(''248'') THEN',
'            :P99_SER_COMPROBANTE:=''T3'';',
'        ELSIF :P99_COD_SUCURSAL IN(''101'',''65'',''12'') THEN',
'            :P99_SER_COMPROBANTE:=''R2'';',
'        ELSIF :P99_COD_SUCURSAL  IN(''20'') THEN',
'            :P99_SER_COMPROBANTE:=''M2'';',
'        ELSE',
'            IF NVL(:P99_AUTO_IMPRESO,''N'')<>''S'' THEN ',
'                :P99_SER_COMPROBANTE:=''C1'';',
'            END IF;',
'        END IF;	',
'    END IF;',
'END IF;',
'	                   ',
'IF :P99_TIP_COMPROBANTE = :P99_TIP_TICKET THEN   ',
'    :P99_GENERA_MD := ''N'' ;',
'    :P99_COD_CUSTODIO_ENT := bs_busca_parametro( ''CC'', ''COD_CUSTODIO_CAJ'' ) ; ',
'END IF ;',
'IF :P99_TIP_COMPROBANTE = ''FEX'' THEN   ',
'    :P99_GENERA_MD := ''S'' ;',
'    :P99_COD_CUSTODIO_ENT := bs_busca_parametro( ''CC'', ''COD_CUSTODIO_CAJ'' ) ; ',
'    :P99_SER_COMPROBANTE := ''A1'';',
'END IF ;',
':P99_CALCULA_IVA := vtfactur.calcula_iva(:P99_COD_EMPRESA,:P99_TIP_COMPROBANTE,:P99_SER_COMPROBANTE);',
'inv.vtfactur.valida_tip_compr_nro_comprob(PI_COD_EMPRESA     => :P99_COD_EMPRESA,',
'PI_TIP_COMPROBANTE => :P99_TIP_COMPROBANTE, ',
'PI_SER_COMPROBANTE => :P99_SER_COMPROBANTE, ',
'PI_NRO_COMPROBANTE => :P99_NRO_COMPROBANTE, ',
'PI_NRO_CON_INICIAL => :P99_NRO_CON_INICIAL,',
'PI_NRO_CON_FINAL   => :P99_NRO_CON_FINAL,',
'PI_TIP_CONTADO     => :P99_TIP_CONTADO,',
'PI_TIP_TICKET      => :P99_TIP_TICKET_VAR,                                  ',
'PI_NRO_TIK_INICIAL => :P99_NRO_TIK_INICIAL,',
'PI_NRO_TIK_FINAL   => :P99_NRO_TIK_FINAL,',
'PI_MAX_NRO_FACTURA => :P99_MAX_NRO_FACTURA,',
'PI_TIP_CREDITO     => :P99_TIP_CREDITO,                                                                  ',
'PI_NRO_CRE_INICIAL => :P99_NRO_CRE_INICIAL,',
'PI_NRO_CRE_FINAL   => :P99_NRO_CRE_FINAL,',
'PI_IMPRIME_CON     => :P99_IMPRIME_CON,',
'PI_IMPRIME_CRE     => :P99_IMPRIME_CRE,',
'PO_NRO_COMPROBANTE => :P99_NRO_COMPROBANTE);                                       ',
'vtfactur.valida_tip_compr (:P99_P_TIPO,:P99_TIP_COMPROBANTE);',
'vtfactur.valida_tip_compr_cust_ent(PI_COD_EMPRESA          => :P99_COD_EMPRESA,',
'PI_TIP_COMPROBANTE_REF  => :P99_P_TIP_COMPROBANTE_REF, ',
'PI_SER_COMPROBANTE_REF  => :P99_SER_COMPROBANTE_REF, ',
'PI_NRO_COMPROBANTE_REF  => :P99_NRO_COMPROBANTE_REF,',
'PI_COD_SUCURSAL         => :P99_COD_SUCURSAL,',
'PI_COD_CUSTODIO         => :P99_COD_CUSTODIO,',
'PO_COD_CUSTODIO_ENT     => :P99_COD_CUSTODIO_ENT,',
'PO_GENERA_MD            => :P99_GENERA_MD);                           ',
'',
'',
''))
,p_attribute_02=>'P99_SER_COMPROBANTE,P99_COD_EMPRESA,P99_TIP_COMPROBANTE,P99_TIP_TICKET_VAR,P99_AUTO_IMPRESO,P99_COD_SUCURSAL,P99_P_TIPO,P99_TIP_CREDITO,P99_TIP_CONTADO, P99_NRO_CON_INICIAL,P99_NRO_CON_FINAL,P99_NRO_TIK_INICIAL,P99_NRO_TIK_FINAL,P99_MAX_NRO_FACTURA,P'
||'99_NRO_CRE_INICIAL,P99_NRO_CRE_FINAL,P99_IMPRIME_CON, P99_IMPRIME_CRE,P99_NRO_COMPROBANTE,P_COD_SUCURSAL'
,p_attribute_03=>'P99_SER_COMPROBANTE,P99_GENERA_MD,P99_COD_CUSTODIO_ENT,P99_NRO_COMPROBANTE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(23911185495717801)
,p_name=>'DA_VALIDA_SER_COMPROBANTE'
,p_event_sequence=>180
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P99_SER_COMPROBANTE'
,p_condition_element=>'P99_SER_COMPROBANTE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'focusout'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(23911221576717802)
,p_event_id=>wwv_flow_imp.id(23911185495717801)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P99_CALCULA_IVA := vtfactur.calcula_iva(:P99_COD_EMPRESA,:P99_TIP_COMPROBANTE,:P99_SER_COMPROBANTE);',
'VTFACTUR.valida_vencimiento(PI_COD_EMPRESA      => :P99_COD_EMPRESA,',
'                            PI_TIP_COMPROBANTE  => :P99_TIP_COMPROBANTE, ',
'                            PI_SER_COMPROBANTE  => :P99_SER_COMPROBANTE,',
'                            PI_COD_SUCURSAL     => :P99_COD_SUCURSAL,',
'                            PO_VENC_TKT         => :P99_VENC_TKT);',
'   ',
':P99_DESC_IMPRESION := VTFACTUR.desc_impresion(PI_COD_EMPRESA      => :P99_COD_EMPRESA,',
'                                               PI_TIP_COMPROBANTE  => :P99_TIP_COMPROBANTE, ',
'                                               PI_SER_COMPROBANTE  => :P99_SER_COMPROBANTE);  ',
':P99_SER_COMPROBANTE_VAR := :P99_SER_COMPROBANTE;  ',
':P99_AUTO_IMPRESO := VTFACTUR.auto_impresion(PI_COD_EMPRESA      => :P99_COD_EMPRESA,',
'                                             PI_TIP_COMPROBANTE  => :P99_TIP_COMPROBANTE, ',
'                                             PI_SER_COMPROBANTE  => :P99_SER_COMPROBANTE,',
'                                             PI_COD_SUCURSAL     => :P99_COD_SUCURSAL);        ',
' ',
'vtfactur.valida_ser_comprob(PI_COD_EMPRESA      => :P99_COD_EMPRESA,',
'                            PI_TIP_COMPROBANTE  => :P99_TIP_COMPROBANTE, ',
'                            PI_SER_COMPROBANTE  => :P99_SER_COMPROBANTE,',
'                            PI_COD_SUCURSAL     => :P99_COD_SUCURSAL);',
'',
'',
''))
,p_attribute_02=>'P99_NRO_CON_INICIAL,P99_NRO_CON_FINAL,P99_NRO_COMPROBANTE,P99_TIP_TICKET_VAR,P99_NRO_TIK_INICIAL,P99_NRO_TIK_FINAL,P99_MAX_NRO_FACTURA,P99_COD_SUCURSAL,P99_SER_COMPROBANTE,P99_TIP_COMPROBANTE,P99_COD_EMPRESA'
,p_attribute_03=>'P99_AUTO_IMPRESO,P99_CALCULA_IVA,P99_VENC_TKT,P99_SER_COMPROBANTE_VAR'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(23911915951717809)
,p_name=>'DA_VALIDA_PERMISOS_NRO_COMPROB'
,p_event_sequence=>190
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P99_NRO_COMPROBANTE'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.item(''P99_CAMBIA_NUMERO_FAC'').getValue() == ''S'' && (apex.item(''P99_AUTO_IMPRESO'').getValue() == ''N'' || apex.item(''P99_AUTO_IMPRESO'').getValue() == '''')|| apex.item(''P99_CONSULTA'').getValue() == ''S''',
''))
,p_bind_type=>'bind'
,p_bind_event_type=>'focusin'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(23912021781717810)
,p_event_id=>wwv_flow_imp.id(23911915951717809)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_FOCUS'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P99_FEC_COMPROBANTE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(23911639326717806)
,p_name=>'DA_VALIDA_NRO_COMPROBANTE'
,p_event_sequence=>200
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P99_NRO_COMPROBANTE'
,p_condition_element=>'P99_NRO_COMPROBANTE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(23911709365717807)
,p_event_id=>wwv_flow_imp.id(23911639326717806)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    IF :P99_TIP_COMPROBANTE = :P99_TIP_CONTADO THEN',
'        IF :P99_NRO_COMPROBANTE IS NOT NULL THEN',
'            IF :P99_NRO_CON_INICIAL IS NOT NULL AND :P99_NRO_CON_FINAL IS NOT NULL THEN',
'                IF :P99_NRO_COMPROBANTE NOT BETWEEN :P99_NRO_CON_INICIAL AND :P99_NRO_CON_FINAL THEN',
unistr('                    raise_application_error(-20000,''El n\00FAmero seleccionado esta fuera del rango num\00E9rico del talonario actual. ''||'),
'                             ''El rango del talonario contado actual es ''||:P99_SER_CON||'' '' ||to_char(:P99_NRO_CON_INICIAL)||',
'                             '' al ''||:P99_SER_CON||'' ''||to_char(:P99_NRO_CON_FINAL)||''.'');',
'                END IF;',
'            ELSE',
unistr('              null;--  raise_application_error(-20000,''Debe seleccionar un talonario para poder ingresar un n\00FAmero de factura, o de lo contrario deje vac\00EDo el campo.'');'),
'            END IF;',
'        END IF;',
'    END IF;',
'',
'    IF :P99_TIP_COMPROBANTE = :P99_TIP_CREDITO THEN',
'        IF :P99_NRO_COMPROBANTE IS NOT NULL THEN',
'            IF :P99_NRO_CRE_INICIAL IS NOT NULL AND :P99_NRO_CRE_FINAL IS NOT NULL THEN',
'                IF :P99_NRO_COMPROBANTE NOT BETWEEN :P99_NRO_CRE_INICIAL AND :P99_NRO_CRE_FINAL THEN',
unistr('                    raise_application_error(-20000,''El n\00FAmero seleccionado esta fuera del rango num\00E9rico del talonario actual. ''||'),
'                                                 ''El rango del talonario credito actual es ''||:P99_SER_CRE||'' ''||to_char(:P99_NRO_CRE_INICIAL)||',
'                                                 '' al ''||:P99_SER_CRE||'' ''||to_char(:P99_NRO_CRE_FINAL)||''.'');',
'                END IF;',
'            ELSE',
'            ',
'                null;',
'            END IF;',
'        END IF;',
'    END IF;',
'END;',
'',
'IF :P99_NRO_COMPROBANTE IS NOT NULL THEN',
'    VTFACTUR.valida_nro_comprob(PI_COD_EMPRESA     => :P99_COD_EMPRESA,',
'                                PI_TIP_COMPROBANTE => :P99_TIP_COMPROBANTE,',
'                                PI_SER_COMPROBANTE => :P99_SER_COMPROBANTE,',
'                                PI_NRO_COMPROBANTE => :P99_NRO_COMPROBANTE); ',
'END IF;',
''))
,p_attribute_02=>'P99_COD_EMPRESA,P99_SER_COMPROBANTE,P99_TIP_COMPROBANTE,P99_TIP_CONTADO,P99_NRO_COMPROBANTE,P99_NRO_CON_INICIAL,P99_NRO_CON_FINAL,P99_SER_CON,P99_TIP_CREDITO,P99_NRO_CRE_INICIAL,P99_NRO_CRE_FINAL,P99_SER_CRE'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(23501670473061440)
,p_name=>'DA_VALIDA_PERMISO_FEC_COMPROBANTE'
,p_event_sequence=>210
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P99_FEC_COMPROBANTE'
,p_condition_element=>'P99_CAMBIA_FECHA'
,p_triggering_condition_type=>'NOT_EQUALS'
,p_triggering_expression=>'S'
,p_bind_type=>'bind'
,p_bind_event_type=>'focusin'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(23501770540061441)
,p_event_id=>wwv_flow_imp.id(23501670473061440)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_FOCUS'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P99_COD_SECTOR'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(24407296141161911)
,p_name=>'DA_VALIDA_SECTOR'
,p_event_sequence=>220
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P99_COD_SECTOR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(24407387874161912)
,p_event_id=>wwv_flow_imp.id(24407296141161911)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'VTFACTUR.valida_sector(PI_COD_EMPRESA => :P99_COD_EMPRESA,',
'                       PI_COD_USUARIO => :P99_COD_USUARIO,',
'                       PI_COD_SECTOR  => :P99_COD_SECTOR);',
'',
'IF :P99_COD_SECTOR=''1'' THEN',
'    NULL;--	:B_CABECERA.TIP_COMPROBANTE_REF:=''PED'';',
'    :P99_TIP_COMPROBANTE_REF := NVL(:P99_TIP_COMPROBANTE_REF,''PED'');',
'END IF;                       ',
'',
'declare',
'    verror_cv exception;',
'    verror_lp exception;',
'    verror_obs exception;',
'begin	',
'    if :P99_COD_SECTOR in (''4.1'')  and :P99_TIP_COMPROBANTE not in (''FCO'') then',
'        raise verror_obs;',
'    end if;',
'exception  ',
'    when verror_OBS then ',
'        RAISE_APPLICATION_ERROR(-20000,''El comprobante debe ser contado!'');',
'    when others then',
'        null;',
'end;',
''))
,p_attribute_02=>'P99_COD_EMPRESA,P99_COD_USUARIO,P99_COD_SECTOR,P99_TIP_COMPROBANTE_REF,P99_TIP_COMPROBANTE,P99_COD_CLIENTE,P99_TIP_COMPROBANTE,P99_COD_SECTOR,P99_COD_CONDICION_VENTA,P99_TIP_COMPROBANTE_REF,P99_VT_COND_CONTADO'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(24407764705161916)
,p_name=>'DA_TIP_COMPROBANTE_REF'
,p_event_sequence=>230
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P99_TIP_COMPROBANTE_REF'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(24407801888161917)
,p_event_id=>wwv_flow_imp.id(24407764705161916)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P99_TIP_COMPROBANTE_REF IS NULL THEN',
'   :P99_SER_COMPROBANTE_REF:= NULL;',
'   :P99_NRO_COMPROBANTE_REF := NULL;',
'END IF;'))
,p_attribute_02=>'P99_TIP_COMPROBANTE_REF'
,p_attribute_03=>'P99_NRO_COMPROBANTE_REF'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(24407920634161918)
,p_name=>'DA_VALIDA_SER_COMPROBANTE_REF'
,p_event_sequence=>240
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P99_SER_COMPROBANTE_REF'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'apex.item(''P99_TIP_COMPROBANTE_REF'').getValue() != '''' && apex.item(''P99_NRO_COMPROBANTE_REF'').getValue() != '''' && apex.item(''P99_SER_COMPROBANTE_REF'').getValue() != ''''  '
,p_bind_type=>'bind'
,p_bind_event_type=>'focusout'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(24408095872161919)
,p_event_id=>wwv_flow_imp.id(24407920634161918)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    verror VARCHAR2(500);',
'BEGIN',
'    :P99_AUX_MSJ := null;',
'    IF :P99_NRO_COMPROBANTE_REF IS NOT NULL AND :P99_TIP_COMPROBANTE_REF IS NOT NULL THEN',
'        vtfactur.busca_pedido(PI_COD_EMPRESA              => :P99_COD_EMPRESA,',
'                              PI_TIP_COMPROBANTE_REF      => :P99_TIP_COMPROBANTE_REF,',
'                              PI_SER_COMPROBANTE_REF      => :P99_SER_COMPROBANTE_REF,',
'                              PI_NRO_COMPROBANTE_REF      => :P99_NRO_COMPROBANTE_REF,',
'                              PI_TIP_COMPROBANTE          => :P99_TIP_COMPROBANTE,',
'                              PI_COD_SUCURSAL             => :P99_COD_SUCURSAL,',
'                              PI_FACTURA_SIN_AUTORIZACION => :P99_FACTURA_SIN_AUTORIZACION,',
'                              PI_TIP_CREDITO              => :P99_TIP_CREDITO,',
'                              PI_P_IND_ANTICIPO           => :P99_P_IND_ANTICIPO,',
'                              PI_COD_SECTOR               => :P99_COD_SECTOR,',
'                              PI_VENDEDOR_SERVICIOS       => :P99_VENDEDOR_SERVICIOS,',
'                              PO_COD_CONDICION_VENTA      => :P99_COD_CONDICION_VENTA,',
'                              PO_COD_CLIENTE              => :P99_COD_CLIENTE,',
'                              PO_NOM_CLIENTE              => :P99_NOM_CLIENTE,',
'                              PO_COD_DIRECCION            => :P99_COD_DIRECCION,',
'                              PO_ENTREGA_INICIAL          => :P99_ENTREGA_INICIAL, --CABECERA',
'                              PO_NRO_JERARQUIA            => :P99_NRO_JERARQUIA, ',
'                              PO_PLAZO                    => :P99_PLAZO, ',
'                              PO_TIP_CLIENTE              => :P99_TIP_CLIENTE,',
'                              PO_TIP_DOCUMENTO            => :P99_TIP_DOCUMENTO, ',
'                              PO_NIVEL                    => :P99_NIVEL, ',
'                              PO_ESTADO_CLIENTE           => :P99_ESTADO_CLIENTE,',
'                              PO_TIPO_IMPUESTO            => :P99_TIPO_IMPUESTO, ',
'                              PO_DESC_OBSERVACION         => :P99_DESC_OBSERVACION,  --VARIABLES',
'                              PO_COD_VENDEDOR             => :P99_COD_VENDEDOR,',
'                              PO_COD_MONEDA               => :P99_COD_MONEDA,',
'                              PO_COD_LISTA_PRECIO         => :P99_COD_LISTA_PRECIO,',
'                              PO_NRO_AUTORIZACION         => :P99_NRO_AUTORIZACION, --VARIABLES',
'                              PO_TEL_CLIENTE              => :P99_TEL_CLIENTE,',
'                              PO_RUC                      => :P99_RUC,',
'                              PO_DIR_CLIENTE              => :P99_DIR_CLIENTE,',
'                              PO_CARGA_DETALLE            => :P99_CARGA_DETALLE,',
'                              PO_SENIA                    => :P99_SENIA,',
'                              PO_COD_SECTOR               => :P99_COD_SECTOR,',
'                              PO_MENSAJE                  => :P99_AUX_MSJ);                         ',
'        IF :P99_AUX_MSJ IS NOT NULL THEN',
'            raise_application_error(-20000, :P99_AUX_MSJ);',
'        END IF;',
'    END IF;',
'END;',
''))
,p_attribute_02=>'P99_COD_EMPRESA,P99_TIP_COMPROBANTE_REF,P99_SER_COMPROBANTE_REF,P99_NRO_COMPROBANTE_REF,P99_TIP_COMPROBANTE,P99_COD_SUCURSAL,P99_FACTURA_SIN_AUTORIZACION,P99_TIP_CREDITO,P99_P_IND_ANTICIPO,P99_COD_SECTOR'
,p_attribute_03=>'P99_NOM_CLIENTE,P99_COD_CONDICION_VENTA,P99_COD_CLIENTE,P99_COD_DIRECCION,P99_ENTREGA_INICIAL,P99_NRO_JERARQUIA,  P99_PLAZO,P99_TIP_CLIENTE,P99_TIP_DOCUMENTO,P99_NIVEL,P99_ESTADO_CLIENTE, P99_TIPO_IMPUESTO,P99_DESC_OBSERVACION,P99_COD_VENDEDOR,P99_CO'
||'D_MONEDA,P99_COD_LISTA_PRECIO, P99_NRO_AUTORIZACION,P99_TEL_CLIENTE,P99_RUC,P99_DIR_CLIENTE,P99_CARGA_DETALLE, P99_SENIA,P99_COD_SECTOR'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(24408821735161927)
,p_name=>'DA_FOCUS_SER_COMPROBANTE'
,p_event_sequence=>250
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P99_SER_COMPROBANTE_REF'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.item(''P99_TOTAL'').getValue() > 0 || apex.item(''P99_TIP_COMPROBANTE_REF'').getValue() == ''''',
''))
,p_bind_type=>'bind'
,p_bind_event_type=>'focusin'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(24408990325161928)
,p_event_id=>wwv_flow_imp.id(24408821735161927)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_FOCUS'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P99_NRO_COMPROBANTE_REF'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(24409000240161929)
,p_name=>'DA_VALIDA_NRO_COMPROBANTE_REF'
,p_event_sequence=>260
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P99_NRO_COMPROBANTE_REF'
,p_condition_element=>'P99_NRO_COMPROBANTE_REF'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'focusout'
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
 p_id=>wwv_flow_imp.id(98642158411582134)
,p_event_id=>wwv_flow_imp.id(24409000240161929)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin ',
'    SELECT cod_cliente,',
'             cod_vendedor,',
'             cod_condicion_venta,',
'             cod_moneda,',
'             cod_lista_precio,',
'             nro_autorizacion,',
'             tel_cliente,',
'             ruc,',
'             dir_cliente,',
'             nom_cliente,',
'             entrega_inicial',
'        INTO :P99_COD_CLIENTE,',
'             :P99_COD_VENDEDOR,',
'             :P99_COD_CONDICION_VENTA,',
'             :P99_COD_MONEDA,',
'             :P99_COD_LISTA_PRECIO,',
'             :P99_NRO_AUTORIZACION,',
'             :P99_TEL_CLIENTE,',
'             :P99_RUC,',
'             :P99_DIR_CLIENTE,',
'             :P99_NOM_CLIENTE,',
'             :P99_ENTREGA_INICIAL',
'        FROM vt_pedidos_cabecera',
'       WHERE cod_empresa = ''1''',
'         AND tip_comprobante = :P99_TIP_COMPROBANTE_REF',
'         AND ser_comprobante = :P99_SER_COMPROBANTE_REF',
'         AND nro_comprobante = :P99_NRO_COMPROBANTE_REF;',
'     exception ',
'        when others then ',
'            :P99_COD_CLIENTE := null;',
'         :P99_COD_VENDEDOR := null;',
'         :P99_COD_CONDICION_VENTA := null;',
'         :P99_COD_MONEDA := null;',
'         :P99_COD_LISTA_PRECIO := null;',
'         :P99_NRO_AUTORIZACION := null;',
'         :P99_TEL_CLIENTE := null;',
'         :P99_RUC := null;',
'         :P99_DIR_CLIENTE := null;',
'         :P99_NOM_CLIENTE := null;',
'         :P99_ENTREGA_INICIAL  := null;',
'     end;'))
,p_attribute_02=>'P99_TIP_COMPROBANTE_REF,P99_SER_COMPROBANTE_REF,P99_NRO_COMPROBANTE_REF'
,p_attribute_03=>'P99_COD_CLIENTE, P99_COD_VENDEDOR, P99_COD_CONDICION_VENTA, P99_COD_MONEDA, P99_COD_LISTA_PRECIO, P99_NRO_AUTORIZACION, P99_TEL_CLIENTE, P99_RUC, P99_DIR_CLIENTE, P99_NOM_CLIENTE, P99_ENTREGA_INICIAL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(31458131692510722)
,p_event_id=>wwv_flow_imp.id(24409000240161929)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    vtfactur.valida_nro_comprob_ref(:P99_TIP_COMPROBANTE_REF,:P99_SER_COMPROBANTE_REF,:P99_NRO_COMPROBANTE_REF,',
'                                    :P99_TIP_COMPROBANTE,:P99_COD_SUCURSAL,:P99_COD_EMPRESA,:P99_COD_CONDICION_VENTA,:P99_COD_CONDICION_VENTA);',
'EXCEPTION   ',
'    WHEN OTHERS THEN',
'        NULL;',
'END;',
'',
'DECLARE',
'    verror VARCHAR2(500);',
'BEGIN',
'    vtfactur.busca_pedido(PI_COD_EMPRESA              => :P99_COD_EMPRESA,',
'      PI_TIP_COMPROBANTE_REF      => :P99_TIP_COMPROBANTE_REF,',
'      PI_SER_COMPROBANTE_REF      => :P99_SER_COMPROBANTE_REF,',
'      PI_NRO_COMPROBANTE_REF      => :P99_NRO_COMPROBANTE_REF,',
'      PI_TIP_COMPROBANTE          => :P99_TIP_COMPROBANTE,',
'      PI_COD_SUCURSAL             => :P99_COD_SUCURSAL,',
'      PI_FACTURA_SIN_AUTORIZACION => :P99_FACTURA_SIN_AUTORIZACION,',
'      PI_TIP_CREDITO              => :P99_TIP_CREDITO,',
'      PI_P_IND_ANTICIPO           => :P99_P_IND_ANTICIPO,',
'      PI_COD_SECTOR               => :P99_COD_SECTOR,',
'      PI_VENDEDOR_SERVICIOS       => :P99_VENDEDOR_SERVICIOS,',
'      PO_COD_CONDICION_VENTA      => :P99_COD_CONDICION_VENTA,',
'      PO_COD_CLIENTE              => :P99_COD_CLIENTE,',
'      PO_NOM_CLIENTE              => :P99_NOM_CLIENTE,',
'      PO_COD_DIRECCION            => :P99_COD_DIRECCION,',
'      PO_ENTREGA_INICIAL          => :P99_ENTREGA_INICIAL, --CABECERA',
'      PO_NRO_JERARQUIA            => :P99_NRO_JERARQUIA, ',
'      PO_PLAZO                    => :P99_PLAZO, ',
'      PO_TIP_CLIENTE              => :P99_TIP_CLIENTE,',
'      PO_TIP_DOCUMENTO            => :P99_TIP_DOCUMENTO, ',
'      PO_NIVEL                    => :P99_NIVEL, ',
'      PO_ESTADO_CLIENTE           => :P99_ESTADO_CLIENTE,',
'      PO_TIPO_IMPUESTO            => :P99_TIPO_IMPUESTO, ',
'      PO_DESC_OBSERVACION         => :P99_DESC_OBSERVACION,  --VARIABLES',
'      PO_COD_VENDEDOR             => :P99_COD_VENDEDOR,',
'      PO_COD_MONEDA               => :P99_COD_MONEDA,',
'      PO_COD_LISTA_PRECIO         => :P99_COD_LISTA_PRECIO,',
'      PO_NRO_AUTORIZACION         => :P99_NRO_AUTORIZACION, --VARIABLES',
'      PO_TEL_CLIENTE              => :P99_TEL_CLIENTE,',
'      PO_RUC                      => :P99_RUC,',
'      PO_DIR_CLIENTE              => :P99_DIR_CLIENTE,',
'      PO_CARGA_DETALLE            => :P99_CARGA_DETALLE,',
'      PO_SENIA                    => :P99_SENIA,',
'      PO_COD_SECTOR               => :P99_COD_SECTOR,',
'      PO_MENSAJE                  => verror);                               ',
'    IF verror IS NOT NULL THEN',
'       raise_application_error(-20000, verror);',
'    END IF;',
'    vtfactur.busca_autorizacion(:P99_COD_EMPRESA,:P99_TIP_COMPROBANTE_REF,:P99_SER_COMPROBANTE_REF,:P99_NRO_COMPROBANTE_REF,:P99_TIP_COMPROBANTE,:P99_COD_SUCURSAL,:P99_COD_CONDICION_VENTA,:P99_COD_CONDICION_VENTA);',
unistr('    --Agregado este peque\00F1o mensaje de advertencia si el pedido generado ten\00EDa una fecha limite de facturaci\00F3n ya definida. Gaspar M. 13/09/2022'),
'    if :P99_FECHA_LIMITE_FACTURACION is not null then',
'        if :P99_FEC_COMPROBANTE >= :P99_FECHA_LIMITE_FACTURACION then',
unistr('        	raise_application_error(-20000,''La fecha de facturaci\00F3n es superior o igual a la fecha l\00EDmite del pedido'');'),
'        end if;',
'     end if;',
'',
'END;                                ',
''))
,p_attribute_02=>'P99_COD_SECTOR,P99_TIP_COMPROBANTE_REF,P99_SER_COMPROBANTE_REF,P99_NRO_COMPROBANTE_REF,P99_TIP_COMPROBANTE,P99_COD_SUCURSAL,P99_COD_EMPRESA,P99_COD_CONDICION_VENTA'
,p_attribute_03=>'P99_NOM_CLIENTE, P99_COD_CONDICION_VENTA, P99_COD_CLIENTE, P99_ENTREGA_INICIAL, P99_NRO_JERARQUIA, P99_PLAZO, P99_TIP_CLIENTE, P99_TIP_DOCUMENTO, P99_NIVEL, P99_ESTADO_CLIENTE, P99_TIPO_IMPUESTO, P99_DESC_OBSERVACION, P99_COD_VENDEDOR, P99_COD_MONEDA'
||', P99_COD_LISTA_PRECIO, P99_NRO_AUTORIZACION, P99_TEL_CLIENTE, P99_RUC, P99_DIR_CLIENTE, P99_CARGA_DETALLE, P99_SENIA, P99_COD_SECTOR'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(122667229221248603)
,p_event_id=>wwv_flow_imp.id(24409000240161929)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'--WHEN NEW ITEM INSTANCE',
':P99_OLD_CLIENTE := :P99_COD_CLIENTE;',
'',
'--WHEN-VALIDATE-ITEM',
'--IF nvl( :P99_CONSULTA, ''N'' ) = ''N''  and ( :P99_COD_CLIENTE is not null and :P99_COD_CLIENTE <> :P99_COD_CLIENTE_OCA ) THEN    ',
'    BEGIN',
'        vtfactur.busca_cliente(:P99_COD_EMPRESA,:P99_COD_CLIENTE,:P99_ESTADO_CLIENTE,:P99_COD_ZONA,  ',
'                               :P99_TIP_CLIENTE,:P99_CLIENTE_PERSONA,:P99_NRO_INSCRIPCION_AD, ',
'                               :P99_IND_EXENTO_AD,:P99_DESC_OBSERVACION,',
'                               :P99_TIPO_IMPUESTO,:P99_IMPRIME_CONDICION, :P99_NOM_CLIENTE);',
'    EXCEPTION',
'        when others then',
'            NULL;',
'    END;                       ',
'--END IF;',
'if  :P99_TIP_COMPROBANTE in (''TKT'',''FCO'')  AND :P99_TIP_COMPROBANTE_REF NOT IN (''PED'') THEN     ',
'    :P99_COD_VENDEDOR:=NVL(:P99_COD_VENDEDOR,''19'');',
'    :P99_COD_CONDICION_VENTA:=''20'';',
'    :P99_COD_MONEDA:=''1'';',
'    :P99_COD_LISTA_PRECIO:=''1'';',
'    IF :P99_TIP_COMPROBANTE_REF=''PER'' THEN',
'        :P99_COD_VENDEDOR:=nvl(:P99_COD_VENDEDOR,''126'');',
'    END IF;    ',
'END IF;	',
'if :P99_TIP_COMPROBANTE_REF=''MAN'' THEN',
'     :P99_COD_VENDEDOR:=''115'';',
'END IF;',
'BEGIN',
'    vtfactur.busca_autorizacion(:P99_COD_EMPRESA,:P99_TIP_COMPROBANTE_REF,:P99_SER_COMPROBANTE_REF,:P99_NRO_COMPROBANTE_REF,:P99_TIP_COMPROBANTE,:P99_COD_SUCURSAL,:P99_COD_CONDICION_VENTA,:P99_COD_CONDICION_VENTA);',
'EXCEPTION',
'    when others then',
'        NULL;',
'END; ',
'declare',
'    vdescuento_cph varchar2(10);',
'    verror exception;',
'begin',
'    vdescuento_cph:= f_descuento_cph(:P99_COD_CLIENTE);',
'    if NVL(vdescuento_cph,''N'')=''N''THEN',
'        raise verror ;',
'    END IF;',
'EXCEPTION',
'    when verror then',
'        raise_application_error(-20000,''El cliente llego al limite del descuento otorgado.'');',
'    WHEN OTHERS THEN ',
'    NULL;',
'end;    ',
'BEGIN',
'    vtfactur.datos_cliente(:P99_COD_EMPRESA,:P99_COD_CLIENTE,:P99_NRO_INSCRIPCION_AD, :P99_IND_EXENTO_AD,:P99_RUC,:P99_COD_DIRECCION,:P99_DIR_CLIENTE,:P99_TEL_CLIENTE,:P99_TIPO_IMPUESTO);',
'EXCEPTION',
'    when others then',
'        NULL;',
'END; ',
''))
,p_attribute_02=>'P99_COD_DIRECCION,P99_COD_SUCURSAL,P99_COD_EMPRESA,P99_COD_CLIENTE,P99_CONSULTA,P99_COD_CLIENTE_OCA,P99_TIP_COMPROBANTE,  P99_COD_SECTOR,P99_COD_CONDICION_VENTA,P99_TIP_COMPROBANTE_REF,P99_VT_COND_CONTADO,  P99_SER_COMPROBANTE_REF,P99_NRO_COMPROBANTE'
||'_REF'
,p_attribute_03=>'P99_NOM_CLIENTE,P99_COD_VENDEDOR,P99_COD_CONDICION_VENTA,P99_COD_MONEDA,P99_COD_LISTA_PRECIO, P99_ESTADO_CLIENTE,P99_COD_ZONA,P99_TIP_CLIENTE,P99_CLIENTE_PERSONA,  P99_NRO_INSCRIPCION_AD,  P99_IND_EXENTO_AD,P99_TEL_CLIENTE, P99_DESC_OBSERVACION,P99_T'
||'IPO_IMPUESTO, P99_IMPRIME_CONDICION,P99_OLD_CLIENTE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(122667361265248604)
,p_event_id=>wwv_flow_imp.id(24409000240161929)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    VTFACTUR.datos_cliente1(PI_TIP_COMPROBANTE     => :P99_TIP_COMPROBANTE,',
'                        PI_COD_SECTOR          => :P99_COD_SECTOR,',
'                        PI_COD_CONDICION_VENTA => :P99_COD_CONDICION_VENTA,',
'                        PI_TIP_COMPROBANTE_REF => :P99_TIP_COMPROBANTE_REF,',
'                        PI_VT_COND_CONTADO     => :P99_VT_COND_CONTADO, --VARIABLES',
'                        PI_ESTADO_CLIENTE      => :P99_ESTADO_CLIENTE, --VARIABLES',
'                        PI_CLIENTE_PERSONA     => :P99_CLIENTE_PERSONA,--VARIABLES',
'                        PO_RUC                 => :P99_RUC,',
'                        PI_COD_DIRECCION       => :P99_COD_DIRECCION,',
'                        PO_COD_DIRECCION       => :P99_COD_DIRECCION,',
'                        PO_DIR_CLIENTE         => :P99_DIR_CLIENTE);',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        NULL;',
'END;',
'                              '))
,p_attribute_02=>'P99_TIP_COMPROBANTE,P99_COD_SECTOR,:P99_COD_CONDICION_VENTA,P99_TIP_COMPROBANTE_REF,                                P99_VT_COND_CONTADO,P99_COD_DIRECCION,P99_ESTADO_CLIENTE'
,p_attribute_03=>'P99_RUC,P99_COD_DIRECCION,P99_DIR_CLIENTE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(98643587621582148)
,p_event_id=>wwv_flow_imp.id(24409000240161929)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'if :P99_TIP_COMPROBANTE = ''FCR'' THEN ',
'    DECLARE',
'        v_pagare VARCHAR2(5) := ''N'';',
'    BEGIN ',
'        BEGIN ',
'        select c.PAGARE_POR_FACTURA',
'        into v_pagare',
'        from cc_clientes c',
'        where cod_empresa= ''1''',
'        and cod_cliente = :P99_COD_CLIENTE',
'        and rownum = 1;',
'        EXCEPTION ',
'            WHEN OTHERS THEN ',
'                v_pagare := ''N'';',
'        END;',
'',
'        if v_pagare = ''S'' THEN ',
'            :P99_MENSAJE_PAGARE := ''Lleva pagares con las mercaderias'';',
'        END IF;',
'',
'    END;',
'',
'END IF;'))
,p_attribute_02=>'P99_COD_CLIENTE,P99_TIP_COMPROBANTE'
,p_attribute_03=>'P99_MENSAJE_PAGARE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(194797689850105002)
,p_event_id=>wwv_flow_imp.id(24409000240161929)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P99_TIP_COMPROBANTE_REF = ''ORT'' THEN ',
'    :P99_COD_LISTA_PRECIO :=  1;',
'END IF;'))
,p_attribute_02=>'P99_TIP_COMPROBANTE_REF'
,p_attribute_03=>'P99_COD_LISTA_PRECIO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(25330660102948402)
,p_name=>'DA_VALIDA_COD_CLIENTE'
,p_event_sequence=>270
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P99_COD_CLIENTE'
,p_bind_type=>'bind'
,p_bind_event_type=>'focusout'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(25330704926948403)
,p_event_id=>wwv_flow_imp.id(25330660102948402)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'--WHEN NEW ITEM INSTANCE',
':P99_OLD_CLIENTE := :P99_COD_CLIENTE;',
'',
'--WHEN-VALIDATE-ITEM',
'IF nvl( :P99_CONSULTA, ''N'' ) = ''N''  and ( :P99_COD_CLIENTE is not null and :P99_COD_CLIENTE <> :P99_COD_CLIENTE_OCA ) THEN    ',
'    BEGIN',
'        vtfactur.busca_cliente(:P99_COD_EMPRESA,:P99_COD_CLIENTE,:P99_ESTADO_CLIENTE,:P99_COD_ZONA,  ',
'                               :P99_TIP_CLIENTE,:P99_CLIENTE_PERSONA,:P99_NRO_INSCRIPCION_AD, ',
'                               :P99_IND_EXENTO_AD,:P99_DESC_OBSERVACION,',
'                               :P99_TIPO_IMPUESTO,:P99_IMPRIME_CONDICION, :P99_NOM_CLIENTE);',
'    EXCEPTION',
'        when others then',
'            NULL;',
'    END;                       ',
'END IF;',
'if  :P99_TIP_COMPROBANTE in (''TKT'',''FCO'')AND :P99_TIP_COMPROBANTE_REF NOT IN (''PED'') THEN     ',
'    :P99_COD_VENDEDOR:=NVL(:P99_COD_VENDEDOR,''19'');',
'    :P99_COD_CONDICION_VENTA:=''20'';',
'    :P99_COD_MONEDA:=''1'';',
'    :P99_COD_LISTA_PRECIO:=''1'';',
'    IF :P99_TIP_COMPROBANTE_REF=''PER'' THEN',
'        :P99_COD_VENDEDOR:=nvl(:P99_COD_VENDEDOR,''126'');',
'    END IF;    ',
'END IF;	',
'if :P99_TIP_COMPROBANTE_REF=''MAN'' THEN',
'     :P99_COD_VENDEDOR:=''115'';',
'END IF;',
'BEGIN',
'    vtfactur.busca_autorizacion(:P99_COD_EMPRESA,:P99_TIP_COMPROBANTE_REF,:P99_SER_COMPROBANTE_REF,:P99_NRO_COMPROBANTE_REF,:P99_TIP_COMPROBANTE,:P99_COD_SUCURSAL,:P99_COD_CONDICION_VENTA,:P99_COD_CONDICION_VENTA);',
'EXCEPTION',
'    when others then',
'        NULL;',
'END; ',
'declare',
'    vdescuento_cph varchar2(10);',
'    verror exception;',
'begin',
'    vdescuento_cph:= f_descuento_cph(:P99_COD_CLIENTE);',
'    if NVL(vdescuento_cph,''N'')=''N''THEN',
'        raise verror ;',
'    END IF;',
'EXCEPTION',
'    when verror then',
'        raise_application_error(-20000,''El cliente llego al limite del descuento otorgado.'');',
'    WHEN OTHERS THEN ',
'    NULL;',
'end;    ',
'BEGIN',
'    vtfactur.datos_cliente(:P99_COD_EMPRESA,:P99_COD_CLIENTE,:P99_NRO_INSCRIPCION_AD, :P99_IND_EXENTO_AD,:P99_RUC,:P99_COD_DIRECCION,:P99_DIR_CLIENTE,:P99_TEL_CLIENTE,:P99_TIPO_IMPUESTO);',
'EXCEPTION',
'    when others then',
'        NULL;',
'END; ',
''))
,p_attribute_02=>'P99_COD_DIRECCION,P99_COD_SUCURSAL,P99_COD_EMPRESA,P99_COD_CLIENTE,P99_CONSULTA,P99_COD_CLIENTE_OCA,P99_TIP_COMPROBANTE,  P99_COD_SECTOR,P99_COD_CONDICION_VENTA,P99_TIP_COMPROBANTE_REF,P99_VT_COND_CONTADO,  P99_SER_COMPROBANTE_REF,P99_NRO_COMPROBANTE'
||'_REF'
,p_attribute_03=>'P99_NOM_CLIENTE,P99_COD_VENDEDOR,P99_COD_CONDICION_VENTA,P99_COD_MONEDA,P99_COD_LISTA_PRECIO, P99_ESTADO_CLIENTE,P99_COD_ZONA,P99_TIP_CLIENTE,P99_CLIENTE_PERSONA,  P99_NRO_INSCRIPCION_AD,  P99_IND_EXENTO_AD,P99_TEL_CLIENTE, P99_DESC_OBSERVACION,P99_T'
||'IPO_IMPUESTO, P99_IMPRIME_CONDICION,P99_OLD_CLIENTE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(34011552093371448)
,p_event_id=>wwv_flow_imp.id(25330660102948402)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    VTFACTUR.datos_cliente1(PI_TIP_COMPROBANTE     => :P99_TIP_COMPROBANTE,',
'                        PI_COD_SECTOR          => :P99_COD_SECTOR,',
'                        PI_COD_CONDICION_VENTA => :P99_COD_CONDICION_VENTA,',
'                        PI_TIP_COMPROBANTE_REF => :P99_TIP_COMPROBANTE_REF,',
'                        PI_VT_COND_CONTADO     => :P99_VT_COND_CONTADO, --VARIABLES',
'                        PI_ESTADO_CLIENTE      => :P99_ESTADO_CLIENTE, --VARIABLES',
'                        PI_CLIENTE_PERSONA     => :P99_CLIENTE_PERSONA,--VARIABLES',
'                        PO_RUC                 => :P99_RUC,',
'                        PI_COD_DIRECCION       => :P99_COD_DIRECCION,',
'                        PO_COD_DIRECCION       => :P99_COD_DIRECCION,',
'                        PO_DIR_CLIENTE         => :P99_DIR_CLIENTE);',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        NULL;',
'END;',
'                              '))
,p_attribute_02=>'P99_TIP_COMPROBANTE,P99_COD_SECTOR,:P99_COD_CONDICION_VENTA,P99_TIP_COMPROBANTE_REF,                                P99_VT_COND_CONTADO,P99_COD_DIRECCION,P99_ESTADO_CLIENTE'
,p_attribute_03=>'P99_RUC,P99_COD_DIRECCION,P99_DIR_CLIENTE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(24410391685161942)
,p_event_id=>wwv_flow_imp.id(25330660102948402)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'--POST-TEXT-ITEM',
'IF :P99_NRO_COMPROBANTE_REF IS NULL and nvl( :P99_OLD_CLIENTE, ''X'' ) <> :P99_COD_CLIENTE THEN',
'    :P99_COD_CONDICION_VENTA := NULL;',
'    :P99_COD_LISTA_PRECIO := NULL;',
'    BEGIN',
'        select cod_vendedor, cod_condicion_venta, nro_jerarquia, plazo, tip_cliente,',
'               tip_documento, nivel, estado, tipo_impuesto',
'          into :P99_COD_VENDEDOR, :P99_COD_CONDICION_VENTA,',
'               :P99_NRO_JERARQUIA, :P99_PLAZO, :P99_TIP_CLIENTE,',
'               :P99_TIP_DOCUMENTO, :P99_NIVEL, :P99_ESTADO_CLIENTE,',
'               :P99_TIPO_IMPUESTO',
'          from cc_clientes c, cc_tipo_documentacion ct',
'         where c.cod_empresa = :P99_COD_EMPRESA',
'           and c.cod_cliente = :P99_COD_CLIENTE',
'           and c.tip_documento = ct.cod_tip_doc;',
'    EXCEPTION',
'        when others then',
'            NULL;',
'    END;',
'END IF;',
'IF :P99_ESTADO_CLIENTE = ''C'' THEN',
'    :P99_PLAZO := 0;   ',
'END IF;',
'IF :P99_COD_SECTOR IN (''4'',''4.1'',''4.2'') THEN',
'    :P99_COD_VENDEDOR:=nvl(:P99_COD_VENDEDOR,''126'');',
'END IF;',
'',
'',
'',
''))
,p_attribute_02=>'P99_ESTADO_CLIENTE,P99_COD_SECTOR,P99_COD_EMPRESA,P99_COD_CLIENTE,P99_NRO_COMPROBANTE_REF,P99_OLD_CLIENTE'
,p_attribute_03=>'P99_PLAZO,P99_COD_VENDEDOR,P99_COD_VENDEDOR,P99_COD_CONDICION_VENTA,P99_NRO_JERARQUIA,P99_PLAZO,P99_TIP_CLIENTE,P99_TIP_DOCUMENTO,P99_NIVEL,P99_ESTADO_CLIENTE,P99_TIPO_IMPUESTO,P99_COD_LISTA_PRECIO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(24410423782161943)
,p_event_id=>wwv_flow_imp.id(25330660102948402)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P99_COD_SUCURSAL in (''65'') then',
'    :P99_COD_CLIENTE := vtfactur.busca_cod_cliente (:P99_COD_EMPRESA,:P99_COD_CLIENTE);',
'end if;'))
,p_attribute_02=>'P99_COD_EMPRESA,P99_COD_CLIENTE,P99_COD_SUCURSAL'
,p_attribute_03=>'P99_COD_CLIENTE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P99_COD_SUCURSAL'
,p_client_condition_expression=>'65'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(25331184101948407)
,p_name=>'DA_RUC'
,p_event_sequence=>280
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P99_RUC'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.item(''P99_COD_CLIENTE_OCA'').getValue() == '''' || apex.item(''P99_COD_CLIENTE_OCA'').getValue() != apex.item(''P99_COD_CLIENTE'').getValue()',
'',
''))
,p_bind_type=>'bind'
,p_bind_event_type=>'focusin'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(25331288956948408)
,p_event_id=>wwv_flow_imp.id(25331184101948407)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_FOCUS'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P99_COD_DIRECCION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(31457889129510719)
,p_name=>'DA_NOM_CLIENTE'
,p_event_sequence=>290
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P99_NOM_CLIENTE'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.item(''P99_COD_CLIENTE_OCA'').getValue() == '''' || apex.item(''P99_COD_CLIENTE_OCA'').getValue() != apex.item(''P99_COD_CLIENTE'').getValue()',
'',
''))
,p_bind_type=>'bind'
,p_bind_event_type=>'focusin'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(31457935074510720)
,p_event_id=>wwv_flow_imp.id(31457889129510719)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_FOCUS'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P99_RUC'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(25331318013948409)
,p_name=>'DA_COD_DIRECCION'
,p_event_sequence=>300
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P99_COD_DIRECCION'
,p_bind_type=>'bind'
,p_bind_event_type=>'focusout'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(25331448898948410)
,p_event_id=>wwv_flow_imp.id(25331318013948409)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF nvl( :P99_CONSULTA, ''N'' ) = ''N'' and ( :P99_COD_CLIENTE is not null and :P99_COD_CLIENTE <> :P99_COD_CLIENTE_OCA ) THEN',
'  declare',
'    cant number;',
'  begin',
'    select count(*) ',
'      into cant',
'      from direc_personas d',
'     where d.cod_persona = :P99_CLIENTE_PERSONA;',
'    if cant <> 0 or :P99_COD_DIRECCION is not null then',
'      begin',
'        select d.detalle ',
'          into :P99_DIR_CLIENTE',
'          from direc_personas d',
'         where d.cod_persona = :P99_CLIENTE_PERSONA',
'           and d.cod_direccion = :P99_COD_DIRECCION;',
'        :P99_COD_DIRECCION := :P99_COD_DIRECCION;   ',
'      exception',
'        when others then',
'           :P99_DIR_CLIENTE := null;',
'           :P99_COD_DIRECCION := null;',
'           :P99_COD_DIRECCION := null;',
unistr('           --mensaje_ex(''No existe el codigo de direcci\00F3n para este cliente ''||CHR(13) || sqlerrm);'),
'           --raise form_trigger_failure;',
'      end;',
'    end if;',
'  end;',
'end if;',
''))
,p_attribute_02=>'P99_CONSULTA,P99_COD_CLIENTE,P99_COD_CLIENTE_OCA,P99_CLIENTE_PERSONA,P99_COD_DIRECCION'
,p_attribute_03=>'P99_DIR_CLIENTE,P99_COD_DIRECCION'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(25331556604948411)
,p_name=>'DA_DIR_CLIENTE'
,p_event_sequence=>310
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P99_DIR_CLIENTE'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'apex.item(''P99_COD_CLIENTE_OCA'').getValue() == '''' || apex.item(''P99_COD_CLIENTE_OCA'').getValue() != apex.item(''P99_COD_CLIENTE'').getValue()'
,p_bind_type=>'bind'
,p_bind_event_type=>'focusin'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(25331683003948412)
,p_event_id=>wwv_flow_imp.id(25331556604948411)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_FOCUS'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P99_TEL_CLIENTE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(25331781078948413)
,p_name=>'DA_TEL_CLIENTE'
,p_event_sequence=>320
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P99_TEL_CLIENTE'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'apex.item(''P99_COD_CLIENTE_OCA'').getValue() == '''' || apex.item(''P99_COD_CLIENTE_OCA'').getValue() != apex.item(''P99_COD_CLIENTE'').getValue()'
,p_bind_type=>'bind'
,p_bind_event_type=>'focusin'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(25331803540948414)
,p_event_id=>wwv_flow_imp.id(25331781078948413)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_FOCUS'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P99_RECARGO'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(25332195944948417)
,p_name=>'DA_COD_VENDEDOR1'
,p_event_sequence=>330
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P99_COD_VENDEDOR'
,p_bind_type=>'bind'
,p_bind_event_type=>'focusout'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(25332225506948418)
,p_event_id=>wwv_flow_imp.id(25332195944948417)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P99_COD_VENDEDOR in ( ''128'',''132'',''145'',''164'',''166'',''222'') and :P99_COD_SUCURSAL not in (''09'',''105'',''247'',''105.1'') then',
'    raise_application_error(-20000,''No cuenta con permiso para el Deposito ''||:P99_COD_SUCURSAL);',
'end if;'))
,p_attribute_02=>'P99_COD_VENDEDOR,P99_COD_SUCURSAL'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(25332368240948419)
,p_name=>'DA_VALIDA_COND_VENTA'
,p_event_sequence=>340
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P99_COD_CONDICION_VENTA'
,p_condition_element=>'P99_COD_CONDICION_VENTA'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'focusout'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(25332451250948420)
,p_event_id=>wwv_flow_imp.id(25332368240948419)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P99_COD_CONDICION_VENTA IN (''193'',''194'') THEN',
'    :P99_COD_SECTOR:=''30'';',
'END IF;',
'--when-validate-item',
'IF nvl(:P99_NRO_COMPROBANTE_REF,0) = 0 OR :P99_NRO_COMPROBANTE_REF is null THEN',
'    IF nvl( :P99_CONSULTA, ''N'' ) = ''N'' THEN',
'        vtfactur.valida_cod_cond_venta(PI_COD_EMPRESA => :P99_COD_EMPRESA,',
'                                PI_TIP_COMPROBANTE     =>:P99_TIP_COMPROBANTE,',
'                                PI_COD_CONDICION_VENTA =>:P99_COD_CONDICION_VENTA,',
'                                PI_PLAZO               =>to_number(:P99_PLAZO),',
'                                PI_TIP_CLIENTE         =>:P99_TIP_CLIENTE,',
'                                PI_NIVEL               =>to_number(:P99_NIVEL),',
'                                PI_NRO_JERARQUIA       =>to_number(:P99_NRO_JERARQUIA),',
'                                PI_USA_CONDICIONES     =>:P99_USA_CONDICIONES, --VARIABLES',
'                                PO_COD_LISTA_PRECIO    =>:P99_COD_LISTA_PRECIO,',
'                                PO_COD_MONEDA          =>:P99_COD_MONEDA,',
'                                PO_NRO_CUOTAS          =>:P99_NRO_CUOTAS);',
'        DECLARE',
'            xbloqueado     EXCEPTION;',
'            vplazo NUMBER(3);',
'        BEGIN',
'            select nro_cuotas',
'              into vplazo',
'              from cc_condiciones_ventas',
'             where cod_empresa = :P99_COD_EMPRESA',
'               and cod_condicion_venta = :P99_COD_CONDICION_VENTA;',
'',
'            IF nvl( vplazo, 0 ) > 0 AND :P99_ESTADO_CLIENTE = ''C'' and :P99_COD_SECTOR not in (''4.1'') THEN',
'             	IF :P99_VT_COND_CONTADO = NVL(:P99_COD_CONDICION_VENTA,''36'') AND :P99_TIP_COMPROBANTE=''FCR'' AND :P99_TIP_COMPROBANTE_REF=''ORT'' THEN',
'        			NULL;',
'        	    ELSE',
unistr('                    raise_application_error(-20000,''Condici\00F3n de Ventas no V\00E1lida - El cliente est\00E1 con Cr\00E9dito Bloqueado'' );'),
'                END IF;',
'            END IF;',
'        EXCEPTION',
'            when others then ',
'               null;',
'        END;',
'    END IF;',
'',
'    IF nvl( :P99_NRO_CUOTAS, 0 ) > 0 THEN',
'       null;--:P99_COD_CLIENTE := :P99_COD_CLIENTE;',
'    ELSE',
'        IF :P99_TIP_COMPROBANTE = ''FCR'' AND :P99_TIP_COMPROBANTE_REF = ''ORT'' THEN',
'            raise_application_error(-20000,''Debe ingresar una cond. de vta. que posea al menos una cuota.'');',
'        END IF;',
'    END IF;',
'ELSE',
'    if :P99_COD_CONDICION_VENTA in( ''36'',''42'') or  :P99_COD_CONDICION_VENTA = ''20'' then',
'        :P99_RECARGO := 0;',
'    else',
'        begin',
'            declare ',
'                 vrec number(10);',
'            begin',
'                select nvl(recargo ,0)',
'                  into :P99_RECARGO',
'                from vt_pedidos_cabecera',
'                 where cod_empresa =:P99_COD_EMPRESA',
'                    and tip_comprobante =:P99_TIP_COMPROBANTE_REF',
'                    and ser_comprobante =:P99_SER_COMPROBANTE_REF',
'                    and nro_comprobante =:P99_NRO_COMPROBANTE_REF;',
'            exception',
'                when others then',
'                    :P99_RECARGO :=0; ',
'            end;',
'        end;',
'    end if;',
'END IF; ',
'',
'if :P99_COD_CONDICION_VENTA=''210'' then',
'    :P99_COD_CUSTODIO_ENT:=''99'';',
'end if;     ',
'',
'BEGIN',
'    VTFACTUR.valida_cod_cond_vta1(PI_COD_EMPRESA         =>:P99_COD_EMPRESA,',
'                                  PI_COD_CONDICION_VENTA =>:P99_COD_CONDICION_VENTA,',
'                                  PI_TIP_COMPROBANTE     =>:P99_TIP_COMPROBANTE,',
'                                  PI_TIP_COMPROBANTE_REF =>:P99_TIP_COMPROBANTE_REF,',
'                                  PI_COD_SECTOR          =>:P99_COD_SECTOR,',
'                                  PI_ESTADO_CLIENTE      =>:P99_ESTADO_CLIENTE,',
'                                  PI_VT_COND_CONTADO     =>:P99_VT_COND_CONTADO);',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        NULL;',
'END;        ',
'',
''))
,p_attribute_02=>'P99_COD_CONDICION_VENTA,P99_COD_EMPRESA,P99_TIP_COMPROBANTE,P99_TIP_COMPROBANTE_REF,P99_COD_SECTOR,P99_ESTADO_CLIENTE,P99_VT_COND_CONTADO,P99_SER_COMPROBANTE_REF P99_NRO_COMPROBANTE_REF,P99_NRO_CUOTAS,P99_TIP_CLIENTE,P99_NRO_JERARQUIA,P99_USA_CONDICI'
||'ONES'
,p_attribute_03=>'P99_COD_LISTA_PRECIO,P99_COD_MONEDA,P99_NRO_CUOTAS,P99_COD_CUSTODIO_ENT,P99_RECARGO,P99_COD_SECTOR'
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
 p_id=>wwv_flow_imp.id(25332535093948421)
,p_name=>'DA_VALIDA_LISTA_PRECIO'
,p_event_sequence=>350
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P99_COD_LISTA_PRECIO'
,p_bind_type=>'bind'
,p_bind_event_type=>'focusout'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(25332650886948422)
,p_event_id=>wwv_flow_imp.id(25332535093948421)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    VTFACTUR.valida_lista_precio(PI_COD_EMPRESA      =>:P99_COD_EMPRESA,',
'                                 PI_COD_LISTA_PRECIO =>:P99_COD_LISTA_PRECIO,',
'                                 PO_COD_MONEDA       =>:P99_COD_MONEDA);',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        NULL;',
'END;',
'',
'if nvl(:P99_COD_SUCURSAL,''01'') IN(''190'',''03'',''209'') then',
'	IF :P99_COD_LISTA_PRECIO In (''2'',''3'') then',
'		:P99_COD_CUSTODIO_ENT:=''255'';',
'    end if;',
'END IF;',
''))
,p_attribute_02=>'P99_COD_SUCURSAL,P99_COD_LISTA_PRECIO,P99_COD_EMPRESA'
,p_attribute_03=>'P99_COD_MONEDA,P99_COD_CUSTODIO_ENT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(25332718736948423)
,p_name=>'DA_VALIDA_MONEDA'
,p_event_sequence=>360
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P99_COD_MONEDA'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(25332849956948424)
,p_event_id=>wwv_flow_imp.id(25332718736948423)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    VDESC_MONEDA VARCHAR2(20);',
'BEGIN',
'    :P99_AUX_MSJ := NULL;',
'    IF nvl( :P99_CONSULTA, ''N'' ) = ''N'' THEN',
'        VTFACTUR.valida_moneda(PI_COD_MONEDA        =>:P99_COD_MONEDA,',
'                               PO_TIP_CAMBIO        =>:P99_C_TIP_CAMBIO,',
'                               PO_DECIMALES         =>:P99_DECIMALES,',
'                               PO_DESC_MONEDA       => VDESC_MONEDA,',
'                               PO_TIP_CAMBIO_COMPRA =>:P99_TIP_CAMBIO_COMPRA);',
'    	/*IF :P99_COD_MONEDA <> ''1'' THEN',
'    		:P99_AUX_MSJ := ''Esta seguro que desea Facturar con la Moneda: ''||VDESC_MONEDA;',
'    	END IF;*/',
'        IF TO_NUMBER(:P99_DECIMALES) > 0 THEN',
'            :P99_DECIMALES := 2;',
'        END IF;',
'        :P99_AJUSTE_IVA := NULL;',
'            --propiedades;',
'    END IF;',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        NULL;',
'END;        ',
''))
,p_attribute_02=>'P99_CONSULTA,P99_COD_MONEDA'
,p_attribute_03=>'P99_C_TIP_CAMBIO,P99_DECIMALES,P99_TIP_CAMBIO_COMPRA,P99_AUX_MSJ,P99_AJUSTE_IVA'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(25333490713948430)
,p_event_id=>wwv_flow_imp.id(25332718736948423)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P99_AUX_MSJ.'
,p_attribute_02=>'Error'
,p_attribute_03=>'warning'
,p_attribute_04=>'fa-warning'
,p_attribute_06=>'Aceptar'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P99_AUX_MSJ'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(25333690978948432)
,p_name=>'DA_FECHA_LIMITE_FACTURACION'
,p_event_sequence=>370
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P99_FECHA_LIMITE_FACTURACION'
,p_condition_element=>'P99_CAMBIA_FECHA'
,p_triggering_condition_type=>'NOT_EQUALS'
,p_triggering_expression=>'S'
,p_bind_type=>'bind'
,p_bind_event_type=>'focusin'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(25333790867948433)
,p_event_id=>wwv_flow_imp.id(25333690978948432)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_FOCUS'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P99_TIP_CAMBIO'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(24409381993161932)
,p_name=>'DA_CARGA_DETALLE'
,p_event_sequence=>380
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(24409215524161931)
,p_condition_element=>'P99_COD_CONDICION_VENTA'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(104447413102494230)
,p_event_id=>wwv_flow_imp.id(24409381993161932)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var spinner = apex.util.showSpinner(); ',
'$("#apex_wait_overlay").remove(); '))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(119708694263278405)
,p_event_id=>wwv_flow_imp.id(24409381993161932)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'PLUGIN_COM.FOS.NOTIFICATIONS'
,p_attribute_01=>'warning'
,p_attribute_02=>'static'
,p_attribute_03=>unistr('Atenci\00F3n')
,p_attribute_04=>unistr('Debe seleccionar la condici\00F3n de Venta')
,p_attribute_07=>'autodismiss:prevent-duplicates:remove-notifications:escape-html:newest-on-top:client-side-substitutions:dismiss-on-click:dismiss-on-button'
,p_attribute_08=>'top-right'
,p_attribute_09=>'Y'
,p_attribute_11=>'5'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(104447381534494229)
,p_event_id=>wwv_flow_imp.id(24409381993161932)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'apex_collection.create_or_truncate_collection(p_collection_name => ''DETALLE_COMPROBANTE'');'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(24409480203161933)
,p_event_id=>wwv_flow_imp.id(24409381993161932)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    :P99_AUX_MSJ := null;',
'    IF :P99_COD_CLIENTE IS NOT NULL THEN',
'        IF :P99_TIP_COMPROBANTE_REF IS NOT NULL AND :P99_SER_COMPROBANTE_REF IS NOT NULL AND :P99_NRO_COMPROBANTE_REF IS NOT NULL THEN',
'            VTFACTUR.carga_detalle(PI_COD_EMPRESA         => :P99_COD_EMPRESA,',
'                                PI_TIP_COMPROBANTE_REF => :P99_TIP_COMPROBANTE_REF,',
'                                PI_SER_COMPROBANTE_REF => :P99_SER_COMPROBANTE_REF,',
'                                PI_NRO_COMPROBANTE_REF => :P99_NRO_COMPROBANTE_REF,',
'                                PI_COD_SECTOR          => :P99_COD_SECTOR,',
'                                PI_COD_CLIENTE         => :P99_COD_CLIENTE,',
'                                PI_COD_SUCURSAL_CAB    => :P99_COD_SUCURSAL,',
'                                PI_IVA_PARCIAL         => TO_NUMBER(:P99_IVA_PARCIAL), ',
'                                PO_IVA_PARCIAL         => :P99_IVA_PARCIAL,',
'                                PI_SUBTOTAL_PARCIAL    => TO_NUMBER(:P99_SUBTOTAL_PARCIAL),',
'                                PO_SUBTOTAL_PARCIAL    => :P99_SUBTOTAL_PARCIAL,',
'                                PI_GRAVADAS_PARCIAL    => TO_NUMBER(:P99_GRAVADAS_PARCIAL),',
'                                PO_GRAVADAS_PARCIAL    => :P99_GRAVADAS_PARCIAL,',
'                                PI_EXENTAS_PARCIAL     => TO_NUMBER(:P99_EXENTAS_PARCIAL),',
'                                PO_EXENTAS_PARCIAL     => :P99_EXENTAS_PARCIAL,',
unistr('                                PI_DESCUENTO           => :P99_DESCUENTO, --VER CU\00C1L ES'),
'                                PO_SUBTOTAL            => :P99_SUBTOTAL,',
'                                PI_P_IND_ANTICIPO      => :P99_P_IND_ANTICIPO,',
'                                P_P_IMPORTE_ANTICIPO   => :P99_P_IMPORTE_ANTICIPO,',
'                                PI_FEC_COMPROBANTE     => :P99_FEC_COMPROBANTE,',
'                                PI_DECIMALES           => :P99_DECIMALES,',
'                                PI_CALCULA_IVA         => :P99_CALCULA_IVA, --VARIABLES',
'                                PI_TIPO_IMPUESTO       => :P99_TIPO_IMPUESTO, ',
'                                PI_IND_EXENTO_AD       => :P99_IND_EXENTO_AD, ',
'                                PI_COD_MONEDA_BASE     => :P99_COD_MONEDA_BASE, --VARIABLES',
'                                PI_UNIDAD_MEDIDA       => :P99_UNIDAD_MEDIDA, --VARIABLES',
'                                PI_V_PORC_IVA          => :P99_PORC_IVA, --VARIABLES',
'                                PI_V_RECARGO           => :P99_RECARGO_VAR, --VARIABLES',
'                                PI_AJUSTE_IVA          => :P99_AJUSTE_IVA, ',
'                                PI_C_RECARGO           => :P99_RECARGO, ',
'                                PO_PORCENTAJE_DESCUENTO=> :P99_PORCENTAJE_DESCUENTO, ',
'                                PO_TOTAL_IVA           => :P99_TOTAL_IVA, ',
'                                PO_GRAVADAS            => :P99_GRAVADAS, ',
'                                PO_EXENTAS             => :P99_EXENTAS, ',
'                                PO_RECARGO_PORC        => :P99_RECARGO_PORC, ',
'                                PO_TOTAL               => :P99_TOTAL,',
'                                PO_MULT                => :P99_MULT,',
'                                PO_DIV                 => :P99_DIV,',
'                                PI_CARGA_DETALLE       => :P99_CARGA_DETALLE,',
'                                PO_CARGA_DETALLE       => :P99_CARGA_DETALLE,',
'                                pi_cod_moneda          => :P99_COD_MONEDA,',
'                                p_mensaje              => :P99_AUX_MSJ);   ',
'        ELSE',
'            :P99_AUX_MSJ := ''Debe ingresar los datos del comprobante de referencia.'';',
'        END IF;  ',
'    ELSE',
unistr('        :P99_AUX_MSJ := ''Debe ingresar el c\00F3digo de cliente.'';'),
'    END IF;                      ',
'EXCEPTION',
'    WHEN OTHERS THEN    ',
'        RAISE_APPLICATION_ERROR(-20000,''Ha ocurrido un error al cargar el detalle de la factura. ''||sqlerrm);',
'END;        '))
,p_attribute_02=>'P99_CARGA_DETALLE,P99_COD_EMPRESA,P99_TIP_COMPROBANTE_REF,P99_SER_COMPROBANTE_REF,P99_NRO_COMPROBANTE_REF,P99_COD_SECTOR,P99_COD_CLIENTE,P99_COD_SUCURSAL,P99_IVA_PARCIAL,P99_SUBTOTAL_PARCIAL,P99_GRAVADAS_PARCIAL,P99_EXENTAS_PARCIAL,P99_DESCUENTO,P99_'
||'P_IND_ANTICIPO,P99_P_IMPORTE_ANTICIPO,P99_FEC_COMPROBANTE,P99_DECIMALES P99_CALCULA_IVA,P99_TIPO_IMPUESTO,P99_IND_EXENTO_AD,P99_COD_MONEDA_BASE,P99_UNIDAD_MEDIDA, P99_PORC_IVA, P99_RECARGO_VAR,P99_AJUSTE_IVA,P99_RECARGO,P99_COD_MONEDA'
,p_attribute_03=>'P99_CARGA_DETALLE,P99_DIV,P99_MULT,P99_SUBTOTAL,P99_AUX_MSJ,P99_IVA_PARCIAL,P99_SUBTOTAL_PARCIAL,P99_GRAVADAS_PARCIAL,P99_EXENTAS_PARCIAL,P99_PORCENTAJE_DESCUENTO,P99_TOTAL_IVA,P99_GRAVADAS,P99_EXENTAS,P99_RECARGO_PORC,P99_TOTAL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(26362965927470532)
,p_event_id=>wwv_flow_imp.id(24409381993161932)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(24410539880161944)
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P99_AUX_MSJ'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(24409945844161938)
,p_event_id=>wwv_flow_imp.id(24409381993161932)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P99_AUX_MSJ.'
,p_attribute_02=>'Error'
,p_attribute_03=>'warning'
,p_attribute_04=>'fa-warning'
,p_attribute_06=>'Aceptar'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P99_AUX_MSJ'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(24410004949161939)
,p_event_id=>wwv_flow_imp.id(24409381993161932)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_FOCUS'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P99_NRO_COMPROBANTE_REF'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P99_AUX_MSJ'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(106521218964760503)
,p_event_id=>wwv_flow_imp.id(24409381993161932)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT    sum(to_number(replace(nvl(c015, 0), ''.'')))   AS monto_total,',
'          sum(to_number(replace(nvl(c007, 0), ''.'')))  AS total_iva',
'INTO :P99_SUBTOTAL_1, :P99_TOTAL_IVA_1',
'FROM apex_collections',
'WHERE collection_name = ''DETALLE_COMPROBANTE'';',
'',
'IF :P99_COD_MONEDA = ''1'' THEN ',
'    :P99_TOTAL_1 := TO_CHAR(TO_NUMBER(REPLACE(:P99_SUBTOTAL_1,''.'')) + TO_NUMBER(REPLACE(:P99_TOTAL_IVA_1,''.'')), ''999G999G999G999G999G999G990'');',
'    :P99_SUBTOTAL_1 := TO_CHAR(:P99_SUBTOTAL_1, ''999G999G999G999G999G999G990'');',
'    :P99_TOTAL_IVA_1 := TO_CHAR(:P99_TOTAL_IVA_1, ''999G999G999G999G999G999G990'');',
'ELSE ',
'    :P99_TOTAL_1 := TO_CHAR(TO_NUMBER(REPLACE(:P99_SUBTOTAL_1,''.'')) + TO_NUMBER(REPLACE(:P99_TOTAL_IVA_1,''.'')), ''999G999G999G999G990D00'');',
'    :P99_SUBTOTAL_1 := TO_CHAR(:P99_SUBTOTAL_1, ''999G999G999G999G990D00'');',
'    :P99_TOTAL_IVA_1 := TO_CHAR(:P99_TOTAL_IVA_1, ''999G999G999G999G990D00'');',
'END IF;'))
,p_attribute_02=>'P99_COD_MONEDA'
,p_attribute_03=>'P99_TOTAL_1,P99_SUBTOTAL_1,P99_TOTAL_IVA_1'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(29391590781747202)
,p_event_id=>wwv_flow_imp.id(24409381993161932)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(27326198411312327)
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P99_AUX_MSJ'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(175476632124656504)
,p_event_id=>wwv_flow_imp.id(24409381993161932)
,p_event_result=>'TRUE'
,p_action_sequence=>90
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(27326198411312327)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P99_TIP_COMPROBANTE_REF'
,p_client_condition_expression=>'PED'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(152756378794015804)
,p_event_id=>wwv_flow_imp.id(24409381993161932)
,p_event_result=>'TRUE'
,p_action_sequence=>100
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare ',
'',
'cursor cur_detalles is',
'      SELECT  SEQ_ID,',
'          C001 cod_articulo,                ',
'          C002 desc_articulo,                ',
'          C003 cod_unidad_medida,                                ',
'          C004 cod_relacion_um,                                ',
'          TO_NUMBER(C005) cantidad,                 ',
'          TO_NUMBER(C006) cantidad_ub,                 ',
'          C007 total_iva,                ',
'          C008 precio_unitario,                                 ',
'          C009 precio_lista,                                ',
'          C010 descuento,                                ',
'          TO_NUMBER(C011) porc_recargo,                                ',
'          C012 porc_iva,                                ',
'          TO_NUMBER(C013) recargo,                                 ',
'          C014 porc_descuento,                                 ',
'          C015 monto_total,                                ',
'          C016 nro_promo,                                ',
'          C017 IND_OUTLET,                                ',
'          C018 ind_PRODUCTO_ARMADO,                                ',
'          C019 orden_detalle_pedido,                ',
'          C020 cod_grupo_art,                 ',
'          C021 cod_moneda_base,                ',
'          C022 cod_origen_art,                ',
'          C023 vmodifica_precio, ',
'          C024 costo_promedio,  ',
'          C025 costo_promedio_ref,  ',
'          C026 maneja_lotes,  ',
'          C027 nro_lote,  ',
'          C028 ind_renta,  ',
'          C029 cod_iva,  ',
'          C030 porc_iva_ad, ',
'          C031 ind_incremento_stngo, ',
'          C032 ind_no_stock, ',
'          C033 cod_sucursal, ',
'          C034 ser_pedido,',
'          C035 nro_pedido,',
'          c036 repuesto_sta,',
'          null eliminar,',
'          null editar',
'FROM APEX_COLLECTIONS',
'WHERE COLLECTION_NAME = ''DETALLE_COMPROBANTE''',
'and c027 is null;',
'',
'begin   ',
'    for a in cur_detalles loop',
'        :P0_MENSAJE_VALIDACION:= ''El articulo ''|| a.cod_articulo||'' ''||a.desc_articulo||'' no posee lote'';',
'    end loop;',
'',
'end;'))
,p_attribute_03=>'P0_MENSAJE_VALIDACION'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(103254342782652640)
,p_event_id=>wwv_flow_imp.id(24409381993161932)
,p_event_result=>'TRUE'
,p_action_sequence=>110
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$("#apex_wait_overlay").remove();',
'$(".u-Processing").remove();'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(26364188735470544)
,p_name=>'DA_ENTREGA_INICIAL'
,p_event_sequence=>390
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P99_ENTREGA_INICIAL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(26364221932470545)
,p_event_id=>wwv_flow_imp.id(26364188735470544)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P99_ENTREGA_INICIAL_1 := :P99_ENTREGA_INICIAL;'
,p_attribute_02=>'P99_ENTREGA_INICIAL'
,p_attribute_03=>'P99_ENTREGA_INICIAL_1'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(26364354831470546)
,p_name=>'DA_RECARGO_PORC'
,p_event_sequence=>400
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P99_RECARGO_PORC'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(26364462807470547)
,p_event_id=>wwv_flow_imp.id(26364354831470546)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P99_RECARGO_PORC_1 := :P99_RECARGO_PORC;'
,p_attribute_02=>'P99_RECARGO_PORC'
,p_attribute_03=>'P99_RECARGO_PORC_1'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(26364544966470548)
,p_name=>'DA_EXENTAS'
,p_event_sequence=>410
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P99_EXENTAS'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(26364694627470549)
,p_event_id=>wwv_flow_imp.id(26364544966470548)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P99_EXENTAS_1 := :P99_EXENTAS;'
,p_attribute_02=>'P99_EXENTAS'
,p_attribute_03=>'P99_EXENTAS_1'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(26364708491470550)
,p_name=>'DA_GRAVADAS'
,p_event_sequence=>420
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P99_GRAVADAS'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(26472756646310201)
,p_event_id=>wwv_flow_imp.id(26364708491470550)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P99_GRAVADAS_1 := :P99_GRAVADAS;'
,p_attribute_02=>'P99_GRAVADAS'
,p_attribute_03=>'P99_GRAVADAS_1'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(26472806138310202)
,p_name=>'DA_SUBTOTAL'
,p_event_sequence=>430
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P99_SUBTOTAL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(26472999674310203)
,p_event_id=>wwv_flow_imp.id(26472806138310202)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P99_SUBTOTAL_1 :=:P99_SUBTOTAL;'
,p_attribute_02=>'P99_SUBTOTAL'
,p_attribute_03=>'P99_SUBTOTAL_1'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(26473075105310204)
,p_name=>'DA_TOTAL_IVA'
,p_event_sequence=>440
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P99_TOTAL_IVA'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(26473157181310205)
,p_event_id=>wwv_flow_imp.id(26473075105310204)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P99_TOTAL_IVA_1 := :P99_TOTAL_IVA;'
,p_attribute_02=>'P99_TOTAL_IVA'
,p_attribute_03=>'P99_TOTAL_IVA_1'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(127591735429873347)
,p_event_id=>wwv_flow_imp.id(26473075105310204)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P99_TOTAL_1 :=  TO_NUMBER(REPLACE(:P99_SUBTOTAL_1, ''.'')) + TO_NUMBER(REPLACE(:P99_TOTAL_IVA_1, ''.''));'
,p_attribute_02=>'P99_SUBTOTAL_1,P99_TOTAL_IVA_1'
,p_attribute_03=>'P99_TOTAL_1'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(26473245847310206)
,p_name=>'DA_AJUSTE_IVA'
,p_event_sequence=>450
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P99_AJUSTE_IVA'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(26473399413310207)
,p_event_id=>wwv_flow_imp.id(26473245847310206)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P99_AJUSTE_IVA_1 := :P99_AJUSTE_IVA;'
,p_attribute_02=>'P99_AJUSTE_IVA'
,p_attribute_03=>'P99_AJUSTE_IVA_1'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(26473406849310208)
,p_name=>'DA_TOTAL'
,p_event_sequence=>460
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P99_TOTAL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(26473546243310209)
,p_event_id=>wwv_flow_imp.id(26473406849310208)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'null;--:P99_TOTAL_1 := :P99_TOTAL;',
'--P99_TOTAL_1'))
,p_attribute_02=>'P99_TOTAL'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(26474142949310215)
,p_name=>'DA_BUSCA_DATOS_REGISTRO'
,p_event_sequence=>470
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P99_SEQ_ID'
,p_condition_element=>'P99_SEQ_ID'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(26474210722310216)
,p_event_id=>wwv_flow_imp.id(26474142949310215)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    SELECT  C001||'' - ''||C002,     ',
'            C001, ',
'            C003 cod_unidad_medida,                                ',
'            --C004 cod_relacion_um,                                         ',
'            TO_NUMBER(replace(C005, ''.'')) cantidad,     ',
'            TO_NUMBER(replace(C006, ''.'')) cantidad_ub,                 ',
'            TO_NUMBER(replace(C007, ''.'')) total_iva,                ',
'            TO_NUMBER(replace(C008, ''.'')) precio_unitario,                                 ',
'            C009 precio_lista,                                ',
'            TO_NUMBER(replace(C010, ''.'')) descuento,                                ',
'            TO_NUMBER(replace(C011, ''.'')) porc_recargo,                                ',
'            C012 porc_iva,                                ',
'            TO_NUMBER(replace(C013, ''.'')) recargo,                                 ',
'            TO_NUMBER(replace(C014, ''.'')) porc_descuento,                                 ',
'            TO_NUMBER(replace(C015, ''.'')) monto_total,                                ',
'            C016 nro_promo,                                ',
'            --C017 IND_OUTLET,                                ',
'            C018 ind_PRODUCTO_ARMADO,                                ',
'            --C019 orden_detalle_pedido,                ',
'            --C020 cod_grupo_art,                 ',
'            --C021 cod_moneda_base,                ',
'           -- C022 cod_origen_art,                ',
'            --C023 vmodifica_precio, ',
'            --C024 costo_promedio,  ',
'            --C025 costo_promedio_ref,  ',
'            --C026 maneja_lotes,  ',
'            C027 nro_lote,  ',
'            --C028 ind_renta,  ',
'            --C029 cod_iva,  ',
'            C030 porc_iva_ad, ',
'            --c031 ind_incremento_stngo, ',
'            C032 ind_no_stock, ',
'            C033 cod_sucursal, ',
'            --C034 ser_pedido,',
'            C035 nro_pedido,',
'            --c036 repuesto_sta   ',
'            C037 viva_ant,',
'            C038 vimporte_ant,',
'            C039 monto_gravada_10,',
'            C040 monto_gravada_5,',
'            C041 monto_exenta,',
'            c050 cantidad_original     ',
'       INTO :P99_M_COD_ARTICULO, :P99_COD_ARTICULO_AUX ,:P99_COD_UNIDAD_MEDIDA_AUX, :P99_M_CANTIDAD,:P99_CANTIDAD_UB_AUX,:P99_TOTAL_IVA_AUX,',
'            :P99_M_PRECIO_UNITARIO, :P99_PRECIO_LISTA_AUX, :P99_DESCUENTO_AUX, :P99_M_PORC_RECARGO, :P99_PORC_IVA_AUX, :P99_RECARGO_AUX, :P99_M_PORC_DESCUENTO,',
'            :P99_MONTO_TOTAL_AUX, :P99_NRO_PROMO, :P99_IND_PRODUCTO_ARMADO, :P99_NRO_LOTE_AUX, :P99_PORC_IVA_AD_AUX, :P99_IND_NO_STOCK_AUX,:P99_D_COD_SUCURSAL, :P99_NRO_PEDIDO, :P99_IVA_ANT_AUX, ',
'            :P99_IMPORTE_ANT_AUX, :P99_MONTO_GRAVADA_10_AUX, :P99_MONTO_GRAVADA_5_AUX, :P99_MONTO_EXENTA_AUX,:P99_CANTIDAD_ANTERIOR       ',
'       FROM APEX_COLLECTIONS',
'      WHERE COLLECTION_NAME = ''DETALLE_COMPROBANTE''',
'        AND SEQ_ID = :P99_SEQ_ID;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        RAISE_APPLICATION_ERROR(-20000, ''Ha ocurido un error al recuperar los datos del registro.'');',
'END;         ',
'',
''))
,p_attribute_02=>'P99_SEQ_ID'
,p_attribute_03=>'P99_NRO_PEDIDO,P99_NRO_PROMO,P99_M_COD_ARTICULO,P99_COD_ARTICULO_AUX,P99_COD_UNIDAD_MEDIDA_AUX,P99_M_CANTIDAD,P99_CANTIDAD_UB_AUX,P99_TOTAL_IVA_AUX, P99_M_PRECIO_UNITARIO,P99_DESCUENTO_AUX,P99_M_PORC_RECARGO,P99_PORC_IVA_AUX,P99_RECARGO_AUX,P99_M_POR'
||'C_DESCUENTO, P99_MONTO_TOTAL_AUX,P99_NRO_LOTE_AUX,P99_PORC_IVA_AD_AUX,P99_IND_NO_STOCK_AUX,P99_D_COD_SUCURSAL,P99_IVA_ANT_AUX,  P99_IMPORTE_ANT_AUX,P99_MONTO_GRAVADA_10_AUX, P99_MONTO_GRAVADA_5_AUX,P99_MONTO_EXENTA_AUX,P99_IND_PRODUCTO_ARMADO,P99_CAN'
||'TIDAD_ANTERIOR'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(26474406816310218)
,p_event_id=>wwv_flow_imp.id(26474142949310215)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(26473627920310210)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(26475037166310224)
,p_name=>'DA_GUARDAR_CAMBIOS'
,p_event_sequence=>480
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(26474686723310220)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(26475255733310226)
,p_event_id=>wwv_flow_imp.id(26475037166310224)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(26475150103310225)
,p_event_id=>wwv_flow_imp.id(26475037166310224)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(26473627920310210)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(26475374718310227)
,p_event_id=>wwv_flow_imp.id(26475037166310224)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(24410539880161944)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(26476344154310237)
,p_name=>'DA_VALIDA_CANTIDAD'
,p_event_sequence=>490
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P99_M_CANTIDAD'
,p_bind_type=>'bind'
,p_bind_event_type=>'focusout'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(26476439903310238)
,p_event_id=>wwv_flow_imp.id(26476344154310237)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if NVL(:P99_M_CANTIDAD,0) =0 THEN',
'	raise_application_error(-20000,''La cantidad no puede ser menor a 1'');',
'END IF;',
'DECLARE',
'    VCANTIDAD NUMBER;',
'BEGIN',
'    SELECT C005',
'      INTO VCANTIDAD',
'      FROM APEX_COLLECTIONS',
'     WHERE COLLECTION_NAME = ''DETALLE_COMPROBANTE''',
'       AND SEQ_ID = :P99_SEQ_ID;     ',
'    IF VCANTIDAD != :P99_M_CANTIDAD THEN ',
'        if :P99_M_CANTIDAD >  :P99_CANTIDAD_ANTERIOR then ',
'            raise_application_error(-20001, ''La cantidad Ingresada no debe ser mayor a la cantidad Original'');',
'        else ',
'        BEGIN',
'            VTFACTUR.valida_cantidad(:P99_COD_EMPRESA,:P99_COD_EMPRESA,:P99_COD_ARTICULO_AUX,to_date(:P99_FEC_COMPROBANTE, ''DD/MM/YYYY''),',
'            :P99_D_COD_SUCURSAL,:P99_COD_SUCURSAL,:P99_IND_NO_STOCK_AUX,:P99_NRO_LOTE_AUX,',
'            :P99_COD_ARTICULO_REL_BON_AUX ,:P99_COD_UNIDAD_MEDIDA_AUX,:P99_FACTURA_NEGATIVO,',
'            :P99_CANTIDAD_UB_AUX,:P99_M_CANTIDAD,:P99_M_CANTIDAD,:P99_CARGA_DETALLE,:P99_MULT,:P99_DIV,',
'             :P99_M_PRECIO_UNITARIO,:P99_M_PORC_DESCUENTO,:P99_DECIMALES,:P99_DESCUENTO_AUX,:P99_PORC_DESCUENTO_ANT_AUX,',
'             :P99_TIENE_BONIF_AUX,:P99_IMPORTE_BON_AUX,:P99_BAND_BONIF,:P99_VART,:P99_COD_UNIDAD_BON,:P99_VCOD_ARTICULO_BON,:P99_VCANTIDAD_BON,:P99_VCANTIDAD_ART,',
'             :P99_VCANTIDAD_MIN,:P99_PORC_RECARGO_ANT_AUX,:P99_M_PORC_RECARGO,:P99_M_PORC_RECARGO,:P99_DESCUENTO_AUX,',
'            :P99_RECARGO_AUX,:P99_PORC_RECARGO_ANT_AUX,',
'             :P99_PORC_IVA_AUX,:P99_PORC_IVA_AD_AUX,:P99_DESCUENTO, :P99_PORC_IVA,:P99_RECARGO_VAR,:P99_AJUSTE_IVA, ',
'             :P99_RECARGO, :P99_MONTO_TOTAL_AUX,:P99_TOTAL_IVA_AUX, :P99_IVA_PARCIAL,:P99_IVA_PARCIAL,:P99_IVA_ANT_AUX,',
'             :P99_IVA_ANT_AUX,:P99_SUBTOTAL_PARCIAL,:P99_SUBTOTAL_PARCIAL,:P99_IMPORTE_ANT_AUX,:P99_IMPORTE_ANT_AUX,',
'             :P99_GRAVADAS_PARCIAL,:P99_GRAVADAS_PARCIAL,:P99_EXENTAS_PARCIAL,:P99_EXENTAS_PARCIAL,:P99_PORCENTAJE_DESCUENTO,',
'             :P99_TOTAL_IVA, :P99_SUBTOTAL, :P99_GRAVADAS, :P99_EXENTAS, :P99_TOTAL, :P99_RECARGO_PORC, ',
'             :P99_MONTO_GRAVADA_10_AUX,:P99_MONTO_GRAVADA_5_AUX,:P99_MONTO_EXENTA_AUX,:P99_MULT,:P99_DIV); ',
'        EXCEPTION',
'            WHEN OTHERS THEN',
'                RAISE_APPLICATION_ERROR(-20000, ''Ha ocurrido un error al validar la cantidad ingresada. ''||sqlerrm);',
'        END;',
'',
'        BEGIN',
'            IF nvl(:P99_M_CANTIDAD,0) > 0 AND :P99_NRO_COMPROBANTE_REF is not null	and :P99_TIP_COMPROBANTE_REF=''PED'' AND :P99_COD_ARTICULO_AUX <>''ZZFASFIN''  then ',
'                vtfactur.valida_cant_facturar(:P99_COD_EMPRESA,:P99_TIP_COMPROBANTE_REF,:P99_SER_COMPROBANTE_REF,:P99_NRO_COMPROBANTE_REF,:P99_COD_ARTICULO_AUX,:P99_M_CANTIDAD,:P99_M_CANTIDAD);',
'            END IF;                                   ',
'        EXCEPTION',
'            WHEN OTHERS THEN',
'                RAISE_APPLICATION_ERROR(-20000, ''Ha ocurrido un error al validar la cantidad a facturar. ''||sqlerrm);',
'        END;',
'        end if;',
'    END IF;',
'END;        ',
'',
'',
''))
,p_attribute_02=>'P99_SEQ_ID,P99_TIP_COMPROBANTE_REF,P99_SER_COMPROBANTE_REF,P99_NRO_COMPROBANTE_REF,P99_COD_EMPRESA,P99_COD_EMPRESA,P99_COD_ARTICULO_AUX,P99_FEC_COMPROBANTE, P99_D_COD_SUCURSAL,P99_COD_SUCURSAL,P99_IND_NO_STOCK_AUX, P99_NRO_LOTE_AUX,P99_COD_ARTICULO_R'
||'EL_BON_AUX ,P99_COD_UNIDAD_MEDIDA_AUX,P99_FACTURA_NEGATIVO,P99_M_CANTIDAD, P99_CARGA_DETALLE,P99_MULT,P99_DIV,P99_M_PRECIO_UNITARIO,P99_M_PORC_DESCUENTO,P99_DECIMALES, P99_PORC_RECARGO_ANT_AUX,P99_M_PORC_RECARGO,P99_RECARGO_AUX,P99_DESCUENTO_AUX,P99_'
||'PORC_IVA_AUX,P99_PORC_IVA_AD_AUX,P99_DESCUENTO, P99_PORC_IVA, P99_RECARGO_VAR, P99_AJUSTE_IVA, P99_RECARGO,  P99_IVA_PARCIAL,P99_IVA_ANT_AUX,P99_GRAVADAS_PARCIAL,P99_SUBTOTAL_PARCIAL,P99_EXENTAS_PARCIAL,P99_IMPORTE_ANT_AUX,P99_CANTIDAD_ANTERIOR'
,p_attribute_03=>'P99_CANTIDAD_UB_AUX,P99_M_CANTIDAD,P99_IMPORTE_ANT_AUX,P99_GRAVADAS_PARCIAL,P99_EXENTAS_PARCIAL,P99_PORCENTAJE_DESCUENTO,P99_TOTAL_IVA,P99_SUBTOTAL,P99_GRAVADAS,P99_EXENTAS,P99_TOTAL,P99_RECARGO_PORC,P99_MONTO_GRAVADA_10_AUX,P99_MONTO_GRAVADA_5_AUX, '
||' P99_MONTO_EXENTA_AUX,P99_MULT,P99_DIV,P99_MONTO_TOTAL_AUX,P99_TOTAL_IVA_AUX,P99_IVA_PARCIAL,P99_IVA_ANT_AUX,P99_SUBTOTAL_PARCIAL,P99_DESCUENTO_AUX,P99_PORC_DESCUENTO_ANT_AUX,P99_TIENE_BONIF_AUX,P99_IMPORTE_BON_AUX,  P99_BAND_BONIF,P99_VART,P99_COD_U'
||'NIDAD_BON,P99_VCOD_ARTICULO_BON,P99_VCANTIDAD_BON,P99_VCANTIDAD_ART,P99_VCANTIDAD_MIN,P99_RECARGO_AUX,P99_PORC_RECARGO_ANT_AUX'
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
 p_id=>wwv_flow_imp.id(26634792694265301)
,p_event_id=>wwv_flow_imp.id(26476344154310237)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    FOR CC IN (SELECT C001,C002,C003,                                     ',
'                      C004,C005,C006,                      ',
'                      C007,C008,C009,                                     ',
'                      C010,C011,C012,                                ',
'                      C013,C014,C015,                                     ',
'                      C016,C017,C018,                                     ',
'                      C019,C020,C021,                     ',
'                      C022,C023,C024,       ',
'                      C025,C026,C027,       ',
'                      C028,C029,C030,      ',
'                      C031,C032,C033,      ',
'                      C034,C035,c036,   ',
'					  C037,-- viva_ant,',
'					  C038,-- vimporte_ant,',
'					  C039,-- monto_gravada_10,',
'					  C040,-- monto_gravada_5,',
'					  C041,-- monto_exenta',
'					  C042,--COD_ARTICULO_REL_BON		',
'					  C043, --ORDEN',
'					  C044, --TIENE_BONIF',
'					  C045, -- IMPORTE_BON',
'					  C046, --COD_aRT_PROMO',
'					  C047, --IND_PROMO',
'					  C048, --DESCRIPCION_DETALLE',
'					  C049,  --CANTIDAD_IMPRESION,',
'                      C050 -- CANTIDAD_PRINCIPAL  ',
'                FROM APEX_COLLECTIONS',
'               WHERE COLLECTION_NAME = ''DETALLE_COMPROBANTE''',
'                 AND SEQ_ID = :P99_SEQ_ID)',
'    LOOP',
'    IF NVL(:P99_M_CANTIDAD,0) >0 and    NVL(:P99_M_PRECIO_UNITARIO,0) >0 THEN',
'    ',
'        APEX_COLLECTION.UPDATE_MEMBER(P_COLLECTION_NAME => ''DETALLE_COMPROBANTE'',',
'                                       P_SEQ => :P99_SEQ_ID,P_C001 => CC.C001,P_C002 => CC.C002,',
'                                       P_C003 => :P99_COD_UNIDAD_MEDIDA_AUX, P_C004 => CC.C004, P_C005 => :P99_M_CANTIDAD,  ',
'                                       P_C006 => :P99_CANTIDAD_UB_AUX,  P_C007 => :P99_TOTAL_IVA_AUX, P_C008 => :P99_M_PRECIO_UNITARIO,  ',
'                                       P_C009 => :P99_PRECIO_LISTA_AUX, P_C010 => :P99_DESCUENTO_AUX, P_C011 => :P99_M_PORC_RECARGO, ',
'                                       P_C012 => :P99_PORC_IVA_AUX, P_C013 => :P99_RECARGO_AUX,  P_C014 => :P99_M_PORC_DESCUENTO,  ',
'                                       P_C015 => :P99_MONTO_TOTAL_AUX, P_C016 => :P99_NRO_PROMO,      P_C017 => CC.C017,  ',
'                                       P_C018 => :P99_IND_PRODUCTO_ARMADO, P_C019 => CC.C019, P_C020 => CC.C020, ',
'                                       P_C021 => CC.C021, P_C022 => CC.C022, P_C023 => CC.C023,',
'                                       P_C024 => CC.C024, P_C025 => CC.C025, P_C026 => CC.C026, ',
'                                       P_C027 => :P99_NRO_LOTE_AUX, P_C028 => CC.C028, P_C029 => CC.C029, ',
'                                       P_C030 => :P99_PORC_IVA_AD_AUX,P_C031 => CC.C031,P_C032 => :P99_IND_NO_STOCK_AUX,',
'                                       P_C033 => :P99_D_COD_SUCURSAL ,P_C034 => CC.C034,P_C035 => :P99_NRO_PEDIDO,P_C036 => CC.C036,',
'                                       P_C037 => :P99_IVA_ANT_AUX, P_C038 =>:P99_IMPORTE_ANT_AUX, P_C039 => :P99_MONTO_GRAVADA_10_AUX, ',
'                                       P_C040 => :P99_MONTO_GRAVADA_5_AUX, P_C041 => :P99_MONTO_EXENTA_AUX,',
'                                       P_C042 => CC.C042, P_C043 => CC.C043, P_C044 => CC.C044, P_C045 => CC.C045,',
'                                       P_C046 => CC.C046, P_C047 => CC.C047, P_C048 => :P99_DESCRIPCION_DETALLE, P_C049 => CC.C049, P_C050 => CC.C050); ',
'                                       ',
'ELSE ',
' RAISE_APPLICATION_ERROR(-20000, ''La cantidad debe ser mayor a 0 '');',
'END if;',
' ',
'    END LOOP;',
'EXCEPTION',
'    WHEN OTHERS THEN    ',
'        RAISE_APPLICATION_ERROR(-20000, ''Ha ocurrido un error al guardar los cambios del registro. ''||sqlerrm);',
'END;',
''))
,p_attribute_02=>'P99_DESCRIPCION_DETALLE,P99_IND_PRODUCTO_ARMADO,P99_NRO_PEDIDO,P99_PRECIO_LISTA_AUX,P99_NRO_PROMO,P99_SEQ_ID,P99_M_COD_ARTICULO,P99_COD_ARTICULO_AUX,P99_COD_UNIDAD_MEDIDA_AUX,P99_M_CANTIDAD,P99_CANTIDAD_UB_AUX,P99_TOTAL_IVA_AUX, P99_M_PRECIO_UNITARIO'
||',P99_DESCUENTO_AUX,P99_M_PORC_RECARGO,P99_PORC_IVA_AUX,P99_RECARGO_AUX,P99_M_PORC_DESCUENTO, P99_MONTO_TOTAL_AUX,P99_NRO_LOTE_AUX,P99_PORC_IVA_AD_AUX,P99_IND_NO_STOCK_AUX,P99_D_COD_SUCURSAL,P99_IVA_ANT_AUX,  P99_IMPORTE_ANT_AUX,P99_MONTO_GRAVADA_10_A'
||'UX,P99_MONTO_GRAVADA_5_AUX,P99_MONTO_EXENTA_AUX'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(26634890320265302)
,p_event_id=>wwv_flow_imp.id(26476344154310237)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(24410539880161944)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(29131360621274628)
,p_name=>'DA_VALIDA_CANTIDAD_1'
,p_event_sequence=>500
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P99_A_CANTIDAD'
,p_bind_type=>'bind'
,p_bind_event_type=>'focusout'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(29131425850274629)
,p_event_id=>wwv_flow_imp.id(29131360621274628)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    VTFACTUR.valida_cantidad_a(PI_COD_EMPRESA          => :P99_COD_EMPRESA,',
'                               PI_D_COD_EMPRESA        => :P99_COD_EMPRESA,',
'                               PI_COD_ARTICULO         => :P99_A_COD_ARTICULO,',
'                               PI_FEC_COMPROBANTE      => :P99_FEC_COMPROBANTE,',
'                               PI_D_COD_SUCURSAL       => :P99_D_COD_SUCURSAL,',
'                               PI_C_COD_SUCURSAL       => :P99_COD_SUCURSAL,',
'                               PI_IND_NO_STOCK         => :P99_IND_NO_STOCK_AUX,',
'                               PI_NRO_LOTE             => :P99_A_NRO_LOTE,',
'                               PI_COD_ARTICULO_REL_BON => :P99_COD_ARTICULO_REL_BON_AUX,',
'                               PI_COD_UNIDAD_MEDIDA    => :P99_COD_UNIDAD_MEDIDA_AUX,',
'                               PI_FACTURA_NEGATIVO     => :P99_FACTURA_NEGATIVO,',
'                               PO_CANTIDAD_UB          => :P99_CANTIDAD_UB_AUX,',
'                               PI_CANTIDAD             => :P99_A_CANTIDAD,',
'                               PO_CANTIDAD             => :P99_A_CANTIDAD,',
'                               PI_CARGA_DETALLE        => :P99_CARGA_DETALLE,',
'                               PI_MULT                 => :P99_MULT,',
'                               PI_DIV                  => :P99_DIV,',
'                               PO_TIENE_BONIF          => :P99_TIENE_BONIF_AUX, ',
'                               PO_IMPORTE_BON          => :P99_IMPORTE_BON_AUX, ',
'                               PO_BAND_BONIF           => :P99_BAND_BONIF, ',
'                               PO_VART                 => :P99_VART,',
'                               PO_COD_UNIDAD_BON       => :P99_COD_UNIDAD_BON,',
'                               PO_VCOD_ARTICULO_BON    => :P99_VCOD_ARTICULO_BON,',
'                               PO_VCANTIDAD_BON        => :P99_VCANTIDAD_BON,',
'                               PO_VCANTIDAD_ART        => :P99_VCANTIDAD_ART,',
'                               PO_VCANTIDAD_MIN        => :P99_VCANTIDAD_MIN); ',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        RAISE_APPLICATION_ERROR(-20000, ''Ha ocurrido un error al validar la cantidad ingresada. ''||sqlerrm);',
'END;',
'',
'BEGIN',
'    IF :P99_A_CANTIDAD > 0 AND :P99_NRO_COMPROBANTE_REF is not null	and :P99_TIP_COMPROBANTE_REF=''PED'' AND :P99_A_COD_ARTICULO <>''ZZFASFIN''  then ',
'        vtfactur.valida_cant_facturar(:P99_COD_EMPRESA,:P99_TIP_COMPROBANTE_REF,:P99_SER_COMPROBANTE_REF,:P99_NRO_COMPROBANTE_REF,:P99_A_COD_ARTICULO,:P99_A_CANTIDAD,:P99_A_CANTIDAD);',
'    END IF;                                   ',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        RAISE_APPLICATION_ERROR(-20000, ''Ha ocurrido un error al validar la cantidad a facturar. ''||sqlerrm);',
'END;',
'   '))
,p_attribute_02=>'P99_COD_EMPRESA,P99_A_COD_ARTICULO,P99_FEC_COMPROBANTE,P99_D_COD_SUCURSAL,P99_COD_SUCURSAL,P99_IND_NO_STOCK_AUX, P99_A_NRO_LOTE,P99_COD_ARTICULO_REL_BON_AUX,P99_COD_UNIDAD_MEDIDA_AUX,P99_FACTURA_NEGATIVO, P99_A_CANTIDAD,P99_CARGA_DETALLE,99_MULT,P99_'
||'DIV,P99_NRO_COMPROBANTE_REF,P99_TIP_COMPROBANTE_REF,P99_SER_COMPROBANTE_REF'
,p_attribute_03=>'P99_CANTIDAD_UB_AUX,P99_A_CANTIDAD,P99_TIENE_BONIF_AUX,P99_IMPORTE_BON_AUX,P99_BAND_BONIF,P99_VART,P99_COD_UNIDAD_BON,P99_VCOD_ARTICULO_BON,P99_VCANTIDAD_BON,P99_VCANTIDAD_ART,P99_VCANTIDAD_MIN'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(26599510595744716)
,p_name=>'DA_PORC_DESCUENTO'
,p_event_sequence=>510
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P99_M_PORC_DESCUENTO'
,p_bind_type=>'bind'
,p_bind_event_type=>'focusout'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(26599653442744717)
,p_event_id=>wwv_flow_imp.id(26599510595744716)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    VMENSAJE VARCHAR2(100);',
'BEGIN    ',
'    :P99_AUX_MSJ := NULL; ',
'    BEGIN',
'         select NVL(IND_NO_DESCUENTO,''N'')',
'           into :P99_IND_NO_DESCUENTO_AUX',
'           from st_articulos a',
'          where a.cod_empresa = :P99_COD_EMPRESA ',
'            and a.cod_articulo = :P99_COD_ARTICULO_AUX;',
'    EXCEPTION',
'        when others then ',
'            :P99_IND_NO_DESCUENTO_AUX:=''N''; ',
'    END;		',
'        						',
'    IF NVL(:P99_IND_NO_DESCUENTO_AUX,''N'')=''S'' and nvl(:P99_M_PORC_DESCUENTO,0) < 99 and  nvl(:P99_M_PORC_DESCUENTO,0) >0 THEN',
'    	    :P99_AUX_MSJ := ''El producto no puede tener descuento .'';',
'    	IF NVL(:P99_IND_NO_DESCUENTO_AUX,''N'')=''S''  THEN',
'    	    :P99_M_PORC_DESCUENTO := 0;',
'    	END IF;',
'            --raise_application_error(-20000, VMENSAJE);',
'    END IF;',
'',
'    IF :P99_ESTADO_CLIENTE in (''C'',''B'') AND :P99_COD_SECTOR IN(''4.1'',''4'') THEN',
'     	--mensaje_Ex(''El CLIENTE no puede tener descuento '',2);',
'     	--	:P99_M_PORC_DESCUENTO:=0;	',
'        null;',
'    END IF;',
'     ',
'    IF nvl(:P99_M_PORC_DESCUENTO,0) >100 then 	',
'     	:P99_AUX_MSJ := ''El producto no puede tener un descuento superior al 100% .'';',
'    END IF;',
'END;'))
,p_attribute_02=>'P99_COD_EMPRESA,P99_COD_ARTICULO_AUX,P99_M_PORC_DESCUENTO,P99_ESTADO_CLIENTE,P99_COD_SECTOR'
,p_attribute_03=>'P99_AUX_MSJ,P99_IND_NO_DESCUENTO_AUX,P99_M_PORC_DESCUENTO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(26599806030744719)
,p_event_id=>wwv_flow_imp.id(26599510595744716)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P99_AUX_MSJ.'
,p_attribute_02=>'Error'
,p_attribute_03=>'warning'
,p_attribute_04=>'fa-warning'
,p_attribute_06=>'Aceptar'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P99_AUX_MSJ'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(26601298721744733)
,p_event_id=>wwv_flow_imp.id(26599510595744716)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    vtfactur.valida_dscto_max(:P99_COD_EMPRESA,:P99_COD_CLIENTE,:P99_COD_ARTICULO_AUX,:P99_DESCUENTO_MAXIMO_AUX);',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        NULL;',
'END;                         ',
'BEGIN',
'  IF :P99_M_PORC_DESCUENTO < 0 THEN',
'     raise_application_error(-20000,''El porcentaje de descuento no puede ser negativo.'');',
'  END IF;',
'  IF :P99_SUPERA_DESCUENTO = ''N'' THEN  ',
'    IF :P99_COD_ARTICULO_REL_BON_AUX IS NULL AND :P99_M_PORC_DESCUENTO > nvl( :P99_DESCUENTO_MAXIMO_AUX, 0 ) THEN',
unistr('       raise_application_error(-20000,''El porcentaje de descuento m\00E1ximo es '' || to_char( nvl( :P99_DESCUENTO_MAXIMO_AUX, 0 ) ));'),
'    END IF;',
'  END IF;',
'  vtfactur.calcula_descuento(PI_CANTIDAD            => to_number(:P99_M_CANTIDAD), ',
'                             PI_PRECIO_UNITARIO     => to_number(:P99_M_PRECIO_UNITARIO),',
'                             PI_PORC_DESCUENTO      => to_number(:P99_M_PORC_DESCUENTO),',
'                             PI_DECIMALES           => to_number(:P99_DECIMALES),',
'                             PO_DESCUENTO           => :P99_DESCUENTO_AUX,',
'                             PO_PORC_DESCUENTO_ANT  => :P99_PORC_DESCUENTO_ANT_AUX); ',
'  vtfactur.CALCULOS (PI_PORC_IVA => to_number(:P99_PORC_IVA_AUX),',
'                    PI_PORC_IVA_AD => to_number(:P99_PORC_IVA_AD_AUX), ',
'                    PI_DECIMALES => to_number(:P99_DECIMALES),',
'                    PI_C_DESCUENTO => to_number(:P99_DESCUENTO), ',
'                    PI_PRECIO_UNITARIO => to_number(:P99_M_PRECIO_UNITARIO),',
'                    PI_CANTIDAD => to_number(:P99_M_CANTIDAD),',
'                    PI_PORC_DESCUENTO => to_number(:P99_M_PORC_DESCUENTO), ',
'                    PI_PORC_RECARGO => to_number(:P99_M_PORC_RECARGO), ',
'                    PI_DESCUENTO => to_number(:P99_DESCUENTO_AUX), ',
'                    PI_RECARGO => to_number(:P99_RECARGO_AUX), ',
'                    PI_V_PORC_IVA => to_number(:P99_PORC_IVA), ',
'                    PI_COD_ARTICULO => :P99_COD_ARTICULO_AUX,   ',
'                    PI_V_RECARGO => :P99_RECARGO_VAR, ',
'                    PI_AJUSTE_IVA => to_number(:P99_AJUSTE_IVA), ',
'                    PI_C_RECARGO => TO_NUMBER(:P99_RECARGO), ',
'                    PO_CANTIDAD_UB => :P99_CANTIDAD_UB_AUX,  ',
'                    PO_MONTO_TOTAL => :P99_MONTO_TOTAL_AUX,',
'                    PO_D_TOTAL_IVA => :P99_TOTAL_IVA_AUX,',
'                    PI_IVA_PARCIAL => to_number(:P99_IVA_PARCIAL), ',
'                    PO_IVA_PARCIAL => :P99_IVA_PARCIAL,',
'                    PI_IVA_ANT => to_number(:P99_IVA_ANT_AUX),',
'                    PO_IVA_ANT => :P99_IVA_ANT_AUX,',
'                    PI_SUBTOTAL_PARCIAL => to_number(:P99_SUBTOTAL_PARCIAL),',
'                    PO_SUBTOTAL_PARCIAL => :P99_SUBTOTAL_PARCIAL,',
'                    PI_IMPORTE_ANT => to_number(:P99_IMPORTE_ANT_AUX),',
'                    PO_IMPORTE_ANT => :P99_IMPORTE_ANT_AUX,',
'                    PI_GRAVADAS_PARCIAL => to_number(:P99_GRAVADAS_PARCIAL),',
'                    PO_GRAVADAS_PARCIAL => :P99_GRAVADAS_PARCIAL,',
'                    PI_EXENTAS_PARCIAL => to_number(:P99_EXENTAS_PARCIAL),',
'                    PO_EXENTAS_PARCIAL => :P99_EXENTAS_PARCIAL,    ',
'                    PO_PORCENTAJE_DESCUENTO => :P99_PORCENTAJE_DESCUENTO,',
'                    PO_TOTAL_IVA => :P99_TOTAL_IVA, ',
'                    PO_SUBTOTAL => :P99_SUBTOTAL, ',
'                    PO_GRAVADAS => :P99_GRAVADAS, ',
'                    PO_EXENTAS => :P99_EXENTAS, ',
'                    PO_TOTAL => :P99_TOTAL, ',
'                    PO_RECARGO_PORC => :P99_RECARGO_PORC, ',
'                    PO_MONTO_GRAVADA_10 => :P99_MONTO_GRAVADA_10_AUX, ',
'                    PO_MONTO_GRAVADA_5 => :P99_MONTO_GRAVADA_5_AUX, ',
'                    PO_MONTO_EXENTA => :P99_MONTO_EXENTA_AUX,',
'                    PO_MULT => :P99_MULT,',
'                    PO_DIV => :P99_DIV); ',
'END;',
'',
''))
,p_attribute_02=>'P99_DESCUENTO_AUX,P99_COD_EMPRESA,P99_COD_CLIENTE,P99_COD_ARTICULO_AUX,P99_SUPERA_DESCUENTO,P99_M_PORC_DESCUENTO,P99_COD_ARTICULO_REL_BON_AUX, P99_M_CANTIDAD,P99_M_PRECIO_UNITARIO,P99_DECIMALES,P99_PORC_IVA_AUX,P99_PORC_IVA_AD_AUX,P99_DESCUENTO,P99_M'
||'_PORC_RECARGO,P99_RECARGO_AUX,P99_PORC_IVA,P99_COD_ARTICULO_AUX,P99_RECARGO_VAR,P99_AJUSTE_IVA,P99_RECARGO,P99_IVA_PARCIAL,P99_IVA_ANT_AUX,P99_SUBTOTAL_PARCIAL,P99_IMPORTE_ANT_AUX,P99_GRAVADAS_PARCIAL,P99_EXENTAS_PARCIAL'
,p_attribute_03=>'P99_DESCUENTO_MAXIMO_AUX,P99_DESCUENTO_AUX,P99_PORC_DESCUENTO_ANT_AUX,P99_CANTIDAD_UB_AUX,P99_MONTO_TOTAL_AUX,P99_TOTAL_IVA_AUX,P99_IVA_PARCIAL,P99_IVA_ANT_AUX, P99_SUBTOTAL_PARCIAL,P99_IMPORTE_ANT_AUX,P99_GRAVADAS_PARCIAL,P99_EXENTAS_PARCIAL, P99_PO'
||'RCENTAJE_DESCUENTO,P99_TOTAL_IVA,P99_SUBTOTAL,P99_GRAVADAS,P99_EXENTAS,P99_TOTAL,P99_RECARGO_PORC, P99_MONTO_GRAVADA_10_AUX,P99_MONTO_GRAVADA_5_AUX,P99_MONTO_EXENTA_AUX,P99_MULT,P99_DIV'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P99_AUX_MSJ'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(26601449839744735)
,p_event_id=>wwv_flow_imp.id(26599510595744716)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    FOR CC IN (SELECT C001,C002,C003,                                     ',
'                      C004,C005,C006,                      ',
'                      C007,C008,C009,                                     ',
'                      C010,C011,C012,                                ',
'                      C013,C014,C015,                                     ',
'                      C016,C017,C018,                                     ',
'                      C019,C020,C021,                     ',
'                      C022,C023,C024,       ',
'                      C025,C026,C027,       ',
'                      C028,C029,C030,      ',
'                      C031,C032,C033,      ',
'                      C034,C035,c036,   ',
'					  C037,-- viva_ant,',
'					  C038,-- vimporte_ant,',
'					  C039,-- monto_gravada_10,',
'					  C040,-- monto_gravada_5,',
'					  C041,-- monto_exenta',
'					  C042,--COD_ARTICULO_REL_BON		',
'					  C043, --ORDEN',
'					  C044, --TIENE_BONIF',
'					  C045, -- IMPORTE_BON',
'					  C046, --COD_aRT_PROMO',
'					  C047, --IND_PROMO',
'					  C048, --DESCRIPCION_DETALLE',
'					  C049  --CANTIDAD_IMPRESION      ',
'                FROM APEX_COLLECTIONS',
'               WHERE COLLECTION_NAME = ''DETALLE_COMPROBANTE''',
'                 AND SEQ_ID = :P99_SEQ_ID)',
'    LOOP',
'     IF NVL(:P99_M_CANTIDAD,0) >0 and    NVL(:P99_M_PRECIO_UNITARIO,0) >0 THEN',
'        APEX_COLLECTION.UPDATE_MEMBER(P_COLLECTION_NAME => ''DETALLE_COMPROBANTE'',',
'                                       P_SEQ => :P99_SEQ_ID,P_C001 => CC.C001,P_C002 => CC.C002,',
'                                       P_C003 => :P99_COD_UNIDAD_MEDIDA_AUX, P_C004 => CC.C004, P_C005 => :P99_M_CANTIDAD,  ',
'                                       P_C006 => :P99_CANTIDAD_UB_AUX,  P_C007 => :P99_TOTAL_IVA_AUX, P_C008 => :P99_M_PRECIO_UNITARIO,  ',
'                                       P_C009 => :P99_PRECIO_LISTA_AUX, P_C010 => :P99_DESCUENTO_AUX, P_C011 => :P99_M_PORC_RECARGO, ',
'                                       P_C012 => :P99_PORC_IVA_AUX, P_C013 => :P99_RECARGO_AUX,  P_C014 => :P99_M_PORC_DESCUENTO,  ',
'                                       P_C015 => :P99_MONTO_TOTAL_AUX, P_C016 => :P99_NRO_PROMO,      P_C017 => CC.C017,  ',
'                                       P_C018 => :P99_IND_PRODUCTO_ARMADO, P_C019 => CC.C019, P_C020 => CC.C020, ',
'                                       P_C021 => CC.C021, P_C022 => CC.C022, P_C023 => CC.C023,',
'                                       P_C024 => CC.C024, P_C025 => CC.C025, P_C026 => CC.C026, ',
'                                       P_C027 => :P99_NRO_LOTE_AUX, P_C028 => CC.C028, P_C029 => CC.C029, ',
'                                       P_C030 => :P99_PORC_IVA_AD_AUX,P_C031 => CC.C031,P_C032 => :P99_IND_NO_STOCK_AUX,',
'                                       P_C033 => :P99_D_COD_SUCURSAL ,P_C034 => CC.C034,P_C035 => :P99_NRO_PEDIDO,P_C036 => CC.C036,',
'                                       P_C037 => :P99_IVA_ANT_AUX, P_C038 =>:P99_IMPORTE_ANT_AUX, P_C039 => :P99_MONTO_GRAVADA_10_AUX, ',
'                                       P_C040 => :P99_MONTO_GRAVADA_5_AUX, P_C041 => :P99_MONTO_EXENTA_AUX,',
'                                       P_C042 => CC.C042, P_C043 => CC.C043, P_C044 => CC.C044, P_C045 => CC.C045,',
'                                       P_C046 => CC.C046, P_C047 => CC.C047, P_C048 => :P99_DESCRIPCION_DETALLE, P_C049 => CC.C049); ',
'else ',
' RAISE_APPLICATION_ERROR(-20000, ''La cantidad debe ser mayor a 0. ''||sqlerrm);',
'end if;',
'    END LOOP;',
'EXCEPTION',
'    WHEN OTHERS THEN    ',
'        RAISE_APPLICATION_ERROR(-20000, ''Ha ocurrido un error al guardar los cambios del registro. ''||sqlerrm);',
'END;'))
,p_attribute_02=>'P99_DESCRIPCION_DETALLE,P99_IND_PRODUCTO_ARMADO,P99_NRO_PEDIDO,P99_PRECIO_LISTA_AUX,P99_NRO_PROMO,P99_SEQ_ID,P99_M_COD_ARTICULO,P99_COD_ARTICULO_AUX,P99_COD_UNIDAD_MEDIDA_AUX,P99_M_CANTIDAD,P99_CANTIDAD_UB_AUX,P99_TOTAL_IVA_AUX, P99_M_PRECIO_UNITARIO'
||',P99_DESCUENTO_AUX,P99_M_PORC_RECARGO,P99_PORC_IVA_AUX,P99_RECARGO_AUX,P99_M_PORC_DESCUENTO, P99_MONTO_TOTAL_AUX,P99_NRO_LOTE_AUX,P99_PORC_IVA_AD_AUX,P99_IND_NO_STOCK_AUX,P99_D_COD_SUCURSAL,P99_IVA_ANT_AUX,  P99_IMPORTE_ANT_AUX,P99_MONTO_GRAVADA_10_A'
||'UX,P99_MONTO_GRAVADA_5_AUX,P99_MONTO_EXENTA_AUX'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P99_AUX_MSJ'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(26602007864744741)
,p_event_id=>wwv_flow_imp.id(26599510595744716)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(24410539880161944)
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P99_AUX_MSJ'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(29129958809274614)
,p_name=>'DA_PORC_DESCUENTO_1'
,p_event_sequence=>520
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P99_A_PORC_DESCUENTO'
,p_bind_type=>'bind'
,p_bind_event_type=>'focusout'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(29130016206274615)
,p_event_id=>wwv_flow_imp.id(29129958809274614)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'--WHEN-VALIDATE-ITEM',
'DECLARE',
'    VMENSAJE VARCHAR2(100);',
'BEGIN    ',
'    :P99_AUX_MSJ := NULL; ',
'    BEGIN',
'         select NVL(IND_NO_DESCUENTO,''N'')',
'           into :P99_IND_NO_DESCUENTO_AUX',
'           from st_articulos a',
'          where a.cod_empresa = :P99_COD_EMPRESA ',
'            and a.cod_articulo = :P99_A_COD_ARTICULO;',
'    EXCEPTION',
'        when others then ',
'            :P99_IND_NO_DESCUENTO_AUX:=''N''; ',
'    END;		',
'        						',
'    IF NVL(:P99_IND_NO_DESCUENTO_AUX,''N'')=''S'' and nvl(:P99_A_PORC_DESCUENTO,0) < 99 and  nvl(:P99_A_PORC_DESCUENTO,0) >0 THEN',
'    	    :P99_AUX_MSJ := ''El producto no puede tener descuento .'';',
'    	IF NVL(:P99_IND_NO_DESCUENTO_AUX,''N'')=''S''  THEN',
'    	    :P99_A_PORC_DESCUENTO := 0;',
'    	END IF;',
'            --raise_application_error(-20000, VMENSAJE);',
'    END IF;',
'',
'    IF :P99_ESTADO_CLIENTE in (''C'',''B'') AND :P99_COD_SECTOR IN(''4.1'',''4'') THEN',
'     	--mensaje_Ex(''El CLIENTE no puede tener descuento '',2);',
'     	--	:P99_M_PORC_DESCUENTO:=0;	',
'        null;',
'    END IF;',
'     ',
'    IF nvl(:P99_A_PORC_DESCUENTO,0) >100 then 	',
'     	:P99_AUX_MSJ := ''El producto no puede tener un descuento superior al 100% .'';',
'        :P99_A_PORC_DESCUENTO := 0;',
'    END IF;',
'END;',
''))
,p_attribute_02=>'P99_COD_EMPRESA,P99_A_COD_ARTICULO,P99_A_PORC_DESCUENTO,P99_ESTADO_CLIENTE,P99_COD_SECTOR'
,p_attribute_03=>'P99_AUX_MSJ,P99_IND_NO_DESCUENTO_AUX,P99_A_PORC_DESCUENTO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(29130154829274616)
,p_event_id=>wwv_flow_imp.id(29129958809274614)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P99_AUX_MSJ.'
,p_attribute_02=>'Error'
,p_attribute_03=>'warning'
,p_attribute_04=>'fa-warning'
,p_attribute_06=>'Aceptar'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P99_AUX_MSJ'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(29130224596274617)
,p_event_id=>wwv_flow_imp.id(29129958809274614)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'--POST-TEXT',
'BEGIN',
'    vtfactur.valida_dscto_max(:P99_COD_EMPRESA,:P99_COD_CLIENTE,:P99_A_COD_ARTICULO,:P99_DESCUENTO_MAXIMO_AUX);',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        NULL;',
'END;                         ',
'BEGIN',
'  IF :P99_A_PORC_DESCUENTO < 0 THEN',
'     :P99_A_PORC_DESCUENTO := 0;',
'     raise_application_error(-20000,''El porcentaje de descuento no puede ser negativo.'');',
'  END IF;',
'  IF :P99_SUPERA_DESCUENTO = ''N'' THEN  ',
'    IF :P99_COD_ARTICULO_REL_BON_AUX IS NULL AND :P99_A_PORC_DESCUENTO > nvl( :P99_DESCUENTO_MAXIMO_AUX, 0 ) THEN',
'        :P99_A_PORC_DESCUENTO := 0;',
unistr('       raise_application_error(-20000,''El porcentaje de descuento m\00E1ximo es '' || to_char( nvl( :P99_DESCUENTO_MAXIMO_AUX, 0 ) ));'),
'    END IF;',
'  END IF;',
'END;'))
,p_attribute_02=>'P99_COD_EMPRESA,P99_COD_CLIENTE,P99_A_COD_ARTICULO,P99_A_PORC_DESCUENTO,P99_SUPERA_DESCUENTO,P99_COD_ARTICULO_REL_BON_AUX'
,p_attribute_03=>'P99_DESCUENTO_MAXIMO_AUX,P99_A_PORC_DESCUENTO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P99_AUX_MSJ'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(26600395940744724)
,p_name=>'DA_NRO_PROMO'
,p_event_sequence=>530
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P99_M_NRO_PROMO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(26600466388744725)
,p_event_id=>wwv_flow_imp.id(26600395940744724)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P99_COD_ART_PROMO_AUX := :P99_COD_ART_AUX;'
,p_attribute_02=>'P99_COD_ART_AUX'
,p_attribute_03=>'P99_COD_ART_PROMO_AUX'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(29129525902274610)
,p_name=>'DA_A_NRO_PROMO'
,p_event_sequence=>540
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P99_A_NRO_PROMO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(29129678552274611)
,p_event_id=>wwv_flow_imp.id(29129525902274610)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P99_COD_ART_PROMO_AUX := :P99_COD_ART_AUX;'
,p_attribute_02=>'P99_COD_ART_AUX'
,p_attribute_03=>'P99_COD_ART_PROMO_AUX'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(26600709669744728)
,p_name=>'DA_NRO_PROMO1'
,p_event_sequence=>550
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P99_M_PORC_DESCUENTO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(26600818544744729)
,p_event_id=>wwv_flow_imp.id(26600709669744728)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'	vexiste varchar2(1) :=''N'';',
'begin	',
'--MENSAJE_EX(''enTER'');	',
'--------------promos-----------------------',
'    :P99_AUX_MUESTRA_PROMO := 2;',
'    IF ((:P99_M_PORC_DESCUENTO >= 99.90 and :P99_M_PORC_DESCUENTO <= 99.99) or (:P99_M_PORC_DESCUENTO = 1)) and :P99_NRO_PROMO is  null then',
'    	begin',
'    		select ''S'' ',
'    		  into vexiste',
'    		  from st_promocion p',
'    		 where p.cod_empresa=:P99_COD_EMPRESA',
'    	       and p.cod_art_promo=:P99_COD_ARTICULO_AUX',
'    		   and rownum=''1'';',
'    	exception',
'    		when others then',
'    	  	vexiste:=''N'';',
'    	end;	',
'    		if vexiste=''S'' then',
'    			:P99_AUX_MUESTRA_PROMO := 1;',
'    		else',
'    			:P99_AUX_MUESTRA_PROMO := 2;',
'    		end if;	',
'    else',
'    	NULL;--ENTER;',
'    end if;	',
'end;',
''))
,p_attribute_02=>'P99_M_PORC_DESCUENTO,P99_NRO_PROMO,P99_COD_EMPRESA,P99_COD_ARTICULO_AUX'
,p_attribute_03=>'P99_AUX_MUESTRA_PROMO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(29129703495274612)
,p_name=>'DA_A_NRO_PROMO1'
,p_event_sequence=>560
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P99_A_PORC_DESCUENTO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(29129804635274613)
,p_event_id=>wwv_flow_imp.id(29129703495274612)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'--KEY-ENTER/KEY-DOWN',
'declare',
'	vexiste varchar2(1) :=''N'';',
'begin	',
'--MENSAJE_EX(''enTER'');	',
'--------------promos-----------------------',
'    :P99_AUX_MUESTRA_PROMO := 2;',
'    IF ((:P99_A_PORC_DESCUENTO >= 99.90 and :P99_A_PORC_DESCUENTO <= 99.99) or (:P99_A_PORC_DESCUENTO = 1)) and :P99_A_NRO_PROMO is  null then',
'    	begin',
'    		select ''S'' ',
'    		  into vexiste',
'    		  from st_promocion p',
'    		 where p.cod_empresa=:P99_COD_EMPRESA',
'    	       and p.cod_art_promo=:P99_A_COD_ARTICULO',
'    		   and rownum=''1'';',
'    	exception',
'    		when others then',
'    	  	vexiste:=''N'';',
'    	end;	',
'    		if vexiste=''S'' then',
'    			:P99_AUX_MUESTRA_PROMO_1 := 1;',
'    		else',
'    			:P99_AUX_MUESTRA_PROMO_1 := 2;',
'    		end if;	',
'    else',
'    	NULL;--ENTER;',
'    end if;	',
'end;',
''))
,p_attribute_02=>'P99_A_PORC_DESCUENTO,P99_A_NRO_PROMO,P99_COD_EMPRESA,P99_A_COD_ARTICULO'
,p_attribute_03=>'P99_AUX_MUESTRA_PROMO_1'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(26600953480744730)
,p_name=>'DA_MUESTRA_PROMO'
,p_event_sequence=>570
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P99_AUX_MUESTRA_PROMO'
,p_condition_element=>'P99_AUX_MUESTRA_PROMO'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'1'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(26601059190744731)
,p_event_id=>wwv_flow_imp.id(26600953480744730)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P99_M_NRO_PROMO'
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
 p_id=>wwv_flow_imp.id(26601155880744732)
,p_event_id=>wwv_flow_imp.id(26600953480744730)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P99_M_NRO_PROMO'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(29129180625274606)
,p_name=>'DA_MUESTRA_PROMO_1'
,p_event_sequence=>580
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P99_AUX_MUESTRA_PROMO_1'
,p_condition_element=>'P99_AUX_MUESTRA_PROMO_1'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'1'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(29129239275274607)
,p_event_id=>wwv_flow_imp.id(29129180625274606)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P99_A_NRO_PROMO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(29129320935274608)
,p_event_id=>wwv_flow_imp.id(29129180625274606)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P99_A_NRO_PROMO'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(26601501539744736)
,p_name=>'DA_PRECIO_UNITARIO'
,p_event_sequence=>590
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P99_M_PRECIO_UNITARIO'
,p_bind_type=>'bind'
,p_bind_event_type=>'focusout'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(26601674063744737)
,p_event_id=>wwv_flow_imp.id(26601501539744736)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    VPRECIO NUMBER;',
'BEGIN',
'    SELECT C008',
'      INTO VPRECIO',
'      FROM APEX_COLLECTIONS',
'     WHERE COLLECTION_NAME = ''DETALLE_COMPROBANTE''',
'       AND SEQ_ID = :P99_SEQ_ID;    ',
'    IF VPRECIO != :P99_M_PRECIO_UNITARIO THEN',
'--IF NVL(:P99_CARGA_PRECIOS,''N'') = ''S'' THEN',
'        DECLARE',
'            vprecio NUMBER(18,3);',
'        BEGIN',
'            IF nvl(TO_NUMBER(:P99_M_PRECIO_UNITARIO),0) < 0 THEN',
'                null;',
'            ELSIF nvl(TO_NUMBER(:P99_M_PRECIO_UNITARIO),0) = 0 THEN',
'                raise_application_error(-20000,''El precio unitario es 0 (cero)'');',
'            END IF;',
'            BEGIN',
'                IF :P99_MODIFICA_PRECIOS <> ''N'' THEN',
'                    IF nvl( TO_NUMBER(:P99_VARIACION_MENOS),0 ) > 0 and  nvl( TO_NUMBER(:P99_PRECIO_LISTA_AUX), 0 ) > 0 THEN',
'                        IF round( TO_NUMBER(:P99_PRECIO_LISTA_AUX) - ( TO_NUMBER(:P99_PRECIO_LISTA_AUX) * TO_NUMBER(:P99_VARIACION_MENOS) / 100 ),TO_NUMBER(:P99_DECIMALES)) > TO_NUMBER(:P99_M_PRECIO_UNITARIO) THEN',
unistr('                           raise_application_error(-20000,''La variaci\00F3n de Precio en menos supera al permitido.'');'),
'                        END IF;',
'                    END IF;',
'                    IF nvl( TO_NUMBER(:P99_VARIACION_MAS),0 ) > 0 and  nvl( TO_NUMBER(:P99_PRECIO_LISTA_AUX), 0 ) > 0 THEN',
'                        IF round( TO_NUMBER(:P99_PRECIO_LISTA_AUX) + ( TO_NUMBER(:P99_PRECIO_LISTA_AUX) * TO_NUMBER(:P99_VARIACION_MAS) / 100 ),TO_NUMBER(:P99_DECIMALES)) < TO_NUMBER(:P99_M_PRECIO_UNITARIO) THEN',
unistr('                           raise_application_error(-20000,''Variaci\00F3n de precio en mas supera al permitido.'');'),
'                        END IF;',
'                    END IF;',
'                END IF;',
'            END;',
unistr('            :P99_DESCUENTO_AUX := 0; -- AC\00C1 HABR\00CDA Q CALCULAR DE NUEVO EL DESCUENTO...'),
'            vtfactur.CALCULOS (to_number(:P99_PORC_IVA_AUX),to_number(:P99_PORC_IVA_AD_AUX), to_number(:P99_DECIMALES),',
'                        to_number(:P99_DESCUENTO), to_number(:P99_M_PRECIO_UNITARIO),to_number(:P99_M_CANTIDAD),',
'                        to_number(:P99_M_PORC_DESCUENTO), to_number(:P99_M_PORC_RECARGO), to_number(:P99_DESCUENTO_AUX), to_number(:P99_RECARGO_AUX), ',
'                        to_number(:P99_PORC_IVA), :P99_COD_ARTICULO_AUX, :P99_RECARGO_VAR, to_number(:P99_AJUSTE_IVA), ',
'                         TO_NUMBER(:P99_RECARGO),:P99_CANTIDAD_UB_AUX, :P99_MONTO_TOTAL_AUX,:P99_TOTAL_IVA_AUX,',
'                        to_number(:P99_IVA_PARCIAL),:P99_IVA_PARCIAL,to_number(:P99_IVA_ANT_AUX),:P99_IVA_ANT_AUX,',
'                        to_number(:P99_SUBTOTAL_PARCIAL),:P99_SUBTOTAL_PARCIAL,to_number(:P99_IMPORTE_ANT_AUX),:P99_IMPORTE_ANT_AUX,to_number(:P99_GRAVADAS_PARCIAL),',
'                        :P99_GRAVADAS_PARCIAL,to_number(:P99_EXENTAS_PARCIAL),:P99_EXENTAS_PARCIAL, :P99_PORCENTAJE_DESCUENTO,:P99_TOTAL_IVA, :P99_SUBTOTAL, :P99_GRAVADAS, :P99_EXENTAS, ',
'                        :P99_TOTAL, :P99_RECARGO_PORC, :P99_MONTO_GRAVADA_10_AUX, :P99_MONTO_GRAVADA_5_AUX, :P99_MONTO_EXENTA_AUX,:P99_MULT,:P99_DIV); ',
'        END;',
'        IF :P99_COD_ARTICULO_AUX = :P99_RECARGO_VAR AND nvl(TO_NUMBER(:P99_M_PRECIO_UNITARIO),0)=0 THEN',
'          :P99_M_PRECIO_UNITARIO :=nvl(:P99_RECARGO_PORC,0);',
'          :P99_CONTROL_FIN := ''S'';',
'          :P99_M_PORC_DESCUENTO := 0;',
'          :P99_M_PORC_RECARGO := 0;',
'        END IF;',
'    END IF;',
'END;    ',
'',
'',
''))
,p_attribute_02=>'P99_SEQ_ID,P99_M_PORC_DESCUENTO,P99_DESCUENTO_AUX, P99_M_CANTIDAD,P99_M_PRECIO_UNITARIO,P99_DECIMALES,P99_PORC_IVA_AUX,P99_PORC_IVA_AD_AUX,P99_DESCUENTO,  P99_M_PORC_RECARGO,P99_RECARGO_AUX,P99_PORC_IVA,P99_COD_ARTICULO_AUX,P99_RECARGO_VAR,P99_AJUSTE'
||'_IVA,P99_RECARGO,P99_IVA_PARCIAL,P99_IVA_ANT_AUX,P99_SUBTOTAL_PARCIAL,  P99_IMPORTE_ANT_AUX,P99_GRAVADAS_PARCIAL,P99_EXENTAS_PARCIAL,P99_MODIFICA_PRECIOS,P99_VARIACION_MENOS P99_PRECIO_LISTA_AUX,P99_VARIACION_MAS,P99_RECARGO_PORC'
,p_attribute_03=>'P99_DESCUENTO_MAXIMO_AUX,P99_DESCUENTO_AUX,P99_PORC_DESCUENTO_ANT_AUX,P99_CANTIDAD_UB_AUX,P99_MONTO_TOTAL_AUX, P99_TOTAL_IVA_AUX,P99_IVA_PARCIAL,P99_IVA_ANT_AUX, P99_SUBTOTAL_PARCIAL,P99_IMPORTE_ANT_AUX,P99_GRAVADAS_PARCIAL, P99_EXENTAS_PARCIAL, P99_'
||'PORCENTAJE_DESCUENTO,P99_TOTAL_IVA,P99_SUBTOTAL,P99_GRAVADAS,P99_EXENTAS,P99_TOTAL, P99_RECARGO_PORC, P99_MONTO_GRAVADA_10_AUX,P99_MONTO_GRAVADA_5_AUX,P99_MONTO_EXENTA_AUX,P99_MULT,P99_DIV, P99_M_PRECIO_UNITARIO,P99_CONTROL_FIN,P99_M_PORC_DESCUENTO,P'
||'99_M_PORC_RECARGO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P99_CARGA_PRECIOS'
,p_client_condition_expression=>'S'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(26601810309744739)
,p_event_id=>wwv_flow_imp.id(26601501539744736)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    FOR CC IN (SELECT C001,C002,C003,                                     ',
'                      C004,C005,C006,                      ',
'                      C007,C008,C009,                                     ',
'                      C010,C011,C012,                                ',
'                      C013,C014,C015,                                     ',
'                      C016,C017,C018,                                     ',
'                      C019,C020,C021,                     ',
'                      C022,C023,C024,       ',
'                      C025,C026,C027,       ',
'                      C028,C029,C030,      ',
'                      C031,C032,C033,      ',
'                      C034,C035,c036,   ',
'					  C037,-- viva_ant,',
'					  C038,-- vimporte_ant,',
'					  C039,-- monto_gravada_10,',
'					  C040,-- monto_gravada_5,',
'					  C041,-- monto_exenta',
'					  C042,--COD_ARTICULO_REL_BON		',
'					  C043, --ORDEN',
'					  C044, --TIENE_BONIF',
'					  C045, -- IMPORTE_BON',
'					  C046, --COD_aRT_PROMO',
'					  C047, --IND_PROMO',
'					  C048, --DESCRIPCION_DETALLE',
'					  C049  --CANTIDAD_IMPRESION      ',
'                FROM APEX_COLLECTIONS',
'               WHERE COLLECTION_NAME = ''DETALLE_COMPROBANTE''',
'                 AND SEQ_ID = :P99_SEQ_ID)',
'    LOOP',
'    IF NVL(:P99_M_CANTIDAD,0) >0 and    NVL(:P99_M_PRECIO_UNITARIO,0) >0 THEN',
'        APEX_COLLECTION.UPDATE_MEMBER(P_COLLECTION_NAME => ''DETALLE_COMPROBANTE'',',
'                                       P_SEQ => :P99_SEQ_ID,P_C001 => CC.C001,P_C002 => CC.C002,',
'                                       P_C003 => :P99_COD_UNIDAD_MEDIDA_AUX, P_C004 => CC.C004, P_C005 => :P99_M_CANTIDAD,  ',
'                                       P_C006 => :P99_CANTIDAD_UB_AUX,  P_C007 => :P99_TOTAL_IVA_AUX, P_C008 => :P99_M_PRECIO_UNITARIO,  ',
'                                       P_C009 => :P99_PRECIO_LISTA_AUX, P_C010 => :P99_DESCUENTO_AUX, P_C011 => :P99_M_PORC_RECARGO, ',
'                                       P_C012 => :P99_PORC_IVA_AUX, P_C013 => :P99_RECARGO_AUX,  P_C014 => :P99_M_PORC_DESCUENTO,  ',
'                                       P_C015 => :P99_MONTO_TOTAL_AUX, P_C016 => :P99_NRO_PROMO,      P_C017 => CC.C017,  ',
'                                       P_C018 => :P99_IND_PRODUCTO_ARMADO, P_C019 => CC.C019, P_C020 => CC.C020, ',
'                                       P_C021 => CC.C021, P_C022 => CC.C022, P_C023 => CC.C023,',
'                                       P_C024 => CC.C024, P_C025 => CC.C025, P_C026 => CC.C026, ',
'                                       P_C027 => :P99_NRO_LOTE_AUX, P_C028 => CC.C028, P_C029 => CC.C029, ',
'                                       P_C030 => :P99_PORC_IVA_AD_AUX,P_C031 => CC.C031,P_C032 => :P99_IND_NO_STOCK_AUX,',
'                                       P_C033 => :P99_D_COD_SUCURSAL ,P_C034 => CC.C034,P_C035 => :P99_NRO_PEDIDO,P_C036 => CC.C036,',
'                                       P_C037 => :P99_IVA_ANT_AUX, P_C038 =>:P99_IMPORTE_ANT_AUX, P_C039 => :P99_MONTO_GRAVADA_10_AUX, ',
'                                       P_C040 => :P99_MONTO_GRAVADA_5_AUX, P_C041 => :P99_MONTO_EXENTA_AUX,',
'                                       P_C042 => CC.C042, P_C043 => CC.C043, P_C044 => CC.C044, P_C045 => CC.C045,',
'                                       P_C046 => CC.C046, P_C047 => CC.C047, P_C048 => :P99_DESCRIPCION_DETALLE, P_C049 => CC.C049); ',
'else ',
' RAISE_APPLICATION_ERROR(-20000, ''La cantidad debe ser mayor a 0 ''||sqlerrm);',
'end if;                                       ',
'    END LOOP;',
'EXCEPTION',
'    WHEN OTHERS THEN    ',
'        RAISE_APPLICATION_ERROR(-20000, ''Ha ocurrido un error al guardar los cambios del registro. ''||sqlerrm);',
'END;'))
,p_attribute_02=>'P99_DESCRIPCION_DETALLE,P99_IND_PRODUCTO_ARMADO,P99_NRO_PEDIDO,P99_PRECIO_LISTA_AUX,P99_NRO_PROMO,P99_SEQ_ID,P99_M_COD_ARTICULO,P99_COD_ARTICULO_AUX,P99_COD_UNIDAD_MEDIDA_AUX,P99_M_CANTIDAD,P99_CANTIDAD_UB_AUX,P99_TOTAL_IVA_AUX, P99_M_PRECIO_UNITARIO'
||',P99_DESCUENTO_AUX,P99_M_PORC_RECARGO,P99_PORC_IVA_AUX,P99_RECARGO_AUX,P99_M_PORC_DESCUENTO, P99_MONTO_TOTAL_AUX,P99_NRO_LOTE_AUX,P99_PORC_IVA_AD_AUX,P99_IND_NO_STOCK_AUX,P99_D_COD_SUCURSAL,P99_IVA_ANT_AUX,  P99_IMPORTE_ANT_AUX,P99_MONTO_GRAVADA_10_A'
||'UX,P99_MONTO_GRAVADA_5_AUX,P99_MONTO_EXENTA_AUX'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P99_CARGA_PRECIOS'
,p_client_condition_expression=>'S'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(26601991451744740)
,p_event_id=>wwv_flow_imp.id(26601501539744736)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(24410539880161944)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(29130574230274620)
,p_name=>'DA_PRECIO_UNITARIO_1'
,p_event_sequence=>600
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P99_A_PRECIO_UNITARIO'
,p_bind_type=>'bind'
,p_bind_event_type=>'focusout'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(29130630725274621)
,p_event_id=>wwv_flow_imp.id(29130574230274620)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'--IF NVL(:P99_CARGA_PRECIOS,''N'') = ''S'' THEN',
'    DECLARE',
'        vprecio NUMBER(18,3);',
'    BEGIN',
'        IF nvl(TO_NUMBER(:P99_A_PRECIO_UNITARIO),0) < 0 THEN',
'            null;',
'        ELSIF nvl(TO_NUMBER(:P99_A_PRECIO_UNITARIO),0) = 0 THEN',
'            raise_application_error(-20000,''El precio unitario es 0 (cero)'');',
'        END IF;',
'        BEGIN',
'            IF :P99_MODIFICA_PRECIOS <> ''N'' THEN',
'                IF nvl( TO_NUMBER(:P99_VARIACION_MENOS),0 ) > 0 and  nvl( TO_NUMBER(:P99_PRECIO_LISTA_AUX), 0 ) > 0 THEN',
'                    IF round( TO_NUMBER(:P99_PRECIO_LISTA_AUX) - ( TO_NUMBER(:P99_PRECIO_LISTA_AUX) * TO_NUMBER(:P99_VARIACION_MENOS) / 100 ),TO_NUMBER(:P99_DECIMALES)) > TO_NUMBER(:P99_A_PRECIO_UNITARIO) THEN',
unistr('                       raise_application_error(-20000,''La variaci\00F3n de Precio en menos supera al permitido.'');'),
'                    END IF;',
'                END IF;',
'                IF nvl( TO_NUMBER(:P99_VARIACION_MAS),0 ) > 0 and  nvl( TO_NUMBER(:P99_PRECIO_LISTA_AUX), 0 ) > 0 THEN',
'                    IF round( TO_NUMBER(:P99_PRECIO_LISTA_AUX) + ( TO_NUMBER(:P99_PRECIO_LISTA_AUX) * TO_NUMBER(:P99_VARIACION_MAS) / 100 ),TO_NUMBER(:P99_DECIMALES)) < TO_NUMBER(:P99_A_PRECIO_UNITARIO) THEN',
unistr('                       raise_application_error(-20000,''Variaci\00F3n de precio en mas supera al permitido.'');'),
'                    END IF;',
'                END IF;',
'            END IF;',
'        END;',
'    END;',
'    IF :P99_A_COD_ARTICULO = :P99_RECARGO_VAR AND nvl(TO_NUMBER(:P99_A_PRECIO_UNITARIO),0)=0 THEN',
'      :P99_A_PRECIO_UNITARIO :=nvl(:P99_RECARGO_PORC,0);',
'      :P99_CONTROL_FIN := ''S'';',
'      :P99_A_PORC_DESCUENTO := 0;',
'      :P99_A_PORC_RECARGO := 0;',
'    END IF;',
'END;    '))
,p_attribute_02=>'P99_A_PRECIO_UNITARIO,P99_MODIFICA_PRECIOS,P99_PRECIO_LISTA_AUX,P99_VARIACION_MENOS,P99_DECIMALES,P99_VARIACION_MAS,P99_RECARGO_VAR,P99_A_COD_ARTICULO,P99_RECARGO_PORC'
,p_attribute_03=>'P99_A_PRECIO_UNITARIO,P99_CONTROL_FIN,P99_A_PORC_DESCUENTO,P99_A_PORC_RECARGO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P99_CARGA_PRECIOS'
,p_client_condition_expression=>'S'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(26602191430744742)
,p_name=>'DA_PORC_RECARGO'
,p_event_sequence=>610
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P99_M_PORC_RECARGO'
,p_bind_type=>'bind'
,p_bind_event_type=>'focusout'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(26602272876744743)
,p_event_id=>wwv_flow_imp.id(26602191430744742)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    IF nvl( :P99_PORC_RECARGO_ANT_AUX, 0 ) <> nvl( :P99_M_PORC_RECARGO, 0 ) THEN',
'        :P99_RECARGO_AUX := round( (( nvl( :P99_M_CANTIDAD, 0 ) *',
'                                    ( nvl( :P99_M_PRECIO_UNITARIO, 0 )) - nvl(:P99_DESCUENTO_AUX,0)) *',
'                                    ( nvl( :P99_M_PORC_RECARGO, 0 ) / 100 ) ),',
'                                      nvl( :P99_DECIMALES, 0 ) );',
'        :P99_PORC_RECARGO_ANT_AUX := :P99_M_PORC_RECARGO;                            ',
'    END IF;',
'    vtfactur.CALCULOS (to_number(:P99_PORC_IVA_AUX),to_number(:P99_PORC_IVA_AD_AUX), to_number(:P99_DECIMALES),',
'            to_number(:P99_DESCUENTO), to_number(:P99_M_PRECIO_UNITARIO),to_number(:P99_M_CANTIDAD),',
'            to_number(:P99_M_PORC_DESCUENTO), to_number(:P99_M_PORC_RECARGO), to_number(:P99_DESCUENTO_AUX), to_number(:P99_RECARGO_AUX), ',
'            to_number(:P99_PORC_IVA), :P99_COD_ARTICULO_AUX, :P99_RECARGO_VAR, to_number(:P99_AJUSTE_IVA), ',
'             TO_NUMBER(:P99_RECARGO),:P99_CANTIDAD_UB_AUX, :P99_MONTO_TOTAL_AUX,:P99_TOTAL_IVA_AUX,',
'            to_number(:P99_IVA_PARCIAL),:P99_IVA_PARCIAL,to_number(:P99_IVA_ANT_AUX),:P99_IVA_ANT_AUX,',
'            to_number(:P99_SUBTOTAL_PARCIAL),:P99_SUBTOTAL_PARCIAL,to_number(:P99_IMPORTE_ANT_AUX),:P99_IMPORTE_ANT_AUX,to_number(:P99_GRAVADAS_PARCIAL),',
'            :P99_GRAVADAS_PARCIAL,to_number(:P99_EXENTAS_PARCIAL),:P99_EXENTAS_PARCIAL, :P99_PORCENTAJE_DESCUENTO,:P99_TOTAL_IVA, :P99_SUBTOTAL, :P99_GRAVADAS, :P99_EXENTAS, ',
'            :P99_TOTAL, :P99_RECARGO_PORC, :P99_MONTO_GRAVADA_10_AUX, :P99_MONTO_GRAVADA_5_AUX, :P99_MONTO_EXENTA_AUX,:P99_MULT,:P99_DIV); ',
'EXCEPTION',
'    when others then',
unistr('        raise_application_error(-20000,''Error en el c\00E1lculo de recargo. ''||sqlerrm);'),
'END;',
'-- CALCULA_RECARGO;',
''))
,p_attribute_02=>'P99_PORC_RECARGO_ANT_AUX,P99_M_PORC_DESCUENTO,P99_DESCUENTO_AUX, P99_M_CANTIDAD,P99_M_PRECIO_UNITARIO,P99_DECIMALES,P99_PORC_IVA_AUX,P99_PORC_IVA_AD_AUX,P99_DESCUENTO,   P99_M_PORC_RECARGO,P99_RECARGO_AUX,P99_PORC_IVA,P99_COD_ARTICULO_AUX,P99_RECARGO'
||'_VAR,P99_AJUSTE_IVA,P99_RECARGO,P99_IVA_PARCIAL,P99_IVA_ANT_AUX,P99_SUBTOTAL_PARCIAL,   P99_IMPORTE_ANT_AUX,P99_GRAVADAS_PARCIAL,P99_EXENTAS_PARCIAL,P99_MODIFICA_PRECIOS,P99_VARIACION_MENOS P99_PRECIO_LISTA_AUX,P99_VARIACION_MAS,P99_RECARGO_PORC'
,p_attribute_03=>'P99_RECARGO_AUX,P99_PORC_RECARGO_ANT_AUX,P99_CANTIDAD_UB_AUX,P99_MONTO_TOTAL_AUX, P99_TOTAL_IVA_AUX,P99_IVA_PARCIAL,P99_IVA_ANT_AUX,  P99_SUBTOTAL_PARCIAL,P99_IMPORTE_ANT_AUX,P99_GRAVADAS_PARCIAL, P99_EXENTAS_PARCIAL, P99_PORCENTAJE_DESCUENTO,P99_TOT'
||'AL_IVA,P99_SUBTOTAL,P99_GRAVADAS,P99_EXENTAS, P99_TOTAL, P99_RECARGO_PORC,P99_MONTO_GRAVADA_10_AUX,P99_MONTO_GRAVADA_5_AUX,P99_MONTO_EXENTA_AUX,P99_MULT,P99_DIV'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(26602308003744744)
,p_event_id=>wwv_flow_imp.id(26602191430744742)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    FOR CC IN (SELECT C001,C002,C003,                                     ',
'                      C004,C005,C006,                      ',
'                      C007,C008,C009,                                     ',
'                      C010,C011,C012,                                ',
'                      C013,C014,C015,                                     ',
'                      C016,C017,C018,                                     ',
'                      C019,C020,C021,                     ',
'                      C022,C023,C024,       ',
'                      C025,C026,C027,       ',
'                      C028,C029,C030,      ',
'                      C031,C032,C033,      ',
'                      C034,C035,c036,   ',
'					  C037,-- viva_ant,',
'					  C038,-- vimporte_ant,',
'					  C039,-- monto_gravada_10,',
'					  C040,-- monto_gravada_5,',
'					  C041,-- monto_exenta',
'					  C042,--COD_ARTICULO_REL_BON		',
'					  C043, --ORDEN',
'					  C044, --TIENE_BONIF',
'					  C045, -- IMPORTE_BON',
'					  C046, --COD_aRT_PROMO',
'					  C047, --IND_PROMO',
'					  C048, --DESCRIPCION_DETALLE',
'					  C049  --CANTIDAD_IMPRESION      ',
'                FROM APEX_COLLECTIONS',
'               WHERE COLLECTION_NAME = ''DETALLE_COMPROBANTE''',
'                 AND SEQ_ID = :P99_SEQ_ID)',
'    LOOP',
'    IF NVL(:P99_M_CANTIDAD,0) >0 and    NVL(:P99_M_PRECIO_UNITARIO,0) >0 THEN',
'        APEX_COLLECTION.UPDATE_MEMBER(P_COLLECTION_NAME => ''DETALLE_COMPROBANTE'',',
'                                       P_SEQ => :P99_SEQ_ID,P_C001 => CC.C001,P_C002 => CC.C002,',
'                                       P_C003 => :P99_COD_UNIDAD_MEDIDA_AUX, P_C004 => CC.C004, P_C005 => :P99_M_CANTIDAD,  ',
'                                       P_C006 => :P99_CANTIDAD_UB_AUX,  P_C007 => :P99_TOTAL_IVA_AUX, P_C008 => :P99_M_PRECIO_UNITARIO,  ',
'                                       P_C009 => :P99_PRECIO_LISTA_AUX, P_C010 => :P99_DESCUENTO_AUX, P_C011 => :P99_M_PORC_RECARGO, ',
'                                       P_C012 => :P99_PORC_IVA_AUX, P_C013 => :P99_RECARGO_AUX,  P_C014 => :P99_M_PORC_DESCUENTO,  ',
'                                       P_C015 => :P99_MONTO_TOTAL_AUX, P_C016 => :P99_NRO_PROMO,      P_C017 => CC.C017,  ',
'                                       P_C018 => :P99_IND_PRODUCTO_ARMADO, P_C019 => CC.C019, P_C020 => CC.C020, ',
'                                       P_C021 => CC.C021, P_C022 => CC.C022, P_C023 => CC.C023,',
'                                       P_C024 => CC.C024, P_C025 => CC.C025, P_C026 => CC.C026, ',
'                                       P_C027 => :P99_NRO_LOTE_AUX, P_C028 => CC.C028, P_C029 => CC.C029, ',
'                                       P_C030 => :P99_PORC_IVA_AD_AUX,P_C031 => CC.C031,P_C032 => :P99_IND_NO_STOCK_AUX,',
'                                       P_C033 => :P99_D_COD_SUCURSAL ,P_C034 => CC.C034,P_C035 => :P99_NRO_PEDIDO,P_C036 => CC.C036,',
'                                       P_C037 => :P99_IVA_ANT_AUX, P_C038 =>:P99_IMPORTE_ANT_AUX, P_C039 => :P99_MONTO_GRAVADA_10_AUX, ',
'                                       P_C040 => :P99_MONTO_GRAVADA_5_AUX, P_C041 => :P99_MONTO_EXENTA_AUX,',
'                                       P_C042 => CC.C042, P_C043 => CC.C043, P_C044 => CC.C044, P_C045 => CC.C045,',
'                                       P_C046 => CC.C046, P_C047 => CC.C047, P_C048 => :P99_DESCRIPCION_DETALLE, P_C049 => CC.C049); ',
'',
'else ',
'RAISE_APPLICATION_ERROR(-20000, ''La cantidad debe ser mayor a 0. ''||sqlerrm);',
'end if;',
'    END LOOP;',
'EXCEPTION',
'    WHEN OTHERS THEN    ',
'        RAISE_APPLICATION_ERROR(-20000, ''Ha ocurrido un error al guardar los cambios del registro. ''||sqlerrm);',
'END;'))
,p_attribute_02=>'P99_DESCRIPCION_DETALLE,P99_IND_PRODUCTO_ARMADO,P99_NRO_PEDIDO,P99_PRECIO_LISTA_AUX,P99_NRO_PROMO,P99_SEQ_ID,P99_M_COD_ARTICULO,P99_COD_ARTICULO_AUX,P99_COD_UNIDAD_MEDIDA_AUX,P99_M_CANTIDAD,P99_CANTIDAD_UB_AUX,P99_TOTAL_IVA_AUX, P99_M_PRECIO_UNITARIO'
||',P99_DESCUENTO_AUX,P99_M_PORC_RECARGO,P99_PORC_IVA_AUX,P99_RECARGO_AUX,P99_M_PORC_DESCUENTO, P99_MONTO_TOTAL_AUX,P99_NRO_LOTE_AUX,P99_PORC_IVA_AD_AUX,P99_IND_NO_STOCK_AUX,P99_D_COD_SUCURSAL,P99_IVA_ANT_AUX,  P99_IMPORTE_ANT_AUX,P99_MONTO_GRAVADA_10_A'
||'UX,P99_MONTO_GRAVADA_5_AUX,P99_MONTO_EXENTA_AUX'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P99_CARGA_PRECIOS'
,p_client_condition_expression=>'S'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(26602421307744745)
,p_event_id=>wwv_flow_imp.id(26602191430744742)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(24410539880161944)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(29130996059274624)
,p_name=>'DA_PORC_RECARGO_1'
,p_event_sequence=>620
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P99_A_PORC_RECARGO'
,p_bind_type=>'bind'
,p_bind_event_type=>'focusout'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(29131041359274625)
,p_event_id=>wwv_flow_imp.id(29130996059274624)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'--POST TEXT ITEM',
'BEGIN',
'    IF nvl( :P99_PORC_RECARGO_ANT_AUX, 0 ) <> nvl( :P99_A_PORC_RECARGO, 0 ) THEN',
'        :P99_RECARGO_AUX := round( (( nvl( :P99_A_CANTIDAD, 0 ) *',
'                                    ( nvl( :P99_A_PRECIO_UNITARIO, 0 )) - nvl(:P99_DESCUENTO_AUX,0)) *',
'                                    ( nvl( :P99_A_PORC_RECARGO, 0 ) / 100 ) ),',
'                                      nvl( :P99_DECIMALES, 0 ) );',
'        :P99_PORC_RECARGO_ANT_AUX := :P99_A_PORC_RECARGO;                            ',
'    END IF;',
'',
'EXCEPTION',
'    when others then',
unistr('        raise_application_error(-20000,''Error en el c\00E1lculo de recargo. ''||sqlerrm);'),
'END;'))
,p_attribute_02=>'P99_PORC_RECARGO_ANT_AUX,P99_A_PORC_RECARGO,P99_A_CANTIDAD,P99_A_PRECIO_UNITARIO,P99_DESCUENTO_AUX,P99_A_PORC_RECARGO,P99_DECIMALES'
,p_attribute_03=>'P99_RECARGO_AUX,P99_PORC_RECARGO_ANT_AUX'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(26602526184744746)
,p_name=>'DA_CAMBIA_SUCURSAL_DETALLE'
,p_event_sequence=>630
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P99_D_COD_SUCURSAL'
,p_bind_type=>'bind'
,p_bind_event_type=>'focusout'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(26602714629744748)
,p_event_id=>wwv_flow_imp.id(26602526184744746)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    FOR CC IN (SELECT C001,C002,C003,                                     ',
'                      C004,C005,C006,                      ',
'                      C007,C008,C009,                                     ',
'                      C010,C011,C012,                                ',
'                      C013,C014,C015,                                     ',
'                      C016,C017,C018,                                     ',
'                      C019,C020,C021,                     ',
'                      C022,C023,C024,       ',
'                      C025,C026,C027,       ',
'                      C028,C029,C030,      ',
'                      C031,C032,C033,      ',
'                      C034,C035,c036,   ',
'					  C037,-- viva_ant,',
'					  C038,-- vimporte_ant,',
'					  C039,-- monto_gravada_10,',
'					  C040,-- monto_gravada_5,',
'					  C041,-- monto_exenta',
'					  C042,--COD_ARTICULO_REL_BON		',
'					  C043, --ORDEN',
'					  C044, --TIENE_BONIF',
'					  C045, -- IMPORTE_BON',
'					  C046, --COD_aRT_PROMO',
'					  C047, --IND_PROMO',
'					  C048, --DESCRIPCION_DETALLE',
'					  C049  --CANTIDAD_IMPRESION      ',
'                FROM APEX_COLLECTIONS',
'               WHERE COLLECTION_NAME = ''DETALLE_COMPROBANTE''',
'                 AND SEQ_ID = :P99_SEQ_ID)',
'    LOOP',
'        APEX_COLLECTION.UPDATE_MEMBER(P_COLLECTION_NAME => ''DETALLE_COMPROBANTE'',',
'                                       P_SEQ => :P99_SEQ_ID,P_C001 => CC.C001,P_C002 => CC.C002,',
'                                       P_C003 => :P99_COD_UNIDAD_MEDIDA_AUX, P_C004 => CC.C004, P_C005 => :P99_M_CANTIDAD,  ',
'                                       P_C006 => :P99_CANTIDAD_UB_AUX,  P_C007 => :P99_TOTAL_IVA_AUX, P_C008 => :P99_M_PRECIO_UNITARIO,  ',
'                                       P_C009 => :P99_PRECIO_LISTA_AUX, P_C010 => :P99_DESCUENTO_AUX, P_C011 => :P99_M_PORC_RECARGO, ',
'                                       P_C012 => :P99_PORC_IVA_AUX, P_C013 => :P99_RECARGO_AUX,  P_C014 => :P99_M_PORC_DESCUENTO,  ',
'                                       P_C015 => :P99_MONTO_TOTAL_AUX, P_C016 => :P99_NRO_PROMO,      P_C017 => CC.C017,  ',
'                                       P_C018 => :P99_IND_PRODUCTO_ARMADO, P_C019 => CC.C019, P_C020 => CC.C020, ',
'                                       P_C021 => CC.C021, P_C022 => CC.C022, P_C023 => CC.C023,',
'                                       P_C024 => CC.C024, P_C025 => CC.C025, P_C026 => CC.C026, ',
'                                       P_C027 => :P99_NRO_LOTE_AUX, P_C028 => CC.C028, P_C029 => CC.C029, ',
'                                       P_C030 => :P99_PORC_IVA_AD_AUX,P_C031 => CC.C031,P_C032 => :P99_IND_NO_STOCK_AUX,',
'                                       P_C033 => :P99_D_COD_SUCURSAL ,P_C034 => CC.C034,P_C035 => :P99_NRO_PEDIDO,P_C036 => CC.C036,',
'                                       P_C037 => :P99_IVA_ANT_AUX, P_C038 =>:P99_IMPORTE_ANT_AUX, P_C039 => :P99_MONTO_GRAVADA_10_AUX, ',
'                                       P_C040 => :P99_MONTO_GRAVADA_5_AUX, P_C041 => :P99_MONTO_EXENTA_AUX,',
'                                       P_C042 => CC.C042, P_C043 => CC.C043, P_C044 => CC.C044, P_C045 => CC.C045,',
'                                       P_C046 => CC.C046, P_C047 => CC.C047, P_C048 => :P99_DESCRIPCION_DETALLE, P_C049 => CC.C049); ',
'    END LOOP;',
'EXCEPTION',
'    WHEN OTHERS THEN    ',
'        RAISE_APPLICATION_ERROR(-20000, ''Ha ocurrido un error al guardar los cambios del registro. ''||sqlerrm);',
'END;',
'      '))
,p_attribute_02=>'P99_DESCRIPCION_DETALLE,P99_IND_PRODUCTO_ARMADO,P99_NRO_PEDIDO,P99_PRECIO_LISTA_AUX,P99_NRO_PROMO,P99_SEQ_ID,P99_M_COD_ARTICULO,P99_COD_ARTICULO_AUX,P99_COD_UNIDAD_MEDIDA_AUX,P99_M_CANTIDAD,P99_CANTIDAD_UB_AUX,P99_TOTAL_IVA_AUX, P99_M_PRECIO_UNITARIO'
||',P99_DESCUENTO_AUX,P99_M_PORC_RECARGO,P99_PORC_IVA_AUX,P99_RECARGO_AUX,P99_M_PORC_DESCUENTO, P99_MONTO_TOTAL_AUX,P99_NRO_LOTE_AUX,P99_PORC_IVA_AD_AUX,P99_IND_NO_STOCK_AUX,P99_D_COD_SUCURSAL,P99_IVA_ANT_AUX,  P99_IMPORTE_ANT_AUX,P99_MONTO_GRAVADA_10_A'
||'UX,P99_MONTO_GRAVADA_5_AUX,P99_MONTO_EXENTA_AUX'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P99_AUX_MSJ'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(26602894986744749)
,p_event_id=>wwv_flow_imp.id(26602526184744746)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(24410539880161944)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(815771020087065940)
,p_name=>'DA_CAMBIA_lote'
,p_event_sequence=>640
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P99_NRO_LOTE_AUX'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(815771151183065941)
,p_event_id=>wwv_flow_imp.id(815771020087065940)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    FOR CC IN (SELECT C001,C002,C003,                                     ',
'                      C004,C005,C006,                      ',
'                      C007,C008,C009,                                     ',
'                      C010,C011,C012,                                ',
'                      C013,C014,C015,                                     ',
'                      C016,C017,C018,                                     ',
'                      C019,C020,C021,                     ',
'                      C022,C023,C024,       ',
'                      C025,C026,C027,       ',
'                      C028,C029,C030,      ',
'                      C031,C032,C033,      ',
'                      C034,C035,c036,   ',
'					  C037,-- viva_ant,',
'					  C038,-- vimporte_ant,',
'					  C039,-- monto_gravada_10,',
'					  C040,-- monto_gravada_5,',
'					  C041,-- monto_exenta',
'					  C042,--COD_ARTICULO_REL_BON		',
'					  C043, --ORDEN',
'					  C044, --TIENE_BONIF',
'					  C045, -- IMPORTE_BON',
'					  C046, --COD_aRT_PROMO',
'					  C047, --IND_PROMO',
'					  C048, --DESCRIPCION_DETALLE',
'					  C049  --CANTIDAD_IMPRESION      ',
'                FROM APEX_COLLECTIONS',
'               WHERE COLLECTION_NAME = ''DETALLE_COMPROBANTE''',
'                 AND SEQ_ID = :P99_SEQ_ID)',
'    LOOP',
'        APEX_COLLECTION.UPDATE_MEMBER(P_COLLECTION_NAME => ''DETALLE_COMPROBANTE'',',
'                                       P_SEQ => :P99_SEQ_ID,P_C001 => CC.C001,P_C002 => CC.C002,',
'                                       P_C003 => :P99_COD_UNIDAD_MEDIDA_AUX, P_C004 => CC.C004, P_C005 => :P99_M_CANTIDAD,  ',
'                                       P_C006 => :P99_CANTIDAD_UB_AUX,  P_C007 => :P99_TOTAL_IVA_AUX, P_C008 => :P99_M_PRECIO_UNITARIO,  ',
'                                       P_C009 => :P99_PRECIO_LISTA_AUX, P_C010 => :P99_DESCUENTO_AUX, P_C011 => :P99_M_PORC_RECARGO, ',
'                                       P_C012 => :P99_PORC_IVA_AUX, P_C013 => :P99_RECARGO_AUX,  P_C014 => :P99_M_PORC_DESCUENTO,  ',
'                                       P_C015 => :P99_MONTO_TOTAL_AUX, P_C016 => :P99_NRO_PROMO,      P_C017 => CC.C017,  ',
'                                       P_C018 => :P99_IND_PRODUCTO_ARMADO, P_C019 => CC.C019, P_C020 => CC.C020, ',
'                                       P_C021 => CC.C021, P_C022 => CC.C022, P_C023 => CC.C023,',
'                                       P_C024 => CC.C024, P_C025 => CC.C025, P_C026 => CC.C026, ',
'                                       P_C027 => :P99_NRO_LOTE_AUX, P_C028 => CC.C028, P_C029 => CC.C029, ',
'                                       P_C030 => :P99_PORC_IVA_AD_AUX,P_C031 => CC.C031,P_C032 => :P99_IND_NO_STOCK_AUX,',
'                                       P_C033 => :P99_D_COD_SUCURSAL ,P_C034 => CC.C034,P_C035 => :P99_NRO_PEDIDO,P_C036 => CC.C036,',
'                                       P_C037 => :P99_IVA_ANT_AUX, P_C038 =>:P99_IMPORTE_ANT_AUX, P_C039 => :P99_MONTO_GRAVADA_10_AUX, ',
'                                       P_C040 => :P99_MONTO_GRAVADA_5_AUX, P_C041 => :P99_MONTO_EXENTA_AUX,',
'                                       P_C042 => CC.C042, P_C043 => CC.C043, P_C044 => CC.C044, P_C045 => CC.C045,',
'                                       P_C046 => CC.C046, P_C047 => CC.C047, P_C048 => :P99_DESCRIPCION_DETALLE, P_C049 => CC.C049); ',
'    END LOOP;',
'EXCEPTION',
'    WHEN OTHERS THEN    ',
'        RAISE_APPLICATION_ERROR(-20000, ''Ha ocurrido un error al guardar los cambios del registro. ''||sqlerrm);',
'END;',
'      '))
,p_attribute_02=>'P99_DESCRIPCION_DETALLE,P99_IND_PRODUCTO_ARMADO,P99_NRO_PEDIDO,P99_PRECIO_LISTA_AUX,P99_NRO_PROMO,P99_SEQ_ID,P99_M_COD_ARTICULO,P99_COD_ARTICULO_AUX,P99_COD_UNIDAD_MEDIDA_AUX,P99_M_CANTIDAD,P99_CANTIDAD_UB_AUX,P99_TOTAL_IVA_AUX, P99_M_PRECIO_UNITARIO'
||',P99_DESCUENTO_AUX,P99_M_PORC_RECARGO,P99_PORC_IVA_AUX,P99_RECARGO_AUX,P99_M_PORC_DESCUENTO, P99_MONTO_TOTAL_AUX,P99_NRO_LOTE_AUX,P99_PORC_IVA_AD_AUX,P99_IND_NO_STOCK_AUX,P99_D_COD_SUCURSAL,P99_IVA_ANT_AUX,  P99_IMPORTE_ANT_AUX,P99_MONTO_GRAVADA_10_A'
||'UX,P99_MONTO_GRAVADA_5_AUX,P99_MONTO_EXENTA_AUX'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P99_AUX_MSJ'
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
 p_id=>wwv_flow_imp.id(815771299155065942)
,p_event_id=>wwv_flow_imp.id(815771020087065940)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(24410539880161944)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(26602993618744750)
,p_name=>'DA_SOLO_NUM'
,p_event_sequence=>650
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P99_M_CANTIDAD,P99_M_PRECIO_UNITARIO,P99_A_CANTIDAD,P99_A_PRECIO_UNITARIO'
,p_bind_type=>'bind'
,p_bind_event_type=>'keypress'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(27323521574312301)
,p_event_id=>wwv_flow_imp.id(26602993618744750)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if (!soloNumerosEnteros(event)){',
'      event.preventDefault();',
'}'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(175478894711656526)
,p_name=>'DA_SOLO_NUM_DECIMALES'
,p_event_sequence=>660
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P99_M_PORC_DESCUENTO,P99_M_PORC_RECARGO,P99_M_PRECIO_UNITARIO,P99_A_CANTIDAD,P99_A_PRECIO_UNITARIO,P99_A_PORC_DESCUENTO,P99_A_PORC_RECARGO'
,p_bind_type=>'bind'
,p_bind_event_type=>'keypress'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(175478993219656527)
,p_event_id=>wwv_flow_imp.id(175478894711656526)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if (!soloNumeros(event)){',
'      event.preventDefault();',
'}'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(27323826436312304)
,p_name=>'DA_ELIMINA_REGISTRO'
,p_event_sequence=>670
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P99_ELIMINA_REGISTRO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(27324080276312306)
,p_event_id=>wwv_flow_imp.id(27323826436312304)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\00BFDesea eliminar el registro del detalle?')
,p_attribute_02=>unistr('Atenci\00F3n')
,p_attribute_06=>'Aceptar'
,p_attribute_07=>'Cancelar'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(27323961927312305)
,p_event_id=>wwv_flow_imp.id(27323826436312304)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P99_NRO_MOV_CAJ IS NOT NULL and :P99_NRO_MOV_CAJ <> 1 THEN',
'   RAISE_APPLICATION_ERROR(-20000, '' Comprobante no puede ser modificado porque tiene movimiento de caja '');',
'END IF;',
'/*',
'IF :P99_TIP_COMPROBANTE = :P99_TIP_CREDITO THEN',
'  IF nvl( TO_NUMBER(:P99_CREDITO_MINIMO), 0 ) <> 0 THEN',
'    IF ( nvl( TO_NUMBER(:P99_TOTAL), 0 ) * nvl( TO_NUMBER(:P99_C_TIP_CAMBIO), 1 ) ) < nvl( TO_NUMBER(:P99_CREDITO_MINIMO), 0 ) THEN',
unistr('      RAISE_APPLICATION_ERROR(-20000, ''El monto m\00EDnimo de la facturas a cr\00E9dito es '' || to_char( nvl( :P99_CREDITO_MINIMO, 0 ), ''999,999,990'' ) );  '),
'    END IF;',
'  END IF;',
'END IF;*/',
'',
'BEGIN  ',
'    vtfactur.elimina_registro(PI_SEQ_ID              => TO_NUMBER(:P99_ELIMINA_REGISTRO),',
'                              PI_IVA_PARCIAL          => TO_NUMBER(:P99_IVA_PARCIAL),',
'                              PI_AJUSTE_IVA           => TO_NUMBER(:P99_AJUSTE_IVA),',
'                              PI_DECIMALES            => TO_NUMBER(:P99_DECIMALES),',
'                              PI_DESCUENTO            => TO_NUMBER(:P99_DESCUENTO), --CABECERA',
'                              PI_RECARGO              => TO_NUMBER(:P99_RECARGO), --CABECERA',
'                              PI_V_RECARGO            => :P99_RECARGO_VAR,',
'                              PO_IVA_PARCIAL          => :P99_IVA_PARCIAL,',
'                              PI_SUBTOTAL_PARCIAL     => TO_NUMBER(:P99_SUBTOTAL_PARCIAL),',
'                              PO_SUBTOTAL_PARCIAL     => :P99_SUBTOTAL_PARCIAL,',
'                              PI_GRAVADAS_PARCIAL     => TO_NUMBER(:P99_GRAVADAS_PARCIAL),',
'                              PO_GRAVADAS_PARCIAL     => :P99_GRAVADAS_PARCIAL,',
'                              PI_EXENTAS_PARCIAL      => TO_NUMBER(:P99_EXENTAS_PARCIAL),',
'                              PO_EXENTAS_PARCIAL      => :P99_EXENTAS_PARCIAL,',
'                              PO_PORCENTAJE_DESCUENTO => :P99_PORCENTAJE_DESCUENTO,',
'                              PO_TOTAL_IVA            => :P99_TOTAL_IVA,',
'                              PO_SUBTOTAL             => :P99_SUBTOTAL,',
'                              PO_GRAVADAS             => :P99_GRAVADAS,',
'                              PO_EXENTAS              => :P99_EXENTAS,',
'                              PO_TOTAL                => :P99_TOTAL,',
'                              PO_RECARGO_PORC         => :P99_RECARGO_PORC,',
'                              PI_CONTROL_FIN          => :P99_CONTROL_FIN,',
'                              PO_CONTROL_FIN          => :P99_CONTROL_FIN);',
'EXCEPTION',
'    WHEN OTHERS THEN   ',
'        NULL;',
'END;',
'',
'',
''))
,p_attribute_02=>'P99_NRO_MOV_CAJ,P99_TIP_COMPROBANTE,P99_TIP_CREDITO,P99_CREDITO_MINIMO,P99_TOTAL,P99_C_TIP_CAMBIO,P99_CREDITO_MINIMO,P99_ELIMINA_REGISTRO,P99_ELIMINA_REGISTRO,P99_IVA_PARCIAL,P99_AJUSTE_IVA,P99_DECIMALES,P99_DESCUENTO,P99_RECARGO,P99_SUBTOTAL_PARCIAL'
||',P99_GRAVADAS_PARCIAL,P99_EXENTAS_PARCIAL,P99_CONTROL_FIN'
,p_attribute_03=>'P99_RECARGO_VAR,P99_IVA_PARCIAL,P99_SUBTOTAL_PARCIAL,P99_GRAVADAS_PARCIAL,P99_EXENTAS_PARCIAL,P99_PORCENTAJE_DESCUENTO,P99_TOTAL_IVA, P99_SUBTOTAL,P99_GRAVADAS,P99_EXENTAS,P99_TOTAL,P99_RECARGO_PORC,P99_CONTROL_FIN'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(106521409081760505)
,p_event_id=>wwv_flow_imp.id(27323826436312304)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'      apex_collection.delete_member(p_collection_name => ''DETALLE_COMPROBANTE'',',
'                                    p_seq             => :P99_ELIMINA_REGISTRO);',
'    EXCEPTION',
'      WHEN OTHERS THEN',
'        raise_application_error(-20000,',
'                                ''Ha ocurrido un error al eliminar el registro. '' ||',
'                                SQLERRM);',
'    END;'))
,p_attribute_02=>'P99_ELIMINA_REGISTRO'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(127591653389873346)
,p_event_id=>wwv_flow_imp.id(27323826436312304)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT  SUM(TO_NUMBER(REPLACE(C007, ''.'')))  total_iva ,                               ',
'          SUM(TO_NUMBER(REPLACE(C015, ''.''))) monto_total',
'  INTO :P99_TOTAL_IVA_1,',
'       :P99_SUBTOTAL_1',
'FROM APEX_COLLECTIONS',
'WHERE COLLECTION_NAME = ''DETALLE_COMPROBANTE'';',
'',
''))
,p_attribute_03=>'P99_TOTAL_IVA_1,P99_SUBTOTAL_1'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(127591886037873348)
,p_event_id=>wwv_flow_imp.id(27323826436312304)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P99_TOTAL_1 :=  TO_NUMBER(REPLACE(:P99_SUBTOTAL_1, ''.'')) + TO_NUMBER(REPLACE(:P99_TOTAL_IVA_1, ''.''));'
,p_attribute_02=>'P99_SUBTOTAL_1,P99_TOTAL_IVA_1'
,p_attribute_03=>'P99_TOTAL_1'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(27324140057312307)
,p_event_id=>wwv_flow_imp.id(27323826436312304)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(24410539880161944)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(27325789918312323)
,p_name=>'DA_CANCELAR'
,p_event_sequence=>680
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(27325612081312322)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(27325804061312324)
,p_event_id=>wwv_flow_imp.id(27325789918312323)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(27324440826312310)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(27326443875312330)
,p_event_id=>wwv_flow_imp.id(27325789918312323)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P99_AUX_AGREGAR_REGISTRO := 2;'
,p_attribute_03=>'P99_AUX_AGREGAR_REGISTRO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(29392241596747209)
,p_event_id=>wwv_flow_imp.id(27325789918312323)
,p_event_result=>'TRUE'
,p_action_sequence=>100
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P99_COD_ARTICULO_ANT,P99_A_COD_ARTICULO,P99_DESC_ARTICULO_AUX,P99_COD_UNIDAD_MEDIDA_AUX, P99_COD_RELACION_UM,P99_A_CANTIDAD,P99_CANTIDAD_UB_AUX,P99_TOTAL_IVA_AUX,P99_A_PRECIO_UNITARIO,P99_PRECIO_LISTA_AUX,P99_DESCUENTO_AUX, P99_A_PORC_RECARGO,P99_POR'
||'C_IVA_AUX,P99_RECARGO_AUX,P99_A_PORC_DESCUENTO,P99_MONTO_TOTAL_AUX,P99_A_NRO_PROMO,P99_IND_PRODUCTO_ARMADO,P99_COD_GRUPO_ART_AUX,P99_COD_MONEDA_BASE_AUX,P99_COD_ORIGEN_ART_AUX, P99_MODIFICA_PRECIO_AUX,P99_COSTO_PROMEDIO_AUX,P99_COSTO_PROMEDIO_REF_AUX'
||',P99_MANEJA_LOTES_AUX,P99_A_NRO_LOTE,P99_IND_RENTA_AUX,P99_COD_IVA_AUX,P99_PORC_IVA_AD_AUX,P99_IND_NO_STOCK_AUX,P99_D_COD_SUCURSAL,P99_COD_SUCURSAL, P99_NRO_PEDIDO,P99_IVA_ANT_AUX,P99_IMPORTE_ANT_AUX,P99_MONTO_GRAVADA_10_AUX,P99_MONTO_GRAVADA_5_AUX,P'
||'99_MONTO_EXENTA_AUX'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(27325931709312325)
,p_name=>'DA_ABRIR_AGREGAR'
,p_event_sequence=>690
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P99_AUX_AGREGAR_REGISTRO'
,p_condition_element=>'P99_AUX_AGREGAR_REGISTRO'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'1'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(29392334773747210)
,p_event_id=>wwv_flow_imp.id(27325931709312325)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P99_COD_ARTICULO_ANT,P99_A_COD_ARTICULO,P99_DESC_ARTICULO_AUX,P99_COD_UNIDAD_MEDIDA_AUX, P99_COD_RELACION_UM,P99_A_CANTIDAD,P99_CANTIDAD_UB_AUX,P99_TOTAL_IVA_AUX,P99_A_PRECIO_UNITARIO,P99_PRECIO_LISTA_AUX,P99_DESCUENTO_AUX, P99_A_PORC_RECARGO,P99_POR'
||'C_IVA_AUX,P99_RECARGO_AUX,P99_A_PORC_DESCUENTO,P99_MONTO_TOTAL_AUX,P99_A_NRO_PROMO,P99_IND_PRODUCTO_ARMADO,P99_COD_GRUPO_ART_AUX,P99_COD_MONEDA_BASE_AUX,P99_COD_ORIGEN_ART_AUX, P99_MODIFICA_PRECIO_AUX,P99_COSTO_PROMEDIO_AUX,P99_COSTO_PROMEDIO_REF_AUX'
||',P99_MANEJA_LOTES_AUX,P99_A_NRO_LOTE,P99_IND_RENTA_AUX,P99_COD_IVA_AUX,P99_PORC_IVA_AD_AUX,P99_IND_NO_STOCK_AUX,P99_D_COD_SUCURSAL,P99_COD_SUCURSAL, P99_NRO_PEDIDO,P99_IVA_ANT_AUX,P99_IMPORTE_ANT_AUX,P99_MONTO_GRAVADA_10_AUX,P99_MONTO_GRAVADA_5_AUX,P'
||'99_MONTO_EXENTA_AUX'
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(27326081938312326)
,p_event_id=>wwv_flow_imp.id(27325931709312325)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(27324440826312310)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(27818574246945111)
,p_event_id=>wwv_flow_imp.id(27325931709312325)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'--WHEN CREATE RECORD B DETALLE',
':P99_DIRECCION:= ''N''; --VARIABLES',
':P99_IND_PRODUCTO_ARMADO := ''N'';',
':P99_VIENE_DEL_LOTE := ''N'';',
':P99_MODIFICA_PRECIO_AUX := ''P''; --DETALLE',
':P99_TIENE_BONIF_AUX := ''N'';',
':P99_MAX_ORDEN := nvl(:P99_MAX_ORDEN,0) + 1;',
':P99_ORDEN_AUX := :P99_MAX_ORDEN;',
':P99_PORC_DESCUENTO_ANT_AUX := NULL;',
':P99_PORC_RECARGO_ANT_AUX := NULL;',
':P99_D_DESCUENTO_ANT_AUX := NULL;',
':P99_D_RECARGO_ANT_AUX := NULL;',
'',
'--WHEN-NEW-ITEM-INSTANCE COD_ARTICULO',
':P99_COD_ARTICULO_ANT := null;',
'--',
':P99_D_COD_SUCURSAL := NULL;',
''))
,p_attribute_02=>'P99_A_COD_ARTICULO,P99_MAX_ORDEN'
,p_attribute_03=>'P99_MAX_ORDEN,P99_ORDEN_AUX,P99_D_COD_SUCURSAL,P99_COD_ARTICULO_ANT,P99_DIRECCION,P99_IND_PRODUCTO_ARMADO,P99_VIENE_DEL_LOTE,P99_MODIFICA_PRECIO_AUX,P99_TIENE_BONIF_AUX, P99_PORC_DESCUENTO_ANT_AUX,P99_PORC_RECARGO_ANT_AUX,P99_D_DESCUENTO_ANT_AUX,P99_'
||'D_RECARGO_ANT_AUX'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(27326221329312328)
,p_name=>'DA_BOTON_AGREGAR'
,p_event_sequence=>700
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(27326198411312327)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(27326346458312329)
,p_event_id=>wwv_flow_imp.id(27326221329312328)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P99_NRO_MOV_CAJ IS NOT NULL and :P99_NRO_MOV_CAJ <> 1 then',
'    :P99_AUX_AGREGAR_REGISTRO := 2;',
unistr('    RAISE_APPLICATION_ERROR(-20000, ''No puede agregar m\00E1s art\00EDculos al detalle de la factura, porque ya tiene movimiento de caja.'');'),
'ELSE',
'    IF APEX_COLLECTION.COLLECTION_EXISTS(P_COLLECTION_NAME => ''DETALLE_COMPROBANTE'') THEN',
'        IF APEX_COLLECTION.COLLECTION_MEMBER_COUNT( p_collection_name => ''DETALLE_COMPROBANTE'') >= 15 THEN',
unistr('            RAISE_APPLICATION_ERROR(-20000, ''No puede agregar m\00E1s art\00EDculos al detalle de la factura, ha llegado al l\00EDmite de 15 art\00EDculos.'');'),
'        ELSE',
'            :P99_AUX_AGREGAR_REGISTRO := 1;',
'        END IF;',
'    ELSE            ',
'        :P99_AUX_AGREGAR_REGISTRO := 1;',
'    END IF;    ',
'END IF;',
'',
'',
'',
''))
,p_attribute_02=>'P99_NRO_MOV_CAJ'
,p_attribute_03=>'P99_AUX_AGREGAR_REGISTRO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(29132305526274638)
,p_event_id=>wwv_flow_imp.id(27326221329312328)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P99_MODIFICA_PRECIO_AUX,P99_D_DESCUENTO_ANT_AUX,P99_D_RECARGO_ANT_AUX,P99_CANTIDAD_UB_AUX,P99_IND_NO_STOCK_AUX,P99_COD_ARTICULO_REL_BON_AUX,P99_COD_UNIDAD_MEDIDA_AUX,P99_DESCUENTO_AUX,P99_PORC_DESCUENTO_ANT_AUX,P99_TIENE_BONIF_AUX,P99_IMPORTE_BON_AUX'
||',P99_PORC_RECARGO_ANT_AUX,P99_RECARGO_AUX,P99_PORC_IVA_AUX,P99_PORC_IVA_AD_AUX,P99_MONTO_TOTAL_AUX,P99_TOTAL_IVA_AUX,P99_IVA_ANT_AUX,P99_IMPORTE_ANT_AUX,P99_MONTO_GRAVADA_10_AUX,P99_MONTO_GRAVADA_5_AUX,P99_MONTO_EXENTA_AUX,P99_IND_NO_DESCUENTO_AUX,P9'
||'9_COD_ART_PROMO_AUX,P99_DESCUENTO_MAXIMO_AUX,P99_PRECIO_LISTA_AUX,P99_COD_IVA_AUX,P99_IND_RENTA_AUX,P99_IND_PRODUCTO_ARMADO,P99_NRO_PROMO,P99_DESC_ARTICULO_AUX,P99_COD_GRUPO_ART_AUX,P99_COD_ORIGEN_ART_AUX,P99_COSTO_PROMEDIO_AUX,P99_COSTO_PROMEDIO_REF'
||'_AUX,P99_MANEJA_LOTES_AUX,P99_COD_MONEDA_BASE,P99_DESCRIPCION_AUX,P99_A_COD_ARTICULO,P99_A_CANTIDAD,P99_A_NRO_LOTE,P99_A_PRECIO_UNITARIO,P99_A_PORC_DESCUENTO,P99_A_PORC_RECARGO,P99_NRO_PEDIDO,P99_COD_ARTICULO_ANT'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(27326575531312331)
,p_name=>'DA_AGREGAR_REGISTRO'
,p_event_sequence=>710
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(27325565401312321)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(29392061651747207)
,p_event_id=>wwv_flow_imp.id(27326575531312331)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\00BFDesea agregar el registro al detalle?')
,p_attribute_02=>unistr('Atenci\00F3n')
,p_attribute_03=>'information'
,p_attribute_06=>'Aceptar'
,p_attribute_07=>'Cancelar'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(27326670955312332)
,p_event_id=>wwv_flow_imp.id(27326575531312331)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P99_AUX_MSJ := NULL;',
'IF :P99_A_COD_ARTICULO IS NULL THEN',
unistr('    :P99_AUX_MSJ := ''Debe ingresar el c\00F3digo de art\00EDculo para poder facturar.'';'),
'ELSE    ',
'    IF  nvl( to_number(:P99_A_CANTIDAD), 0 ) = 0 THEN',
'        if nvl(:P99_CARGA_DETALLE,''N'') <> ''S'' then',
'            :P99_AUX_MSJ :=''La cantidad facturada no puede ser 0 ni nula.'';  ',
'        end if;',
'    ELSE    ',
'        BEGIN',
'            vtfactur.calcula_descuento(to_number(:P99_A_CANTIDAD),to_number(:P99_A_PRECIO_UNITARIO),to_number(:P99_A_PORC_DESCUENTO),to_number(:P99_DECIMALES),:P99_DESCUENTO_AUX,:P99_PORC_DESCUENTO_ANT_AUX); ',
'        EXCEPTION',
'            WHEN OTHERS THEN',
'                RAISE_APPLICATION_ERROR(-20000, ''Ha ocurrido un error al calcular el descuento. ''|| sqlerrm);',
'        END;',
'        BEGIN                           ',
'        --EL RECARGO SE CALCULA EN EL ITEM                          ',
'            vtfactur.CALCULOS (to_number(:P99_PORC_IVA_AUX),to_number(:P99_PORC_IVA_AD_AUX), to_number(:P99_DECIMALES),',
'                            to_number(:P99_DESCUENTO), to_number(:P99_A_PRECIO_UNITARIO),to_number(:P99_A_CANTIDAD),',
'                            to_number(:P99_A_PORC_DESCUENTO), to_number(:P99_A_PORC_RECARGO), to_number(:P99_DESCUENTO_AUX), to_number(:P99_RECARGO_AUX), ',
'                            to_number(:P99_PORC_IVA), :P99_COD_ARTICULO_AUX, :P99_RECARGO_VAR, to_number(:P99_AJUSTE_IVA), ',
'                            TO_NUMBER(:P99_RECARGO),:P99_CANTIDAD_UB_AUX, :P99_MONTO_TOTAL_AUX,:P99_TOTAL_IVA_AUX,',
'                            to_number(:P99_IVA_PARCIAL),:P99_IVA_PARCIAL,to_number(:P99_IVA_ANT_AUX),:P99_IVA_ANT_AUX,',
'                            to_number(:P99_SUBTOTAL_PARCIAL),:P99_SUBTOTAL_PARCIAL,to_number(:P99_IMPORTE_ANT_AUX),:P99_IMPORTE_ANT_AUX,',
'                            to_number(:P99_GRAVADAS_PARCIAL),',
'                            :P99_GRAVADAS_PARCIAL,to_number(:P99_EXENTAS_PARCIAL),:P99_EXENTAS_PARCIAL, :P99_PORCENTAJE_DESCUENTO,:P99_TOTAL_IVA, ',
'                            :P99_SUBTOTAL, :P99_GRAVADAS, :P99_EXENTAS, ',
'                            :P99_TOTAL, :P99_RECARGO_PORC, :P99_MONTO_GRAVADA_10_AUX, :P99_MONTO_GRAVADA_5_AUX, :P99_MONTO_EXENTA_AUX,:P99_MULT,:P99_DIV); ',
'                          ',
'        EXCEPTION',
'            WHEN OTHERS THEN',
unistr('                RAISE_APPLICATION_ERROR(-20000, ''Ha ocurrido un error al realizar los c\00E1lculos del registro. ''|| sqlerrm);'),
'        END;                 ',
'         ',
'    END IF;    ',
'END IF;    ',
''))
,p_attribute_02=>'P99_A_COD_ARTICULO,P99_A_CANTIDAD,P99_CARGA_DETALLE,P99_A_PRECIO_UNITARIO,P99_A_PORC_DESCUENTO,P99_DECIMALES,P99_VIENE_DEL_LOTE,P99_BAND_BONIF,P99_VCANTIDAD_BON,P99_VCANTIDAD_ART,P99_VCANTIDAD_MIN, P99_PORC_IVA_AUX,P99_PORC_IVA_AD_AUX,P99_DECIMALES,P'
||'99_DESCUENTO,P99_A_PORC_RECARGO,P99_DESCUENTO_AUX,P99_RECARGO_AUX,P99_PORC_IVA,P99_RECARGO_VAR, P99_AJUSTE_IVA,P99_RECARGO,P99_IVA_PARCIAL,P99_IVA_ANT_AUX,P99_SUBTOTAL_PARCIAL,P99_IMPORTE_ANT_AUX,P99_GRAVADAS_PARCIAL,P99_EXENTAS_PARCIAL'
,p_attribute_03=>'P99_DESCUENTO_AUX,P99_PORC_DESCUENTO_ANT_AUX,P99_AUX_MSJ,P99_PORC_DESCUENTO_ANT_AUX,P99_CANTIDAD_UB_AUX,P99_MONTO_TOTAL_AUX,P99_TOTAL_IVA_AUX,P99_IVA_PARCIAL,P99_IVA_ANT_AUX,P99_SUBTOTAL_PARCIAL, P99_IMPORTE_ANT_AUX,P99_GRAVADAS_PARCIAL, P99_EXENTAS_'
||'PARCIAL,P99_PORCENTAJE_DESCUENTO,P99_TOTAL_IVA,P99_SUBTOTAL,P99_GRAVADAS,P99_EXENTAS,P99_TOTAL, P99_RECARGO_PORC,P99_MONTO_GRAVADA_10_AUX,P99_MONTO_GRAVADA_5_AUX,P99_MONTO_EXENTA_AUX,P99_MULT,P99_DIV'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(27326708808312333)
,p_event_id=>wwv_flow_imp.id(27326575531312331)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P99_AUX_MSJ.'
,p_attribute_02=>'Error'
,p_attribute_03=>'warning'
,p_attribute_04=>'fa-warning'
,p_attribute_06=>'Aceptar'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P99_AUX_MSJ'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(29391766645747204)
,p_event_id=>wwv_flow_imp.id(27326575531312331)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    --WHEN-NEW-RECORD-INSTANCE B_DETALLE ',
'        IF nvl( :P99_VIENE_DEL_LOTE, ''N'' ) <> ''S'' THEN',
'          IF :P99_BAND_BONIF= ''S'' THEN',
'              BEGIN',
'                :P99_BAND_BONIF:= ''N'';',
'                :P99_VCANTIDAD:= to_number(:P99_VCANTIDAD_BON) * ( floor( to_number(:P99_VCANTIDAD_ART) / to_number(:P99_VCANTIDAD_MIN) ) );',
'                IF :P99_VCANTIDAD>= 1 THEN',
'                  :P99_IMPORTE_ANT_AUX := nvl( :P99_MONTO_TOTAL_AUX, 0 );',
'                  :P99_COD_ARTICULO_REL_BON_AUX := :P99_VART;',
'                  :P99_IVA_ANT_AUX := nvl( :P99_TOTAL_IVA, 0 );',
'                  :P99_COD_UNIDAD_MEDIDA_AUX := :P99_COD_UNIDAD_BON;',
'                  :P99_A_COD_ARTICULO:= :P99_VCOD_ARTICULO_BON;',
'                  :P99_A_CANTIDAD:= :P99_VCANTIDAD;',
'                  :P99_A_PORC_DESCUENTO:= 100;',
'                END IF;',
'              EXCEPTION',
'                when others then',
unistr('                  RAISE_APPLICATION_ERROR(-20000, ''Error al asignar el art\00EDculo bonificado ''|| sqlerrm);'),
'              END;',
'          END IF;',
'        ELSE',
'          :P99_VIENE_DEL_LOTE := ''N'';',
'        END IF;',
'        IF :P99_A_COD_ARTICULO IS NOT NULL THEN',
'            vtfactur.ver_unidad (:P99_COD_EMPRESA,:P99_A_COD_ARTICULO,:P99_COD_UNIDAD_MEDIDA_AUX,:P99_A_CANTIDAD,:P99_CANTIDAD_UB_AUX,:P99_MULT,:P99_DIV,:P99_DESCRIPCION_AUX);',
'        END IF; ',
'APEX_COLLECTION.ADD_MEMBER(P_COLLECTION_NAME => ''DETALLE_COMPROBANTE'',',
'P_C001 => :P99_A_COD_ARTICULO,',
'P_C002 => :P99_DESC_ARTICULO_AUX,',
'P_C003 => :P99_COD_UNIDAD_MEDIDA_AUX, ',
'P_C004 => :P99_COD_RELACION_UM, --revisar esto si es de detalle',
'P_C005 => :P99_A_CANTIDAD,  ',
'P_C006 => :P99_CANTIDAD_UB_AUX,  ',
'P_C007 => :P99_TOTAL_IVA_AUX, ',
'P_C008 => :P99_A_PRECIO_UNITARIO,  ',
'P_C009 => :P99_PRECIO_LISTA_AUX, ',
'P_C010 => :P99_DESCUENTO_AUX,',
'P_C011 => :P99_A_PORC_RECARGO, ',
'P_C012 => :P99_PORC_IVA_AUX, ',
'P_C013 => NVL(:P99_RECARGO_AUX, 0),  ',
'P_C014 => :P99_A_PORC_DESCUENTO,  ',
'P_C015 => :P99_MONTO_TOTAL_AUX, ',
'P_C016 => :P99_A_NRO_PROMO,      ',
'P_C017 => null,  --IND_OUTLET',
'P_C018 => :P99_IND_PRODUCTO_ARMADO, ',
'P_C019 => null, --orden_detalle_pedido ',
'P_C020 => :P99_COD_GRUPO_ART_AUX, ',
'P_C021 => :P99_COD_MONEDA_BASE_AUX, ',
'P_C022 => :P99_COD_ORIGEN_ART_AUX, ',
'P_C023 => :P99_MODIFICA_PRECIO_AUX,',
'P_C024 => :P99_COSTO_PROMEDIO_AUX, ',
'P_C025 => :P99_COSTO_PROMEDIO_REF_AUX, ',
'P_C026 => :P99_MANEJA_LOTES_AUX, ',
'P_C027 => :P99_A_NRO_LOTE, ',
'P_C028 => :P99_IND_RENTA_AUX, ',
'P_C029 => :P99_COD_IVA_AUX, ',
'P_C030 => :P99_PORC_IVA_AD_AUX,',
'P_C031 => null, --ind_incremento_stngo',
'P_C032 => :P99_IND_NO_STOCK_AUX,',
'P_C033 => nvl(:P99_D_COD_SUCURSAL, :P99_COD_SUCURSAL), ',
'P_C034 => null, --ser_pedido',
'P_C035 => :P99_NRO_PEDIDO, ',
'P_C036 => null, --repuesto_sta',
'P_C037 => :P99_IVA_ANT_AUX, ',
'P_C038 => :P99_IMPORTE_ANT_AUX, ',
'P_C039 => :P99_MONTO_GRAVADA_10_AUX, ',
'P_C040 => :P99_MONTO_GRAVADA_5_AUX, ',
'P_C041 => :P99_MONTO_EXENTA_AUX,',
'P_C042 => :P99_COD_ARTICULO_REL_BON_AUX,',
'P_C043 => :P99_ORDEN_AUX); ',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        RAISE_APPLICATION_ERROR(-20000, ''Ha ocurrido un error al guardar el registro. ''||sqlerrm);',
'END;',
''))
,p_attribute_02=>'P99_ORDEN_AUX,P99_VIENE_DEL_LOTE,P99_BAND_BONIF,P99_COD_UNIDAD_BON,P99_VCOD_ARTICULO_BON,P99_VCANTIDAD_BON,P99_VCANTIDAD_ART,P99_VCANTIDAD_MIN,P99_VART,P99_COD_EMPRESA,P99_A_COD_ARTICULO,P99_DESC_ARTICULO_AUX,P99_COD_UNIDAD_MEDIDA_AUX, P99_COD_RELACI'
||'ON_UM,P99_A_CANTIDAD,P99_CANTIDAD_UB_AUX,P99_TOTAL_IVA_AUX,P99_A_PRECIO_UNITARIO,P99_PRECIO_LISTA_AUX,P99_DESCUENTO_AUX, P99_A_PORC_RECARGO,P99_PORC_IVA_AUX,P99_RECARGO_AUX,P99_A_PORC_DESCUENTO,P99_MONTO_TOTAL_AUX,P99_A_NRO_PROMO,P99_IND_PRODUCTO_ARM'
||'ADO,P99_COD_GRUPO_ART_AUX,P99_COD_MONEDA_BASE_AUX,P99_COD_ORIGEN_ART_AUX, P99_MODIFICA_PRECIO_AUX,P99_COSTO_PROMEDIO_AUX,P99_COSTO_PROMEDIO_REF_AUX,P99_MANEJA_LOTES_AUX,P99_A_NRO_LOTE,P99_IND_RENTA_AUX,P99_COD_IVA_AUX,P99_PORC_IVA_AD_AUX,P99_IND_NO_S'
||'TOCK_AUX,P99_D_COD_SUCURSAL,P99_COD_SUCURSAL, P99_NRO_PEDIDO,P99_IVA_ANT_AUX,P99_IMPORTE_ANT_AUX,P99_MONTO_GRAVADA_10_AUX,P99_MONTO_GRAVADA_5_AUX,P99_MONTO_EXENTA_AUX'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P99_AUX_MSJ'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(29392177677747208)
,p_event_id=>wwv_flow_imp.id(27326575531312331)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(27324440826312310)
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P99_AUX_MSJ'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(29391898878747205)
,p_event_id=>wwv_flow_imp.id(27326575531312331)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(24410539880161944)
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P99_AUX_MSJ'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(29128602791274601)
,p_event_id=>wwv_flow_imp.id(27326575531312331)
,p_event_result=>'TRUE'
,p_action_sequence=>90
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P99_COD_ARTICULO_ANT,P99_A_COD_ARTICULO,P99_DESC_ARTICULO_AUX,P99_COD_UNIDAD_MEDIDA_AUX, P99_COD_RELACION_UM,P99_A_CANTIDAD,P99_CANTIDAD_UB_AUX,P99_TOTAL_IVA_AUX,P99_A_PRECIO_UNITARIO,P99_PRECIO_LISTA_AUX,P99_DESCUENTO_AUX, P99_A_PORC_RECARGO,P99_POR'
||'C_IVA_AUX,P99_RECARGO_AUX,P99_A_PORC_DESCUENTO,P99_MONTO_TOTAL_AUX,P99_A_NRO_PROMO,P99_IND_PRODUCTO_ARMADO,P99_COD_GRUPO_ART_AUX,P99_COD_MONEDA_BASE_AUX,P99_COD_ORIGEN_ART_AUX, P99_MODIFICA_PRECIO_AUX,P99_COSTO_PROMEDIO_AUX,P99_COSTO_PROMEDIO_REF_AUX'
||',P99_MANEJA_LOTES_AUX,P99_A_NRO_LOTE,P99_IND_RENTA_AUX,P99_COD_IVA_AUX,P99_PORC_IVA_AD_AUX,P99_IND_NO_STOCK_AUX,P99_D_COD_SUCURSAL,P99_COD_SUCURSAL, P99_NRO_PEDIDO,P99_IVA_ANT_AUX,P99_IMPORTE_ANT_AUX,P99_MONTO_GRAVADA_10_AUX,P99_MONTO_GRAVADA_5_AUX,P'
||'99_MONTO_EXENTA_AUX'
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(27326973497312335)
,p_name=>'DA_CAMBIO_MONEDA_PRECIO'
,p_event_sequence=>720
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P99_CAMBIO_MONEDA_PRECIO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(27327058520312336)
,p_event_id=>wwv_flow_imp.id(27326973497312335)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P99_REFERENCIA is not null then',
'  Begin      ',
'    Select to_number( translate( nvl(:P99_CAMBIO_MONEDA_PRECIO, ''         '' ),:P99_REFERENCIA,''1234567890''  ),''9999'')     ',
'       into :P99_C_CAMBIO_MONEDA_PRECIO',
'       from dual; ',
'  end;',
'else',
'  Begin  ',
'    Select to_number( translate( nvl(:P99_CAMBIO_MONEDA_PRECIO,''         ''),''1234567890'',''1234567890''  ),''9999'')     ',
'       into :P99_C_CAMBIO_MONEDA_PRECIO',
'       from dual; ',
'  end;',
'end if;'))
,p_attribute_02=>'P99_REFERENCIA,P99_CAMBIO_MONEDA_PRECIO'
,p_attribute_03=>'P99_C_CAMBIO_MONEDA_PRECIO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(27327147732312337)
,p_name=>'DA_ESTADO'
,p_event_sequence=>730
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P99_ESTADO'
,p_bind_type=>'bind'
,p_bind_event_type=>'focusin'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(27327294226312338)
,p_event_id=>wwv_flow_imp.id(27327147732312337)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_FOCUS'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(23498759414061411)
,p_client_condition_type=>'NOT_EQUALS'
,p_client_condition_element=>'P99_PERMITE_ANULAR'
,p_client_condition_expression=>'S'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(27327363850312339)
,p_name=>'DA_CAMBIA_ESTADO'
,p_event_sequence=>740
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P99_ESTADO'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(27327415551312340)
,p_event_id=>wwv_flow_imp.id(27327363850312339)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if nvl(:P99_ESTADO, ''P'') = ''A'' then',
'    :P99_ABRE_ANULACION := 1;',
'else',
'  :P99_ABRE_ANULACION := 2;',
'  :P99_COD_MOTIVO_ANU := null;',
'  :P99_COD_USUARIO_ANU  := null;',
'  :P99_FEC_ESTADO       := null;',
'end if;',
''))
,p_attribute_02=>'P99_ESTADO'
,p_attribute_03=>'P99_A_COD_MOTIVO_ANU,P99_COD_USUARIO_ANU,P99_FEC_ESTADO,P99_ABRE_ANULACION'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(27328064715312346)
,p_name=>'DA_ABRE_ANULACION'
,p_event_sequence=>750
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P99_ABRE_ANULACION'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(27328108788312347)
,p_event_id=>wwv_flow_imp.id(27328064715312346)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(27327850789312344)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P99_ABRE_ANULACION'
,p_client_condition_expression=>'1'
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
 p_id=>wwv_flow_imp.id(27328204317312348)
,p_name=>'DA_IMPRIMIR'
,p_event_sequence=>760
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(23498671994061410)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(27328302813312349)
,p_event_id=>wwv_flow_imp.id(27328204317312348)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'--when button pressed laser',
'--APEX_DEBUG.ERROR(''IMPRIME'');',
':P99_ABRE_IMPRIME := 2;',
'begin  	',
'  	select   auto_impresion      ',
'      into  :P99_AUTO_IMPRESO',
'      from talonarios',
'     where cod_empresa = :P99_COD_EMPRESA',
'       and tip_talonario = :P99_TIP_COMPROBANTE',
'       and cod_sucursal = :P99_COD_SUCURSAL',
'       and nvl( activo, ''S'' ) <> ''N''',
'       and serie=:P99_SER_COMPROBANTE',
'       and rownum=1;',
'exception',
'  	when others then ',
'  	    null;',
'end;',
'IF NVL(:P99_AUTO_IMPRESO,''N'')=''S'' THEN ',
'    --APEX_DEBUG.ERROR(''IF'');',
'    DECLARE',
'	    vnro NUMBER:=0;',
'           vcdc varchar2(400);',
'    BEGIN',
'    	BEGIN',
'    	  select NVL(count(*) ,0)',
'          into vnro',
'          from VT_CONTADOR_IMPRESION_FACT   ',
'          where cod_empresa =:P99_COD_EMPRESA',
'              and TIP_COMPROBANTE = :P99_TIP_COMPROBANTE',
'              and SER_COMPROBANTE = :P99_SER_COMPROBANTE',
'              and nro_comprobante = :P99_NRO_COMPROBANTE;',
'    	EXCEPTION',
'    		WHEN OTHERS THEN ',
'    		    VNRO:=0;',
'    	END ;',
'',
'	    BEGIN',
'    	  select CDC',
'          into vCDC',
'          from vt_comprobantes_cabecera   ',
'          where cod_empresa =:P99_COD_EMPRESA',
'              and TIP_COMPROBANTE = :P99_TIP_COMPROBANTE',
'              and SER_COMPROBANTE = :P99_SER_COMPROBANTE',
'              and nro_comprobante = :P99_NRO_COMPROBANTE;',
'    	EXCEPTION',
'    		WHEN OTHERS THEN ',
'    		 vCDC:=null;',
'    	END ;',
'',
'/*IF VCDC IS NULL then',
'	raise_application_error(-20000, ''CDC en proceso de generacion vuelva a intentarlo. Si el inconveniente persiste comuniquese con el departamento de TIC AL *800.'');',
'end if;*/',
'',
'    	if nvl(vnro,0)=0  then  ',
'            BEGIN',
'             select f.valor',
'              INTO :P99_REPORTE',
'              from parametros_generales f ',
'             WHERE F.PARAMETRO = ''FACTURA_REP1_NOMB''',
'               AND F.COD_MODULO = ''VT'';',
'              EXCEPTION ',
'              WHEN others THEN',
'                null;',
'            END;',
'',
'',
'            :P99_REIMPRESO := ''N'';',
'           -- :P99_REPORTE := ''VTIMPFAC_CANON_FE_1'';                          ',
'            VTFACTUR.copia (:P99_COD_EMPRESA, :P99_TIP_COMPROBANTE, :P99_SER_COMPROBANTE, :P99_NRO_COMPROBANTE);',
'            :P99_ABRE_IMPRIME := 0;',
'    	elsif nvl(vnro,0)>0 and NVL(:P99_REIMPRIME,''N'') = ''S'' then		',
'            --:empre     := :variables.cod_empresa;',
'            --:b_impresion.tip_comprobante := :b_cabecera.tip_comprobante;',
'            --:b_impresion.ser_comprobante := :b_cabecera.ser_comprobante;',
'            --:b_impresion.nro_comprobante := :b_cabecera.nro_comprobante;',
'            :P99_ABRE_IMPRIME := 1;',
'            :P99_I_COD_USUARIO   := :P99_COD_USUARIO;',
'            :P99_COD_MOTIVO   := null;',
'            :P99_FECHA := sysdate; ',
'            :P99_REPORTE := null;',
'        else',
'        		raise_application_error(-20000, ''No posee permisos para reimprimir la factura.'');',
'                :P99_ABRE_IMPRIME := 0;',
'                :P99_REPORTE := null;',
'        end if;',
'    END;',
'ELSE',
'    --APEX_DEBUG.ERROR(''ELSE ''||:P99_AUTO_IMPRESO);',
'    -- EN FORM LLAMABA A PROCEDURE imprimir_laser',
'     BEGIN',
'             select f.valor',
'              INTO :P99_REPORTE',
'              from parametros_generales f ',
'             WHERE F.PARAMETRO = ''FACTURA_REP_NOMB''',
'               AND F.COD_MODULO = ''VT'';',
'              EXCEPTION ',
'              WHEN others THEN',
'                null;',
'            END;',
'    :P99_REIMPRESO := ''N'';',
'    --:P99_REPORTE := ''VTIMPFAC_CANON_FE'';    ',
'END IF;     ',
''))
,p_attribute_02=>'P99_COD_EMPRESA,P99_TIP_COMPROBANTE,P99_COD_SUCURSAL,P99_SER_COMPROBANTE,P99_NRO_COMPROBANTE,P99_REIMPRIME,P99_COD_USUARIO'
,p_attribute_03=>'P99_REPORTE ,P99_REIMPRESO,P99_ABRE_IMPRIME,P99_AUTO_IMPRESO,P99_I_COD_USUARIO,P99_COD_MOTIVO,P99_FECHA'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1031324306073625546)
,p_event_id=>wwv_flow_imp.id(27328204317312348)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin select f.valor',
'  INTO :P99_P_NOM_FAC',
'  from parametros_generales f ',
' WHERE F.PARAMETRO = CASE WHEN :P_COD_EMPRESA=''1'' THEN  ''FACTURA_REP_NOMB''||:P_COD_EMPRESA',
' WHEN   :P_COD_EMPRESA=''18'' AND :P99_SER_COMPROBANTE LIKE ''FE%'' THEN  ''FACTURA_REP_FE_''||:P_COD_EMPRESA else  ''FACTURA_REP_NOMB''||:P_COD_EMPRESA  END',
'   AND F.COD_MODULO = ''VT'';',
'   exception when others then',
'   :P99_P_NOM_FAC:= ''FACTURA_REP_FE_''||:P_COD_EMPRESA;',
'   end;'))
,p_attribute_02=>'P99_SER_COMPROBANTE'
,p_attribute_03=>'P99_P_NOM_FAC'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(27817591188945101)
,p_name=>'DA_VALIDA_FECHA_LIMITE'
,p_event_sequence=>770
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P99_FECHA_LIMITE_FACTURACION'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(27817677097945102)
,p_event_id=>wwv_flow_imp.id(27817591188945101)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  vmensaje VARCHAR2(150);',
'  verror   EXCEPTION;',
'  vfecha   VARCHAR2(50);',
'BEGIN',
'  vfecha :=  ltrim( rtrim( :P99_FECHA_LIMITE_FACTURACION ) );',
'  vmensaje := ver_fecha( :P99_COD_EMPRESA, :P99_COD_MODULO, vfecha );',
'  IF vmensaje IS NOT NULL THEN',
'    raise verror;',
'  END IF;',
'EXCEPTION',
'  when verror then',
'    raise_application_error(-20000, vmensaje );',
'  when others then',
'    NULL;',
'END;'))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(27817739128945103)
,p_name=>'DA_DESCRIPCION_DETALLE'
,p_event_sequence=>780
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P99_DESCRIPCION_DETALLE'
,p_bind_type=>'bind'
,p_bind_event_type=>'focusin'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(27817863605945104)
,p_event_id=>wwv_flow_imp.id(27817739128945103)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_FOCUS'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P99_IMPORTE_CAPITAL'
,p_client_condition_type=>'NOT_EQUALS'
,p_client_condition_element=>'P99_IMPRIME_LICITACION'
,p_client_condition_expression=>'S'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(27818983118945115)
,p_name=>'DA_VALIDA_COD_ARTICULO'
,p_event_sequence=>790
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P99_A_COD_ARTICULO'
,p_condition_element=>'P99_A_COD_ARTICULO'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'focusout'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(27819096146945116)
,p_event_id=>wwv_flow_imp.id(27818983118945115)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'--WHEN VALIDATE ITEM',
'if :P99_COD_SUCURSAL=''254'' then',
'    BEGIN',
'        select a.cod_articulo',
'          into :P99_A_COD_ARTICULO',
'          from st_articulos a',
'         where a.cod_empresa = :P99_COD_EMPRESA ',
'           and a.cod_art_corto = :P99_A_COD_ARTICULO;',
'    exception',
'        when others then ',
'            null;',
'    end;',
'end if;	',
'',
'VTFACTUR.valida_cod_articulo (:P99_COD_EMPRESA,:P99_COD_SUCURSAL,:P99_CARGA_DETALLE,:P99_IND_EXENTO_AD,:P99_NRO_COMPROBANTE_REF,:P99_COD_CLIENTE,',
':P99_COD_LISTA_PRECIO,TO_DATE(:P99_FEC_COMPROBANTE, ''DD/MM/YYYY''),:P99_RECARGO,:P99_COD_MONEDA,TO_NUMBER(:P99_C_TIP_CAMBIO),TO_NUMBER(:P99_TIP_CAMBIO_COMPRA),',
'TO_NUMBER(:P99_DECIMALES),TO_NUMBER(:P99_CAMBIO_MONEDA_PRECIO),:P99_COD_ARTICULO_ANT,:P99_UNIDAD_MEDIDA,:P99_RECARGO_VAR,:P99_COD_MONEDA_BASE,',
':P99_USA_UM_DEF,:P99_COD_RELACION_UM,:P99_COD_MONEDA_PRECIO,TO_NUMBER(:P99_MULT),TO_NUMBER(:P99_DIV),:P99_MULT,:P99_DIV,:P99_CALCULA_IVA,:P99_TIPO_IMPUESTO, :P99_A_COD_ARTICULO,:P99_A_PORC_DESCUENTO,:P99_IND_NO_STOCK_AUX,:P99_COD_ARTICULO_REL_BON_AUX'
||',TO_NUMBER(:P99_A_CANTIDAD),:P99_A_CANTIDAD,TO_NUMBER(:P99_CANTIDAD_UB_AUX),',
':P99_CANTIDAD_UB_AUX,:P99_DESC_ARTICULO_AUX,:P99_COD_GRUPO_ART_AUX,:P99_COD_ORIGEN_ART_AUX,:P99_MODIFICA_PRECIO_AUX,:P99_COSTO_PROMEDIO_AUX,:P99_COSTO_PROMEDIO_REF_AUX,',
':P99_MANEJA_LOTES_AUX,:P99_COD_UNIDAD_MEDIDA_AUX,TO_NUMBER(:P99_A_PRECIO_UNITARIO),:P99_A_PRECIO_UNITARIO,',
':P99_COD_MONEDA_BASE_AUX,:P99_PORC_IVA_AUX,:P99_DESCUENTO_MAXIMO_AUX,:P99_A_NRO_LOTE,:P99_PRECIO_LISTA_AUX,',
':P99_D_COD_SUCURSAL,:P99_COD_IVA_AUX,:P99_IND_RENTA_AUX,:P99_DESCRIPCION_AUX,:P99_PORC_IVA_AD_AUX);',
'',
'--FINAL DE WHEN VALIDATE ITEM     ',
'if :P99_COD_ARTICULO_REL_BON_AUX is null then',
'   if :P99_A_PORC_DESCUENTO is null then ',
'      begin',
'         select nvl(d.porc_descuento,0), nvl(d.porc_descuento_max,0)',
'            into :P99_A_PORC_DESCUENTO, :P99_DESCUENTO_MAXIMO_AUX',
'            from vt_descuentos_cli_gart d, st_articulos a',
'            where a.cod_empresa = :P99_COD_EMPRESA',
'              and a.cod_articulo = :P99_A_COD_ARTICULO ',
'              and d.cod_empresa  = a.cod_empresa',
'              and d.cod_grupo_desc = rtrim(a.cod_grupo_desc)',
'              and d.cod_tip_cliente = :P99_TIP_CLIENTE;',
'      exception',
'         when others then ',
'            :P99_A_PORC_DESCUENTO := null;',
'            :P99_DESCUENTO_MAXIMO_AUX := null; ',
'      end;',
'  else',
'     begin',
'        select nvl(d.porc_descuento_max,0)',
'           into :P99_DESCUENTO_MAXIMO_AUX',
'           from vt_descuentos_cli_gart d, st_articulos a',
'           where a.cod_empresa     = :P99_COD_EMPRESA',
'             and a.cod_articulo    = :P99_A_COD_ARTICULO ',
'             and d.cod_empresa     = a.cod_empresa',
'             and d.cod_grupo_desc  = rtrim(a.cod_grupo_desc)',
'             and d.cod_tip_cliente = :P99_TIP_CLIENTE;',
'     exception',
'        when others then ',
'           :P99_DESCUENTO_MAXIMO_AUX := null;',
'     end;',
'  end if;',
'end if;',
'',
'if nvl(:P99_CONSULTA,''N'') <> ''S'' and :P99_A_COD_ARTICULO is not null and( nvl( :P99_CARGA_DETALLE, ''N'' ) <> ''S'' or nvl(:P99_IND_NO_STOCK_AUX,''N'') = ''N'' ) then',
'   if :P99_A_NRO_LOTE is null then   	',
'      vtfactur.asigna_lote (:P99_A_COD_ARTICULO,:P99_COD_EMPRESA,:P99_CARGA_DETALLE,',
'                            :P99_D_COD_SUCURSAL,:P99_COD_SUCURSAL,:P99_A_NRO_LOTE,  ',
'                            :P99_A_CANTIDAD,:P99_CANTIDAD_UB_AUX,:P99_A_NRO_LOTE,',
'                            :P99_A_CANTIDAD,:P99_CANTIDAD_UB_AUX);      ',
'   end if;',
'end if;',
'',
'if :P99_A_COD_ARTICULO = :P99_RECARGO_VAR then',
'  :P99_A_PRECIO_UNITARIO :=:P99_RECARGO_PORC;',
'end if;',
'',
'',
'',
'',
''))
,p_attribute_02=>'P99_COD_EMPRESA,P99_COD_SUCURSAL,P99_CARGA_DETALLE,P99_IND_EXENTO_AD,P99_NRO_COMPROBANTE_REF, P99_COD_CLIENTE,P99_COD_LISTA_PRECIO,P99_FEC_COMPROBANTE,P99_RECARGO,P99_COD_MONEDA, P99_C_TIP_CAMBIO,P99_TIP_CAMBIO_COMPRA,P99_DECIMALES,P99_CAMBIO_MONEDA_'
||'PRECIO,  P99_COD_ARTICULO_ANT, P99_UNIDAD_MEDIDA,P99_RECARGO_VAR,P99_COD_MONEDA_BASE,P99_USA_UM_DEF, P99_COD_MONEDA_PRECIO,P99_MULT,P99_DIV,P99_CALCULA_IVA,P99_TIPO_IMPUESTO,P99_A_COD_ARTICULO,   P99_IND_NO_STOCK_AUX,P99_COD_ARTICULO_REL_BON_AUX,P99_'
||'A_CANTIDAD,P99_CANTIDAD_UB_AUX,P99_A_PRECIO_UNITARIO,P99_A_NRO_LOTE,P99_D_COD_SUCURSAL, P99_A_PORC_DESCUENTO,P99_CONSULTA'
,p_attribute_03=>'P99_A_COD_ARTICULO,P99_COD_RELACION_UM,P99_MULT,P99_DIV,P99_A_PORC_DESCUENTO,P99_A_CANTIDAD,P99_CANTIDAD_UB_AUX,P99_DESC_ARTICULO_AUX, P99_COD_GRUPO_ART_AUX,P99_COD_ORIGEN_ART_AUX,P99_MODIFICA_PRECIO_AUX,P99_COSTO_PROMEDIO_AUX,P99_COSTO_PROMEDIO_REF_'
||'AUX,P99_MANEJA_LOTES_AUX, P99_COD_UNIDAD_MEDIDA_AUX,P99_A_PRECIO_UNITARIO,P99_COD_MONEDA_BASE_AUX,P99_PORC_IVA_AUX,P99_DESCUENTO_MAXIMO_AUX,P99_PRECIO_LISTA_AUX, P99_COD_IVA_AUX,P99_IND_RENTA_AUX,P99_DESCRIPCION_AUX,P99_PORC_IVA_AD_AUX,P99_A_NRO_LOTE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(27819548777945121)
,p_name=>'DA_SER_COMPROBANTE1'
,p_event_sequence=>800
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P99_SER_COMPROBANTE'
,p_bind_type=>'bind'
,p_bind_event_type=>'focusout'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(27819685413945122)
,p_event_id=>wwv_flow_imp.id(27819548777945121)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'VTFACTUR.valida_ser_nro_comprob(PI_COD_EMPRESA      => :P99_COD_EMPRESA,',
'                                PI_TIP_COMPROBANTE  => :P99_TIP_COMPROBANTE, ',
'                                PI_SER_COMPROBANTE  => :P99_SER_COMPROBANTE,',
'                                PI_NRO_COMPROBANTE  => :P99_NRO_COMPROBANTE, ',
'                                PI_TIP_TICKET       => :P99_TIP_TICKET_VAR,                                  ',
'                                PI_NRO_TIK_INICIAL  => :P99_NRO_TIK_INICIAL,',
'                                PI_NRO_TIK_FINAL    => :P99_NRO_TIK_FINAL,',
'                                PI_MAX_NRO_FACTURA  => :P99_MAX_NRO_FACTURA, ',
'                                PO_NRO_COMPROBANTE  => :P99_NRO_COMPROBANTE);  ',
''))
,p_attribute_02=>'P99_COD_EMPRESA,P99_TIP_COMPROBANTE,P99_SER_COMPROBANTE,P99_NRO_COMPROBANTE,P99_TIP_TICKET_VAR, P99_NRO_TIK_INICIAL,P99_NRO_TIK_FINAL,P99_MAX_NRO_FACTURA'
,p_attribute_03=>'P99_NRO_COMPROBANTE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1031323274697625535)
,p_event_id=>wwv_flow_imp.id(27819548777945121)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin select f.valor',
'  INTO :P99_P_NOM_FAC',
'  from parametros_generales f ',
' WHERE F.PARAMETRO = CASE WHEN :P_COD_EMPRESA=''1'' THEN  ''FACTURA_REP_NOMB''||:P_COD_EMPRESA',
' WHEN   :P_COD_EMPRESA=''18'' AND :P99_SER_COMPROBANTE LIKE ''FE%'' THEN  ''FACTURA_REP_FE_''||:P_COD_EMPRESA else  ''FACTURA_REP_NOMB''||:P_COD_EMPRESA  END',
'   AND F.COD_MODULO = ''VT'';',
'   exception when others then',
'   :P99_P_NOM_FAC:= ''FACTURA_REP_FE_''||:P_COD_EMPRESA;',
'   end;'))
,p_attribute_02=>'P99_COD_EMPRESA,P99_TIP_COMPROBANTE,P99_SER_COMPROBANTE,P99_NRO_COMPROBANTE,P99_TIP_TICKET_VAR, P99_NRO_TIK_INICIAL,P99_NRO_TIK_FINAL,P99_MAX_NRO_FACTURA'
,p_attribute_03=>'P99_P_NOM_FAC'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(27820047568945126)
,p_name=>'DA_ANULACION'
,p_event_sequence=>810
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(27819949016945125)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(27820168571945127)
,p_event_id=>wwv_flow_imp.id(27820047568945126)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    :P99_AUX_MSJ := NULL;',
'    IF :P99_A_COD_MOTIVO_ANU IS NOT NULL THEN',
'      :P99_COD_MOTIVO_ANU  := :P99_A_COD_MOTIVO_ANU;',
'      :P99_COD_USUARIO_ANU := :P99_COD_USUARIO;',
'      :P99_FEC_ESTADO      := sysdate;',
'    ELSE',
unistr('        :P99_AUX_MSJ := ''Debe seleccionar un motivo de anulaci\00F3n.'';'),
'    END IF;      ',
'END;'))
,p_attribute_02=>'P99_A_COD_MOTIVO_ANU,P99_COD_USUARIO'
,p_attribute_03=>'P99_AUX_MSJ,P99_COD_MOTIVO_ANU,P99_COD_USUARIO_ANU,P99_FEC_ESTADO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(27820286873945128)
,p_event_id=>wwv_flow_imp.id(27820047568945126)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P99_AUX_MSJ.'
,p_attribute_02=>'Error'
,p_attribute_03=>'warning'
,p_attribute_04=>'fa-warning'
,p_attribute_06=>'Aceptar'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P99_AUX_MSJ'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(27820783886945133)
,p_event_id=>wwv_flow_imp.id(27820047568945126)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(27327850789312344)
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P99_AUX_MSJ'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(27820490006945130)
,p_name=>'DA_CANCELAR_ANULACION'
,p_event_sequence=>820
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(27820365998945129)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(27820595567945131)
,p_event_id=>wwv_flow_imp.id(27820490006945130)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  :P99_COD_MOTIVO_ANU := null;',
'  :P99_COD_USUARIO_ANU := null;',
'  :P99_ESTADO := null;',
'END;'))
,p_attribute_03=>'P99_COD_MOTIVO_ANU,P99_COD_USUARIO_ANU,P99_ESTADO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(27820647113945132)
,p_event_id=>wwv_flow_imp.id(27820490006945130)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(27327850789312344)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(29131900317274634)
,p_name=>'DA_A_NRO_LOTE'
,p_event_sequence=>830
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P99_A_NRO_LOTE'
,p_condition_element=>'P99_A_NRO_LOTE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'focusout'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(29132001461274635)
,p_event_id=>wwv_flow_imp.id(29131900317274634)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    vtfactur.ver_lote(PI_COD_EMPRESA      => :P99_COD_EMPRESA,',
'             PI_COD_ARTICULO     => :P99_A_COD_ARTICULO,',
'             PI_NRO_LOTE         => :P99_A_NRO_LOTE,',
'             PI_D_COD_SUCURSAL   => :P99_D_COD_SUCURSAL,',
'             PI_COD_SUCURSAL     => :P99_COD_SUCURSAL,',
'             PI_CANTIDAD         => :P99_A_CANTIDAD,',
'             PI_CANTIDAD_UB      => :P99_CANTIDAD_UB_AUX,',
'             PI_CARGA_DETALLE    => :P99_CARGA_DETALLE,',
'             PI_IND_NO_STOCK     => :P99_IND_NO_STOCK_AUX, --DETALLE ',
'             PO_CANTIDAD         => :P99_A_CANTIDAD,',
'             PO_CANTIDAD_UB      => :P99_CANTIDAD_UB_AUX);',
'EXCEPTION',
'    WHEN OTHERS THEN    ',
'        RAISE_APPLICATION_ERROR(-20000, ''Ha ocurrido un error al validar el lote. ''||sqlerrm);',
'END;',
'BEGIN',
'    vtfactur.ver_iva(PI_COD_EMPRESA => :P99_COD_EMPRESA,',
'            PI_COD_ARTICULO => :P99_A_COD_ARTICULO,',
'            PI_NRO_LOTE => :P99_A_NRO_LOTE,',
'            PI_FEC_COMPROBANTE => :P99_FEC_COMPROBANTE,',
'            PI_CALCULA_IVA => :P99_CALCULA_IVA,',
'            PI_TIPO_IMPUESTO => :P99_TIPO_IMPUESTO,',
'            PO_COD_IVA => :P99_COD_IVA_AUX, --DETALLE',
'            PI_IND_EXENTO_AD => :P99_IND_EXENTO_AD,  ',
'            PO_PORC_IVA => :P99_PORC_IVA_AUX, --DETALLE',
'            PO_IND_RENTA => :P99_IND_RENTA_AUX, --DETALLE',
'            PO_PORC_IVA_AD => :P99_PORC_IVA_AD_AUX); ',
'EXCEPTION',
'    WHEN OTHERS THEN    ',
'        RAISE_APPLICATION_ERROR(-20000, ''Ha ocurrido un error al validar el lote. ''||sqlerrm);',
'END;            '))
,p_attribute_02=>'P99_COD_EMPRESA,P99_A_COD_ARTICULO,P99_A_NRO_LOTE,P99_D_COD_SUCURSAL,P99_COD_SUCURSAL,P99_A_CANTIDAD,P99_CANTIDAD_UB_AUX,P99_CARGA_DETALLE,P99_IND_NO_STOCK_AUX,P99_FEC_COMPROBANTE P99_CALCULA_IVA,P99_TIPO_IMPUESTO,P99_IND_EXENTO_AD'
,p_attribute_03=>'P99_A_CANTIDAD,P99_CANTIDAD_UB_AUX,P99_COD_IVA_AUX,P99_PORC_IVA_AUX,P99_IND_RENTA_AUX,P99_PORC_IVA_AD_AUX'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(29392900880747216)
,p_name=>'DA_DESCRIPCION_DETALLE_COL'
,p_event_sequence=>840
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P99_DESCRIPCION_DETALLE'
,p_bind_type=>'bind'
,p_bind_event_type=>'focusout'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(29393028147747217)
,p_event_id=>wwv_flow_imp.id(29392900880747216)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    FOR CC IN (SELECT C001,C002,C003,                                     ',
'                      C004,C005,C006,                      ',
'                      C007,C008,C009,                                     ',
'                      C010,C011,C012,                                ',
'                      C013,C014,C015,                                     ',
'                      C016,C017,C018,                                     ',
'                      C019,C020,C021,                     ',
'                      C022,C023,C024,       ',
'                      C025,C026,C027,       ',
'                      C028,C029,C030,      ',
'                      C031,C032,C033,      ',
'                      C034,C035,c036,   ',
'					  C037,-- viva_ant,',
'					  C038,-- vimporte_ant,',
'					  C039,-- monto_gravada_10,',
'					  C040,-- monto_gravada_5,',
'					  C041,-- monto_exenta',
'					  C042,--COD_ARTICULO_REL_BON		',
'					  C043, --ORDEN',
'					  C044, --TIENE_BONIF',
'					  C045, -- IMPORTE_BON',
'					  C046, --COD_aRT_PROMO',
'					  C047, --IND_PROMO',
'					  C048, --DESCRIPCION_DETALLE',
'					  C049  --CANTIDAD_IMPRESION      ',
'                FROM APEX_COLLECTIONS',
'               WHERE COLLECTION_NAME = ''DETALLE_COMPROBANTE''',
'                 AND SEQ_ID = :P99_SEQ_ID)',
'    LOOP',
'        APEX_COLLECTION.UPDATE_MEMBER(P_COLLECTION_NAME => ''DETALLE_COMPROBANTE'',',
'                                       P_SEQ => :P99_SEQ_ID,P_C001 => CC.C001,P_C002 => CC.C002,',
'                                       P_C003 => :P99_COD_UNIDAD_MEDIDA_AUX, P_C004 => CC.C004, P_C005 => :P99_M_CANTIDAD,  ',
'                                       P_C006 => :P99_CANTIDAD_UB_AUX,  P_C007 => :P99_TOTAL_IVA_AUX, P_C008 => :P99_M_PRECIO_UNITARIO,  ',
'                                       P_C009 => :P99_PRECIO_LISTA_AUX, P_C010 => :P99_DESCUENTO_AUX, P_C011 => :P99_M_PORC_RECARGO, ',
'                                       P_C012 => :P99_PORC_IVA_AUX, P_C013 => :P99_RECARGO_AUX,  P_C014 => :P99_M_PORC_DESCUENTO,  ',
'                                       P_C015 => :P99_MONTO_TOTAL_AUX, P_C016 => :P99_NRO_PROMO,      P_C017 => CC.C017,  ',
'                                       P_C018 => :P99_IND_PRODUCTO_ARMADO, P_C019 => CC.C019, P_C020 => CC.C020, ',
'                                       P_C021 => CC.C021, P_C022 => CC.C022, P_C023 => CC.C023,',
'                                       P_C024 => CC.C024, P_C025 => CC.C025, P_C026 => CC.C026, ',
'                                       P_C027 => :P99_NRO_LOTE_AUX, P_C028 => CC.C028, P_C029 => CC.C029, ',
'                                       P_C030 => :P99_PORC_IVA_AD_AUX,P_C031 => CC.C031,P_C032 => :P99_IND_NO_STOCK_AUX,',
'                                       P_C033 => :P99_D_COD_SUCURSAL ,P_C034 => CC.C034,P_C035 => :P99_NRO_PEDIDO,P_C036 => CC.C036,',
'                                       P_C037 => :P99_IVA_ANT_AUX, P_C038 =>:P99_IMPORTE_ANT_AUX, P_C039 => :P99_MONTO_GRAVADA_10_AUX, ',
'                                       P_C040 => :P99_MONTO_GRAVADA_5_AUX, P_C041 => :P99_MONTO_EXENTA_AUX,',
'                                       P_C042 => CC.C042, P_C043 => CC.C043, P_C044 => CC.C044, P_C045 => CC.C045,',
'                                       P_C046 => CC.C046, P_C047 => CC.C047, P_C048 => :P99_DESCRIPCION_DETALLE, P_C049 => CC.C049); ',
'    END LOOP;',
'EXCEPTION',
'    WHEN OTHERS THEN    ',
'        RAISE_APPLICATION_ERROR(-20000, ''Ha ocurrido un error al guardar los cambios del registro. ''||sqlerrm);',
'END;'))
,p_attribute_02=>'P99_DESCRIPCION_DETALLE,P99_IND_PRODUCTO_ARMADO,P99_NRO_PEDIDO,P99_PRECIO_LISTA_AUX,P99_NRO_PROMO,P99_SEQ_ID,P99_M_COD_ARTICULO,P99_COD_ARTICULO_AUX,P99_COD_UNIDAD_MEDIDA_AUX,P99_M_CANTIDAD,P99_CANTIDAD_UB_AUX,P99_TOTAL_IVA_AUX, P99_M_PRECIO_UNITARIO'
||',P99_DESCUENTO_AUX,P99_M_PORC_RECARGO,P99_PORC_IVA_AUX,P99_RECARGO_AUX,P99_M_PORC_DESCUENTO, P99_MONTO_TOTAL_AUX,P99_NRO_LOTE_AUX,P99_PORC_IVA_AD_AUX,P99_IND_NO_STOCK_AUX,P99_D_COD_SUCURSAL,P99_IVA_ANT_AUX,  P99_IMPORTE_ANT_AUX,P99_MONTO_GRAVADA_10_A'
||'UX,P99_MONTO_GRAVADA_5_AUX,P99_MONTO_EXENTA_AUX'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P99_DESCRIPCION_DETALLE'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(29393192401747218)
,p_event_id=>wwv_flow_imp.id(29392900880747216)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(24410539880161944)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(29393255036747219)
,p_name=>'DA_IND_PRODUCTO_ARMADO'
,p_event_sequence=>850
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P99_IND_PRODUCTO_ARMADO'
,p_bind_type=>'bind'
,p_bind_event_type=>'focusout'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(29393374628747220)
,p_event_id=>wwv_flow_imp.id(29393255036747219)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    FOR CC IN (SELECT C001,C002,C003,                                     ',
'                      C004,C005,C006,                      ',
'                      C007,C008,C009,                                     ',
'                      C010,C011,C012,                                ',
'                      C013,C014,C015,                                     ',
'                      C016,C017,C018,                                     ',
'                      C019,C020,C021,                     ',
'                      C022,C023,C024,       ',
'                      C025,C026,C027,       ',
'                      C028,C029,C030,      ',
'                      C031,C032,C033,      ',
'                      C034,C035,c036,   ',
'					  C037,-- viva_ant,',
'					  C038,-- vimporte_ant,',
'					  C039,-- monto_gravada_10,',
'					  C040,-- monto_gravada_5,',
'					  C041,-- monto_exenta',
'					  C042,--COD_ARTICULO_REL_BON		',
'					  C043, --ORDEN',
'					  C044, --TIENE_BONIF',
'					  C045, -- IMPORTE_BON',
'					  C046, --COD_aRT_PROMO',
'					  C047, --IND_PROMO',
'					  C048, --DESCRIPCION_DETALLE',
'					  C049  --CANTIDAD_IMPRESION      ',
'                FROM APEX_COLLECTIONS',
'               WHERE COLLECTION_NAME = ''DETALLE_COMPROBANTE''',
'                 AND SEQ_ID = :P99_SEQ_ID)',
'    LOOP',
'        APEX_COLLECTION.UPDATE_MEMBER(P_COLLECTION_NAME => ''DETALLE_COMPROBANTE'',',
'                                       P_SEQ => :P99_SEQ_ID,P_C001 => CC.C001,P_C002 => CC.C002,',
'                                       P_C003 => :P99_COD_UNIDAD_MEDIDA_AUX, P_C004 => CC.C004, P_C005 => :P99_M_CANTIDAD,  ',
'                                       P_C006 => :P99_CANTIDAD_UB_AUX,  P_C007 => :P99_TOTAL_IVA_AUX, P_C008 => :P99_M_PRECIO_UNITARIO,  ',
'                                       P_C009 => :P99_PRECIO_LISTA_AUX, P_C010 => :P99_DESCUENTO_AUX, P_C011 => :P99_M_PORC_RECARGO, ',
'                                       P_C012 => :P99_PORC_IVA_AUX, P_C013 => :P99_RECARGO_AUX,  P_C014 => :P99_M_PORC_DESCUENTO,  ',
'                                       P_C015 => :P99_MONTO_TOTAL_AUX, P_C016 => :P99_NRO_PROMO,      P_C017 => CC.C017,  ',
'                                       P_C018 => :P99_IND_PRODUCTO_ARMADO, P_C019 => CC.C019, P_C020 => CC.C020, ',
'                                       P_C021 => CC.C021, P_C022 => CC.C022, P_C023 => CC.C023,',
'                                       P_C024 => CC.C024, P_C025 => CC.C025, P_C026 => CC.C026, ',
'                                       P_C027 => :P99_NRO_LOTE_AUX, P_C028 => CC.C028, P_C029 => CC.C029, ',
'                                       P_C030 => :P99_PORC_IVA_AD_AUX,P_C031 => CC.C031,P_C032 => :P99_IND_NO_STOCK_AUX,',
'                                       P_C033 => :P99_D_COD_SUCURSAL ,P_C034 => CC.C034,P_C035 => :P99_NRO_PEDIDO,P_C036 => CC.C036,',
'                                       P_C037 => :P99_IVA_ANT_AUX, P_C038 =>:P99_IMPORTE_ANT_AUX, P_C039 => :P99_MONTO_GRAVADA_10_AUX, ',
'                                       P_C040 => :P99_MONTO_GRAVADA_5_AUX, P_C041 => :P99_MONTO_EXENTA_AUX,',
'                                       P_C042 => CC.C042, P_C043 => CC.C043, P_C044 => CC.C044, P_C045 => CC.C045,',
'                                       P_C046 => CC.C046, P_C047 => CC.C047, P_C048 => :P99_DESCRIPCION_DETALLE, P_C049 => CC.C049); ',
'    END LOOP;',
'EXCEPTION',
'    WHEN OTHERS THEN    ',
'        RAISE_APPLICATION_ERROR(-20000, ''Ha ocurrido un error al guardar los cambios del registro. ''||sqlerrm);',
'END;'))
,p_attribute_02=>'P99_DESCRIPCION_DETALLE,P99_IND_PRODUCTO_ARMADO,P99_NRO_PEDIDO,P99_PRECIO_LISTA_AUX,P99_NRO_PROMO,P99_SEQ_ID,P99_M_COD_ARTICULO,P99_COD_ARTICULO_AUX,P99_COD_UNIDAD_MEDIDA_AUX,P99_M_CANTIDAD,P99_CANTIDAD_UB_AUX,P99_TOTAL_IVA_AUX, P99_M_PRECIO_UNITARIO'
||',P99_DESCUENTO_AUX,P99_M_PORC_RECARGO,P99_PORC_IVA_AUX,P99_RECARGO_AUX,P99_M_PORC_DESCUENTO, P99_MONTO_TOTAL_AUX,P99_NRO_LOTE_AUX,P99_PORC_IVA_AD_AUX,P99_IND_NO_STOCK_AUX,P99_D_COD_SUCURSAL,P99_IVA_ANT_AUX,  P99_IMPORTE_ANT_AUX,P99_MONTO_GRAVADA_10_A'
||'UX,P99_MONTO_GRAVADA_5_AUX,P99_MONTO_EXENTA_AUX'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P99_DESCRIPCION_DETALLE'
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
 p_id=>wwv_flow_imp.id(29393414067747221)
,p_event_id=>wwv_flow_imp.id(29393255036747219)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(24410539880161944)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(29393984798747226)
,p_name=>'DA_ABRE_IMPRIME'
,p_event_sequence=>860
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P99_ABRE_IMPRIME'
,p_condition_element=>'P99_ABRE_IMPRIME'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'1'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(67977394924456701)
,p_event_id=>wwv_flow_imp.id(29393984798747226)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P99_ABRE_IMPRIME'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(29394067655747227)
,p_event_id=>wwv_flow_imp.id(29393984798747226)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(22844632481807401)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(29394232637747229)
,p_name=>'DA_VOLVER_IMPRESION'
,p_event_sequence=>870
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(29394118245747228)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(29394339440747230)
,p_event_id=>wwv_flow_imp.id(29394232637747229)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(22844632481807401)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(29394406877747231)
,p_name=>'DA_IMPRIMIR2'
,p_event_sequence=>880
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(22845279862807407)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(29394508580747232)
,p_event_id=>wwv_flow_imp.id(29394406877747231)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P99_I_COD_USUARIO  := :P99_COD_USUARIO;',
':P99_FECHA := sysdate; ',
':P99_AUX_MSJ := NULL;',
':P99_REPORTE := NULL;',
'VTFACTUR.copia (:P99_COD_EMPRESA, :P99_TIP_COMPROBANTE, :P99_SER_COMPROBANTE, :P99_NRO_COMPROBANTE);',
'DECLARE',
'	VCONTADO      VARCHAR2(60):=''N'';',
'	vTIPO_ENTREGA VARCHAR2(60):=''N'';',
'	vcondicion    VARCHAR2(60):=''0'';',
'	vcodflete     VARCHAR2(60):=''0'';',
'    vpagare       VARCHAR2(500);',
'BEGIN',
'	BEGIN ',
'		Select ''S'' ',
'		  INTO VCONTADO ',
'		  from vt_comprobantes_cabecera c ',
'		 where c.cod_empresa     = :P99_COD_EMPRESA ',
'		   and c.tip_comprobante = :P99_TIP_COMPROBANTE',
'		   and c.ser_comprobante = :P99_SER_COMPROBANTE',
'	  	   and c.nro_comprobante = :P99_NRO_COMPROBANTE',
'			 --   AND C.NRO_MOV_CAJ IS   NULL  ',
'		   AND C.TIP_COMPROBANTE = ''FCO'';',
'	EXCEPTION',
'		WHEN OTHERS THEN ',
'				VCONTADO:=''N'';',
'	END;',
'	VCONTADO:=''N'';',
'	BEGIN',
'	    select TIPO_ENTREGA , cod_flete',
'	      into vTIPO_ENTREGA ,vcodflete',
'	      from vt_pedidos_cabecera c',
'	     where c.cod_empresa     = :P99_COD_EMPRESA',
'	       and c.tip_comprobante = :P99_TIP_COMPROBANTE_REF',
'	       and c.ser_comprobante = :P99_SER_COMPROBANTE_REF',
'	       and c.nro_comprobante   = :P99_NRO_COMPROBANTE_REF;',
'	EXCEPTION ',
'	    when others then ',
'	  	    vTIPO_ENTREGA:=''N'';    ',
'	END;',
'	BEGIN ',
'		Select COD_CONDICION_VENTA',
'		  INTO vcondicion',
'		  from vt_comprobantes_cabecera c ',
'		 where c.cod_empresa     = :P99_COD_EMPRESA ',
'		   and c.tip_comprobante = :P99_TIP_COMPROBANTE',
'		   and c.ser_comprobante = :P99_SER_COMPROBANTE',
'		   and c.nro_comprobante = :P99_NRO_COMPROBANTE;',
'	EXCEPTION',
'		WHEN OTHERS THEN ',
'			vcondicion:=''0'';',
'	END;',
'	IF VCONTADO=''N'' THEN		',
'        IF (:P99_COD_CONDICION_VENTA=''36'' or vcondicion=''36'') and :P99_TIP_COMPROBANTE=''FCO'' THEN',
'  		    :P99_PAGADO := ''S'';',
'       	ELSE   		',
'      		:P99_PAGADO := ''N'';',
'       	END IF;							',
'		IF ( :P99_COD_SUCURSAL IN (''01'',''13'',''02'',''15'',''07'',''16'',''18'')and (NVL(vTIPO_ENTREGA,''NN'')=''CR'' or (vcondicion=''60'' and vcodflete=''12''))) ',
'			or (:P99_COD_SUCURSAL IN (''190'',''209'',''03'',''210'') and NVL(vTIPO_ENTREGA,''NN'')=''CR''  and vcodflete=''3'') THEN  	  		',
'			:P99_REPORTE :=''VTIMPFAC_CANON_FE_1'';	',
'			IF nvl(:P99_PAGARE,''N'')=''N'' or :P99_COD_MOTIVO is not null THEN	 ',
'',
'            BEGIN',
'             select f.valor',
'              INTO :P99_REPORTE',
'              from parametros_generales f ',
'             WHERE F.PARAMETRO = ''FACTURA_REP2_NOMB''',
'               AND F.COD_MODULO = ''VT'';',
'              EXCEPTION ',
'              WHEN others THEN',
'                null;',
'            END;',
'',
'',
'				--:P99_REPORTE :=''VTIMPFAC_CANON_FE_2'';',
'			ELSE	',
'                --  	LLAMA_PAGARE;	',
'				/*:global.cod_modulo := ''CC'' ;',
'                  call_form( ''CCCOMCUO'', NO_HIDE, NO_REPLACE, NO_QUERY_ONLY, pl_id );*/',
'',
'                :P99_PAGARE := vtfactur.pagare(:P99_COD_EMPRESA,:P99_TIP_COMPROBANTE, :P99_SER_COMPROBANTE, :P99_NRO_COMPROBANTE);     ',
'                BEGIN',
'             select f.valor',
'              INTO :P99_REPORTE',
'              from parametros_generales f ',
'             WHERE F.PARAMETRO = ''FACTURA_REP2_NOMB''',
'               AND F.COD_MODULO = ''VT'';',
'              EXCEPTION ',
'              WHEN others THEN',
'                null;',
'            END;          ',
'            	--:global.cod_modulo := ''VT'' ;',
'                --:P99_REPORTE :=''VTIMPFAC_CANON_FE_2''; ',
'			END IF;  	',
'		ELSE  		',
'            :P99_REIMPRESO := ''S'';',
'            BEGIN',
'             select f.valor',
'              INTO :P99_REPORTE',
'              from parametros_generales f ',
'             WHERE F.PARAMETRO = ''FACTURA_REP_NOMB''',
'               AND F.COD_MODULO = ''VT'';',
'              EXCEPTION ',
'              WHEN others THEN',
'                null;',
'            END;',
'		    --:P99_REPORTE :=''VTIMPFAC_CANON_FE'';',
'		END IF;  ',
'	ELSE',
'		:P99_AUX_MSJ := ''Debe guardar la forma de cobro para poder imprimir la factura. '';',
'	END IF;',
'end;     ',
''))
,p_attribute_02=>'P99_COD_CONDICION_VENTA,P99_COD_SUCURSAL,P99_PAGARE,P99_COD_MOTIVO,P99_COD_USUARIO,P99_COD_EMPRESA,P99_TIP_COMPROBANTE,P99_SER_COMPROBANTE,P99_NRO_COMPROBANTE,P99_TIP_COMPROBANTE_REF,P99_SER_COMPROBANTE_REF,P99_NRO_COMPROBANTE_REF'
,p_attribute_03=>'P99_PAGARE,P99_PAGADO,P99_REIMPRESO,P99_FECHA ,P99_I_COD_USUARIO,P99_AUX_MSJ,P99_REPORTE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(29394686502747233)
,p_event_id=>wwv_flow_imp.id(29394406877747231)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P99_AUX_MSJ.'
,p_attribute_02=>'Error'
,p_attribute_03=>'warning'
,p_attribute_04=>'fa-warning'
,p_attribute_06=>'Aceptar'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P99_AUX_MSJ'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(29394767309747234)
,p_event_id=>wwv_flow_imp.id(29394406877747231)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(22844632481807401)
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P99_AUX_MSJ'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(29394862111747235)
,p_name=>'DA_BUSCAR'
,p_event_sequence=>890
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(23498347213061407)
,p_condition_element=>'P99_NRO_COMPROBANTE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(29394960614747236)
,p_event_id=>wwv_flow_imp.id(29394862111747235)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    SELECT COD_SUCURSAL, FEC_COMPROBANTE, COD_CLIENTE,',
'           COD_VENDEDOR,TIP_COMPROBANTE_REF,',
'           SER_COMPROBANTE_REF,NRO_COMPROBANTE_REF,COD_CONDICION_VENTA, ',
'           COD_LISTA_PRECIO,DESCUENTO,COD_MONEDA,TIP_CAMBIO,NRO_MOV_CAJ,',
'           ESTADO,FEC_ESTADO,COD_USUARIO,FEC_ALTA, CAMBIO_MONEDA_PRECIO, TIP_CAMBIO_COMPRA,COMENTARIO,GRU_COMPROBANTE,',
'		   ENTREGA_INICIAL, COD_SECTOR,TEL_CLIENTE,RUC,DIR_CLIENTE,COD_DIRECCION,COD_USUARIO_ANU,COD_MOTIVO_ANU, ',
'           AJUSTE_IVA,COD_CUSTODIO,SENIA,IND_EXENTO_AD,HORA_ALTA,RECARGO,CONTROL_FIN,FECHA_INICIAL,FECHA_FINAL,',
'           IND_IMPRESO,IND_ANTICIPO_OT,IMPORTE_CAPITAL,IMPORTE_INTERES,COD_CONDICION_VENTA, COD_VENDEDOR       ',
'      INTO :P99_COD_SUCURSAL, :P99_FEC_COMPROBANTE,:P99_COD_CLIENTE, ',
'           :P99_COD_VENDEDOR,:P99_TIP_COMPROBANTE_REF, ',
'           :P99_SER_COMPROBANTE_REF,:P99_NRO_COMPROBANTE_REF,:P99_COD_CONDICION_VENTA,',
'           :P99_COD_LISTA_PRECIO,:P99_DESCUENTO,:P99_COD_MONEDA,:P99_C_TIP_CAMBIO,:P99_NRO_MOV_CAJ,',
'           :P99_ESTADO,:P99_FEC_ESTADO,:P99_COD_USUARIO,:P99_FEC_ALTA,:P99_CAMBIO_MONEDA_PRECIO,:P99_TIP_CAMBIO_COMPRA,:P99_COMENTARIO,:P99_GRU_COMPROBANTE, ',
'           :P99_ENTREGA_INICIAL,:P99_COD_SECTOR,:P99_TEL_CLIENTE,:P99_RUC,:P99_DIR_CLIENTE,:P99_COD_DIRECCION,:P99_COD_USUARIO_ANU,:P99_COD_MOTIVO_ANU, ',
'           :P99_AJUSTE_IVA,:P99_COD_CUSTODIO,:P99_SENIA,:P99_IND_EXENTO_AD,:P99_HORA_ALTA,:P99_RECARGO,:P99_CONTROL_FIN,:P99_FECHA_INICIAL,:P99_FECHA_FINAL,',
'           :P99_IND_IMPRESO, :P99_IND_ANTICIPO_OT,:P99_IMPORTE_CAPITAL,:P99_IMPORTE_INTERES,',
'           :P99_COD_CONDICION_VENTA,:P99_COD_VENDEDOR',
'      FROM VT_COMPROBANTES_CABECERA',
'     WHERE COD_EMPRESA = :P99_COD_EMPRESA',
'      -- ESTE AND ( :P99_P_TIPO is null or tip_comprobante = :P99_P_TIPO ) ',
'     -- ESTE  AND ( tip_comprobante = :P99_TIP_CONTADO or tip_comprobante = :P99_TIP_CREDITO or tip_comprobante = :P99_TIP_TICKET or tip_comprobante = :P99_TIP_DEBITO) ',
'       AND ser_comprobante = :P99_SER_COMPROBANTE ',
'       AND nro_comprobante = :P99_NRO_COMPROBANTE',
'',
'       AND tip_comprobante = :P99_TIP_COMPROBANTE;',
'       --AND ( :P99_P_TIP_COMPROBANTE is null or tip_comprobante = :P99_P_TIP_COMPROBANTE) ',
'      -- AND ( :P99_P_SER_COMPROBANTE is null or ser_comprobante = :P99_P_SER_COMPROBANTE)',
'       --AND ( :P99_P_NRO_COMPROBANTE is null or nro_comprobante = :P99_P_NRO_COMPROBANTE)     ',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        RAISE_APPLICATION_ERROR(-20000, ''Ha ocurrido un error al recuperar los datos de la tabla de cabecera. ''||sqlerrm);',
'END;        '))
,p_attribute_02=>'P99_COD_EMPRESA,P99_TIP_CONTADO,P99_TIP_CREDITO,P99_TIP_TICKET,P99_TIP_DEBITO,P99_SER_COMPROBANTE,P99_NRO_COMPROBANTE,P99_TIP_COMPROBANTE,P99_P_TIPO,P99_P_NRO_COMPROBANTE,P99_P_TIP_COMPROBANTE,P99_P_SER_COMPROBANTE'
,p_attribute_03=>'P99_SER_COMPROBANTE_REF,P99_FEC_COMPROBANTE,P99_COD_CLIENTE,  P99_COD_VENDEDOR,P99_TIP_COMPROBANTE_REF,P99_NRO_COMPROBANTE_REF,P99_COD_CONDICION_VENTA, P99_COD_LISTA_PRECIO,P99_DESCUENTO,P99_COD_MONEDA,P99_C_TIP_CAMBIO,P99_NRO_MOV_CAJ, P99_ESTADO,P99'
||'_FEC_ESTADO,P99_COD_USUARIO,P99_FEC_ALTA,P99_CAMBIO_MONEDA_PRECIO,P99_TIP_CAMBIO_COMPRA,P99_COMENTARIO,P99_GRU_COMPROBANTE,  P99_ENTREGA_INICIAL,P99_COD_SECTOR,P99_TEL_CLIENTE,P99_RUC,P99_DIR_CLIENTE,P99_COD_DIRECCION,P99_COD_USUARIO_ANU,P99_COD_MOTI'
||'VO_ANU,  P99_AJUSTE_IVA,P99_COD_CUSTODIO,P99_SENIA,P99_IND_EXENTO_AD,P99_HORA_ALTA,P99_RECARGO,P99_CONTROL_FIN,P99_FECHA_INICIAL,P99_FECHA_FINAL, P99_IND_IMPRESO, P99_IND_ANTICIPO_OT,P99_IMPORTE_CAPITAL,P99_IMPORTE_INTERES,P99_COD_SUCURSAL,P99_COD_VE'
||'NDEDOR'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(101873593837708139)
,p_event_id=>wwv_flow_imp.id(29394862111747235)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'PLUGIN_COM.FOS.NOTIFICATIONS'
,p_attribute_01=>'warning'
,p_attribute_02=>'static'
,p_attribute_03=>unistr('Atenci\00F3n')
,p_attribute_04=>unistr('Para realizar la b\00FAsqueda debe ingresar el n\00FAmero de factura')
,p_attribute_07=>'autodismiss:prevent-duplicates:remove-notifications:escape-html:newest-on-top:client-side-substitutions:dismiss-on-click:dismiss-on-button'
,p_attribute_08=>'top-right'
,p_attribute_09=>'Y'
,p_attribute_11=>'5'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(29395061546747237)
,p_event_id=>wwv_flow_imp.id(29394862111747235)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P99_CARGA_DETALLE := ''N''; ',
':P99_CALCULA_IVA := VTFACTUR.busca_calcula_iva(:P99_COD_EMPRESA,:P99_TIP_COMPROBANTE, :P99_SER_COMPROBANTE);  ',
'BEGIN',
'VTFACTUR.post_query_cabecera1(:P99_COD_EMPRESA,:P99_COD_CLIENTE,:P99_COD_ENCARGADO_FAC, :P99_COD_MONEDA,',
'                               :P99_COD_CONDICION_VENTA,:P99_TIP_COMPROBANTE,:P99_SER_COMPROBANTE,',
'                               :P99_NRO_COMPROBANTE,:P99_TIP_COMPROBANTE_REF,:P99_SER_COMPROBANTE_REF,',
'                               :P99_NRO_COMPROBANTE_REF,:P99_CLIENTE_PERSONA,:P99_MAX_ORDEN,',
'                               :P99_RECARGO,:P99_CANTIDAD_IMPRESION,:P99_TIPO_IMPUESTO, ',
'                               :P99_COD_ZONA,:P99_TIP_CLIENTE,:P99_DESC_ENCARGADO_FAC,',
'                               :P99_DECIMALES,:P99_NRO_CUOTAS);',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        RAISE_APPLICATION_ERROR(-20000, ''Ha ocurrido un error recuperando datos del comprobante. ''||sqlerrm);',
'END;                                             ',
':P99_ESTADO_ANT := :P99_ESTADO;',
'IF :P99_REFERENCIA IS NOT NULL THEN',
'  BEGIN',
'    Select translate( ltrim( rtrim( to_char( nvl( :P99_C_TIP_CAMBIO, 0 ) ) ) ), ''1234567890'', :P99_REFERENCIA )',
'       into :P99_TIP_CAMBIO',
'       from dual;',
'  END;',
'  BEGIN',
'    Select translate( ltrim( rtrim( to_char( nvl( :P99_C_CAMBIO_MONEDA_PRECIO, 0 ) ) ) ), ''1234567890'', :P99_REFERENCIA )',
'       into :P99_CAMBIO_MONEDA_PRECIO',
'       from dual;',
'  END;',
'ELSE',
'  BEGIN',
'    Select translate( ltrim( rtrim( to_char( nvl( :P99_C_TIP_CAMBIO, 0 ) ) ) ), ''1234567890'', ''1234567890'' )',
'       into :P99_TIP_CAMBIO',
'       from dual; ',
'  END;',
'  BEGIN      ',
'    Select translate( ltrim( rtrim( to_char( nvl( :P99_C_CAMBIO_MONEDA_PRECIO, 0 ) ) ) ), ''1234567890'', ''1234567890'' )',
'       into :P99_CAMBIO_MONEDA_PRECIO',
'       from dual;',
'  END;',
'END IF;',
':P99_OLD_ESTADO := :P99_ESTADO;',
'BEGIN',
'  Select sum( monto_total ),',
'         sum( decode( nvl( total_iva, 0 ), 0, 0, monto_total ) ),',
'         sum( decode( nvl( total_iva, 0 ), 0, monto_total, 0 ) ),',
'         sum( total_iva )',
'    into :P99_SUBTOTAL_PARCIAL,:P99_GRAVADAS_PARCIAL,:P99_EXENTAS_PARCIAL,:P99_IVA_PARCIAL',
'    from vt_comprobantes_detalle',
'   where cod_empresa = :P99_COD_EMPRESA',
'     and tip_comprobante = :P99_TIP_COMPROBANTE',
'     and ser_comprobante = :P99_SER_COMPROBANTE',
'     and nro_comprobante = :P99_NRO_COMPROBANTE;',
'EXCEPTION',
'  when others then ',
'    :P99_SUBTOTAL_PARCIAL := 0;',
'    :P99_GRAVADAS_PARCIAL := 0;',
'    :P99_EXENTAS_PARCIAL:= 0;',
'    :P99_IVA_PARCIAL:= 0;',
'END;',
'IF nvl( TO_NUMBER(:P99_SUBTOTAL_PARCIAL), 0 ) > 0 THEN',
'    :P99_PORCENTAJE_DESCUENTO := nvl( TO_NUMBER(:P99_DESCUENTO), 0 ) / nvl( TO_NUMBER(:P99_SUBTOTAL_PARCIAL), 1 );',
'END IF;',
'if nvl(TO_NUMBER(:P99_IVA_PARCIAL),0) > 0 then ',
'    :P99_TOTAL_IVA := round( nvl( TO_NUMBER(:P99_IVA_PARCIAL), 0 ) *',
'                              ( 1 - nvl( TO_NUMBER(:P99_PORCENTAJE_DESCUENTO), 0 ) ) +',
'                                    nvl( TO_NUMBER(:P99_AJUSTE_IVA), 0 ),',
'                                    nvl( TO_NUMBER(:P99_DECIMALES), 0 ) );',
'else',
'    :P99_TOTAL_IVA := round( nvl( TO_NUMBER(:P99_IVA_PARCIAL), 0 ) *( 1 - nvl( TO_NUMBER(:P99_PORCENTAJE_DESCUENTO), 0 )), nvl( TO_NUMBER(:P99_DECIMALES), 0 ) );',
'end if ;',
':P99_SUBTOTAL := round( nvl( TO_NUMBER(:P99_SUBTOTAL_PARCIAL), 0 ) * ( 1 - nvl( TO_NUMBER(:P99_PORCENTAJE_DESCUENTO), 0 ) ), TO_NUMBER(:P99_DECIMALES) );',
':P99_GRAVADAS := round( nvl( TO_NUMBER(:P99_GRAVADAS_PARCIAL), 0 ) * ( 1 - nvl( TO_NUMBER(:P99_PORCENTAJE_DESCUENTO), 0 ) ), TO_NUMBER(:P99_DECIMALES) );',
':P99_EXENTAS  := round( nvl( TO_NUMBER(:P99_EXENTAS_PARCIAL), 0 ) * ( 1 - nvl( TO_NUMBER(:P99_PORCENTAJE_DESCUENTO), 0 ) ), TO_NUMBER(:P99_DECIMALES) );',
':P99_TOTAL := round( TO_NUMBER(:P99_SUBTOTAL) + TO_NUMBER(:P99_TOTAL_IVA), TO_NUMBER(:P99_DECIMALES) );',
'',
''))
,p_attribute_02=>'P99_COD_EMPRESA,P99_COD_CLIENTE,P99_COD_ENCARGADO_FAC,P99_COD_MONEDA,P99_COD_CONDICION_VENTA, P99_TIP_COMPROBANTE,P99_SER_COMPROBANTE,P99_NRO_COMPROBANTE,P99_TIP_COMPROBANTE_REF, P99_SER_COMPROBANTE_REF,P99_NRO_COMPROBANTE_REF,P99_C_TIP_CAMBIO,P99_ES'
||'TADO,P99_C_CAMBIO_MONEDA_PRECIO,P99_REFERENCIA,P99_DESCUENTO'
,p_attribute_03=>'P99_CLIENTE_PERSONA,P99_MAX_ORDEN,P99_RECARGO,P99_CANTIDAD_IMPRESION, P99_TIPO_IMPUESTO,P99_COD_ZONA,P99_TIP_CLIENTE,P99_DESC_ENCARGADO_FAC, P99_DECIMALES,P99_NRO_CUOTAS,P99_SUBTOTAL,P99_GRAVADAS,P99_EXENTAS,P99_TOTAL, P99_TOTAL_IVA,P99_PORCENTAJE_DE'
||'SCUENTO,P99_SUBTOTAL_PARCIAL,P99_GRAVADAS_PARCIAL,P99_EXENTAS_PARCIAL,P99_IVA_PARCIAL,P99_OLD_ESTADO,P99_TIP_CAMBIO,P99_CAMBIO_MONEDA_PRECIO,P99_CALCULA_IVA,P99_CARGA_DETALLE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(29396098233747247)
,p_event_id=>wwv_flow_imp.id(29394862111747235)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'VTFACTUR.recupera_detalle(PI_COD_EMPRESA           => :P99_COD_EMPRESA,',
'                          PI_TIP_CLIENTE           => :P99_TIP_CLIENTE,',
'                          PI_TIP_COMPROBANTE       => :P99_TIP_COMPROBANTE,',
'                          PI_SER_COMPROBANTE       => :P99_SER_COMPROBANTE,',
'                          PI_NRO_COMPROBANTE       => :P99_NRO_COMPROBANTE);',
':P99_ESTA_CONSULTANDO := ''N'' ;'))
,p_attribute_02=>'P99_COD_EMPRESA,P99_TIP_CLIENTE,P99_TIP_COMPROBANTE,P99_SER_COMPROBANTE,P99_NRO_COMPROBANTE'
,p_attribute_03=>'P99_ESTA_CONSULTANDO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(122667647627248607)
,p_event_id=>wwv_flow_imp.id(29394862111747235)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'--WHEN NEW ITEM INSTANCE',
':P99_OLD_CLIENTE := :P99_COD_CLIENTE;',
'',
'--WHEN-VALIDATE-ITEM',
'--IF nvl( :P99_CONSULTA, ''N'' ) = ''N''  and ( :P99_COD_CLIENTE is not null and :P99_COD_CLIENTE <> :P99_COD_CLIENTE_OCA ) THEN    ',
'    BEGIN',
'        vtfactur.busca_cliente(:P99_COD_EMPRESA,:P99_COD_CLIENTE,:P99_ESTADO_CLIENTE,:P99_COD_ZONA,  ',
'                               :P99_TIP_CLIENTE,:P99_CLIENTE_PERSONA,:P99_NRO_INSCRIPCION_AD, ',
'                               :P99_IND_EXENTO_AD,:P99_DESC_OBSERVACION,',
'                               :P99_TIPO_IMPUESTO,:P99_IMPRIME_CONDICION, :P99_NOM_CLIENTE);',
'    EXCEPTION',
'        when others then',
'            NULL;',
'    END;                       ',
'--END IF;',
'if  :P99_TIP_COMPROBANTE in (''TKT'',''FCO'')AND :P99_TIP_COMPROBANTE_REF NOT IN (''PED'') THEN     ',
'    :P99_COD_VENDEDOR:=NVL(:P99_COD_VENDEDOR,''19'');',
'    :P99_COD_CONDICION_VENTA:=''20'';',
'    :P99_COD_MONEDA:=''1'';',
'    :P99_COD_LISTA_PRECIO:=''1'';',
'    IF :P99_TIP_COMPROBANTE_REF=''PER'' THEN',
'        :P99_COD_VENDEDOR:=nvl(:P99_COD_VENDEDOR,''126'');',
'    END IF;    ',
'END IF;	',
'if :P99_TIP_COMPROBANTE_REF=''MAN'' THEN',
'     :P99_COD_VENDEDOR:=''115'';',
'END IF;',
'BEGIN',
'    vtfactur.busca_autorizacion(:P99_COD_EMPRESA,:P99_TIP_COMPROBANTE_REF,:P99_SER_COMPROBANTE_REF,:P99_NRO_COMPROBANTE_REF,:P99_TIP_COMPROBANTE,:P99_COD_SUCURSAL,:P99_COD_CONDICION_VENTA,:P99_COD_CONDICION_VENTA);',
'EXCEPTION',
'    when others then',
'        NULL;',
'END; ',
'declare',
'    vdescuento_cph varchar2(10);',
'    verror exception;',
'begin',
'    vdescuento_cph:= f_descuento_cph(:P99_COD_CLIENTE);',
'    if NVL(vdescuento_cph,''N'')=''N''THEN',
'        raise verror ;',
'    END IF;',
'EXCEPTION',
'    when verror then',
'        raise_application_error(-20000,''El cliente llego al limite del descuento otorgado.'');',
'    WHEN OTHERS THEN ',
'    NULL;',
'end;    ',
'BEGIN',
'    vtfactur.datos_cliente(:P99_COD_EMPRESA,:P99_COD_CLIENTE,:P99_NRO_INSCRIPCION_AD, :P99_IND_EXENTO_AD,:P99_RUC,:P99_COD_DIRECCION,:P99_DIR_CLIENTE,:P99_TEL_CLIENTE,:P99_TIPO_IMPUESTO);',
'EXCEPTION',
'    when others then',
'        NULL;',
'END; ',
''))
,p_attribute_02=>'P99_COD_DIRECCION,P99_COD_SUCURSAL,P99_COD_EMPRESA,P99_COD_CLIENTE,P99_CONSULTA,P99_COD_CLIENTE_OCA,P99_TIP_COMPROBANTE,  P99_COD_SECTOR,P99_COD_CONDICION_VENTA,P99_TIP_COMPROBANTE_REF,P99_VT_COND_CONTADO,  P99_SER_COMPROBANTE_REF,P99_NRO_COMPROBANTE'
||'_REF'
,p_attribute_03=>'P99_NOM_CLIENTE,P99_COD_VENDEDOR,P99_COD_CONDICION_VENTA,P99_COD_MONEDA,P99_COD_LISTA_PRECIO, P99_ESTADO_CLIENTE,P99_COD_ZONA,P99_TIP_CLIENTE,P99_CLIENTE_PERSONA,  P99_NRO_INSCRIPCION_AD,  P99_IND_EXENTO_AD,P99_TEL_CLIENTE, P99_DESC_OBSERVACION,P99_T'
||'IPO_IMPUESTO, P99_IMPRIME_CONDICION,P99_OLD_CLIENTE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(122667720019248608)
,p_event_id=>wwv_flow_imp.id(29394862111747235)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    VTFACTUR.datos_cliente1(PI_TIP_COMPROBANTE     => :P99_TIP_COMPROBANTE,',
'                        PI_COD_SECTOR          => :P99_COD_SECTOR,',
'                        PI_COD_CONDICION_VENTA => :P99_COD_CONDICION_VENTA,',
'                        PI_TIP_COMPROBANTE_REF => :P99_TIP_COMPROBANTE_REF,',
'                        PI_VT_COND_CONTADO     => :P99_VT_COND_CONTADO, --VARIABLES',
'                        PI_ESTADO_CLIENTE      => :P99_ESTADO_CLIENTE, --VARIABLES',
'                        PI_CLIENTE_PERSONA     => :P99_CLIENTE_PERSONA,--VARIABLES',
'                        PO_RUC                 => :P99_RUC,',
'                        PI_COD_DIRECCION       => :P99_COD_DIRECCION,',
'                        PO_COD_DIRECCION       => :P99_COD_DIRECCION,',
'                        PO_DIR_CLIENTE         => :P99_DIR_CLIENTE);',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        NULL;',
'END;',
'                              '))
,p_attribute_02=>'P99_TIP_COMPROBANTE,P99_COD_SECTOR,:P99_COD_CONDICION_VENTA,P99_TIP_COMPROBANTE_REF,                                P99_VT_COND_CONTADO,P99_COD_DIRECCION,P99_ESTADO_CLIENTE'
,p_attribute_03=>'P99_RUC,P99_COD_DIRECCION,P99_DIR_CLIENTE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30784046129619843)
,p_event_id=>wwv_flow_imp.id(29394862111747235)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(24410539880161944)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30784652150619849)
,p_event_id=>wwv_flow_imp.id(29394862111747235)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(23498898281061412)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(34011754253371450)
,p_event_id=>wwv_flow_imp.id(29394862111747235)
,p_event_result=>'TRUE'
,p_action_sequence=>90
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(23498456223061408)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30784706873619850)
,p_event_id=>wwv_flow_imp.id(29394862111747235)
,p_event_result=>'TRUE'
,p_action_sequence=>100
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(23498759414061411)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(207199720269570104)
,p_name=>'DA_ACCION_CONSULTA'
,p_event_sequence=>900
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P99_ACCION_CONSULTA'
,p_condition_element=>'P99_ACCION_CONSULTA'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'1'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(207199839339570105)
,p_event_id=>wwv_flow_imp.id(207199720269570104)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    SELECT COD_SUCURSAL, FEC_COMPROBANTE, COD_CLIENTE,',
'           COD_VENDEDOR,TIP_COMPROBANTE_REF,',
'           SER_COMPROBANTE_REF,NRO_COMPROBANTE_REF,COD_CONDICION_VENTA, ',
'           COD_LISTA_PRECIO,DESCUENTO,COD_MONEDA,TIP_CAMBIO,NRO_MOV_CAJ,',
'           ESTADO,FEC_ESTADO,COD_USUARIO,FEC_ALTA, CAMBIO_MONEDA_PRECIO, TIP_CAMBIO_COMPRA,COMENTARIO,GRU_COMPROBANTE,',
'		   ENTREGA_INICIAL, COD_SECTOR,TEL_CLIENTE,RUC,DIR_CLIENTE,COD_DIRECCION,COD_USUARIO_ANU,COD_MOTIVO_ANU, ',
'           AJUSTE_IVA,COD_CUSTODIO,SENIA,IND_EXENTO_AD,HORA_ALTA,RECARGO,CONTROL_FIN,FECHA_INICIAL,FECHA_FINAL,',
'           IND_IMPRESO,IND_ANTICIPO_OT,IMPORTE_CAPITAL,IMPORTE_INTERES,COD_CONDICION_VENTA, COD_VENDEDOR       ',
'      INTO :P99_COD_SUCURSAL, :P99_FEC_COMPROBANTE,:P99_COD_CLIENTE, ',
'           :P99_COD_VENDEDOR,:P99_TIP_COMPROBANTE_REF, ',
'           :P99_SER_COMPROBANTE_REF,:P99_NRO_COMPROBANTE_REF,:P99_COD_CONDICION_VENTA,',
'           :P99_COD_LISTA_PRECIO,:P99_DESCUENTO,:P99_COD_MONEDA,:P99_C_TIP_CAMBIO,:P99_NRO_MOV_CAJ,',
'           :P99_ESTADO,:P99_FEC_ESTADO,:P99_COD_USUARIO,:P99_FEC_ALTA,:P99_CAMBIO_MONEDA_PRECIO,:P99_TIP_CAMBIO_COMPRA,:P99_COMENTARIO,:P99_GRU_COMPROBANTE, ',
'           :P99_ENTREGA_INICIAL,:P99_COD_SECTOR,:P99_TEL_CLIENTE,:P99_RUC,:P99_DIR_CLIENTE,:P99_COD_DIRECCION,:P99_COD_USUARIO_ANU,:P99_COD_MOTIVO_ANU, ',
'           :P99_AJUSTE_IVA,:P99_COD_CUSTODIO,:P99_SENIA,:P99_IND_EXENTO_AD,:P99_HORA_ALTA,:P99_RECARGO,:P99_CONTROL_FIN,:P99_FECHA_INICIAL,:P99_FECHA_FINAL,',
'           :P99_IND_IMPRESO, :P99_IND_ANTICIPO_OT,:P99_IMPORTE_CAPITAL,:P99_IMPORTE_INTERES,',
'           :P99_COD_CONDICION_VENTA,:P99_COD_VENDEDOR',
'      FROM VT_COMPROBANTES_CABECERA',
'     WHERE COD_EMPRESA = :P99_COD_EMPRESA',
'      -- ESTE AND ( :P99_P_TIPO is null or tip_comprobante = :P99_P_TIPO ) ',
'     -- ESTE  AND ( tip_comprobante = :P99_TIP_CONTADO or tip_comprobante = :P99_TIP_CREDITO or tip_comprobante = :P99_TIP_TICKET or tip_comprobante = :P99_TIP_DEBITO) ',
'       AND ser_comprobante = :P99_SER_COMPROBANTE ',
'       AND nro_comprobante = :P99_NRO_COMPROBANTE',
'',
'       AND tip_comprobante = :P99_TIP_COMPROBANTE;',
'       --AND ( :P99_P_TIP_COMPROBANTE is null or tip_comprobante = :P99_P_TIP_COMPROBANTE) ',
'      -- AND ( :P99_P_SER_COMPROBANTE is null or ser_comprobante = :P99_P_SER_COMPROBANTE)',
'       --AND ( :P99_P_NRO_COMPROBANTE is null or nro_comprobante = :P99_P_NRO_COMPROBANTE)     ',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        RAISE_APPLICATION_ERROR(-20000, ''Ha ocurrido un error al recuperar los datos de la tabla de cabecera. ''||sqlerrm);',
'END;        '))
,p_attribute_02=>'P99_COD_EMPRESA,P99_TIP_CONTADO,P99_TIP_CREDITO,P99_TIP_TICKET,P99_TIP_DEBITO,P99_SER_COMPROBANTE,P99_NRO_COMPROBANTE,P99_TIP_COMPROBANTE,P99_P_TIPO,P99_P_NRO_COMPROBANTE,P99_P_TIP_COMPROBANTE,P99_P_SER_COMPROBANTE'
,p_attribute_03=>'P99_SER_COMPROBANTE_REF,P99_FEC_COMPROBANTE,P99_COD_CLIENTE,  P99_COD_VENDEDOR,P99_TIP_COMPROBANTE_REF,P99_NRO_COMPROBANTE_REF,P99_COD_CONDICION_VENTA, P99_COD_LISTA_PRECIO,P99_DESCUENTO,P99_COD_MONEDA,P99_C_TIP_CAMBIO,P99_NRO_MOV_CAJ, P99_ESTADO,P99'
||'_FEC_ESTADO,P99_COD_USUARIO,P99_FEC_ALTA,P99_CAMBIO_MONEDA_PRECIO,P99_TIP_CAMBIO_COMPRA,P99_COMENTARIO,P99_GRU_COMPROBANTE,  P99_ENTREGA_INICIAL,P99_COD_SECTOR,P99_TEL_CLIENTE,P99_RUC,P99_DIR_CLIENTE,P99_COD_DIRECCION,P99_COD_USUARIO_ANU,P99_COD_MOTI'
||'VO_ANU,  P99_AJUSTE_IVA,P99_COD_CUSTODIO,P99_SENIA,P99_IND_EXENTO_AD,P99_HORA_ALTA,P99_RECARGO,P99_CONTROL_FIN,P99_FECHA_INICIAL,P99_FECHA_FINAL, P99_IND_IMPRESO, P99_IND_ANTICIPO_OT,P99_IMPORTE_CAPITAL,P99_IMPORTE_INTERES,P99_COD_SUCURSAL,P99_COD_VE'
||'NDEDOR'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(207199977516570106)
,p_event_id=>wwv_flow_imp.id(207199720269570104)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'PLUGIN_COM.FOS.NOTIFICATIONS'
,p_attribute_01=>'warning'
,p_attribute_02=>'static'
,p_attribute_03=>unistr('Atenci\00F3n')
,p_attribute_04=>unistr('Para realizar la b\00FAsqueda debe ingresar el n\00FAmero de factura')
,p_attribute_07=>'autodismiss:prevent-duplicates:remove-notifications:escape-html:newest-on-top:client-side-substitutions:dismiss-on-click:dismiss-on-button'
,p_attribute_08=>'top-right'
,p_attribute_09=>'Y'
,p_attribute_11=>'5'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(207200078162570107)
,p_event_id=>wwv_flow_imp.id(207199720269570104)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P99_CARGA_DETALLE := ''N''; ',
':P99_CALCULA_IVA := VTFACTUR.busca_calcula_iva(:P99_COD_EMPRESA,:P99_TIP_COMPROBANTE, :P99_SER_COMPROBANTE);  ',
'BEGIN',
'VTFACTUR.post_query_cabecera1(:P99_COD_EMPRESA,:P99_COD_CLIENTE,:P99_COD_ENCARGADO_FAC, :P99_COD_MONEDA,',
'                               :P99_COD_CONDICION_VENTA,:P99_TIP_COMPROBANTE,:P99_SER_COMPROBANTE,',
'                               :P99_NRO_COMPROBANTE,:P99_TIP_COMPROBANTE_REF,:P99_SER_COMPROBANTE_REF,',
'                               :P99_NRO_COMPROBANTE_REF,:P99_CLIENTE_PERSONA,:P99_MAX_ORDEN,',
'                               :P99_RECARGO,:P99_CANTIDAD_IMPRESION,:P99_TIPO_IMPUESTO, ',
'                               :P99_COD_ZONA,:P99_TIP_CLIENTE,:P99_DESC_ENCARGADO_FAC,',
'                               :P99_DECIMALES,:P99_NRO_CUOTAS);',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        RAISE_APPLICATION_ERROR(-20000, ''Ha ocurrido un error recuperando datos del comprobante. ''||sqlerrm);',
'END;                                             ',
':P99_ESTADO_ANT := :P99_ESTADO;',
'IF :P99_REFERENCIA IS NOT NULL THEN',
'  BEGIN',
'    Select translate( ltrim( rtrim( to_char( nvl( :P99_C_TIP_CAMBIO, 0 ) ) ) ), ''1234567890'', :P99_REFERENCIA )',
'       into :P99_TIP_CAMBIO',
'       from dual;',
'  END;',
'  BEGIN',
'    Select translate( ltrim( rtrim( to_char( nvl( :P99_C_CAMBIO_MONEDA_PRECIO, 0 ) ) ) ), ''1234567890'', :P99_REFERENCIA )',
'       into :P99_CAMBIO_MONEDA_PRECIO',
'       from dual;',
'  END;',
'ELSE',
'  BEGIN',
'    Select translate( ltrim( rtrim( to_char( nvl( :P99_C_TIP_CAMBIO, 0 ) ) ) ), ''1234567890'', ''1234567890'' )',
'       into :P99_TIP_CAMBIO',
'       from dual; ',
'  END;',
'  BEGIN      ',
'    Select translate( ltrim( rtrim( to_char( nvl( :P99_C_CAMBIO_MONEDA_PRECIO, 0 ) ) ) ), ''1234567890'', ''1234567890'' )',
'       into :P99_CAMBIO_MONEDA_PRECIO',
'       from dual;',
'  END;',
'END IF;',
':P99_OLD_ESTADO := :P99_ESTADO;',
'BEGIN',
'  Select sum( monto_total ),',
'         sum( decode( nvl( total_iva, 0 ), 0, 0, monto_total ) ),',
'         sum( decode( nvl( total_iva, 0 ), 0, monto_total, 0 ) ),',
'         sum( total_iva )',
'    into :P99_SUBTOTAL_PARCIAL,:P99_GRAVADAS_PARCIAL,:P99_EXENTAS_PARCIAL,:P99_IVA_PARCIAL',
'    from vt_comprobantes_detalle',
'   where cod_empresa = :P99_COD_EMPRESA',
'     and tip_comprobante = :P99_TIP_COMPROBANTE',
'     and ser_comprobante = :P99_SER_COMPROBANTE',
'     and nro_comprobante = :P99_NRO_COMPROBANTE;',
'EXCEPTION',
'  when others then ',
'    :P99_SUBTOTAL_PARCIAL := 0;',
'    :P99_GRAVADAS_PARCIAL := 0;',
'    :P99_EXENTAS_PARCIAL:= 0;',
'    :P99_IVA_PARCIAL:= 0;',
'END;',
'IF nvl( TO_NUMBER(:P99_SUBTOTAL_PARCIAL), 0 ) > 0 THEN',
'    :P99_PORCENTAJE_DESCUENTO := nvl( TO_NUMBER(:P99_DESCUENTO), 0 ) / nvl( TO_NUMBER(:P99_SUBTOTAL_PARCIAL), 1 );',
'END IF;',
'if nvl(TO_NUMBER(:P99_IVA_PARCIAL),0) > 0 then ',
'    :P99_TOTAL_IVA := round( nvl( TO_NUMBER(:P99_IVA_PARCIAL), 0 ) *',
'                              ( 1 - nvl( TO_NUMBER(:P99_PORCENTAJE_DESCUENTO), 0 ) ) +',
'                                    nvl( TO_NUMBER(:P99_AJUSTE_IVA), 0 ),',
'                                    nvl( TO_NUMBER(:P99_DECIMALES), 0 ) );',
'else',
'    :P99_TOTAL_IVA := round( nvl( TO_NUMBER(:P99_IVA_PARCIAL), 0 ) *( 1 - nvl( TO_NUMBER(:P99_PORCENTAJE_DESCUENTO), 0 )), nvl( TO_NUMBER(:P99_DECIMALES), 0 ) );',
'end if ;',
':P99_SUBTOTAL := round( nvl( TO_NUMBER(:P99_SUBTOTAL_PARCIAL), 0 ) * ( 1 - nvl( TO_NUMBER(:P99_PORCENTAJE_DESCUENTO), 0 ) ), TO_NUMBER(:P99_DECIMALES) );',
':P99_GRAVADAS := round( nvl( TO_NUMBER(:P99_GRAVADAS_PARCIAL), 0 ) * ( 1 - nvl( TO_NUMBER(:P99_PORCENTAJE_DESCUENTO), 0 ) ), TO_NUMBER(:P99_DECIMALES) );',
':P99_EXENTAS  := round( nvl( TO_NUMBER(:P99_EXENTAS_PARCIAL), 0 ) * ( 1 - nvl( TO_NUMBER(:P99_PORCENTAJE_DESCUENTO), 0 ) ), TO_NUMBER(:P99_DECIMALES) );',
':P99_TOTAL := round( TO_NUMBER(:P99_SUBTOTAL) + TO_NUMBER(:P99_TOTAL_IVA), TO_NUMBER(:P99_DECIMALES) );',
'',
''))
,p_attribute_02=>'P99_COD_EMPRESA,P99_COD_CLIENTE,P99_COD_ENCARGADO_FAC,P99_COD_MONEDA,P99_COD_CONDICION_VENTA, P99_TIP_COMPROBANTE,P99_SER_COMPROBANTE,P99_NRO_COMPROBANTE,P99_TIP_COMPROBANTE_REF, P99_SER_COMPROBANTE_REF,P99_NRO_COMPROBANTE_REF,P99_C_TIP_CAMBIO,P99_ES'
||'TADO,P99_C_CAMBIO_MONEDA_PRECIO,P99_REFERENCIA,P99_DESCUENTO'
,p_attribute_03=>'P99_CLIENTE_PERSONA,P99_MAX_ORDEN,P99_RECARGO,P99_CANTIDAD_IMPRESION, P99_TIPO_IMPUESTO,P99_COD_ZONA,P99_TIP_CLIENTE,P99_DESC_ENCARGADO_FAC, P99_DECIMALES,P99_NRO_CUOTAS,P99_SUBTOTAL,P99_GRAVADAS,P99_EXENTAS,P99_TOTAL, P99_TOTAL_IVA,P99_PORCENTAJE_DE'
||'SCUENTO,P99_SUBTOTAL_PARCIAL,P99_GRAVADAS_PARCIAL,P99_EXENTAS_PARCIAL,P99_IVA_PARCIAL,P99_OLD_ESTADO,P99_TIP_CAMBIO,P99_CAMBIO_MONEDA_PRECIO,P99_CALCULA_IVA,P99_CARGA_DETALLE'
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
 p_id=>wwv_flow_imp.id(207200121713570108)
,p_event_id=>wwv_flow_imp.id(207199720269570104)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'VTFACTUR.recupera_detalle(PI_COD_EMPRESA           => :P99_COD_EMPRESA,',
'                          PI_TIP_CLIENTE           => :P99_TIP_CLIENTE,',
'                          PI_TIP_COMPROBANTE       => :P99_TIP_COMPROBANTE,',
'                          PI_SER_COMPROBANTE       => :P99_SER_COMPROBANTE,',
'                          PI_NRO_COMPROBANTE       => :P99_NRO_COMPROBANTE);',
':P99_ESTA_CONSULTANDO := ''N'' ;'))
,p_attribute_02=>'P99_COD_EMPRESA,P99_TIP_CLIENTE,P99_TIP_COMPROBANTE,P99_SER_COMPROBANTE,P99_NRO_COMPROBANTE'
,p_attribute_03=>'P99_ESTA_CONSULTANDO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(207200284267570109)
,p_event_id=>wwv_flow_imp.id(207199720269570104)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'--WHEN NEW ITEM INSTANCE',
':P99_OLD_CLIENTE := :P99_COD_CLIENTE;',
'',
'--WHEN-VALIDATE-ITEM',
'--IF nvl( :P99_CONSULTA, ''N'' ) = ''N''  and ( :P99_COD_CLIENTE is not null and :P99_COD_CLIENTE <> :P99_COD_CLIENTE_OCA ) THEN    ',
'    BEGIN',
'        vtfactur.busca_cliente(:P99_COD_EMPRESA,:P99_COD_CLIENTE,:P99_ESTADO_CLIENTE,:P99_COD_ZONA,  ',
'                               :P99_TIP_CLIENTE,:P99_CLIENTE_PERSONA,:P99_NRO_INSCRIPCION_AD, ',
'                               :P99_IND_EXENTO_AD,:P99_DESC_OBSERVACION,',
'                               :P99_TIPO_IMPUESTO,:P99_IMPRIME_CONDICION, :P99_NOM_CLIENTE);',
'    EXCEPTION',
'        when others then',
'            NULL;',
'    END;                       ',
'--END IF;',
'if  :P99_TIP_COMPROBANTE in (''TKT'',''FCO'')AND :P99_TIP_COMPROBANTE_REF NOT IN (''PED'') THEN     ',
'    :P99_COD_VENDEDOR:=NVL(:P99_COD_VENDEDOR,''19'');',
'    :P99_COD_CONDICION_VENTA:=''20'';',
'    :P99_COD_MONEDA:=''1'';',
'    :P99_COD_LISTA_PRECIO:=''1'';',
'    IF :P99_TIP_COMPROBANTE_REF=''PER'' THEN',
'        :P99_COD_VENDEDOR:=nvl(:P99_COD_VENDEDOR,''126'');',
'    END IF;    ',
'END IF;	',
'if :P99_TIP_COMPROBANTE_REF=''MAN'' THEN',
'     :P99_COD_VENDEDOR:=''115'';',
'END IF;',
'BEGIN',
'    vtfactur.busca_autorizacion(:P99_COD_EMPRESA,:P99_TIP_COMPROBANTE_REF,:P99_SER_COMPROBANTE_REF,:P99_NRO_COMPROBANTE_REF,:P99_TIP_COMPROBANTE,:P99_COD_SUCURSAL,:P99_COD_CONDICION_VENTA,:P99_COD_CONDICION_VENTA);',
'EXCEPTION',
'    when others then',
'        NULL;',
'END; ',
'declare',
'    vdescuento_cph varchar2(10);',
'    verror exception;',
'begin',
'    vdescuento_cph:= f_descuento_cph(:P99_COD_CLIENTE);',
'    if NVL(vdescuento_cph,''N'')=''N''THEN',
'        raise verror ;',
'    END IF;',
'EXCEPTION',
'    when verror then',
'        raise_application_error(-20000,''El cliente llego al limite del descuento otorgado.'');',
'    WHEN OTHERS THEN ',
'    NULL;',
'end;    ',
'BEGIN',
'    vtfactur.datos_cliente(:P99_COD_EMPRESA,:P99_COD_CLIENTE,:P99_NRO_INSCRIPCION_AD, :P99_IND_EXENTO_AD,:P99_RUC,:P99_COD_DIRECCION,:P99_DIR_CLIENTE,:P99_TEL_CLIENTE,:P99_TIPO_IMPUESTO);',
'EXCEPTION',
'    when others then',
'        NULL;',
'END; ',
''))
,p_attribute_02=>'P99_COD_DIRECCION,P99_COD_SUCURSAL,P99_COD_EMPRESA,P99_COD_CLIENTE,P99_CONSULTA,P99_COD_CLIENTE_OCA,P99_TIP_COMPROBANTE,  P99_COD_SECTOR,P99_COD_CONDICION_VENTA,P99_TIP_COMPROBANTE_REF,P99_VT_COND_CONTADO,  P99_SER_COMPROBANTE_REF,P99_NRO_COMPROBANTE'
||'_REF'
,p_attribute_03=>'P99_NOM_CLIENTE,P99_COD_VENDEDOR,P99_COD_CONDICION_VENTA,P99_COD_MONEDA,P99_COD_LISTA_PRECIO, P99_ESTADO_CLIENTE,P99_COD_ZONA,P99_TIP_CLIENTE,P99_CLIENTE_PERSONA,  P99_NRO_INSCRIPCION_AD,  P99_IND_EXENTO_AD,P99_TEL_CLIENTE, P99_DESC_OBSERVACION,P99_T'
||'IPO_IMPUESTO, P99_IMPRIME_CONDICION,P99_OLD_CLIENTE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(207200307812570110)
,p_event_id=>wwv_flow_imp.id(207199720269570104)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    VTFACTUR.datos_cliente1(PI_TIP_COMPROBANTE     => :P99_TIP_COMPROBANTE,',
'                        PI_COD_SECTOR          => :P99_COD_SECTOR,',
'                        PI_COD_CONDICION_VENTA => :P99_COD_CONDICION_VENTA,',
'                        PI_TIP_COMPROBANTE_REF => :P99_TIP_COMPROBANTE_REF,',
'                        PI_VT_COND_CONTADO     => :P99_VT_COND_CONTADO, --VARIABLES',
'                        PI_ESTADO_CLIENTE      => :P99_ESTADO_CLIENTE, --VARIABLES',
'                        PI_CLIENTE_PERSONA     => :P99_CLIENTE_PERSONA,--VARIABLES',
'                        PO_RUC                 => :P99_RUC,',
'                        PI_COD_DIRECCION       => :P99_COD_DIRECCION,',
'                        PO_COD_DIRECCION       => :P99_COD_DIRECCION,',
'                        PO_DIR_CLIENTE         => :P99_DIR_CLIENTE);',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        NULL;',
'END;',
'                              '))
,p_attribute_02=>'P99_TIP_COMPROBANTE,P99_COD_SECTOR,:P99_COD_CONDICION_VENTA,P99_TIP_COMPROBANTE_REF,                                P99_VT_COND_CONTADO,P99_COD_DIRECCION,P99_ESTADO_CLIENTE'
,p_attribute_03=>'P99_RUC,P99_COD_DIRECCION,P99_DIR_CLIENTE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(207200411307570111)
,p_event_id=>wwv_flow_imp.id(207199720269570104)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(24410539880161944)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(207200597652570112)
,p_event_id=>wwv_flow_imp.id(207199720269570104)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(23498898281061412)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(207200658133570113)
,p_event_id=>wwv_flow_imp.id(207199720269570104)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(23498456223061408)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(207200700425570114)
,p_event_id=>wwv_flow_imp.id(207199720269570104)
,p_event_result=>'TRUE'
,p_action_sequence=>90
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(23498759414061411)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(29395758637747244)
,p_name=>'DA_COD_ENCARGADO_fAC'
,p_event_sequence=>910
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P99_COD_ENCARGADO_FAC'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(29395828084747245)
,p_event_id=>wwv_flow_imp.id(29395758637747244)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF nvl( :P99_CONSULTA, ''N'' ) = ''N'' THEN',
'  IF :P99_COD_ENCARGADO_FAC IS NOT NULL THEN',
'    BEGIN',
'      select descripcion',
'        into :P99_DESC_ENCARGADO_FAC',
'        from zonas_geograficas',
'       where cod_zona = :P99_COD_ENCARGADO_FAC;',
'    EXCEPTION',
'      when no_data_found then',
'        :P99_DESC_ENCARGADO_FAC := NULL;',
unistr('       -- mensaje_ex(''No se encuentra c\00F3digo de zona.'',2);'),
'       -- raise form_trigger_failure;',
'      when others then',
'        :P99_DESC_ENCARGADO_FAC := NULL;',
'       -- mensaje_ex(''Error en la tabla de Zonas Geograficas '' || sqlerrm );',
'       -- raise form_trigger_failure;',
'    END;',
'  ELSE',
'    :P99_DESC_ENCARGADO_FAC := NULL;',
'  END IF;',
'END IF;'))
,p_attribute_02=>'P99_CONSULTA,P99_COD_ENCARGADO_FAC'
,p_attribute_03=>'P99_DESC_ENCARGADO_FAC'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(29396391330747250)
,p_name=>'DA_MOV_CAJ'
,p_event_sequence=>920
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(22563490227269812)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30779832521619801)
,p_event_id=>wwv_flow_imp.id(29396391330747250)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P99_AUX_MSJ := null;',
':P99_URL := null;',
'IF :P99_TIP_COMPROBANTE IS NOT NULL AND :P99_SER_COMPROBANTE IS NOT NULL AND :P99_NRO_COMPROBANTE IS NOT NULL THEN',
'    IF :P99_TIP_COMPROBANTE = :P99_TIP_CONTADO OR :P99_TIP_COMPROBANTE = ''TKT'' THEN',
'        VTFACTUR.col_mov_caj(PI_COD_EMPRESA            => :P99_COD_EMPRESA,',
'                             PI_SER_COMPROBANTE        => :P99_SER_COMPROBANTE,',
'                             PI_NRO_COMPROBANTE        => TO_NUMBER(:P99_NRO_COMPROBANTE),',
'                             PI_TIP_COMPROBANTE        => :P99_TIP_COMPROBANTE,',
'                             PI_COD_SUCURSAL           => :P99_COD_SUCURSAL,',
'                             PI_COD_CLIENTE            => :P99_COD_CLIENTE,',
'                             PI_COD_CUSTODIO           => :P99_COD_CUSTODIO,',
'                             PI_COD_CUSTODIO_ENT       => :P99_COD_CUSTODIO_ENT,',
'                             PI_GENERA_MD              => :P99_GENERA_MD,',
'                             PI_FEC_COMPROBANTE        => TO_DATE(:P99_FEC_COMPROBANTE, ''DD/MM/YYYY''),',
'                             PI_TIP_COMPROBANTE_REF    => :P99_TIP_COMPROBANTE_REF,',
'                             PI_SER_COMPROBANTE_REF    => :P99_SER_COMPROBANTE_REF,',
'                             PI_NRO_COMPROBANTE_REF    => TO_NUMBER(:P99_NRO_COMPROBANTE_REF),',
'                             pi_llamar                 =>  :P99_FORMA_COBRO);',
'',
'        /*SELECT APEX_PAGE.GET_URL (  p_page   => 95) f_url_1',
'          INTO :P99_URL',
'          FROM DUAL;        */             ',
'    END IF;',
'ELSE',
unistr('    :P99_AUX_MSJ := ''Debe completar tipo, serie y n\00FAmero de comprobante.'';                                 '),
'END IF;',
''))
,p_attribute_02=>'P99_TIP_COMPROBANTE,P99_TIP_CONTADO,P99_COD_EMPRESA,P99_SER_COMPROBANTE,P99_NRO_COMPROBANTE,P99_COD_SUCURSAL,P99_COD_CLIENTE,P99_COD_CUSTODIO,P99_COD_CUSTODIO_ENT, P99_GENERA_MD,P99_FEC_COMPROBANTE,P99_TIP_COMPROBANTE_REF,P99_SER_COMPROBANTE_REF,P99_'
||'NRO_COMPROBANTE_REF'
,p_attribute_03=>'P99_AUX_MSJ,P99_URL,P99_FORMA_COBRO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(31456353352510704)
,p_event_id=>wwv_flow_imp.id(29396391330747250)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P99_AUX_MSJ.'
,p_attribute_02=>'Error'
,p_attribute_03=>'warning'
,p_attribute_04=>'fa-warning'
,p_attribute_06=>'Aceptar'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P99_AUX_MSJ'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(31456480891510705)
,p_event_id=>wwv_flow_imp.id(29396391330747250)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_FOCUS'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P99_TIP_COMPROBANTE'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P99_AUX_MSJ'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(31456861704510709)
,p_event_id=>wwv_flow_imp.id(29396391330747250)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var url = apex.item("P99_URL").getValue();',
'/*apex.navigation.redirect (url);*/',
''))
,p_client_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_client_condition_expression=>'apex.item(''P99_AUX_MSJ'').getValue() == '''' && apex.item(''P99_URL'').getValue() != '''''
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(30780196185619804)
,p_name=>'DA_PEDIDOS'
,p_event_sequence=>930
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(22563367209269811)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30780220816619805)
,p_event_id=>wwv_flow_imp.id(30780196185619804)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P99_CARGA_DETALLE:= ''S''; ',
':P99_CARGA_DETALLES_VARIOS := ''S'';',
'',
'IF APEX_COLLECTION.COLLECTION_MEMBER_COUNT(p_collection_name => ''DETALLE_OT'') > 0 THEN',
'    DECLARE',
'        VCLIENTE VARCHAR(30);',
'    BEGIN',
'        SELECT C005',
'          INTO VCLIENTE',
'          FROM APEX_COLLECTIONS ',
'         WHERE COLLECTION_NAME = ''DETALLE_OT''',
'           AND SEQ_ID = 1;',
'        IF VCLIENTE != :P99_COD_CLIENTE THEN',
'             VTFACTUR.carga_pedidos(PI_COD_EMPRESA => :P99_COD_EMPRESA,',
'                               PI_COD_CLIENTE => :P99_COD_CLIENTE,',
'                               PI_TIP_COMPROBANTE => :P99_TIP_COMPROBANTE,',
'                               PI_SER_COMPROBANTE => :P99_SER_COMPROBANTE,',
'                               PI_NRO_COMPROBANTE => :P99_NRO_COMPROBANTE,',
'                               PI_ESTADO_CLIENTE  => :P99_ESTADO_CLIENTE);',
'        END IF;  ',
'    END;  ',
'ELSE',
'    VTFACTUR.carga_pedidos(PI_COD_EMPRESA => :P99_COD_EMPRESA,',
'                           PI_COD_CLIENTE => :P99_COD_CLIENTE,',
'                           PI_TIP_COMPROBANTE => :P99_TIP_COMPROBANTE,',
'                           PI_SER_COMPROBANTE => :P99_SER_COMPROBANTE,',
'                           PI_NRO_COMPROBANTE => :P99_NRO_COMPROBANTE,',
'                           PI_ESTADO_CLIENTE  => :P99_ESTADO_CLIENTE);',
'END IF;                       ',
':P99_ABRE_PEDIDOS := 1;',
''))
,p_attribute_02=>'P99_COD_EMPRESA,P99_COD_CLIENTE,P99_TIP_COMPROBANTE,P99_SER_COMPROBANTE,P99_NRO_COMPROBANTE,P99_ESTADO_CLIENTE'
,p_attribute_03=>'P99_ABRE_PEDIDOS,P99_CARGA_DETALLE,P99_CARGA_DETALLES_VARIOS'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30781414719619817)
,p_event_id=>wwv_flow_imp.id(30780196185619804)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(30780070773619803)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(30781729680619820)
,p_name=>'DA_CHECK'
,p_event_sequence=>940
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P99_SEQ_ID_PED'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30781850412619821)
,p_event_id=>wwv_flow_imp.id(30781729680619820)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'vtfactur.chequeado(:P99_SEQ_ID_PED, :P99_ACCION, ''DETALLE_OT'');',
'BEGIN',
'    :P99_AUX_MSJ := NULL;',
'    vtfactur.valida_pedido_chequeado(PI_COD_SECTOR            => :P99_COD_SECTOR,',
'                                     PO_COD_SECTOR            => :P99_COD_SECTOR,',
'                                     PI_COD_VENDEDOR          => :P99_COD_VENDEDOR,',
'                                     PO_COD_VENDEDOR          => :P99_COD_VENDEDOR,',
'                                     PO_COD_CONDICION_VENTA   => :P99_COD_CONDICION_VENTA,',
'                                     PO_COD_LISTA_PRECIO      => :P99_COD_LISTA_PRECIO,',
'                                     PO_COD_MONEDA            => :P99_COD_MONEDA,',
'                                     PO_CARGA_DETALLE         => :P99_CARGA_DETALLE,',
'                                     PI_SEQ_ID                => :P99_SEQ_ID_PED,',
'                                     PI_COD_EMPRESA           => :P99_COD_EMPRESA,',
'                                     PI_VENDEDOR_SERVICIOS    => :P99_VENDEDOR_SERVICIOS,',
'                                     PO_MENSAJE               => :P99_AUX_MSJ);',
'EXCEPTION   ',
'    WHEN OTHERS THEN',
'        RAISE_APPLICATION_ERROR(-20000, ''Ha ocurrido un error al validar el pedido. ''||sqlerrm);',
'END;',
'',
'',
''))
,p_attribute_02=>'P99_ACCION,P99_COD_SECTOR,P99_COD_VENDEDOR,P99_SEQ_ID_PED,P99_COD_EMPRESA,P99_VENDEDOR_SERVICIOS'
,p_attribute_03=>'P99_COD_SECTOR,P99_COD_VENDEDOR,P99_COD_CONDICION_VENTA,P99_COD_LISTA_PRECIO,P99_COD_MONEDA,P99_CARGA_DETALLE, P99_AUX_MSJ'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30782555379619828)
,p_event_id=>wwv_flow_imp.id(30781729680619820)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P99_AUX_MSJ.'
,p_attribute_02=>'Error'
,p_attribute_03=>'warning'
,p_attribute_04=>'fa-warning'
,p_attribute_06=>'Aceptar'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P99_AUX_MSJ'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30782679496619829)
,p_event_id=>wwv_flow_imp.id(30781729680619820)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    VCHECK VARCHAR(1);',
'BEGIN  ',
'    IF (:P99_COD_SECTOR IN (''4.1'')  AND :P99_TIP_COMPROBANTE  IN (''FCO'')) OR :P99_COD_SECTOR  NOT IN (''4.1'') THEN',
'        SELECT C008',
'          INTO VCHECK',
'         FROM APEX_COLLECTIONS',
'        WHERE COLLECTION_NAME = ''DETALLE_OT''',
'          AND SEQ_ID = :P99_SEQ_ID_PED;',
'',
'        IF VCHECK = ''S'' THEN      ',
'            vtfactur.carga_pedido(PI_CARGA_DETALLES_VARIOS => :P99_CARGA_DETALLES_VARIOS,',
'                                  PI_COD_EMPRESA           => :P99_COD_EMPRESA,',
'                                  PI_SEQ_ID                => :P99_SEQ_ID_PED,',
'                                  PI_COD_SUCURSAL          => :P99_COD_SUCURSAL,',
'                                  PI_SER_COMPROBANTE_REF   => :P99_SER_COMPROBANTE_REF,',
'                                  PI_TIP_COMPROBANTE_REF   => :P99_TIP_COMPROBANTE_REF,',
'                                  PI_COD_SECTOR            => :P99_COD_SECTOR,',
'                                  PI_DECIMALES             => to_number(:P99_DECIMALES),',
'                                  PI_C_DESCUENTO           => to_number(:P99_DESCUENTO),    ',
'                                  PI_CARGA_DETALLE         => :P99_CARGA_DETALLE,',
'                                  PI_IVA_PARCIAL           => to_number(:P99_IVA_PARCIAL),',
'                                  PO_IVA_PARCIAL           => :P99_IVA_PARCIAL,                       ',
'                                  PI_SUBTOTAL_PARCIAL      => to_number(:P99_SUBTOTAL_PARCIAL),',
'                                  PO_SUBTOTAL_PARCIAL      => :P99_SUBTOTAL_PARCIAL,',
'                                  PI_GRAVADAS_PARCIAL      => to_number(:P99_GRAVADAS_PARCIAL),',
'                                  PO_GRAVADAS_PARCIAL      => :P99_GRAVADAS_PARCIAL,',
'                                  PI_EXENTAS_PARCIAL       => to_number(:P99_EXENTAS_PARCIAL),',
'                                  PO_EXENTAS_PARCIAL       => :P99_EXENTAS_PARCIAL,',
'                                  PO_PORCENTAJE_DESCUENTO  => :P99_PORCENTAJE_DESCUENTO,',
'                                  PO_TOTAL_IVA             => :P99_TOTAL_IVA,',
'                                  PO_SUBTOTAL              => :P99_SUBTOTAL,',
'                                  PO_GRAVADAS              => :P99_GRAVADAS,',
'                                  PO_EXENTAS               => :P99_EXENTAS,',
'                                  PO_TOTAL                 => :P99_TOTAL);        ',
'        END IF;',
'    END IF;                                                      ',
'EXCEPTION   ',
'    WHEN OTHERS THEN',
'        RAISE_APPLICATION_ERROR(-20000, ''Ha ocurrido un error al cargar el pedido. ''||sqlerrm);',
'END;                                                                        ',
''))
,p_attribute_02=>'P99_EXENTAS_PARCIAL,P99_GRAVADAS_PARCIAL,P99_SUBTOTAL_PARCIAL,P99_IVA_PARCIAL,P99_DESCUENTO,P99_DECIMALES,P99_TIP_COMPROBANTE_REF, P99_SER_COMPROBANTE_REF,P99_COD_SUCURSAL,P99_CARGA_DETALLES_VARIOS,P99_COD_SECTOR,P99_SEQ_ID_PED,P99_COD_EMPRESA'
,p_attribute_03=>'P99_IVA_PARCIAL,P99_SUBTOTAL_PARCIAL,P99_GRAVADAS_PARCIAL,P99_EXENTAS_PARCIAL,P99_PORCENTAJE_DESCUENTO,P99_TOTAL_IVA ,P99_SUBTOTAL,P99_GRAVADAS,P99_EXENTAS,P99_TOTAL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P99_AUX_MSJ'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30782736413619830)
,p_event_id=>wwv_flow_imp.id(30781729680619820)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(24410539880161944)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30782811378619831)
,p_event_id=>wwv_flow_imp.id(30781729680619820)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(30780070773619803)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(30783005808619833)
,p_name=>'DA_ABRE_OT'
,p_event_sequence=>950
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P99_ABRE_PEDIDOS'
,p_condition_element=>'P99_ABRE_PEDIDOS'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'1'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30783183942619834)
,p_event_id=>wwv_flow_imp.id(30783005808619833)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(30779926061619802)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(30783326462619836)
,p_name=>'DA_VOLVER_OT'
,p_event_sequence=>960
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(30783206892619835)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30783420382619837)
,p_event_id=>wwv_flow_imp.id(30783326462619836)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(30779926061619802)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30783594082619838)
,p_event_id=>wwv_flow_imp.id(30783326462619836)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P99_CARGA_DETALLES_VARIOS := ''N'';'
,p_attribute_03=>'P99_CARGA_DETALLES_VARIOS'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(31457275201510713)
,p_name=>'DA_VALIDA_SECTOR1'
,p_event_sequence=>970
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P99_COD_SECTOR'
,p_bind_type=>'bind'
,p_bind_event_type=>'focusout'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(31457331039510714)
,p_event_id=>wwv_flow_imp.id(31457275201510713)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P99_COD_CLIENTE IS NOT NULL THEN',
'    vtfactur.busca_cliente_sector (PI_COD_EMPRESA         => :P99_COD_EMPRESA,',
'                                   PI_COD_CLIENTE         => :P99_COD_CLIENTE,',
'                                   PI_TIP_COMPROBANTE     => :P99_TIP_COMPROBANTE,',
'                                   PI_COD_SECTOR          => :P99_COD_SECTOR,',
'                                   PI_COD_CONDICION_VENTA => :P99_COD_CONDICION_VENTA,',
'                                   PI_TIP_COMPROBANTE_REF => :P99_TIP_COMPROBANTE_REF,',
'                                   PI_VT_COND_CONTADO     => :P99_VT_COND_CONTADO, --VARIABLES',
'                                   PO_ESTADO_CLIENTE      => :P99_ESTADO_CLIENTE, --VARIABLES',
'                                   PO_COD_ZONA            => :P99_COD_ZONA,  --VARIABLES',
'                                   PO_TIP_CLIENTE         => :P99_TIP_CLIENTE, --CABECERA',
'                                   PO_CLIENTE_PERSONA     => :P99_CLIENTE_PERSONA,--VARIABLES',
'                                   PO_NRO_INSCRIPCION_AD  => :P99_NRO_INSCRIPCION_AD, ',
'                                   PO_IND_EXENTO_AD       => :P99_IND_EXENTO_AD,',
'                                   PO_RUC                 => :P99_RUC,',
'                                   PO_COD_DIRECCION       => :P99_COD_DIRECCION,',
'                                   PO_DIR_CLIENTE         => :P99_DIR_CLIENTE,',
'                                   PO_IMPRIME_CONDICION   => :P99_IMPRIME_CONDICION,',
'                                   PO_NOM_CLIENTE         => :P99_NOM_CLIENTE);--VARIABLES',
'END IF; ',
''))
,p_attribute_02=>'P99_COD_CLIENTE,P99_COD_EMPRESA,P99_TIP_COMPROBANTE,P99_COD_SECTOR,P99_COD_CONDICION_VENTA,P99_TIP_COMPROBANTE_REF,P99_VT_COND_CONTADO'
,p_attribute_03=>'P99_NOM_CLIENTE,P99_IMPRIME_CONDICION,P99_DIR_CLIENTE,P99_COD_DIRECCION,P99_RUC,P99_IND_EXENTO_AD,P99_NRO_INSCRIPCION_AD,P99_CLIENTE_PERSONA,P99_TIP_CLIENTE,P99_COD_ZONA,P99_ESTADO_CLIENTE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(35474883394616302)
,p_name=>'DA_LLAMA_REPORTE'
,p_event_sequence=>980
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P99_REPORTE'
,p_condition_element=>'P99_REPORTE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(35474979568616303)
,p_event_id=>wwv_flow_imp.id(35474883394616302)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
' doDescarga(apex.item(''P99_COD_EMPRESA'').getValue(), apex.item(''P99_TIP_COMPROBANTE'').getValue(), apex.item(''P99_SER_COMPROBANTE'').getValue(), ',
' apex.item(''P99_NRO_COMPROBANTE'').getValue(), apex.item(''P99_COD_CLIENTE'').getValue(), apex.item(''P99_REPORTE'').getValue(), ',
' apex.item(''P99_REIMPRESO'').getValue(), apex.item(''P99_COD_USUARIO'').getValue())',
'',
''))
,p_client_condition_type=>'NOT_EQUALS'
,p_client_condition_element=>'P99_REPORTE'
,p_client_condition_expression=>'VTIMPFAC_CANON_FE_2'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(45864275142644404)
,p_event_id=>wwv_flow_imp.id(35474883394616302)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
' doDescarga1(apex.item(''P99_COD_EMPRESA'').getValue(), apex.item(''P99_TIP_COMPROBANTE'').getValue(), apex.item(''P99_SER_COMPROBANTE'').getValue(), ',
' apex.item(''P99_NRO_COMPROBANTE'').getValue(), apex.item(''P99_COD_CLIENTE'').getValue(), apex.item(''P99_REPORTE'').getValue(), ',
' apex.item(''P99_REIMPRESO'').getValue(), apex.item(''P99_COD_USUARIO'').getValue(),apex.item(''P99_TIP_COMPROBANTE_REF'').getValue(), apex.item(''P99_SER_COMPROBANTE_REF'').getValue(), ',
' apex.item(''P99_NRO_COMPROBANTE_REF'').getValue())',
'',
'',
''))
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P99_REPORTE'
,p_client_condition_expression=>'VTIMPFAC_CANON_FE_2'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(101873646074708140)
,p_name=>unistr('Cierra men\00FA')
,p_event_sequence=>990
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(101873756797708141)
,p_event_id=>wwv_flow_imp.id(101873646074708140)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($(''body'').hasClass(''js-navExpanded'')',
'){',
'$(''#t_Button_navControl'').click();',
'};'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(101874086514708144)
,p_name=>'Imprime reporte'
,p_event_sequence=>1000
,p_condition_element=>'P99_IMPRIMIR_REPORTE'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'S'
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(123959498942528328)
,p_event_id=>wwv_flow_imp.id(101874086514708144)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'select f.valor',
'  INTO :P99_P_NOM_FAC',
'  from parametros_generales f ',
' WHERE F.PARAMETRO = CASE WHEN :P_COD_EMPRESA=''1'' THEN  ''FACTURA_REP_NOMB''||:P_COD_EMPRESA',
' WHEN   :P_COD_EMPRESA=''18'' AND :P99_SER_COMPROBANTE LIKE ''FE%'' THEN  ''FACTURA_REP_FE_''||:P_COD_EMPRESA else  ''FACTURA_REP_NOMB''||:P_COD_EMPRESA  END',
'   AND F.COD_MODULO = ''VT'';',
''))
,p_attribute_02=>'P99_SER_COMPROBANTE'
,p_attribute_03=>'P99_P_NOM_FAC'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(101874192272708145)
,p_event_id=>wwv_flow_imp.id(101874086514708144)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var comprobante = document.getElementById("P99_NRO_COMPROBANTE").value; ',
'var params = []',
'var empresa = apex.item("P99_COD_EMPRESA").getValue();',
'var tip_comprobante = apex.item("P99_TIP_COMPROBANTE_AUX").getValue();',
'var reporte = apex.item("P99_P_NOM_FAC").getValue();',
'var ser_comprobante = apex.item("P99_SER_COMPROBANTE").getValue();',
'var nro_comprobante = apex.item("P99_NRO_COMPROBANTE").getValue();',
'var cliente = ''&P99_COD_CLIENTE.'';',
'var usuario = ''&APP_USER.'';',
'params.push({ name: ''P_COD_EMPRESA'', value: empresa})',
'params.push({ name: ''P_TIP_COMPROBANTE'', value: tip_comprobante})',
'params.push({ name: ''P_SER_COMPROBANTE'', value: ser_comprobante}) ',
'params.push({ name: ''P_NRO_COMPROBANTE'', value: nro_comprobante}) ',
'params.push({ name: ''P_COD_CLIENTE'', value: cliente}) ',
'params.push({ name: ''P_REIMPRESO'', value: ''N''}) ',
'params.push({ name: ''P_IMPRIME_CONDICION'', value: ''S''})',
'params.push({ name: ''P_USUARIO'', value: usuario})  ',
'',
'if (tip_comprobante === ''FCR'') {',
unistr('var htmldb_delete_messag_agregar =''Se ha generado la factura '' + comprobante + '' \00BFDesea Imprimirla?'';  '),
'    apex.message.confirm(htmldb_delete_messag_agregar, function( okPressed ) { ',
'        if( okPressed ) {',
'            ',
'            Jasper_impresion_directa(reporte, params)',
'',
'            setTimeout(function(){',
'                    $(document).ready(function(){ $(''#LIMPIAR'').trigger(''click''); });',
'                }, 5000);',
'           /* if (tip_comprobante === ''FCR'') {',
'                $(document).ready(function(){ $(''#LIMPIAR'').trigger(''click''); });',
'            }*/',
'             ',
'        } else {',
unistr('            var htmldb_delete_messag_agregar =''\00BFDesea Visualizar la factura Nro. '' +  comprobante+ ''?'';  '),
'                apex.message.confirm(htmldb_delete_messag_agregar, function( okPressed ) { ',
'                    if( okPressed ) {',
'                        createReportUrl(reporte, params)',
'                       setTimeout(function(){',
'                            $(document).ready(function(){ $(''#LIMPIAR'').trigger(''click''); });',
'                        }, 5000);',
'                    } else {',
'                          if (tip_comprobante === ''FCR'') {  ',
'                            $(document).ready(function(){ $(''#LIMPIAR'').trigger(''click''); }); ',
'                        }',
'                    }',
'                });',
'',
'        }',
'    });',
'}else {',
'    $(document).ready(function(){ $(''#forma_cobro'').trigger(''click''); }); ',
'}',
'',
'',
'',
'',
'',
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
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(99779757461177748)
,p_event_id=>wwv_flow_imp.id(101874086514708144)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    VEXISTE BOOLEAN;',
'Begin',
'    VEXISTE := APEX_COLLECTION.COLLECTION_EXISTS (p_collection_name => ''DETALLE_COMPROBANTE'');',
'IF VEXISTE THEN',
'    APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(P_COLLECTION_NAME => ''DETALLE_COMPROBANTE'');',
' END IF;   ',
'END;',
'',
'DECLARE',
'    VEXISTE BOOLEAN;',
'Begin',
'    VEXISTE := APEX_COLLECTION.COLLECTION_EXISTS (p_collection_name => ''DETALLE_OT'');',
'IF VEXISTE THEN',
'    APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(P_COLLECTION_NAME => ''DETALLE_OT'');',
' END IF;   ',
'END;'))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P99_TIP_COMPROBANTE_AUX2'
,p_client_condition_expression=>'FCR'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(106524913358760540)
,p_event_id=>wwv_flow_imp.id(101874086514708144)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P99_TIP_COMPROBANTE := :P99_TIP_COMPROBANTE_AUX;'
,p_attribute_02=>'P99_TIP_COMPROBANTE_AUX2'
,p_attribute_03=>'P99_TIP_COMPROBANTE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(99779842168177749)
,p_event_id=>wwv_flow_imp.id(101874086514708144)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(24410539880161944)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(114139971506544421)
,p_name=>'Imprime reporte_1'
,p_event_sequence=>1010
,p_condition_element=>'P95_REPORTE'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'S'
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(123959529888528329)
,p_event_id=>wwv_flow_imp.id(114139971506544421)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'select f.valor',
'  INTO :P99_P_NOM_FAC',
'  from parametros_generales f ',
' WHERE F.PARAMETRO = CASE WHEN :P_COD_EMPRESA=''1'' THEN  ''FACTURA_REP_NOMB''||:P_COD_EMPRESA',
' WHEN   :P_COD_EMPRESA=''18'' AND :P99_SER_COMPROBANTE LIKE ''FE%'' THEN  ''FACTURA_REP_FE_''||:P_COD_EMPRESA else  ''FACTURA_REP_NOMB''||:P_COD_EMPRESA  END',
'   AND F.COD_MODULO = ''VT'';',
'',
''))
,p_attribute_02=>'P99_SER_COMPROBANTE'
,p_attribute_03=>'P99_P_NOM_FAC'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(114140066385544422)
,p_event_id=>wwv_flow_imp.id(114139971506544421)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var comprobante = document.getElementById("P99_NRO_COMPROBANTE").value; ',
'var params = []',
'var reporte = apex.item("P99_P_NOM_FAC").getValue();',
'var empresa = apex.item("P_COD_EMPRESA").getValue();',
'var tip_comprobante = apex.item("P99_TIP_COMPROBANTE_AUX2").getValue();',
'var ser_comprobante = apex.item("P99_SER_COMPROBANTE_AUX").getValue();',
'var nro_comprobante = apex.item("P99_NRO_COMPROBANTE").getValue();',
'var cliente = ''&P99_COD_CLIENTE.'';',
'var usuario = ''&APP_USER.'';',
'params.push({ name: ''P_COD_EMPRESA'', value: empresa})',
'params.push({ name: ''P_TIP_COMPROBANTE'', value: tip_comprobante})',
'params.push({ name: ''P_SER_COMPROBANTE'', value: ser_comprobante}) ',
'params.push({ name: ''P_NRO_COMPROBANTE'', value: nro_comprobante}) ',
'params.push({ name: ''P_COD_CLIENTE'', value: cliente}) ',
'params.push({ name: ''P_REIMPRESO'', value: ''N''}) ',
'params.push({ name: ''P_IMPRIME_CONDICION'', value: ''S''})',
'params.push({ name: ''P_USUARIO'', value: usuario})  ',
'',
'',
unistr('var htmldb_delete_messag_agregar =''Se genero la factura '' + comprobante + '' \00BFDesea Imprimirla?'';  '),
'    apex.message.confirm(htmldb_delete_messag_agregar, function( okPressed ) { ',
'        if( okPressed ) {',
'            ',
'            Jasper_impresion_directa(reporte, params)',
'         //   $(document).ready(function(){ $(''#LIMPIAR'').trigger(''click''); });',
'            if (tip_comprobante === ''FCR'') {',
'                $(document).ready(function(){ $(''#LIMPIAR'').trigger(''click''); });',
'            }',
'            if (tip_comprobante === ''FCO'') {',
'                $(document).ready(function(){ $(''#LIMPIAR'').trigger(''click''); });',
'            }',
'             ',
'        } else {',
unistr('            var htmldb_delete_messag_agregar =''\00BFDesea Visualizar la factura Nro. '' +  comprobante+ ''?'';  '),
'                apex.message.confirm(htmldb_delete_messag_agregar, function( okPressed ) { ',
'                    if( okPressed ) {',
'                        createReportUrl(reporte, params)',
'                        $(document).ready(function(){ $(''#LIMPIAR'').trigger(''click''); });',
'                        if (tip_comprobante === ''FCR'') {',
'                            $(document).ready(function(){ $(''#LIMPIAR'').trigger(''click''); });',
'                        }',
'                         if (tip_comprobante === ''FCO'') {',
'                            $(document).ready(function(){ $(''#LIMPIAR'').trigger(''click''); });',
'                        }',
'                    } else {',
'                          if (tip_comprobante === ''FCR'') {  ',
'                            $(document).ready(function(){ $(''#LIMPIAR'').trigger(''click''); }); ',
'                        }',
'                         if (tip_comprobante === ''FCO'') {  ',
'                            $(document).ready(function(){ $(''#LIMPIAR'').trigger(''click''); }); ',
'                        }',
'                    }',
'                });',
'',
'        }',
'    });',
'',
'',
'',
'',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(106523290621760523)
,p_name=>'Setea datos de acuerdo a la sucursal'
,p_event_sequence=>1020
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P99_COD_SUCURSAL'
,p_condition_element=>'P99_COD_SUCURSAL'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'101'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(106523304410760524)
,p_event_id=>wwv_flow_imp.id(106523290621760523)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P99_TIP_COMPROBANTE_REF'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_02=>'PER'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(106523425212760525)
,p_event_id=>wwv_flow_imp.id(106523290621760523)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P99_TIP_COMPROBANTE_REF'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(106523819635760529)
,p_name=>unistr('Setea condici\00F3n')
,p_event_sequence=>1030
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P99_TALON_CONTADO'
,p_condition_element=>'P99_TALON_CONTADO'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(106523947096760530)
,p_event_id=>wwv_flow_imp.id(106523819635760529)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P99_TIP_COMPROBANTE'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_02=>'FCO'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(106524062331760531)
,p_event_id=>wwv_flow_imp.id(106523819635760529)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P99_TALON_CREDITO'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(106524186413760532)
,p_name=>unistr('Setea condici\00F3n de factura')
,p_event_sequence=>1040
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P99_TALON_CREDITO'
,p_condition_element=>'P99_TALON_CREDITO'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(106524379209760534)
,p_event_id=>wwv_flow_imp.id(106524186413760532)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P99_TIP_COMPROBANTE'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_02=>'FCR'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(106524497880760535)
,p_event_id=>wwv_flow_imp.id(106524186413760532)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P99_TALON_CONTADO'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(110474195415213408)
,p_name=>'Nuevo'
,p_event_sequence=>1050
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P99_FORMA_COBRO'
,p_condition_element=>'P99_FORMA_COBRO'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'1'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(110474258321213409)
,p_event_id=>wwv_flow_imp.id(110474195415213408)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$(document).ready(function(){ $(''#btn_cobro'').trigger(''click''); });'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(110474308281213410)
,p_event_id=>wwv_flow_imp.id(110474195415213408)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P99_FORMA_COBRO'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(104447087937494226)
,p_name=>unistr('Limpiar colecci\00F3n')
,p_event_sequence=>1060
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
,p_display_when_type=>'ITEM_IS_NULL'
,p_display_when_cond=>'P99_NRO_COMPROBANTE'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(104447131008494227)
,p_event_id=>wwv_flow_imp.id(104447087937494226)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'apex_collection.create_or_truncate_collection(p_collection_name => ''DETALLE_COMPROBANTE'');'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(104447271995494228)
,p_event_id=>wwv_flow_imp.id(104447087937494226)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(24410539880161944)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(104447564648494231)
,p_name=>'Oculta spinner'
,p_event_sequence=>1070
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P99_TOTAL_IVA_1'
,p_condition_element=>'P99_TOTAL_IVA_1'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(104447693759494232)
,p_event_id=>wwv_flow_imp.id(104447564648494231)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$(".u-Processing").remove(); '
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(114141331974544435)
,p_name=>'Visualizar reportes'
,p_event_sequence=>1080
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(114141165403544433)
,p_condition_element=>'P99_NRO_COMPROBANTE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1031324258883625545)
,p_event_id=>wwv_flow_imp.id(114141331974544435)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin select f.valor',
'  INTO :P99_P_NOM_FAC',
'  from parametros_generales f ',
' WHERE F.PARAMETRO = CASE WHEN :P_COD_EMPRESA=''1'' THEN  ''FACTURA_REP_NOMB''||:P_COD_EMPRESA',
' WHEN   :P_COD_EMPRESA=''18'' AND :P99_SER_COMPROBANTE LIKE ''FE%'' THEN  ''FACTURA_REP_FE_''||:P_COD_EMPRESA else  ''FACTURA_REP_NOMB''||:P_COD_EMPRESA  END',
'   AND F.COD_MODULO = ''VT'';',
'   exception when others then',
'   :P99_P_NOM_FAC:= ''FACTURA_REP_FE_''||:P_COD_EMPRESA;',
'   end;'))
,p_attribute_02=>'P99_SER_COMPROBANTE'
,p_attribute_03=>'P99_P_NOM_FAC'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(114141542561544437)
,p_event_id=>wwv_flow_imp.id(114141331974544435)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var comprobante = document.getElementById("P99_NRO_COMPROBANTE").value; ',
'var params = []',
'var empresa = apex.item("P99_COD_EMPRESA").getValue();',
'var tip_comprobante = apex.item("P99_TIP_COMPROBANTE").getValue();',
'var ser_comprobante = apex.item("P99_SER_COMPROBANTE").getValue();',
'var nro_comprobante = apex.item("P99_NRO_COMPROBANTE").getValue();',
'var cliente = ''&P99_COD_CLIENTE.'';',
'var usuario = ''&APP_USER.'';',
'var vfacnom = apex.item(''P99_P_NOM_FAC'').getValue();',
'params.push({ name: ''P_COD_EMPRESA'', value: empresa})',
'params.push({ name: ''P_TIP_COMPROBANTE'', value: tip_comprobante})',
'params.push({ name: ''P_SER_COMPROBANTE'', value: ser_comprobante}) ',
'params.push({ name: ''P_NRO_COMPROBANTE'', value: nro_comprobante}) ',
'params.push({ name: ''P_COD_CLIENTE'', value: cliente}) ',
'params.push({ name: ''P_REIMPRESO'', value: ''N''}) ',
'params.push({ name: ''P_IMPRIME_CONDICION'', value: ''S''})',
'params.push({ name: ''P_USUARIO'', value: usuario})  ',
'createReportUrl(vfacnom, params)',
'',
'',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(114141601173544438)
,p_name=>'Imprimir Reporte'
,p_event_sequence=>1090
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(114141240015544434)
,p_condition_element=>'P99_NRO_COMPROBANTE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(390609261645583049)
,p_event_id=>wwv_flow_imp.id(114141601173544438)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare vCDC varchar2(500);',
'begin',
'  BEGIN',
'    	  select CDC',
'          into vCDC',
'          from vt_comprobantes_cabecera   ',
'          where cod_empresa =:P99_COD_EMPRESA',
'              and TIP_COMPROBANTE = :P99_TIP_COMPROBANTE',
'              and SER_COMPROBANTE = :P99_SER_COMPROBANTE',
'              and nro_comprobante = :P99_NRO_COMPROBANTE;',
'    	EXCEPTION',
'    		WHEN OTHERS THEN ',
'    		 vCDC:=null;',
'    	END ;',
'',
'/*IF VCDC IS NULL then',
'	raise_application_error(-20000, ''CDC en proceso de generacion vuelva a intentarlo. Si el inconveniente persiste comuniquese con el departamento de TIC AL *800.'');',
'end if;*/',
'end;',
''))
,p_attribute_02=>'P99_COD_EMPRESA,P99_TIP_COMPROBANTE,P99_COD_SUCURSAL,P99_SER_COMPROBANTE,P99_NRO_COMPROBANTE,P99_REIMPRIME,P99_COD_USUARIO'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1031324490953625547)
,p_event_id=>wwv_flow_imp.id(114141601173544438)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin select f.valor',
'  INTO :P99_P_NOM_FAC',
'  from parametros_generales f ',
' WHERE F.PARAMETRO = CASE WHEN :P_COD_EMPRESA=''1'' THEN  ''FACTURA_REP_NOMB''||:P_COD_EMPRESA',
' WHEN   :P_COD_EMPRESA=''18'' AND :P99_SER_COMPROBANTE LIKE ''FE%'' THEN  ''FACTURA_REP_FE_''||:P_COD_EMPRESA else  ''FACTURA_REP_NOMB''||:P_COD_EMPRESA  END',
'   AND F.COD_MODULO = ''VT'';',
'   exception when others then',
'   :P99_P_NOM_FAC:= ''FACTURA_REP_FE_''||:P_COD_EMPRESA;',
'   end;'))
,p_attribute_02=>'P99_SER_COMPROBANTE'
,p_attribute_03=>'P99_P_NOM_FAC'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(114141887432544440)
,p_event_id=>wwv_flow_imp.id(114141601173544438)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var comprobante = document.getElementById("P99_NRO_COMPROBANTE").value; ',
'var params = []',
'var empresa = apex.item("P99_COD_EMPRESA").getValue();',
'var tip_comprobante = apex.item("P99_TIP_COMPROBANTE").getValue();',
'var ser_comprobante = apex.item("P99_SER_COMPROBANTE").getValue();',
'var nro_comprobante = apex.item("P99_NRO_COMPROBANTE").getValue();',
'var cliente = ''&P99_COD_CLIENTE.'';',
'var usuario = ''&APP_USER.'';',
'var vfacnom = apex.item(''P99_P_NOM_FAC'').getValue();',
'params.push({ name: ''P_COD_EMPRESA'', value: empresa})',
'params.push({ name: ''P_TIP_COMPROBANTE'', value: tip_comprobante})',
'params.push({ name: ''P_SER_COMPROBANTE'', value: ser_comprobante}) ',
'params.push({ name: ''P_NRO_COMPROBANTE'', value: nro_comprobante}) ',
'params.push({ name: ''P_COD_CLIENTE'', value: cliente}) ',
'params.push({ name: ''P_REIMPRESO'', value: ''N''}) ',
'params.push({ name: ''P_IMPRIME_CONDICION'', value: ''S''})',
'params.push({ name: ''P_USUARIO'', value: usuario})  ',
' Jasper_impresion_directa(vfacnom, params)',
'',
'',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(116056241006387806)
,p_name=>'CARGAR_PAGINA'
,p_event_sequence=>1100
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(116056305414387807)
,p_event_id=>wwv_flow_imp.id(116056241006387806)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
' select f.valor',
'  INTO :P99_P_NOM_FAC',
'  from parametros_generales f ',
' WHERE F.PARAMETRO = ''FACTURA_REP_NOMB''||:P_COD_EMPRESA',
'   AND F.COD_MODULO = ''VT'';',
'  EXCEPTION ',
'  WHEN others THEN',
'    null;',
'END;'))
,p_attribute_03=>'P99_P_NOM_FAC'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(149026556038268844)
,p_name=>'Setea datos'
,p_event_sequence=>1110
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P99_TIP_COMPROBANTE'
,p_condition_element=>'P99_TIP_COMPROBANTE'
,p_triggering_condition_type=>'NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(149026650358268845)
,p_event_id=>wwv_flow_imp.id(149026556038268844)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P99_TIP_COMPROBANTE_AUX'
,p_attribute_01=>'PLSQL_EXPRESSION'
,p_attribute_04=>':P99_TIP_COMPROBANTE'
,p_attribute_07=>'P99_TIP_COMPROBANTE'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(98643790669582150)
,p_name=>'Nuevo_1'
,p_event_sequence=>1120
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P99_MENSAJE_PAGARE'
,p_condition_element=>'P99_MENSAJE_PAGARE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(190745575155605901)
,p_event_id=>wwv_flow_imp.id(98643790669582150)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P99_MENSAJE_PAGARE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(103254419913652641)
,p_name=>'Desactiva campos'
,p_event_sequence=>1130
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P99_AUX_MSJ'
,p_condition_element=>'P99_AUX_MSJ'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(103254581212652642)
,p_event_id=>wwv_flow_imp.id(103254419913652641)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$("#apex_wait_overlay").remove();',
'$(".u-Processing").remove();'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(207199441770570101)
,p_name=>'DA_SET_CONSULTA'
,p_event_sequence=>1140
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P99_ACCION_CONSULTA'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(207199581531570102)
,p_event_id=>wwv_flow_imp.id(207199441770570101)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P99_ACCION_CONSULTA'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(22846137601807416)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_INIT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P_COD_MODULO := ''VT'';',
'--PRE-FORM',
'--INICIALIZA GLOBALES',
':P99_COD_EMPRESA := NVL(:P_COD_EMPRESA, ''1'');',
':P99_COD_SUCURSAL_VAR := NVL(:P_COD_SUCURSAL, ''01'');',
':P99_COD_USUARIO := NVL(:P_COD_USUARIO, :APP_USER);',
':P99_COD_MODULO := :P_COD_MODULO;',
':P99_SHOW_LOV_CON := ''0'';',
':P99_SHOW_LOV_CRE := ''0'';',
':P99_SHOW_LOV_TCK := ''0''; ',
'',
':P99_PAGARE := ''N'';',
'IF :P99_COD_EMPRESA = ''2'' THEN',
'    :P99_SER_COMPROBANTE_VAR := bs_busca_parametro(:P99_COD_MODULO, ''SERIE_CONTADOB'');',
'ELSE',
'    --P99_P_TIPO ES :PARAMETROS_P_TIPO',
'    IF :P99_P_TIPO=''FCR'' THEN',
'        if :P99_COD_SUCURSAL_VAR IN(''190'',''210'',''200'',''209'',''03'',''33'' ) then',
'            BEGIN',
'           	    select serie ',
'                  into :P99_SER_COMPROBANTE_VAR',
'                  from talonarios',
'                 where cod_empresa = :P99_COD_EMPRESA            ',
'                   and nvl( activo, ''S'' ) <> ''N''',
'                   and codigo_usuario=:APP_USER',
'                   and ''FCR''=TIP_TALONARIO',
'                   and ROWNUM=1;       ',
'            EXCEPTION',
'               	WHEN OTHERS THEN',
'               	    :P99_SER_COMPROBANTE_VAR:=''L4.2'';',
'           	END;',
'',
'       ',
'        else',
'       	    :P99_SER_COMPROBANTE_VAR:=''Cz1'';',
'        end if;	',
'    ELSIF :P99_P_TIPO=''TKT'' THEN               ',
'        begin',
'            select SER_COMPROBANTE',
'              into :P99_SER_COMPROBANTE_VAR',
'              from USUARIOS',
'             where cod_empresa = :P99_COD_EMPRESA',
'               and COD_USUARIO = :APP_USER;',
'        exception',
'            when others then',
'                :P99_SER_COMPROBANTE_VAR:=NULL;',
'        end;',
'        IF  :P99_SER_COMPROBANTE_VAR IS NULL THEN               ',
unistr('            IF :APP_USER= ''LETICIAI'' THEN              ---\00BFUSUARIO O ROL?'),
'                :P99_SER_COMPROBANTE_VAR:=''S5'';',
'            ELSIF :APP_USER=''CAJAST4'' THEN              ',
'               	:P99_SER_COMPROBANTE_VAR:=''I5'';               	',
'            ELSIF :APP_USER=''ISABELVI'' THEN              ',
'               	:P99_SER_COMPROBANTE_VAR:=''I5'';',
'            ELSIF :APP_USER=''JOSEGI'' THEN              ',
'               	:P99_SER_COMPROBANTE_VAR:=''H4'';',
'            ELSIF :APP_USER=''CAJAST1'' THEN              ',
'               	:P99_SER_COMPROBANTE_VAR:=''Q4'';',
'            ELSIF :APP_USER=''CAJAST2'' THEN              ',
'               	:P99_SER_COMPROBANTE_VAR:=''S5'';',
'            ELSIF :APP_USER=''CAJAST6'' THEN              ',
'               	:P99_SER_COMPROBANTE_VAR:=''I5'';',
'            ELSIF :APP_USER=''CAJAST3'' THEN              ',
'               	:P99_SER_COMPROBANTE_VAR:=''H4'';',
'            ELSE',
'               	:P99_SER_COMPROBANTE_VAR:=''S5'';',
'            END IF;',
'        END IF;                    ',
'    ELSIF :P99_P_TIPO=''DEB'' THEN',
'        :P99_SER_COMPROBANTE_VAR  := bs_busca_parametro( :P99_COD_MODULO, ''SERIE_DEBITO'');           ',
'    ELSE',
'    	BEGIN',
'       	    select serie ',
'              into :P99_SER_COMPROBANTE_VAR',
'              from talonarios',
'             where cod_empresa = :P99_COD_EMPRESA        ',
'               and nvl( activo, ''S'' ) <> ''N''',
'               and codigo_usuario =:APP_USER',
'               AND :P99_P_TIPO=TIP_TALONARIO',
'               AND ROWNUM=1;',
'        EXCEPTION',
'           	WHEN OTHERS THEN',
'           	    :P99_SER_COMPROBANTE_VAR:=''L4.2'';',
'       	END;',
'    	if  :P99_COD_SUCURSAL_VAR IN(''248'') then',
'       	    :P99_SER_COMPROBANTE_VAR:=''T3'';',
'       	elsif :P99_COD_SUCURSAL_VAR IN(''09'') then',
'       	    :P99_SER_COMPROBANTE_VAR:=''O1'';',
'       	elsif :P99_COD_SUCURSAL_VAR IN(''01'') then',
'       	    :P99_SER_COMPROBANTE_VAR:=''J7.2'';',
'       	elsif :P99_COD_SUCURSAL_VAR IN(''262'') then',
'       	    :P99_SER_COMPROBANTE_VAR:=''J6.3'';',
'       	elsif :P99_COD_SUCURSAL_VAR  IN(''190'',''210'',''200'',''209'',''03'',''33'') then',
'       	    :P99_SER_COMPROBANTE_VAR:=''L4.2'';',
'       	elsif :P99_COD_SUCURSAL_VAR  IN(''20'') then',
'       	    :P99_SER_COMPROBANTE_VAR:=''M2'';',
'       	else',
'            :P99_SER_COMPROBANTE_VAR  := bs_busca_parametro( :P99_COD_MODULO, ''SERIE_CONTADO'');',
'        end if;	    ',
'    	BEGIN',
'           	select serie ',
'              into :P99_SER_COMPROBANTE_VAR',
'              from talonarios',
'             where cod_empresa = :P99_COD_EMPRESA                  ',
'               and nvl( activo, ''S'' ) <> ''N''',
'               and codigo_usuario =:APP_USER',
'               AND :P99_P_TIPO=TIP_TALONARIO',
'               AND ROWNUM=1;',
'        EXCEPTION',
'           	WHEN OTHERS THEN',
'           	    :P99_SER_COMPROBANTE_VAR:=''L4.2'';',
'        END;',
'    END IF;',
'END IF;    ',
':P99_SER_DEB :=''G'';',
':P99_SER_TIK := ''A'';',
':P99_LISTA_PRECIOS_VAR  := bs_busca_parametro( :P99_COD_MODULO, ''PRECIO_CONTADO''      );',
':P99_COD_CLIENTE_OCA    := bs_busca_parametro( :P99_COD_MODULO, ''COD_CLIENTE_OCASION'' );',
':P99_CONDICION_VENTA    := bs_busca_parametro( :P99_COD_MODULO, ''CONDICION_CONTADO''   );',
':P99_MODIFICA_PRECIOS   := bs_busca_parametro( :P99_COD_MODULO, ''MODIFICA_PRECIOS''    );',
':P99_VARIACION_MENOS    := bs_busca_parametro( :P99_COD_MODULO, ''VARIACION_MENOS''     );',
':P99_VARIACION_MAS      := bs_busca_parametro( :P99_COD_MODULO, ''VARIACION_MAS''       );',
':P99_TIP_CONTADO        := bs_busca_parametro( :P99_COD_MODULO, ''TIPO_CONTADO''        );',
':P99_TIP_TICKET_VAR     := bs_busca_parametro( :P99_COD_MODULO, ''TIPO_TICKET''        );',
':P99_TIP_DEBITO         := ''DEB'';',
':P99_TIP_CREDITO        := bs_busca_parametro( :P99_COD_MODULO, ''TIPO_CREDITO''        );',
':P99_TIP_REFERENCIAS    := bs_busca_parametro( :P99_COD_MODULO, ''TIP_REFERENCIAS''     );',
':P99_VENDEDOR_SERVICIOS := bs_busca_parametro( :P99_COD_MODULO, ''VENDEDOR_SERVICIOS''  );',
':P99_COD_MONEDA_PRECIO  := bs_busca_parametro( :P99_COD_MODULO, ''COD_MONEDA_PREC''     );',
':P99_COD_MONEDA_BASE    := bs_busca_parametro( :P99_COD_MODULO, ''COD_MONEDA_BASE''     );',
':P99_COD_SECTOR_VAR     := bs_busca_parametro( :P99_COD_MODULO, ''SECTOR_DEFECTO''      );',
':P99_MENSAJE_CONTADO    := bs_busca_parametro( :P99_COD_MODULO, ''LEYENDA_CONTADO''     );',
':P99_MENSAJE_CREDITO    := bs_busca_parametro( :P99_COD_MODULO, ''LEYENDA_CREDITO''     );',
':P99_USA_CONDICIONES    := bs_busca_parametro( :P99_COD_MODULO, ''USA_CONDICIONES''     );',
':P99_TIPO_TALON_FACTURA := bs_busca_parametro( :P99_COD_MODULO, ''TIPO_TALON_FACTURA''  );',
':P99_UNIDAD_MEDIDA      := bs_busca_parametro( :P99_COD_MODULO, ''UNIDAD_MEDIDA_DEF''   );',
':P99_TIP_VENTA          := bs_busca_parametro( :P99_COD_MODULO, ''TIPO_VENTA_DEF''      );',
':P99_RUBRO_REPUESTO     := bs_busca_parametro( :P99_COD_MODULO, ''RUBRO_REPUESTO''      );',
':P99_RUBRO_MANO_OBRA    := bs_busca_parametro( :P99_COD_MODULO, ''RUBRO_MANO_OBRA''     );',
':P99_VIENE_DEL_LOTE     := ''N'';',
':P99_MONTO_AJUSTE_MAX   := to_number( ltrim( rtrim( bs_busca_parametro( :P99_COD_MODULO, ''MONTO_AJUSTE_MAX'' ) ) ) );',
':P99_CREDITO_MINIMO     := to_number( ltrim( rtrim( bs_busca_parametro( :P99_COD_MODULO, ''CREDITO_MINIMO'' ) ) ) );',
':P99_FEC_VENCIMIENTO    := to_date( bs_busca_parametro( :P99_COD_MODULO, ''FECHA LOTE DEFECTO'' ), ''dd/mm/yyyy'' );',
':P99_LOTE_DEFECTO         := bs_busca_parametro( :P99_COD_MODULO, ''LOTE POR DEFECTO'' );',
':P99_TIP_MOTIVO_ANULACION := bs_busca_parametro( :P99_COD_MODULO, ''TIP_ANULACION_FAC'' );',
':P99_MAX_NRO_FACTURA      := to_number( bs_busca_parametro( :P99_COD_MODULO, ''MAX_NRO_FACTURA''     ) );',
':P99_RECARGO_VAR          := bs_busca_parametro( :P99_COD_MODULO, ''RECARGO_ARTICULO''    ) ;',
':P99_TEL_EMPRESA          := bs_busca_parametro( ''BS'', ''TEL_EMPRESA''    ) ;    ',
':P99_FAX_EMPRESA          := bs_busca_parametro( ''BS'', ''FAX_EMPRESA''    ) ; ',
':P99_RUC_EMPRESA          := bs_busca_parametro( ''BS'', ''RUC_EMPRESA''    ) ;    ',
':P99_TIMB_EMPRESA         := bs_busca_parametro( ''BS'', ''TIMB_EMPRESA''    ) ;  ',
':P99_VT_COND_CONTADO      := bs_busca_parametro( ''BS'', ''VT_COND_CONTADO''    ) ; ',
'',
':P99_PORC_IVA := vtfactur.busca_porc_iva(:P99_COD_MODULO);',
':P99_REFERENCIA := vtfactur.busca_referencia;',
':P99_COD_SUCURSAL_CENTRAL := vtfactur.busca_cod_sucursal_central(PI_COD_EMPRESA => :P99_COD_EMPRESA,',
'                                                                 PI_COD_SUCURSAL => :P99_COD_SUCURSAL_VAR);',
'',
'--PERMISOS',
':P99_FACTURA_NEGATIVO         := busca_permiso( :P99_COD_EMPRESA,''VTFACTUR'',:P99_COD_USUARIO,''FACTURA STOCK NEGATIVO'' );',
':P99_FACTURA_SIN_AUTORIZACION := busca_permiso( :P99_COD_EMPRESA,''VTFACTUR'',:P99_COD_USUARIO,''FACTURA SIN AUTORIZACION'' );',
':P99_PERMITE_ANULAR           := busca_permiso( :P99_COD_EMPRESA,''VTFACTUR'',:P99_COD_USUARIO,''PERMITE ANULAR'' );',
':P99_CAMBIA_NUMERO_FAC        := busca_permiso( :P99_COD_EMPRESA,''VTFACTUR'',:P99_COD_USUARIO,''CAMBIA_NUMERO_FAC'' );',
':P99_CARGA_SUCURSAL           := busca_permiso( :P99_COD_EMPRESA,''VTFACTUR'',:P99_COD_USUARIO,''CARGA_SUCURSAL'' );',
':P99_CARGA_PRECIOS            := busca_permiso( :P99_COD_EMPRESA,''VTFACTUR'',:P99_COD_USUARIO,''CARGA PRECIOS'' );',
':P99_CARGA_DESCUENTOS         := busca_permiso( :P99_COD_EMPRESA,''VTFACTUR'',:P99_COD_USUARIO,''CARGA DESCUENTOS'' );',
':P99_CARGA_RECARGO            := busca_permiso( :P99_COD_EMPRESA,''VTFACTUR'',:P99_COD_USUARIO,''CARGA RECARGO'' );',
':P99_SUPERA_DESCUENTO         := busca_permiso( :P99_COD_EMPRESA,''VTFACTUR'',:P99_COD_USUARIO,''SUPERA DESCUENTO MAX'' );',
':P99_CARGA_COTIZACION         := busca_permiso( :P99_COD_EMPRESA,''VTFACTUR'',:P99_COD_USUARIO,''CARGA COTIZACION'' );',
':P99_MODIFICA_FECHA_ANT       := busca_permiso( :P99_COD_EMPRESA,''VTFACTUR'',:P99_COD_USUARIO,''MODIFICA FECHA ANTERIOR'' );',
':P99_CAMBIA_FECHA             := busca_permiso( :P99_COD_EMPRESA,''VTFACTUR'',:P99_COD_USUARIO,''CAMBIA_FECHA'' );',
':P99_MODIFICA_DETALLE         := busca_permiso( :P99_COD_EMPRESA,''VTFACTUR'',:P99_COD_USUARIO,''MODIFICA_DETALLE'' );                                                   ',
':P99_SUPERA_CANT_LINEAS       := busca_permiso( :P99_COD_EMPRESA,''VTFACTUR'',:P99_COD_USUARIO,''SUPERA_CANT_LINEAS'' );                                                      ',
':P99_REIMPRIME                := busca_permiso( :P99_COD_EMPRESA, ''VTFACTUR'', :P99_COD_USUARIO, ''REIMPRIME'' ) ; ',
':P99_IMPRIME_LICITACION       := busca_permiso( :P99_COD_EMPRESA, ''VTFACTUR'', :P99_COD_USUARIO, ''IMPRIME_LICITACION'' ) ; ',
'',
'--INICIALIZADORES',
':P99_IMPRIME_CONDICION:= ''S'';',
':P99_IMPRIME_COMENTARIO := ''S'';',
':P99_NRO_MENSAJE := 0;                                                                 ',
'',
':P99_USA_UM_DEF := vtfactur.trae_um_def(:P99_COD_SUCURSAL_VAR, :P99_COD_EMPRESA);',
':P99_GENERA_MD := ''N'';',
''))
,p_process_clob_language=>'PLSQL'
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
 p_id=>wwv_flow_imp.id(22944317235412545)
,p_process_sequence=>20
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_CARGA_DATOS'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'--WHEN-NEW-FORM-INSTANCE ',
'vtfactur.talonario (PI_COD_EMPRESA  => :P99_COD_EMPRESA,',
'                    PI_TIP_CONTADO  => :P99_TIP_CONTADO,',
'                    PI_TIP_CREDITO => :P99_TIP_CREDITO,',
'                    PI_TIP_TICKET => :P99_TIP_TICKET_VAR,',
'                    PI_P_TIPO => :P99_P_TIPO, --PARAMETER',
'                    PI_COD_SUCURSAL => :P99_COD_SUCURSAL, --CABECERA',
'                    PI_COD_SUCURSAL_CENTRAL => :P99_COD_SUCURSAL_CENTRAL,',
'                    PI_COD_USUARIO => :P99_COD_USUARIO,',
'                    PO_SER_CON => :P99_SER_CON,',
'                    PO_NRO_CON_INICIAL => :P99_NRO_CON_INICIAL,',
'                    PO_NRO_CON_FINAL => :P99_NRO_CON_FINAL,',
'                    PO_IMPRIME_CON => :P99_IMPRIME_CON,',
'                    PO_TIP_IMPRESION_CON => :P99_TIP_IMPRESION_CON,',
'                    PO_AUTO_IMPRESO => :P99_AUTO_IMPRESO,',
'                    PO_SER_CRE => :P99_SER_CRE,                     ',
'                    PO_NRO_CRE_INICIAL => :P99_NRO_CRE_INICIAL,',
'                    PO_NRO_CRE_FINAL => :P99_NRO_CRE_FINAL,',
'                    PO_IMPRIME_CRE => :P99_IMPRIME_CRE,',
'                    PO_TIP_IMPRESION_CRE => :P99_TIP_IMPRESION_CRE,',
'                    PO_SER_TIK => :P99_SER_TIK,',
'                    PO_NRO_TIK_INICIAL => :P99_NRO_TIK_INICIAL,',
'                    PO_NRO_TIK_FINAL => :P99_NRO_TIK_FINAL,',
'                    PO_MENSAJE => :P99_AUX_MSJ,',
'                    PO_SHOW_LOV_CON   => :P99_SHOW_LOV_CON,                     ',
'                    PO_SHOW_LOV_CRE   => :P99_SHOW_LOV_CRE,',
'                    PO_SHOW_LOV_TKC   => :P99_SHOW_LOV_TCK);  ',
'                      ',
'IF :P99_SHOW_LOV_CON = ''1'' OR :P99_SHOW_LOV_CRE = ''1'' OR :P99_SHOW_LOV_TCK = ''1'' THEN',
'    :P99_SHOW_LOV := 1;',
'ELSE',
'    :P99_SHOW_LOV := 2; ',
'                                ',
'END IF;                                            ',
'',
'IF :P99_P_NRO_COMPROBANTE IS NOT NULL THEN',
'    NULL; -- SELECT',
'END IF;    ',
'',
'IF nvl(:P99_COD_SUCURSAL,''01'') IN(''190'',''03'',''209'') THEN',
'    :P99_COD_CUSTODIO_ENT:=''514'';',
'ELSIF nvl(:P99_COD_SUCURSAL,''01'')=''65'' THEN',
'    :P99_COD_CUSTODIO_ENT:=''171'';	 ',
'ELSIF nvl(:P99_COD_SUCURSAL,''01'') IN(''02'',''15'') THEN',
'    :P99_COD_CUSTODIO_ENT:=''305'';	',
'ELSIF nvl(:P99_COD_SUCURSAL,''01'') IN(''09'',''105'') THEN',
'    :P99_COD_CUSTODIO_ENT:=''233'';	',
'-- 07 - 13 - 15 - 02 ',
'ELSIF nvl(:P99_COD_SUCURSAL,''01'') IN(''07'',''13'',''15'',''02'',''01'',''18'') THEN',
'    :P99_COD_CUSTODIO_ENT:=''40'';	',
'ELSE 	                        ',
'    :P99_COD_CUSTODIO_ENT:=''40'';-- busca_parametro( ''CC'', ''COD_CUSTODIO_DEP'' ); ',
'END IF;',
' ',
'IF nvl(:P99_P_IND_ANTICIPO,''N'')=''S'' THEN',
'    :P99_TIP_COMPROBANTE_REF:=:P99_P_TIP_COMPROBANTE_REF;',
'    :P99_SER_COMPROBANTE_REF:=:P99_P_SER_COMPROBANTE_REF;',
'    :P99_NRO_COMPROBANTE_REF:=:P99_P_NRO_COMPROBANTE_REF;',
'end IF;',
' ',
'IF :P99_P_NRO_COMPROBANTE_REF IS NOT NULL THEN',
'    :P99_TIP_COMPROBANTE_REF:=:P99_P_TIP_COMPROBANTE_REF;',
'    :P99_SER_COMPROBANTE_REF:=:P99_P_SER_COMPROBANTE_REF;',
'    :P99_NRO_COMPROBANTE_REF:=:P99_P_NRO_COMPROBANTE_REF;',
'end IF;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(22944899389412550)
,p_process_sequence=>30
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_INIT_CABECERA'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'--WHEN-NEW-RECORD-INSTANCE',
'IF :P99_NRO_COMPROBANTE IS NOT NULL THEN',
'    :P99_ESTADO_ANT := :P99_ESTADO;',
'END IF;',
'',
':P99_NRO_AUTORIZACION := null ;',
'',
'--WHEN-CREATE-RECORD',
':P99_FEC_COMPROBANTE := trunc(sysdate);--trae_fecha( :variables.cod_empresa, :variables.cod_modulo );',
':P99_FECHA_INICIAL:= trae_fecha( :P99_COD_EMPRESA, :P99_COD_MODULO);--:b_cabecera.FECHA_FINAL:= trae_fecha( :variables.cod_empresa, :variables.cod_modulo )+1;',
':P99_ESTADO := ''P'';',
':P99_GEN_ORDEN := ''N''; --CREAR',
':P99_CANTIDAD_IMPRESION:=0;  --CREAR',
':P99_CARGA_DETALLE:= ''N'';  --CREAR',
':P99_IMPRIMIR := ''S'';  --CREAR',
':P99_IMPRIME_CONDICION := ''S'';',
':P99_IND_ANTICIPO_OT:=NVL(:P99_P_IND_ANTICIPO,''N'');',
':P99_BORRADO := ''N'';',
':P99_COD_SUCURSAL := :P99_COD_SUCURSAL_VAR;',
':P99_COD_USUARIO_CAB:= :P99_COD_USUARIO;',
':P99_TOTAL := 0;',
':P99_TOTAL_IVA := 0;',
':P99_IVA_PARCIAL := 0;',
':P99_SUBTOTAL := 0;',
':P99_SUBTOTAL_PARCIAL := 0;',
':P99_GRAVADAS := 0;',
':P99_GRAVADAS_PARCIAL := 0;',
':P99_EXENTAS := 0;',
':P99_EXENTAS_PARCIAL := 0;',
':P99_NRO_LINEAS := 0;',
':P99_GRU_COMPROBANTE := ''FAC'';',
':P99_CARGA_DETALLES_VARIOS := ''S'';',
'--:P99_TIP_COMPROBANTE := nvl( :P99_TIP_ANTERIOR, ''FCR'' );',
':P99_AJUSTE_IVA := NULL;',
':P99_COD_SECTOR := :P99_COD_SECTOR_VAR ;',
':P99_HORA_ALTA := to_char(sysdate, ''HH24:MI:SS'');',
'',
'vtfactur.busca_custodio(PI_COD_EMPRESA => :P99_COD_EMPRESA,',
'                        PI_COD_USUARIO => :P99_COD_USUARIO, --''INV'', --PARA PRUEBA',
'                        PO_COD_CUSTODIO => :P99_COD_CUSTODIO,',
'                        PO_DESC_CUSTODIO => :P99_DESC_CUSTODIO);',
'',
'if :P99_COD_CUSTODIO is null and :P99_COD_EMPRESA <> ''1'' then',
'    vtfactur.busca_custodio(PI_COD_EMPRESA => ''1'',',
'                            PI_COD_USUARIO => :P99_COD_USUARIO,',
'                            PO_COD_CUSTODIO => :P99_COD_CUSTODIO,',
'                            PO_DESC_CUSTODIO => :P99_DESC_CUSTODIO);',
'end if;',
'',
'if :P99_TIP_ANTERIOR = :P99_TIP_CONTADO then',
'   :P99_SER_COMPROBANTE := :P99_SER_CON;',
'end if;',
'if :P99_TIP_ANTERIOR = :P99_TIP_CREDITO then',
'   :P99_SER_COMPROBANTE := :P99_SER_CRE;',
'end if;',
'',
'if :P99_P_TIPO is not null then',
'  ------------------------- 27-04-04 ----------------------------',
'  if :P99_P_TIPO = ''FC'' then                    -- agregado',
'    :P99_TIP_COMPROBANTE := ''FCR'';             -- agregado',
'    :P99_TIP_COMPROBANTE_REF := ''ORT'';         -- agregado',
'  else                                                -- agregado',
'    :P99_TIP_COMPROBANTE := :P99_P_TIPO;',
'    if :P99_P_TIPO = ''FCR'' then',
'      :P99_TIP_COMPROBANTE_REF := NVL(:P99_P_TIP_COMPROBANTE_REF,''PED'');',
'    else',
'      :P99_TIP_COMPROBANTE_REF := ''ORT'';',
'    end if ;',
'  end if;                                             -- agregado',
'  ---------------------------------------------------------------',
'end if;',
'',
':P99_C_CAMBIO_MONEDA_PRECIO := VTFACTUR.busca_cambio_moneda_precio;',
'if :P99_REFERENCIA is not null then',
'   begin',
'      select translate( ltrim( rtrim( to_char( nvl( :P99_C_TIP_CAMBIO, 0 ) ) ) ), ''1234567890'', :P99_REFERENCIA )',
'         into :P99_TIP_CAMBIO',
'         from dual ;',
'   end ;',
'   begin',
'      select translate( ltrim( rtrim( to_char( nvl( :P99_CAMBIO_MONEDA_PRECIO, 0 ) ) ) ), ''1234567890'', :P99_REFERENCIA )',
'        into :P99_CAMBIO_MONEDA_PRECIO',
'        from dual ;',
'   end ;',
'ELSE',
'   begin',
'      select translate( ltrim( rtrim( to_char( nvl( :P99_C_TIP_CAMBIO, 0 ) ) ) ), ''1234567890'', ''1234567890'' )',
'         into :P99_TIP_CAMBIO',
'         from dual ;',
'   end ;',
'   begin',
'      select translate( ltrim( rtrim( to_char( nvl( :P99_CAMBIO_MONEDA_PRECIO, 0 ) ) ) ), ''1234567890'', ''1234567890'' )',
'         into :P99_CAMBIO_MONEDA_PRECIO',
'         from dual ;',
'   end ;',
'END IF;',
' ',
'IF :P99_SER_COMPROBANTE IS NULL THEN',
'   :P99_SER_COMPROBANTE := :P99_SER_COMPROBANTE_VAR;',
'END IF;',
'',
':P99_SER_COMPROBANTE_REF := NVL(:P99_P_SER_COMPROBANTE_REF,''P'');--:P99_SER_COMPROBANTE; --''A'' ; --=--=--=--',
'',
'IF :P99_COD_SUCURSAL IS NULL THEN',
'  :P99_COD_SUCURSAL := :P99_COD_SUCURSAL_VAR;',
'END IF;',
'',
'if :P99_COD_CUSTODIO in (''171'',''251'',''145'') then',
'    :P99_COD_CUSTODIO_ENT:=null;',
'    :P99_GENERA_MD:=''N'';',
'end if; ',
'',
':P99_OLD_CLIENTE := :P99_COD_CLIENTE;',
'',
'',
'BEGIN',
' SELECT tipo_cambio_dia',
'into :P99_CAMBIO_MONEDA_PRECIO',
'  FROM monedas m, parametros_generales p',
' WHERE p.parametro = ''COD_MONEDA_PREC''',
'   AND p.valor = m.cod_moneda',
'   AND rownum = 1;',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN ',
'        :P99_CAMBIO_MONEDA_PRECIO := NULL;',
'  when others then',
'    :P99_CAMBIO_MONEDA_PRECIO := 1 ;',
'END;  ',
'',
''))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(70668113192657944)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Validaciones'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  DECLARE ',
'    v_estado VARCHAR2(5);',
'  BEGIN',
'      BEGIN ',
'          SELECT ESTADO',
'          INTO v_estado',
'           FROM CC_CLIENTES C',
'            ',
'           WHERE C.COD_CLIENTE = ''283114''',
'         AND COD_EMPRESA = ''1'';',
'         EXCEPTION ',
'            WHEN OTHERS THEN ',
'                v_estado := ''A'';',
'',
'      END;',
'',
'      IF v_estado =  ''B'' THEN ',
'        RAISE_APPLICATION_ERROR(-20001,  ''El cliente seleccionado se encuentra Bloqueado'');',
'     END IF;',
'     IF v_estado =  ''I'' THEN ',
'        RAISE_APPLICATION_ERROR(-20001,  ''El cliente seleccionado se encuentra Inactivo'');',
'     END IF;',
'',
'     IF v_estado =  ''D'' THEN ',
'        RAISE_APPLICATION_ERROR(-20001,  ''El cliente seleccionado se encuentra con estado Demandado'');',
'     END IF;',
'',
'  END;',
'',
'  ',
'  DECLARE',
'    xbloqueado     EXCEPTION;',
'    vplazo NUMBER(3);',
'  BEGIN',
'    select nro_cuotas',
'      into vplazo',
'      from cc_condiciones_ventas',
'     where cod_empresa = :P_COD_EMPRESA',
'       and cod_condicion_venta = :P99_COD_CONDICION_VENTA;',
'',
'      IF nvl( vplazo, 0 ) > 0 AND :P99_ESTADO_CLIENTE = ''C'' and :P99_COD_SECTOR not in (''4.1'') THEN',
'      	 IF :P99_VT_COND_CONTADO = NVL(:P99_COD_CONDICION_VENTA,''36'') AND :P99_TIP_COMPROBANTE=''FCR'' AND :P99_TIP_COMPROBANTE_REF=''ORT'' THEN',
'		    		NULL ;',
'	    	ELSE',
unistr('                raise_application_error(-20001, ''Condici\00F3n de Ventas no V\00E1lida - El cliente est\00E1 con Cr\00E9dito Bloqueado'' );'),
'        end if;',
'      END IF;',
'  END;',
'',
'declare ',
'    v_estado VARCHAR2(50) := ''N'';',
'    v_permisos VARCHAR2(50) := ''N'';',
'begin ',
'    if :P99_TIP_COMPROBANTE = ''FCR'' AND :P99_TIP_COMPROBANTE_REF = ''PED'' THEN ',
'        begin ',
'            BEGIN',
'                select AUTORIZADO',
'                INTO v_estado        ',
'                from vt_pedidos_cabecera a',
'                where a.nro_comprobante = :P99_NRO_COMPROBANTE_REF',
'                and a.ser_comprobante = :P99_SER_COMPROBANTE_REF',
'                AND A.TIP_COMPROBANTE = :P99_TIP_COMPROBANTE_REF',
'                and cod_empresa=:p_cod_empresa;',
'            EXCEPTION ',
'                WHEN OTHERS THEN  ',
'                    v_estado :=  ''N'';',
'            END;',
'            IF NVL(v_estado, ''N'') <> ''S'' THEN ',
'                RAISE_APPLICATION_ERROR(-20001, ''El pedido seleccionado no se encuentra autorizado por un supervisor de ventas'');',
'            END IF;',
'        end;    ',
'',
'    ELSIF :P99_TIP_COMPROBANTE = ''FCO'' AND :P99_TIP_COMPROBANTE_REF = ''PED'' THEN ',
'',
'             BEGIN',
'            select AUTORIZADO',
'            INTO v_estado        ',
'            from vt_pedidos_cabecera a',
'            where a.nro_comprobante = :P99_NRO_COMPROBANTE_REF',
'            and a.ser_comprobante = :P99_SER_COMPROBANTE_REF',
'            AND A.TIP_COMPROBANTE = :P99_TIP_COMPROBANTE_REF',
'            and cod_empresa=:p_cod_empresa;',
'            EXCEPTION ',
'                WHEN OTHERS THEN  ',
'                    v_estado :=  NULL;',
'            END;',
'',
'            begin ',
'                select PERMISO ',
'                into v_permisos',
'                from permisos_opciones PO',
'                where cod_empresa = ''1''',
'                and cod_usuario = :APP_USER',
'                and nom_forma = ''VTFACTUR''',
'                and parametro = ''FACTURA SIN AUTORIZACION'';',
'                exception ',
'                    when others then ',
'                        v_permisos := ''N'';',
'            end;',
'        if v_estado <> ''S'' AND v_permisos = ''N'' THEN ',
'                RAISE_APPLICATION_ERROR(-20001, ''El pedido seleccionado no se encuentra autorizado por un supervisor de ventas'');',
'        end if;',
'    END IF;',
'',
'end;',
'',
'',
'DECLARE',
'  vscursal varchar2(3);',
'  vnro_cuotas NUMBER;',
'  VEXISTE_autorizacion varchar2(3);',
'BEGIN',
'',
'IF :P99_TIP_COMPROBANTE_REF = ''PED'' THEN',
'     ',
'     ',
'     BEGIN',
'            SELECT nvl(c.autorizado,''N''), cc.nro_cuotas',
'            INTO VEXISTE_autorizacion, vnro_cuotas',
'            FROM VT_PEDIDOS_CABECERA C, cc_condiciones_ventas cc',
'            WHERE C.COD_EMPRESA=:P_cod_empresa',
'            AND  C.TIP_COMPROBANTE=:P99_TIP_COMPROBANTE_REF',
'            AND  C.SER_COMPROBANTE=:P99_SER_COMPROBANTE_REF',
'            AND C.NRO_COMPROBANTE=:P99_NRO_COMPROBANTE_REF',
'            and cc.cod_empresa=c.cod_empresa',
'            and cc.cod_condicion_venta=c.cod_condicion_venta',
'           ;',
'            IF NVL(VEXISTE_autorizacion,''N'')<>''S'' AND :P99_TIP_COMPROBANTE=''FCR''  THEN',
'             RAISE_APPLICATION_ERROR(-20000,''No se puede facturar un pedido sin autorizacion.''|| sqlerrm );',
'             END IF;',
'             if nvl(vnro_cuotas,0)>1 and  NVL(VEXISTE_autorizacion,''N'')<>''S''  then',
'               RAISE_APPLICATION_ERROR(-20000,''No se puede facturar un pedido sin autorizacion.''|| sqlerrm );',
'               end if;',
'                if :P99_tip_comprobante=''FCR'' and  NVL(VEXISTE_autorizacion,''N'')<>''S''  then',
'               RAISE_APPLICATION_ERROR(-20000,''No se puede facturar un pedido sin autorizacion.''|| sqlerrm );',
'               end if;',
'               END;',
'               END IF;',
'               ',
'            END;',
'               ',
'',
'',
'declare',
'  vexiste number:=0 ;',
'begin',
'  begin',
'    SELECT count(*)',
'      INTO VEXISTE',
'      FROM APEX_COLLECTIONS',
'     WHERE COLLECTION_NAME = ''DETALLE_COMPROBANTE''',
'    ;',
'  exception',
'    when others then',
'      vexiste := null;',
'  end;',
'  if nvl(vexiste,0) =0 then',
'    RAISE_APPLICATION_ERROR(-20001,',
'                            ''No se puede guardar factura sin detalle'');',
'  end if;',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'eRROR EN VALIDACIONES'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(23498759414061411)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(99779698140177747)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PRE INSERT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  cursor cur_detalles IS',
'    SELECT C027 nro_lote',
'      FROM APEX_COLLECTIONS',
'     WHERE COLLECTION_NAME = ''DETALLE_COMPROBANTE'';',
'BEGIN',
'  FOR a IN cur_detalles LOOP',
'    IF a.nro_lote IS NULL THEN',
'      RAISE_APPLICATION_ERROR(-20001,',
unistr('                              ''El art\00EDculo no cuenta con Nro. de Lote'');'),
'    END IF;',
'  END LOOP;',
'',
'END;',
'',
'',
'DECLARE',
'  cursor cur_detalles IS',
'    SELECT  TO_NUMBER(C005) cantidad',
'      FROM APEX_COLLECTIONS',
'     WHERE COLLECTION_NAME = ''DETALLE_COMPROBANTE'';',
'BEGIN',
'  FOR a IN cur_detalles LOOP',
'    IF nvl(a.cantidad,0) =0 THEN',
'      RAISE_APPLICATION_ERROR(-20001,',
unistr('                              ''El art\00EDculo no cuenta con cantidad '');'),
'    END IF;',
'  END LOOP;',
'',
'END;',
'',
'declare',
'  vexiste varchar2(200) ;',
'begin',
'  begin',
'    SELECT C001',
'      INTO VEXISTE',
'      FROM APEX_COLLECTIONS',
'     WHERE COLLECTION_NAME = ''DETALLE_COMPROBANTE''',
'     and rownum=1;',
'  exception',
'    when others then',
'      vexiste := null;',
'  end;',
'  if vexiste is null then',
'    RAISE_APPLICATION_ERROR(-20001,',
'                            ''No se puede guardar factura sin detalle(1)'');',
'  end if;',
'',
'end;',
'',
'DECLARE',
'  xbloqueado EXCEPTION;',
'  vplazo     NUMBER(3);',
'BEGIN',
'  select nro_cuotas * per_cuotas',
'    into vplazo',
'    from cc_condiciones_ventas',
'   where cod_empresa = :p_cod_empresa',
'     and cod_condicion_venta = :P99_COD_CONDICION_VENTA;',
'',
'  IF nvl(vplazo, 0) > 1 AND :P99_TIP_COMPROBANTE = ''FCO'' THEN',
'  ',
'    RAISE_APPLICATION_ERROR(-20001,',
unistr('                            ''Condici\00F3n de Ventas no V\00E1lida para la venta de tipo contado'');'),
'  ',
'  END IF;',
'',
'  IF nvl(vplazo, 0) = 0 AND :P99_TIP_COMPROBANTE = ''FCR'' THEN',
'    RAISE_APPLICATION_ERROR(-20001,',
unistr('                            ''Condici\00F3n de Ventas no V\00E1lida para la venta de tipo credito'');'),
'  ',
'  END IF;',
'',
'EXCEPTION',
'  when xbloqueado then',
'    RAISE_APPLICATION_ERROR(-20001,',
unistr('                            ''Condici\00F3n de Ventas no V\00E1lida para el tipo de venta'');'),
'  when others then',
'    null;',
'END;',
'',
'inv.vtfactur.valida_tip_compr_nro_comprob(PI_COD_EMPRESA     => :P99_COD_EMPRESA,',
'                                          PI_TIP_COMPROBANTE => :P99_TIP_COMPROBANTE,',
'                                          PI_SER_COMPROBANTE => :P99_SER_COMPROBANTE,',
'                                          PI_NRO_COMPROBANTE => :P99_NRO_COMPROBANTE,',
'                                          PI_NRO_CON_INICIAL => :P99_NRO_CON_INICIAL,',
'                                          PI_NRO_CON_FINAL   => :P99_NRO_CON_FINAL,',
'                                          PI_TIP_CONTADO     => :P99_TIP_CONTADO,',
'                                          PI_TIP_TICKET      => :P99_TIP_TICKET_VAR,',
'                                          PI_NRO_TIK_INICIAL => :P99_NRO_TIK_INICIAL,',
'                                          PI_NRO_TIK_FINAL   => :P99_NRO_TIK_FINAL,',
'                                          PI_MAX_NRO_FACTURA => :P99_MAX_NRO_FACTURA,',
'                                          PI_TIP_CREDITO     => :P99_TIP_CREDITO,',
'                                          PI_NRO_CRE_INICIAL => :P99_NRO_CRE_INICIAL,',
'                                          PI_NRO_CRE_FINAL   => :P99_NRO_CRE_FINAL,',
'                                          PI_IMPRIME_CON     => :P99_IMPRIME_CON,',
'                                          PI_IMPRIME_CRE     => :P99_IMPRIME_CRE,',
'                                          PO_NRO_COMPROBANTE => :P99_NRO_COMPROBANTE);',
''))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Error en el Pre-insert'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(23498759414061411)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(29392688525747213)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'GUARDA'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    VTFACTUR.inserta_cabecera(P_COD_EMPRESA => :P99_COD_EMPRESA, P_TIP_COMPROBANTE => :P99_TIP_COMPROBANTE, P_SER_COMPROBANTE => :P99_SER_COMPROBANTE, ',
'                              P_NRO_COMPROBANTE => :P99_NRO_COMPROBANTE, P_COD_SUCURSAL => :P99_COD_SUCURSAL, P_FEC_COMPROBANTE => :P99_FEC_COMPROBANTE,',
'                              P_COD_CLIENTE => :P99_COD_CLIENTE, P_NOM_CLIENTE => :P99_NOM_CLIENTE, P_COD_VENDEDOR => :P99_COD_VENDEDOR, P_TIP_COMPROBANTE_REF => :P99_TIP_COMPROBANTE_REF, ',
'                              P_SER_COMPROBANTE_REF => :P99_SER_COMPROBANTE_REF , P_NRO_COMPROBANTE_REF => :P99_NRO_COMPROBANTE_REF,',
'                              P_COD_CONDICION_VENTA => :P99_COD_CONDICION_VENTA, P_COD_LISTA_PRECIO => :P99_COD_LISTA_PRECIO, P_DESCUENTO => :P99_DESCUENTO, ',
'                              P_COD_MONEDA => :P99_COD_MONEDA, P_TIP_CAMBIO => :P99_C_TIP_CAMBIO,  P_NRO_MOV_CAJ => :P99_NRO_MOV_CAJ, P_ESTADO => :P99_ESTADO, ',
'                              P_FEC_ESTADO => :P99_FEC_ESTADO, P_COD_USUARIO => :P99_COD_USUARIO, P_FEC_ALTA => :P99_FEC_ALTA,',
'                              P_CAMBIO_MONEDA_PRECIO => :P99_CAMBIO_MONEDA_PRECIO, P_TIP_CAMBIO_COMPRA => :P99_TIP_CAMBIO_COMPRA, P_COMENTARIO => :P99_COMENTARIO, ',
'                              P_GRU_COMPROBANTE => :P99_GRU_COMPROBANTE, P_ENTREGA_INICIAL => :P99_ENTREGA_INICIAL, P_COD_SECTOR => :P99_COD_SECTOR, P_TEL_CLIENTE => :P99_TEL_CLIENTE,',
'                              P_RUC => :P99_RUC, P_DIR_CLIENTE => :P99_DIR_CLIENTE, P_COD_DIRECCION => :P99_COD_DIRECCION, P_COD_ENCARGADO_FAC => :P99_COD_ENCARGADO_FAC, P_COD_USUARIO_ANU => :P99_COD_USUARIO_ANU, ',
'                              P_COD_MOTIVO_ANU => :P99_COD_MOTIVO_ANU, P_AJUSTE_IVA => :P99_AJUSTE_IVA, P_COD_CUSTODIO => :P99_COD_CUSTODIO, P_SENIA => :P99_SENIA, ',
'                              P_IND_EXENTO_AD => :P99_IND_EXENTO_AD,P_HORA_ALTA => :P99_HORA_ALTA,P_RECARGO => :P99_RECARGO,',
'						      P_CONTROL_FIN => :P99_CONTROL_FIN,P_FECHA_INICIAL => :P99_FECHA_INICIAL, P_FECHA_FINAL => :P99_FECHA_FINAL,P_IND_IMPRESO =>:P99_IND_IMPRESO, ',
'                              P_IND_ANTICIPO_OT => :P99_IND_ANTICIPO_OT, P_IMPORTE_CAPITAL => :P99_IMPORTE_CAPITAL, P_IMPORTE_INTERES => :P99_IMPORTE_INTERES);   ',
'',
'  /*  VTFACTUR.inserta_detalle(P_COD_EMPRESA          => :P99_COD_EMPRESA, ',
'                             P_TIP_COMPROBANTE      => :P99_TIP_COMPROBANTE, ',
'                             P_SER_COMPROBANTE      => :P99_SER_COMPROBANTE, ',
'                             P_NRO_COMPROBANTE      => :P99_NRO_COMPROBANTE,',
'                             P_COD_SECTOR           => :P99_COD_SECTOR,',
'                             P_TIP_COMPROBANTE_REF  => :P99_TIP_COMPROBANTE_REF,',
'                             P_NRO_COMPROBANTE_REF  => :P99_NRO_COMPROBANTE_REF);*/',
'',
'    --POST-INSERT B_CABECERA',
'    if nvl(:P99_GENERA_MD,''N'') = ''S'' and nvl(:P99_COD_CUSTODIO_ENT,''N'') <> :P99_COD_CUSTODIO and :P99_COD_CUSTODIO_ENT is not null then',
'        VTFACTUR.CARGA_PLANILLA(PI_COD_EMPRESA      => :P99_COD_EMPRESA,',
'                                PI_TIP_COMPROBANTE  => :P99_TIP_COMPROBANTE, ',
'                                PI_SER_COMPROBANTE  => :P99_SER_COMPROBANTE, ',
'                                PI_NRO_COMPROBANTE  => :P99_NRO_COMPROBANTE, ',
'                                PI_COD_USUARIO      => :P99_COD_USUARIO, ',
'                                PI_COD_CUSTODIO     => :P99_COD_CUSTODIO,',
'                                PI_COD_CUSTODIO_ENT => :P99_COD_CUSTODIO_ENT,',
'                                PI_TIP_CAMBIO       => :P99_C_TIP_CAMBIO,',
'                                PI_COD_MONEDA       => :P99_COD_MONEDA,',
'                                PI_TOTAL            => :P99_TOTAL, ',
'                                PI_COD_CLIENTE      => :P99_COD_CLIENTE,',
'                                PO_NRO_PLANILLA     => :P99_NRO_PLANILLA);',
'    end if  ;   ',
'    :P99_IMPRIMIR_REPORTE := ''S'';',
'    :P99_TIP_COMPROBANTE_AUX := :P99_TIP_COMPROBANTE;',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        :P99_IMPRIMIR_REPORTE := ''N'';',
'    ROLLBACK;',
'    RAISE_APPLICATION_ERROR(-20000, sqlerrm||'' AQUI'');',
'END;        '))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'eRROR AL GUARDAR'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(23498759414061411)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(108924198023676440)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'genera_nc_automatico'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare ',
'vserie_nc varchar2(10);',
'VMENSAJE VARCHAR2(400);',
'begin',
' begin',
'  select serie',
'    into vserie_nc',
'    from talonarios a',
'   where :P99_fec_comprobante between a.fecha_inicio and',
'         a.fec_vencimiento',
'     and a.tip_talonario = ''NCR''',
'     and cod_sucursal = :P99_cod_sucursal',
'     and cod_empresa = :P99_cod_empresa',
'     and codigo_usuario = :P99_COD_USUARIO',
'     and fec_vencimiento>=trunc(sysdate)',
'     and activo=''S''',
'     and rownum=1;',
'exception',
'  when others then',
'    begin',
'      select serie',
'        into vserie_nc',
'        from talonarios a',
'       where :P99_fec_comprobante between a.fecha_inicio and',
'             a.fec_vencimiento',
'         and a.tip_talonario = ''NCR''',
'         and cod_sucursal = :P99_cod_sucursal',
'         and cod_empresa = :P99_cod_empresa',
'           and fec_vencimiento>=trunc(sysdate)',
'     and activo=''S''',
'         and rownum = 1;',
'    exception',
'      when others then',
'        null;',
'      ',
'    end;',
'end;',
'sp_crea_nc_ruteo_aa(:P99_COD_EMPRESA,',
'                    :p99_ser_COMPROBANTE,',
'                    :p99_nro_compRobante,',
'                    vserie_nc,',
'                    null,',
'                    :P99_cod_sucursal,',
'                    null,',
'                    :P99_cod_custodio,',
'                    vmensaje);',
'',
'   IF :P99_COD_CLIENTE=''1056'' then',
'                     sp_crea_nc_ruteo(:P99_COD_EMPRESA,',
'                    :p99_ser_COMPROBANTE,',
'                    :p99_nro_compRobante,',
'                    vserie_nc,',
'                    null,',
'                    :P99_cod_sucursal,',
'                    null,',
'                    :P99_cod_custodio,',
'                    vmensaje);',
'                            END IF;                    ',
'end;',
'',
' '))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(23498759414061411)
,p_process_success_message=>'&P99_MENSAJE_NC.'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(108924265958676441)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'genera_entrega_deposito'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'CREA_PEDIDO_DEPOSITO(:P99_TIP_COMPROBANTE,',
'                           :P99_SER_COMPROBANTE,',
'                           :P99_NRO_COMPROBANTE);'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(23498759414061411)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(23499707563061421)
,p_process_sequence=>60
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'GUARDA_CABECERA_POST_INSERT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P99_HORA_ALTA := to_char(sysdate, ''HH24:MI:SS'');',
'    if  :P99_TIP_COMPROBANTE in (''TKT'',''FCO'') AND :P99_TIP_COMPROBANTE_REF NOT IN (''19'') THEN            ',
'	        	:P99_COD_VENDEDOR:=nvl(:P99_COD_VENDEDOR,''19'');        ',
'                :P99_COD_CONDICION_VENTA:=''20'';',
'      ',
'    END IF;	',
':P99_HORA_ALTA := to_char(sysdate, ''HH24:MI:SS'');   '))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(23498759414061411)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(36457902014086728)
,p_process_sequence=>70
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'COLECCION_CCMOVCAJ'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    IF NOT APEX_COLLECTION.COLLECTION_EXISTS(P_COLLECTION_NAME => ''COL_PARAMETROS_VTFACTUR'') THEN',
'        APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(P_COLLECTION_NAME => ''COL_PARAMETROS_VTFACTUR'');',
'        APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(P_COLLECTION_NAME => ''COL_PARAMETROS_CCRECIBO'');',
'    END IF;         ',
'        APEX_COLLECTION.ADD_MEMBER(P_COLLECTION_NAME => ''COL_PARAMETROS_VTFACTUR'',',
'                                                  P_C001 => NULL, --''P_TIP_MOV_CAJ''',
'                                                  P_C002 => NULL, --''P_SER_MOV_CAJ''',
'                                                  P_C003 => NULL, --''P_NRO_MOV_CAJ''',
'                                                  P_C004 => :P99_TIP_COMPROBANTE, --''P_TIPO_COMPROBANTE''',
'                                                  P_C005 => :P99_COD_SUCURSAL, --''P_COD_SUCURSAL''   ',
'                                                  P_C006 => :P99_SER_COMPROBANTE, --''P_SER_COMPROBANTE''',
'                                                  P_C007 => to_char(:P99_NRO_COMPROBANTE,''99999999''), --''P_NRO_COMPROBANTE''',
'                                                  P_C008 => :P99_COD_CLIENTE, --P_COD_CLIENTE',
'                                                  P_C009 => :P99_COD_CUSTODIO, --P_COD_CUSTODIO',
'                                                  P_C010 => :P99_COD_CUSTODIO_ENT,--P_COD_CUSTODIO_ENT',
'                                                  P_C011 => :P99_GENERA_MD, --P_IND_GENERA_MD',
'                                                  P_C012 => TO_DATE(:P99_FEC_COMPROBANTE, ''DD/MM/YYYY'')); --P_FECH',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        RAISE_APPLICATION_ERROR(-20000, ''Ha ocurrido un error. ''||sqlerrm);',
'END;',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(23498759414061411)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(36458328811086732)
,p_process_sequence=>80
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'IMPRIMIR'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'VTFACTUR.copia (:P99_COD_EMPRESA, :P99_TIP_COMPROBANTE, :P99_SER_COMPROBANTE, :P99_NRO_COMPROBANTE);',
'',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(23498759414061411)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(29392835562747215)
,p_process_sequence=>90
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'ACTUALIZA'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  VTFACTUR.actualiza_cabecera(P_COD_EMPRESA          => :P99_COD_EMPRESA,',
'                              P_TIP_COMPROBANTE      => :P99_TIP_COMPROBANTE,',
'                              P_SER_COMPROBANTE      => :P99_SER_COMPROBANTE,',
'                              P_NRO_COMPROBANTE      => :P99_NRO_COMPROBANTE,',
'                              P_COD_SUCURSAL         => :P99_COD_SUCURSAL,',
'                              P_FEC_COMPROBANTE      => :P99_FEC_COMPROBANTE,',
'                              P_COD_CLIENTE          => :P99_COD_CLIENTE,',
'                              P_NOM_CLIENTE          => :P99_NOM_CLIENTE,',
'                              P_COD_VENDEDOR         => :P99_COD_VENDEDOR,',
'                              P_TIP_COMPROBANTE_REF  => :P99_TIP_COMPROBANTE_REF,',
'                              P_SER_COMPROBANTE_REF  => :P99_SER_COMPROBANTE_REF,',
'                              P_NRO_COMPROBANTE_REF  => :P99_NRO_COMPROBANTE_REF,',
'                              P_COD_CONDICION_VENTA  => :P99_COD_CONDICION_VENTA,',
'                              P_COD_LISTA_PRECIO     => :P99_COD_LISTA_PRECIO,',
'                              P_DESCUENTO            => :P99_DESCUENTO,',
'                              P_COD_MONEDA           => :P99_COD_MONEDA,',
'                              P_TIP_CAMBIO           => :P99_C_TIP_CAMBIO,',
'                              P_NRO_MOV_CAJ          => :P99_NRO_MOV_CAJ,',
'                              P_ESTADO               => :P99_ESTADO,',
'                              P_FEC_ESTADO           => :P99_FEC_ESTADO,',
'                              P_COD_USUARIO          => :P99_COD_USUARIO,',
'                              P_FEC_ALTA             => :P99_FEC_ALTA,',
'                              P_CAMBIO_MONEDA_PRECIO => :P99_CAMBIO_MONEDA_PRECIO,',
'                              P_TIP_CAMBIO_COMPRA    => :P99_TIP_CAMBIO_COMPRA,',
'                              P_COMENTARIO           => :P99_COMENTARIO,',
'                              P_GRU_COMPROBANTE      => :P99_GRU_COMPROBANTE,',
'                              P_ENTREGA_INICIAL      => :P99_ENTREGA_INICIAL,',
'                              P_COD_SECTOR           => :P99_COD_SECTOR,',
'                              P_TEL_CLIENTE          => :P99_TEL_CLIENTE,',
'                              P_RUC                  => :P99_RUC,',
'                              P_DIR_CLIENTE          => :P99_DIR_CLIENTE,',
'                              P_COD_DIRECCION        => :P99_COD_DIRECCION,',
'                              P_COD_ENCARGADO_FAC    => :P99_COD_ENCARGADO_FAC,',
'                              P_COD_USUARIO_ANU      => :P99_COD_USUARIO_ANU,',
'                              P_COD_MOTIVO_ANU       => :P99_COD_MOTIVO_ANU,',
'                              P_AJUSTE_IVA           => :P99_AJUSTE_IVA,',
'                              P_COD_CUSTODIO         => :P99_COD_CUSTODIO,',
'                              P_SENIA                => :P99_SENIA,',
'                              P_IND_EXENTO_AD        => :P99_IND_EXENTO_AD,',
'                              P_HORA_ALTA            => :P99_HORA_ALTA,',
'                              P_RECARGO              => :P99_RECARGO,',
'                              P_CONTROL_FIN          => :P99_CONTROL_FIN,',
'                              P_FECHA_INICIAL        => :P99_FECHA_INICIAL,',
'                              P_FECHA_FINAL          => :P99_FECHA_FINAL,',
'                              P_IND_IMPRESO          => :P99_IND_IMPRESO,',
'                              P_IND_ANTICIPO_OT      => :P99_IND_ANTICIPO_OT,',
'                              P_IMPORTE_CAPITAL      => :P99_IMPORTE_CAPITAL,',
'                              P_IMPORTE_INTERES      => :P99_IMPORTE_INTERES);',
'  VTFACTUR.actualiza_detalle(P_COD_EMPRESA     => :P99_COD_EMPRESA,',
'                             P_TIP_COMPROBANTE => :P99_TIP_COMPROBANTE,',
'                             P_SER_COMPROBANTE => :P99_SER_COMPROBANTE,',
'                             P_NRO_COMPROBANTE => :P99_NRO_COMPROBANTE);',
'                             :P99_IMPRIMIR_REPORTE:=''S'';',
'EXCEPTION',
'  WHEN OTHERS THEN',
'    RAISE_APPLICATION_ERROR(-20000,',
'                            ''Ha ocurrido un error al guardar los datos en la tabla de detalle. '' ||',
'                            sqlerrm);',
'END;',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(23498898281061412)
,p_process_success_message=>'El comprobante &P99_TIP_COMPROBANTE. &P99_SER_COMPROBANTE. &P99_NRO_COMPROBANTE. se ha actualizado correctamente.'
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
 p_id=>wwv_flow_imp.id(23499810399061422)
,p_process_sequence=>100
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'ACTUALIZAR_CABECERA_POST_UPDATE'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF nvl( :P99_OLD_ESTADO, ''P'' ) <> nvl( :P99_ESTADO, ''P'' ) THEN',
'    :P99_OLD_ESTADO := :P99_ESTADO;',
'END IF;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(23498898281061412)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(31456278718510703)
,p_process_sequence=>110
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'ELIMINA_DETALLE'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    vtfactur.elimina_cabecera(P_COD_EMPRESA       => :P99_COD_EMPRESA,',
'                              P_TIP_COMPROBANTE   => :P99_TIP_COMPROBANTE,',
'                              P_SER_COMPROBANTE   => :P99_SER_COMPROBANTE,',
'                              P_NRO_COMPROBANTE   => :P99_NRO_COMPROBANTE);',
'    vtfactur.elimina_detalle(P_COD_EMPRESA       => :P99_COD_EMPRESA,',
'                             P_TIP_COMPROBANTE   => :P99_TIP_COMPROBANTE,',
'                             P_SER_COMPROBANTE   => :P99_SER_COMPROBANTE,',
'                             P_NRO_COMPROBANTE   => :P99_NRO_COMPROBANTE);',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        RAISE_APPLICATION_ERROR(-20000, ''Ha ocurrido un error al eliminar el comprobante. ''||sqlerrm);',
'END;                                 '))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Ha ocurrido un error al eliminar el detalle del comprobante.'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'ELIMINAR'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
,p_process_success_message=>'El comprobante se ha eliminado correctamente.'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(104444594571494201)
,p_process_sequence=>120
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'ENVIO FACTURA SET'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE ',
'    p_json long;',
'    p_datos clob;',
'BEGIN',
'if :P99_TIP_COMPROBANTE_AUX <>''FCO'' THEN ',
'begin',
'',
' ',
'              insert into vt_factura_electronica_log',
'                (COD_EMPRESA,',
'                 TIP_COMPROBANTE,',
'                 SER_COMPROBANTE,',
'                 NRO_COMPROBANTE,',
'                 OBJETO_GENERADO,',
'                 RESPUESTA_OBJETO,',
'                 FECHA_GENERACION,',
'                 IND_PROCESADO,',
'                 FECHA_REPROCESO,',
'                 COD_USUARIO)',
'              values',
'                (:P_COD_EMPRESA,',
'                 :P99_TIP_COMPROBANTE,',
'                 :P99_SER_COMPROBANTE,',
'                 :P99_NRO_COMPROBANTE,',
'                 p_json,',
'                 p_datos,',
'                 SYSDATE,',
'                 ''N'',',
'                 NULL,',
'                 :P_COD_USUARIO);            ',
'            end;   ',
'            commit;',
'',
'pkg_factura_electronica.sp_factura_electronica_metodos(P_ENTIDAD => :p_cod_empresa,',
'                                                         p_codigo  => :P99_TIP_COMPROBANTE,',
'                                                         P_CODIGO1 => :P99_SER_COMPROBANTE,',
'                                                         P_CODIGO2 => :P99_NRO_COMPROBANTE,',
'                                                         P_CODIGO3 => null,',
'                                                         P_CODIGO4 => null,',
'                                                         P_CODIGO5 => null,',
'                                                         p_codigo6 => null,',
'                                                         p_json    => p_json,',
'                                                         p_datos   => p_datos);',
'',
'  update vt_factura_electronica_log',
'  set  OBJETO_GENERADO= p_json   ,RESPUESTA_OBJETO=p_datos',
'  where cod_empresa=:P_COD_EMPRESA',
'  and tip_comprobante=:P99_TIP_COMPROBANTE',
'  and ser_comprobante=:P99_ser_COMPROBANTE',
'  and nro_comprobante=:P99_nro_COMPROBANTE; ',
'            ',
'             ',
'',
'',
'  begin',
'              pkg_factura_electronica.sp_obtiene_cdc(p_entidad => :p_cod_empresa,',
'                                                                p_codigo  => :P99_TIP_COMPROBANTE,',
'                                                         P_CODIGO1 => :P99_SER_COMPROBANTE,',
'                                                         P_CODIGO2 => :P99_NRO_COMPROBANTE,',
'                                                                 p_codigo3 => NULL,',
'                                                                 p_codigo4 => NULL,',
'                                                                 p_codigo5 => NULL,',
'                                                                 p_codigo6 => NULL,',
'                                                                 p_json    => p_json,',
'                                                                 p_datos   => p_datos);',
'                                                                 EXCEPTION WHEN OTHERS THEN NULL;',
'                                                                 END;',
'',
'',
'',
'        --  END IF;',
'      ',
'',
'END IF;',
'null;',
'EXCEPTION WHEN OTHERS THEN NULL;',
'END; ',
'                                                      '))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'P99_IMPRIMIR_REPORTE'
,p_process_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_process_when2=>'S'
);
wwv_flow_imp.component_end;
end;
/
