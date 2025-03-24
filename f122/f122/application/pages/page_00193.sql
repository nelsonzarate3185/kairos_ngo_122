prompt --application/pages/page_00193
begin
--   Manifest
--     PAGE: 00193
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
 p_id=>193
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Consulta de Facturas Y NCR'
,p_alias=>'CONSULTA-DE-FACTURAS'
,p_step_title=>'Consulta de Facturas'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_javascript_file_urls=>'#APP_FILES#util_generico#MIN#.js'
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
'   var vURL = ''https://ngosaeca.com.py/reportes/flow.html?_flowId=viewReportFlow&_flowId=viewReportFlow&ParentFolderUri=%2Freports&reportUnit=%2Freports%2F''+p_reporte+''&standAlone=true&''',
'            + ''P_COD_EMPRESA='' + p_cod_empresa + ''&P_TIP_COMPROBANTE='' + p_tip_comprobante  + ',
'            ''&P_SER_COMPROBANTE=''+ p_ser_comprobante + ''&P_NRO_COMPROBANTE=''+ p_nro_comprobante',
'            + ''&P_COD_CLIENTE=''+ p_cod_cliente + ''&P_REIMPRESO='' + p_reimpreso + ''&P_COD_USUARIO='' + p_cod_usuario + ''&P_PAGADO='' + p_pagado +',
'            ''&P_IMPRIME_CONDICION=S&j_username=jasperadmin&j_password=jasperadmin'';',
'',
' ',
'',
'   ',
'   console.log(vURL);',
'    return vURL;',
'   //apex.item(''P193_URL'').setValue(vURL);',
'  //  window.open(unescape(vURL.replace(/&amp;/g,''g'')),''_blank'');',
'}',
'',
'function soloNumeros(e){',
'  var key = e.charCode;',
'    return key >= 48 && key <= 57;',
'}',
'',
''))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#DATOS{',
'border-radius: 10px;',
'}',
'',
'#DATOS  > .t-Region-header {',
'    background-color: #003a85 !important;',
'    color: yellow !important;',
'    border-radius: 10px;',
'    ',
'}',
'',
'',
'/*BTNS*/',
'',
''))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'NZARATE'
,p_last_upd_yyyymmddhh24miss=>'20240910172123'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(58144667415171265)
,p_plug_name=>'Consulta de Facturas'
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P193_ID'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(35984281730462233)
,p_plug_name=>'Reporte'
,p_parent_plug_id=>wwv_flow_imp.id(58144667415171265)
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>30
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'htp.p(''<object data="''||:P193_URL_PRINT||''" type="application/pdf" width=100% height="500">'');',
''))
,p_plug_source_type=>'NATIVE_PLSQL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(58957544402601257)
,p_plug_name=>'CABECERA'
,p_parent_plug_id=>wwv_flow_imp.id(58144667415171265)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>20
,p_plug_grid_column_span=>8
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(58958177512601263)
,p_plug_name=>'COMPROBANTE'
,p_parent_plug_id=>wwv_flow_imp.id(58957544402601257)
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
 p_id=>wwv_flow_imp.id(58958226246601264)
,p_plug_name=>'CLIENTE'
,p_parent_plug_id=>wwv_flow_imp.id(58957544402601257)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>6
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(58985223614839855)
,p_plug_name=>'PIE'
,p_parent_plug_id=>wwv_flow_imp.id(58957544402601257)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>40
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(58959043628601272)
,p_plug_name=>'PIE2'
,p_parent_plug_id=>wwv_flow_imp.id(58985223614839855)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>40
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>3
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(58961145182601293)
,p_plug_name=>'Estado'
,p_parent_plug_id=>wwv_flow_imp.id(58959043628601272)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(58960360122601285)
,p_plug_name=>'PIE1'
,p_parent_plug_id=>wwv_flow_imp.id(58985223614839855)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>30
,p_plug_grid_column_span=>3
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(58961249606601294)
,p_plug_name=>'PIE3'
,p_parent_plug_id=>wwv_flow_imp.id(58985223614839855)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>50
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>3
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(58961342981601295)
,p_plug_name=>'PIE4'
,p_parent_plug_id=>wwv_flow_imp.id(58985223614839855)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>60
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>3
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(58985392576839856)
,p_plug_name=>'PIE5'
,p_parent_plug_id=>wwv_flow_imp.id(58985223614839855)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>70
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(58985622791839859)
,p_plug_name=>'REPORTE'
,p_parent_plug_id=>wwv_flow_imp.id(58957544402601257)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT SEQ_ID,',
'       C001 importe_ant, ',
'       C002 iva_ant,',
'       C003 cod_articulo, ',
'       C004 costo_promedio,',
'       C005 costo_promedio_ref, ',
'       C006 nro_lote,',
'       C007 cantidad,  ',
'       C008 cantidad_vendida,',
'       TO_NUMBER(C010) precio_unitario, ',
'       C011 porc_iva, ',
'       C012 ind_renta,  ',
'       C013 precio_lista, ',
'       TO_NUMBER(C014) porc_descuento,',
'       TO_NUMBER(C015) porc_recargo,',
'       C016 cod_iva, ',
'       C017 nro_promo, ',
'       TO_NUMBER(C018) total_iva, ',
'       C019 ser_pedido, ',
'       C020 nro_pedido,',
'       C021 recargo,',
'       C022 descuento,',
'       C023 vporc_descuento_ant,',
'       C024 vdesc_articulo, ',
'       C025 vcod_grupo_art, ',
'       C026 vcod_moneda_base,',
'       TO_NUMBER(C027) monto_total,  ',
'       C028 vmonto_exenta,',
'       C029 vmonto_gravada_10,',
'       C030 vmonto_gravada_5,',
'       C031 cantidad_ub,',
'       C032 vporc_iva_ad,',
'       null editar',
'FROM APEX_COLLECTIONS',
'WHERE COLLECTION_NAME = ''DET_COM'';'))
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
 p_id=>wwv_flow_imp.id(59380139064047364)
,p_max_row_count=>'1000000'
,p_no_data_found_message=>'No se han encontrado datos.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'MARIANABLA'
,p_internal_uid=>59380139064047364
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(42423585192173078)
,p_db_column_name=>'SEQ_ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Seq Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(42423997295173079)
,p_db_column_name=>'IMPORTE_ANT'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Importe Ant'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(42424336427173079)
,p_db_column_name=>'IVA_ANT'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Iva Ant'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(42424724353173079)
,p_db_column_name=>'COD_ARTICULO'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>unistr('Art\00EDculo')
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(42425142826173079)
,p_db_column_name=>'COSTO_PROMEDIO'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Costo Promedio'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(42425577427173079)
,p_db_column_name=>'COSTO_PROMEDIO_REF'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Costo Promedio Ref'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(42425965890173080)
,p_db_column_name=>'NRO_LOTE'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Lote'
,p_column_type=>'STRING'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(42426322727173080)
,p_db_column_name=>'CANTIDAD'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Cantidad'
,p_column_type=>'STRING'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(42426739143173080)
,p_db_column_name=>'CANTIDAD_VENDIDA'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Cantidad Vendida'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(42427180398173080)
,p_db_column_name=>'PORC_IVA'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Porc Iva'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(42427506275173080)
,p_db_column_name=>'IND_RENTA'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Ind Renta'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(42427995389173081)
,p_db_column_name=>'PRECIO_LISTA'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Precio Lista'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(42428335094173081)
,p_db_column_name=>'COD_IVA'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Cod Iva'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(42428762801173081)
,p_db_column_name=>'NRO_PROMO'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Nro Promo'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(42429184874173081)
,p_db_column_name=>'SER_PEDIDO'
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>'Ser Pedido'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(42429524203173081)
,p_db_column_name=>'NRO_PEDIDO'
,p_display_order=>200
,p_column_identifier=>'T'
,p_column_label=>'Nro Pedido'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(42429998082173082)
,p_db_column_name=>'RECARGO'
,p_display_order=>210
,p_column_identifier=>'U'
,p_column_label=>'Recargo'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(42430313823173082)
,p_db_column_name=>'DESCUENTO'
,p_display_order=>220
,p_column_identifier=>'V'
,p_column_label=>'Descuento'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(42430787934173082)
,p_db_column_name=>'VPORC_DESCUENTO_ANT'
,p_display_order=>230
,p_column_identifier=>'W'
,p_column_label=>'Vporc Descuento Ant'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(42431139920173082)
,p_db_column_name=>'VDESC_ARTICULO'
,p_display_order=>240
,p_column_identifier=>'X'
,p_column_label=>unistr('Descripci\00F3n')
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(42431515571173082)
,p_db_column_name=>'VCOD_GRUPO_ART'
,p_display_order=>250
,p_column_identifier=>'Y'
,p_column_label=>'Vcod Grupo Art'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(42431916633173083)
,p_db_column_name=>'VCOD_MONEDA_BASE'
,p_display_order=>260
,p_column_identifier=>'Z'
,p_column_label=>'Vcod Moneda Base'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(42432324873173083)
,p_db_column_name=>'VMONTO_EXENTA'
,p_display_order=>280
,p_column_identifier=>'AB'
,p_column_label=>'Vmonto Exenta'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(42432775431173083)
,p_db_column_name=>'VMONTO_GRAVADA_10'
,p_display_order=>290
,p_column_identifier=>'AC'
,p_column_label=>'Vmonto Gravada 10'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(42433100212173083)
,p_db_column_name=>'VMONTO_GRAVADA_5'
,p_display_order=>300
,p_column_identifier=>'AD'
,p_column_label=>'Vmonto Gravada 5'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(42433582368173083)
,p_db_column_name=>'CANTIDAD_UB'
,p_display_order=>310
,p_column_identifier=>'AE'
,p_column_label=>'Cantidad Ub'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(42433951091173083)
,p_db_column_name=>'VPORC_IVA_AD'
,p_display_order=>320
,p_column_identifier=>'AF'
,p_column_label=>'Vporc Iva Ad'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(42434373999173084)
,p_db_column_name=>'PRECIO_UNITARIO'
,p_display_order=>360
,p_column_identifier=>'AK'
,p_column_label=>'Precio Unitario'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(42434734856173084)
,p_db_column_name=>'PORC_DESCUENTO'
,p_display_order=>370
,p_column_identifier=>'AL'
,p_column_label=>'% descuento'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(42435140536173084)
,p_db_column_name=>'PORC_RECARGO'
,p_display_order=>380
,p_column_identifier=>'AM'
,p_column_label=>'% recargo'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(42435505896173084)
,p_db_column_name=>'TOTAL_IVA'
,p_display_order=>390
,p_column_identifier=>'AN'
,p_column_label=>'I.V.A.'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(42435949603173084)
,p_db_column_name=>'MONTO_TOTAL'
,p_display_order=>400
,p_column_identifier=>'AO'
,p_column_label=>'Monto Total'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(59415631166812891)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'170334'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'COD_ARTICULO:VDESC_ARTICULO:NRO_LOTE:CANTIDAD:PRECIO_UNITARIO:PORC_DESCUENTO:PORC_RECARGO:TOTAL_IVA:MONTO_TOTAL'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(58144881968171267)
,p_plug_name=>'VARIABLES'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(59520781911180777)
,p_plug_name=>'IMPRIMIR'
,p_region_name=>'IMPR'
,p_region_template_options=>'#DEFAULT#:js-dialog-autoheight:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(40120082745263659)
,p_plug_display_sequence=>60
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(59521249608180782)
,p_plug_name=>unistr('Motivo de impresi\00F3n')
,p_parent_plug_id=>wwv_flow_imp.id(59520781911180777)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(59943840007975386)
,p_plug_name=>unistr('EDICI\00D3N')
,p_region_name=>'EDIT'
,p_region_template_options=>'#DEFAULT#:js-dialog-autoheight:js-dialog-size720x480'
,p_plug_template=>wwv_flow_imp.id(40120082745263659)
,p_plug_display_sequence=>70
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(59943971999975387)
,p_plug_name=>'Detalle'
,p_parent_plug_id=>wwv_flow_imp.id(59943840007975386)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(102440803389377340)
,p_plug_name=>'Datos'
,p_region_name=>'DATOS'
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_grid_column_span=>8
,p_plug_display_column=>3
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'ITEM_IS_NULL'
,p_plug_display_when_condition=>'P193_ID'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(103147750110667802)
,p_plug_name=>'Facturas y NCR''S'
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/*SELECT C001 FEC_COMPROBANTE,',
'       C002 TIPO_COMPROBANTE,',
'       C003 SERIE,',
'       TO_NUMBER(C004) NRO_DOCUMENTO,',
'       (c002||c003||c004) ID_REG,',
'       C005 SUCURSAL,',
'       C006 CLIENTE,',
'       TO_NUMBER(C007) TOTAL_COMPROBANTE,',
'       TO_NUMBER(C008) TOTAL_GRAVADAS,',
'       TO_NUMBER(C009) TOTAL_EXENTAS,',
'       TO_NUMBER(C010) TOTAL_IVA,',
'       TO_NUMBER(C011) NRO_ORDEN,',
'       ''x''VER,',
'       ''X''IMPRIMIR,',
'       CASE WHEN C002 IN (''FCO'',''FCR'') THEN ',
'                  CASE WHEN substr(C003,0,2) IN (''FE'') THEN ',
'                            ''https://ngosaeca.com.py/reportes/flow.html?_flowId=viewReportFlow&_flowId=viewReportFlow&ParentFolderUri=%2Freports&reportUnit=%2Freports%2FVTIMPFAC_DUPLICADO_FE&standAlone=true&j_username=jasperadmin&j_password=jasperadm'
||'in&output=pdf&P_COD_EMPRESA=1&P_TIP_COMPROBANTE=''||C002||''&P_SER_COMPROBANTE=''||C003||''&P_NRO_COMPROBANTE=''||C004||''&P_COD_CLIENTE=''||C012||''&P_REIMPRESO=N&P_IMPRIME_CONDICION=S&P_COD_USUARIO=''||:APP_USER',
'                       ELSE ',
'                            ''https://ngosaeca.com.py/reportes/flow.html?_flowId=viewReportFlow&_flowId=viewReportFlow&ParentFolderUri=%2Freports&reportUnit=%2Freports%2FVTIMPFAC_DUPLICADO&standAlone=true&j_username=jasperadmin&j_password=jasperadmin&'
||'output=pdf&P_COD_EMPRESA=1&P_TIP_COMPROBANTE=''||C002||''&P_SER_COMPROBANTE=''||C003||''&P_NRO_COMPROBANTE=''||C004||''&P_COD_CLIENTE=''||C012||''&P_REIMPRESO=N&P_IMPRIME_CONDICION=S&P_COD_USUARIO=''||:APP_USER',
'                  END',
'              WHEN C002 IN (''NCR'') THEN ',
'                 CASE WHEN substr(C003,0,2) IN (''FE'') THEN ',
'                            ''https://ngosaeca.com.py/reportes/flow.html?_flowId=viewReportFlow&_flowId=viewReportFlow&ParentFolderUri=%2Freports&reportUnit=%2Freports%2FVTIMPNCR_DUPLICADO_FE&standAlone=true&j_username=jasperadmin&j_password=jasperadm'
||'in&output=pdf&P_COD_EMPRESA=1&P_TIP_COMPROBANTE=''||C002||''&P_SER_COMPROBANTE=''||C003||''&P_NRO_COMPROBANTE=''||C004||''&P_COD_CLIENTE=''||C012',
'                       ELSE ',
'                            ''https://ngosaeca.com.py/reportes/flow.html?_flowId=viewReportFlow&_flowId=viewReportFlow&ParentFolderUri=%2Freports&reportUnit=%2Freports%2FVTIMPNCR_DUPLICADO&standAlone=true&j_username=jasperadmin&j_password=jasperadmin&'
||'output=pdf&P_COD_EMPRESA=1&P_TIP_COMPROBANTE=''||C002||''&P_SER_COMPROBANTE=''||C003||''&P_NRO_COMPROBANTE=''||C004||''&P_COD_CLIENTE=''||C012',
'                  END',
'               ',
'       END LINK_REP',
'  FROM APEX_COLLECTIONS A',
' WHERE A.COLLECTION_NAME = ''B_DATOS_DOC''',
'ORDER BY TO_NUMBER(C011)',
'*/',
'SELECT C001 FEC_COMPROBANTE,',
'       C002 TIPO_COMPROBANTE,',
'       C003 SERIE,',
'       TO_NUMBER(C004) NRO_DOCUMENTO,',
'       (c002||c003||c004) ID_REG,',
'       C005 SUCURSAL,',
'       C006 CLIENTE,',
'       TO_NUMBER(C007) TOTAL_COMPROBANTE,',
'       TO_NUMBER(C008) TOTAL_GRAVADAS,',
'       TO_NUMBER(C009) TOTAL_EXENTAS,',
'       TO_NUMBER(C010) TOTAL_IVA,',
'       TO_NUMBER(C011) NRO_ORDEN,',
'       C013 estado_factura,',
'',
'       ''x''VER,',
'       ''X''IMPRIMIR,',
'       CASE WHEN C002 IN (''FCO'',''FCR'') THEN ',
'                  CASE WHEN substr(C003,0,2) IN (''FE'') THEN ',
'                            ''https://ngosaeca.com.py/reportes/flow.html?_flowId=viewReportFlow&_flowId=viewReportFlow&ParentFolderUri=%2Freports&reportUnit=%2Freports%2F''||bs_busca_parametro(''VT'',''FACTURA_REP_DUPL_FE_''||:P_COD_EMPRESA)||''&standAlone='
||'true&j_username=jasperadmin&j_password=jasperadmin&output=pdf&P_COD_EMPRESA=''||:P_COD_EMPRESA||''&P_TIP_COMPROBANTE=''||C002||''&P_SER_COMPROBANTE=''||C003||''&P_NRO_COMPROBANTE=''||C004||''&P_COD_CLIENTE=''||C012||''&P_REIMPRESO=N&P_IMPRIME_CONDICION=S&P_COD'
||'_USUARIO=''||:APP_USER',
'                       ELSE ',
'                         ',
'                            ''https://ngosaeca.com.py/reportes/flow.html?_flowId=viewReportFlow&_flowId=viewReportFlow&ParentFolderUri=%2Freports&reportUnit=%2Freports%2F''||bs_busca_parametro(''VT'',''FACTURA_REP_DUPL_''||:P_COD_EMPRESA)||''&standAlone=tru'
||'e&j_username=jasperadmin&j_password=jasperadmin&output=pdf&P_COD_EMPRESA=''||:P_COD_EMPRESA||''&P_TIP_COMPROBANTE=''||C002||''&P_SER_COMPROBANTE=''||C003||''&P_NRO_COMPROBANTE=''||C004||''&P_COD_CLIENTE=''||C012||''&P_REIMPRESO=N&P_IMPRIME_CONDICION=S&P_COD_US'
||'UARIO=''||:APP_USER',
'                  END',
'              WHEN C002 IN (''NCR'') THEN ',
'                 CASE WHEN substr(C003,0,2) IN (''FE'') THEN ',
'                            ''https://ngosaeca.com.py/reportes/flow.html?_flowId=viewReportFlow&_flowId=viewReportFlow&ParentFolderUri=%2Freports&reportUnit=%2Freports%2F''||bs_busca_parametro(''VT'',''NCR_REP_DUPL_FE_''||:P_COD_EMPRESA)||''&standAlone=true'
||'&j_username=jasperadmin&j_password=jasperadmin&output=pdf&P_COD_EMPRESA=''||:P_COD_EMPRESA||''&P_TIP_COMPROBANTE=''||C002||''&P_SER_COMPROBANTE=''||C003||''&P_NRO_COMPROBANTE=''||C004||''&P_COD_CLIENTE=''||C012',
'                       ELSE ',
'                            ''https://ngosaeca.com.py/reportes/flow.html?_flowId=viewReportFlow&_flowId=viewReportFlow&ParentFolderUri=%2Freports&reportUnit=%2Freports%2F''||bs_busca_parametro(''VT'',''NCR_REP_DUPL_''||:P_COD_EMPRESA)||''&standAlone=true&j_'
||'username=jasperadmin&j_password=jasperadmin&output=pdf&P_COD_EMPRESA=''||:P_COD_EMPRESA||''&P_TIP_COMPROBANTE=''||C002||''&P_SER_COMPROBANTE=''||C003||''&P_NRO_COMPROBANTE=''||C004||''&P_COD_CLIENTE=''||C012',
'                  END',
'               ',
'       END LINK_REP,c014 referencia',
'  FROM APEX_COLLECTIONS A',
' WHERE A.COLLECTION_NAME = ''B_DATOS_DOC''',
'ORDER BY TO_NUMBER(C011)',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'ITEM_IS_NULL'
,p_plug_display_when_condition=>'P193_ID'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Facturas y NCR''S'
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
 p_id=>wwv_flow_imp.id(103147894771667803)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'ETRINIDAD'
,p_internal_uid=>103147894771667803
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(103147939168667804)
,p_db_column_name=>'FEC_COMPROBANTE'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Fecha'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(103148038675667805)
,p_db_column_name=>'TIPO_COMPROBANTE'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Tipo Comprobante'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(103148170689667806)
,p_db_column_name=>'SERIE'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Serie'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(103148345789667808)
,p_db_column_name=>'SUCURSAL'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Sucursal'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(103148439202667809)
,p_db_column_name=>'CLIENTE'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Cliente'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
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
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(103148923916667814)
,p_db_column_name=>'NRO_ORDEN'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Nro Orden'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(99640991409092019)
,p_db_column_name=>'NRO_DOCUMENTO'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Nro Documento'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(99641015110092020)
,p_db_column_name=>'TOTAL_COMPROBANTE'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Total Comprobante'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(99641123123092021)
,p_db_column_name=>'TOTAL_GRAVADAS'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Total Gravadas'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(99641219176092022)
,p_db_column_name=>'TOTAL_EXENTAS'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Total Exentas'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(99641317274092023)
,p_db_column_name=>'TOTAL_IVA'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Total Iva'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(99641419890092024)
,p_db_column_name=>'VER'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Ver'
,p_column_link=>'f?p=&APP_ID.:193:&SESSION.::&DEBUG.::P193_ID,P193_VISITA:#ID_REG#,S'
,p_column_linktext=>'<img src="#APP_FILES#VER_MAS.png" width="20" height="20">'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(103149033854667815)
,p_db_column_name=>'ID_REG'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'Id Reg'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(35983447178462225)
,p_db_column_name=>'IMPRIMIR'
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>'Imprimir'
,p_column_link=>'javascript:$s(''P193_URL_PRINT'',''#LINK_REP#'');'
,p_column_linktext=>'<img src="#APP_FILES#impresora.png" width="20" height="20">'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(35983503047462226)
,p_db_column_name=>'LINK_REP'
,p_display_order=>200
,p_column_identifier=>'T'
,p_column_label=>'Link Rep'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(390609181922583048)
,p_db_column_name=>'ESTADO_FACTURA'
,p_display_order=>210
,p_column_identifier=>'U'
,p_column_label=>'Anulado'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(76098688013162812)
,p_db_column_name=>'REFERENCIA'
,p_display_order=>220
,p_column_identifier=>'V'
,p_column_label=>'Referencia'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(103220722115732645)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1032208'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'FEC_COMPROBANTE:CLIENTE:TIPO_COMPROBANTE:SERIE:NRO_DOCUMENTO:REFERENCIA:ESTADO_FACTURA:SUCURSAL:TOTAL_COMPROBANTE:VER:IMPRIMIR:'
,p_sort_column_1=>'NRO_ORDEN'
,p_sort_direction_1=>'ASC'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(102441694744377348)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(102440803389377340)
,p_button_name=>'Cancelar'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--simple:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Cancelar'
,p_button_position=>'CLOSE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(102441701582377349)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(102440803389377340)
,p_button_name=>'EJECUTAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--simple:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Ejecutar'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'ov-btn-grow-spin'
,p_button_cattributes=>'ov-btn-grow-spin'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(42383240477173056)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(59521249608180782)
,p_button_name=>'IMPRIMIR1'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Imprimir'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(42387469388173059)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_imp.id(59943971999975387)
,p_button_name=>'GUARDAR_DETALLE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Guardar'
,p_button_position=>'CREATE'
,p_button_execute_validations=>'N'
,p_warn_on_unsaved_changes=>null
,p_button_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(42387012407173059)
,p_button_sequence=>90
,p_button_plug_id=>wwv_flow_imp.id(59943971999975387)
,p_button_name=>'CERRAR_DETALLE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Cerrar '
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(99641559383092025)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(58144667415171265)
,p_button_name=>'ATRAS'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--simple:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Atras'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:193:&SESSION.::&DEBUG.:193::'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(35983922179462230)
,p_name=>'P193_URL_PRINT'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(103147750110667802)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(38191870231756547)
,p_name=>'P193_REPORTE'
,p_item_sequence=>490
,p_item_plug_id=>wwv_flow_imp.id(58144881968171267)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(38192155345756550)
,p_name=>'P193_REIMPRESO'
,p_item_sequence=>500
,p_item_plug_id=>wwv_flow_imp.id(58144881968171267)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(42383653858173056)
,p_name=>'P193_COD_MOTIVO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(59521249608180782)
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
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(42384034053173057)
,p_name=>'P193_DESCRIPCION'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(59521249608180782)
,p_prompt=>'Descripcion'
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
 p_id=>wwv_flow_imp.id(42384439185173057)
,p_name=>'P193_COD_USUARIO_IMP'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(59521249608180782)
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
 p_id=>wwv_flow_imp.id(42384838006173058)
,p_name=>'P193_FECHA_IMP'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(59521249608180782)
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
 p_id=>wwv_flow_imp.id(42385263849173058)
,p_name=>'P193_AUX_MSJ'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(59521249608180782)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(42385600753173058)
,p_name=>'P193_IMPRIME_REPORTE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(59521249608180782)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(42386039519173058)
,p_name=>'P193_AUX_REGION'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(59521249608180782)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(42387816348173059)
,p_name=>'P193_AUX_ABRE_DETALLE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(59943971999975387)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(42388253933173059)
,p_name=>'P193_AUX_CANT_VENDIDA'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(59943971999975387)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(42388601619173060)
,p_name=>'P193_AUX_COD_IVA'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(59943971999975387)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(42389096559173060)
,p_name=>'P193_AUX_PORC_IVA'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(59943971999975387)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(42389432208173060)
,p_name=>'P193_AUX_IND_RENTA'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(59943971999975387)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(42389814526173060)
,p_name=>'P193_AUX_IVA_ANT'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(59943971999975387)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(42390202597173060)
,p_name=>'P193_AUX_TOTAL_IVA'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(59943971999975387)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(42390671452173060)
,p_name=>'P193_AUX_PORC_IVA_AD'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(59943971999975387)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(42391099093173061)
,p_name=>'P193_AUX_COD_ARTICULO_REL_BON'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(59943971999975387)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(42391442274173061)
,p_name=>'P193_AUX_DESCUENTO_MAXIMO'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(59943971999975387)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(42391850268173061)
,p_name=>'P193_AUX_DESCUENTO'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(59943971999975387)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(42392259175173061)
,p_name=>'P193_AUX_RECARGO'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(59943971999975387)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(42392672508173061)
,p_name=>'P193_AUX_PORC_DESCUENTO_ANT'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(59943971999975387)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(42393091883173061)
,p_name=>'P193_AUX_PORC_RECARGO_ANT'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(59943971999975387)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(42393425576173062)
,p_name=>'P193_AUX_IMPORTE_ANT'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(59943971999975387)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(42393879509173062)
,p_name=>'P193_AUX_MONTO_TOTAL'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(59943971999975387)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(42394243197173062)
,p_name=>'P193_AUX_MONTO_GRAVADA_10'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(59943971999975387)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(42394684300173062)
,p_name=>'P193_AUX_MONTO_GRAVADA_5'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(59943971999975387)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(42395086535173062)
,p_name=>'P193_AUX_MONTO_EXENTA'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(59943971999975387)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(42395455712173063)
,p_name=>'P193_AUX_CANTIDAD_UB'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(59943971999975387)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(42395898463173063)
,p_name=>'P193_AUX_NRO_PROMO'
,p_item_sequence=>340
,p_item_plug_id=>wwv_flow_imp.id(59943971999975387)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(42396292661173063)
,p_name=>'P193_AUX_COD_ART_PROMO'
,p_item_sequence=>350
,p_item_plug_id=>wwv_flow_imp.id(59943971999975387)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(42396642809173063)
,p_name=>'P193_AUX_CANTIDAD_ANT'
,p_item_sequence=>360
,p_item_plug_id=>wwv_flow_imp.id(59943971999975387)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(42397034821173063)
,p_name=>'P193_AUX_MUESTRA_PROMO'
,p_item_sequence=>370
,p_item_plug_id=>wwv_flow_imp.id(59943971999975387)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(42397489472173063)
,p_name=>'P193_COD_ARTICULO_DETALLE'
,p_item_sequence=>380
,p_item_plug_id=>wwv_flow_imp.id(59943971999975387)
,p_prompt=>unistr('Art\00CDculo')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_ARTICULOS_VTNOTCRE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT cod_articulo||'' - ''||descripcion D, ',
'         cod_articulo R ',
'    FROM st_articulos ',
'   WHERE cod_empresa = :P_COD_EMPRESA ',
'     AND nvl( estado, ''S'' ) <> ''N'' ',
'ORDER BY descripcion'))
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
 p_id=>wwv_flow_imp.id(42397885748173064)
,p_name=>'P193_LOTE'
,p_item_sequence=>390
,p_item_plug_id=>wwv_flow_imp.id(59943971999975387)
,p_prompt=>'Lote'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select l.nro_lote D, l.nro_lote R',
'from st_lotes l, st_existencia_art s ',
'where s.cod_empresa = :P193_COD_EMPRESA_VAR',
' and s.cod_articulo = :P193_COD_ARTICULO_DETALLE',
' and s.cod_sucursal = :P193_COD_SUCURSAL',
' and nvl( s.cant_dispon, 0 ) > 0 ',
' and s.cod_empresa = l.cod_empresa ',
' and s.cod_articulo = l.cod_articulo ',
' and s.nro_lote = l.nro_lote ',
' and nvl(l.activo, ''N'') = ''S'' ',
'order by l.fec_vencimiento; '))
,p_lov_cascade_parent_items=>'P193_COD_ARTICULO_DETALLE'
,p_ajax_items_to_submit=>'P193_COD_EMPRESA_VAR,P193_COD_ARTICULO_DETALLE,P193_COD_SUCURSAL'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(42398260194173065)
,p_name=>'P193_CANTIDAD'
,p_item_sequence=>400
,p_item_plug_id=>wwv_flow_imp.id(59943971999975387)
,p_prompt=>'Cantidad'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(42398612908173065)
,p_name=>'P193_PRECIO_UNITARIO'
,p_item_sequence=>410
,p_item_plug_id=>wwv_flow_imp.id(59943971999975387)
,p_prompt=>'Precio Unitario'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(42399028939173065)
,p_name=>'P193_PORC_DESCUENTO_DETALLE'
,p_item_sequence=>420
,p_item_plug_id=>wwv_flow_imp.id(59943971999975387)
,p_prompt=>'% descuento'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(42399465864173065)
,p_name=>'P193_PORC_RECARGO_DETALLE'
,p_item_sequence=>430
,p_item_plug_id=>wwv_flow_imp.id(59943971999975387)
,p_prompt=>'% recargo'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(42399848328173065)
,p_name=>'P193_NRO_PROMO'
,p_item_sequence=>440
,p_item_plug_id=>wwv_flow_imp.id(59943971999975387)
,p_prompt=>'Nro. Promo'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_ARTPROMO_VTNOTCRE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.descripcion||''(''||p.cod_corto_art||'')'' d,p.cod_articulo,p.fec_alta,p.nro_promo r ',
'  from inv.st_promocion p,st_articulos a',
' where p.cod_empresa=a.cod_empresa',
'   and p.cod_articulo=a.cod_articulo',
'   and p.cod_art_promo=:P103_COD_ARTICULO_DETALLE',
'   and p.cod_empresa=:P_COD_EMPRESA',
'   and nvl(p.activo,''N'')=''A'''))
,p_lov_cascade_parent_items=>'P193_COD_ARTICULO_DETALLE'
,p_ajax_items_to_submit=>'P193_COD_ARTICULO_DETALLE'
,p_ajax_optimize_refresh=>'Y'
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
,p_attribute_10=>'COD_ARTICULO:P193_COD_ART_AUX'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(42403251380173067)
,p_name=>'P193_IND_EXENTO_AD'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(58957544402601257)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(42403673746173068)
,p_name=>'P193_ESTADO_ANT'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(58957544402601257)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(42404066363173068)
,p_name=>'P193_TIP_CAMBIO_COMPRA'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(58957544402601257)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(42404472522173068)
,p_name=>'P193_DECIMALES'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(58957544402601257)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(42404899072173068)
,p_name=>'P193_TIPO_IMPUESTO'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(58957544402601257)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(42405234034173068)
,p_name=>'P193_IVA_PARCIAL'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(58957544402601257)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(42405699382173068)
,p_name=>'P193_DESCUENTO'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(58957544402601257)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(42406064815173069)
,p_name=>'P193_SUBTOTAL_PARCIAL'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(58957544402601257)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(42406457092173069)
,p_name=>'P193_GRAVADAS_SUBTOTAL'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(58957544402601257)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(42406829017173069)
,p_name=>'P193_GRAVADAS_PARCIAL'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(58957544402601257)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(42407275187173069)
,p_name=>'P193_EXENTAS_SUBTOTAL'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(58957544402601257)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(42407685667173069)
,p_name=>'P193_EXENTAS_PARCIAL'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(58957544402601257)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(42408050682173070)
,p_name=>'P193_PORCENTAJE_DESCUENTO'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(58957544402601257)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(42408401569173070)
,p_name=>'P193_TIP_COMPROBANTE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(58958177512601263)
,p_prompt=>'Tipo Comprobante'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_lov=>'STATIC:FCR;FCR,FCO;FCO,TKT;TKT,NCR;NCR'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'LOV'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(42408836993173070)
,p_name=>'P193_GRU_COMPROBANTE'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(58957544402601257)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(42409206582173070)
,p_name=>'P193_RECARGO_PORC'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(58957544402601257)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(42409620275173070)
,p_name=>'P193_CONDICION_VENTA_FAC'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(58957544402601257)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(42410055893173070)
,p_name=>'193_P013_CONFORMIDAD'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(58957544402601257)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(42411096881173071)
,p_name=>'P193_DESCUENTO_DET'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(58959043628601272)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(42411445942173071)
,p_name=>'P193_AUX_DESCUENTO_DET'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(58959043628601272)
,p_prompt=>'Descuento '
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(42411897500173072)
,p_name=>'P193_RECARGO_DET'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(58959043628601272)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(42412261122173072)
,p_name=>'P193_AUX_RECARGO_DET'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(58959043628601272)
,p_prompt=>'Gravadas'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(42412929537173072)
,p_name=>'P193_ESTADO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(58961145182601293)
,p_item_default=>'P'
,p_prompt=>'Anulado (S/N)'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_lov=>'STATIC:;A'
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#:margin-top-none'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(42413213817173072)
,p_name=>'P193_FEC_ESTADO'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(58961145182601293)
,p_prompt=>'&nbsp'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(42413919612173073)
,p_name=>'P193_EXENTAS'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(58961249606601294)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(42414364812173073)
,p_name=>'P193_AUX_EXENTAS'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(58961249606601294)
,p_prompt=>'Exentas'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_attributes=>'readonly'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(42414753645173073)
,p_name=>'P193_GRAVADAS'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(58961249606601294)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(42415176452173074)
,p_name=>'P193_AUX_GRAVADAS'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(58961249606601294)
,p_prompt=>'Gravadas'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_attributes=>'readonly'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(42415569709173074)
,p_name=>'P193_NRO_MOV_CAJ'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(58961249606601294)
,p_prompt=>'Mov. caja'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_attributes=>'readonly'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(42415935219173074)
,p_name=>'P193_COD_USUARIO'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(58961249606601294)
,p_prompt=>'Usuario'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_attributes=>'readonly'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(42416690693173075)
,p_name=>'P193_SUBTOTAL'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(58961342981601295)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(42417030561173075)
,p_name=>'P193_AUX_SUBTOTAL'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(58961342981601295)
,p_prompt=>'Subtotal'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(42417442540173075)
,p_name=>'P193_TOTAL_IVA'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(58961342981601295)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(42417892479173075)
,p_name=>'P193_AUX_TOTAL_IVA1'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(58961342981601295)
,p_prompt=>'IVA'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_attributes=>'readonly'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(42418237691173075)
,p_name=>'P193_AJUSTE_IVA'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(58961342981601295)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(42418654880173076)
,p_name=>'P193_AUX_AJUSTE_IVA'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(58961342981601295)
,p_prompt=>'Ajuste IVA'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
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
 p_id=>wwv_flow_imp.id(42419046294173076)
,p_name=>'P193_TOTAL'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(58961342981601295)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(42419404220173076)
,p_name=>'P193_AUX_TOTAL'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(58961342981601295)
,p_prompt=>'Total'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_attributes=>'readonly'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(42419828832173076)
,p_name=>'P193_REIMPRIME'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(58961342981601295)
,p_prompt=>'&nbsp'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_attributes=>'readonly'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(42420541521173077)
,p_name=>'P193_SER_PEDIDO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(58985392576839856)
,p_prompt=>'&nbsp'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_colspan=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(42420996926173077)
,p_name=>'P193_NRO_PEDIDO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(58985392576839856)
,p_prompt=>'&nbsp'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(42421601876173077)
,p_name=>'P193_COMENTARIO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(58960360122601285)
,p_prompt=>'Comentario'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(42422043931173077)
,p_name=>'P193_COD_CUSTODIO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(58960360122601285)
,p_prompt=>'Custodio'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT c.cod_custodio||'' - ''||c.descripcion D, c.cod_custodio R',
'    FROM usuarios_custodios u, cc_custodios c ',
'   WHERE u.cod_empresa = :P193_COD_EMPRESA_VAR ',
'     AND u.cod_usuario = :P193_COD_USUARIO_VAR ',
'     AND u.cod_empresa = c.cod_empresa ',
'     AND u.cod_custodio = c.cod_custodio ',
'     AND u.cod_custodio <> :P193_COD_CUSTODIO_VAR',
'UNION ALL ',
'  SELECT c.descripcion, c.cod_custodio ',
'    FROM cc_custodios c ',
'   WHERE c.cod_empresa = :P193_COD_EMPRESA_VAR ',
'     AND c.cod_custodio = :P193_COD_CUSTODIO_VAR',
'ORDER BY 1;'))
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'LOV'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(42422476770173078)
,p_name=>'P193_RECARGO'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(58960360122601285)
,p_prompt=>'Recargo'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(42422888215173078)
,p_name=>'P193_HORA_ALTA'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(58960360122601285)
,p_prompt=>'Hora carga'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(42437350515173086)
,p_name=>'P193_COD_SUCURSAL'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(58958177512601263)
,p_prompt=>'Sucursal'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_named_lov=>'LV_SUCURSALES'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT cod_sucursal||'' - ''||descripcion L, ',
'         cod_sucursal V',
'    FROM sucursales ',
'   WHERE cod_empresa = :P_COD_EMPRESA',
'ORDER BY descripcion'))
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'LOV'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(42437789154173086)
,p_name=>'P193_SER_COMPROBANTE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(58958177512601263)
,p_prompt=>'Comprobante'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(42438189742173086)
,p_name=>'P193_NRO_COMPROBANTE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(58958177512601263)
,p_prompt=>'&nbsp'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(42438533509173087)
,p_name=>'P193_COD_SECTOR'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(58958177512601263)
,p_prompt=>unistr('Secci\00F3n')
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_named_lov=>'LVSECTORES'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT cod_sector||'' - ''||descripcion D, ',
'         cod_sector R',
'    FROM sectores ',
'   WHERE cod_empresa = :P_COD_EMPRESA ',
'ORDER BY descripcion;'))
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'LOV'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(42438920399173087)
,p_name=>'P193_FEC_COMPROBANTE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(58958177512601263)
,p_prompt=>'Fecha'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(42439345457173087)
,p_name=>'P193_COLUMNA'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(58958177512601263)
,p_prompt=>'Tipo'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_named_lov=>'LV_MOTIVOS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT cod_motivo||'' - ''||descripcion D,',
'       cod_motivo R ',
'  FROM motivos_nota_credito ',
' WHERE cod_empresa = :P_COD_EMPRESA;'))
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'LOV'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(42439701107173087)
,p_name=>'P193_TIP_COMPROBANTE_REF'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(58958177512601263)
,p_prompt=>'Referencia'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_attributes=>'readonly'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(42440133437173087)
,p_name=>'P193_SER_COMPROBANTE_REF'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(58958177512601263)
,p_prompt=>'Serie'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(42440564913173087)
,p_name=>'P193_NRO_COMPROBANTE_REF'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(58958177512601263)
,p_prompt=>'Nro. Comprobante REF.'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(42440971437173088)
,p_name=>'P193_TIP_OT'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(58958177512601263)
,p_prompt=>'Tipo OT'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_attributes=>'readonly'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(42441367504173088)
,p_name=>'P193_SER_OT'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(58958177512601263)
,p_prompt=>'Serie'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(42441728822173088)
,p_name=>'P193_NRO_OT'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(58958177512601263)
,p_prompt=>'Nro. OT'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(42442428474173088)
,p_name=>'P193_COD_CLIENTE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(58958226246601264)
,p_prompt=>'Cliente'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_named_lov=>'LV_CLIENTES_VTNOTCRE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT c.cod_cliente R, ',
'         nvl( ltrim( p.nombre ), ltrim( p.nomb_fantasia ) ) D ',
'    FROM cc_clientes c, personas p ',
'   WHERE c.cod_empresa = :P_COD_EMPRESA',
'     AND c.cod_persona = p.cod_persona',
'     AND NVL(ESTADO,''A'') NOT IN (''I'',''B'') ',
'ORDER BY 2'))
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'LOV'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(42442873592173089)
,p_name=>'P193_COD_DIRECCION'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(58958226246601264)
,p_prompt=>unistr('Direcci\00F3n')
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cod_direccion d, cod_direccion r',
'from direc_personas ',
'where cod_persona = :P193_CLIENTE_PERSONA',
'order by descripcion_ref;'))
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'LOV'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(42443254717173089)
,p_name=>'P193_DIR_CLIENTE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(58958226246601264)
,p_prompt=>'&nbsp'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(42443609472173089)
,p_name=>'P193_TEL_CLIENTE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(58958226246601264)
,p_prompt=>unistr('Tel\00E9fono')
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(42444025653173089)
,p_name=>'P193_RUC'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(58958226246601264)
,p_prompt=>'RUC'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(42444430816173089)
,p_name=>'P193_COD_VENDEDOR'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(58958226246601264)
,p_prompt=>'Vendedor'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_named_lov=>'LV_VENDEDORES_VTNOTCRE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT v.cod_vendedor||'' - ''||nvl( ltrim( v.descripcion ), ltrim( p.nomb_fantasia ) ) D, ',
'         v.cod_vendedor R',
'    FROM fv_vendedores v, personas p ',
'   WHERE v.cod_empresa = :P_COD_EMPRESA',
'     AND v.cod_persona = p.cod_persona ',
'     AND nvl( v.estado, ''A'' ) = ''A'' ',
'ORDER BY 1'))
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'LOV'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(42444846315173090)
,p_name=>'P193_COD_CONDICION_VENTA'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(58958226246601264)
,p_prompt=>unistr('Condici\00F3n venta')
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_named_lov=>'LV_CONDICIONES_VTNOTCRE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT c.cod_condicion_venta||'' - ''||c.descripcion D, ',
'       c.cod_condicion_venta R',
'  FROM cc_condiciones_ventas c, vt_listas_precios_cab l ',
' WHERE c.cod_empresa = :P_COD_EMPRESA',
'   AND l.cod_empresa = c.cod_empresa ',
'   AND c.cod_lista_precio = l.cod_lista_precio'))
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'LOV'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(42445293020173090)
,p_name=>'P193_COD_LISTA_PRECIO'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(58958226246601264)
,p_prompt=>'Lista de precios'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_named_lov=>'LV_LISTAS_PRECIOS_VTNOTCRE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT l.cod_lista_precio||'' - ''||l.descripcion D, ',
'         l.cod_lista_precio R',
'    FROM vt_listas_precios_cab l, monedas m ',
'   WHERE l.cod_empresa = :P_COD_EMPRESA',
'     AND l.cod_moneda = m.cod_moneda ',
'     AND l.estado = ''A'' ',
'ORDER BY l.descripcion'))
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'N'
,p_attribute_02=>'LOV'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(42445610427173090)
,p_name=>'P193_COD_MONEDA'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(58958226246601264)
,p_prompt=>'Moneda'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_named_lov=>'LVMONEDAS1'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'-- IDENTICO A LV_MONEDAS DEL VTFONSEN',
'  SELECT cod_moneda||'' - ''||descripcion D, ',
'         cod_moneda R',
'    FROM monedas ',
'ORDER BY 1;'))
,p_colspan=>6
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'LOV'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(42446024224173090)
,p_name=>'P193_TIP_CAMBIO'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(58958226246601264)
,p_prompt=>'Ref.'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(42446419172173090)
,p_name=>'P193_CAMBIO_MONEDA_PRECIO'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(58958226246601264)
,p_prompt=>'&nbsp'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(42447129381173092)
,p_name=>'P193_COD_EMPRESA_VAR'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(58144881968171267)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(42447528644173092)
,p_name=>'P193_COD_USUARIO_VAR'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(58144881968171267)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(42447963829173092)
,p_name=>'P193_COD_SUCURSAL_VAR'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(58144881968171267)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(42448391589173092)
,p_name=>'P193_COD_MODULO_VAR'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(58144881968171267)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(42448769620173093)
,p_name=>'P193_IMP_VAR'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(58144881968171267)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(42449140978173093)
,p_name=>'P193_SER_COMPROBANTE_VAR'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(58144881968171267)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(42449579295173093)
,p_name=>'P193_LISTA_PRECIOS_VAR'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(58144881968171267)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(42449949962173093)
,p_name=>'P193_CONDICION_VENTA_VAR'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(58144881968171267)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(42450383574173093)
,p_name=>'P193_MODIFICA_PRECIOS_VAR'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(58144881968171267)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(42450745344173093)
,p_name=>'P193_TIP_COMPROBANTE_VAR'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(58144881968171267)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(42451188636173094)
,p_name=>'P193_TIP_CONTADO_VAR'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(58144881968171267)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(42451576393173094)
,p_name=>'P193_TIP_CREDITO_VAR'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(58144881968171267)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(42451904795173094)
,p_name=>'P193_TIP_CVENTA_VAR'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(58144881968171267)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(42452391743173094)
,p_name=>'P193_COD_MONEDA_PRECIO'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(58144881968171267)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(42452747161173094)
,p_name=>'P193_COD_CLIENTE_OCA'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(58144881968171267)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(42453197359173094)
,p_name=>'P193_COD_MONEDA_BASE_VAR'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(58144881968171267)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(42453599413173095)
,p_name=>'P193_VARIACION_MENOS_VAR'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(58144881968171267)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(42453946447173095)
,p_name=>'P193_VARIACION_MAS_VAR'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(58144881968171267)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(42454328471173095)
,p_name=>'P193_UNIDAD_MEDIDA_VAR'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(58144881968171267)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(42454784573173095)
,p_name=>'P193_MONTO_AJUSTE_MAX_VAR'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(58144881968171267)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(42455193810173095)
,p_name=>'P193_VIENE_DEL_LOTE_VAR'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_imp.id(58144881968171267)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(42455508694173095)
,p_name=>'P193_FEC_VENCIMIENTO_VAR'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_imp.id(58144881968171267)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(42455938689173096)
,p_name=>'P193_LOTE_DEFECTO_VAR'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_imp.id(58144881968171267)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(42456350985173096)
,p_name=>'P193_RECARGO_VAR'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_imp.id(58144881968171267)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(42456787267173096)
,p_name=>'P193_PORC_IVA_VAR'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_imp.id(58144881968171267)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(42457155889173096)
,p_name=>'P193_CAMBIA_NUMERO_FAC'
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_imp.id(58144881968171267)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(42457505425173096)
,p_name=>'P193_CARGA_SUCURSAL'
,p_item_sequence=>270
,p_item_plug_id=>wwv_flow_imp.id(58144881968171267)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(42457964451173097)
,p_name=>'P193_PERMITE_ANULAR'
,p_item_sequence=>280
,p_item_plug_id=>wwv_flow_imp.id(58144881968171267)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(42458387449173097)
,p_name=>'P193_CARGA_DESCUENTOS'
,p_item_sequence=>290
,p_item_plug_id=>wwv_flow_imp.id(58144881968171267)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(42458790905173097)
,p_name=>'P193_LINEAS_MAX'
,p_item_sequence=>310
,p_item_plug_id=>wwv_flow_imp.id(58144881968171267)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(42459104034173097)
,p_name=>'P193_USA_UM_DEF'
,p_item_sequence=>320
,p_item_plug_id=>wwv_flow_imp.id(58144881968171267)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(42459558965173097)
,p_name=>'P193_COD_CUSTODIO_VAR'
,p_item_sequence=>330
,p_item_plug_id=>wwv_flow_imp.id(58144881968171267)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(42459981440173097)
,p_name=>'P193_COD_SUCURSAL_CENTRAL_VAR'
,p_item_sequence=>340
,p_item_plug_id=>wwv_flow_imp.id(58144881968171267)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(42460331183173098)
,p_name=>'P193_CLIENTE_PERSONA'
,p_item_sequence=>350
,p_item_plug_id=>wwv_flow_imp.id(58144881968171267)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(42460715786173098)
,p_name=>'P193_CALCULA_IVA'
,p_item_sequence=>360
,p_item_plug_id=>wwv_flow_imp.id(58144881968171267)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(42461103641173098)
,p_name=>'P193_AUTO_IMPRESO'
,p_item_sequence=>370
,p_item_plug_id=>wwv_flow_imp.id(58144881968171267)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(42461576548173098)
,p_name=>'P193_CARGA_ITEMS'
,p_item_sequence=>380
,p_item_plug_id=>wwv_flow_imp.id(58144881968171267)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(42461913112173098)
,p_name=>'P193_DERECHOS'
,p_item_sequence=>390
,p_item_plug_id=>wwv_flow_imp.id(58144881968171267)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(42462360971173098)
,p_name=>'P193_SER_VALE'
,p_item_sequence=>400
,p_item_plug_id=>wwv_flow_imp.id(58144881968171267)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(42462741254173099)
,p_name=>'P193_NRO_VALE'
,p_item_sequence=>410
,p_item_plug_id=>wwv_flow_imp.id(58144881968171267)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(42463194360173099)
,p_name=>'P193_COD_ARTICULO'
,p_item_sequence=>420
,p_item_plug_id=>wwv_flow_imp.id(58144881968171267)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(42463538214173099)
,p_name=>'P193_MULT'
,p_item_sequence=>430
,p_item_plug_id=>wwv_flow_imp.id(58144881968171267)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(42463952564173099)
,p_name=>'P193_DIV'
,p_item_sequence=>440
,p_item_plug_id=>wwv_flow_imp.id(58144881968171267)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(42464340791173099)
,p_name=>'P193_IMPRIMIR'
,p_item_sequence=>450
,p_item_plug_id=>wwv_flow_imp.id(58144881968171267)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(42464776087173100)
,p_name=>'P193_ESTA_CONSULTANDO'
,p_item_sequence=>460
,p_item_plug_id=>wwv_flow_imp.id(58144881968171267)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(42465127138173100)
,p_name=>'P193_SUPERA_DESCUENTO'
,p_item_sequence=>470
,p_item_plug_id=>wwv_flow_imp.id(58144881968171267)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(42465500213173100)
,p_name=>'P193_COD_ART_AUX'
,p_item_sequence=>480
,p_item_plug_id=>wwv_flow_imp.id(58144881968171267)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(61169007925524418)
,p_name=>'P193_VISITA'
,p_item_sequence=>30
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(102440945391377341)
,p_name=>'P193_ID'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(102440803389377340)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(102441065513377342)
,p_name=>'P193_TIPO_COMPROB_S'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(102440803389377340)
,p_prompt=>'Tipo Comprobante'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT T.TIP_COMPROBANTE||'' - ''||initcap(T.DESCRIPCION) d,',
'       T.TIP_COMPROBANTE R',
'  FROM TIPOS_COMPROBANTES T ',
' WHERE T.COD_EMPRESA = 1',
'   AND T.TIP_COMPROBANTE IN (''FCO'',''FCR'',''TKT'',''DEB'',''NCR'')',
'ORDER BY 1'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(102441114930377343)
,p_name=>'P193_SER'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(102440803389377340)
,p_prompt=>'Serie'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
,p_attribute_06=>'UPPER'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(102441269654377344)
,p_name=>'P193_NRO_DOCUMENTO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(102440803389377340)
,p_prompt=>'Nro. Documento'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_css_classes=>'allow_only_numbers'
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(102441322546377345)
,p_name=>'P193_FEC_DESDE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(102440803389377340)
,p_item_default=>'last_day(add_months(sysdate,-2))'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Fecha Desde'
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>30
,p_cMaxlength=>12
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
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
 p_id=>wwv_flow_imp.id(102441449007377346)
,p_name=>'P193_FEC_HASTA'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(102440803389377340)
,p_prompt=>'Fecha Hasta'
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>30
,p_cMaxlength=>12
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(102441527669377347)
,p_name=>'P193_CLIENTE_S'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(102440803389377340)
,p_prompt=>'Cliente'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
' ',
'        SELECT DISTINCT NVL(TRIM(P.NOMBRE),TRIM(P.NOMB_FANTASIA))||'' ''||(SELECT LISTAGG(Numero, ''  '') ',
'             WITHIN GROUP (ORDER BY ROWNUM) ',
'         FROM   IDENT_PERSONAS IP',
'         WHERE   IP.cod_ident in (''CI'',''RUC'')',
'         AND    IP.COD_PERSONA=C.COD_PERSONA',
'         ) || '' -'' || C.COD_CLIENTE d',
'           , C.COD_CLIENTE v',
'     FROM CC_CLIENTES C',
'          ,PERSONAS P',
'     WHERE C.COD_EMPRESA=''1''',
'     AND   C.COD_PERSONA=P.COD_PERSONA',
'     AND   P.NOMBRE NOT LIKE ''%NO USAR%''',
'     AND   P.NOMBRE NOT LIKE ''--%''',
'     AND   P.NOMBRE NOT LIKE ''**%''',
'   ORDER BY TO_NUMBER(C.COD_CLIENTE)',
'      ',
'         '))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'TODOS'
,p_lov_cascade_parent_items=>'P_COD_EMPRESA'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'Y'
,p_attribute_05=>'N'
,p_attribute_08=>'600'
,p_attribute_09=>'400'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(165069926542894646)
,p_name=>'P193_VENDEDOR'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(102440803389377340)
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
,p_lov_display_null=>'YES'
,p_lov_null_text=>'TODOS'
,p_lov_cascade_parent_items=>'P_COD_EMPRESA'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
,p_attribute_08=>'600'
,p_attribute_09=>'400'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(42489036911173113)
,p_name=>'DA_ESTADO'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P193_PERMITE_ANULAR'
,p_condition_element=>'P193_PERMITE_ANULAR'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'S'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(42489538850173113)
,p_event_id=>wwv_flow_imp.id(42489036911173113)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P193_ESTADO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(42490057535173113)
,p_event_id=>wwv_flow_imp.id(42489036911173113)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P193_ESTADO'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(42511428387173122)
,p_name=>'DA_COD_CLIENTE'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P193_COD_CLIENTE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(42511910373173122)
,p_event_id=>wwv_flow_imp.id(42511428387173122)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    VTCONFAC.carga_cliente (P_COD_EMPRESA      => :P193_COD_EMPRESA_VAR,',
'                            P_COD_CLIENTE      => :P193_COD_CLIENTE,',
'                            P_CLIENTE_PERSONA  => :P193_CLIENTE_PERSONA,',
'                            P_IND_EXENTO_AD    => :P193_IND_EXENTO_AD,',
'                            P_TIPO_IMPUESTO    => :P193_TIPO_IMPUESTO,',
'                            PI_COD_DIRECCION   => :P193_COD_DIRECCION,',
'                            PO_COD_DIRECCION   => :P193_COD_DIRECCION,',
'                            PI_DIR_CLIENTE      => :P193_DIR_CLIENTE,',
'                            PO_DIR_CLIENTE      => :P193_DIR_CLIENTE,',
'                            P_COD_VENDEDOR     => :P193_COD_VENDEDOR,',
'                            P_RUC              => :P193_RUC); ',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        NULL;',
'END;',
'IF :P193_NRO_COMPROBANTE_REF IS NULL then',
'   :P193_CONDICION_VENTA_VAR := NULL;',
'   :P193_COD_LISTA_PRECIO := NULL;',
'END IF;',
''))
,p_attribute_02=>'P193_NRO_COMPROBANTE_REF,P193_COD_EMPRESA_VAR,P193_COD_CLIENTE,P193_COD_DIRECCION'
,p_attribute_03=>'P193_CONDICION_VENTA_VAR,P193_CLIENTE_PERSONA,P193_IND_EXENTO_AD,P193_TIPO_IMPUESTO,P193_COD_DIRECCION,P193_DIR_CLIENTE,P193_COD_VENDEDOR,P193_RUC'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(42492764512173114)
,p_name=>'DA_DESC_DIR'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P193_COD_DIRECCION'
,p_bind_type=>'bind'
,p_bind_event_type=>'focusout'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(42493229846173115)
,p_event_id=>wwv_flow_imp.id(42492764512173114)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT DETALLE',
'    INTO :P193_DIR_CLIENTE',
'    FROM direc_personas ',
'   WHERE cod_direccion = :P193_COD_DIRECCION',
'     AND cod_persona = :P193_CLIENTE_PERSONA',
'     AND rownum = 1;',
''))
,p_attribute_02=>'P193_COD_DIRECCION,P193_CLIENTE_PERSONA'
,p_attribute_03=>'P193_DIR_CLIENTE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(42512394007173122)
,p_name=>'DA_TIP_CAMBIO'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P193_COD_MONEDA'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(42512806419173122)
,p_event_id=>wwv_flow_imp.id(42512394007173122)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    VTCONFAC.valida_moneda(P_COD_MONEDA => :P193_COD_MONEDA,',
'                           P_DECIMALES  => :P193_DECIMALES,',
'                           P_TIP_CAMBIO => :P193_TIP_CAMBIO,',
'                           P_TIP_CAMBIO_COMPRA => :P193_TIP_CAMBIO_COMPRA);',
'EXCEPTION   ',
'    WHEN OTHERS THEN    ',
'        :P193_TIP_CAMBIO := NULL;',
'END;        ',
'      ',
''))
,p_attribute_02=>'P193_COD_MONEDA'
,p_attribute_03=>'P193_TIP_CAMBIO_COMPRA,P193_TIP_CAMBIO,P193_DECIMALES'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(42494504392173115)
,p_name=>'DA_TIP_OP'
,p_event_sequence=>70
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P193_TIP_OT'
,p_bind_type=>'bind'
,p_bind_event_type=>'focusout'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(42495009899173115)
,p_event_id=>wwv_flow_imp.id(42494504392173115)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P193_TIP_OT=''SNC'' AND :P193_SER_OT IS NULL THEN',
'  :P193_SER_OT:=''A'';',
'END IF;'))
,p_attribute_02=>'P193_TIP_OT,P193_SER_OT'
,p_attribute_03=>'P193_SER_OT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(42495470506173115)
,p_name=>'DA_CONDICION_VENTA'
,p_event_sequence=>80
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P193_COD_CONDICION_VENTA'
,p_bind_type=>'bind'
,p_bind_event_type=>'focusout'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(42495939791173116)
,p_event_id=>wwv_flow_imp.id(42495470506173115)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    VTCONFAC.valida_condicion (P_CONDICION_VENTA => :P193_COD_CONDICION_VENTA,',
'                               P_COD_MONEDA      => :P193_COD_MONEDA,',
'                               P_COD_EMPRESA     => :P193_COD_EMPRESA_VAR);',
'END;'))
,p_attribute_02=>'P193_COD_CONDICION_VENTA,P193_COD_EMPRESA_VAR'
,p_attribute_03=>'P193_COD_CONDICION_VENTA,P193_COD_MONEDA'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(42525987187173127)
,p_name=>'DA_CARGA_DATOS'
,p_event_sequence=>100
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P193_NRO_COMPROBANTE_REF'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'apex.item(''P193_TIP_COMPROBANTE_REF'').getValue() != '''' && apex.item(''P193_SER_COMPROBANTE_REF'').getValue() != '''' && apex.item(''P193_NRO_COMPROBANTE_REF'').getValue() != '''''
,p_bind_type=>'bind'
,p_bind_event_type=>'focusout'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(42526414428173127)
,p_event_id=>wwv_flow_imp.id(42525987187173127)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'VTCONFAC.carga_detalle (P_CONFORMIDAD => :P013_CONFORMIDAD,',
'                        P_COD_EMPRESA => :P193_COD_EMPRESA_VAR,',
'                        P_TIP_COMPROBANTE_REF => :P193_TIP_COMPROBANTE_REF,',
'                        P_SER_COMPROBANTE_REF => :P193_SER_COMPROBANTE_REF,',
'                        P_NRO_COMPROBANTE_REF => :P193_NRO_COMPROBANTE_REF,',
'                        P_DECIMALES => TO_NUMBER(:P193_DECIMALES),',
'                        P_TIP_CONTADO => :P193_TIP_CONTADO_VAR,',
'                        P_TIP_CREDITO => :P193_TIP_CREDITO_VAR,',
'                        P_TIP_CVENTA => :P193_TIP_CVENTA_VAR,',
'                        P_TIP_COMPROBANTE => :P193_TIP_COMPROBANTE,',
'                        P_COD_ARTICULO => :P193_COD_ARTICULO, --PARAMETER.P_COD_ARTICULO',
'                        P_SER_VALE => :P193_SER_VALE, --PARAMETER.P_SER_VALE',
'                        P_NRO_VALE => :P193_NRO_VALE, --PARAMETER.P_NRO_VALE',
'                        P_NRO_OT => :P193_NRO_OT,',
'                        P_SER_OT => :P193_SER_OT,  --OUT',
'                        P_TIP_OT => :P193_TIP_OT,  --OUT',
'                        P_COD_CLIENTE => :P193_COD_CLIENTE, --OUT',
'                        P_TEL_CLIENTE => :P193_TEL_CLIENTE, --OUT',
'                        P_RUC => :P193_RUC, --OUT',
'                        P_COD_VENDEDOR => :P_COD_VENDEDOR, --OUT',
'                        P_COD_CONDICION_VENTA => :P193_COD_CONDICION_VENTA, --OUT',
'                        P_COD_CONDICION_VENTA_FAC => :P193_CONDICION_VENTA_FAC, --OUT',
'                        P_COD_MONEDA => :P193_COD_MONEDA, --OUT',
'                        P_COD_LISTA_PRECIO => :P193_COD_LISTA_PRECIO, --OUT',
'                        P_CAMBIO_MONEDA_PRECIO => :P193_CAMBIO_MONEDA_PRECIO, --OUT',
'                        P_RECARGO_CABECERA => :P193_RECARGO, --OUT',
'                        P_COD_SECTOR => :P193_COD_SECTOR, --OUT',
'                        P_CARGA_ITEMS => :P193_CARGA_ITEMS, --OUT',
'                        P_CALCULA_IVA => :P193_CALCULA_IVA, --OUT',
'                        P_MULT => :P193_MULT, --CABECERA --OUT',
'                        P_DIV => :P193_DIV, --OUT',
'                        P_RECARGO_VAR => :P193_RECARGO_VAR,',
'                        P_IVA_PARCIAL => :P193_IVA_PARCIAL, --OUT',
'                        P_SUBTOTAL_PARCIAL => :P193_SUBTOTAL_PARCIAL, --OUT',
'                        P_GRAVADAS_PARCIAL => :P193_GRAVADAS_PARCIAL, --OUT',
'                        P_EXCENTAS_PARCIAL => :P193_EXENTAS_PARCIAL, --OUT',
'                        P_PORCENTAJE_DESCUENTO => :P193_PORCENTAJE_DESCUENTO, --OUT',
'                        P_DESCUENTO => :P193_DESCUENTO, ',
'                        P_TOTAL_IVA => :P193_TOTAL_IVA, --OUT',
'                        P_AJUSTE_IVA => :P193_AJUSTE_IVA, --OUT',
'                        P_SUBTOTAL => :P193_SUBTOTAL, --OUT',
'                        P_GRAVADAS => :P193_GRAVADAS, --OUT',
'                        P_EXENTAS => :P193_EXENTAS, --OUT',
'                        P_RECARGO_PORC => :P193_RECARGO_PORC, --OUT',
'                        P_TOTAL => :P193_TOTAL,',
'                        P_DESCUENTO_DETALLE => :P193_DESCUENTO_DET,--OUT',
'                        P_RECARGO_DETALLE => :P193_RECARGO_DET);  --OUT'))
,p_attribute_02=>'P013_CONFORMIDAD,P193_COD_EMPRESA_VAR,P193_TIP_COMPROBANTE_REF,P193_DESCUENTO,P193_RECARGO_VAR,P193_MULT,P193_DIV,                             P193_SER_COMPROBANTE_REF,P193_NRO_COMPROBANTE_REF,P193_DECIMALES,P193_TIP_CONTADO_VAR,P193_TIP_CREDITO_VAR,'
||'                             P193_TIP_CVENTA_VAR,P193_TIP_COMPROBANTE,P193_COD_ARTICULO,P193_SER_VALEP193_NRO_VALE'
,p_attribute_03=>'P193_RECARGO_DET,P193_DESCUENTO_DET,P193_NRO_OT,P193_SER_OT,P193_TIP_OT,P193_COD_CLIENTE,P193_TEL_CLIENTE,P193_RUC,P_COD_VENDEDOR,P193_COD_CONDICION_VENTA,P193_CONDICION_VENTA_FAC,P193_COD_MONEDA,P193_COD_LISTA_PRECIO,P193_CAMBIO_MONEDA_PRECIO,P193_R'
||'ECARGO,P193_COD_SECTOR,P193_CARGA_ITEMS,P193_CALCULA_IVA,P193_MULT,P193_DIV,P193_IVA_PARCIAL,P193_SUBTOTAL_PARCIAL,P193_GRAVADAS_PARCIAL,P193_EXENTAS_PARCIAL,P193_PORCENTAJE_DESCUENTO,P193_TOTAL_IVA,P193_AJUSTE_IVA,P193_SUBTOTAL,P193_GRAVADAS,P193_EX'
||'ENTAS,P193_RECARGO_PORC,P193_TOTAL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(42526915746173127)
,p_event_id=>wwv_flow_imp.id(42525987187173127)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'Debe completar todos los datos del comprobante.'
,p_attribute_02=>'Error'
,p_attribute_03=>'warning'
,p_attribute_04=>'fa-warning'
,p_attribute_06=>'Aceptar'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(42527910047173128)
,p_event_id=>wwv_flow_imp.id(42525987187173127)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P193_DESCUENTO_DET,P193_NRO_OT,P193_SER_OT,P193_TIP_OT,P193_COD_CLIENTE,P193_TEL_CLIENTE,P193_RUC,P_COD_VENDEDOR,P193_COD_CONDICION_VENTA,P193_CONDICION_VENTA_FAC,P193_COD_MONEDA,P193_COD_LISTA_PRECIO,P193_CAMBIO_MONEDA_PRECIO,P193_RECARGO,P193_COD_S'
||'ECTOR,P193_CARGA_ITEMS,P193_CALCULA_IVA,P193_MULT,P193_DIV,P193_IVA_PARCIAL,P193_SUBTOTAL_PARCIAL,P193_GRAVADAS_PARCIAL,P193_EXENTAS_PARCIAL,P193_PORCENTAJE_DESCUENTO,P193_TOTAL_IVA,P193_AJUSTE_IVA,P193_SUBTOTAL,P193_GRAVADAS,P193_EXENTAS,P193_RECARG'
||'O_PORC'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(42527475785173128)
,p_event_id=>wwv_flow_imp.id(42525987187173127)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(58985622791839859)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(42514162697173123)
,p_name=>'DA_DESCUENTO'
,p_event_sequence=>110
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P193_DESCUENTO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(42514676310173123)
,p_event_id=>wwv_flow_imp.id(42514162697173123)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF nvl( TO_NUMBER(:P193_DESCUENTO),0) > ( nvl(TO_NUMBER(:P193_SUBTOTAL_PARCIAL),0) + nvl(TO_NUMBER(:P193_IVA_PARCIAL),0) ) THEN',
'   RAISE_APPLICATION_ERROR(-20000, ''Descuento no puede ser mayor que el total de la factura.'' );',
'END IF;',
'',
'',
'',
''))
,p_attribute_02=>'P193_DESCUENTO,P193_SUBTOTAL_PARCIAL,P193_IVA_PARCIAL'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(42520660462173125)
,p_name=>'DA_HIDE'
,p_event_sequence=>140
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(42521136334173125)
,p_event_id=>wwv_flow_imp.id(42520660462173125)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(59520781911180777)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(42523608512173126)
,p_event_id=>wwv_flow_imp.id(42520660462173125)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_FOCUS'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P193_COD_SUCURSAL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(42523107009173126)
,p_event_id=>wwv_flow_imp.id(42520660462173125)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P193_NRO_PROMO'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(42474716707173107)
,p_name=>'DA_IMPRIMIR1'
,p_event_sequence=>160
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(42383240477173056)
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'apex.item(''P193_TIP_COMPROBANTE'').getValue() != '''' && apex.item(''P193_SER_COMPROBANTE'').getValue() != '''' && apex.item(''P193_NRO_COMPROBANTE'').getValue() != '''''
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(42475208747173107)
,p_event_id=>wwv_flow_imp.id(42474716707173107)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    VAUTO_IMPRESO VARCHAR(1);',
'BEGIN',
'    :P193_AUX_MSJ := null;',
'    :P193_IMPRIME_REPORTE := 2;',
'    IF :P193_COD_MOTIVO IS NOT NULL THEN      ',
'        VTCONFAC.guarda_reimpresion(P_COD_EMPRESA     => :P193_COD_EMPRESA_VAR,',
'                                    P_TIP_COMPROBANTE => :P193_TIP_COMPROBANTE ,',
'                                    P_SER_COMPROBANTE => :P193_SER_COMPROBANTE,',
'                                    P_NRO_COMPROBANTE => :P193_NRO_COMPROBANTE,',
'                                    P_DESCRIPCION     => :P193_DESCRIPCION,',
'                                    P_FECHA           => :P193_FECHA_IMP,',
'                                    P_COD_USUARIO     => :P193_COD_USUARIO_IMP,',
'                                    P_COD_MOTIVO      => :P193_COD_MOTIVO); ',
'        VTCONFAC.copia(P_COD_EMPRESA     => :P193_COD_EMPRESA_VAR,',
'                       P_TIP_COMPROBANTE => :P193_TIP_COMPROBANTE,',
'                       P_SER_COMPROBANTE => :P193_SER_COMPROBANTE,',
'                       P_NRO_COMPROBANTE => :P193_NRO_COMPROBANTE);                                ',
'    	:P193_IMPRIME_REPORTE := 1;',
'    ELSE',
unistr('        :P193_AUX_MSJ := ''Debe seleccionar un motivo de reimpresi\00F3n.'';'),
'    END IF;',
'END;                                                   '))
,p_attribute_02=>'P193_IMP_VAR,P193_COD_EMPRESA_VAR,P193_TIP_COMPROBANTE,P193_SER_COMPROBANTE,P193_NRO_COMPROBANTE,P193_DESCRIPCION,P193_FECHA_IMP,P193_COD_USUARIO_IMP,P193_COD_MOTIVO'
,p_attribute_03=>'P193_AUX_MSJ,P193_IMPRIME_REPORTE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(42475751040173108)
,p_event_id=>wwv_flow_imp.id(42474716707173107)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'Debe completar los datos del comprobante a imprimir. '
,p_attribute_02=>'Error'
,p_attribute_03=>'warning'
,p_attribute_04=>'fa-warning'
,p_attribute_06=>'Aceptar'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(42476222576173108)
,p_event_id=>wwv_flow_imp.id(42474716707173107)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(59520781911180777)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(42479264083173109)
,p_event_id=>wwv_flow_imp.id(42474716707173107)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'doDescarga(apex.item(''P193_COD_EMPRESA_VAR'').getValue(),apex.item(''P193_TIP_COMPROBANTE'').getValue(),apex.item(''P193_SER_COMPROBANTE'').getValue(), apex.item(''P193_NRO_COMPROBANTE'').getValue(), ',
'           apex.item(''P193_COD_CLIENTE'').getValue())'))
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P193_IMPRIME_REPORTE'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(42476715719173108)
,p_event_id=>wwv_flow_imp.id(42474716707173107)
,p_event_result=>'FALSE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_FOCUS'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P193_SER_COMPROBANTE'
,p_client_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_client_condition_expression=>'apex.item(''P193_SER_COMPROBANTE'').getValue() == '''' && apex.item(''P193_NRO_COMPROBANTE'').getValue() != '''''
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(42478761945173109)
,p_event_id=>wwv_flow_imp.id(42474716707173107)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_FOCUS'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P193_COD_MOTIVO'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P193_AUX_MSJ'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(42477709410173109)
,p_event_id=>wwv_flow_imp.id(42474716707173107)
,p_event_result=>'FALSE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_FOCUS'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P193_SER_COMPROBANTE'
,p_client_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_client_condition_expression=>'apex.item(''P193_SER_COMPROBANTE'').getValue() == '''' && apex.item(''P193_NRO_COMPROBANTE'').getValue() == '''''
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(42478208714173109)
,p_event_id=>wwv_flow_imp.id(42474716707173107)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P193_AUX_MSJ.'
,p_attribute_02=>'Error'
,p_attribute_03=>'warning'
,p_attribute_04=>'fa-warning'
,p_attribute_06=>'Aceptar'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P193_AUX_MSJ'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(42477250064173108)
,p_event_id=>wwv_flow_imp.id(42474716707173107)
,p_event_result=>'FALSE'
,p_action_sequence=>50
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_FOCUS'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P193_NRO_COMPROBANTE'
,p_client_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_client_condition_expression=>'apex.item(''P193_SER_COMPROBANTE'').getValue() != '''' && apex.item(''P193_NRO_COMPROBANTE'').getValue() == '''''
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(42479748390173109)
,p_event_id=>wwv_flow_imp.id(42474716707173107)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(59520781911180777)
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P193_AUX_MSJ'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(42480220700173109)
,p_event_id=>wwv_flow_imp.id(42474716707173107)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_FOCUS'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P193_FEC_COMPROBANTE'
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P193_AUX_MSJ'
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(42480647626173110)
,p_name=>'DA_COD_MOTIVO'
,p_event_sequence=>170
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P193_COD_MOTIVO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(42481196626173110)
,p_event_id=>wwv_flow_imp.id(42480647626173110)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P193_COD_MOTIVO'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(42490431946173113)
,p_name=>'DA_ABRE_REGION_IMPRIMIR'
,p_event_sequence=>180
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P193_AUX_REGION'
,p_condition_element=>'P193_AUX_REGION'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'1'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(42490946813173114)
,p_event_id=>wwv_flow_imp.id(42490431946173113)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(59520781911180777)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(42481527255173110)
,p_name=>'DA_PEDIDO'
,p_event_sequence=>190
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(58985622791839859)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterrefresh'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(42482046672173110)
,p_event_id=>wwv_flow_imp.id(42481527255173110)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT C019 ser_pedido, ',
'       C020 nro_pedido',
'  INTO :P193_SER_PEDIDO, ',
'       :P193_NRO_PEDIDO    ',
'FROM APEX_COLLECTIONS',
'WHERE COLLECTION_NAME = ''DET_COM''',
'  AND SEQ_ID = 1; '))
,p_attribute_03=>'P193_SER_PEDIDO,P193_NRO_PEDIDO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(42528346288173128)
,p_name=>'DA_LISTA_PRECIO'
,p_event_sequence=>210
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P193_COD_LISTA_PRECIO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(42528836180173128)
,p_event_id=>wwv_flow_imp.id(42528346288173128)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'null;'
,p_attribute_02=>'P193_COD_LISTA_PRECIO'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(42529286728173128)
,p_name=>'DA_ABRE_DETALLE'
,p_event_sequence=>220
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P193_AUX_ABRE_DETALLE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(42530271546173129)
,p_event_id=>wwv_flow_imp.id(42529286728173128)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    SELECT C001, -- importe_ant ',
'           C002, -- iva.ant',
'           C003, -- cod_articulo, ',
'           C006, -- nro_lote,',
'           C007, -- cantidad,  ',
'           C008, -- catidad_vendida,',
'           C010, -- precio_unitario,',
'           C011, -- porc_iva',
'           C012, -- ind_renta',
'           C014, -- porc_descuento,',
'           C015, -- porc_recargo',
'           C017, -- nro_promo',
'           C018, -- total_iva',
'           C021, -- recargo',
'           C022, -- descuento',
'           C023, -- porc_descuento_ant',
'           C027, -- monto_total',
'           C028, -- monto_exenta',
'           C029, -- monto_gravada_10',
'           C030, -- monto_gravada_5',
'           C031, -- cantidad_ub',
'           C032, -- porc_iva_ad',
'           C034, -- cod_articulo_rel_bon',
'           C035, -- descuento_maximo',
'           C036  -- porc_recargo_ant',
'      INTO :P193_AUX_IMPORTE_ANT,',
'           :P193_AUX_IVA_ANT,',
'           :P193_COD_ARTICULO_DETALLE, ',
'           :P193_LOTE, ',
'           :P193_CANTIDAD, ',
'           :P193_AUX_CANT_VENDIDA,',
'           :P193_PRECIO_UNITARIO, ',
'           :P193_AUX_PORC_IVA,',
'           :P193_AUX_IND_RENTA,',
'           :P193_PORC_DESCUENTO_DETALLE, ',
'           :P193_PORC_RECARGO_DETALLE,',
'           :P193_AUX_NRO_PROMO,',
'           :P193_AUX_TOTAL_IVA,',
'           :P193_AUX_RECARGO,       ',
'           :P193_AUX_DESCUENTO,',
'           :P193_AUX_PORC_DESCUENTO_ANT,',
'           :P193_AUX_MONTO_TOTAL,',
'           :P193_AUX_MONTO_EXENTA,',
'           :P193_AUX_MONTO_GRAVADA_10,',
'           :P193_AUX_MONTO_GRAVADA_5,',
'           :P193_AUX_CANTIDAD_UB,',
'           :P193_AUX_PORC_IVA_AD,',
'           :P193_AUX_COD_ARTICULO_REL_BON,',
'           :P193_AUX_DESCUENTO_MAXIMO,',
'           :P193_AUX_PORC_RECARGO_ANT',
'      FROM APEX_COLLECTIONS',
'     WHERE COLLECTION_NAME = ''DET_COM''',
'       AND SEQ_ID = :P193_AUX_ABRE_DETALLE; ',
'    :P193_RECARGO_DET := :P193_AUX_RECARGO;',
'    :P193_DESCUENTO_DET := :P193_AUX_DESCUENTO; ',
'    :P193_AUX_CANTIDAD_ANT := :P193_CANTIDAD;',
'EXCEPTION',
'    WHEN OTHERS THEN',
unistr('        RAISE_APPLICATION_ERROR(-20000, ''Ha ocurrido un error al recuperar los datos del art\00EDculo'');'),
'END;        ',
'                           ',
'                         ',
'                 '))
,p_attribute_02=>'P193_AUX_ABRE_DETALLE'
,p_attribute_03=>'P193_RECARGO_DET,P193_DESCUENTO_DET,P193_AUX_CANTIDAD_ANT,P193_AUX_NRO_PROMO,P193_AUX_IMPORTE_ANT,P193_AUX_IVA_ANT,P193_COD_ARTICULO_DETALLE,P193_LOTE,P193_CANTIDAD,P193_AUX_CANT_VENDIDA,P193_PRECIO_UNITARIO,P193_AUX_PORC_IVA, P193_AUX_IND_RENTA,P193'
||'_PORC_DESCUENTO_DETALLE, P193_PORC_RECARGO_DETALLE,P193_AUX_TOTAL_IVA,P193_AUX_RECARGO,P193_AUX_DESCUENTO,P193_AUX_PORC_DESCUENTO_ANT,P193_AUX_MONTO_TOTAL,P193_AUX_MONTO_EXENTA, P193_AUX_MONTO_GRAVADA_10,P193_AUX_MONTO_GRAVADA_5,P193_AUX_CANTIDAD_UB,'
||'P193_AUX_PORC_IVA_AD,P193_AUX_COD_ARTICULO_REL_BON,P193_AUX_DESCUENTO_MAXIMO,P193_AUX_PORC_RECARGO_ANT'
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
 p_id=>wwv_flow_imp.id(42529755692173128)
,p_event_id=>wwv_flow_imp.id(42529286728173128)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(59943840007975386)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(42504207596173119)
,p_name=>'DA_GUARDAR_DETALLE'
,p_event_sequence=>230
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(42387469388173059)
,p_condition_element=>'P193_CANTIDAD'
,p_triggering_condition_type=>'GREATER_THAN'
,p_triggering_expression=>'0'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(42505724402173120)
,p_event_id=>wwv_flow_imp.id(42504207596173119)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'Debe ingresar la cantidad.'
,p_attribute_02=>'Error'
,p_attribute_03=>'warning'
,p_attribute_04=>'fa-warning'
,p_attribute_06=>'Aceptar'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(42505222446173119)
,p_event_id=>wwv_flow_imp.id(42504207596173119)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(59943840007975386)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(42504771596173119)
,p_event_id=>wwv_flow_imp.id(42504207596173119)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    FOR CC IN (SELECT C001,C002,C003,C004,C005,C006,C007,C008,C010,C011,C012,C013,C014,C015,C016,C017,C018,C019,C020,C021,C022,C023,C024,C025,C026,C027,C028,C029, ',
'                      C030,C031,C032,C033,C034,C035,C036  ',
'                 FROM APEX_COLLECTIONS',
'                WHERE COLLECTION_NAME = ''DET_COM''',
'                  AND SEQ_ID = :P193_AUX_ABRE_DETALLE)',
'    LOOP',
'        APEX_COLLECTION.UPDATE_MEMBER(P_COLLECTION_NAME => ''DET_COM'',',
'                                       P_SEQ  => :P193_AUX_ABRE_DETALLE,',
'                                       P_C001 => :P193_AUX_IMPORTE_ANT,   --:b_detalle.importe_ant ',
'                                       P_C002 => :P193_AUX_IVA_ANT,   --:b_detalle.iva_ant',
'                                       P_C003 => :P193_COD_ARTICULO_DETALLE, -- :b_detalle.cod_articulo',
'                                       P_C004 => CC.C004, -- :b_detalle.costo_promedio',
'                                       P_C005 => CC.C005, -- :b_detalle.costo_promedio_ref',
'                                       P_C006 => :P193_LOTE, --:b_detalle.nro_lote',
'                                       P_C007 => :P193_CANTIDAD, --b_detalle.cantidad  ',
'                                       P_C008 => :P193_AUX_CANT_VENDIDA, -- b_detalle.cantidad_vendida',
'                                       P_C010 => :P193_PRECIO_UNITARIO, --:b_detalle.precio_unitario',
'                                       P_C011 => :P193_AUX_PORC_IVA, --:b_detalle.porc_iva',
'                                       P_C012 => :P193_AUX_IND_RENTA, --:b_detalle.ind_renta ',
'                                       P_C013 => CC.C013, -- :b_detalle.precio_lista',
'                                       P_C014 => :P193_PORC_DESCUENTO_DETALLE, --:b_detalle.porc_descuento',
'                                       P_C015 => :P193_PORC_RECARGO_DETALLE, --:b_detalle.porc_recargo',
'                                       P_C016 => CC.C016, --:b_detalle.cod_iva ',
'                                       P_C017 => :P193_AUX_NRO_PROMO, -- :b_detalle.nro_promo',
'                                       P_C018 => :P193_AUX_TOTAL_IVA, -- :b_detalle.total_iva ',
'                                       P_C019 => CC.C019, -- :b_detalle.ser_pedido ',
'                                       P_C020 => CC.C020, --  :b_detalle.nro_pedido',
'                                       P_C021 => :P193_AUX_RECARGO,',
'                                       P_C022 => :P193_AUX_DESCUENTO,',
'                                       P_C023 => :P193_AUX_PORC_DESCUENTO_ANT,',
'                                       P_C024 => CC.C024, ',
'                                       P_C025 => CC.C025, ',
'                                       P_C026 => CC.C026,',
'                                       P_C027 => :P193_AUX_MONTO_TOTAL,  ',
'                                       P_C028 => :P193_AUX_MONTO_EXENTA,',
'                                       P_C029 => :P193_AUX_MONTO_GRAVADA_10,',
'                                       P_C030 => :P193_AUX_MONTO_GRAVADA_5,',
'                                       P_C031 => :P193_AUX_CANTIDAD_UB,',
'                                       P_C032 => :P193_AUX_PORC_IVA_AD,',
'                                       P_C033 => CC.C033,',
'                                       P_C034 => :P193_AUX_COD_ARTICULO_REL_BON, --:b_detalle.cod_articulo_rel_bon   ',
'                                       P_C035 => :P193_AUX_DESCUENTO_MAXIMO, --:b_detalle.descuento_maximo                 ',
'                                       P_C036 => :P193_AUX_PORC_RECARGO_ANT);',
'    END LOOP;',
'    :P193_RECARGO_DET := :P193_AUX_RECARGO;',
'    :P193_DESCUENTO_DET := :P193_AUX_DESCUENTO; ',
'EXCEPTION',
'    WHEN OTHERS THEN    ',
'        RAISE_APPLICATION_ERROR(-20000, ''Ha ocurrido un error al guardar el detalle.'');',
'END;                                           ',
''))
,p_attribute_02=>'P193_AUX_ABRE_DETALLE,P193_AUX_ABRE_DETALLE,P193_AUX_IMPORTE_ANT,P193_AUX_IVA_ANT,P193_COD_ARTICULO_DETALLE,P193_LOTE,P193_CANTIDAD,P193_AUX_CANT_VENDIDA,P193_PRECIO_UNITARIO, P193_AUX_PORC_DESCUENTO_ANT,P193_AUX_MONTO_TOTAL,P193_AUX_MONTO_EXENTA,P19'
||'3_AUX_MONTO_GRAVADA_10,P193_AUX_MONTO_GRAVADA_5,P193_AUX_CANTIDAD_UB, P193_AUX_PORC_IVA_AD,P193_AUX_COD_ARTICULO_REL_BON,P193_AUX_DESCUENTO_MAXIMO,P193_AUX_PORC_RECARGO_ANT'
,p_attribute_03=>'P193_DESCUENTO_DET,P193_RECARGO_DET'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(42506290172173120)
,p_event_id=>wwv_flow_imp.id(42504207596173119)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(58985622791839859)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(42506779343173120)
,p_event_id=>wwv_flow_imp.id(42504207596173119)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.message.showPageSuccess(''Los cambios se guardaron correctamente.'');'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(42507197844173120)
,p_name=>'DA_CERRAR_DETALLE'
,p_event_sequence=>250
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(42387012407173059)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(42507674207173120)
,p_event_id=>wwv_flow_imp.id(42507197844173120)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(59943840007975386)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(42491350136173114)
,p_name=>'DA_COD_ARTICULO'
,p_event_sequence=>260
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P193_COD_ARTICULO_DETALLE'
,p_condition_element=>'P193_COD_ARTICULO_DETALLE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(42492387857173114)
,p_event_id=>wwv_flow_imp.id(42491350136173114)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    VARTICULO VARCHAR(100);',
'BEGIN',
'    SELECT C003',
'      INTO VARTICULO',
'      FROM APEX_COLLECTIONS',
'     WHERE COLLECTION_NAME = ''DET_COM''',
'       AND SEQ_ID = :P193_AUX_ABRE_DETALLE; ',
'    IF :P193_COD_ARTICULO_DETALLE != NVL(VARTICULO,'''') THEN',
'        :P193_AUX_COD_IVA := VTCONFAC.busca_cod_iva(:P193_COD_EMPRESA_VAR,:P193_COD_ARTICULO_DETALLE);        ',
'        DECLARE',
'            VDESC_ARTICULO VARCHAR(200);',
'            VCOD_GRUPO_ART VARCHAR(5);',
'        BEGIN',
'            FOR CC IN (SELECT C001,C002,C003,C004,C005,C006,C007,C008,C010,C011,C012,C013,C014,C015,C016,C017,C018,C019,C020,C021,C022,C023,C024,C025,C026,C027,C028,C029,C030,C031,C032,C033,C034,C035,C036  ',
'                         FROM APEX_COLLECTIONS',
'                        WHERE COLLECTION_NAME = ''DET_COM''',
'                          AND SEQ_ID = :P193_AUX_ABRE_DETALLE)',
'            LOOP',
'                Begin',
'                    select descripcion, cod_grupo_art--, cod_moneda_base',
'                      into VDESC_ARTICULO, VCOD_GRUPO_ART--, vcod_moneda_base',
'                      from st_articulos',
'                     where cod_empresa = :P193_COD_EMPRESA_VAR',
'                       and cod_articulo = :P193_COD_ARTICULO_DETALLE;',
'               exception',
'                  when others then',
'                      VDESC_ARTICULO := NULL;      ',
'                      VCOD_GRUPO_ART := NULL;      ',
'               end;',
'                APEX_COLLECTION.UPDATE_MEMBER(P_COLLECTION_NAME => ''DET_COM'',P_SEQ  => :P193_AUX_ABRE_DETALLE,P_C001 => :P193_AUX_IMPORTE_ANT, ',
'                                               P_C002 => :P193_AUX_IVA_ANT,P_C003 => :P193_COD_ARTICULO_DETALLE, P_C004 => CC.C004, P_C005 => CC.C005,',
'                                               P_C006 => :P193_LOTE, P_C007 => :P193_CANTIDAD,P_C008 => :P193_AUX_CANT_VENDIDA, ',
'                                               P_C010 => :P193_PRECIO_UNITARIO, P_C011 => :P193_AUX_PORC_IVA,P_C012 => :P193_AUX_IND_RENTA, ',
'                                               P_C013 => CC.C013, P_C014 => :P193_PORC_DESCUENTO_DETALLE,P_C015 => :P193_PORC_RECARGO_DETALLE,P_C016 => CC.C016,',
'                                               P_C017 => :P193_AUX_NRO_PROMO,P_C018 => :P193_AUX_TOTAL_IVA, P_C019 => CC.C019, P_C020 => CC.C020, ',
'                                               P_C021 => :P193_AUX_RECARGO,P_C022 => :P193_AUX_DESCUENTO,P_C023 => :P193_AUX_PORC_DESCUENTO_ANT,P_C024 => VDESC_ARTICULO, P_C025 => VCOD_GRUPO_ART, P_C026 => CC.C026,',
'                                               P_C027 => :P193_AUX_MONTO_TOTAL,  P_C028 => :P193_AUX_MONTO_EXENTA,P_C029 => :P193_AUX_MONTO_GRAVADA_10,P_C030 => :P193_AUX_MONTO_GRAVADA_5,',
'                                               P_C031 => :P193_AUX_CANTIDAD_UB,P_C032 => :P193_AUX_PORC_IVA_AD,P_C033 => CC.C033,',
'                                               P_C034 => :P193_AUX_COD_ARTICULO_REL_BON,P_C035 => :P193_AUX_DESCUENTO_MAXIMO,P_C036 => :P193_AUX_PORC_RECARGO_ANT);',
'                END LOOP;',
'                :P193_RECARGO_DET := :P193_AUX_RECARGO;',
'                :P193_DESCUENTO_DET := :P193_AUX_DESCUENTO; ',
'            EXCEPTION',
'                WHEN OTHERS THEN    ',
'                    RAISE_APPLICATION_ERROR(-20000, ''Ha ocurrido un error al guardar el detalle.'');',
'            END;                                              ',
'    END IF;',
'END;                                                    '))
,p_attribute_02=>'P193_AUX_ABRE_DETALLE,P193_COD_EMPRESA_VAR,P193_COD_ARTICULO_DETALLE,P193_AUX_IMPORTE_ANT,P193_AUX_IVA_ANT,P193_LOTE,P193_CANTIDAD,P193_AUX_CANT_VENDIDA, P193_PRECIO_UNITARIO, P193_AUX_PORC_DESCUENTO_ANT,P193_AUX_MONTO_TOTAL,P193_AUX_MONTO_EXENTA,P19'
||'3_AUX_MONTO_GRAVADA_10,P193_AUX_MONTO_GRAVADA_5,P193_AUX_CANTIDAD_UB, P193_AUX_PORC_IVA_AD,P193_AUX_COD_ARTICULO_REL_BON, P193_AUX_DESCUENTO_MAXIMO,P193_AUX_PORC_RECARGO_ANT,P193_AUX_PORC_IVA,P193_AUX_IND_RENTA,P193_PORC_DESCUENTO_DETALLE,P193_PORC_R'
||'ECARGO_DETALLE,P193_AUX_NRO_PROMO,P193_AUX_TOTAL_IVA,P193_AUX_RECARGO,P193_AUX_DESCUENTO'
,p_attribute_03=>'P193_AUX_COD_IVA,P193_DESCUENTO_DET,P193_RECARGO_DET'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(42491835934173114)
,p_event_id=>wwv_flow_imp.id(42491350136173114)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(58985622791839859)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(42496333662173116)
,p_name=>'DA_LOTE'
,p_event_sequence=>270
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P193_LOTE'
,p_condition_element=>'P193_LOTE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(42497803110173116)
,p_event_id=>wwv_flow_imp.id(42496333662173116)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    VLOTE VARCHAR(100);',
'BEGIN',
'    SELECT C006',
'      INTO VLOTE',
'      FROM APEX_COLLECTIONS',
'     WHERE COLLECTION_NAME = ''DET_COM''',
'       AND SEQ_ID = :P193_AUX_ABRE_DETALLE; ',
'    IF NVL(:P193_LOTE,0) != NVL(VLOTE,0) THEN',
'        BEGIN',
'            VTCONFAC.ver_lote(:P193_COD_EMPRESA_VAR,:P193_COD_ARTICULO_DETALLE,:P193_LOTE,:P193_COD_SUCURSAL); ',
'            VTCONFAC.ver_iva(:P193_COD_EMPRESA_VAR,:P193_COD_ARTICULO_DETALLE,:P193_LOTE,:P193_COD_SUCURSAL,:P193_AUX_COD_IVA,:P193_AUX_PORC_IVA,:P193_FEC_COMPROBANTE,:P193_AUX_IND_RENTA,:P193_IND_EXENTO_AD,:P193_TIPO_IMPUESTO,:P193_CALCULA_IVA); ',
'        EXCEPTION',
'            WHEN OTHERS THEN',
'                NULL;                          ',
'        END;',
'        BEGIN',
'            VTCONFAC.CALCULOS (P_MULT => :P193_MULT, P_DIV  => :P193_DIV, P_DECIMALES => :P193_DECIMALES, P_RECARGO_VARIABLES => :P193_RECARGO_VAR, --IN',
'                                   P_IVA_PARCIAL_IN => :P193_IVA_PARCIAL, P_IVA_PARCIAL_OUT => :P193_IVA_PARCIAL, P_IVA_ANT_IN => :P193_AUX_IVA_ANT, --IN',
'                                   P_IVA_ANT_OUT => :P193_AUX_IVA_ANT,P_SUBTOTAL_PARCIAL_IN => :P193_SUBTOTAL_PARCIAL,P_SUBTOTAL_PARCIAL_OUT => :P193_SUBTOTAL_PARCIAL,',
'                                   P_GRAVADAS_PARCIAL_IN => :P193_GRAVADAS_PARCIAL,P_GRAVADAS_PARCIAL_OUT => :P193_GRAVADAS_PARCIAL,P_EXENTAS_PARCIAL_IN => :P193_EXENTAS_PARCIAL,',
'                                   P_EXENTAS_PARCIAL_OUT => :P193_EXENTAS_PARCIAL,',
'                                   P_PORCENTAJE_DESCUENTO => :P193_PORCENTAJE_DESCUENTO,',
'                                   P_DESCUENTO_CABECERA => :P193_DESCUENTO, --IN',
'                                   P_TOTAL_IVA_CABECERA => :P193_TOTAL_IVA,',
'                                   P_AJUSTE_IVA_CABECERA => :P193_AJUSTE_IVA,',
'                                   P_SUBTOTAL_CABECERA => :P193_SUBTOTAL,',
'                                   P_GRAVADAS_CABECERA => :P193_GRAVADAS,',
'                                   P_RECARGO_DET => :P193_AUX_RECARGO, --IN',
'                                   P_RECARGO_CABECERA => :P193_RECARGO, --IN',
'                                   P_EXENTAS_CABECERA => :P193_EXENTAS,',
'                                   P_RECARGO_PORC_CABECERA => :P193_RECARGO_PORC,',
'                                   P_TOTAL_CABECERA => :P193_TOTAL,--P_TOTAL,',
'                                   P_PRECIO_UNITARIO => :P193_PRECIO_UNITARIO, --IN',
'                                   P_PORC_IVA => :P193_AUX_PORC_IVA, --IN',
'                                   P_PORC_IVA_AD => :P193_AUX_PORC_IVA_AD, --IN',
'                                   P_PORC_DESCUENTO => :P193_PORC_DESCUENTO_DETALLE, --IN',
'                                   P_PORC_RECARGO => :P193_PORC_RECARGO_DETALLE, --IN',
'                                   P_CANTIDAD => :P193_CANTIDAD, --IN',
'                                   P_DESCUENTO => :P193_AUX_DESCUENTO, --IN',
'                                   P_COD_ARTICULO => :P193_COD_ARTICULO_DETALLE,--IN',
'                                   P_TOTAL_IVA_IN => :P193_AUX_TOTAL_IVA,--IN',
'                                   P_TOTAL_IVA_OUT => :P193_AUX_TOTAL_IVA,',
'                                   P_IMPORTE_ANT_IN => :P193_AUX_IMPORTE_ANT, --IN',
'                                   P_IMPORTE_ANT_OUT => :P193_AUX_IMPORTE_ANT,',
'                                   P_MONTO_TOTAL => :P193_AUX_MONTO_TOTAL,',
'                                   P_MONTO_EXENTA => :P193_AUX_MONTO_EXENTA, ',
'                                   P_MONTO_GRAVADA_10 => :P193_AUX_MONTO_GRAVADA_10,',
'                                   P_MONTO_GRAVADA_5 => :P193_AUX_MONTO_GRAVADA_5,',
'                                   P_CANTIDAD_UB=> :P193_AUX_CANTIDAD_UB);',
'        END;',
'    END IF;',
'END;    '))
,p_attribute_02=>'P193_AUX_ABRE_DETALLE,P193_SUBTOTAL_PARCIAL,P193_COD_EMPRESA_VAR,P193_COD_ARTICULO_DETALLE,P193_LOTE,P193_COD_SUCURSAL,P193_FEC_COMPROBANTE, P193_IND_EXENTO_AD,P193_TIPO_IMPUESTO,P193_CALCULA_IVA,  P193_MULT,P193_DIV,P193_DECIMALES,P193_RECARGO_VAR,P'
||'193_AUX_IVA_ANT, P193_DESCUENTO,P193_AUX_RECARGO,P193_RECARGO,P193_PRECIO_UNITARIO,P193_AUX_PORC_IVA,P193_AUX_PORC_IVA_AD P193_PORC_DESCUENTO_DETALLE, P193_EXENTAS_PARCIAL, P193_PORC_RECARGO_DETALLE,P193_CANTIDAD,P193_AUX_DESCUENTO,P193_AUX_TOTAL_IVA'
||',P193_AUX_IMPORTE_ANT,P193_IVA_PARCIAL,P193_GRAVADAS_PARCIAL'
,p_attribute_03=>'P193_AUX_COD_IVA,P193_AUX_PORC_IVA,P193_AUX_IND_RENTA,P193_AUX_CANTIDAD_UB, P193_AUX_MONTO_GRAVADA_5,P193_AUX_MONTO_GRAVADA_10,P193_AUX_MONTO_EXENTA, P193_AUX_MONTO_EXENTA,P193_AUX_MONTO_TOTAL,  P193_AUX_IMPORTE_ANT,P193_AUX_TOTAL_IVA, P193_TOTAL,P19'
||'3_RECARGO_PORC,P193_EXENTAS,P193_GRAVADAS,P193_SUBTOTAL, P193_AJUSTE_IVA,P193_TOTAL_IVA, P193_PORCENTAJE_DESCUENTO, P193_EXENTAS_PARCIAL, P193_GRAVADAS_PARCIAL,P193_SUBTOTAL_PARCIAL,P193_AUX_IVA_ANT,P193_IVA_PARCIAL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(42496895235173116)
,p_event_id=>wwv_flow_imp.id(42496333662173116)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    VLOTE VARCHAR(100);',
'BEGIN',
'    SELECT C006',
'      INTO VLOTE',
'      FROM APEX_COLLECTIONS',
'     WHERE COLLECTION_NAME = ''DET_COM''',
'       AND SEQ_ID = :P193_AUX_ABRE_DETALLE; ',
'    IF NVL(:P193_LOTE,0) != NVL(VLOTE,0) THEN',
'        BEGIN',
'            FOR CC IN (SELECT C001,C002,C003,C004,C005,C006,C007,C008,C010,C011,C012,C013,C014,C015,C016,C017,C018,C019,C020,C021,C022,C023,C024,C025,C026,C027,C028,C029, ',
'                              C030,C031,C032,C033,C034,C035,C036  ',
'                         FROM APEX_COLLECTIONS',
'                        WHERE COLLECTION_NAME = ''DET_COM''',
'                          AND SEQ_ID = :P193_AUX_ABRE_DETALLE)',
'            LOOP',
'                APEX_COLLECTION.UPDATE_MEMBER(P_COLLECTION_NAME => ''DET_COM'',',
'                                               P_SEQ  => :P193_AUX_ABRE_DETALLE,P_C001 => :P193_AUX_IMPORTE_ANT, P_C002 => :P193_AUX_IVA_ANT,   P_C003 => :P193_COD_ARTICULO_DETALLE, ',
'                                               P_C004 => CC.C004, P_C005 => CC.C005, P_C006 => :P193_LOTE,P_C007 => :P193_CANTIDAD,P_C008 => :P193_AUX_CANT_VENDIDA, ',
'                                               P_C010 => :P193_PRECIO_UNITARIO, P_C011 => :P193_AUX_PORC_IVA, --:b_detalle.porc_iva',
'                                               P_C012 => :P193_AUX_IND_RENTA, --:b_detalle.ind_renta ',
'                                               P_C013 => CC.C013, -- :b_detalle.precio_lista',
'                                               P_C014 => :P193_PORC_DESCUENTO_DETALLE, --:b_detalle.porc_descuento',
'                                               P_C015 => :P193_PORC_RECARGO_DETALLE, --:b_detalle.porc_recargo',
'                                               P_C016 => CC.C016, --:b_detalle.cod_iva ',
'                                               P_C017 => :P193_AUX_NRO_PROMO, -- :b_detalle.nro_promo',
'                                               P_C018 => :P193_AUX_TOTAL_IVA, -- :b_detalle.total_iva ',
'                                               P_C019 => CC.C019, -- :b_detalle.ser_pedido ',
'                                               P_C020 => CC.C020, --  :b_detalle.nro_pedido',
'                                               P_C021 => :P193_AUX_RECARGO,P_C022 => :P193_AUX_DESCUENTO,P_C023 => :P193_AUX_PORC_DESCUENTO_ANT,',
'                                               P_C024 => CC.C024, P_C025 => CC.C025, P_C026 => CC.C026,P_C027 => :P193_AUX_MONTO_TOTAL,P_C028 => :P193_AUX_MONTO_EXENTA,',
'                                               P_C029 => :P193_AUX_MONTO_GRAVADA_10,P_C030 => :P193_AUX_MONTO_GRAVADA_5,P_C031 => :P193_AUX_CANTIDAD_UB,',
'                                               P_C032 => :P193_AUX_PORC_IVA_AD,P_C033 => CC.C033,P_C034 => :P193_AUX_COD_ARTICULO_REL_BON, --:b_detalle.cod_articulo_rel_bon   ',
'                                               P_C035 => :P193_AUX_DESCUENTO_MAXIMO, --:b_detalle.descuento_maximo                 ',
'                                               P_C036 => :P193_AUX_PORC_RECARGO_ANT);',
'            END LOOP;',
'            :P193_RECARGO_DET := :P193_AUX_RECARGO;',
'            :P193_DESCUENTO_DET := :P193_AUX_DESCUENTO; ',
'        EXCEPTION',
'            WHEN OTHERS THEN    ',
'                RAISE_APPLICATION_ERROR(-20000, ''Ha ocurrido un error al guardar el detalle.'');',
'        END; ',
'    END IF;',
'END;                                                  ',
''))
,p_attribute_02=>'P193_AUX_ABRE_DETALLE,P193_AUX_IMPORTE_ANT,P193_AUX_IVA_ANT,P193_COD_ARTICULO_DETALLE,P193_LOTE,P193_CANTIDAD,P193_AUX_CANT_VENDIDA,P193_PRECIO_UNITARIO, P193_AUX_PORC_DESCUENTO_ANT,P193_AUX_MONTO_TOTAL, P193_AUX_MONTO_EXENTA,P193_AUX_MONTO_GRAVADA_1'
||'0,P193_AUX_MONTO_GRAVADA_5,P193_AUX_CANTIDAD_UB, P193_AUX_PORC_IVA_AD,P193_AUX_COD_ARTICULO_REL_BON,P193_AUX_DESCUENTO_MAXIMO,P193_AUX_PORC_RECARGO_ANT, P193_AUX_PORC_IVA,P193_AUX_IND_RENTA,P193_PORC_DESCUENTO_DETALLE,P193_PORC_RECARGO_DETALLE,P193_A'
||'UX_NRO_PROMO,P193_AUX_TOTAL_IVA,P193_AUX_RECARGO,P193_AUX_DESCUENTO'
,p_attribute_03=>'P193_DESCUENTO_DET,P193_RECARGO_DET'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(42497340500173116)
,p_event_id=>wwv_flow_imp.id(42496333662173116)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(58985622791839859)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(42508016701173120)
,p_name=>'DA_CANTIDAD'
,p_event_sequence=>280
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P193_CANTIDAD'
,p_condition_element=>'P193_CANTIDAD'
,p_triggering_condition_type=>'GREATER_THAN'
,p_triggering_expression=>'0'
,p_bind_type=>'bind'
,p_bind_event_type=>'focusout'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(42511067054173121)
,p_event_id=>wwv_flow_imp.id(42508016701173120)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'Debe ingresar la cantidad.'
,p_attribute_02=>'Error'
,p_attribute_03=>'warning'
,p_attribute_04=>'fa-warning'
,p_attribute_06=>'Aceptar'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P193_AUX_MSJ'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(42510599534173121)
,p_event_id=>wwv_flow_imp.id(42508016701173120)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P193_AUX_MSJ := NULL;',
'IF TO_NUMBER(:P193_CANTIDAD) > TO_NUMBER(:P193_AUX_CANT_VENDIDA) THEN',
'    :P193_AUX_MSJ :=''Cantidad es mayor a la cantidad vendida'';',
'    :P193_CANTIDAD := :P193_AUX_CANTIDAD_ANT;',
'END IF;    '))
,p_attribute_02=>'P193_AUX_CANTIDAD_ANT,P193_CANTIDAD,P193_AUX_CANT_VENDIDA'
,p_attribute_03=>'P193_CANTIDAD,P193_AUX_MSJ'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(42510062946173121)
,p_event_id=>wwv_flow_imp.id(42508016701173120)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P193_AUX_MSJ.'
,p_attribute_02=>'Error'
,p_attribute_03=>'warning'
,p_attribute_04=>'fa-warning'
,p_attribute_06=>'Aceptar'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P193_AUX_MSJ'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(42509569646173121)
,p_event_id=>wwv_flow_imp.id(42508016701173120)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    VCANTIDAD NUMBER;',
'BEGIN',
'    SELECT C007',
'      INTO VCANTIDAD',
'      FROM APEX_COLLECTIONS',
'     WHERE COLLECTION_NAME = ''DET_COM''',
'       AND SEQ_ID = :P193_AUX_ABRE_DETALLE; ',
'    IF NVL(:P193_CANTIDAD,0) != NVL(VCANTIDAD,0) THEN',
'        BEGIN',
'           VTCONFAC.valida_cantidad(:P193_COD_ARTICULO_DETALLE,:P193_CANTIDAD,:P193_TIP_COMPROBANTE_REF,:P193_SER_COMPROBANTE_REF,:P193_NRO_COMPROBANTE_REF,:P193_COD_EMPRESA_VAR); ',
'            IF :P193_CARGA_ITEMS <> ''S'' THEN ',
'                :P193_AUX_PORC_DESCUENTO_ANT := TO_NUMBER(:P193_PORC_DESCUENTO_DETALLE) - 1 ;',
'               VTCONFAC.calcula_descuento( :P193_AUX_PORC_DESCUENTO_ANT, :P193_PORC_DESCUENTO_DETALLE,:P193_CANTIDAD,:P193_PRECIO_UNITARIO,:P193_DECIMALES,:P193_AUX_DESCUENTO,:P193_PORC_RECARGO_DETALLE,:P193_AUX_DESCUENTO,:P193_AUX_PORC_DESCUENTO_ANT'
||',:P193_AUX_RECARGO); ',
'               VTCONFAC.calcula_recargo(:P193_AUX_PORC_RECARGO_ANT,:P193_PORC_RECARGO_DETALLE,:P193_CANTIDAD,:P193_PRECIO_UNITARIO,:P193_DECIMALES,:P193_AUX_DESCUENTO,:P193_AUX_PORC_DESCUENTO_ANT,:P193_AUX_RECARGO,:P193_AUX_RECARGO);    ',
'               VTCONFAC.CALCULOS (:P193_MULT,:P193_DIV,:P193_DECIMALES,:P193_RECARGO_VAR,:P193_IVA_PARCIAL,:P193_IVA_PARCIAL,:P193_AUX_IVA_ANT,:P193_AUX_IVA_ANT,',
'                                   :P193_SUBTOTAL_PARCIAL,:P193_SUBTOTAL_PARCIAL,:P193_GRAVADAS_PARCIAL,:P193_GRAVADAS_PARCIAL,:P193_EXENTAS_PARCIAL,',
'                                   :P193_EXENTAS_PARCIAL,:P193_PORCENTAJE_DESCUENTO,:P193_DESCUENTO,:P193_TOTAL_IVA,:P193_AJUSTE_IVA,:P193_SUBTOTAL,:P193_GRAVADAS,',
'                                   :P193_AUX_RECARGO,:P193_RECARGO,:P193_EXENTAS,:P193_RECARGO_PORC,:P193_TOTAL,:P193_PRECIO_UNITARIO,:P193_AUX_PORC_IVA, ',
'                                   :P193_AUX_PORC_IVA_AD,:P193_PORC_DESCUENTO_DETALLE,:P193_PORC_RECARGO_DETALLE,:P193_CANTIDAD,:P193_AUX_DESCUENTO, ',
'                                   :P193_COD_ARTICULO_DETALLE,:P193_AUX_TOTAL_IVA,:P193_AUX_TOTAL_IVA,:P193_AUX_IMPORTE_ANT,:P193_AUX_IMPORTE_ANT,',
'                                   :P193_AUX_MONTO_TOTAL,:P193_AUX_MONTO_EXENTA, :P193_AUX_MONTO_GRAVADA_10,:P193_AUX_MONTO_GRAVADA_5,:P193_AUX_CANTIDAD_UB);',
'            END IF;  ',
'        EXCEPTION',
'            WHEN OTHERS THEN',
'                NULL;',
'        END; ',
'    END IF;',
'END;                                              ',
'',
'',
''))
,p_attribute_02=>'P193_AUX_ABRE_DETALLE,P193_AUX_PORC_RECARGO_ANT,P193_AUX_RECARGO,P193_AUX_PORC_DESCUENTO_ANT,P193_PORC_DESCUENTO_DETALLE,P193_CARGA_ITEMS,P193_TIP_COMPROBANTE_REF, P193_SER_COMPROBANTE_REF,P193_NRO_COMPROBANTE_REF,P193_COD_EMPRESA_VAR,P193_AUX_CANT_V'
||'ENDIDA, P193_MULT,P193_DIV,P193_DECIMALES,P193_RECARGO_VAR,P193_IVA_PARCIAL,P193_AUX_IVA_ANT,P193_SUBTOTAL_PARCIAL, P193_GRAVADAS_PARCIAL,P193_EXENTAS_PARCIAL,P193_DESCUENTO,P193_AUX_RECARGO,P193_RECARGO,P193_PRECIO_UNITARIO, P193_AUX_PORC_IVA,P193_A'
||'UX_PORC_IVA_AD,P193_PORC_RECARGO_DETALLE,P193_CANTIDAD,P193_AUX_DESCUENTO, P193_COD_ARTICULO_DETALLE,P193_AUX_TOTAL_IVA,P193_AUX_IMPORTE_ANT'
,p_attribute_03=>'P193_AUX_PORC_DESCUENTO_ANT,P193_AUX_DESCUENTO,P193_AUX_RECARGO,P193_AUX_PORC_RECARGO_ANT, P193_IVA_PARCIAL,P193_AUX_IVA_ANT,P193_SUBTOTAL_PARCIAL,P193_GRAVADAS_PARCIAL,P193_EXENTAS_PARCIAL,P193_PORCENTAJE_DESCUENTO,P193_TOTAL_IVA,P193_AJUSTE_IVA,P19'
||'3_SUBTOTAL,P193_GRAVADAS,P193_EXENTAS,P193_RECARGO_PORC,P193_TOTAL,P193_AUX_TOTAL_IVA,P193_AUX_IMPORTE_ANT,P193_AUX_MONTO_TOTAL,P193_AUX_MONTO_EXENTA,P193_AUX_MONTO_GRAVADA_10,P193_AUX_MONTO_GRAVADA_5,P193_AUX_CANTIDAD_UB'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P193_AUX_MSJ'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(42508509869173121)
,p_event_id=>wwv_flow_imp.id(42508016701173120)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    VCANTIDAD NUMBER;',
'BEGIN',
'    SELECT C007',
'      INTO VCANTIDAD',
'      FROM APEX_COLLECTIONS',
'     WHERE COLLECTION_NAME = ''DET_COM''',
'       AND SEQ_ID = :P193_AUX_ABRE_DETALLE; ',
'    IF NVL(:P193_CANTIDAD,0) != NVL(VCANTIDAD,0) THEN    ',
'        BEGIN',
'            FOR CC IN (SELECT C001,C002,C003,C004,C005,C006,C007,C008,C010,C011,C012,C013,C014,C015,C016,C017,C018,C019,C020,C021,C022,C023,C024,C025,C026,C027,C028,C029, ',
'                              C030,C031,C032,C033,C034,C035,C036  ',
'                         FROM APEX_COLLECTIONS',
'                        WHERE COLLECTION_NAME = ''DET_COM''',
'                          AND SEQ_ID = :P193_AUX_ABRE_DETALLE)',
'            LOOP',
'                APEX_COLLECTION.UPDATE_MEMBER(P_COLLECTION_NAME => ''DET_COM'',P_SEQ  => :P193_AUX_ABRE_DETALLE,',
'                                               P_C001 => :P193_AUX_IMPORTE_ANT,   P_C002 => :P193_AUX_IVA_ANT,P_C003 => :P193_COD_ARTICULO_DETALLE,',
'                                               P_C004 => CC.C004, -- :b_detalle.costo_promedio',
'                                               P_C005 => CC.C005, -- :b_detalle.costo_promedio_ref',
'                                               P_C006 => :P193_LOTE, --:b_detalle.nro_lote',
'                                               P_C007 => :P193_CANTIDAD, --b_detalle.cantidad  ',
'                                               P_C008 => :P193_AUX_CANT_VENDIDA, -- b_detalle.cantidad_vendida',
'                                               P_C010 => :P193_PRECIO_UNITARIO, --:b_detalle.precio_unitario',
'                                               P_C011 => :P193_AUX_PORC_IVA, --:b_detalle.porc_iva',
'                                               P_C012 => :P193_AUX_IND_RENTA, --:b_detalle.ind_renta ',
'                                               P_C013 => CC.C013, -- :b_detalle.precio_lista',
'                                               P_C014 => :P193_PORC_DESCUENTO_DETALLE, --:b_detalle.porc_descuento',
'                                               P_C015 => :P193_PORC_RECARGO_DETALLE, --:b_detalle.porc_recargo',
'                                               P_C016 => CC.C016, --:b_detalle.cod_iva ',
'                                               P_C017 => :P193_AUX_NRO_PROMO, -- :b_detalle.nro_promo',
'                                               P_C018 => :P193_AUX_TOTAL_IVA, -- :b_detalle.total_iva ',
'                                               P_C019 => CC.C019, -- :b_detalle.ser_pedido ',
'                                               P_C020 => CC.C020, --  :b_detalle.nro_pedido',
'                                               P_C021 => :P193_AUX_RECARGO,P_C022 => :P193_AUX_DESCUENTO,P_C023 => :P193_AUX_PORC_DESCUENTO_ANT,P_C024 => CC.C024, P_C025 => CC.C025, ',
'                                               P_C026 => CC.C026,P_C027 => :P193_AUX_MONTO_TOTAL,P_C028 => :P193_AUX_MONTO_EXENTA,P_C029 => :P193_AUX_MONTO_GRAVADA_10,',
'                                               P_C030 => :P193_AUX_MONTO_GRAVADA_5,P_C031 => :P193_AUX_CANTIDAD_UB,P_C032 => :P193_AUX_PORC_IVA_AD,P_C033 => CC.C033,',
'                                               P_C034 => :P193_AUX_COD_ARTICULO_REL_BON, --:b_detalle.cod_articulo_rel_bon   ',
'                                               P_C035 => :P193_AUX_DESCUENTO_MAXIMO, --:b_detalle.descuento_maximo                 ',
'                                               P_C036 => :P193_AUX_PORC_RECARGO_ANT);',
'            END LOOP;',
'            :P193_RECARGO_DET := :P193_AUX_RECARGO;',
'            :P193_DESCUENTO_DET := :P193_AUX_DESCUENTO; ',
'        EXCEPTION',
'            WHEN OTHERS THEN    ',
'                RAISE_APPLICATION_ERROR(-20000, ''Ha ocurrido un error al guardar el detalle.'');',
'        END; ',
'    END IF;',
'END;',
'',
''))
,p_attribute_02=>'P193_AUX_ABRE_DETALLE,P193_AUX_IMPORTE_ANT,P193_AUX_IVA_ANT,P193_COD_ARTICULO_DETALLE,P193_LOTE,P193_CANTIDAD,P193_AUX_CANT_VENDIDA,P193_PRECIO_UNITARIO, P193_AUX_PORC_DESCUENTO_ANT,P193_AUX_MONTO_TOTAL, P193_AUX_MONTO_EXENTA,P193_AUX_MONTO_GRAVADA_1'
||'0,P193_AUX_MONTO_GRAVADA_5,P193_AUX_CANTIDAD_UB, P193_AUX_PORC_IVA_AD,P193_AUX_COD_ARTICULO_REL_BON,P193_AUX_DESCUENTO_MAXIMO,P193_AUX_PORC_RECARGO_ANT, P193_AUX_PORC_IVA,P193_AUX_IND_RENTA,P193_PORC_DESCUENTO_DETALLE,P193_PORC_RECARGO_DETALLE,P193_A'
||'UX_NRO_PROMO,P193_AUX_TOTAL_IVA,P193_AUX_RECARGO,P193_AUX_DESCUENTO'
,p_attribute_03=>'P193_DESCUENTO_DET,P193_RECARGO_DET'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P193_AUX_MSJ'
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
 p_id=>wwv_flow_imp.id(42509081674173121)
,p_event_id=>wwv_flow_imp.id(42508016701173120)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(58985622791839859)
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P193_AUX_MSJ'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(42498250398173116)
,p_name=>'DA_PORC_DESCUENTO_DETALLE'
,p_event_sequence=>290
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P193_PORC_DESCUENTO_DETALLE'
,p_bind_type=>'bind'
,p_bind_event_type=>'focusout'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(42500219026173118)
,p_event_id=>wwv_flow_imp.id(42498250398173116)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'--POST-TEXT',
'DECLARE',
'    VPORC_DESCUENTO NUMBER;',
'BEGIN',
'    SELECT C014',
'      INTO VPORC_DESCUENTO',
'      FROM APEX_COLLECTIONS',
'     WHERE COLLECTION_NAME = ''DET_COM''',
'       AND SEQ_ID = :P193_AUX_ABRE_DETALLE; ',
'    IF NVL(:P193_PORC_DESCUENTO_DETALLE,0) != NVL(VPORC_DESCUENTO,0) THEN',
'        BEGIN',
'            :P193_AUX_MSJ := NULL;',
'            IF nvl(TO_NUMBER(:P193_PORC_DESCUENTO_DETALLE),0) < 0 then',
'                :P193_AUX_MSJ := ''El porcentaje de descuento no puede ser negativo.'';',
'            END IF;',
'            IF :P193_SUPERA_DESCUENTO = ''N'' THEN',
'                IF :P193_AUX_COD_ARTICULO_REL_BON IS NULL AND NVL(TO_NUMBER(:P193_PORC_DESCUENTO_DETALLE), 0) > nvl( TO_NUMBER(:P193_AUX_DESCUENTO_MAXIMO), 0 ) THEN',
unistr('                    :P193_AUX_MSJ := ''El porcentaje de descuento m\00E1ximo es '' ||to_char( nvl( :P193_AUX_DESCUENTO_MAXIMO, 0 ) );'),
'                END IF;',
'            END IF; ',
'            IF nvl( :P193_AUX_PORC_DESCUENTO_ANT, 0 ) <> nvl( :P193_PORC_DESCUENTO_DETALLE, 0 ) THEN',
'                :P193_AUX_DESCUENTO := round( ( nvl( :P193_CANTIDAD, 0 ) *',
'                                             ( nvl( :P193_PRECIO_UNITARIO, 0 ) ) *',
'                                             ( nvl( :P193_PORC_DESCUENTO_DETALLE, 0 ) / 100 ) ),',
'                                               nvl( :P193_DECIMALES, 0 ) );',
'                APEX_DEBUG.ERROR(''P193_AUX_DESCUENTO ''|| :P193_AUX_DESCUENTO);                               ',
'                :P193_AUX_PORC_DESCUENTO_ANT := :P193_PORC_DESCUENTO_DETALLE;                               ',
'            END IF;',
'            VTCONFAC.CALCULOS (:P193_MULT,:P193_DIV,:P193_DECIMALES,:P193_RECARGO_VAR,:P193_IVA_PARCIAL,:P193_IVA_PARCIAL,:P193_AUX_IVA_ANT,:P193_AUX_IVA_ANT,',
'                               :P193_SUBTOTAL_PARCIAL,:P193_SUBTOTAL_PARCIAL,:P193_GRAVADAS_PARCIAL,:P193_GRAVADAS_PARCIAL,:P193_EXENTAS_PARCIAL,',
'                               :P193_EXENTAS_PARCIAL,:P193_PORCENTAJE_DESCUENTO,:P193_DESCUENTO,:P193_TOTAL_IVA,:P193_AJUSTE_IVA,:P193_SUBTOTAL,:P193_GRAVADAS,',
'                               :P193_AUX_RECARGO,:P193_RECARGO,:P193_EXENTAS,:P193_RECARGO_PORC,:P193_TOTAL,:P193_PRECIO_UNITARIO,:P193_AUX_PORC_IVA, ',
'                               :P193_AUX_PORC_IVA_AD,:P193_PORC_DESCUENTO_DETALLE,:P193_PORC_RECARGO_DETALLE,:P193_CANTIDAD,:P193_AUX_DESCUENTO, ',
'                               :P193_COD_ARTICULO_DETALLE,:P193_AUX_TOTAL_IVA,:P193_AUX_TOTAL_IVA,:P193_AUX_IMPORTE_ANT,:P193_AUX_IMPORTE_ANT,',
'                               :P193_AUX_MONTO_TOTAL,:P193_AUX_MONTO_EXENTA, :P193_AUX_MONTO_GRAVADA_10,:P193_AUX_MONTO_GRAVADA_5,:P193_AUX_CANTIDAD_UB);',
'        EXCEPTION',
'            WHEN OTHERS THEN',
'                RAISE_APPLICATION_ERROR(-20000, SQLERRM);',
'        END;',
'    END IF;',
'END;        ',
'',
'',
'',
'',
'',
''))
,p_attribute_02=>'P193_AUX_ABRE_DETALLE,P193_SUPERA_DESCUENTO,P193_AUX_COD_ARTICULO_REL_BON,P193_AUX_DESCUENTO_MAXIMO,P193_AUX_PORC_DESCUENTO_ANT, P193_MULT,P193_DIV,P193_DECIMALES,P193_RECARGO_VAR,P193_IVA_PARCIAL, P193_AUX_IVA_ANT,P193_SUBTOTAL_PARCIAL,P193_GRAVADAS'
||'_PARCIAL,P193_EXENTAS_PARCIAL,P193_DESCUENTO,P193_AUX_RECARGO,P193_RECARGO,P193_PRECIO_UNITARIO, P193_AUX_PORC_IVA,P193_AUX_PORC_IVA_AD,P193_PORC_DESCUENTO_DETALLE, P193_PORC_RECARGO_DETALLE,P193_CANTIDAD,P193_AUX_DESCUENTO,P193_COD_ARTICULO_DETALLE,'
||'P193_AUX_TOTAL_IVA,P193_AUX_IMPORTE_ANT'
,p_attribute_03=>'P193_AUX_PORC_DESCUENTO_ANT,P193_AUX_MSJ,P193_AUX_DESCUENTO,P193_IVA_PARCIAL,P193_AUX_IVA_ANT,P193_SUBTOTAL_PARCIAL,P193_GRAVADAS_PARCIAL,P193_EXENTAS_PARCIAL,P193_PORCENTAJE_DESCUENTO,P193_TOTAL_IVA,P193_AJUSTE_IVA,P193_SUBTOTAL,P193_GRAVADAS,P193_E'
||'XENTAS,P193_RECARGO_PORC,P193_TOTAL,P193_AUX_TOTAL_IVA,P193_AUX_IMPORTE_ANT,P193_AUX_MONTO_TOTAL,P193_AUX_MONTO_EXENTA,P193_AUX_MONTO_GRAVADA_10,P193_AUX_MONTO_GRAVADA_5,P193_AUX_CANTIDAD_UB'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(42499741631173117)
,p_event_id=>wwv_flow_imp.id(42498250398173116)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P193_AUX_MSJ.'
,p_attribute_02=>'Error'
,p_attribute_03=>'warning'
,p_attribute_04=>'fa-warning'
,p_attribute_06=>'Aceptar'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P193_AUX_MSJ'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(42498755078173117)
,p_event_id=>wwv_flow_imp.id(42498250398173116)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    VPORC_DESCUENTO NUMBER;',
'BEGIN',
'    SELECT C014',
'      INTO VPORC_DESCUENTO',
'      FROM APEX_COLLECTIONS',
'     WHERE COLLECTION_NAME = ''DET_COM''',
'       AND SEQ_ID = :P193_AUX_ABRE_DETALLE; ',
'    IF NVL(:P193_PORC_DESCUENTO_DETALLE,0) != NVL(VPORC_DESCUENTO,0) THEN',
'        BEGIN',
'            FOR CC IN (SELECT C001,C002,C003,C004,C005,C006,C007,C008,C010,C011,C012,C013,C014,C015,C016,C017,C018,C019,C020,C021,C022,C023,C024,C025,C026,C027,C028,C029, ',
'                              C030,C031,C032,C033,C034,C035,C036  ',
'                         FROM APEX_COLLECTIONS',
'                        WHERE COLLECTION_NAME = ''DET_COM''',
'                          AND SEQ_ID = :P193_AUX_ABRE_DETALLE)',
'            LOOP',
'                APEX_COLLECTION.UPDATE_MEMBER(P_COLLECTION_NAME => ''DET_COM'',P_SEQ  => :P193_AUX_ABRE_DETALLE,',
'                                               P_C001 => :P193_AUX_IMPORTE_ANT,   --:b_detalle.importe_ant ',
'                                               P_C002 => :P193_AUX_IVA_ANT,   --:b_detalle.iva_ant',
'                                               P_C003 => :P193_COD_ARTICULO_DETALLE, -- :b_detalle.cod_articulo',
'                                               P_C004 => CC.C004, -- :b_detalle.costo_promedio',
'                                               P_C005 => CC.C005, -- :b_detalle.costo_promedio_ref',
'                                               P_C006 => :P193_LOTE, --:b_detalle.nro_lote',
'                                               P_C007 => :P193_CANTIDAD, --b_detalle.cantidad  ',
'                                               P_C008 => :P193_AUX_CANT_VENDIDA, -- b_detalle.cantidad_vendida',
'                                               P_C010 => :P193_PRECIO_UNITARIO, --:b_detalle.precio_unitario',
'                                               P_C011 => :P193_AUX_PORC_IVA, --:b_detalle.porc_iva',
'                                               P_C012 => :P193_AUX_IND_RENTA, --:b_detalle.ind_renta ',
'                                               P_C013 => CC.C013, -- :b_detalle.precio_lista',
'                                               P_C014 => :P193_PORC_DESCUENTO_DETALLE, --:b_detalle.porc_descuento',
'                                               P_C015 => :P193_PORC_RECARGO_DETALLE, --:b_detalle.porc_recargo',
'                                               P_C016 => CC.C016, --:b_detalle.cod_iva ',
'                                               P_C017 => :P193_AUX_NRO_PROMO, -- :b_detalle.nro_promo',
'                                               P_C018 => :P193_AUX_TOTAL_IVA, -- :b_detalle.total_iva ',
'                                               P_C019 => CC.C019, -- :b_detalle.ser_pedido ',
'                                               P_C020 => CC.C020, --  :b_detalle.nro_pedido',
'                                               P_C021 => :P193_AUX_RECARGO,P_C022 => :P193_AUX_DESCUENTO,P_C023 => :P193_AUX_PORC_DESCUENTO_ANT,P_C024 => CC.C024, ',
'                                               P_C025 => CC.C025,P_C026 => CC.C026,P_C027 => :P193_AUX_MONTO_TOTAL,P_C028 => :P193_AUX_MONTO_EXENTA,',
'                                               P_C029 => :P193_AUX_MONTO_GRAVADA_10,P_C030 => :P193_AUX_MONTO_GRAVADA_5,P_C031 => :P193_AUX_CANTIDAD_UB,P_C032 => :P193_AUX_PORC_IVA_AD,P_C033 => CC.C033,',
'                                               P_C034 => :P193_AUX_COD_ARTICULO_REL_BON, --:b_detalle.cod_articulo_rel_bon   ',
'                                               P_C035 => :P193_AUX_DESCUENTO_MAXIMO, --:b_detalle.descuento_maximo                 ',
'                                               P_C036 => :P193_AUX_PORC_RECARGO_ANT);',
'            END LOOP;',
'            :P193_RECARGO_DET := :P193_AUX_RECARGO;',
'            :P193_DESCUENTO_DET := :P193_AUX_DESCUENTO; ',
'        EXCEPTION',
'            WHEN OTHERS THEN    ',
'                RAISE_APPLICATION_ERROR(-20000, ''Ha ocurrido un error al guardar el detalle.'');',
'        END;      ',
'    END IF;',
'END;                                             ',
''))
,p_attribute_02=>'P193_AUX_ABRE_DETALLE,,P193_AUX_IMPORTE_ANT,P193_AUX_IVA_ANT,P193_COD_ARTICULO_DETALLE,P193_LOTE,P193_CANTIDAD,P193_AUX_CANT_VENDIDA,P193_PRECIO_UNITARIO, P193_AUX_PORC_DESCUENTO_ANT,P193_AUX_MONTO_TOTAL, P193_AUX_MONTO_EXENTA,P193_AUX_MONTO_GRAVADA_'
||'10,P193_AUX_MONTO_GRAVADA_5,P193_AUX_CANTIDAD_UB, P193_AUX_PORC_IVA_AD,P193_AUX_COD_ARTICULO_REL_BON,P193_AUX_DESCUENTO_MAXIMO,P193_AUX_PORC_RECARGO_ANT, P193_AUX_PORC_IVA,P193_AUX_IND_RENTA,P193_PORC_DESCUENTO_DETALLE,P193_PORC_RECARGO_DETALLE,P193_'
||'AUX_NRO_PROMO,P193_AUX_TOTAL_IVA,P193_AUX_RECARGO,P193_AUX_DESCUENTO'
,p_attribute_03=>'P193_DESCUENTO_DET,P193_RECARGO_DET'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P193_AUX_MSJ'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(42499223791173117)
,p_event_id=>wwv_flow_imp.id(42498250398173116)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(58985622791839859)
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P193_AUX_MSJ'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(42482494968173110)
,p_name=>'DA_PORC_RECARGO'
,p_event_sequence=>300
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P193_PORC_RECARGO_DETALLE'
,p_bind_type=>'bind'
,p_bind_event_type=>'focusout'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(42484437099173111)
,p_event_id=>wwv_flow_imp.id(42482494968173110)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    VPORC_RECARGO NUMBER;',
'BEGIN',
'    :P193_AUX_MSJ := NULL;',
'    SELECT C015',
'      INTO VPORC_RECARGO',
'      FROM APEX_COLLECTIONS',
'     WHERE COLLECTION_NAME = ''DET_COM''',
'       AND SEQ_ID = :P193_AUX_ABRE_DETALLE;  ',
'    IF NVL(:P193_PORC_RECARGO_DETALLE,0) != NVL(VPORC_RECARGO,0) THEN',
'        BEGIN',
'            :P193_AUX_MSJ := NULL;',
'            IF nvl( :P193_AUX_PORC_RECARGO_ANT, 0 ) <> nvl( :P193_PORC_RECARGO_DETALLE, 0 ) THEN',
'                :P193_AUX_RECARGO := round(( nvl( :P193_CANTIDAD, 0 ) *',
'                                           ( nvl( :P193_PRECIO_UNITARIO, 0 ) ) *',
'                                           ( nvl( :P193_PORC_RECARGO_DETALLE, 0 ) / 100 ) ),',
'                                             nvl( :P193_DECIMALES, 0 ) );',
'                :P193_AUX_PORC_RECARGO_ANT := :P193_PORC_RECARGO_DETALLE;                            ',
'            END IF;',
'            VTCONFAC.CALCULOS (:P193_MULT,:P193_DIV,:P193_DECIMALES,:P193_RECARGO_VAR,:P193_IVA_PARCIAL,:P193_IVA_PARCIAL,:P193_AUX_IVA_ANT,:P193_AUX_IVA_ANT,',
'                               :P193_SUBTOTAL_PARCIAL,:P193_SUBTOTAL_PARCIAL,:P193_GRAVADAS_PARCIAL,:P193_GRAVADAS_PARCIAL,:P193_EXENTAS_PARCIAL,',
'                               :P193_EXENTAS_PARCIAL,:P193_PORCENTAJE_DESCUENTO,:P193_DESCUENTO,:P193_TOTAL_IVA,:P193_AJUSTE_IVA,:P193_SUBTOTAL,:P193_GRAVADAS,',
'                               :P193_AUX_RECARGO,:P193_RECARGO,:P193_EXENTAS,:P193_RECARGO_PORC,:P193_TOTAL,:P193_PRECIO_UNITARIO,:P193_AUX_PORC_IVA, ',
'                               :P193_AUX_PORC_IVA_AD,:P193_PORC_DESCUENTO_DETALLE,:P193_PORC_RECARGO_DETALLE,:P193_CANTIDAD,:P193_AUX_DESCUENTO, ',
'                               :P193_COD_ARTICULO_DETALLE,:P193_AUX_TOTAL_IVA,:P193_AUX_TOTAL_IVA,:P193_AUX_IMPORTE_ANT,:P193_AUX_IMPORTE_ANT,',
'                               :P193_AUX_MONTO_TOTAL,:P193_AUX_MONTO_EXENTA, :P193_AUX_MONTO_GRAVADA_10,:P193_AUX_MONTO_GRAVADA_5,:P193_AUX_CANTIDAD_UB);',
'        EXCEPTION',
'            when others then',
unistr('                :P193_AUX_MSJ := ''Error en el c\00E1lculo de recargo ''||sqlerrm;'),
'        END;',
'    END IF;',
'END;        ',
'',
'',
'',
'',
''))
,p_attribute_02=>'P193_AUX_ABRE_DETALLE,P193_AUX_PORC_RECARGO_ANT,P193_MULT,P193_DIV,P193_DECIMALES,P193_RECARGO_VAR,P193_IVA_PARCIAL,P193_AUX_IVA_ANT,P193_SUBTOTAL_PARCIAL,P193_GRAVADAS_PARCIAL,P193_EXENTAS_PARCIAL,P193_DESCUENTO,P193_AUX_RECARGO,P193_RECARGO,P193_PR'
||'ECIO_UNITARIO, P193_AUX_PORC_IVA,P193_AUX_PORC_IVA_AD,P193_PORC_DESCUENTO_DETALLE,P193_PORC_RECARGO_DETALLE,P193_CANTIDAD,P193_AUX_DESCUENTO,P193_COD_ARTICULO_DETALLE,P193_AUX_TOTAL_IVA,P193_AUX_IMPORTE_ANT'
,p_attribute_03=>'P193_AUX_MSJ,P193_AUX_RECARGO,P193_IVA_PARCIAL,P193_AUX_IVA_ANT,P193_SUBTOTAL_PARCIAL,P193_GRAVADAS_PARCIAL,P193_EXENTAS_PARCIAL,P193_PORCENTAJE_DESCUENTO,P193_TOTAL_IVA,P193_AJUSTE_IVA,P193_SUBTOTAL,P193_GRAVADAS,P193_EXENTAS,P193_RECARGO_PORC,P193_'
||'TOTAL,P193_AUX_TOTAL_IVA,P193_AUX_IMPORTE_ANT,P193_AUX_MONTO_TOTAL,P193_AUX_MONTO_EXENTA,P193_AUX_MONTO_GRAVADA_10,P193_AUX_MONTO_GRAVADA_5,P193_AUX_CANTIDAD_UB'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(42482987610173110)
,p_event_id=>wwv_flow_imp.id(42482494968173110)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P193_AUX_MSJ.'
,p_attribute_02=>'Error'
,p_attribute_03=>'warning'
,p_attribute_04=>'fa-warning'
,p_attribute_06=>'Aceptar'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P193_AUX_MSJ'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(42483483823173111)
,p_event_id=>wwv_flow_imp.id(42482494968173110)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    VPORC_RECARGO NUMBER;',
'BEGIN',
'    SELECT C015',
'      INTO VPORC_RECARGO',
'      FROM APEX_COLLECTIONS',
'     WHERE COLLECTION_NAME = ''DET_COM''',
'       AND SEQ_ID = :P193_AUX_ABRE_DETALLE;   ',
'    IF NVL(TO_NUMBER(:P193_PORC_RECARGO_DETALLE),0) != NVL(VPORC_RECARGO,0) THEN',
'        BEGIN',
'            FOR CC IN (SELECT C001,C002,C003,C004,C005,C006,C007,C008,C010,C011,C012,C013,C014,C015,C016,C017,C018,C019,C020,C021,C022,C023,C024,C025,C026,C027,C028,C029, ',
'                              C030,C031,C032,C033,C034,C035,C036  ',
'                         FROM APEX_COLLECTIONS',
'                        WHERE COLLECTION_NAME = ''DET_COM''',
'                          AND SEQ_ID = :P193_AUX_ABRE_DETALLE)',
'            LOOP',
'                APEX_COLLECTION.UPDATE_MEMBER(P_COLLECTION_NAME => ''DET_COM'',P_SEQ  => :P193_AUX_ABRE_DETALLE,',
'                                               P_C001 => :P193_AUX_IMPORTE_ANT,   --:b_detalle.importe_ant ',
'                                               P_C002 => :P193_AUX_IVA_ANT,   --:b_detalle.iva_ant',
'                                               P_C003 => :P193_COD_ARTICULO_DETALLE, -- :b_detalle.cod_articulo',
'                                               P_C004 => CC.C004, -- :b_detalle.costo_promedio',
'                                               P_C005 => CC.C005, -- :b_detalle.costo_promedio_ref',
'                                               P_C006 => :P193_LOTE, --:b_detalle.nro_lote',
'                                               P_C007 => :P193_CANTIDAD, --b_detalle.cantidad  ',
'                                               P_C008 => :P193_AUX_CANT_VENDIDA, -- b_detalle.cantidad_vendida',
'                                               P_C010 => :P193_PRECIO_UNITARIO, --:b_detalle.precio_unitario',
'                                               P_C011 => :P193_AUX_PORC_IVA, --:b_detalle.porc_iva',
'                                               P_C012 => :P193_AUX_IND_RENTA, --:b_detalle.ind_renta ',
'                                               P_C013 => CC.C013, -- :b_detalle.precio_lista',
'                                               P_C014 => :P193_PORC_DESCUENTO_DETALLE, --:b_detalle.porc_descuento',
'                                               P_C015 => :P193_PORC_RECARGO_DETALLE, --:b_detalle.porc_recargo',
'                                               P_C016 => CC.C016, --:b_detalle.cod_iva ',
'                                               P_C017 => :P193_AUX_NRO_PROMO, -- :b_detalle.nro_promo',
'                                               P_C018 => :P193_AUX_TOTAL_IVA, -- :b_detalle.total_iva ',
'                                               P_C019 => CC.C019,P_C020 => CC.C020, ',
'                                               P_C021 => :P193_AUX_RECARGO,P_C022 => :P193_AUX_DESCUENTO,P_C023 => :P193_AUX_PORC_DESCUENTO_ANT,P_C024 => CC.C024, ',
'                                               P_C025 => CC.C025,P_C026 => CC.C026,P_C027 => :P193_AUX_MONTO_TOTAL,P_C028 => :P193_AUX_MONTO_EXENTA,P_C029 => :P193_AUX_MONTO_GRAVADA_10,',
'                                               P_C030 => :P193_AUX_MONTO_GRAVADA_5,P_C031 => :P193_AUX_CANTIDAD_UB,P_C032 => :P193_AUX_PORC_IVA_AD,P_C033 => CC.C033,',
'                                               P_C034 => :P193_AUX_COD_ARTICULO_REL_BON, --:b_detalle.cod_articulo_rel_bon   ',
'                                               P_C035 => :P193_AUX_DESCUENTO_MAXIMO, --:b_detalle.descuento_maximo                 ',
'                                               P_C036 => :P193_AUX_PORC_RECARGO_ANT);',
'            END LOOP;',
'            :P193_RECARGO_DET := :P193_AUX_RECARGO;',
'            :P193_DESCUENTO_DET := :P193_AUX_DESCUENTO; ',
'        EXCEPTION',
'            WHEN OTHERS THEN    ',
'                RAISE_APPLICATION_ERROR(-20000, ''Ha ocurrido un error al guardar el detalle.'');',
'        END;                                           ',
'    END IF;',
'END;    ',
''))
,p_attribute_02=>'P193_AUX_ABRE_DETALLE,P193_AUX_IMPORTE_ANT,P193_AUX_IVA_ANT,P193_COD_ARTICULO_DETALLE,P193_LOTE,P193_CANTIDAD,P193_AUX_CANT_VENDIDA,P193_PRECIO_UNITARIO, P193_AUX_PORC_DESCUENTO_ANT, P193_AUX_MONTO_TOTAL,P193_AUX_MONTO_EXENTA,P193_AUX_MONTO_GRAVADA_1'
||'0,P193_AUX_MONTO_GRAVADA_5,P193_AUX_CANTIDAD_UB, P193_AUX_PORC_IVA_AD,P193_AUX_COD_ARTICULO_REL_BON,P193_AUX_DESCUENTO_MAXIMO,P193_AUX_PORC_RECARGO_ANT, P193_AUX_PORC_IVA,P193_AUX_IND_RENTA,P193_PORC_DESCUENTO_DETALLE,P193_PORC_RECARGO_DETALLE,P193_A'
||'UX_NRO_PROMO,P193_AUX_TOTAL_IVA,P193_AUX_RECARGO,P193_AUX_DESCUENTO'
,p_attribute_03=>'P193_DESCUENTO_DET,P193_RECARGO_DET'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P193_AUX_MSJ'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(42483962072173111)
,p_event_id=>wwv_flow_imp.id(42482494968173110)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(58985622791839859)
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P193_AUX_MSJ'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(42539661907173132)
,p_name=>'DA_PRECIO_UNITARIO'
,p_event_sequence=>310
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P193_PRECIO_UNITARIO'
,p_bind_type=>'bind'
,p_bind_event_type=>'focusout'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(42541100118173133)
,p_event_id=>wwv_flow_imp.id(42539661907173132)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    VPRECIO_UNITARIO NUMBER;',
'BEGIN',
'    SELECT C010',
'      INTO VPRECIO_UNITARIO',
'      FROM APEX_COLLECTIONS',
'     WHERE COLLECTION_NAME = ''DET_COM''',
'       AND SEQ_ID = :P193_AUX_ABRE_DETALLE; ',
'    IF NVL(:P193_PRECIO_UNITARIO,0) != NVL(VPRECIO_UNITARIO,0) THEN',
'        BEGIN',
unistr('            :P193_AUX_DESCUENTO := 0; --si cambio el precio unitario no vuelve a calcular el descuento, y queda el del precio anterior, por las condiciones del procedimiento. Por eso eleg\00ED volver a 0 el descuento cuando hay un nuevo precio.'),
'            VTCONFAC.calcula_descuento( :P193_AUX_PORC_DESCUENTO_ANT, :P193_PORC_DESCUENTO_DETALLE,:P193_CANTIDAD,:P193_PRECIO_UNITARIO,:P193_DECIMALES,:P193_AUX_DESCUENTO,:P193_PORC_RECARGO_DETALLE,:P193_AUX_DESCUENTO,:P193_AUX_PORC_DESCUENTO_ANT,:P'
||'193_AUX_RECARGO); ',
'            VTCONFAC.CALCULOS (:P193_MULT,:P193_DIV,:P193_DECIMALES,:P193_RECARGO_VAR,:P193_IVA_PARCIAL,:P193_IVA_PARCIAL,:P193_AUX_IVA_ANT,:P193_AUX_IVA_ANT,',
'                               :P193_SUBTOTAL_PARCIAL,:P193_SUBTOTAL_PARCIAL,:P193_GRAVADAS_PARCIAL,:P193_GRAVADAS_PARCIAL,:P193_EXENTAS_PARCIAL,',
'                               :P193_EXENTAS_PARCIAL,:P193_PORCENTAJE_DESCUENTO,:P193_DESCUENTO,:P193_TOTAL_IVA,:P193_AJUSTE_IVA,:P193_SUBTOTAL,:P193_GRAVADAS,',
'                               :P193_AUX_RECARGO,:P193_RECARGO,:P193_EXENTAS,:P193_RECARGO_PORC,:P193_TOTAL,:P193_PRECIO_UNITARIO,:P193_AUX_PORC_IVA, ',
'                               :P193_AUX_PORC_IVA_AD,:P193_PORC_DESCUENTO_DETALLE,:P193_PORC_RECARGO_DETALLE,:P193_CANTIDAD,:P193_AUX_DESCUENTO, ',
'                               :P193_COD_ARTICULO_DETALLE,:P193_AUX_TOTAL_IVA,:P193_AUX_TOTAL_IVA,:P193_AUX_IMPORTE_ANT,:P193_AUX_IMPORTE_ANT,',
'                               :P193_AUX_MONTO_TOTAL,:P193_AUX_MONTO_EXENTA, :P193_AUX_MONTO_GRAVADA_10,:P193_AUX_MONTO_GRAVADA_5,:P193_AUX_CANTIDAD_UB);',
'        EXCEPTION',
'            WHEN OTHERS THEN',
'                RAISE_APPLICATION_ERROR(-20000,SQLERRM);                                       ',
'        END;',
'    END IF;',
'END;        ',
'',
'apex_debug.error(''apex: ''||:P193_AUX_TOTAL_IVA);',
'',
'',
'',
''))
,p_attribute_02=>'P193_GRAVADAS_PARCIAL,P193_EXENTAS_PARCIAL,P193_DESCUENTO,P193_AUX_RECARGO,P193_RECARGO,P193_PRECIO_UNITARIO, P193_AUX_PORC_IVA,P193_AUX_PORC_IVA_AD,P193_PORC_DESCUENTO_DETALLE, P193_PORC_RECARGO_DETALLE,P193_CANTIDAD,P193_AUX_DESCUENTO,P193_COD_ARTI'
||'CULO_DETALLE,P193_AUX_TOTAL_IVA,P193_AUX_IMPORTE_ANT'
,p_attribute_03=>'P193_AUX_DESCUENTO,P193_AUX_PORC_DESCUENTO_ANT,P193_AUX_RECARGO,P193_IVA_PARCIAL,P193_AUX_IVA_ANT,P193_SUBTOTAL_PARCIAL,P193_GRAVADAS_PARCIAL,P193_EXENTAS_PARCIAL,P193_PORCENTAJE_DESCUENTO,P193_TOTAL_IVA,P193_AJUSTE_IVA,P193_SUBTOTAL,P193_GRAVADAS,P1'
||'93_EXENTAS,P193_RECARGO_PORC,P193_TOTAL,P193_AUX_TOTAL_IVA,P193_AUX_IMPORTE_ANT,P193_AUX_MONTO_TOTAL,P193_AUX_MONTO_EXENTA,P193_AUX_MONTO_GRAVADA_10,P193_AUX_MONTO_GRAVADA_5,P193_AUX_CANTIDAD_UB'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(42540154576173132)
,p_event_id=>wwv_flow_imp.id(42539661907173132)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    VPRECIO_UNITARIO NUMBER;',
'BEGIN',
'    SELECT C010',
'      INTO VPRECIO_UNITARIO',
'      FROM APEX_COLLECTIONS',
'     WHERE COLLECTION_NAME = ''DET_COM''',
'       AND SEQ_ID = :P193_AUX_ABRE_DETALLE; ',
'    IF NVL(:P193_PRECIO_UNITARIO,0) != NVL(VPRECIO_UNITARIO,0) THEN',
'        BEGIN',
'            FOR CC IN (SELECT C001,C002,C003,C004,C005,C006,C007,C008,C010,C011,C012,C013,C014,C015,C016,C017,C018,C019,C020,C021,C022,C023,C024,C025,C026,C027,C028,C029, ',
'                              C030,C031,C032,C033,C034,C035,C036  ',
'                         FROM APEX_COLLECTIONS',
'                        WHERE COLLECTION_NAME = ''DET_COM''',
'                          AND SEQ_ID = :P193_AUX_ABRE_DETALLE)',
'            LOOP',
'                APEX_COLLECTION.UPDATE_MEMBER(P_COLLECTION_NAME => ''DET_COM'',P_SEQ  => :P193_AUX_ABRE_DETALLE,',
'                                               P_C001 => :P193_AUX_IMPORTE_ANT,   --:b_detalle.importe_ant ',
'                                               P_C002 => :P193_AUX_IVA_ANT,   --:b_detalle.iva_ant',
'                                               P_C003 => :P193_COD_ARTICULO_DETALLE, -- :b_detalle.cod_articulo',
'                                               P_C004 => CC.C004, -- :b_detalle.costo_promedio',
'                                               P_C005 => CC.C005, -- :b_detalle.costo_promedio_ref',
'                                               P_C006 => :P193_LOTE, --:b_detalle.nro_lote',
'                                               P_C007 => :P193_CANTIDAD, --b_detalle.cantidad  ',
'                                               P_C008 => :P193_AUX_CANT_VENDIDA, -- b_detalle.cantidad_vendida',
'                                               P_C010 => :P193_PRECIO_UNITARIO, --:b_detalle.precio_unitario',
'                                               P_C011 => :P193_AUX_PORC_IVA, --:b_detalle.porc_iva',
'                                               P_C012 => :P193_AUX_IND_RENTA, --:b_detalle.ind_renta ',
'                                               P_C013 => CC.C013, -- :b_detalle.precio_lista',
'                                               P_C014 => :P193_PORC_DESCUENTO_DETALLE, --:b_detalle.porc_descuento',
'                                               P_C015 => :P193_PORC_RECARGO_DETALLE, --:b_detalle.porc_recargo',
'                                               P_C016 => CC.C016, --:b_detalle.cod_iva ',
'                                               P_C017 => :P193_AUX_NRO_PROMO, -- :b_detalle.nro_promo',
'                                               P_C018 => :P193_AUX_TOTAL_IVA, -- :b_detalle.total_iva ',
'                                               P_C019 => CC.C019, -- :b_detalle.ser_pedido ',
'                                               P_C020 => CC.C020, --  :b_detalle.nro_pedido',
'                                               P_C021 => :P193_AUX_RECARGO,P_C022 => :P193_AUX_DESCUENTO,',
'                                               P_C023 => :P193_AUX_PORC_DESCUENTO_ANT,P_C024 => CC.C024,P_C025 => CC.C025,P_C026 => CC.C026,',
'                                               P_C027 => :P193_AUX_MONTO_TOTAL,P_C028 => :P193_AUX_MONTO_EXENTA,P_C029 => :P193_AUX_MONTO_GRAVADA_10,',
'                                               P_C030 => :P193_AUX_MONTO_GRAVADA_5,P_C031 => :P193_AUX_CANTIDAD_UB,P_C032 => :P193_AUX_PORC_IVA_AD,P_C033 => CC.C033,',
'                                               P_C034 => :P193_AUX_COD_ARTICULO_REL_BON, --:b_detalle.cod_articulo_rel_bon   ',
'                                               P_C035 => :P193_AUX_DESCUENTO_MAXIMO, --:b_detalle.descuento_maximo                 ',
'                                               P_C036 => :P193_AUX_PORC_RECARGO_ANT);',
'            END LOOP;',
'            :P193_RECARGO_DET := :P193_AUX_RECARGO;',
'            :P193_DESCUENTO_DET := :P193_AUX_DESCUENTO; ',
'        EXCEPTION',
'            WHEN OTHERS THEN    ',
'                RAISE_APPLICATION_ERROR(-20000, ''Ha ocurrido un error al guardar el detalle.'');',
'        END;    ',
'    END IF;',
'END;                                               ',
''))
,p_attribute_02=>'P193_AUX_ABRE_DETALLE,P193_AUX_IMPORTE_ANT,P193_AUX_IVA_ANT,P193_COD_ARTICULO_DETALLE,P193_LOTE,P193_CANTIDAD,P193_AUX_CANT_VENDIDA,P193_PRECIO_UNITARIO, P193_AUX_PORC_DESCUENTO_ANT,P193_AUX_MONTO_TOTAL, P193_AUX_MONTO_EXENTA,P193_AUX_MONTO_GRAVADA_1'
||'0,P193_AUX_MONTO_GRAVADA_5,P193_AUX_CANTIDAD_UB, P193_AUX_PORC_IVA_AD,P193_AUX_COD_ARTICULO_REL_BON,P193_AUX_DESCUENTO_MAXIMO,P193_AUX_PORC_RECARGO_ANT, P193_AUX_PORC_IVA,P193_AUX_IND_RENTA,P193_PORC_DESCUENTO_DETALLE,P193_PORC_RECARGO_DETALLE,P193_A'
||'UX_NRO_PROMO,P193_AUX_TOTAL_IVA,P193_AUX_RECARGO,P193_AUX_DESCUENTO'
,p_attribute_03=>'P193_DESCUENTO_DET,P193_RECARGO_DET'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(42540608027173133)
,p_event_id=>wwv_flow_imp.id(42539661907173132)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(58985622791839859)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(42484890585173112)
,p_name=>'DA_PROMO'
,p_event_sequence=>320
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P193_PORC_DESCUENTO_DETALLE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(42485388310173112)
,p_event_id=>wwv_flow_imp.id(42484890585173112)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'	vexiste varchar2(1) :=''N'';',
'begin		',
'--------------promos-----------------------',
'    :P193_AUX_MUESTRA_PROMO := 2;',
'    IF ((to_number(:P193_PORC_DESCUENTO_DETALLE) >= 99.90 and to_number(:P193_PORC_DESCUENTO_DETALLE) <= 99.99) or (:P193_PORC_DESCUENTO_DETALLE = 1)) and :P193_AUX_NRO_PROMO is  null then',
'    	begin',
'    		select ''S'' ',
'    		  into vexiste',
'    		  from st_promocion p',
'    		 where p.cod_empresa=:P193_COD_EMPRESA_VAR',
'        	   and p.cod_art_promo=:P193_COD_ARTICULO_DETALLE',
'    		   and rownum=''1'';',
'    	exception',
'    		when others then',
'    	  	    vexiste:=''N'';',
'    	end;',
'		if vexiste=''S'' then',
'			--calc_promo;',
'            :P193_AUX_MUESTRA_PROMO := 1;',
'		end if;	',
'    end if;	',
'end;',
'',
''))
,p_attribute_02=>'P193_PORC_DESCUENTO_DETALLE,P193_AUX_NRO_PROMO,P193_COD_EMPRESA_VAR,P193_COD_ARTICULO_DETALLE'
,p_attribute_03=>'P193_AUX_MUESTRA_PROMO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(42485758297173112)
,p_name=>'DA_NRO_PROMO'
,p_event_sequence=>330
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P193_NRO_PROMO'
,p_condition_element=>'P193_NRO_PROMO'
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
 p_id=>wwv_flow_imp.id(42486779630173112)
,p_event_id=>wwv_flow_imp.id(42485758297173112)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P193_AUX_COD_ART_PROMO:= :P193_COD_ART_AUX;',
':P193_AUX_NRO_PROMO := :P193_NRO_PROMO;',
'      '))
,p_attribute_02=>'P193_NRO_PROMO,P193_COD_ART_AUX'
,p_attribute_03=>'P193_AUX_NRO_PROMO,P193_AUX_COD_ART_PROMO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(42487202009173112)
,p_event_id=>wwv_flow_imp.id(42485758297173112)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>unistr('No has seleccionado ning\00FAn valor.')
,p_attribute_02=>'Error'
,p_attribute_03=>'warning'
,p_attribute_04=>'fa-warning'
,p_attribute_06=>'Aceptar'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(42486249083173112)
,p_event_id=>wwv_flow_imp.id(42485758297173112)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    FOR CC IN (SELECT C001,C002,C003,C004,C005,C006,C007,C008,C010,C011,C012,C013,C014,C015,C016,C017,C018,C019,C020,C021,C022,C023,C024,C025,C026,C027,C028,C029, ',
'                      C030,C031,C032,C033,C034,C035,C036  ',
'                 FROM APEX_COLLECTIONS',
'                WHERE COLLECTION_NAME = ''DET_COM''',
'                  AND SEQ_ID = :P193_AUX_ABRE_DETALLE)',
'    LOOP',
'        APEX_COLLECTION.UPDATE_MEMBER(P_COLLECTION_NAME => ''DET_COM'',',
'                                       P_SEQ  => :P193_AUX_ABRE_DETALLE,',
'                                       P_C001 => :P193_AUX_IMPORTE_ANT,   --:b_detalle.importe_ant ',
'                                       P_C002 => :P193_AUX_IVA_ANT,   --:b_detalle.iva_ant',
'                                       P_C003 => :P193_COD_ARTICULO_DETALLE, -- :b_detalle.cod_articulo',
'                                       P_C004 => CC.C004, -- :b_detalle.costo_promedio',
'                                       P_C005 => CC.C005, -- :b_detalle.costo_promedio_ref',
'                                       P_C006 => :P193_LOTE, --:b_detalle.nro_lote',
'                                       P_C007 => :P193_CANTIDAD, --b_detalle.cantidad  ',
'                                       P_C008 => :P193_AUX_CANT_VENDIDA, -- b_detalle.cantidad_vendida',
'                                       P_C010 => :P193_PRECIO_UNITARIO, --:b_detalle.precio_unitario',
'                                       P_C011 => :P193_AUX_PORC_IVA, --:b_detalle.porc_iva',
'                                       P_C012 => :P193_AUX_IND_RENTA, --:b_detalle.ind_renta ',
'                                       P_C013 => CC.C013, -- :b_detalle.precio_lista',
'                                       P_C014 => :P193_PORC_DESCUENTO_DETALLE, --:b_detalle.porc_descuento',
'                                       P_C015 => :P193_PORC_RECARGO_DETALLE, --:b_detalle.porc_recargo',
'                                       P_C016 => CC.C016, --:b_detalle.cod_iva ',
'                                       P_C017 => :P193_AUX_NRO_PROMO, -- :b_detalle.nro_promo',
'                                       P_C018 => :P193_AUX_TOTAL_IVA, -- :b_detalle.total_iva ',
'                                       P_C019 => CC.C019, -- :b_detalle.ser_pedido ',
'                                       P_C020 => CC.C020, --  :b_detalle.nro_pedido',
'                                       P_C021 => :P193_AUX_RECARGO,',
'                                       P_C022 => :P193_AUX_DESCUENTO,',
'                                       P_C023 => :P193_AUX_PORC_DESCUENTO_ANT,',
'                                       P_C024 => CC.C024, ',
'                                       P_C025 => CC.C025, ',
'                                       P_C026 => CC.C026,',
'                                       P_C027 => :P193_AUX_MONTO_TOTAL,  ',
'                                       P_C028 => :P193_AUX_MONTO_EXENTA,',
'                                       P_C029 => :P193_AUX_MONTO_GRAVADA_10,',
'                                       P_C030 => :P193_AUX_MONTO_GRAVADA_5,',
'                                       P_C031 => :P193_AUX_CANTIDAD_UB,',
'                                       P_C032 => :P193_AUX_PORC_IVA_AD,',
'                                       P_C033 => CC.C033,',
'                                       P_C034 => :P193_AUX_COD_ARTICULO_REL_BON, --:b_detalle.cod_articulo_rel_bon   ',
'                                       P_C035 => :P193_AUX_DESCUENTO_MAXIMO, --:b_detalle.descuento_maximo                 ',
'                                       P_C036 => :P193_AUX_PORC_RECARGO_ANT);',
'    END LOOP;',
'    :P193_RECARGO_DET := :P193_AUX_RECARGO;',
'    :P193_DESCUENTO_DET := :P193_AUX_DESCUENTO; ',
'EXCEPTION',
'    WHEN OTHERS THEN    ',
'        RAISE_APPLICATION_ERROR(-20000, ''Ha ocurrido un error al guardar el detalle.'');',
'END;                                           ',
''))
,p_attribute_02=>'P193_AUX_ABRE_DETALLE,P193_AUX_ABRE_DETALLE,P193_AUX_IMPORTE_ANT,P193_AUX_IVA_ANT,P193_COD_ARTICULO_DETALLE,P193_LOTE,P193_CANTIDAD,P193_AUX_CANT_VENDIDA,P193_PRECIO_UNITARIO, P193_AUX_PORC_DESCUENTO_ANT,P193_AUX_MONTO_TOTAL,P193_AUX_MONTO_EXENTA,P19'
||'3_AUX_MONTO_GRAVADA_10,P193_AUX_MONTO_GRAVADA_5,P193_AUX_CANTIDAD_UB, P193_AUX_PORC_IVA_AD,P193_AUX_COD_ARTICULO_REL_BON,P193_AUX_DESCUENTO_MAXIMO,P193_AUX_PORC_RECARGO_ANT'
,p_attribute_03=>'P193_DESCUENTO_DET,P193_RECARGO_DET'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(42487621882173113)
,p_name=>'DA_MUESTRA_PROMO'
,p_event_sequence=>340
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P193_AUX_MUESTRA_PROMO'
,p_condition_element=>'P193_AUX_MUESTRA_PROMO'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'1'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(42488189852173113)
,p_event_id=>wwv_flow_imp.id(42487621882173113)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P193_NRO_PROMO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(42488649602173113)
,p_event_id=>wwv_flow_imp.id(42487621882173113)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P193_NRO_PROMO'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(42538792954173132)
,p_name=>'DA_DIR_CLIENTE'
,p_event_sequence=>350
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P193_DIR_CLIENTE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(42539275766173132)
,p_event_id=>wwv_flow_imp.id(42538792954173132)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P193_DIR_CLIENTE'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(42500676639173118)
,p_name=>'DA_ASIGNA_VALOR_DESCUENTO_DET'
,p_event_sequence=>360
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P193_DESCUENTO_DET'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(42501167303173118)
,p_event_id=>wwv_flow_imp.id(42500676639173118)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P193_AUX_DESCUENTO_DET := :P193_DESCUENTO_DET;'
,p_attribute_02=>'P193_DESCUENTO_DET'
,p_attribute_03=>'P193_AUX_DESCUENTO_DET'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(42501554990173118)
,p_name=>'DA_ASIGNA_VALOR_RECARGO_DET'
,p_event_sequence=>370
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P193_RECARGO_DET'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(42502004290173118)
,p_event_id=>wwv_flow_imp.id(42501554990173118)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P193_AUX_RECARGO_DET := :P193_RECARGO_DET;'
,p_attribute_02=>'P193_RECARGO_DET'
,p_attribute_03=>'P193_AUX_RECARGO_DET'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(42518844808173124)
,p_name=>'DA_ASIGNA_VALOR_TOTAL'
,p_event_sequence=>380
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P193_TOTAL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(42519308528173124)
,p_event_id=>wwv_flow_imp.id(42518844808173124)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P193_AUX_TOTAL := :P193_TOTAL;'
,p_attribute_02=>'P193_TOTAL'
,p_attribute_03=>'P193_AUX_TOTAL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(42530635954173129)
,p_name=>'DA_ASIGNA_VALOR_AJUSTE_IVA'
,p_event_sequence=>390
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P193_AJUSTE_IVA'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(42531191933173129)
,p_event_id=>wwv_flow_imp.id(42530635954173129)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P193_AUX_AJUSTE_IVA := :P193_AJUSTE_IVA;'
,p_attribute_02=>'P193_AJUSTE_IVA'
,p_attribute_03=>'P193_AUX_AJUSTE_IVA'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(42531583523173129)
,p_name=>'DA_ASIGNA_VALOR_TOTAL_IVA'
,p_event_sequence=>400
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P193_TOTAL_IVA'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(42532060139173129)
,p_event_id=>wwv_flow_imp.id(42531583523173129)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P193_AUX_TOTAL_IVA1 := :P193_TOTAL_IVA;'
,p_attribute_02=>'P193_TOTAL_IVA'
,p_attribute_03=>'P193_AUX_TOTAL_IVA1'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(42519774339173125)
,p_name=>'DA_ASIGNA_VALOR_SUBTOTAL'
,p_event_sequence=>410
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P193_SUBTOTAL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(42520298994173125)
,p_event_id=>wwv_flow_imp.id(42519774339173125)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P193_AUX_SUBTOTAL := :P193_SUBTOTAL;'
,p_attribute_02=>'P193_SUBTOTAL'
,p_attribute_03=>'P193_AUX_SUBTOTAL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(42502439218173118)
,p_name=>'DA_ASIGNA_VALOR_EXENTAS'
,p_event_sequence=>420
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P193_EXENTAS'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(42502932675173119)
,p_event_id=>wwv_flow_imp.id(42502439218173118)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P193_AUX_EXENTAS := :P193_EXENTAS;'
,p_attribute_02=>'P193_EXENTAS'
,p_attribute_03=>'P193_AUX_EXENTAS'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(42503352455173119)
,p_name=>'DA_ASIGNA_VALOR_GRAVADAS'
,p_event_sequence=>430
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P193_GRAVADAS'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(42503830554173119)
,p_event_id=>wwv_flow_imp.id(42503352455173119)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P193_AUX_GRAVADAS := :P193_GRAVADAS;'
,p_attribute_02=>'P193_GRAVADAS'
,p_attribute_03=>'P193_AUX_GRAVADAS'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(42532400011173129)
,p_name=>'DA_SOLO_NUM1'
,p_event_sequence=>440
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P193_CANTIDAD,P193_PRECIO_UNITARIO,P193_PORC_DESCUENTO_DETALLE,P193_PORC_RECARGO_DETALLE'
,p_bind_type=>'bind'
,p_bind_event_type=>'keypress'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(42532922730173130)
,p_event_id=>wwv_flow_imp.id(42532400011173129)
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
 p_id=>wwv_flow_imp.id(38191919110756548)
,p_name=>'DA_LLAMA_REPORTE'
,p_event_sequence=>450
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P193_REPORTE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(38192018222756549)
,p_event_id=>wwv_flow_imp.id(38191919110756548)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
' doDescarga(apex.item(''P_COD_EMPRESA'').getValue(), apex.item(''P193_TIP_COMPROBANTE'').getValue(), apex.item(''P193_SER_COMPROBANTE'').getValue(), ',
' apex.item(''P193_NRO_COMPROBANTE'').getValue(), apex.item(''P193_COD_CLIENTE'').getValue(), apex.item(''P193_REPORTE'').getValue(), ',
' apex.item(''P193_REIMPRESO'').getValue(), apex.item(''P193_COD_USUARIO'').getValue())'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(99640660332092016)
,p_name=>'Clic_Ejecutar'
,p_event_sequence=>480
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(102441701582377349)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(165070071679894647)
,p_event_id=>wwv_flow_imp.id(99640660332092016)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var spinner = apex.util.showSpinner();',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(99640773756092017)
,p_event_id=>wwv_flow_imp.id(99640660332092016)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'VTCONFAC1.PROCBD_CARGA_DOC(:P_COD_EMPRESA,',
'                           :P193_TIPO_COMPROB_S,',
'                           :P193_SER,',
'                           :P193_NRO_DOCUMENTO,',
'                           :P193_FEC_DESDE,',
'                           :P193_FEC_HASTA,',
'                           :P193_CLIENTE_S,',
'                           :P193_VENDEDOR);'))
,p_attribute_02=>'P_COD_EMPRESA,P193_TIPO_COMPROB_S,P193_SER,P193_NRO_DOCUMENTO,P193_FEC_DESDE,P193_FEC_HASTA,P193_CLIENTE_S,P193_VENDEDOR'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(165070114278894648)
,p_event_id=>wwv_flow_imp.id(99640660332092016)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$("#apex_wait_overlay").remove();',
'',
'$(".u-Processing").remove();',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(99640843134092018)
,p_event_id=>wwv_flow_imp.id(99640660332092016)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(103147750110667802)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(35984070748462231)
,p_name=>'New'
,p_event_sequence=>490
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P193_URL_PRINT'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(35984112965462232)
,p_event_id=>wwv_flow_imp.id(35984070748462231)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var vURL = apex.item(''P193_URL_PRINT'').getValue();',
'window.open(vURL,"Pagina Child","width=1800,height=900,scrollbars=NO") ;',
'',
'',
''))
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(42471151500173105)
,p_process_sequence=>20
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_INIT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'--PRE-FORM',
':P_COD_MODULO := ''VT'';',
'',
'/*:P193_TIP_COMPROBANTE:=''FCR'';',
':P193_SER_COMPROBANTE:=''C1'';',
':P193_NRO_COMPROBANTE:=''100'';*/',
'--INICIALIZA GLOBALES',
':P193_COD_EMPRESA_VAR := :P_COD_EMPRESA;',
':P193_COD_USUARIO_VAR := nvl(:P_COD_USUARIO, :APP_USER);',
':P193_COD_MODULO_VAR := :P_COD_MODULO;',
':P193_COD_SUCURSAL_VAR := NVL(:P_COD_SUCURSAL, ''01'');',
'',
'--INICIALIZA LOCALES',
':P193_DERECHOS  := utils.derecho_forma(:P193_COD_USUARIO_VAR,',
'                                           ''VTCONFAC'');',
'',
':P193_IMP_VAR               :=''C'';',
'',
':P193_LISTA_PRECIOS_VAR     := bs_busca_parametro( :P193_COD_MODULO_VAR, ''PRECIO_CONTADO'' );',
':P193_CONDICION_VENTA_VAR   := bs_busca_parametro( :P193_COD_MODULO_VAR, ''CONDICION_CONTADO'' );',
':P193_MODIFICA_PRECIOS_VAR  := bs_busca_parametro( :P193_COD_MODULO_VAR, ''MODIFICA_PRECIOS'' );',
':P193_TIP_COMPROBANTE_VAR   := bs_busca_parametro( :P193_COD_MODULO_VAR, ''TIPO_NOTACRE'' );',
':P193_TIP_CONTADO_VAR       := bs_busca_parametro( :P193_COD_MODULO_VAR, ''TIPO_CONTADO'' );',
':P193_TIP_CREDITO_VAR       := bs_busca_parametro( :P193_COD_MODULO_VAR, ''TIPO_CREDITO'' );',
':P193_TIP_CVENTA_VAR        := bs_busca_parametro( :P193_COD_MODULO_VAR, ''TIPO_CVENTA'' );',
':P193_COD_MONEDA_PRECIO     := bs_busca_parametro( :P193_COD_MODULO_VAR, ''COD_MONEDA_DOL'' );',
':P193_COD_CLIENTE_OCA       := bs_busca_parametro( :P193_COD_MODULO_VAR, ''COD_CLIENTE_OCASION'' ) ;',
':P193_COD_MONEDA_BASE_VAR   := bs_busca_parametro( :P193_COD_MODULO_VAR, ''COD_MONEDA_BASE'' );',
':P193_VARIACION_MENOS_VAR   := bs_busca_parametro( :P193_COD_MODULO_VAR, ''VARIACION_MENOS''    ) ;',
':P193_VARIACION_MAS_VAR     := bs_busca_parametro( :P193_COD_MODULO_VAR, ''VARIACION_MAS''      ) ;',
':P193_UNIDAD_MEDIDA_VAR     := bs_busca_parametro( :P193_COD_MODULO_VAR, ''UNIDAD_MEDIDA_DEF''  ) ;',
':P193_MONTO_AJUSTE_MAX_VAR  := to_number( ltrim( rtrim( bs_busca_parametro( :P193_COD_MODULO_VAR, ''MONTO_AJUSTE_MAX'' ) ) ) ) ;',
':P193_VIENE_DEL_LOTE_VAR    := ''N'' ;',
':P193_FEC_VENCIMIENTO_VAR   := to_date( bs_busca_parametro( :P193_COD_MODULO_VAR, ''FECHA LOTE DEFECTO'' ), ''dd/mm/yyyy'' ) ;',
':P193_LOTE_DEFECTO_VAR      := bs_busca_parametro( :P193_COD_MODULO_VAR, ''LOTE POR DEFECTO'' ) ;',
':P193_RECARGO_VAR           :=  bs_busca_parametro( :P193_COD_MODULO_VAR, ''RECARGO_ARTICULO''    ) ;',
'',
':P193_PORC_IVA_VAR := VTCONFAC.PORC_IVA_VENTA(P_COD_MODULO => :P193_COD_MODULO_VAR);',
'',
':P193_CAMBIA_NUMERO_FAC := busca_permiso(:P193_COD_EMPRESA_VAR,',
'                                             ''VTCONFAC'',',
'                                             :P193_COD_USUARIO_VAR,',
'                                             ''CAMBIA_NUMERO_FAC'' ) ;',
'',
':P193_CARGA_SUCURSAL := busca_permiso( :P193_COD_EMPRESA_VAR,',
'                                            ''VTCONFAC'',',
'                                            :P193_COD_USUARIO_VAR,',
'                                            ''CARGA_SUCURSAL'' ) ;',
'',
':P193_PERMITE_ANULAR  := busca_permiso( :P193_COD_EMPRESA_VAR,',
'                                        ''VTCONFAC'',',
'                                        :P193_COD_USUARIO_VAR,',
'                                        ''PERMITE ANULAR'' );',
'',
':P193_CARGA_DESCUENTOS  := busca_permiso( :P193_COD_EMPRESA_VAR,',
'                                          ''VTCONFAC'',',
'                                          :P193_COD_USUARIO_VAR,',
'                                          ''CARGA DESCUENTOS'' );',
'                                                        ',
':P193_REIMPRIME  := busca_permiso( :P193_COD_EMPRESA_VAR, ',
'                                   ''VTCONFAC'', ',
'                                   :P193_COD_USUARIO_VAR, ',
'                                   ''REIMPRIME_NCR'' ) ; ',
'                                   ',
':P193_COD_SUCURSAL_CENTRAL_VAR := VTCONFAC.codigo_sucursal_central(:P193_COD_EMPRESA_VAR, :P193_COD_SUCURSAL_VAR);',
'                                      ',
'',
unistr(':P193_USA_UM_DEF := VTCONFAC.trae_um_def( :P193_COD_SUCURSAL_VAR, :P193_COD_EMPRESA_VAR) ; --en la funci\00F3n usa sucursal de la cabecera...'),
':P193_COD_CUSTODIO_VAR := VTCONFAC.busca_custodio( :P193_COD_EMPRESA_VAR, :P193_COD_USUARIO_VAR);',
'',
' APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(P_COLLECTION_NAME => ''DET_COM'');',
''))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(42471985803173105)
,p_process_sequence=>30
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_INIT_CABECERA'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
':P193_COD_USUARIO := :P193_COD_USUARIO_VAR;',
':P193_TOTAL := 0;',
':P193_TOTAL_IVA := 0;',
':P193_IVA_PARCIAL := 0;',
':P193_SUBTOTAL := 0;',
':P193_SUBTOTAL_PARCIAL := 0;',
':P193_GRAVADAS := 0;',
':P193_GRAVADAS_SUBTOTAL := 0;',
':P193_EXENTAS := 0;',
':P193_EXENTAS_PARCIAL := 0;',
':P193_CALCULA_IVA:=''S'';',
'',
'VTCONFAC.tipo_cambio_dia(P_CAMBIO_MONEDA_PRECIO => :P193_CAMBIO_MONEDA_PRECIO,',
'                         P_COD_MONEDA_PRECIO    => :P193_COD_MONEDA_PRECIO);',
'',
' ',
'',
':P193_COD_CUSTODIO := VTCONFAC.busca_custodio_cabecera(P_COD_EMPRESA => :P193_COD_EMPRESA_VAR,',
'                                                       P_COD_USUARIO => :P193_COD_USUARIO_VAR);                                             '))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(61168977988524417)
,p_process_sequence=>40
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'CARGAR_PAGINA'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'--------------------------------------------------------------------------------------------------------------------------------------------------------------',
'-----------------------------------------------------------------------first da-------------------------------------------------------------------------------',
'',
'if  :P193_ID is not null then',
'begin',
'SELECT ',
'       CASE WHEN C002 IN (''FCO'',''FCR'') THEN ',
'                  CASE WHEN substr(C003,0,2) IN (''FE'') THEN ',
'                            ''https://ngosaeca.com.py/reportes/flow.html?_flowId=viewReportFlow&_flowId=viewReportFlow&ParentFolderUri=%2Freports&reportUnit=%2Freports%2FVTIMPFAC_DUPLICADO_FE&standAlone=true&j_username=jasperadmin&j_password=jasperadm'
||'in&output=pdf&P_COD_EMPRESA=1&P_TIP_COMPROBANTE=''||C002||''&P_SER_COMPROBANTE=''||C003||''&P_NRO_COMPROBANTE=''||C004||''&P_COD_CLIENTE=''||C012||''&P_REIMPRESO=N&P_IMPRIME_CONDICION=S&P_COD_USUARIO=''||:APP_USER',
'                       ELSE ',
'                            ''https://ngosaeca.com.py/reportes/flow.html?_flowId=viewReportFlow&_flowId=viewReportFlow&ParentFolderUri=%2Freports&reportUnit=%2Freports%2FVTIMPFAC_DUPLICADO&standAlone=true&j_username=jasperadmin&j_password=jasperadmin&'
||'output=pdf&P_COD_EMPRESA=1&P_TIP_COMPROBANTE=''||C002||''&P_SER_COMPROBANTE=''||C003||''&P_NRO_COMPROBANTE=''||C004||''&P_COD_CLIENTE=''||C012||''&P_REIMPRESO=N&P_IMPRIME_CONDICION=S&P_COD_USUARIO=''||:APP_USER',
'                  END',
'              WHEN C002 IN (''NCR'') THEN ',
'                 CASE WHEN substr(C003,0,2) IN (''FE'') THEN ',
'                            ''https://ngosaeca.com.py/reportes/flow.html?_flowId=viewReportFlow&_flowId=viewReportFlow&ParentFolderUri=%2Freports&reportUnit=%2Freports%2FVTIMPNCR_DUPLICADO_FE&standAlone=true&j_username=jasperadmin&j_password=jasperadm'
||'in&output=pdf&P_COD_EMPRESA=1&P_TIP_COMPROBANTE=''||C002||''&P_SER_COMPROBANTE=''||C003||''&P_NRO_COMPROBANTE=''||C004||''&P_COD_CLIENTE=''||C012',
'                       ELSE ',
'                            ''https://ngosaeca.com.py/reportes/flow.html?_flowId=viewReportFlow&_flowId=viewReportFlow&ParentFolderUri=%2Freports&reportUnit=%2Freports%2FVTIMPNCR_DUPLICADO&standAlone=true&j_username=jasperadmin&j_password=jasperadmin&'
||'output=pdf&P_COD_EMPRESA=1&P_TIP_COMPROBANTE=''||C002||''&P_SER_COMPROBANTE=''||C003||''&P_NRO_COMPROBANTE=''||C004||''&P_COD_CLIENTE=''||C012',
'                  END',
'               ',
'       END LINK_REP',
'  into :P193_URL_PRINT',
'  FROM APEX_COLLECTIONS A',
' WHERE A.COLLECTION_NAME = ''B_DATOS_DOC''',
' and c002||c003||c004 = :P193_ID ;',
' exception ',
' when others then ',
' null;',
'end;',
'BEGIN',
'    SELECT COD_SUCURSAL,FEC_COMPROBANTE,COD_CLIENTE,COD_VENDEDOR,TIP_COMPROBANTE_REF,SER_COMPROBANTE_REF,NRO_COMPROBANTE_REF,COD_CONDICION_VENTA, ',
'           COD_LISTA_PRECIO,DESCUENTO,COD_MONEDA,TIP_CAMBIO,TOT_COMPROBANTE,TOT_GRAVADAS,TOT_EXENTAS,TOT_IVA,NRO_MOV_CAJ,ESTADO,FEC_ESTADO,',
'           COD_USUARIO,CAMBIO_MONEDA_PRECIO,TIP_CAMBIO_COMPRA,COMENTARIO,GRU_COMPROBANTE,COD_SECTOR,TEL_CLIENTE,COLUMNA,RUC,DIR_CLIENTE,',
'           COD_DIRECCION,AJUSTE_IVA,COD_CUSTODIO,COD_CONDICION_VENTA_FAC,IND_EXENTO_AD,HORA_ALTA,RECARGO,TIP_OT,SER_OT,NRO_OT',
'    INTO :P193_COD_SUCURSAL,:P193_FEC_COMPROBANTE,:P193_COD_CLIENTE, :P193_COD_VENDEDOR, :P193_TIP_COMPROBANTE_REF, :P193_SER_COMPROBANTE_REF, :P193_NRO_COMPROBANTE_REF,',
'         :P193_COD_CONDICION_VENTA, :P193_COD_LISTA_PRECIO, :P193_DESCUENTO, :P193_COD_MONEDA, :P193_TIP_CAMBIO, :P193_TOTAL, :P193_GRAVADAS, :P193_EXENTAS, ',
'         :P193_TOTAL_IVA, :P193_NRO_MOV_CAJ, :P193_ESTADO, :P193_FEC_ESTADO, :P193_COD_USUARIO,',
'         :P193_CAMBIO_MONEDA_PRECIO, :P193_TIP_CAMBIO_COMPRA, :P193_COMENTARIO, :P193_GRU_COMPROBANTE, :P193_COD_SECTOR, :P193_TEL_CLIENTE,',
'         :P193_COLUMNA, :P193_RUC, :P193_DIR_CLIENTE, :P193_COD_DIRECCION, :P193_AJUSTE_IVA, :P193_COD_CUSTODIO, :P193_CONDICION_VENTA_FAC, ',
'         :P193_IND_EXENTO_AD,:P193_HORA_ALTA,:P193_RECARGO,:P193_TIP_OT, :P193_SER_OT, :P193_NRO_OT',
'    FROM VT_COMPROBANTES_CABECERA',
'    WHERE cod_empresa = :P_COD_EMPRESA',
'    and (tip_comprobante||ser_comprobante||nro_comprobante) = :P193_ID',
'    /*and ser_comprobante = :P193_SER_COMPROBANTE ',
'    and nro_comprobante = :P193_NRO_COMPROBANTE*/;',
'APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(P_COLLECTION_NAME => ''DET_COM'');',
'    :P193_ESTADO_ANT := :P193_ESTADO;',
'',
'    BEGIN',
'        select cl.tipo_impuesto ',
'          into :P193_TIPO_IMPUESTO',
'          from cc_clientes cl, personas pe',
'         where cl.cod_empresa = :P_COD_EMPRESA',
'           and cl.cod_cliente = :P193_COD_CLIENTE',
'           and cl.cod_persona = pe.cod_persona;',
'    EXCEPTION',
'        when others then',
'            NULL ;',
'    END;',
'    :P193_SUBTOTAL := nvl( :P193_TOTAL, 0 ) - nvl( :P193_TOTAL_IVA, 0 ) - nvl( :P193_AJUSTE_IVA, 0 ); ',
'    :P193_SUBTOTAL_PARCIAL := :P193_SUBTOTAL ;',
'    :P193_IVA_PARCIAL := :P193_TOTAL_IVA ;',
'    :P193_GRAVADAS_PARCIAL := :P193_GRAVADAS ;',
'    :P193_EXENTAS_PARCIAL := :P193_EXENTAS;',
'    ',
'EXCEPTION',
'    WHEN OTHERS THEN',
unistr('        RAISE_APPLICATION_ERROR(-20000, ''Ocurri\00F3 un error al cargar la cabecera. ''||sqlerrm);'),
'END;    ',
'  ',
'VTCONFAC.carga_detalle (P_CONFORMIDAD => :P013_CONFORMIDAD,',
'                        P_COD_EMPRESA => :P193_COD_EMPRESA_VAR,',
'                        P_TIP_COMPROBANTE_REF => :P193_TIP_COMPROBANTE_REF,',
'                        P_SER_COMPROBANTE_REF => :P193_SER_COMPROBANTE_REF,',
'                        P_NRO_COMPROBANTE_REF => :P193_NRO_COMPROBANTE_REF,',
'                        P_DECIMALES => TO_NUMBER(:P193_DECIMALES),',
'                        P_TIP_CONTADO => :P193_TIP_CONTADO_VAR,',
'                        P_TIP_CREDITO => :P193_TIP_CREDITO_VAR,',
'                        P_TIP_CVENTA => :P193_TIP_CVENTA_VAR,',
'                        P_TIP_COMPROBANTE => :P193_TIP_COMPROBANTE,',
'                        P_COD_ARTICULO => :P193_COD_ARTICULO, --PARAMETER.P_COD_ARTICULO',
'                        P_SER_VALE => :P193_SER_VALE, --PARAMETER.P_SER_VALE',
'                        P_NRO_VALE => :P193_NRO_VALE, --PARAMETER.P_NRO_VALE',
'                        P_NRO_OT => :P193_NRO_OT,',
'                        P_SER_OT => :P193_SER_OT,  --OUT',
'                        P_TIP_OT => :P193_TIP_OT,  --OUT',
'                        P_COD_CLIENTE => :P193_COD_CLIENTE, --OUT',
'                        P_TEL_CLIENTE => :P193_TEL_CLIENTE, --OUT',
'                        P_RUC => :P193_RUC, --OUT',
'                        P_COD_VENDEDOR => :P_COD_VENDEDOR, --OUT',
'                        P_COD_CONDICION_VENTA => :P193_COD_CONDICION_VENTA, --OUT',
'                        P_COD_CONDICION_VENTA_FAC => :P193_CONDICION_VENTA_FAC, --OUT',
'                        P_COD_MONEDA => :P193_COD_MONEDA, --OUT',
'                        P_COD_LISTA_PRECIO => :P193_COD_LISTA_PRECIO, --OUT',
'                        P_CAMBIO_MONEDA_PRECIO => :P193_CAMBIO_MONEDA_PRECIO, --OUT',
'                        P_RECARGO_CABECERA => :P193_RECARGO, --OUT',
'                        P_COD_SECTOR => :P193_COD_SECTOR, --OUT',
'                        P_CARGA_ITEMS => :P193_CARGA_ITEMS, --OUT',
'                        P_CALCULA_IVA => :P193_CALCULA_IVA, --OUT',
'                        P_MULT => :P193_MULT, --CABECERA --OUT',
'                        P_DIV => :P193_DIV, --OUT',
'                        P_RECARGO_VAR => :P193_RECARGO_VAR,',
'                        P_IVA_PARCIAL => :P193_IVA_PARCIAL, --OUT',
'                        P_SUBTOTAL_PARCIAL => :P193_SUBTOTAL_PARCIAL, --OUT',
'                        P_GRAVADAS_PARCIAL => :P193_GRAVADAS_PARCIAL, --OUT',
'                        P_EXCENTAS_PARCIAL => :P193_EXENTAS_PARCIAL, --OUT',
'                        P_PORCENTAJE_DESCUENTO => :P193_PORCENTAJE_DESCUENTO, --OUT',
'                        P_DESCUENTO => :P193_DESCUENTO, ',
'                        P_TOTAL_IVA => :P193_TOTAL_IVA, --OUT',
'                        P_AJUSTE_IVA => :P193_AJUSTE_IVA, --OUT',
'                        P_SUBTOTAL => :P193_SUBTOTAL, --OUT',
'                        P_GRAVADAS => :P193_GRAVADAS, --OUT',
'                        P_EXENTAS => :P193_EXENTAS, --OUT',
'                        P_RECARGO_PORC => :P193_RECARGO_PORC, --OUT',
'                        P_TOTAL => :P193_TOTAL,',
'                        P_DESCUENTO_DETALLE => :P193_DESCUENTO_DET,--OUT',
'                        P_RECARGO_DETALLE => :P193_RECARGO_DET);  --OUT      ',
'end if;',
'',
'',
'',
'--------------------------------------------------------------------------------------------------------------------------------------------------------------',
'-----------------------------------------------------------------------second da-------------------------------------------------------------------------------',
'',
'if :P193_ID IS NOT null then',
'BEGIN',
'    SELECT COD_SUCURSAL,FEC_COMPROBANTE,COD_CLIENTE,COD_VENDEDOR,TIP_COMPROBANTE,SER_COMPROBANTE,NRO_COMPROBANTE,COD_CONDICION_VENTA, ',
'           COD_LISTA_PRECIO,DESCUENTO,COD_MONEDA,TIP_CAMBIO,TOT_COMPROBANTE,TOT_GRAVADAS,TOT_EXENTAS,TOT_IVA,NRO_MOV_CAJ,ESTADO,FEC_ESTADO,',
'           COD_USUARIO,CAMBIO_MONEDA_PRECIO,TIP_CAMBIO_COMPRA,COMENTARIO,GRU_COMPROBANTE,COD_SECTOR,TEL_CLIENTE,COLUMNA,RUC,DIR_CLIENTE,',
'           COD_DIRECCION,AJUSTE_IVA,COD_CUSTODIO,COD_CONDICION_VENTA_FAC,IND_EXENTO_AD,HORA_ALTA,RECARGO,TIP_OT,SER_OT,NRO_OT',
'    INTO :P193_COD_SUCURSAL,:P193_FEC_COMPROBANTE,:P193_COD_CLIENTE, :P193_COD_VENDEDOR, ',
'    :P193_TIP_COMPROBANTE, :P193_SER_COMPROBANTE, :P193_NRO_COMPROBANTE,',
'         :P193_COD_CONDICION_VENTA, :P193_COD_LISTA_PRECIO, :P193_DESCUENTO, :P193_COD_MONEDA, :P193_TIP_CAMBIO, :P193_TOTAL, :P193_GRAVADAS, :P193_EXENTAS, ',
'         :P193_TOTAL_IVA, :P193_NRO_MOV_CAJ, :P193_ESTADO, :P193_FEC_ESTADO, :P193_COD_USUARIO,',
'         :P193_CAMBIO_MONEDA_PRECIO, :P193_TIP_CAMBIO_COMPRA, :P193_COMENTARIO, :P193_GRU_COMPROBANTE, :P193_COD_SECTOR, :P193_TEL_CLIENTE,',
'         :P193_COLUMNA, :P193_RUC, :P193_DIR_CLIENTE, :P193_COD_DIRECCION, :P193_AJUSTE_IVA, :P193_COD_CUSTODIO, :P193_CONDICION_VENTA_FAC, ',
'         :P193_IND_EXENTO_AD,:P193_HORA_ALTA,:P193_RECARGO,:P193_TIP_OT, :P193_SER_OT, :P193_NRO_OT',
'    FROM VT_COMPROBANTES_CABECERA',
'    WHERE cod_empresa = :P_COD_EMPRESA',
'    and (tip_comprobante||ser_comprobante||nro_comprobante) = :P193_ID',
'    /*and tip_comprobante_ref = :P193_TIP_COMPROBANTE_ref',
'    and ser_comprobante_ref = :P193_SER_COMPROBANTE_ref',
'    and nro_comprobante_ref = :P193_NRO_COMPROBANTE_ref*/',
'    AND ROWNUM=1;',
'APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(P_COLLECTION_NAME => ''DET_COM'');',
'    :P193_ESTADO_ANT := :P193_ESTADO;',
'',
'    BEGIN',
'        select cl.tipo_impuesto ',
'          into :P193_TIPO_IMPUESTO',
'          from cc_clientes cl, personas pe',
'         where cl.cod_empresa = :P_COD_EMPRESA',
'           and cl.cod_cliente = :P193_COD_CLIENTE',
'           and cl.cod_persona = pe.cod_persona;',
'    EXCEPTION',
'        when others then',
'            NULL ;',
'    END;',
'    :P193_SUBTOTAL := nvl( :P193_TOTAL, 0 ) - nvl( :P193_TOTAL_IVA, 0 ) - nvl( :P193_AJUSTE_IVA, 0 ); ',
'    :P193_SUBTOTAL_PARCIAL := :P193_SUBTOTAL ;',
'    :P193_IVA_PARCIAL := :P193_TOTAL_IVA ;',
'    :P193_GRAVADAS_PARCIAL := :P193_GRAVADAS ;',
'    :P193_EXENTAS_PARCIAL := :P193_EXENTAS;',
'    ',
'EXCEPTION',
'    WHEN OTHERS THEN',
unistr('        RAISE_APPLICATION_ERROR(-20000, ''Ocurri\00F3 un error al cargar la cabecera. ''||sqlerrm);'),
'END;            ',
'end if;',
'',
'',
'',
'------------------------------------------------------------------------------------------------------------------------------------------------------------------------',
'----------------------------------------------------------------third da------------------------------------------------------------------------------------',
' DECLARE',
'    VDESC_ARTICULO VARCHAR2(100);',
'    VCOD_GRUPO_ART VARCHAR2(5); ',
'    VCOD_MONEDA_BASE VARCHAR2(5);',
'BEGIN',
'',
'    FOR CC IN (SELECT COD_ARTICULO,CANTIDAD,PRECIO_UNITARIO,PRECIO_LISTA,DESCUENTO,MONTO_TOTAL,TOTAL_IVA,COSTO_PROMEDIO,COSTO_PROMEDIO_REF, ',
'                      CANTIDAD_UB,PORC_DESCUENTO,COD_UNIDAD_MEDIDA,NRO_LOTE,PORC_RECARGO,RECARGO,PORC_IVA,IND_RENTA,COD_IVA,PORC_IVA_AD,NRO_PROMO,SER_PEDIDO,NRO_PEDIDO,',
'                      MONTO_EXENTA,MONTO_GRAVADA_5,MONTO_GRAVADA_10',
'                 FROM VT_COMPROBANTES_DETALLE',
'                WHERE cod_empresa = :P_COD_EMPRESA',
'                and (tip_comprobante||ser_comprobante||nro_comprobante) = :P193_ID',
'                  /*and tip_comprobante = :P193_TIP_COMPROBANTE ',
'                  and ser_comprobante = :P193_SER_COMPROBANTE ',
'                  and nro_comprobante = :P193_NRO_COMPROBANTE*/) ',
'    LOOP',
'        Begin',
'            select descripcion, cod_grupo_art, cod_moneda_base',
'              into VDESC_ARTICULO, VCOD_GRUPO_ART, VCOD_MONEDA_BASE',
'              from st_articulos',
'             where cod_empresa = :P_COD_EMPRESA',
'               and cod_articulo = CC.COD_ARTICULO;',
'        exception',
'            when others then',
'                VDESC_ARTICULO := NULL; ',
'                VCOD_GRUPO_ART := NULL;      ',
'        end;',
'        APEX_COLLECTION.ADD_MEMBER (P_COLLECTION_NAME => ''DET_COM'',    ',
'                                               P_C001 => CC.MONTO_TOTAL, --IMPORTE_ANT (POST-QUERY BLOQUE DETALLE)',
'                                               P_C002 => CC.TOTAL_IVA,  --IVA_ANT (POST-QUERY BLOQUE DETALLE)',
'                                               P_C003 => CC.COD_ARTICULO, ',
'                                               P_C004 => CC.COSTO_PROMEDIO,',
'                                               P_C005 => CC.COSTO_PROMEDIO_REF,',
'                                               P_C006 => CC.NRO_LOTE,',
'                                               P_C007 => CC.CANTIDAD,',
'                                               P_C010 => CC.PRECIO_UNITARIO, ',
'                                               P_C011 => CC.PORC_IVA,',
'                                               P_C012 => CC.IND_RENTA,',
'                                               P_C013 => CC.PRECIO_LISTA,',
'                                               P_C014 => CC.PORC_DESCUENTO,  ',
'                                               P_C015 => CC.PORC_RECARGO, ',
'                                               P_C016 => CC.COD_IVA,',
'                                               P_C017 => CC.NRO_PROMO,',
'                                               P_C018 => CC.TOTAL_IVA,',
'                                               P_C019 => CC.SER_PEDIDO,',
'                                               P_C020 => CC.NRO_PEDIDO, ',
'                                               P_C021 => CC.RECARGO,',
'                                               P_C022 => CC.DESCUENTO,',
'                                               P_C024 => VDESC_ARTICULO,',
'                                               P_C025 => VCOD_GRUPO_ART, --(POST-QUERY BLOQUE DETALLE)',
'                                               P_C026 => VCOD_MONEDA_BASE, --(POST-QUERY BLOQUE DETALLE)',
'                                               P_C027 => CC.MONTO_TOTAL,',
'                                               P_C028 => CC.MONTO_EXENTA,',
'                                               P_C029 => CC.MONTO_GRAVADA_10, ',
'                                               P_C030 => CC.MONTO_GRAVADA_5,',
'                                               P_C031 => CC.CANTIDAD_UB,',
'                                               P_C032 => CC.PORC_IVA_AD,',
'                                               P_C033 => CC.COD_UNIDAD_MEDIDA); ',
'        :P193_RECARGO_DET := CC.RECARGO;',
'        :P193_DESCUENTO_DET := CC.DESCUENTO;                                        ',
'    END LOOP;                                             ',
'EXCEPTION',
'    WHEN OTHERS THEN',
unistr('        RAISE_APPLICATION_ERROR(-20000, ''Ocurri\00F3 un error al cargar el detalle. ''||sqlerrm);'),
'END; '))
,p_process_clob_language=>'PLSQL'
,p_process_when=>'P193_VISITA'
,p_process_when_type=>'ITEM_IS_NOT_NULL'
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
 p_id=>wwv_flow_imp.id(42472319046173105)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'LIMPIAR_TODO'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
null;
wwv_flow_imp.component_end;
end;
/
