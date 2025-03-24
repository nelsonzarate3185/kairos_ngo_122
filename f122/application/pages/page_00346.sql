prompt --application/pages/page_00346
begin
--   Manifest
--     PAGE: 00346
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
 p_id=>346
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Facturacion Masiva - RPFACMAS'
,p_alias=>'RPFACMAS'
,p_step_title=>'Facturacion Masiva - RPFACMAS'
,p_autocomplete_on_off=>'OFF'
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
''))
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function doVtimpfacCanon(p_cod_empresa, p_cod_cliente, p_pagado, p_reimpreso,',
'                         p_tip_comprobante, p_cod_usuario, p_ser_comprobante, ',
'                         p_nro_comprobante, p_imprime_condicion){',
'  var v_nom_rep = apex.item(''P346_FACTURA_REP'').getValue();',
'   var vURL = ''https://ngosaeca.com.py/reportes/rest_v2/reports/reports/''+v_nom_rep+''.pdf?''',
'            + ''P_COD_EMPRESA='' + p_cod_empresa +',
'             ''&P_COD_CLIENTE='' + p_cod_cliente +',
'             ''&P_PAGADO='' + p_pagado +',
'             ''&P_REIMPRESO='' + p_reimpreso +',
'             ''&P_TIP_COMPROBANTE='' + p_tip_comprobante +',
'             ''&P_COD_USUARIO='' + p_cod_usuario +',
'             ''&P_SER_COMPROBANTE='' + p_ser_comprobante + ',
'             ''&P_NRO_COMPROBANTE='' + p_nro_comprobante +',
'             ''&P_IMPRIME_CONDICION='' + p_imprime_condicion +                  ',
'             ''&j_username=jasperadmin&j_password=jasperadmin'';',
'',
'    console.log(vURL);',
'    window.open(unescape(vURL.replace(/&amp;/g,''g'')),''_blank'');',
'}',
'',
'',
'function doRpfactmaspla(p_cod_empresa, p_nro_planilla){',
'',
'   var vURL = ''https://ngosaeca.com.py/reportes/rest_v2/reports/reports/RPFACTMASPLA.pdf?''',
'            + ''P_COD_EMPRESA='' + p_cod_empresa +',
'             ''&P_NRO_PLANILLA='' + p_nro_planilla +',
'             ''&j_username=jasperadmin&j_password=jasperadmin'';',
'',
'    console.log(vURL);',
'    window.open(unescape(vURL.replace(/&amp;/g,''g'')),''_blank'');',
'}',
'',
'',
'function doCCRecibo(p_ser_comprobante, p_nro_comprobante){',
'',
'   var vURL = ''https://ngosaeca.com.py/reportes/rest_v2/reports/reports/ccrecibo.pdf?''',
'            + ''P_SER_COMPROBANTE='' + p_ser_comprobante +',
'             ''&P_NRO_COMPROBANTE='' + p_nro_comprobante +',
'             ''&j_username=jasperadmin&j_password=jasperadmin'';',
'',
'    console.log(vURL);',
'    window.open(unescape(vURL.replace(/&amp;/g,''g'')),''_blank'');',
'}',
'',
'function doCCPagareUnico(p_cod_empresa, p_cod_cliente, p_tip_comprobante,',
'                         p_ser_comprobante, p_motivo, p_nro_comprobante){',
'',
'   var vURL = ''https://ngosaeca.com.py/reportes/rest_v2/reports/reports/CCPAGARE_UNICO.pdf?''',
'            + ''P_COD_EMPRESA='' + p_cod_empresa +',
'             ''&P_COD_CLIENTE='' + p_cod_cliente +',
'             ''&P_TIP_COMPROBANTE='' + p_tip_comprobante +',
'             ''&P_SER_COMPROBANTE='' + p_ser_comprobante +',
'             ''&P_MOTIVO='' + p_motivo +',
'             ''&P_NRO_COMPROBANTE='' + p_nro_comprobante +',
'             ''&j_username=jasperadmin&j_password=jasperadmin'';',
'',
'    console.log(vURL);',
'    window.open(unescape(vURL.replace(/&amp;/g,''g'')),''_blank'');',
'}',
'',
'',
'',
'function doCCPagareEmp(p_cod_empresa, p_cod_cliente, p_tip_comprobante, p_cod_usuario,',
'                         p_ser_comprobante, p_motivo, p_nro_comprobante){',
'',
'   var vURL = ''https://ngosaeca.com.py/reportes/rest_v2/reports/reports/CCPAGARE_EMP.pdf?''',
'            + ''P_COD_EMPRESA='' + p_cod_empresa +',
'             ''&P_COD_CLIENTE='' + p_cod_cliente +',
'             ''&P_TIP_COMPROBANTE='' + p_tip_comprobante +',
'             ''&P_COD_USUARIO='' + p_cod_usuario +',
'             ''&P_SER_COMPROBANTE='' + p_ser_comprobante +',
'             ''&P_MOTIVO='' + p_motivo +',
'             ''&P_NRO_COMPROBANTE='' + p_nro_comprobante +',
'             ''&j_username=jasperadmin&j_password=jasperadmin'';',
'',
'    console.log(vURL);',
'    window.open(unescape(vURL.replace(/&amp;/g,''g'')),''_blank'');',
'}',
'',
'',
'function doCCPagareOficioCanon (p_cod_empresa, p_cod_cliente, p_tip_comprobante,',
'                                p_ser_comprobante, p_motivo, p_nro_comprobante){',
'',
'   var vURL = ''https://ngosaeca.com.py/reportes/rest_v2/reports/reports/CCPAGARE_OFICIO_CANON.pdf?''',
'            + ''P_COD_EMPRESA='' + p_cod_empresa +',
'             ''&P_COD_CLIENTE='' + p_cod_cliente +',
'             ''&P_TIP_COMPROBANTE='' + p_tip_comprobante +',
'             ''&P_SER_COMPROBANTE='' + p_ser_comprobante +',
'             ''&P_MOTIVO='' + p_motivo +',
'             ''&P_NRO_COMPROBANTE='' + p_nro_comprobante +',
'             ''&j_username=jasperadmin&j_password=jasperadmin'';',
'',
'    console.log(vURL);',
'    window.open(unescape(vURL.replace(/&amp;/g,''g'')),''_blank'');',
'}',
'',
'',
'function doStremaut (p_cod_empresa, p_cod_cliente, p_tip_comprobante, p_ser_comprobante, ',
'                     p_nro_comprobante, p_cod_usuario, p_ind_ean, p_reimpresion){',
'',
'   var vURL = ''https://ngosaeca.com.py/reportes/rest_v2/reports/reports/STREMAUT_FE.pdf?''',
'            + ''P_COD_EMPRESA='' + p_cod_empresa +',
'             ''&P_COD_CLIENTE='' + p_cod_cliente +',
'             ''&P_TIP_COMPROBANTE='' + p_tip_comprobante +',
'             ''&P_SER_COMPROBANTE='' + p_ser_comprobante +',
'             ''&P_NRO_COMPROBANTE='' + p_nro_comprobante +',
'             ''&P_USUARIO='' + p_cod_usuario +',
'             ''&P_IND_EAN='' + p_ind_ean +',
'             ''&P_REIMPRESION='' + p_reimpresion +             ',
'             ''&j_username=jasperadmin&j_password=jasperadmin'';',
'',
'    console.log(vURL);',
'    window.open(unescape(vURL.replace(/&amp;/g,''g'')),''_blank'');',
'}',
'',
'function doVtimpNcrCanon (p_cod_empresa, p_cod_cliente, p_tip_comprobante, ',
'                          p_ser_comprobante, p_nro_comprobante){',
'',
'                         console.log("entro doStremaut");',
'   var vURL = ''https://ngosaeca.com.py/reportes/rest_v2/reports/reports/VTIMPNCR_CANON_FE.pdf?''',
'            + ''P_COD_EMPRESA='' + p_cod_empresa +',
'             ''&P_COD_CLIENTE='' + p_cod_cliente +',
'             ''&P_TIP_COMPROBANTE='' + p_tip_comprobante +',
'             ''&P_SER_COMPROBANTE='' + p_ser_comprobante +',
'             ''&P_NRO_COMPROBANTE='' + p_nro_comprobante +            ',
'             ''&j_username=jasperadmin&j_password=jasperadmin'';',
'',
'    console.log(vURL);',
'    window.open(unescape(vURL.replace(/&amp;/g,''g'')),''_blank'');',
'}',
'',
'',
'function doStremautMasivo (p_cod_empresa, p_nro_plantilla, p_cod_usuario){',
'                ',
'   var vURL = ''https://ngosaeca.com.py/reportes/rest_v2/reports/reports/STREMAUT_MASIVO.pdf?''',
'            + ''P_COD_EMPRESA='' + p_cod_empresa +',
'             ''&P_NRO_PLANILLA='' + p_nro_plantilla +',
'             ''&P_USUARIO='' + p_cod_usuario +          ',
'             ''&j_username=jasperadmin&j_password=jasperadmin'';',
'',
'    console.log(vURL);',
'    window.open(unescape(vURL.replace(/&amp;/g,''g'')),''_blank'');',
'}',
'',
'function doCCReciboMasivo (p_cod_empresa, p_nro_plantilla, p_cod_usuario){',
'                ',
'   var vURL = ''https://ngosaeca.com.py/reportes/rest_v2/reports/reports/CCRECIBO_MASIVO.pdf?''',
'            + ''P_COD_EMPRESA='' + p_cod_empresa +',
'             ''&P_NRO_PLANILLA='' + p_nro_plantilla +',
'             ''&P_USUARIO='' + p_cod_usuario +          ',
'             ''&j_username=jasperadmin&j_password=jasperadmin'';',
'',
'    console.log(vURL);',
'    window.open(unescape(vURL.replace(/&amp;/g,''g'')),''_blank'');',
'}',
'',
'function doVtimpfacCanonFe (p_cod_empresa, p_nro_plantilla, p_cod_usuario){',
'                ',
'   var vURL = ''https://ngosaeca.com.py/reportes/rest_v2/reports/reports/VTIMPNCR_CANON_FE_MASIVO.pdf?''',
'            + ''P_COD_EMPRESA='' + p_cod_empresa +',
'             ''&P_NRO_PLANILLA='' + p_nro_plantilla +',
'             ''&P_USUARIO='' + p_cod_usuario +          ',
'             ''&j_username=jasperadmin&j_password=jasperadmin'';',
'',
'    console.log(vURL);',
'    window.open(unescape(vURL.replace(/&amp;/g,''g'')),''_blank'');',
'}',
'',
'function doVtimpfacCanonFeMasivo (p_cod_empresa, p_nro_plantilla, p_cod_usuario){',
'   var v_nom_rep = apex.item(''P346_FACMAS_REP'').getValue();',
'   var vURL = ''https://ngosaeca.com.py/reportes/flow.html?_flowId=viewReportFlow&_flowId=viewReportFlow&ParentFolderUri=%2Freports&reportUnit=%2Freports%2F''+v_nom_rep+''&standAlone=true&j_username=jasperadmin&j_password=jasperadmin&output=pdf&''',
'            + ''P_COD_EMPRESA='' + p_cod_empresa +',
'             ''&P_NRO_PLANILLA='' + p_nro_plantilla +',
'             ''&P_USUARIO='' + p_cod_usuario +          ',
'             ''&j_username=jasperadmin&j_password=jasperadmin'';',
'',
'    console.log(vURL);',
'    window.open(unescape(vURL.replace(/&amp;/g,''g'')),''_blank'');',
'}',
'',
'function doPagareMasivo (p_cod_empresa, p_nro_plantilla){',
'                ',
'   var vURL = ''https://ngosaeca.com.py/reportes/rest_v2/reports/reports/CCPAGARE_MASIVO.pdf?''',
'            + ''P_COD_EMPRESA='' + p_cod_empresa +',
'             ''&P_NRO_PLANILLA='' + p_nro_plantilla +       ',
'             ''&j_username=jasperadmin&j_password=jasperadmin'';',
'',
'    console.log(vURL);',
'    window.open(unescape(vURL.replace(/&amp;/g,''g'')),''_blank'');',
'}',
'',
'',
'',
'',
'',
''))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.t-Region-headerItems--title {',
'    flex-grow: 1;',
'    flex-shrink: 0;',
'    flex-basis: auto;',
'    text-align: left;',
'    padding: 1.2rem;',
'    display: flex;',
'    align-items: center;',
'    padding-left: 0;',
'}',
'.apex-item-select:focus, .apex-item-text:focus, .apex-item-textarea:focus {',
'   background-color: #FFED00 !important;',
'   border-color: #8f0000 !important;',
'}',
'',
'.apex-item-select,  .apex-item-text , .apex-item-textarea  {',
'  border-color: #b4c6dd !important;',
'}',
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
'',
' '))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'NZARATE'
,p_last_upd_yyyymmddhh24miss=>'20241031082526'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(94035155548281250)
,p_plug_name=>'CABECERA'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>1020
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(95863810464277601)
,p_plug_name=>'IZQUIERDA'
,p_parent_plug_id=>wwv_flow_imp.id(94035155548281250)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(95863938039277602)
,p_plug_name=>'CENTRO'
,p_parent_plug_id=>wwv_flow_imp.id(94035155548281250)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(95864050178277603)
,p_plug_name=>'DERECHA'
,p_parent_plug_id=>wwv_flow_imp.id(94035155548281250)
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
 p_id=>wwv_flow_imp.id(95865717447277620)
,p_plug_name=>'ESTADOS PLANTILLA'
,p_parent_plug_id=>wwv_flow_imp.id(95864050178277603)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(95865899403277621)
,p_plug_name=>unistr('VISUALIZACI\00D3N')
,p_parent_plug_id=>wwv_flow_imp.id(95864050178277603)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(95864645365277609)
,p_plug_name=>'VARIABLES'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>990
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(95864738042277610)
,p_plug_name=>'INDICADORES'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>1010
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(95866272705277625)
,p_plug_name=>'REPORTE PLANILLA'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>1030
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'       NULL DETALLE,',
'       seq_id SEQ_ID_PLANILLA,',
'       n001 NRO_PLANILLA,',
'       d001 FEC_PLANILLA,',
'       c001 COD_VEHICULO,',
'       c002 COD_REPARTIDOR,',
'       n002 TOTAL,',
'       c003 ESTADO,',
'       c004 PLANILLA_FACTURADA,',
'       n003 CANTIDAD_PEDIDOS,',
'       n004 CANTIDAD_CLIENTES,',
'       c005 COD_SUCURSAL,',
'       c006 TIPO_ENTREGA,',
'       c007 HORA_ALTA,',
'       c008 TIPO_PEDIDO,',
'       NULL IMPRIMIR,',
'       NULL BTN_COORD',
'',
'FROM APEX_COLLECTIONS',
'WHERE COLLECTION_NAME = ''VW_PLANILLA''',
'AND :P346_INDICADOR_REPORT_PLANILLA = ''1''',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P346_VISUAL,P346_INDICADOR_REPORT_PLANILLA,P346_COD_SUCURSAL_REPARTO,P346_COD_VEHICULO,P346_COD_REPARTIDOR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'REPORTE PLANILLA'
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
 p_id=>wwv_flow_imp.id(95866341723277626)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'EMILIANOP'
,p_internal_uid=>95866341723277626
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(95866458143277627)
,p_db_column_name=>'NRO_PLANILLA'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Nro Planilla'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(95866564687277628)
,p_db_column_name=>'FEC_PLANILLA'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Fec Planilla'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(95866629490277629)
,p_db_column_name=>'COD_VEHICULO'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Cod Vehiculo'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(95866753264277630)
,p_db_column_name=>'COD_REPARTIDOR'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Cod Repartidor'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(95866812577277631)
,p_db_column_name=>'TOTAL'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Total'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(95867033139277633)
,p_db_column_name=>'PLANILLA_FACTURADA'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Planilla Facturada'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(95867145693277634)
,p_db_column_name=>'CANTIDAD_PEDIDOS'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Cantidad Pedidos'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(95867243598277635)
,p_db_column_name=>'CANTIDAD_CLIENTES'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Cantidad Clientes'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(95867311089277636)
,p_db_column_name=>'COD_SUCURSAL'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Sucursal'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'CENTER'
,p_rpt_named_lov=>wwv_flow_imp.id(41127354264101747)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(95867478800277637)
,p_db_column_name=>'TIPO_ENTREGA'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Tipo Entrega'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(95867587075277638)
,p_db_column_name=>'HORA_ALTA'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Hora Alta'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(95867619840277639)
,p_db_column_name=>'TIPO_PEDIDO'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Tipo Pedido'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(95868163306277644)
,p_db_column_name=>'IMPRIMIR'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Imprimir'
,p_column_link=>'javascript:$s(''P346_SEQ_LLAMAR_RPFACTMASPLA'',''#SEQ_ID_PLANILLA#'');'
,p_column_linktext=>'<span class="fa fa-print" aria-hidden="true"></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(95868258520277645)
,p_db_column_name=>'BTN_COORD'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Procesar Planilla'
,p_column_link=>'javascript:$s(''P346_SEQ_ID_PLANILLA_DETALLE'',''#SEQ_ID_PLANILLA#'');'
,p_column_linktext=>'<span class="fa fa-search" aria-hidden="true"></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(96599289604832027)
,p_db_column_name=>'SEQ_ID_PLANILLA'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Seq Id Planilla'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(96600300003832038)
,p_db_column_name=>'DETALLE'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Ver Planilla'
,p_column_link=>'javascript:$s(''P346_SEQ_ID_LLAMAR_RPPLAPED'',''#SEQ_ID_PLANILLA#'');'
,p_column_linktext=>'<span class="fa fa-search" aria-hidden="true"></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(97532433792270831)
,p_db_column_name=>'ESTADO'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'Estado'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'CENTER'
,p_rpt_named_lov=>wwv_flow_imp.id(109068508478705805)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(96235890577994938)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'962359'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'DETALLE:NRO_PLANILLA:COD_SUCURSAL:FEC_PLANILLA:TOTAL:ESTADO:CANTIDAD_PEDIDOS:CANTIDAD_CLIENTES:TIPO_ENTREGA:HORA_ALTA:TIPO_PEDIDO:IMPRIMIR:BTN_COORD:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(96597845031832013)
,p_plug_name=>'SEQ ID'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>1000
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(96599842834832033)
,p_plug_name=>'FACTURA'
,p_region_css_classes=>'js-dialog-size1400x780'
,p_region_template_options=>'#DEFAULT#:js-dialog-size600x400'
,p_region_attributes=>'style="height: 700px;"'
,p_plug_template=>wwv_flow_imp.id(40120082745263659)
,p_plug_display_sequence=>1050
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(96596763400832002)
,p_plug_name=>'CABECERA 2'
,p_parent_plug_id=>wwv_flow_imp.id(96599842834832033)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>1040
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(96596979765832004)
,p_plug_name=>'IZQUIERDA'
,p_parent_plug_id=>wwv_flow_imp.id(96596763400832002)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(96597060599832005)
,p_plug_name=>'DERECHA'
,p_parent_plug_id=>wwv_flow_imp.id(96596763400832002)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(104534636131693823)
,p_plug_name=>'New'
,p_parent_plug_id=>wwv_flow_imp.id(96597060599832005)
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--noPadding:t-ButtonRegion--noUI'
,p_plug_template=>wwv_flow_imp.id(40097820288263654)
,p_plug_display_sequence=>30
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(104534722136693824)
,p_plug_name=>'&nbsp'
,p_parent_plug_id=>wwv_flow_imp.id(96597060599832005)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--noBorder:t-Region--scrollBody:t-Form--noPadding'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>20
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(104537170847693848)
,p_plug_name=>'New'
,p_parent_plug_id=>wwv_flow_imp.id(96597060599832005)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>50
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(104537230789693849)
,p_plug_name=>'New'
,p_parent_plug_id=>wwv_flow_imp.id(96597060599832005)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>60
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(107239396947845203)
,p_plug_name=>'New'
,p_parent_plug_id=>wwv_flow_imp.id(96597060599832005)
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--noPadding:t-ButtonRegion--noUI'
,p_plug_template=>wwv_flow_imp.id(40097820288263654)
,p_plug_display_sequence=>40
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(97530995479270816)
,p_plug_name=>'REPORTE FACTURAS'
,p_parent_plug_id=>wwv_flow_imp.id(96599842834832033)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>1050
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'        seq_id SEQ_ID_FACTURA,',
'        c001 tip_comprobante,',
'        c002 ser_comprobante,',
'        n001 nro_comprobante,',
'        c003 pedido,',
'        c004 COD_MONEDA,',
'        c005 TIP_CAMBIO,',
'        n002 total,',
'        c006 COD_CLIENTE,',
'        c007 NOM_CLIENTE,',
'        c008 nro_remision,',
'        c009 observacion,',
'        n003 nro_recibo,',
'        n004 nro_canje,',
'        c021 row_id,',
'        NULL FACTURA,',
'        NULL RECIBOD,',
'        NULL PAGARES,',
'        NULL RE,',
'        NULL NCR',
'',
'FROM APEX_COLLECTIONS',
'WHERE COLLECTION_NAME = ''DETALLE_FACTURA''',
'AND :P346_INDICADOR_REPORT_FACTURAS = ''1'';'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P346_INDICADOR_REPORT_FACTURAS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'REPORTE FACTURAS'
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
 p_id=>wwv_flow_imp.id(97531017671270817)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'EMILIANOP'
,p_internal_uid=>97531017671270817
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(97531104830270818)
,p_db_column_name=>'SEQ_ID_FACTURA'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Seq Id Factura'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(97531254612270819)
,p_db_column_name=>'TIP_COMPROBANTE'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Tip Comprobante'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(97531395471270820)
,p_db_column_name=>'SER_COMPROBANTE'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Ser Comprobante'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(97531488257270821)
,p_db_column_name=>'NRO_COMPROBANTE'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Nro Comprobante'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(97531565925270822)
,p_db_column_name=>'PEDIDO'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Pedido'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(97531606810270823)
,p_db_column_name=>'COD_MONEDA'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Cod Moneda'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(97531758538270824)
,p_db_column_name=>'TIP_CAMBIO'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Tip Cambio'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(97531820825270825)
,p_db_column_name=>'TOTAL'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Total'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_format_mask=>'999G999G999G999G990D00'
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
 p_id=>wwv_flow_imp.id(97531994500270826)
,p_db_column_name=>'COD_CLIENTE'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Cod Cliente'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(97532072277270827)
,p_db_column_name=>'NOM_CLIENTE'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Nom Cliente'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(97532152570270828)
,p_db_column_name=>'NRO_REMISION'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Nro Remision'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(97532213916270829)
,p_db_column_name=>'ROW_ID'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Row Id'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(99766039222877202)
,p_db_column_name=>'FACTURA'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'F'
,p_column_link=>'javascript:$s(''P346_SEQ_ID_FACTURA_REP_FAC'',''#SEQ_ID_FACTURA#'');'
,p_column_linktext=>'<span class="fa fa-print" aria-hidden="true"></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(99766152036877203)
,p_db_column_name=>'RECIBOD'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'R'
,p_column_link=>'javascript:$s(''P346_SEQ_ID_FACTURA_REP_REC'',''#SEQ_ID_FACTURA#'');'
,p_column_linktext=>'<span class="fa fa-print" aria-hidden="true"></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(99766282436877204)
,p_db_column_name=>'PAGARES'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'P'
,p_column_link=>'javascript:$s(''P346_SEQ_ID_FACTURA_REP_PAG'',''#SEQ_ID_FACTURA#'');'
,p_column_linktext=>'<span class="fa fa-print" aria-hidden="true"></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(99766387643877205)
,p_db_column_name=>'RE'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Re'
,p_column_link=>'javascript:$s(''P346_SEQ_ID_FACTURA_REP_RE'',''#SEQ_ID_FACTURA#'');'
,p_column_linktext=>'<span class="fa fa-print" aria-hidden="true"></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(99766414923877206)
,p_db_column_name=>'NCR'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'NC'
,p_column_link=>'javascript:$s(''P346_SEQ_ID_FACTURA_REP_NC'',''#SEQ_ID_FACTURA#'');'
,p_column_linktext=>'<span class="fa fa-print" aria-hidden="true"></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(99766589653877207)
,p_db_column_name=>'OBSERVACION'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'Observacion'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(104535421386693831)
,p_db_column_name=>'NRO_RECIBO'
,p_display_order=>190
,p_column_identifier=>'U'
,p_column_label=>'Nro Recibo'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(104535587354693832)
,p_db_column_name=>'NRO_CANJE'
,p_display_order=>200
,p_column_identifier=>'V'
,p_column_label=>'Nro Canje'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(99306593811884170)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'993066'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'TIP_COMPROBANTE:SER_COMPROBANTE:NRO_COMPROBANTE:PEDIDO:COD_CLIENTE:TOTAL:NRO_REMISION:NRO_CANJE:NRO_RECIBO:OBSERVACION:FACTURA:RECIBOD:PAGARES:RE:NCR:'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(97530581412270812)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(104537230789693849)
,p_button_name=>'BTN_BUSCAR_FAC'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--simple:t-Button--iconRight:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Buscar'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'LEFT'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-clipboard-search'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(97530611638270813)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(104537230789693849)
,p_button_name=>'BTN_RESERVA_FAC'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--simple:t-Button--iconRight:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Borrar Reserva'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'LEFT'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-trash-o'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(97533640321270843)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(104537230789693849)
,p_button_name=>'BTN_PROCESA_CPH'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight:t-Button--gapRight:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Procesa CPH'
,p_button_position=>'BELOW_BOX'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-tools'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(354906962743081117)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(104537230789693849)
,p_button_name=>'BTN_PROCESA_BH'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight:t-Button--gapRight:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Procesa Best Home'
,p_button_position=>'BELOW_BOX'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-tools'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(97530444284270811)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(104537170847693848)
,p_button_name=>'BTN_DETALLE_FACTURAS'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Detalle de Pedidos y  Facturas'
,p_warn_on_unsaved_changes=>null
,p_button_cattributes=>'style="width: 340px;     background: #5454cc;"'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(95866104286277624)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(95863938039277602)
,p_button_name=>'BTN_BUSCAR_PLANILLA'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Buscar Planilla'
,p_button_position=>'BOTTOM'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(95868598946277648)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(95863938039277602)
,p_button_name=>'BTN_LIMPIAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Limpiar Campos'
,p_button_position=>'BOTTOM'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(96601586372832050)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(107239396947845203)
,p_button_name=>'BTN_IMPRIMIR_FACTURAS'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Imprimir Facturas'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-print'
,p_button_cattributes=>'style="width: 170px;"'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(97529455603270801)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(104534636131693823)
,p_button_name=>'BTN_IMPRIMIR_RECIBOS'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Imprimir Recibos'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-print'
,p_button_cattributes=>'style="width: 170px;"'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(97529577118270802)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(104534636131693823)
,p_button_name=>'BTN_IMPRIMIR_PAGARES'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Imprimir Pagares'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-print'
,p_button_cattributes=>'style="width: 170px;"'
,p_grid_new_row=>'Y'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(97529661453270803)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(104534636131693823)
,p_button_name=>'BTN_IMPRIMIR_REMISIONES'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Imprimir Remisiones'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-print'
,p_button_cattributes=>'style="width: 170px;"'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(97529798214270804)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(107239396947845203)
,p_button_name=>'BTN_IMPRIMIR_NCS'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Imprimir NCRS'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-print'
,p_button_cattributes=>'style="width: 170px;"'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(96601254655832047)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(104534722136693824)
,p_button_name=>'BTN_VOLVER'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--simple:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Volver'
,p_button_position=>'EDIT'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-arrow-circle-left'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(96601184156832046)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(104534722136693824)
,p_button_name=>'BTN_FACTURAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Procesar Planilla'
,p_button_position=>'LEFT_OF_TITLE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(194843232422616035)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(104534722136693824)
,p_button_name=>'BTN_FACTURAR_1'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Procesar Planilla tesss'
,p_button_position=>'LEFT_OF_TITLE'
,p_warn_on_unsaved_changes=>null
,p_button_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(93540255858153807)
,p_name=>'P346_ESTADO_PLANILLA'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(95865717447277620)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(95864166402277604)
,p_name=>'P346_COD_SUCURSAL_REPARTO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(95863810464277601)
,p_prompt=>'Sucursal'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_SUCURSALES'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT cod_sucursal||'' - ''||descripcion L, ',
'         cod_sucursal V',
'    FROM sucursales ',
'   WHERE cod_empresa = :P_COD_EMPRESA',
'ORDER BY descripcion'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'...'
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
 p_id=>wwv_flow_imp.id(95864274591277605)
,p_name=>'P346_COD_VEHICULO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(95863810464277601)
,p_prompt=>unistr('Veh\00EDculo')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select v.cod_vehiculo || '' - '' || v.descripcion || '' - '' || v.marca ',
'                    || '' - '' ||  v.volumen || '' - '' || v.peso_kg ',
'                    || '' - '' ||  v.largo  || '' - '' || v.ancho ',
'                    || '' - '' ||  v.alto || '' - '' || v.tipo D,',
'       cod_vehiculo R',
'  from rp_vehiculos v',
' where cod_empresa = :P_COD_EMPRESA',
' ',
'and ACTIVO=''S'' order by descripcion'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'...'
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
 p_id=>wwv_flow_imp.id(95864374624277606)
,p_name=>'P346_COD_REPARTIDOR'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(95863810464277601)
,p_prompt=>'Repartidor'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT r.cod_repartidor  || '' - '' || ltrim( rtrim( nvl( p.nombre, p.nomb_fantasia ) ) ) D, ',
'       r.cod_repartidor R',
'FROM rp_repartidores r, personas p ',
'WHERE r.cod_empresa = :P_COD_EMPRESA',
'AND r.cod_persona = p.cod_persona ',
'ORDER BY 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'...'
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
 p_id=>wwv_flow_imp.id(95864427736277607)
,p_name=>'P346_ZONA_REPARTO'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(95863810464277601)
,p_prompt=>'Tipo Entrega'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:CAPITAL;CAPITAL,INTERIOR;INTERIOR,CLIENTE RETIRA;CLIENTE RETIRA,TODOS;T'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(95864555465277608)
,p_name=>'P346_TIPO_PEDIDO'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(95863810464277601)
,p_prompt=>'Tipo Planilla'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:PRODUCTOS;PRODUCTOS,REPUESTOS;REPUESTOS,TODOS;T'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(95865242685277615)
,p_name=>'P346_COD_MODULO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(95864645365277609)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(95865369946277616)
,p_name=>'P346_FECHA_INI'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(95863938039277602)
,p_prompt=>'Fecha Desde'
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>30
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
 p_id=>wwv_flow_imp.id(95865435157277617)
,p_name=>'P346_FECHA_FIN'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(95863938039277602)
,p_prompt=>'Fecha Hasta'
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>30
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
 p_id=>wwv_flow_imp.id(95865685402277619)
,p_name=>'P346_NRO_OT'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(95863938039277602)
,p_prompt=>'Nro. Plantilla'
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
 p_id=>wwv_flow_imp.id(95865971636277622)
,p_name=>'P346_VISUAL'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(95865899403277621)
,p_prompt=>unistr('VISUALIZACI\00D3N')
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC:Todos;T,Diaria;D,Semanal;S,Mensual;M'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'1'
,p_attribute_02=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(95866030150277623)
,p_name=>'P346_ESTADO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(95865717447277620)
,p_prompt=>'ESTADOS PLANTILLA'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC:Todos;T,Pendiente;P,Facturados;F'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'1'
,p_attribute_02=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(95867737762277640)
,p_name=>'P346_INDICADOR_REPORT_PLANILLA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(95864738042277610)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(96596861839832003)
,p_name=>'P346_COD_SUCURSAL_FAC'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(96596979765832004)
,p_prompt=>'Sucursal'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT S.COD_SUCURSAL||''-''||S.DESCRIPCION D,',
'       S.COD_SUCURSAL R ',
'  FROM SUCURSALES S ',
' WHERE S.COD_EMPRESA = :P_COD_EMPRESA',
' ORDER BY TO_NUMBER(S.COD_SUCURSAL)'))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P_COD_EMPRESA'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'Y'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
,p_attribute_08=>'600'
,p_attribute_09=>'400'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(96597160026832006)
,p_name=>'P346_COD_CUSTODIO_FAC'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(96596979765832004)
,p_prompt=>'Custodio'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
' select c.cod_custodio||''-''||c.descripcion d,',
'        c.cod_custodio r',
'      from cc_custodios c',
'   where c.cod_empresa = :p_cod_empresa ',
'  order by to_number(c.cod_custodio) ',
'     '))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P_COD_EMPRESA'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'Y'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
,p_attribute_08=>'600'
,p_attribute_09=>'400'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(96597219297832007)
,p_name=>'P346_COD_COBRADOR_FAC'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(96596979765832004)
,p_prompt=>'Cobrador'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select co.cod_cobrador||''-''||nvl( ltrim( pe.nombre ), ltrim( pe.nomb_fantasia ) ) d,',
'       co.cod_cobrador r',
'     ',
'       from cc_cobradores co, personas pe',
'      where co.cod_empresa =:p_cod_empresa ',
'        and co.cod_persona = pe.cod_persona',
'     order by to_number(co.cod_cobrador);'))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P_COD_EMPRESA'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_colspan=>6
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'Y'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
,p_attribute_08=>'600'
,p_attribute_09=>'400'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(96597301120832008)
,p_name=>'P346_SER_COMPROBANTE_FAC'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(96596979765832004)
,p_prompt=>'Serie Factura'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DISTINCT SERIE A, SERIE',
'FROM TALONARIOS A',
'WHERE cod_empresa=:P_COD_EMPRESA',
'AND  CODIGO_USUARIO = :APP_USER',
'AND COD_SUCURSAL = :P_COD_SUCURSAL',
'AND TIP_TALONARIO IN (''FCO'', ''FCR'')  ',
'and a.activo=''S'''))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P_COD_EMPRESA,P_COD_SUCURSAL'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(96597411677832009)
,p_name=>'P346_GENERA_MD'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(96596979765832004)
,p_prompt=>'Generar'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#:margin-top-md:margin-left-lg'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(96597624604832011)
,p_name=>'P346_COD_CUSTODIO_ENT_FAC'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(96596979765832004)
,p_prompt=>'Destino'
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
 p_id=>wwv_flow_imp.id(96597772510832012)
,p_name=>'P346_INDICADOR_ALERT'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(95864738042277610)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(96598018808832015)
,p_name=>'P346_SER_RECIBO_FAC'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(96596979765832004)
,p_prompt=>'Serie Recibo'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DISTINCT SERIE A, SERIE',
'FROM TALONARIOS A',
'WHERE  COD_SUCURSAL = :P_COD_SUCURSAL',
'AND TIP_TALONARIO IN (''REC'')',
'and a.activo=''S''',
'and cod_empresa=:P_COD_EMPRESA'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(96598167998832016)
,p_name=>'P346_SER_NC'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(96596979765832004)
,p_prompt=>'Serie NC'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DISTINCT SERIE, SERIE  A',
'FROM TALONARIOS A',
'WHERE  COD_SUCURSAL = :P_COD_SUCURSAL',
'AND  CODIGO_USUARIO = :APP_USER',
'AND TIP_TALONARIO IN (''NCR'')',
'and a.activo=''S''',
'and cod_empresa=:P_COD_EMPRESA'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(96598254847832017)
,p_name=>'P346_SER_REMISION'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(96596979765832004)
,p_prompt=>unistr('Serie Remisi\00F3n')
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DISTINCT SERIE A, SERIE',
'FROM TALONARIOS A',
'WHERE COD_SUCURSAL = :P_COD_SUCURSAL',
'AND  CODIGO_USUARIO = :APP_USER',
'AND TIP_TALONARIO IN (''REM'')',
'and a.activo=''S''',
'and cod_empresa=:P_COD_EMPRESA'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(96598340713832018)
,p_name=>'P346_VARIOS_DEPOSITOS'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(96596979765832004)
,p_prompt=>'Facturar Varios Depositos'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#:margin-top-md:margin-left-lg'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(96598437616832019)
,p_name=>'P346_NRO_PLANILLA_FAC'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(96596979765832004)
,p_prompt=>unistr('N\00B0 Planilla Ruteo')
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
 p_id=>wwv_flow_imp.id(96599397569832028)
,p_name=>'P346_SEQ_ID_PLANILLA_DETALLE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(96597845031832013)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(96600052947832035)
,p_name=>'P346_SEQ_LLAMAR_RPFACTMASPLA'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(96597845031832013)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(96600452445832039)
,p_name=>'P346_SEQ_ID_LLAMAR_RPPLAPED'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(96597845031832013)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(97530106401270808)
,p_name=>'P346_ERROR'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(95864645365277609)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(97530372844270810)
,p_name=>'P346_NRO_PLANILLA_TRASLADO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(104537230789693849)
,p_prompt=>'Traslado'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(97530878271270815)
,p_name=>'P346_INDICADOR_REPORT_FACTURAS'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(95864738042277610)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(97533306942270840)
,p_name=>'P346_MENSAJE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(95864645365277609)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(97533942126270846)
,p_name=>'P346_COD_SUCURSAL_CPH'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(95864645365277609)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(97534106267270848)
,p_name=>'P346_P_PLANILLA_ENVIAR'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(95864645365277609)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(97534389232270850)
,p_name=>'P346_URL_358'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(95864645365277609)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(99766869650877210)
,p_name=>'P346_SEQ_ID_FACTURA_REP_FAC'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(96597845031832013)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(99767248175877214)
,p_name=>'P346_SEQ_TIP_COMP'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(95864645365277609)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(99767398726877215)
,p_name=>'P346_SEQ_SER_COMP'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(95864645365277609)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(99767449640877216)
,p_name=>'P346_SEQ_NRO_COMP'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(95864645365277609)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(99768171766877223)
,p_name=>'P346_SEQ_NRO_PLANILLA'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(95864645365277609)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(104534827000693825)
,p_name=>'P346_SEQ_ID_FACTURA_REP_REC'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(96597845031832013)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(104535126740693828)
,p_name=>'P346_SEQ_ID_FACTURA_REP_PAG'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(96597845031832013)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(104535985772693836)
,p_name=>'P346_SEQ_COD_CLIENTE'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(95864645365277609)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(104536511839693842)
,p_name=>'P346_SEQ_ID_FACTURA_REP_RE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(96597845031832013)
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
 p_id=>wwv_flow_imp.id(107237637264843336)
,p_name=>'P346_SEQ_ID_FACTURA_REP_NC'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(96597845031832013)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(108055737457266406)
,p_name=>'P346_P_TIPO_ENTREGA'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(95864645365277609)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(108056203869266411)
,p_name=>'P346_COD_USUARIO'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(95864645365277609)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(108056347908266412)
,p_name=>'P346_P_TIP_PEDIDO_ENVIAR'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(95864645365277609)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(108056433114266413)
,p_name=>'P346_P_COD_SUCURSAL_ENVIAR'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(95864645365277609)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(108056504452266414)
,p_name=>'P346_URL_361'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(95864645365277609)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(108059487841266443)
,p_name=>'P346_DESCRIPCION_SUCURSAL_FAC'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(96596979765832004)
,p_prompt=>'Descripcion Sucursal Fac'
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
 p_id=>wwv_flow_imp.id(108059577964266444)
,p_name=>'P346_DESCRIPCION_CUSTODIO_FAC'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(96596979765832004)
,p_prompt=>'Descripcion Sucursal'
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
 p_id=>wwv_flow_imp.id(110779136729423532)
,p_name=>'P346_COBRADOR_DESC'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(96596979765832004)
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
 p_id=>wwv_flow_imp.id(111964975324898036)
,p_name=>'P346_P_TIPO_PEDIDO'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(95864645365277609)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(123959388862528327)
,p_name=>'P346_FACMAS_REP'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(95864645365277609)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(129098717735845217)
,p_name=>'P346_FACTURA_REP'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(95864645365277609)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(95867853492277641)
,p_name=>'DA_BUSCAR_PLANILLA'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(95866104286277624)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(95868369469277646)
,p_event_id=>wwv_flow_imp.id(95867853492277641)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'var spinner = apex.util.showSpinner();'
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P346_INDICADOR_ALERT'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(95867971977277642)
,p_event_id=>wwv_flow_imp.id(95867853492277641)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    ',
'    IF to_date(:P346_FECHA_INI,''DD/MM/YYYY'') > to_date(:P346_FECHA_FIN ,''DD/MM/YYYY'')THEN',
'        :P346_INDICADOR_ALERT := ''La fecha inicial no puede ser mayor a la fecha final.'';',
'        :P346_INDICADOR_REPORT_PLANILLA := ''0'';',
'    ELSE',
'        RPFACMAS.CARGAR_COL_VW_PLANILLA ( PI_VISUAL => :P346_VISUAL,',
'                                          PI_COD_SUCURSAL_REPARTO => :P346_COD_SUCURSAL_REPARTO,',
'                                          PI_COD_VEHICULO => :P346_COD_VEHICULO,',
'                                          PI_COD_REPARTIDOR => :P346_COD_REPARTIDOR,',
'                                          PI_TIPO_ENTREGA => :P346_ZONA_REPARTO,',
'                                          PI_TIPO_PEDIDO => :P346_TIPO_PEDIDO,',
'                                          PI_NRO_OT => :P346_NRO_OT,',
'                                          PI_ESTADO => :P346_ESTADO,',
'                                          PI_FECHA_INI => :P346_FECHA_INI,',
'                                          PI_FECHA_FIN => :P346_FECHA_FIN);',
'        :P346_INDICADOR_ALERT := NULL;',
'        :P346_INDICADOR_REPORT_PLANILLA := ''1'';',
'    END IF;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;',
'',
''))
,p_attribute_02=>'P346_FECHA_INI,P346_FECHA_FIN,P346_VISUAL,P346_COD_SUCURSAL_REPARTO,P346_COD_VEHICULO,P346_COD_REPARTIDOR,P346_ZONA_REPARTO,P346_TIPO_PEDIDO,P346_NRO_OT,P346_FECHA_INI,P346_FECHA_FIN,P346_ESTADO'
,p_attribute_03=>'P346_INDICADOR_REPORT_PLANILLA,P346_INDICADOR_ALERT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(96601060390832045)
,p_event_id=>wwv_flow_imp.id(95867853492277641)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P346_INDICADOR_ALERT.'
,p_attribute_03=>'danger'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P346_INDICADOR_ALERT'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(95868025516277643)
,p_event_id=>wwv_flow_imp.id(95867853492277641)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(95866272705277625)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P346_INDICADOR_REPORT_PLANILLA'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(95868495280277647)
,p_event_id=>wwv_flow_imp.id(95867853492277641)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$("#apex_wait_overlay").remove();',
'$(".u-Processing").remove();'))
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P346_INDICADOR_ALERT'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(95868635304277649)
,p_name=>'DA_LIMPIAR_CAMPOS'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(95868598946277648)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(95868751952277650)
,p_event_id=>wwv_flow_imp.id(95868635304277649)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P346_COD_SUCURSAL_REPARTO,P346_FECHA_INI,P346_VISUAL,P346_COD_VEHICULO,P346_FECHA_FIN,P346_COD_REPARTIDOR,P346_NRO_OT,P346_ZONA_REPARTO,P346_TIPO_PEDIDO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(96596614611832001)
,p_event_id=>wwv_flow_imp.id(95868635304277649)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    :P346_COD_SUCURSAL_REPARTO := :P_COD_SUCURSAL;',
'    :P346_VISUAL :=''D'';',
'    :P346_ESTADO :=''P'';',
'    :P346_TIPO_PEDIDO :=''PRODUCTOS'';',
'    --:P346_COD_VEHICULO :=''TODOS''; ',
'    --:P346_COD_REPARTIDOR := ''TODOS'';',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;',
'',
''))
,p_attribute_02=>'P_COD_SUCURSAL'
,p_attribute_03=>'P346_COD_SUCURSAL_REPARTO,P346_VISUAL,P346_TIPO_PEDIDO,P346_COD_VEHICULO,P346_COD_REPARTIDOR'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(96597944421832014)
,p_event_id=>wwv_flow_imp.id(95868635304277649)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(95866272705277625)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(96599443164832029)
,p_name=>'DA_SETEAR_DATOS_PLA_FAC'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P346_SEQ_ID_PLANILLA_DETALLE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(96599584116832030)
,p_event_id=>wwv_flow_imp.id(96599443164832029)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'   SELECT n001, c006, c005, :P_COD_SUCURSAL, C004',
'   INTO :P346_NRO_PLANILLA_FAC, :P346_P_TIPO_ENTREGA, :P346_P_COD_SUCURSAL_ENVIAR,',
'        :P346_P_TIPO_PEDIDO, :P346_ESTADO_PLANILLA',
'   FROM APEX_COLLECTIONS',
'   WHERE COLLECTION_NAME = ''VW_PLANILLA''',
'   AND seq_id = :P346_SEQ_ID_PLANILLA_DETALLE;',
'',
'   :P346_GENERA_MD :=''S'';',
'',
'',
'   :P346_COD_SUCURSAL_FAC := :P_COD_SUCURSAL;',
'',
'   SELECT descripcion',
'    INTO :P346_DESCRIPCION_SUCURSAL_FAC',
'    FROM sucursales ',
'   WHERE cod_empresa = :P_COD_EMPRESA',
'   AND cod_sucursal = :P346_COD_SUCURSAL_FAC;',
'',
'',
'    IF :P346_P_TIPO_ENTREGA = ''INTERIOR'' THEN',
'        :P346_VARIOS_DEPOSITOS :=''S'';',
'    ELSE',
'    	:P346_VARIOS_DEPOSITOS :=''S'';',
'    END IF;',
'',
'    BEGIN',
'      SELECT u.cod_custodio, c.descripcion, U.SERIE_RECIBO',
'        INTO :P346_COD_CUSTODIO_FAC, :P346_DESCRIPCION_CUSTODIO_FAC,:P346_SER_RECIBO_FAC',
'        FROM usuarios u, cc_custodios c',
'       WHERE u.cod_empresa = :P_COD_EMPRESA',
'         AND u.cod_usuario = :P_COD_USUARIO',
'         AND u.cod_empresa = c.cod_empresa ',
'         AND u.cod_custodio = c.cod_custodio ;',
'    EXCEPTION',
'      WHEN OTHERS THEN',
'           :P346_COD_CUSTODIO_FAC := NULL;',
'           :P346_DESCRIPCION_CUSTODIO_FAC := NULL;',
'           :P346_SER_RECIBO_FAC:=NULL;',
'    END;',
' ',
'    BEGIN',
'      SELECT c.cod_cobrador',
'        INTO :P346_COD_COBRADOR_FAC',
'        FROM usuarios u, cc_cobradores c, personas p',
'       WHERE u.cod_empresa = :P_COD_EMPRESA',
'         AND u.cod_usuario = :P_COD_USUARIO',
'         AND u.cod_empresa = c.cod_empresa ',
'         AND u.cod_persona = c.cod_persona ',
'         AND p.cod_persona = c.cod_persona ;',
'    EXCEPTION',
'      WHEN OTHERS THEN',
'           :P346_COD_COBRADOR_FAC := ''54'' ;  ',
'    END ;',
'    ',
'    ',
'    BEGIN',
'    SELECT serie          ',
'      INTO :P346_SER_COMPROBANTE_FAC',
'      FROM talonarios',
'     WHERE cod_empresa = :P_COD_EMPRESA    ',
'       AND TIP_TALONARIO=''FCR''',
'       AND nvl( activo, ''S'' ) <> ''N''',
'       AND nvl( AUTO_IMPRESION, ''N'' )= ''S''',
'       AND nvl(codigo_usuario,:P346_COD_USUARIO) = :P_COD_USUARIO',
'       AND COD_SUCURSAL = :P346_COD_SUCURSAL_REPARTO',
'       AND fec_vencimiento >= trunc(sysdate)',
'       AND rownum=1;    ',
'    EXCEPTION',
'        WHEN OTHERS THEN',
'        	  :P346_SER_COMPROBANTE_FAC := NULL;',
'    END;',
'    ',
'    BEGIN',
'    SELECT serie           ',
'      INTO :P346_SER_NC',
'      FROM talonarios',
'     WHERE cod_empresa = :P_COD_EMPRESA',
'       AND TIP_TALONARIO=''NCR''',
'       AND nvl( activo, ''S'' ) <> ''N''',
'       AND nvl( AUTO_IMPRESION, ''N'' )= ''S''',
'       AND nvl(codigo_usuario, :P_COD_USUARIO) = :P_COD_USUARIO',
'       AND COD_SUCURSAL = :P346_COD_SUCURSAL_REPARTO',
'       AND fec_vencimiento >= trunc(sysdate)',
'       AND rownum=1;',
'    EXCEPTION',
'        WHEN OTHERS THEN',
'        	  :P346_SER_NC := NULL;',
'    END;',
'',
'    BEGIN',
'       SELECT serie ',
'         INTO :P346_SER_REMISION',
'         FROM talonarios',
'        WHERE cod_empresa = :P_COD_EMPRESA',
'          AND tip_talonario = ''REM''',
'          AND nvl( activo, ''S'' ) <> ''N''',
'          AND nvl( AUTO_IMPRESION, ''N'' )= ''S''',
'          AND nvl(codigo_usuario, :P_COD_USUARIO) = :P_COD_USUARIO',
'          AND COD_SUCURSAL = :P346_COD_SUCURSAL_REPARTO',
'          AND fec_vencimiento >= trunc(sysdate)',
'          AND rownum=1;',
'    EXCEPTION',
'    	WHEN OTHERS THEN',
'    	  :P346_SER_REMISION := NULL;',
'    end;',
'',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        null;',
'END;',
''))
,p_attribute_02=>'P346_SEQ_ID_PLANILLA_DETALLE,P346_COD_SUCURSAL_REPARTO,P_COD_EMPRESA,APP_USER,P346_P_TIPO_ENTREGA,P346_COD_USUARIO,P_COD_SUCURSAL,P_COD_USUARIO'
,p_attribute_03=>'P346_VARIOS_DEPOSITOS,P346_GENERA_MD,P346_COD_SUCURSAL_FAC,P346_NRO_PLANILLA_FAC,P346_SER_REMISION,P346_SER_NC,P346_SER_COMPROBANTE_FAC,P346_COD_COBRADOR_FAC,P346_COD_CUSTODIO_FAC,P346_P_TIPO_ENTREGA,P346_P_COD_SUCURSAL_ENVIAR,P346_DESCRIPCION_SUCURS'
||'AL_FAC,P346_DESCRIPCION_CUSTODIO_FAC,P346_P_TIPO_PEDIDO,P346_ESTADO_PLANILLA,P346_SER_RECIBO_FAC'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(108056733768266416)
,p_event_id=>wwv_flow_imp.id(96599443164832029)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    :P346_P_PLANILLA_ENVIAR := :P346_NRO_PLANILLA_FAC;',
'    :P346_P_TIP_PEDIDO_ENVIAR := :P346_P_TIPO_ENTREGA;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        null;',
'END;',
'',
'',
'',
''))
,p_attribute_02=>'P346_NRO_PLANILLA_FAC,P346_P_TIPO_ENTREGA'
,p_attribute_03=>'P346_P_PLANILLA_ENVIAR,P346_P_TIP_PEDIDO_ENVIAR'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(96599921974832034)
,p_event_id=>wwv_flow_imp.id(96599443164832029)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(96599842834832033)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(128550013443042333)
,p_event_id=>wwv_flow_imp.id(96599443164832029)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'apex_collection.create_or_truncate_collection(p_collection_name => ''DETALLE_FACTURA''); '
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(128550181473042334)
,p_event_id=>wwv_flow_imp.id(96599443164832029)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(97530995479270816)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(96599644254832031)
,p_name=>'DA_SETEAR_CUSTODIO_FAC'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P346_COD_SUCURSAL_FAC'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(96599729103832032)
,p_event_id=>wwv_flow_imp.id(96599644254832031)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'  IF nvl(:P346_COD_SUCURSAL_FAC,''01'') IN (''190'',''03'',''209'') THEN',
'  	:P346_COD_CUSTODIO_ENT_FAC := ''514'';',
'  ELSIF nvl(:P346_COD_SUCURSAL_FAC,''01'')=''65'' then',
'  	:P346_COD_CUSTODIO_ENT_FAC := ''171'';	 ',
'  ELSIF nvl(:P346_COD_SUCURSAL_FAC,''01'') IN(''02'',''15'') then',
'  	:P346_COD_CUSTODIO_ENT_FAC := ''305'';	',
'  ELSIF nvl(:P346_COD_SUCURSAL_FAC,''01'') in(''09'',''105'') then',
'  	:P346_COD_CUSTODIO_ENT_FAC := ''233'';',
'  ELSIF nvl(:P346_COD_SUCURSAL_FAC,''01'') in(''101'') then',
'  	:P346_COD_CUSTODIO_ENT_FAC := ''176'';	 ',
'  ELSE 	                        ',
' 	:P346_COD_CUSTODIO_ENT_FAC := ''276'';',
'  END IF;',
'',
'  SELECT c.descripcion',
'    INTO :P346_DESCRIPCION_CUSTODIO_FAC',
'    FROM usuarios u, cc_custodios c',
'   WHERE u.cod_empresa = :P_COD_EMPRESA',
'     AND u.cod_usuario = :P346_COD_CUSTODIO_ENT_FAC',
'     AND u.cod_empresa = c.cod_empresa ',
'     AND u.cod_custodio = c.cod_custodio;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        NULL;',
'END;'))
,p_attribute_02=>'P346_COD_SUCURSAL_FAC,P_COD_EMPRESA,P346_COD_CUSTODIO_ENT_FAC'
,p_attribute_03=>'P346_COD_CUSTODIO_ENT_FAC,P346_DESCRIPCION_CUSTODIO_FAC'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(96600796935832042)
,p_name=>'DA_LLAMAR_RPPLAPED'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P346_SEQ_ID_LLAMAR_RPPLAPED'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(97534034626270847)
,p_event_id=>wwv_flow_imp.id(96600796935832042)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    SELECT n001',
'    INTO :P346_P_PLANILLA_ENVIAR',
'    FROM APEX_COLLECTIONS',
'    WHERE COLLECTION_NAME = ''VW_PLANILLA''',
'    AND SEQ_ID = :P346_SEQ_ID_LLAMAR_RPPLAPED;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_02=>'P346_SEQ_ID_LLAMAR_RPPLAPED'
,p_attribute_03=>'P346_P_PLANILLA_ENVIAR'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(97534225112270849)
,p_event_id=>wwv_flow_imp.id(96600796935832042)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'	SELECT APEX_PAGE.GET_URL (  p_page   => 358,',
'				    p_items  => ''P358_P_PLANILLA'',',
'				    p_values => (''''||:P346_P_PLANILLA_ENVIAR||'''')) f_url_1',
'		INTO :P346_URL_358',
'		FROM DUAL;',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_02=>'P346_P_PLANILLA_ENVIAR'
,p_attribute_03=>'P346_URL_358'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(99765978598877201)
,p_event_id=>wwv_flow_imp.id(96600796935832042)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var url = apex.item("P346_URL_358").getValue();',
'',
'apex.navigation.openInNewWindow(url, "_blank");'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(96601306098832048)
,p_name=>'DA_CERRAR_FACTURA'
,p_event_sequence=>70
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(96601254655832047)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(96601422711832049)
,p_event_id=>wwv_flow_imp.id(96601306098832048)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(96599842834832033)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(97529863899270805)
,p_name=>'DA_FACTURAR'
,p_event_sequence=>80
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(96601184156832046)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(97530032538270807)
,p_event_id=>wwv_flow_imp.id(97529863899270805)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\00BFGenerar Facturas?')
,p_attribute_02=>'Generacion de Facturas'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(194843845722616041)
,p_event_id=>wwv_flow_imp.id(97529863899270805)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'var spinner = apex.util.showSpinner();'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(93540374326153808)
,p_event_id=>wwv_flow_imp.id(97529863899270805)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/*IF :P346_ESTADO_PLANILLA = ''F'' THEN ',
'    RAISE_APPLICATION_ERROR(-20001, ''La planilla ya se encuentra con estado Facturada'');',
'END IF;*/',
'',
'IF :P346_SER_COMPROBANTE_FAC is null THEN ',
'    RAISE_APPLICATION_ERROR(-20001, ''Debe ingresar la serie de factura'');',
'END IF;',
'',
'IF :P346_SER_RECIBO_FAC is null THEN ',
'    RAISE_APPLICATION_ERROR(-20001, ''Debe ingresar la serie de recibo'');',
'END IF;',
'',
'IF :P346_SER_NC is null THEN ',
unistr('    RAISE_APPLICATION_ERROR(-20001, ''Debe ingresar la serie de nota de cr\00E9dito'');'),
'END IF;',
'',
'IF :P346_SER_REMISION is null THEN ',
unistr('    RAISE_APPLICATION_ERROR(-20001, ''Debe ingresar la serie de nota de remisi\00F3n'');'),
'END IF;',
'',
'',
''))
,p_attribute_02=>'P346_ESTADO_PLANILLA,P346_SER_COMPROBANTE_FAC,P346_SER_RECIBO_FAC,P346_SER_NC,P346_SER_REMISION,P346_SER_RECIBO_FAC'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(111964490995898031)
,p_event_id=>wwv_flow_imp.id(97529863899270805)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P346_SER_COMPROBANTE_FAC,P346_SER_RECIBO_FAC,P346_SER_NC,P346_SER_REMISION'
,p_attribute_03=>'P346_SER_COMPROBANTE_FAC,P346_SER_RECIBO_FAC,P346_SER_NC,P346_SER_REMISION'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(107238245691843342)
,p_event_id=>wwv_flow_imp.id(97529863899270805)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
' V_DETALLE_NRO_PEDIDO VARCHAR2(100);',
' V_NRO_PLANILLA VARCHAR2(8000);',
'BEGIN',
'V_NRO_PLANILLA := :P346_NRO_PLANILLA_FAC;',
'    IF :P346_TIPO_PEDIDO = ''REPUESTOS'' THEN',
'        BEGIN',
'            sp_CREA_FACTURA_ruteo_rep_vf (p_cod_empresa => :P_COD_EMPRESA,',
'                                          P_SER_FACTURA => :P346_SER_COMPROBANTE_FAC,',
'                                          P_COD_CUSTODIO => :P346_COD_CUSTODIO_FAC,',
'                                          P_COD_SUCURSAL => :P346_COD_SUCURSAL_FAC,',
'                                          P_NRO_PLANILLA => :P346_NRO_PLANILLA_FAC,',
'                                          p_VARIOS_DEPOSITO => nvl(:P346_VARIOS_DEPOSITOS,''N''),',
'                                          p_retorno => :P346_ERROR);                                        ',
'        EXCEPTION',
'			WHEN OTHERS THEN          ',
'           RAISE_APPLICATION_ERROR(-20000, ''SP_CREA_FACTURA_RUTEO. ''||sqlerrm);     ',
'         ROLLBACK;',
'        END;                                          ',
'    ELSE    	',
'    declare verror varchar2(400);',
'       	BEGIN           ',
'				SP_CREA_FACTURA_RUTEO(p_cod_empresa => :P_COD_EMPRESA,',
'                                      P_SER_FACTURA => :P346_SER_COMPROBANTE_FAC,',
'                                      P_COD_CUSTODIO => :P346_COD_CUSTODIO_FAC,',
'                                      P_COD_SUCURSAL => :P346_COD_SUCURSAL_FAC,',
'                                      P_NRO_PLANILLA => :P346_NRO_PLANILLA_FAC,',
'                                      p_VARIOS_DEPOSITO => nvl(:P346_VARIOS_DEPOSITOS,''N''),',
'                                      p_retorno => verror);',
'  ',
'    inv.out_out(verror );',
'',
'		EXCEPTION',
'			WHEN OTHERS THEN',
'             inv.out_out(verror||sqlerrm );            ',
'                 :P346_ERROR:=''Error en SP_CREA_FACTURA_RUTEO. ''||sqlerrm;',
'           :P0_MENSAJE_VALIDACION:=''Error en SP_CREA_FACTURA_RUTEO. ''||sqlerrm;',
'      RAISE_APPLICATION_ERROR(-20000, ''SP_CREA_FACTURA_RUTEO. ''||sqlerrm);    ',
'           ROLLBACK;',
'        ',
'       END;',
'    END IF;',
'	BEGIN',
'    	UPDATE  RP_REPARTO_PEDIDO_CAB	SET PLANILLA_FACTURADA = ''F''',
'    	WHERE cod_empresa = :P_COD_EMPRESA',
'    	AND nro_planilla = :P346_NRO_PLANILLA_FAC;        ',
'        COMMIT;   EXCEPTION',
'			WHEN OTHERS THEN',
'      :P346_ERROR:=  ''Error en RP_REPARTO_PEDIDO_CAB. ''||sqlerrm;  ',
'          END;',
'    IF :P346_SER_REMISION IS NOT NULL THEN',
'		BEGIN',
'		  	sp_crea_remision_masiva(:P_COD_EMPRESA,:P346_NRO_PLANILLA_FAC,:P346_SER_REMISION, V_DETALLE_NRO_PEDIDO);',
'		    EXCEPTION',
'        WHEN OTHERS THEN',
'        :P346_ERROR:= ''sp_crea_remision_masiva. ''||sqlerrm; ',
'        ROLLBACK;         ',
'        END;        ',
'    :P346_INDICADOR_REPORT_FACTURAS := ''1'';    ',
'	BEGIN',
'		UPDATE  RP_REPARTO_PEDIDO_CAB',
'		SET PLANILLA_FACTURADA = ''F''',
'		where cod_empresa= :P_COD_EMPRESA',
'		and nro_planilla = :P346_NRO_PLANILLA_FAC;		',
'		sp_reposicion_pla_fact(:P346_NRO_PLANILLA_FAC);',
'        COMMIT;  ',
'    END;',
' END IF; ',
'RPFACMAS.PR_CREAR_COL_FAC  (PI_COD_EMPRESA => :P_COD_EMPRESA,',
'                                PI_NRO_PLANILLA => :P346_NRO_PLANILLA_FAC,',
'                                PI_COD_CUSTODIO_FAC => :P346_COD_CUSTODIO_FAC,',
'                                PI_COD_CUSTODIO_ENT_FAC => :P346_COD_CUSTODIO_ENT_FAC,',
'                                PI_APP_USER => :P346_COD_USUARIO,',
'                                PO_NRO_PLANILLA_TRASLADO => :P346_NRO_PLANILLA_TRASLADO,',
'                                PI_COD_SUCURSAL => :P346_COD_SUCURSAL_FAC,',
'                                PI_COD_COBRADOR => :P346_COD_COBRADOR_FAC,',
'                                PI_SERIE_NC => :P346_SER_NC,',
'                                PI_TIPO_PEDIDO => :P346_P_TIPO_ENTREGA,',
'                                PI_COD_CUSTODIO => :P346_COD_CUSTODIO_FAC,',
'                                PI_SERIE_RECIBO  => :P346_SER_RECIBO_FAC);',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    :P346_ERROR:=''RPFACMAS.PR_CREAR_COL_FAC. ''||sqlerrm;',
'    ROLLBACK;',
'END;'))
,p_attribute_02=>'P_COD_EMPRESA,P346_SER_COMPROBANTE_FAC,P346_COD_CUSTODIO_FAC,P346_COD_SUCURSAL_FAC,P346_NRO_PLANILLA_FAC,P346_VARIOS_DEPOSITOS,P346_NRO_PLANILLA_FAC,P346_P_TIPO_ENTREGA,P346_COD_USUARIO,P346_P_TIPO_PEDIDO,P346_TIPO_PEDIDO,P346_SER_REMISION,P346_SER_R'
||'ECIBO_FAC,P346_SER_REMISION,P346_SER_NC'
,p_attribute_03=>'P346_ERROR,P346_INDICADOR_REPORT_FACTURAS,P0_MENSAJE_VALIDACION'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(108055836827266407)
,p_event_id=>wwv_flow_imp.id(97529863899270805)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(97530995479270816)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(194843416694616037)
,p_event_id=>wwv_flow_imp.id(97529863899270805)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
' V_DETALLE_NRO_PEDIDO VARCHAR2(100);',
' V_NRO_PLANILLA VARCHAR2(8000);',
'BEGIN',
'V_NRO_PLANILLA := :P346_NRO_PLANILLA_FAC;',
'    ',
' ',
'     ',
'RPFACMAS.PR_CREAR_COL_FAC  (PI_COD_EMPRESA => :P_COD_EMPRESA,',
'                                PI_NRO_PLANILLA => :P346_NRO_PLANILLA_FAC,',
'                                PI_COD_CUSTODIO_FAC => :P346_COD_CUSTODIO_FAC,',
'                                PI_COD_CUSTODIO_ENT_FAC => :P346_COD_CUSTODIO_ENT_FAC,',
'                                PI_APP_USER => :P346_COD_USUARIO,',
'                                PO_NRO_PLANILLA_TRASLADO => :P346_NRO_PLANILLA_TRASLADO,',
'                                PI_COD_SUCURSAL => :P346_COD_SUCURSAL_FAC,',
'                                PI_COD_COBRADOR => :P346_COD_COBRADOR_FAC,',
'                                PI_SERIE_NC => :P346_SER_NC,',
'                                PI_TIPO_PEDIDO => :P346_P_TIPO_ENTREGA,',
'                                PI_COD_CUSTODIO => :P346_COD_CUSTODIO_FAC,',
'                                PI_SERIE_RECIBO  => :P346_SER_RECIBO_FAC);',
'',
'',
'                           ',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    :P346_ERROR:=''RPFACMAS.PR_CREAR_COL_FAC. ''||sqlerrm;',
'    ROLLBACK;',
'END;'))
,p_attribute_02=>'P_COD_EMPRESA,P346_SER_COMPROBANTE_FAC,P346_COD_CUSTODIO_FAC,P346_COD_SUCURSAL_FAC,P346_NRO_PLANILLA_FAC,P346_VARIOS_DEPOSITOS,P346_NRO_PLANILLA_FAC,P346_P_TIPO_ENTREGA,P346_COD_USUARIO,P346_P_TIPO_PEDIDO,P346_TIPO_PEDIDO,P346_SER_REMISION,P346_SER_R'
||'ECIBO_FAC'
,p_attribute_03=>'P346_ERROR,P346_SER_REMISION,P346_INDICADOR_REPORT_FACTURAS'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(194843784444616040)
,p_event_id=>wwv_flow_imp.id(97529863899270805)
,p_event_result=>'TRUE'
,p_action_sequence=>90
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'     RPFACMAS.PR_BUSCAR_FAC (PI_COD_EMPRESA => :P_COD_EMPRESA,',
'                             PI_NRO_PLANILLA => :P346_NRO_PLANILLA_FAC);',
'',
'     :P346_INDICADOR_REPORT_FACTURAS := ''1'';',
':P346_ERROR:=''Proceso Finalizado'';',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_02=>'P_COD_EMPRESA,P346_NRO_PLANILLA_FAC'
,p_attribute_03=>'P346_INDICADOR_REPORT_FACTURAS,P346_ERROR'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(194843513909616038)
,p_event_id=>wwv_flow_imp.id(97529863899270805)
,p_event_result=>'TRUE'
,p_action_sequence=>100
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(97530995479270816)
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
 p_id=>wwv_flow_imp.id(194843945455616042)
,p_event_id=>wwv_flow_imp.id(97529863899270805)
,p_event_result=>'TRUE'
,p_action_sequence=>120
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$("#apex_wait_overlay").remove();',
'$(".u-Processing").remove();'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(878430606696603802)
,p_event_id=>wwv_flow_imp.id(97529863899270805)
,p_event_result=>'TRUE'
,p_action_sequence=>130
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(97530995479270816)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(194842900602616032)
,p_event_id=>wwv_flow_imp.id(97529863899270805)
,p_event_result=>'TRUE'
,p_action_sequence=>140
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P346_ERROR.'
,p_attribute_02=>'ALerta'
,p_attribute_03=>'warning'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P346_ERROR'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(97532729939270834)
,p_name=>'DA_BUSCAR_FAC'
,p_event_sequence=>90
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(97530581412270812)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(111965092897898037)
,p_event_id=>wwv_flow_imp.id(97532729939270834)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'var spinner = apex.util.showSpinner();'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(97532918223270836)
,p_event_id=>wwv_flow_imp.id(97532729939270834)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'     RPFACMAS.PR_BUSCAR_FAC (PI_COD_EMPRESA => :P_COD_EMPRESA,',
'                             PI_NRO_PLANILLA => :P346_NRO_PLANILLA_FAC);',
'',
'     :P346_INDICADOR_REPORT_FACTURAS := ''1'';',
':P346_ERROR:=''Busqueda Realizada'';',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_02=>'P_COD_EMPRESA,P346_NRO_PLANILLA_FAC'
,p_attribute_03=>'P346_INDICADOR_REPORT_FACTURAS,P346_ERROR'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(111965185373898038)
,p_event_id=>wwv_flow_imp.id(97532729939270834)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$("#apex_wait_overlay").remove();',
'$(".u-Processing").remove();'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(97533017624270837)
,p_event_id=>wwv_flow_imp.id(97532729939270834)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(97530995479270816)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(194843015489616033)
,p_event_id=>wwv_flow_imp.id(97532729939270834)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P346_ERROR.'
,p_attribute_02=>'PRUEBA'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(97533191290270838)
,p_name=>'DA_RESERVA_FAC'
,p_event_sequence=>100
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(97530611638270813)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(97533569850270842)
,p_event_id=>wwv_flow_imp.id(97533191290270838)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\00BFDesea eliminar la reserva?')
,p_attribute_03=>'warning'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(97533294881270839)
,p_event_id=>wwv_flow_imp.id(97533191290270838)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'DELETE rp_ruteo_reserva',
'WHERE cod_empresa = :P_COD_EMPRESA;',
'',
':P346_MENSAJE := ''Se ha eliminado la reserva.'';',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_02=>'P_COD_EMPRESA'
,p_attribute_03=>'P346_MENSAJE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(97533429567270841)
,p_event_id=>wwv_flow_imp.id(97533191290270838)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P346_MENSAJE.'
,p_attribute_02=>'Reserva Eliminada'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P346_MENSAJE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(97533778537270844)
,p_name=>'DA_PROCESA_CPH'
,p_event_sequence=>110
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(97533640321270843)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(97533886697270845)
,p_event_id=>wwv_flow_imp.id(97533778537270844)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'	vexiste varchar2(60) := ''N'';',
'	VUSUARIO_CPH varchar2(60);',
'	vclave_cph varchar2(60);',
'BEGIN',
'	BEGIN',
'		SELECT ''S''',
'		INTO vexiste',
'		FROM RP_REPARTO_PEDIDO_DET A',
'		WHERE COD_EMPRESA    = :P_COD_EMPRESA',
'		AND A.EMPRESA_ORIGEN = ''CPH''',
'		AND NRO_PLANILLA     = :P346_NRO_PLANILLA_FAC',
'		AND rownum=1;',
'	EXCEPTION ',
'		WHEN OTHERS THEN',
'		  VEXISTE := ''N'';',
'	END;',
'',
'	IF VEXISTE=''N'' THEN',
'',
'        :P346_MENSAJE := ''La Planilla no posee pedidos CPH a Facturar.'';	',
'	ELSE',
'    	DECLARE',
'    	   valerta     number ;',
'    	   usr_actual  varchar2( 50 ) ;',
'    	   psw_actual  varchar2( 50 ) ;',
'    	   bdatos      varchar2( 50 ) ;',
'    	   sentencia   varchar2( 100 ) ;',
'    	   algun_error exception;',
'',
'	    BEGIN',
'	   	',
'	   	 BEGIN ',
'    		  SELECT cod_sucursal_cph ',
'    		  INTO :P346_COD_SUCURSAL_CPH',
'    		  FROM inv.sucursal_equivalencia_empresa',
'    		  WHERE cod_empresa = :P_COD_EMPRESA ',
'    		  AND cod_sucursal_ngo = :P346_COD_SUCURSAL_FAC',
'    		  AND rownum = 1;',
'	     EXCEPTION ',
'    	  	WHEN OTHERS THEN ',
'    	  	  APEX_DEBUG.ERROR (''Error al buscar la sucursal CPH''||sqlerrm);    	  	 ',
'    	 END; /*',
'	   -------------------------------------------------------------	',
'	   -- guarda los valores actuales de conexion a la base de datos',
'	   usr_actual := get_application_property( username ) ;',
'	   psw_actual := get_application_property( password ) ;',
'	   bdatos     := get_application_property( connect_string ) ;',
'	   -------------------------------------------------------------*/',
'	   ',
'	  BEGIN   ',
'			SELECT clave_cph, ',
'			       cod_usuario_cph ',
'			  INTO vclave_cph, ',
'			       VUSUARIO_CPH ',
'			  FROM USUARIOS_cph ',
'			 WHERE cod_usuario = user ',
'			   AND CLAVE_CPH IS NOT NULL;',
'	  EXCEPTION ',
'	  	WHEN OTHERS THEN',
'	  	  vclave_cph:=''NGO2019'';',
'	  	  VUSUARIO_CPH:=''NGO_ADMIN1''; ',
'	  END;',
'',
'    END;',
'',
'	END IF;',
'END;',
'    '))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(108056643595266415)
,p_event_id=>wwv_flow_imp.id(97533778537270844)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'	SELECT APEX_PAGE.GET_URL (  p_page   => 361,',
'				                p_items  => ''P361_NRO_PLANILLA,P361_TIP_PEDIDO,P361_COD_SUCURSAL'',',
'				                p_values => ''''||:P346_P_PLANILLA_ENVIAR||'', ''||:P346_P_TIP_PEDIDO_ENVIAR||'',''||:P346_P_COD_SUCURSAL_ENVIAR||'''') f_url_1',
'		',
'        INTO :P346_URL_361',
'		FROM DUAL;        ',
'	 ',
'',
'',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_02=>'P346_P_PLANILLA_ENVIAR,P346_P_TIP_PEDIDO_ENVIAR,P346_P_COD_SUCURSAL_ENVIAR'
,p_attribute_03=>'P346_URL_361'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(108056861869266417)
,p_event_id=>wwv_flow_imp.id(97533778537270844)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var url = apex.item("P346_URL_361").getValue();',
'//apex.navigation.redirect(url);',
'apex.navigation.openInNewWindow(url, "_blank");',
'    //apex.navigation.redirect(url);',
'',
'',
'',
'',
'',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(354907070512081118)
,p_name=>'DA_PROCESA_bh'
,p_event_sequence=>120
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(354906962743081117)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(354907102191081119)
,p_event_id=>wwv_flow_imp.id(354907070512081118)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'	vexiste varchar2(60) := ''N'';',
'	VUSUARIO_CPH varchar2(60);',
'	vclave_cph varchar2(60);',
'BEGIN',
'	BEGIN',
'		SELECT ''S''',
'		INTO vexiste',
'		FROM RP_REPARTO_PEDIDO_DET A',
'		WHERE COD_EMPRESA    = :P_COD_EMPRESA',
'		AND A.EMPRESA_ORIGEN = ''BH''',
'		AND NRO_PLANILLA     = :P346_NRO_PLANILLA_FAC',
'		AND rownum=1;',
'	EXCEPTION ',
'		WHEN OTHERS THEN',
'		  VEXISTE := ''N'';',
'	END;',
'',
'	IF VEXISTE=''N'' THEN',
'',
'        :P346_MENSAJE := ''La Planilla no posee pedidos BH a Facturar.'';	',
'	ELSE',
'    	DECLARE',
'    	   valerta     number ;',
'    	   usr_actual  varchar2( 50 ) ;',
'    	   psw_actual  varchar2( 50 ) ;',
'    	   bdatos      varchar2( 50 ) ;',
'    	   sentencia   varchar2( 100 ) ;',
'    	   algun_error exception;',
'',
'	    BEGIN',
'	   	',
'	   	/* BEGIN ',
'    		  SELECT cod_sucursal_cph ',
'    		  INTO :P346_COD_SUCURSAL_CPH',
'    		  FROM inv.sucursal_equivalencia_empresa',
'    		  WHERE cod_empresa = :P_COD_EMPRESA ',
'    		  AND cod_sucursal_ngo = :P346_COD_SUCURSAL_FAC',
'    		  AND rownum = 1;',
'	     EXCEPTION ',
'    	  	WHEN OTHERS THEN ',
'    	  	  APEX_DEBUG.ERROR (''Error al buscar la sucursal CPH''||sqlerrm);    	  	 ',
'    	 END; ',
'	  ',
'	  BEGIN   ',
'			SELECT clave_cph, ',
'			       cod_usuario_cph ',
'			  INTO vclave_cph, ',
'			       VUSUARIO_CPH ',
'			  FROM USUARIOS_cph ',
'			 WHERE cod_usuario = user ',
'			   AND CLAVE_CPH IS NOT NULL;',
'	  EXCEPTION ',
'	  	WHEN OTHERS THEN',
'	  	  vclave_cph:=''NGO2019'';',
'	  	  VUSUARIO_CPH:=''NGO_ADMIN1''; ',
'	  END;*/',
'      NULL;',
'',
'    END;',
'',
'	END IF;',
'END;',
'    '))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(354907297201081120)
,p_event_id=>wwv_flow_imp.id(354907070512081118)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'	SELECT APEX_PAGE.GET_URL (  p_page   => 766,',
'				                p_items  => ''P766_NRO_PLANILLA,P766_TIP_PEDIDO,P766_COD_SUCURSAL'',',
'				                p_values => ''''||:P346_P_PLANILLA_ENVIAR||'', ''||:P346_P_TIP_PEDIDO_ENVIAR||'',''||:P346_P_COD_SUCURSAL_ENVIAR||'''') f_url_1',
'		',
'        INTO :P346_URL_361',
'		FROM DUAL;        ',
'	 ',
'',
'',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_02=>'P346_P_PLANILLA_ENVIAR,P346_P_TIP_PEDIDO_ENVIAR,P346_P_COD_SUCURSAL_ENVIAR'
,p_attribute_03=>'P346_URL_361'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(354907342235081121)
,p_event_id=>wwv_flow_imp.id(354907070512081118)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var url = apex.item("P346_URL_361").getValue();',
'//apex.navigation.redirect(url);',
'apex.navigation.openInNewWindow(url, "_blank");',
'    //apex.navigation.redirect(url);',
'',
'',
'',
'',
'',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(99766913357877211)
,p_name=>'DA_LLAMAR_VTIMPFAC_CANON_FE'
,p_event_sequence=>130
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P346_SEQ_ID_FACTURA_REP_FAC'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(99767072181877212)
,p_event_id=>wwv_flow_imp.id(99766913357877211)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    SELECT c001,',
'           c002,',
'           n001,',
'           c006',
'    INTO :P346_SEQ_TIP_COMP, :P346_SEQ_SER_COMP, :P346_SEQ_NRO_COMP, :P346_SEQ_COD_CLIENTE',
'',
'    FROM APEX_COLLECTIONS',
'    WHERE COLLECTION_NAME = ''DETALLE_FACTURA''',
'    AND SEQ_ID = :P346_SEQ_ID_FACTURA_REP_FAC;',
'',
'    RPFACMAS.PR_IMPRIMIR_FACTURA(:P_COD_EMPRESA,',
'                                 :P346_COD_SUCURSAL_FAC,',
'                                 :P346_SEQ_TIP_COMP,',
'                                 :P346_SEQ_SER_COMP,',
'                                 :P346_SEQ_NRO_COMP,',
'                                 ''S'',',
'                                 0);',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;',
''))
,p_attribute_02=>'P346_SEQ_ID_FACTURA_REP_FAC,P_COD_EMPRESA,P346_COD_SUCURSAL_FAC,P346_SEQ_TIP_COMP,P346_SEQ_SER_COMP,P346_SEQ_NRO_COMP'
,p_attribute_03=>'P346_SEQ_NRO_COMP,P346_SEQ_SER_COMP,P346_SEQ_TIP_COMP,P346_SEQ_COD_CLIENTE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(99767114006877213)
,p_event_id=>wwv_flow_imp.id(99766913357877211)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'doVtimpfacCanon (apex.item(''P_COD_EMPRESA'').getValue(),',
'                 apex.item(''P346_SEQ_COD_CLIENTE'').getValue(),',
'                 "",',
'                 "",',
'                 apex.item(''P346_SEQ_TIP_COMP'').getValue(),',
'                 apex.item(''P_COD_USUARIO'').getValue(),',
'                 apex.item(''P346_SEQ_SER_COMP'').getValue(),',
'                 apex.item(''P346_SEQ_NRO_COMP'').getValue(),',
'                 "S");',
'',
'',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(99768293300877224)
,p_name=>'DA_LLAMAR_RPFACTMASPLA'
,p_event_sequence=>140
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P346_SEQ_LLAMAR_RPFACTMASPLA'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(99768300085877225)
,p_event_id=>wwv_flow_imp.id(99768293300877224)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    SELECT n001',
'    INTO :P346_SEQ_NRO_PLANILLA',
'',
'    FROM APEX_COLLECTIONS',
'    WHERE COLLECTION_NAME = ''VW_PLANILLA''',
'    AND SEQ_ID = :P346_SEQ_LLAMAR_RPFACTMASPLA;',
'    ',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_02=>'P346_SEQ_LLAMAR_RPFACTMASPLA'
,p_attribute_03=>'P346_SEQ_NRO_PLANILLA'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(99768475584877226)
,p_event_id=>wwv_flow_imp.id(99768293300877224)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'doRpfactmaspla (apex.item(''P_COD_EMPRESA'').getValue(),',
'                apex.item(''P346_SEQ_NRO_PLANILLA'').getValue());',
'',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(104534974644693826)
,p_name=>'DA_LLAMAR_CCRECIBO_REC'
,p_event_sequence=>150
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P346_SEQ_ID_FACTURA_REP_REC'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(104535665706693833)
,p_event_id=>wwv_flow_imp.id(104534974644693826)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    SELECT c002,',
'           n001',
'    INTO :P346_SEQ_SER_COMP, :P346_SEQ_NRO_COMP',
'',
'    FROM APEX_COLLECTIONS',
'    WHERE COLLECTION_NAME = ''DETALLE_FACTURA''',
'    AND SEQ_ID = :P346_SEQ_ID_FACTURA_REP_REC;',
'',
'    --:P346_SEQ_SER_COMP := ''F1'';',
'    --:P346_SEQ_NRO_COMP := ''3018'';',
'',
'    --APEX_DEBUG.ERROR(''SER'' || :P346_SEQ_SER_COMP);',
'    --APEX_DEBUG.ERROR(''NRO'' || :P346_SEQ_NRO_COMP);',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;',
'',
''))
,p_attribute_02=>'P346_SEQ_ID_FACTURA_REP_REC'
,p_attribute_03=>'P346_SEQ_SER_COMP,P346_SEQ_NRO_COMP'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(104535099762693827)
,p_event_id=>wwv_flow_imp.id(104534974644693826)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'doCCRecibo(apex.item(''P346_SEQ_SER_COMP'').getValue(),',
'           apex.item(''P346_SEQ_NRO_COMP'').getValue());',
'',
'',
'',
'',
'',
'    '))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(104535241445693829)
,p_name=>'DA_LLAMAR_CCRECIBO_PAG'
,p_event_sequence=>160
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P346_SEQ_ID_FACTURA_REP_PAG'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(104535337028693830)
,p_event_id=>wwv_flow_imp.id(104535241445693829)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE                           ',
'    VPAGARE_UNICO VARCHAR2(500) := ''N'';',
'    V_P_TIPO VARCHAR2(100);',
'    V_P_SERIE VARCHAR2(100);',
'    V_P_NUMERO VARCHAR2(100);',
'    V_NRO_CANJE VARCHAR2(100);',
'',
'BEGIN',
'    SELECT c001,',
'           c002,',
'           n001,',
'           n004,',
'           c006',
'    INTO   V_P_TIPO,',
'           V_P_SERIE,',
'           V_P_NUMERO,',
'           V_NRO_CANJE,',
'           :P346_SEQ_COD_CLIENTE',
'    FROM APEX_COLLECTIONS',
'    WHERE COLLECTION_NAME = ''DETALLE_FACTURA''',
'    AND SEQ_ID = :P346_SEQ_ID_FACTURA_REP_PAG;',
'',
'    --V_NRO_CANJE := 8888;',
'	',
'	IF V_NRO_CANJE IS NULL THEN',
'		DECLARE ',
'			VDIR VARCHAR2(600);',
'			VNOMBRE VARCHAR2(600);',
'			vcliente VARCHAR2(600);',
'			vtip_cliente varchar2(200);',
'		BEGIN',
'			BEGIN',
'                SELECT CC.cod_cliente,           ',
'                       cc.dir_cliente,',
'                       CC.NOM_CLIENTE, c.tip_cliente',
'                INTO vcliente,',
'                     vdir,',
'                     VNOMBRE, ',
'                     vtip_cliente',
'               FROM  VT_COMPROBANTES_CABECERA cc, cc_clientes c',
'               WHERE CC.cod_empresa = ''1''',
'                 AND CC.tip_comprobante = V_P_TIPO',
'                 AND CC.ser_comprobante = V_P_SERIE',
'                 AND CC.nro_comprobante = V_P_NUMERO',
'                 AND cc.cod_empresa=c.cod_empresa',
'                 AND cc.cod_cliente=c.cod_cliente',
'                 AND rownum = 1;',
'              EXCEPTION',
'                WHEN OTHERS THEN',
'                  vcliente := NULL;',
'            END;',
'		',
'			BEGIN',
'				SELECT ''S''',
'				  INTO VPAGARE_UNICO',
'				  FROM cc_clientes cl, ',
'				  		 personas pe',
'				 WHERE cl.cod_empresa = :P_COD_EMPRESA',
'				   AND cl.cod_cliente = Vcliente',
'				   AND cl.cod_persona = pe.cod_persona',
'				   AND IND_IMPRIMIR_UNICO_PAGARE=''S'';						',
'			EXCEPTION						 ',
'				WHEN OTHERS THEN',
'					VPAGARE_UNICO:=''N'';',
'			END;',
'',
'			IF VPAGARE_UNICO = ''S'' THEN',
'					:P346_MENSAJE := ''CCPAGARE_UNICO'';',
'			ELSE',
'				IF nvl(vtip_cliente,''d'')=''6'' then',
'					:P346_MENSAJE := ''CCPAGARE_EMP'';',
'				ELSE',
'					:P346_MENSAJE := ''CCPAGARE_OFICIO_CANON'';',
'				END IF;',
'			END IF;',
'',
'            :P346_SEQ_TIP_COMP := ''PG'';',
'            :P346_SEQ_SER_COMP := ''A'';',
'            :P346_SEQ_NRO_COMP := TO_CHAR(V_NRO_CANJE, ''99999999'');',
'            :P346_INDICADOR_ALERT := ''0'';',
'',
'		END;			',
'',
'    ELSE',
'        --raise_application_error(-20111,''El registro seleccionado no tiene un nro. de canje.'' || SQLERRM);',
'        :P346_MENSAJE := ''El registro seleccionado no tiene un nro. de canje.'';',
'        :P346_INDICADOR_ALERT := ''1'';',
'	END IF;',
'',
'    --APEX_DEBUG.ERROR(:P346_MENSAJE);',
'    --APEX_DEBUG.ERROR(:P346_INDICADOR_ALERT);',
'   ',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_02=>'P_COD_EMPRESA,P346_SEQ_ID_FACTURA_REP_PAG'
,p_attribute_03=>'P346_MENSAJE,P346_SEQ_TIP_COMP,P346_SEQ_SER_COMP,P346_SEQ_NRO_COMP,P346_SEQ_COD_CLIENTE,P346_INDICADOR_ALERT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(104536335414693840)
,p_event_id=>wwv_flow_imp.id(104535241445693829)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P346_MENSAJE.'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P346_INDICADOR_ALERT'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(104535848296693835)
,p_event_id=>wwv_flow_imp.id(104535241445693829)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'doCCPagareUnico(apex.item(''P_COD_EMPRESA'').getValue(),',
'                apex.item(''P346_SEQ_COD_CLIENTE'').getValue(),',
'                apex.item(''P346_SEQ_TIP_COMP'').getValue(),',
'                apex.item(''P346_SER_COMPROBANTE_FAC'').getValue(),',
'                "",',
'                apex.item(''P346_SEQ_NRO_COMP'').getValue());',
''))
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P346_MENSAJE'
,p_client_condition_expression=>'CCPAGARE_UNICO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(104536198974693838)
,p_event_id=>wwv_flow_imp.id(104535241445693829)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'doCCPagareEmp (apex.item(''P_COD_EMPRESA'').getValue(),',
'                apex.item(''P346_SEQ_COD_CLIENTE'').getValue(),',
'                apex.item(''P346_SEQ_TIP_COMP'').getValue(),',
'                apex.item(''P_COD_USUARIO'').getValue(),',
'                apex.item(''P346_SER_COMPROBANTE_FAC'').getValue(),',
'                "",',
'                apex.item(''P346_SEQ_NRO_COMP'').getValue());',
'',
'',
''))
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P346_MENSAJE'
,p_client_condition_expression=>'CCPAGARE_EMP'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(104536237076693839)
,p_event_id=>wwv_flow_imp.id(104535241445693829)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'doCCPagareOficioCanon(apex.item(''P_COD_EMPRESA'').getValue(),',
'                     apex.item(''P346_SEQ_COD_CLIENTE'').getValue(),',
'                     apex.item(''P346_SEQ_TIP_COMP'').getValue(),',
'                     apex.item(''P346_SEQ_SER_COMP'').getValue(),',
'                     "",',
'                     apex.item(''P346_SEQ_NRO_COMP'').getValue());',
''))
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P346_MENSAJE'
,p_client_condition_expression=>'CCPAGARE_OFICIO_CANON'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(104536667256693843)
,p_name=>'DA_LLAMAR_STREMAUT'
,p_event_sequence=>170
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P346_SEQ_ID_FACTURA_REP_RE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(104536767130693844)
,p_event_id=>wwv_flow_imp.id(104536667256693843)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    vnro NUMBER;',
'    v_p_num_remision NUMBER;',
'',
'BEGIN',
'',
'    BEGIN',
'',
'        SELECT c008, c006',
'        INTO   v_p_num_remision, :P346_SEQ_COD_CLIENTE',
'        FROM APEX_COLLECTIONS',
'        WHERE COLLECTION_NAME = ''DETALLE_FACTURA''',
'        AND SEQ_ID = :P346_SEQ_ID_FACTURA_REP_RE;',
'',
'    EXCEPTION',
'        WHEN OTHERS THEN',
'            APEX_DEBUG.ERROR(SQLERRM);',
'    END;',
'',
'    IF v_p_num_remision IS NOT NULL THEN',
'    ',
'            BEGIN ',
'        	      SELECT count(*)',
'        	        INTO vnro',
'        	        FROM VT_CONTADOR_IMPRESION_FACT   ',
'        	       where cod_empresa = :P_COD_EMPRESA',
'        	         AND TIP_COMPROBANTE =''REM''',
'        	         AND SER_COMPROBANTE = :P346_SER_REMISION',
'        	         AND nro_comprobante = v_p_num_remision;',
'        	      ',
'        	      INSERT INTO VT_CONTADOR_IMPRESION_FACT( COD_EMPRESA, ',
'        	                                              TIP_COMPROBANTE, ',
'        	                                              SER_COMPROBANTE , ',
'        	                                              NRO_COMPROBANTE , ',
'        	                                              DESCRIPCION,',
'        	                                              fecha )',
'        	                                      values( :P_COD_EMPRESA,',
'        	                                              ''REM'', ',
'        	                                              :P346_SER_REMISION,',
'        	                                              v_p_num_remision,',
'        	                                              to_char(vnro),sysdate);',
'',
'                  :P346_SEQ_NRO_COMP := v_p_num_remision;',
'                  :P346_MENSAJE := NULL;',
'',
'	EXCEPTION',
'	   WHEN OTHERS THEN',
'	      vnro := ''1'';',
'	END;',
'',
'    ELSE',
unistr('        :P346_MENSAJE := ''El pedido no tiene remisi\00F3n asignada'';'),
'    END IF;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_02=>'P346_SEQ_ID_FACTURA_REP_RE,P_COD_EMPRESA,P346_SER_REMISION'
,p_attribute_03=>'P346_SEQ_NRO_COMP,P346_MENSAJE,P346_SEQ_COD_CLIENTE,P346_SEQ_NRO_COMP'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(104536842400693845)
,p_event_id=>wwv_flow_imp.id(104536667256693843)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P346_MENSAJE.'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P346_MENSAJE'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(104536919216693846)
,p_event_id=>wwv_flow_imp.id(104536667256693843)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'doStremaut (apex.item(''P_COD_EMPRESA'').getValue(),',
'            apex.item(''P346_SEQ_COD_CLIENTE'').getValue(),',
'            apex.item(''P346_SEQ_TIP_COMP'').getValue(),',
'            apex.item(''P346_SER_REMISION'').getValue(),',
'            apex.item(''P346_SEQ_NRO_COMP'').getValue(),',
'            apex.item(''P_COD_USUARIO'').getValue(),',
'            "",',
'            "");',
'',
'',
'/*doStremaut ("",',
'            "",',
'            "",',
'            "",',
'            "",',
'            "",',
'            "",',
'            "");*/',
''))
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P346_MENSAJE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(107237722642843337)
,p_name=>'DA_LLAMAR_VTIMPNCR_CANON_FE'
,p_event_sequence=>180
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P346_SEQ_ID_FACTURA_REP_NC'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(107238149111843341)
,p_event_id=>wwv_flow_imp.id(107237722642843337)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  wexiste varchar2(1);',
'BEGIN',
'',
'    BEGIN',
'        SELECT c001, c002, n001, c006',
'        INTO :P346_SEQ_TIP_COMP, :P346_SEQ_SER_COMP, :P346_SEQ_NRO_COMP, :P346_SEQ_COD_CLIENTE',
'',
'        FROM APEX_COLLECTIONS',
'        WHERE COLLECTION_NAME = ''DETALLE_FACTURA''',
'        AND SEQ_ID = :P346_SEQ_ID_FACTURA_REP_NC;',
'    ',
'    EXCEPTION',
'        WHEN OTHERS THEN',
'            APEX_DEBUG.ERROR(SQLERRM);',
'    END;',
'    ',
'    BEGIN',
'	',
'        SELECT ''S''',
'    	  INTO wexiste',
'    	  FROM vt_contador_impresion_fact',
'    	 WHERE cod_empresa = :P_COD_EMPRESA',
'           AND tip_comprobante =''NCR''',
'           AND ser_comprobante = :P346_SER_NC',
'           AND nro_comprobante = :P346_SEQ_NRO_COMP;',
'',
'        IF wexiste IS NULL THEN',
'        	wexiste := ''N'';',
'        END IF;',
'',
'    EXCEPTION',
'  	    WHEN OTHERS THEN',
'  	       wexiste := ''N'';',
'    END;',
'   ',
'    IF wexiste = ''N'' THEN',
'',
'        RPFACMAS.PR_IMPRIMIR_NC (PI_COD_EMPRESA  => :P_COD_EMPRESA,',
'                                 PI_COD_SUCURSAL => :P346_COD_SUCURSAL_FAC,',
'                                 PI_TIPO => ''NCR'',',
'                                 PI_SERIE => :P346_SER_NC,',
'                                 PI_NUMERO => :P346_SEQ_NRO_COMP,',
'                                 P_IND_AUTO_IMPRESION => ''S'',',
'                                 P_GRUPO_NUMERACION => 0);',
'',
'        :P346_MENSAJE := ''1'';',
'',
'    ELSE',
'',
'        :P346_MENSAJE := NULL;',
' ',
'    END IF;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;',
''))
,p_attribute_02=>'P346_SER_NC,P346_COD_SUCURSAL_FAC,P346_SEQ_ID_FACTURA_REP_NC,P_COD_EMPRESA'
,p_attribute_03=>'P346_SEQ_TIP_COMP,P346_SEQ_SER_COMP,P346_SEQ_NRO_COMP,P346_MENSAJE,P346_SEQ_COD_CLIENTE'
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
 p_id=>wwv_flow_imp.id(107238087572843340)
,p_event_id=>wwv_flow_imp.id(107237722642843337)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'doVtimpNcrCanon (apex.item(''P_COD_EMPRESA'').getValue(),',
'                 apex.item(''P346_SEQ_COD_CLIENTE'').getValue(),',
'                 apex.item(''P346_SEQ_TIP_COMP'').getValue(),',
'                 apex.item(''P346_SEQ_SER_COMP'').getValue(),',
'                 apex.item(''P346_SEQ_NRO_COMP'').getValue());',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(107238922431843349)
,p_name=>'DA_LLAMAR_STREMAUT_MASIVO'
,p_event_sequence=>190
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(97529661453270803)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(107239006373843350)
,p_event_id=>wwv_flow_imp.id(107238922431843349)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/*doStremautMasivo (apex.item(''P_COD_EMPRESA'').getValue(), ',
'                  apex.item(''P346_NRO_PLANILLA_FAC'').getValue(),',
'                  apex.item(''P_COD_USUARIO'').getValue());',
'',
'*/',
'',
'',
'',
'',
'',
'var comprobante = document.getElementById("P346_NRO_PLANILLA_FAC").value; ',
'var params = []',
'var empresa = apex.item("P_COD_EMPRESA").getValue();',
'var nro_comprobante = apex.item("P346_NRO_PLANILLA_FAC").getValue();',
'var usuario = ''&APP_USER.'';',
'var vfacnom = "STREMAUT_MASIVO";',
'params.push({ name: ''P_COD_EMPRESA'', value: empresa})',
'params.push({ name: ''P_NRO_PLANILLA'', value: nro_comprobante}) ',
'params.push({ name: ''P_USUARIO'', value: usuario})  ',
'createReportUrl(vfacnom, params)',
'',
'  '))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(108055246231266401)
,p_name=>'DA_LLAMAR_CCRECIBO_MASIVO'
,p_event_sequence=>200
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(97529455603270801)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(108055330098266402)
,p_event_id=>wwv_flow_imp.id(108055246231266401)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/*doCCReciboMasivo (apex.item(''P_COD_EMPRESA'').getValue(), ',
'                  apex.item(''P346_NRO_PLANILLA_FAC'').getValue(),',
'                  apex.item(''P_COD_USUARIO'').getValue());',
'*/',
' ',
'',
'',
'var comprobante = document.getElementById("P346_NRO_PLANILLA_FAC").value; ',
'var params = []',
'var empresa = apex.item("P_COD_EMPRESA").getValue();',
'var nro_comprobante = apex.item("P346_NRO_PLANILLA_FAC").getValue();',
'var usuario = ''&APP_USER.'';',
'var vfacnom = "CCRECIBO_MASIVO";',
'params.push({ name: ''P_COD_EMPRESA'', value: empresa})',
'params.push({ name: ''P_NRO_PLANILLA'', value: nro_comprobante}) ',
'params.push({ name: ''P_USUARIO'', value: usuario})  ',
'createReportUrl(vfacnom, params)',
'',
'                   '))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(108055408595266403)
,p_name=>'DA_LLAMAR_VTIMPNCR_CANON_FE_MASIVO'
,p_event_sequence=>210
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(97529798214270804)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(108055647047266405)
,p_event_id=>wwv_flow_imp.id(108055408595266403)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'doVtimpfacCanonFe (apex.item(''P_COD_EMPRESA'').getValue(), ',
'                  apex.item(''P346_NRO_PLANILLA_FAC'').getValue(),',
'                  apex.item(''P_COD_USUARIO'').getValue());',
'',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(108055925409266408)
,p_name=>'New'
,p_event_sequence=>220
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(97530444284270811)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(108056008109266409)
,p_event_id=>wwv_flow_imp.id(108055925409266408)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'doRpfactmaspla (apex.item(''P_COD_EMPRESA'').getValue(),',
'                apex.item(''P346_NRO_PLANILLA_FAC'').getValue());'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(108056931920266418)
,p_name=>'DA_LLAMAR_VTIMPFAC_CANON_FE_MASIVO'
,p_event_sequence=>230
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(96601586372832050)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(108057087029266419)
,p_event_id=>wwv_flow_imp.id(108056931920266418)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/*doVtimpfacCanonFeMasivo(apex.item(''P_COD_EMPRESA'').getValue(), ',
'                        apex.item(''P346_NRO_PLANILLA_FAC'').getValue(),',
'                        apex.item(''P_COD_USUARIO'').getValue());',
'',
'',
'*/',
'',
'',
'var comprobante = document.getElementById("P346_NRO_PLANILLA_FAC").value; ',
'var params = []',
'var empresa = apex.item("P_COD_EMPRESA").getValue();',
'var nro_comprobante = apex.item("P346_NRO_PLANILLA_FAC").getValue();',
'var usuario = ''&APP_USER.'';',
'var vfacnom = "VTIMPFAC_CANON_FE_MASIVO";',
'params.push({ name: ''P_COD_EMPRESA'', value: empresa})',
'params.push({ name: ''P_NRO_PLANILLA'', value: nro_comprobante}) ',
'params.push({ name: ''P_USUARIO'', value: usuario})  ',
'createReportUrl(vfacnom, params)',
'',
' '))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(108057326008266422)
,p_name=>'DA_LLAMAR_PAGARE_MASIVO'
,p_event_sequence=>240
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(97529577118270802)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(108057489114266423)
,p_event_id=>wwv_flow_imp.id(108057326008266422)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/*doPagareMasivo  (apex.item(''P_COD_EMPRESA'').getValue(), ',
'                 apex.item(''P346_NRO_PLANILLA_FAC'').getValue());',
'',
'',
'*/',
'',
'',
'',
'',
'',
'var comprobante = document.getElementById("P346_NRO_PLANILLA_FAC").value; ',
'var params = []',
'var empresa = apex.item("P_COD_EMPRESA").getValue();',
'var nro_comprobante = apex.item("P346_NRO_PLANILLA_FAC").getValue();',
'var usuario = ''&APP_USER.'';',
'var vfacnom = "CCPAGARE_MASIVO";',
'params.push({ name: ''P_COD_EMPRESA'', value: empresa})',
'params.push({ name: ''P_NRO_PLANILLA'', value: nro_comprobante}) ',
' ',
'createReportUrl(vfacnom, params)',
'',
'                   '))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(110778911032423530)
,p_name=>'DA_Cambiar_Cod_Custodio'
,p_event_sequence=>250
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P346_COD_CUSTODIO_FAC'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(110779028045423531)
,p_event_id=>wwv_flow_imp.id(110778911032423530)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'   --valerta number ;',
'begin',
'   select descripcion',
'      into :P346_DESCRIPCION_CUSTODIO_FAC',
'      from cc_custodios c',
'   where c.cod_empresa = :p_cod_empresa  ',
'     and c.cod_custodio = :P346_COD_CUSTODIO_FAC',
'     and ( c.cod_custodio = :P346_COD_CUSTODIO_FAC or ',
'          c.cod_custodio in ',
'       ( select cod_custodio ',
'           from usuarios_custodios ',
'          where cod_empresa = :p_cod_empresa',
'            and cod_usuario = :app_user ));',
'exception',
'   when no_data_found then',
'      :P346_DESCRIPCION_CUSTODIO_FAC := null ;',
unistr('    raise_application_error(-20001,''No se encuentra c\00F3digo de custodio, o no puede ser utilizado por el usuario: '' || :app_user);'),
' --     raise form_trigger_failure ;',
'   when others then',
'      :P346_DESCRIPCION_CUSTODIO_FAC := null ;',
'      raise_application_error(-20001,''Error en la tabla de Custodios '' || sqlerrm ) ;',
'    --  raise form_trigger_failure ;',
'end ;'))
,p_attribute_02=>'P346_COD_CUSTODIO_FAC,P_COD_EMPRESA'
,p_attribute_03=>'P346_DESCRIPCION_CUSTODIO_FAC'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(110779349081423534)
,p_name=>'Cambiar_Cobrador'
,p_event_sequence=>260
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P346_COD_COBRADOR_FAC'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(110779466209423535)
,p_event_id=>wwv_flow_imp.id(110779349081423534)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'   IF :P346_COD_COBRADOR_FAC IS NOT NULL THEN',
'   	DECLARE',
'     valerta NUMBER;',
'     vserie varchar2(100);',
'   BEGIN',
'     select nvl( ltrim( pe.nombre ), ltrim( pe.nomb_fantasia ) )',
'       into :P346_COBRADOR_DESC',
'       from cc_cobradores co, personas pe',
'      where co.cod_empresa = :p_cod_empresa ',
'        and co.cod_cobrador = :P346_COD_COBRADOR_FAC ',
'        and co.cod_persona = pe.cod_persona;',
'        ',
'   EXCEPTION',
'     when no_data_found then',
'       :P346_COBRADOR_DESC := NULL;',
unistr('       raise_application_error(-20001,''No se encuentra c\00F3digo de cobrador.'');'),
'',
'     when others then',
'       :P346_COBRADOR_DESC := NULL;',
'      raise_application_error(-20001,''Error en la tabla de Cobradores/Personas '' ||sqlerrm);',
'',
'   END;',
'END IF;'))
,p_attribute_02=>'P346_COD_COBRADOR_FAC,P_COD_EMPRESA'
,p_attribute_03=>'P346_COBRADOR_DESC'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(123959149402528325)
,p_name=>'TRAE_REPORT_NOM'
,p_event_sequence=>270
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(123959250159528326)
,p_event_id=>wwv_flow_imp.id(123959149402528325)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT P.VALOR',
'  INTO :P346_FACMAS_REP',
'  FROM PARAMETROS_GENERALES P ',
' WHERE P.PARAMETRO = ''FACTURA_MASIVA_REP_NOMB''',
'   AND P.COD_MODULO = ''VT'';',
'',
'   SELECT P.VALOR',
'  INTO :P346_FACTURA_REP',
'  FROM PARAMETROS_GENERALES P ',
' WHERE P.PARAMETRO = ''FACTURA_REP_NOMB''',
'   AND P.COD_MODULO = ''VT'';'))
,p_attribute_03=>'P346_FACMAS_REP'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(194843393190616036)
,p_name=>'New_1'
,p_event_sequence=>280
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(194843232422616035)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(194843608100616039)
,p_event_id=>wwv_flow_imp.id(194843393190616036)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P346_ERROR.'
,p_attribute_02=>'ALerta'
,p_attribute_03=>'warning'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P346_ERROR'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(96598502611832020)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'PR_LIMPIAR_DATOS'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(95864899750277611)
,p_process_sequence=>20
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_INIT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    :P346_COD_MODULO := ''RP'';',
'    :P346_COD_USUARIO := :APP_USER;',
'    :P346_COD_SUCURSAL_REPARTO := :P_COD_SUCURSAL;',
'',
'    :P346_VISUAL :=''D'';',
'    :P346_ESTADO :=''P'';',
'    :P346_TIPO_PEDIDO :=''PRODUCTOS'';',
'',
'    :P346_INDICADOR_REPORT_PLANILLA := ''0'';',
'',
'    --:P346_COD_VEHICULO :=''TODOS''; ',
'    --:P346_COD_REPARTIDOR := ''TODOS'';',
'    :P346_COD_USUARIO := ''FACT4'';',
'',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp.component_end;
end;
/
